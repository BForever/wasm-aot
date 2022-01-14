
function rtcbenchmark_measure_native_performance( NUMNUMBERS,  numbers,  output) {
    rtc_startBenchmarkMeasurement_Native();

    let stream = output;
    let stream_bits_used_in_current_byte = 0;

    let ri_1 = 0;
    for (let i=0; i<NUMNUMBERS; i++) {
        let ri = numbers[i];
        compress(ri, ri_1, stream, stream_bits_used_in_current_byte);

        ri_1 = ri;
    }

    rtc_stopBenchmarkMeasurement();

    return stream-output+1; // The number of bytes in the output array
}

let si_tbl = [
    0b00,
    0b010,
    0b011,
    0b100,
    0b101,
    0b110,
    0b1110,
    0b11110,
    0b111110,
    0b1111110,
    0b11111110,
    0b111111110,
    0b1111111110,
    0b11111111110,
    0b111111111110,
    0b1111111111110,
    0b11111111111110,
]

let si_length_tbl = [
    2,
    3,
    3,
    3,
    3,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
]


function compress( ri,  ri_1,  stream, stream_bits_used_in_current_byte) {
    // compute difference di
    let di = ri - ri_1;
    // encode difference di
    let bsi;
    let bsi_length;
    encode(di, bsi, bsi_length);
    // append bsi to stream
    let bits_left_current_in_byte = 8 - *stream_bits_used_in_current_byte;
    while (bsi_length > 0) {
        if (bsi_length > bits_left_current_in_byte) {
            // Not enough space to store all bits

            // Calculate bits to write to current byte
            uint8_t bits_to_add_to_current_byte = bsi >> (bsi_length - bits_left_current_in_byte);

            // Add them to the current byte
        **stream |= bits_to_add_to_current_byte;
            // Remove those bits from the to-do list
            bsi_length -= bits_left_current_in_byte;

            // Advance the stream to the next byte
            (*stream)++;
            // Whole new byte for the next round
            bits_left_current_in_byte = 8;
        } else {
            // Enough space to store all bits

            // After this we'll have -bsi_length bits left.
            bits_left_current_in_byte -= bsi_length;

            // Calculate bits to write to current byte
            uint8_t bits_to_add_to_current_byte = bsi << bits_left_current_in_byte;

            // Add them to the current byte
        **stream |= bits_to_add_to_current_byte;
            // Remove those bits from the to-do list
            bsi_length = 0;
        }
    }

*stream_bits_used_in_current_byte = 8 - bits_left_current_in_byte;

}


function encode( di, bsi,  bsi_length) {
    // compute di category
    let di_abs;
    if (di < 0) {
        di_abs = -di;
    } else {
        di_abs = di;
    }
    let ni = computeBinaryLog(di_abs);
    // printInt16(1111);
    // printInt16(ni);
    // extract si from Table
    let si = si_tbl[ni];
    let si_length = si_length_tbl[ni];
    let ai = 0;
    let ai_length = 0;
    // build bsi
    if (ni == 0) {
    *bsi = si;
    *bsi_length = si_length;
    } else {
        // build ai
        if (di > 0) {
            ai = di;
            ai_length = ni;
        } else {
            ai = di-1;
            ai_length = ni;
        }
    *bsi = (si << ai_length) | (ai & ((1 << ni) -1));
    *bsi_length = si_length + ai_length;
    }
}

function computeBinaryLog( di) {
    let ni = 0;
    while (di > 0) {
        di >>= 1;
        ni++;
    }
    return ni;
}
static const int16_t numbers[] = { -489, -485, -483, -482, -463, -452, -450, -469, -469, -447, -441, -454, -464, -475, -489, -474, -448, -453, -453, -455, -465, -452, -451, -422, -427, -447, -440, -432, -400, -393, -393, -418, -477, -504, -477, -453, -469, -509, -495, -462, -460, -440, -429, -429, -455, -449, -427, -401, -413, -456, -438, -431, -431, -443, -463, -456, -438, -442, -454, -453, -458, -463, -471, -447, -427, -432, -422, -425, -437, -423, -407, -402, -409, -461, -466, -435, -444, -450, -427, -417, -429, -423, -417, -416, -421, -431, -423, -408, -386, -355, -401, -380, -324, -385, -399, -389, -376, -388, -425, -384, -334, -323, -336, -324, -314, -332, -302, -292, -305, -292, -282, -284, -290, -321, -312, -277, -272, -274, -308, -270, -235, -249, -250, -277, -240, -183, -177, -179, -186, -155, -156, -180, -194, -197, -188, -204, -184, -184, -163, -151, -158, -134, -144, -117, -105, -101, -97, -94, -76, -67, -28, -39, -57, -74, -51, -23, -33, -43, -110, -129, -80, -14, -68, -103, -60, -74, -73, -40, 2, 23, 11, -33, -47, -26, 6, -26, -44, -42, -65, -68, -79, -37, -22, -22, 0, -5, -25, -35, -36, -40, -45, -55, -44, -62, -82, -92, -92, -83, -77, -53, -69, -74, -71, -79, -91, -98, -80, -53, -58, -57, -66, -127, -109, -109, -121, -95, -129, -161, -159, -151, -165, -152, -149, -155, -148, -159, -168, -166, -166, -189, -160, -158, -184, -190, -172, -150, -195, -197, -180, -201, -213, -219, -232, -221, -203, -198, -223, -217, -172, -167, -204, -264, -240, -211, -223, -241 };

void javax_rtcbench_RTCBenchmark_void_test_native() {
    // Test with data from paper:
    // di=0,di =+1,di =−1,di =+255and di = −255 are encoded as 00, 010|1, 010|0, 111110|11111111 and 111110|00000000
    // uint16_t NUMNUMBERS = 5;
    // int16_t numbers[] = { 0, 1, 0, 255, 0 };

    // ECG dataset:
    let NUMNUMBERS = 256;

    let output = [];
    for (let i=0; i<NUMNUMBERS; i++) {
        output[i] = 0;
    }

    let encoded_length = rtcbenchmark_measure_native_performance(NUMNUMBERS, numbers, output);


    for (let i=0; i<encoded_length; i++) {
        printf("%d\n",output[i]);
    }
}
