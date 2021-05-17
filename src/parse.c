#include "types.h"
#include <stdlib.h>
#include "debug.h"
#include "utils.h"

wasm_module_ptr wasm_load_module(wasm_code_ptr code)
{
    int result = 0;
    wasm_module_ptr module;
    module = malloc(sizeof(wasm_module));

    module->name = ".unnamed";
    log(parse, "load module: %d bytes", code->length);

    bytes pos = code->ptr;
    bytes end = pos + code->length;

    u32 magic, version;
    Read_u32(&magic, &pos, end);
    Read_u32(&version, &pos, end);

    if (magic != 0x6d736100 || version != 1)
    {
        panicf("Wasm Malformed");
    }

    u8 previousSection = 0;

    while (pos < end)
    {
        u8 section;
        ReadLEB_u7(&section, &pos, end);

        if (section > previousSection || section == 0)
        {
            u32 sectionLength;
            ReadLEB_u32(&sectionLength, &pos, end);
            ParseModuleSection(module, section, pos, sectionLength);

            pos += sectionLength;

            if (section)
            {
                previousSection = section;
            }
        }
        else
        {
            panicf("Error! Misordered Wasm Section");
        }
    }
    if (result)
    {
        log(parse, "err, free module\r\n");
        free(module);
        module = NULL;
        return NULL;
    }
    return module;
}
void ParseSection_Type(wasm_module_ptr io_module, bytes i_bytes, bytes i_end);
void ParseSection_Import(wasm_module_ptr io_module, bytes i_bytes, bytes i_end);
void ParseSection_Function(wasm_module_ptr io_module, bytes i_bytes, bytes i_end);
void ParseSection_Memory(wasm_module_ptr io_module, bytes i_bytes, bytes i_end);
void ParseSection_Global(wasm_module_ptr io_module, bytes i_bytes, bytes i_end);
void ParseSection_Start(wasm_module_ptr io_module, bytes i_bytes, bytes i_end);
void ParseSection_Code(wasm_module_ptr io_module, bytes i_bytes, bytes i_end);
void ParseSection_Data(wasm_module_ptr io_module, bytes i_bytes, bytes i_end);
void ParseModuleSection(wasm_module_ptr module, u8 i_sectionType, bytes i_bytes, u32 i_numBytes)
{
    typedef void (*Parser)(wasm_code_ptr, bytes, bytes);

    static Parser s_parsers[] =
        {
            NULL,                  // 0 ParseSection_Custom
            ParseSection_Type,     // 1
            ParseSection_Import,   // 2
            ParseSection_Function, // 3
            NULL,                  // 4: TODO Table
            ParseSection_Memory,   // 5
            ParseSection_Global,   // 6
            NULL,                  //ParseSection_Export,   // 7
            ParseSection_Start,    // 8
            NULL,                  //ParseSection_Element,  // 9
            ParseSection_Code,     // 10
            ParseSection_Data,     // 11
        };

    Parser parser = NULL;

    if (i_sectionType <= 12)
    {
        parser = s_parsers[i_sectionType];
        log(parse, " sectionType = %d", (u32)i_sectionType);
    }

    if (parser)
    {
        bytes end = i_bytes + i_numBytes;
        parser(module, i_bytes, end);
    }
    else
    {
        log(parse, " skipped section type: %d", (u32)i_sectionType);
    }
}
void AllocFuncType(func_type_ptr *o_functionType, u32 i_numArgs)
{
    size_t funcTypeSize = sizeof(func_type) - 3 /* sizeof (argTypes [3]) */ + i_numArgs;

    *o_functionType = malloc(funcTypeSize);
}
int NormalizeType(u8 *o_type, i8 i_convolutedWasmType)
{
    int result = 0;

    u8 type = -i_convolutedWasmType;

    if (type == 0x40)
        type = c_m3Type_none;
    else if (type < c_m3Type_i32 || type > c_m3Type_f64)
        result = 1;

    *o_type = type;

    return result;
}
void PrintFuncTypeSignature(func_type_ptr functype)
{
    printf("(");
    for (int i = 0; i < functype->numArgs; i++)
    {
        if (i == 0)
        {
            printf("%s", wasm_types_names[functype->argTypes[i]]);
        }
        else
        {
            printf(", %s", wasm_types_names[functype->argTypes[i]]);
        }
    }
    printf(") -> %s", wasm_types_names[functype->returnType]);
}

void ParseSection_Type(wasm_module_ptr io_module, bytes i_bytes, bytes i_end)
{
    func_type_ptr ftype = NULL;

    u32 numTypes;
    ReadLEB_u32(&numTypes, &i_bytes, i_end);
    log(parse, "** Type [%d]", numTypes);

    if (numTypes)
    {
        // table of IM3FuncType (that point to the actual M3FuncType struct in the Environment)
        io_module->func_type_list = malloc(numTypes * sizeof(func_type_ptr));
        io_module->func_type_num = numTypes;

        for (u32 i = 0; i < numTypes; ++i)
        {
            i8 form;
            ReadLEB_i7(&form, &i_bytes, i_end);
            if (form != -32) // -32即0x60 functype类型
            {
                panicf("Wasm Malformed");
            }

            u32 numArgs;
            ReadLEB_u32(&numArgs, &i_bytes, i_end);

            AllocFuncType(&ftype, numArgs);
            ftype->numArgs = numArgs;

            for (u32 a = 0; a < numArgs; ++a)
            {
                i8 wasmType;
                u8 argType;
                ReadLEB_i7(&wasmType, &i_bytes, i_end);
                NormalizeType(&argType, wasmType);

                ftype->argTypes[a] = argType;
            }

            u8 returnCount;
            ReadLEB_u7(&returnCount, &i_bytes, i_end); //目前规范中是返回值只能有1个

            if (returnCount)
            {
                i8 returnType;
                ReadLEB_i7(&returnType, &i_bytes, i_end);
                NormalizeType(&ftype->returnType, returnType);
            }
            log(parse, "    type %2d: ", i);
            logif(parse, PrintFuncTypeSignature(ftype));

            // Environment_AddFuncType(io_module->environment, &ftype);//TODO 如果需要环境，则补充这句
            io_module->func_type_list[i] = ftype;
        }
    }
}
void ParseType_Memory(memory_info_ptr o_memory, bytes *io_bytes, bytes i_end)
{
    u8 flag;

    ReadLEB_u7(&flag, io_bytes, i_end); // really a u1
    ReadLEB_u32(&o_memory->init_page_num, io_bytes, i_end);

    o_memory->max_page_num = 0;
    if (flag)
        ReadLEB_u32(&o_memory->max_page_num, io_bytes, i_end);
}
void ParseSection_Memory(wasm_module_ptr io_module, bytes i_bytes, bytes i_end)
{
    // TODO: MVP; assert no memory imported
    u32 numMemories;
    ReadLEB_u32(&numMemories, &i_bytes, i_end);
    log(parse, "** Memory [%d]", numMemories);
    if (numMemories != 1)
    {
        panicf("Too Many Memory Sections");
    }

    ParseType_Memory(&io_module->memory, &i_bytes, i_end);
}
void Module_AddGlobal(wasm_module_ptr io_module, u32 index, wasm_global_ptr *o_global, u8 i_type, bool i_mutable, bool i_isImported)
{
    if (index == io_module->global_num)
    {
        io_module->global_num++;
        realloc(io_module->global_list, io_module->global_num * sizeof(wasm_global));
    }
    wasm_global_ptr global = &io_module->global_list[index];

    global->type = i_type;
    global->imported = i_isImported;
    global->isMutable = i_mutable;

    if (o_global)
        *o_global = global;
}
//TODO 目前直接略过，在编译时替换为编译过程
void Parse_InitExpr(wasm_module_ptr io_module, bytes *i_bytes, bytes i_end)
{
    while (**i_bytes != 0x0B && *i_bytes < i_end)
    {
        (*i_bytes)++;
    }
    if (**i_bytes == 0x0B)
    {
        (*i_bytes)++;
    }
}

void ParseSection_Global(wasm_module_ptr io_module, bytes i_bytes, bytes i_end)
{
    u32 numGlobals;
    ReadLEB_u32(&numGlobals, &i_bytes, i_end);
    log(parse, "** Global [%d]", numGlobals);
    io_module->global_num = numGlobals;

    io_module->global_list = malloc(numGlobals * sizeof(wasm_global));

    for (u32 i = 0; i < numGlobals; ++i)
    {
        i8 waType;
        u8 type, isMutable;

        ReadLEB_i7(&waType, &i_bytes, i_end);
        NormalizeType(&type, waType);
        ReadLEB_u7(&isMutable, &i_bytes, i_end);
        log(parse, "    global: [%d] %s mutable: %d", i, wasm_types_names[type], (u32)isMutable);

        wasm_global_ptr global;
        Module_AddGlobal(io_module, i, &global, type, isMutable, false /* isImport */);
        global->initExpr = i_bytes;
        Parse_InitExpr(io_module, &i_bytes, i_end);
        global->initExprSize = (u32)(i_bytes - global->initExpr);
        if (global->initExprSize <= 1)
        {
            panicf("Wasm Missing Init Expression");
        }
    }
}

void ParseSection_Code(wasm_module_ptr io_module, bytes i_bytes, bytes i_end)
{
    u32 numFunctions;
    ReadLEB_u32(&numFunctions, &i_bytes, i_end);
    log(parse, "** Code [%d]", numFunctions);

    // if (numFunctions != io_module->numFunctions - io_module->numImports)
    // {
    //     panicf("mismatched function count in code section");
    // }

    for (u32 f = 0; f < numFunctions; ++f)
    {
        u32 size;
        ReadLEB_u32(&size, &i_bytes, i_end);

        if (size)
        {
            const u8 *ptr = i_bytes;
            i_bytes += size;

            if (i_bytes <= i_end)
            {
                const u8 *start = ptr;

                u32 numLocalBlocks;
                ReadLEB_u32(&numLocalBlocks, &ptr, i_end);
                log(parse, "    code size: %-4d", size);

                u32 numLocals = 0;

                for (u32 l = 0; l < numLocalBlocks; ++l)
                {
                    u32 varCount;
                    i8 wasmType;
                    u8 normalType;

                    ReadLEB_u32(&varCount, &ptr, i_end);
                    ReadLEB_i7(&wasmType, &ptr, i_end);
                    NormalizeType(&normalType, wasmType);

                    numLocals += varCount;
                    log(parse, "      %2d locals; type: '%s'", varCount, wasm_types_names[normalType]);
                }

                wasm_function_ptr func = &io_module->function_list[f + io_module->import_num];

                func->module = io_module;
                func->wasm = start;
                func->wasmEnd = i_bytes;
                func->numLocals = numLocals;
            }
            else
                panicf("Wasm Section Overrun");
        }
    }
}
void Module_AddFunction(wasm_module_ptr io_module, u32 index, u32 i_typeIndex, import_info_ptr i_importInfo)
{

    if (i_typeIndex < io_module->func_type_num)
    {
        wasm_function_ptr func;
        func_type_ptr ft = io_module->func_type_list[i_typeIndex];

        if (index >= io_module->function_num)
        { //超出索引，增加空间
            io_module->function_num++;
            io_module->function_list = realloc(io_module->function_list, io_module->function_num * sizeof(wasm_function_ptr));
            io_module->function_list[io_module->function_num - 1] = malloc(sizeof(wasm_function));
        }
        func = io_module->function_list[index];
        func->funcType = ft;

        if (i_importInfo)
        {
            func->import = *i_importInfo;
            func->name = i_importInfo->fieldUtf8;
        }

        log(parse, "   added function: %3d; sig: %d", index, i_typeIndex);
    }
    else
    {
        panicf("type sig index out of bounds");
    }
}
void ParseSection_Function(wasm_module_ptr io_module, bytes i_bytes, bytes i_end)
{
    u32 numFunctions;
    ReadLEB_u32(&numFunctions, &i_bytes, i_end);
    log(parse, "** Function [%d]", numFunctions);
    io_module->function_num = numFunctions;
    io_module->function_list = malloc(numFunctions * sizeof(wasm_function_ptr));
    for (int i = 0; i < numFunctions; i++)
    {
        io_module->function_list[i] = malloc(sizeof(wasm_function));
    }

    for (u32 i = 0; i < numFunctions; ++i)
    {
        u32 funcTypeIndex;
        ReadLEB_u32(&funcTypeIndex, &i_bytes, i_end);

        Module_AddFunction(io_module, i, funcTypeIndex, NULL /* import info */);
    }
}
void FreeImportInfo(import_info_ptr i_info)
{
    if (i_info->fieldUtf8 && i_info->moduleUtf8)
    {
        free(i_info->moduleUtf8);
        free(i_info->fieldUtf8);
    }
}

void ParseSection_Import(wasm_module_ptr io_module, bytes i_bytes, bytes i_end)
{
    import_info import = {NULL, NULL}, clearImport = {NULL, NULL};

    u32 numImports;
    ReadLEB_u32(&numImports, &i_bytes, i_end);
    log(parse, "** Import [%d]", numImports);

    for (u32 i = 0; i < numImports; ++i)
    {
        u8 importKind;
        hexdump(i_bytes,10);
        Read_utf8(&import.moduleUtf8, &i_bytes, i_end);
        
        hexdump(i_bytes,10);
        Read_utf8(&import.fieldUtf8, &i_bytes, i_end);
        hexdump(i_bytes,10);
        Read_u8(&importKind, &i_bytes, i_end);
        hexdump(i_bytes,10);
        log(parse, "    kind: %d '%s.%s' ",
            (u32)importKind, import.moduleUtf8, import.fieldUtf8);
        switch (importKind)
        {
        case d_externalKind_function:
        {
            u32 typeIndex;
            ReadLEB_u32(&typeIndex, &i_bytes, i_end);
            Module_AddFunction(io_module, io_module->function_num, typeIndex, &import);
            import = clearImport;

            io_module->import_num++;
        }
        break;

        case d_externalKind_table:
            //                  result = ParseType_Table (& i_bytes, i_end);
            break;

        case d_externalKind_memory:
        {
            ParseType_Memory(&io_module->memory, &i_bytes, i_end);
            io_module->memory_imported = true;
        }
        break;

        case d_externalKind_global:
        {
            i8 waType;
            u8 type, isMutable;

            ReadLEB_i7(&waType, &i_bytes, i_end);
            NormalizeType(&type, waType);
            ReadLEB_u7(&isMutable, &i_bytes, i_end);
            log(parse, "     global: %s mutable=%d", wasm_types_names[type], (u32)isMutable);

            wasm_global_ptr global;
            Module_AddGlobal(io_module, io_module->global_num, &global, type, isMutable, true /* isImport */);
            global->import=import;
            import = clearImport;
        }
        break;

        default:
            panicf("Wasm Malformed");
        }

        FreeImportInfo(&import);
    }
}

void ParseSection_Data(wasm_module_ptr io_module, bytes i_bytes, bytes i_end)
{
    u32 numDataSegments;
    ReadLEB_u32(&numDataSegments, &i_bytes, i_end);
    log(parse, "** Data [%d]", numDataSegments);

    io_module->data_segment_list = malloc(numDataSegments*sizeof(data_segment));

    io_module->data_segment_num = numDataSegments;

    for (u32 i = 0; i < numDataSegments; ++i)
    {
        data_segment_ptr segment = &io_module->data_segment_list[i];

        ReadLEB_u32(&segment->memoryRegion, &i_bytes, i_end);

        segment->initExpr = i_bytes;
        Parse_InitExpr(io_module, &i_bytes, i_end);
        segment->initExprSize = (u32)(i_bytes - segment->initExpr);

        if(segment->initExprSize <= 1){
            panicf("Wasm Missing Init Expression");
        }

        ReadLEB_u32(&segment->size, &i_bytes, i_end);
        segment->data = i_bytes;
        log(parse, "    segment [%u]  memory: %u;  expr-size: %d;  size: %d",
              i, segment->memoryRegion, segment->initExprSize, segment->size);
        i_bytes += segment->size;
    }

}

void ParseSection_Start(wasm_module_ptr io_module, bytes i_bytes, bytes i_end)
{
    u32 startFuncIndex;
    ReadLEB_u32(&startFuncIndex, &i_bytes, i_end);
    log(parse, "** Start Function: %d", startFuncIndex);

    if (startFuncIndex < io_module->function_num)
    {
        io_module->startFunction = startFuncIndex;
    }
    else
        panicf("start function index out of bounds");

}