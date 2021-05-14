#include "types.h"
#include "debug.h"
#include "config.h"

void ReadLebUnsigned(u64 *o_value, u32 i_maxNumBits, bytes *io_bytes, bytes i_end)
{
    u64 value = 0;

    u32 shift = 0;
    const u8 *ptr = *io_bytes;

    while (ptr < i_end)
    {
        u64 byte = *(ptr++);

        value |= ((byte & 0x7f) << shift);
        shift += 7;

        if ((byte & 0x80) == 0)
        {
            break;
        }

        if (shift >= i_maxNumBits)
        {
            panicf("lebOverflow!");
            break;
        }
    }

    *o_value = value;
    *io_bytes = ptr;
}
void ReadLebSigned(i64 *o_value, u32 i_maxNumBits, bytes *io_bytes, bytes i_end)
{

    i64 value = 0;

    u32 shift = 0;
    const u8 *ptr = *io_bytes;

    while (ptr < i_end)
    {
        u64 byte = *(ptr++);

        value |= ((byte & 0x7f) << shift);
        shift += 7;

        if ((byte & 0x80) == 0)
        {
            if ((byte & 0x40) && (shift < 64)) // do sign extension
            {
                u64 extend = 0;
                value |= (~extend << shift);
            }
            break;
        }

        if (shift >= i_maxNumBits)
        {
            panicf("leb overflow");
        }
    }
    *o_value = value;
    *io_bytes = ptr;
}
void ReadLEB_u7(u8 *o_value, bytes *io_bytes, bytes i_end)
{
    u64 value;
    ReadLebUnsigned(&value, 7, io_bytes, i_end);
    *o_value = (u8)value;
}
void Read_u8(u8 *o_value, bytes *io_bytes, bytes i_end)
{
    const u8 *ptr = *io_bytes;

    if (ptr < i_end)
    {
        *o_value = *ptr;
        ptr += sizeof(u8);
        *io_bytes = ptr;
    }
    else
        panicf("Wasm Underrun");
}
void ReadLEB_u32(u32 *o_value, bytes *io_bytes, bytes i_end)
{
    u64 value;
    ReadLebUnsigned(&value, 32, io_bytes, i_end);
    *o_value = (u32)value;
}
void Read_u32(u32 *o_value, bytes *io_bytes, bytes i_end)
{
    const u8 *ptr = *io_bytes;
    ptr += sizeof(u32);

    if (ptr <= i_end)
    {
        memcpy(o_value, *io_bytes, sizeof(u32));
        BSWAP_u32(*o_value);
        *io_bytes = ptr;
    }
    else
    {
        panic();
    }
}

void ReadLEB_i7(i8 *o_value, bytes *io_bytes, bytes i_end)
{
    i64 value;
    ReadLebSigned(&value, 7, io_bytes, i_end);
    *o_value = (i8)value;
}
void ReadLEB_i32(i32 *o_value, bytes *io_bytes, bytes i_end)
{
    i64 value;
    ReadLebSigned(&value, 32, io_bytes, i_end);
    *o_value = (i32)value;
}

void ReadLEB_i64(i64 *o_value, bytes *io_bytes, bytes i_end)
{
    i64 value;
    ReadLebSigned(&value, 64, io_bytes, i_end);
    *o_value = value;
}

void Read_utf8(bytes *o_utf8, bytes *io_bytes, bytes i_end)
{
    *o_utf8 = NULL;

    u32 utf8Length;
    ReadLEB_u32(&utf8Length, io_bytes, i_end);

    if (utf8Length <= d_m3MaxSaneUtf8Length)
    {
        const u8 *ptr = *io_bytes;
        const u8 *end = ptr + utf8Length;

        if (end <= i_end)
        {
            char *utf8;
            utf8 = malloc(utf8Length + 1);

            memcpy(utf8, ptr, utf8Length);
            utf8[utf8Length] = 0;
            *o_utf8 = utf8;

            *io_bytes = end;
        }
        else
            panicf("wasm underrun");
    }
    else
        panicf("missing utf8");
}
