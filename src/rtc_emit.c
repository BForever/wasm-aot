#include <stdlib.h>
#include "debug.h"
#include "wkreprog.h"
#include "rtc_emit.h"
#include "types.h"

#define rtc_optimise(buffer, code_end)

u16 *code_buffer,*codebuffer_position;

void emit_init(u16* buffer) {
    code_buffer= buffer;
    codebuffer_position = code_buffer;
}


void emit_raw_word(u16 word) {
    *(codebuffer_position++) = word;

    if (codebuffer_position >= code_buffer+RTC_CODEBUFFER_SIZE) { // Buffer full, do a flush.
        emit_flush_to_flash();
    }
}

void emit(u16 opcode) {
#ifdef AVRORA
    // avroraRTCTraceSingleWordInstruction(opcode);
#endif
    emit_raw_word(opcode);
}

void emit2(u16 opcode1, u16 opcode2) {
#ifdef AVRORA
    // avroraRTCTraceDoubleWordInstruction(opcode1, opcode2);
#endif
    emit_raw_word(opcode1);
    emit_raw_word(opcode2);
}

void emit_without_optimisation(u16 word) {
    emit_flush_to_flash();
    *(codebuffer_position++) = word;
    emit_flush_to_flash();
}

void emit_flush_to_flash() {
    if (code_buffer != codebuffer_position) {
        // Try to optimise the code currently in the buffer. This may affect codebuffer_position if we're able to compact the code.
        rtc_optimise(code_buffer, &codebuffer_position);

        u8 *instructiondata = (u8 *)code_buffer;
        u16 count = codebuffer_position - code_buffer;
#ifdef DARJEELING_DEBUG
        for (int i=0; i<count; i++) {
            DEBUG_LOG(DBG_RTCTRACE, "[rtc]    %x  (%x %x)\n", code_buffer[i], instructiondata[i*2], instructiondata[i*2+1]);
        }
#endif // DARJEELING_DEBUG
        // Write to flash buffer
        wkreprog_write(2*count, instructiondata);
        // Buffer is now empty
        codebuffer_position = code_buffer;
    }
}

