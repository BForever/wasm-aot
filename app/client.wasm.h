unsigned char client_wasm[] = {
  0x00, 0x61, 0x73, 0x6d, 0x01, 0x00, 0x00, 0x00, 0x01, 0x23, 0x07, 0x60,
  0x02, 0x7f, 0x7f, 0x00, 0x60, 0x03, 0x7f, 0x7f, 0x7f, 0x00, 0x60, 0x01,
  0x7f, 0x01, 0x7f, 0x60, 0x01, 0x7f, 0x00, 0x60, 0x03, 0x7f, 0x7f, 0x7f,
  0x01, 0x7f, 0x60, 0x00, 0x00, 0x60, 0x00, 0x01, 0x7f, 0x02, 0x57, 0x06,
  0x03, 0x65, 0x6e, 0x76, 0x05, 0x70, 0x72, 0x69, 0x6e, 0x74, 0x00, 0x00,
  0x03, 0x65, 0x6e, 0x76, 0x06, 0x6d, 0x65, 0x6d, 0x63, 0x70, 0x79, 0x00,
  0x01, 0x03, 0x65, 0x6e, 0x76, 0x09, 0x70, 0x69, 0x70, 0x65, 0x5f, 0x6f,
  0x70, 0x65, 0x6e, 0x00, 0x02, 0x03, 0x65, 0x6e, 0x76, 0x05, 0x64, 0x65,
  0x6c, 0x61, 0x79, 0x00, 0x03, 0x03, 0x65, 0x6e, 0x76, 0x0a, 0x70, 0x69,
  0x70, 0x65, 0x5f, 0x77, 0x72, 0x69, 0x74, 0x65, 0x00, 0x04, 0x03, 0x65,
  0x6e, 0x76, 0x09, 0x70, 0x69, 0x70, 0x65, 0x5f, 0x72, 0x65, 0x61, 0x64,
  0x00, 0x04, 0x03, 0x05, 0x04, 0x05, 0x02, 0x03, 0x06, 0x04, 0x05, 0x01,
  0x70, 0x01, 0x01, 0x01, 0x05, 0x03, 0x01, 0x00, 0x01, 0x06, 0x29, 0x07,
  0x7f, 0x01, 0x41, 0xd0, 0x28, 0x0b, 0x7f, 0x00, 0x41, 0x80, 0x08, 0x0b,
  0x7f, 0x00, 0x41, 0xc5, 0x08, 0x0b, 0x7f, 0x00, 0x41, 0x80, 0x08, 0x0b,
  0x7f, 0x00, 0x41, 0xd0, 0x28, 0x0b, 0x7f, 0x00, 0x41, 0x00, 0x0b, 0x7f,
  0x00, 0x41, 0x01, 0x0b, 0x07, 0x93, 0x01, 0x0b, 0x06, 0x6d, 0x65, 0x6d,
  0x6f, 0x72, 0x79, 0x02, 0x00, 0x11, 0x5f, 0x5f, 0x77, 0x61, 0x73, 0x6d,
  0x5f, 0x63, 0x61, 0x6c, 0x6c, 0x5f, 0x63, 0x74, 0x6f, 0x72, 0x73, 0x00,
  0x06, 0x06, 0x73, 0x74, 0x72, 0x6c, 0x65, 0x6e, 0x00, 0x07, 0x07, 0x70,
  0x72, 0x69, 0x6e, 0x74, 0x77, 0x6c, 0x00, 0x08, 0x06, 0x5f, 0x73, 0x74,
  0x61, 0x72, 0x74, 0x00, 0x09, 0x0c, 0x5f, 0x5f, 0x64, 0x73, 0x6f, 0x5f,
  0x68, 0x61, 0x6e, 0x64, 0x6c, 0x65, 0x03, 0x01, 0x0a, 0x5f, 0x5f, 0x64,
  0x61, 0x74, 0x61, 0x5f, 0x65, 0x6e, 0x64, 0x03, 0x02, 0x0d, 0x5f, 0x5f,
  0x67, 0x6c, 0x6f, 0x62, 0x61, 0x6c, 0x5f, 0x62, 0x61, 0x73, 0x65, 0x03,
  0x03, 0x0b, 0x5f, 0x5f, 0x68, 0x65, 0x61, 0x70, 0x5f, 0x62, 0x61, 0x73,
  0x65, 0x03, 0x04, 0x0d, 0x5f, 0x5f, 0x6d, 0x65, 0x6d, 0x6f, 0x72, 0x79,
  0x5f, 0x62, 0x61, 0x73, 0x65, 0x03, 0x05, 0x0c, 0x5f, 0x5f, 0x74, 0x61,
  0x62, 0x6c, 0x65, 0x5f, 0x62, 0x61, 0x73, 0x65, 0x03, 0x06, 0x0a, 0xdc,
  0x02, 0x04, 0x02, 0x00, 0x0b, 0x27, 0x01, 0x03, 0x7f, 0x41, 0x00, 0x21,
  0x01, 0x03, 0x40, 0x20, 0x00, 0x20, 0x01, 0x6a, 0x21, 0x02, 0x20, 0x01,
  0x41, 0x01, 0x6a, 0x22, 0x03, 0x21, 0x01, 0x20, 0x02, 0x2d, 0x00, 0x00,
  0x0d, 0x00, 0x0b, 0x20, 0x03, 0x41, 0x7f, 0x6a, 0x0b, 0x2f, 0x01, 0x03,
  0x7f, 0x41, 0x00, 0x21, 0x01, 0x03, 0x40, 0x20, 0x00, 0x20, 0x01, 0x6a,
  0x21, 0x02, 0x20, 0x01, 0x41, 0x01, 0x6a, 0x22, 0x03, 0x21, 0x01, 0x20,
  0x02, 0x2d, 0x00, 0x00, 0x0d, 0x00, 0x0b, 0x20, 0x00, 0x20, 0x03, 0x41,
  0x7f, 0x6a, 0x10, 0x80, 0x80, 0x80, 0x80, 0x00, 0x0b, 0xfe, 0x01, 0x01,
  0x06, 0x7f, 0x23, 0x80, 0x80, 0x80, 0x80, 0x00, 0x41, 0x80, 0x16, 0x6b,
  0x22, 0x00, 0x24, 0x80, 0x80, 0x80, 0x80, 0x00, 0x20, 0x00, 0x41, 0x80,
  0x88, 0x80, 0x80, 0x00, 0x41, 0x06, 0x10, 0x81, 0x80, 0x80, 0x80, 0x00,
  0x41, 0x86, 0x88, 0x80, 0x80, 0x00, 0x41, 0x0f, 0x10, 0x80, 0x80, 0x80,
  0x80, 0x00, 0x41, 0x96, 0x88, 0x80, 0x80, 0x00, 0x10, 0x82, 0x80, 0x80,
  0x80, 0x00, 0x21, 0x01, 0x41, 0x9e, 0x88, 0x80, 0x80, 0x00, 0x10, 0x82,
  0x80, 0x80, 0x80, 0x00, 0x21, 0x02, 0x41, 0xd0, 0x0f, 0x21, 0x03, 0x03,
  0x7f, 0x20, 0x03, 0x10, 0x83, 0x80, 0x80, 0x80, 0x00, 0x41, 0xa3, 0x88,
  0x80, 0x80, 0x00, 0x41, 0x0f, 0x10, 0x80, 0x80, 0x80, 0x80, 0x00, 0x41,
  0x00, 0x21, 0x03, 0x03, 0x40, 0x20, 0x00, 0x20, 0x03, 0x6a, 0x21, 0x04,
  0x20, 0x03, 0x41, 0x01, 0x6a, 0x22, 0x05, 0x21, 0x03, 0x20, 0x04, 0x2d,
  0x00, 0x00, 0x0d, 0x00, 0x0b, 0x20, 0x00, 0x20, 0x05, 0x41, 0x7f, 0x6a,
  0x10, 0x80, 0x80, 0x80, 0x80, 0x00, 0x41, 0xb3, 0x88, 0x80, 0x80, 0x00,
  0x41, 0x01, 0x10, 0x80, 0x80, 0x80, 0x80, 0x00, 0x20, 0x01, 0x20, 0x00,
  0x41, 0xf7, 0x0a, 0x10, 0x84, 0x80, 0x80, 0x80, 0x00, 0x1a, 0x41, 0xd0,
  0x0f, 0x10, 0x83, 0x80, 0x80, 0x80, 0x00, 0x41, 0xb5, 0x88, 0x80, 0x80,
  0x00, 0x41, 0x0f, 0x10, 0x80, 0x80, 0x80, 0x80, 0x00, 0x20, 0x00, 0x41,
  0x80, 0x0b, 0x6a, 0x20, 0x02, 0x20, 0x00, 0x41, 0x80, 0x0b, 0x6a, 0x41,
  0xf7, 0x0a, 0x10, 0x85, 0x80, 0x80, 0x80, 0x00, 0x10, 0x80, 0x80, 0x80,
  0x80, 0x00, 0x41, 0xb3, 0x88, 0x80, 0x80, 0x00, 0x41, 0x01, 0x10, 0x80,
  0x80, 0x80, 0x80, 0x00, 0x41, 0xe8, 0x07, 0x21, 0x03, 0x0c, 0x00, 0x0b,
  0x0b, 0x0b, 0x4c, 0x01, 0x00, 0x41, 0x80, 0x08, 0x0b, 0x45, 0x68, 0x65,
  0x6c, 0x6c, 0x6f, 0x00, 0x5b, 0x63, 0x6c, 0x69, 0x65, 0x6e, 0x74, 0x20,
  0x73, 0x74, 0x61, 0x72, 0x74, 0x5d, 0x0a, 0x00, 0x72, 0x65, 0x63, 0x65,
  0x69, 0x76, 0x65, 0x00, 0x73, 0x65, 0x6e, 0x64, 0x00, 0x5b, 0x63, 0x6c,
  0x69, 0x65, 0x6e, 0x74, 0x5d, 0x20, 0x73, 0x65, 0x6e, 0x64, 0x3a, 0x20,
  0x00, 0x0a, 0x00, 0x5b, 0x63, 0x6c, 0x69, 0x65, 0x6e, 0x74, 0x5d, 0x20,
  0x72, 0x65, 0x63, 0x76, 0x3a, 0x20, 0x00
};
unsigned int client_wasm_len = 775;
