
/home/fanhc/wasm-aot/app/benchmark/binsrch.elf:     file format elf32-avr


Disassembly of section .data:

00800100 <__data_start>:
	...

00800102 <__malloc_heap_start>:
  800102:	0f 01       	movw	r0, r30

00800104 <__malloc_margin>:
  800104:	20 00       	.word	0x0020	; ????

Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 46 00 	jmp	0x8c	; 0x8c <__ctors_end>
   4:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
   8:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
   c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  10:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  14:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  18:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  1c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  20:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  24:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  28:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  2c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  30:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  34:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  38:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  3c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  40:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  44:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  48:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  4c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  50:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  54:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  58:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  5c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  60:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  64:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  68:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  6c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  70:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  74:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  78:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  7c:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  80:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  84:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>
  88:	0c 94 65 00 	jmp	0xca	; 0xca <__bad_interrupt>

0000008c <__ctors_end>:
  8c:	11 24       	eor	r1, r1
  8e:	1f be       	out	0x3f, r1	; 63
  90:	cf ef       	ldi	r28, 0xFF	; 255
  92:	d0 e1       	ldi	r29, 0x10	; 16
  94:	de bf       	out	0x3e, r29	; 62
  96:	cd bf       	out	0x3d, r28	; 61

00000098 <__do_copy_data>:
  98:	11 e0       	ldi	r17, 0x01	; 1
  9a:	a0 e0       	ldi	r26, 0x00	; 0
  9c:	b1 e0       	ldi	r27, 0x01	; 1
  9e:	ea e6       	ldi	r30, 0x6A	; 106
  a0:	f4 e0       	ldi	r31, 0x04	; 4
  a2:	00 e0       	ldi	r16, 0x00	; 0
  a4:	0b bf       	out	0x3b, r16	; 59
  a6:	02 c0       	rjmp	.+4      	; 0xac <__do_copy_data+0x14>
  a8:	07 90       	elpm	r0, Z+
  aa:	0d 92       	st	X+, r0
  ac:	a6 30       	cpi	r26, 0x06	; 6
  ae:	b1 07       	cpc	r27, r17
  b0:	d9 f7       	brne	.-10     	; 0xa8 <__do_copy_data+0x10>

000000b2 <__do_clear_bss>:
  b2:	21 e0       	ldi	r18, 0x01	; 1
  b4:	a6 e0       	ldi	r26, 0x06	; 6
  b6:	b1 e0       	ldi	r27, 0x01	; 1
  b8:	01 c0       	rjmp	.+2      	; 0xbc <.do_clear_bss_start>

000000ba <.do_clear_bss_loop>:
  ba:	1d 92       	st	X+, r1

000000bc <.do_clear_bss_start>:
  bc:	af 30       	cpi	r26, 0x0F	; 15
  be:	b2 07       	cpc	r27, r18
  c0:	e1 f7       	brne	.-8      	; 0xba <.do_clear_bss_loop>
  c2:	0e 94 8d 00 	call	0x11a	; 0x11a <main>
  c6:	0c 94 33 02 	jmp	0x466	; 0x466 <_exit>

000000ca <__bad_interrupt>:
  ca:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000ce <rtc_startBenchmarkMeasurement_Native>:
  ce:	e6 e0       	ldi	r30, 0x06	; 6
  d0:	f1 e0       	ldi	r31, 0x01	; 1
  d2:	83 e7       	ldi	r24, 0x73	; 115
  d4:	81 83       	std	Z+1, r24	; 0x01
  d6:	8a e0       	ldi	r24, 0x0A	; 10
  d8:	80 83       	st	Z, r24
  da:	94 e7       	ldi	r25, 0x74	; 116
  dc:	91 83       	std	Z+1, r25	; 0x01
  de:	80 83       	st	Z, r24
  e0:	21 e6       	ldi	r18, 0x61	; 97
  e2:	21 83       	std	Z+1, r18	; 0x01
  e4:	80 83       	st	Z, r24
  e6:	22 e7       	ldi	r18, 0x72	; 114
  e8:	21 83       	std	Z+1, r18	; 0x01
  ea:	80 83       	st	Z, r24
  ec:	91 83       	std	Z+1, r25	; 0x01
  ee:	80 83       	st	Z, r24
  f0:	8b e0       	ldi	r24, 0x0B	; 11
  f2:	80 83       	st	Z, r24
  f4:	08 95       	ret

000000f6 <rtc_stopBenchmarkMeasurement>:
  f6:	e6 e0       	ldi	r30, 0x06	; 6
  f8:	f1 e0       	ldi	r31, 0x01	; 1
  fa:	83 e7       	ldi	r24, 0x73	; 115
  fc:	81 83       	std	Z+1, r24	; 0x01
  fe:	8a e0       	ldi	r24, 0x0A	; 10
 100:	80 83       	st	Z, r24
 102:	94 e7       	ldi	r25, 0x74	; 116
 104:	91 83       	std	Z+1, r25	; 0x01
 106:	80 83       	st	Z, r24
 108:	9f e6       	ldi	r25, 0x6F	; 111
 10a:	91 83       	std	Z+1, r25	; 0x01
 10c:	80 83       	st	Z, r24
 10e:	90 e7       	ldi	r25, 0x70	; 112
 110:	91 83       	std	Z+1, r25	; 0x01
 112:	80 83       	st	Z, r24
 114:	8b e0       	ldi	r24, 0x0B	; 11
 116:	80 83       	st	Z, r24
 118:	08 95       	ret

0000011a <main>:
 11a:	0e 94 f7 00 	call	0x1ee	; 0x1ee <javax_rtcbench_RTCBenchmark_void_test_native>
 11e:	80 e0       	ldi	r24, 0x00	; 0
 120:	90 e0       	ldi	r25, 0x00	; 0
 122:	08 95       	ret

00000124 <rtcbenchmark_measure_native_performance>:
 124:	8f 92       	push	r8
 126:	9f 92       	push	r9
 128:	af 92       	push	r10
 12a:	bf 92       	push	r11
 12c:	cf 92       	push	r12
 12e:	df 92       	push	r13
 130:	ef 92       	push	r14
 132:	ff 92       	push	r15
 134:	0f 93       	push	r16
 136:	1f 93       	push	r17
 138:	cf 93       	push	r28
 13a:	df 93       	push	r29
 13c:	8c 01       	movw	r16, r24
 13e:	eb 01       	movw	r28, r22
 140:	0e 94 67 00 	call	0xce	; 0xce <rtc_startBenchmarkMeasurement_Native>
 144:	f8 01       	movw	r30, r16
 146:	e1 50       	subi	r30, 0x01	; 1
 148:	f0 4c       	sbci	r31, 0xC0	; 192
 14a:	ee 0f       	add	r30, r30
 14c:	ff 1f       	adc	r31, r31
 14e:	ee 0f       	add	r30, r30
 150:	ff 1f       	adc	r31, r31
 152:	ec 0f       	add	r30, r28
 154:	fd 1f       	adc	r31, r29
 156:	80 80       	ld	r8, Z
 158:	91 80       	ldd	r9, Z+1	; 0x01
 15a:	a2 80       	ldd	r10, Z+2	; 0x02
 15c:	b3 80       	ldd	r11, Z+3	; 0x03
 15e:	d8 01       	movw	r26, r16
 160:	11 97       	sbiw	r26, 0x01	; 1
 162:	68 ee       	ldi	r22, 0xE8	; 232
 164:	73 e0       	ldi	r23, 0x03	; 3
 166:	ad 01       	movw	r20, r26
 168:	20 e0       	ldi	r18, 0x00	; 0
 16a:	30 e0       	ldi	r19, 0x00	; 0
 16c:	06 c0       	rjmp	.+12     	; 0x17a <rtcbenchmark_measure_native_performance+0x56>
 16e:	98 01       	movw	r18, r16
 170:	2f 5f       	subi	r18, 0xFF	; 255
 172:	3f 4f       	sbci	r19, 0xFF	; 255
 174:	42 17       	cp	r20, r18
 176:	53 07       	cpc	r21, r19
 178:	08 f1       	brcs	.+66     	; 0x1bc <rtcbenchmark_measure_native_performance+0x98>
 17a:	c9 01       	movw	r24, r18
 17c:	84 0f       	add	r24, r20
 17e:	95 1f       	adc	r25, r21
 180:	8c 01       	movw	r16, r24
 182:	16 95       	lsr	r17
 184:	07 95       	ror	r16
 186:	f8 01       	movw	r30, r16
 188:	ee 0f       	add	r30, r30
 18a:	ff 1f       	adc	r31, r31
 18c:	ee 0f       	add	r30, r30
 18e:	ff 1f       	adc	r31, r31
 190:	ec 0f       	add	r30, r28
 192:	fd 1f       	adc	r31, r29
 194:	c0 80       	ld	r12, Z
 196:	d1 80       	ldd	r13, Z+1	; 0x01
 198:	e2 80       	ldd	r14, Z+2	; 0x02
 19a:	f3 80       	ldd	r15, Z+3	; 0x03
 19c:	c8 14       	cp	r12, r8
 19e:	d9 04       	cpc	r13, r9
 1a0:	ea 04       	cpc	r14, r10
 1a2:	fb 04       	cpc	r15, r11
 1a4:	24 f3       	brlt	.-56     	; 0x16e <rtcbenchmark_measure_native_performance+0x4a>
 1a6:	8c 14       	cp	r8, r12
 1a8:	9d 04       	cpc	r9, r13
 1aa:	ae 04       	cpc	r10, r14
 1ac:	bf 04       	cpc	r11, r15
 1ae:	34 f4       	brge	.+12     	; 0x1bc <rtcbenchmark_measure_native_performance+0x98>
 1b0:	a8 01       	movw	r20, r16
 1b2:	41 50       	subi	r20, 0x01	; 1
 1b4:	51 09       	sbc	r21, r1
 1b6:	42 17       	cp	r20, r18
 1b8:	53 07       	cpc	r21, r19
 1ba:	f8 f6       	brcc	.-66     	; 0x17a <rtcbenchmark_measure_native_performance+0x56>
 1bc:	61 50       	subi	r22, 0x01	; 1
 1be:	71 09       	sbc	r23, r1
 1c0:	91 f6       	brne	.-92     	; 0x166 <rtcbenchmark_measure_native_performance+0x42>
 1c2:	0e 94 7b 00 	call	0xf6	; 0xf6 <rtc_stopBenchmarkMeasurement>
 1c6:	c8 01       	movw	r24, r16
 1c8:	a0 e0       	ldi	r26, 0x00	; 0
 1ca:	b0 e0       	ldi	r27, 0x00	; 0
 1cc:	88 83       	st	Y, r24
 1ce:	99 83       	std	Y+1, r25	; 0x01
 1d0:	aa 83       	std	Y+2, r26	; 0x02
 1d2:	bb 83       	std	Y+3, r27	; 0x03
 1d4:	df 91       	pop	r29
 1d6:	cf 91       	pop	r28
 1d8:	1f 91       	pop	r17
 1da:	0f 91       	pop	r16
 1dc:	ff 90       	pop	r15
 1de:	ef 90       	pop	r14
 1e0:	df 90       	pop	r13
 1e2:	cf 90       	pop	r12
 1e4:	bf 90       	pop	r11
 1e6:	af 90       	pop	r10
 1e8:	9f 90       	pop	r9
 1ea:	8f 90       	pop	r8
 1ec:	08 95       	ret

000001ee <javax_rtcbench_RTCBenchmark_void_test_native>:
 1ee:	80 e9       	ldi	r24, 0x90	; 144
 1f0:	91 e0       	ldi	r25, 0x01	; 1
 1f2:	0e 94 12 01 	call	0x224	; 0x224 <malloc>
 1f6:	fc 01       	movw	r30, r24
 1f8:	42 ee       	ldi	r20, 0xE2	; 226
 1fa:	5f ef       	ldi	r21, 0xFF	; 255
 1fc:	6f ef       	ldi	r22, 0xFF	; 255
 1fe:	7f ef       	ldi	r23, 0xFF	; 255
 200:	41 93       	st	Z+, r20
 202:	51 93       	st	Z+, r21
 204:	61 93       	st	Z+, r22
 206:	71 93       	st	Z+, r23
 208:	4f 5f       	subi	r20, 0xFF	; 255
 20a:	5f 4f       	sbci	r21, 0xFF	; 255
 20c:	6f 4f       	sbci	r22, 0xFF	; 255
 20e:	7f 4f       	sbci	r23, 0xFF	; 255
 210:	46 34       	cpi	r20, 0x46	; 70
 212:	51 05       	cpc	r21, r1
 214:	61 05       	cpc	r22, r1
 216:	71 05       	cpc	r23, r1
 218:	99 f7       	brne	.-26     	; 0x200 <javax_rtcbench_RTCBenchmark_void_test_native+0x12>
 21a:	bc 01       	movw	r22, r24
 21c:	84 e6       	ldi	r24, 0x64	; 100
 21e:	90 e0       	ldi	r25, 0x00	; 0
 220:	0c 94 92 00 	jmp	0x124	; 0x124 <rtcbenchmark_measure_native_performance>

00000224 <malloc>:
 224:	0f 93       	push	r16
 226:	1f 93       	push	r17
 228:	cf 93       	push	r28
 22a:	df 93       	push	r29
 22c:	82 30       	cpi	r24, 0x02	; 2
 22e:	91 05       	cpc	r25, r1
 230:	10 f4       	brcc	.+4      	; 0x236 <malloc+0x12>
 232:	82 e0       	ldi	r24, 0x02	; 2
 234:	90 e0       	ldi	r25, 0x00	; 0
 236:	e0 91 0d 01 	lds	r30, 0x010D	; 0x80010d <__flp>
 23a:	f0 91 0e 01 	lds	r31, 0x010E	; 0x80010e <__flp+0x1>
 23e:	20 e0       	ldi	r18, 0x00	; 0
 240:	30 e0       	ldi	r19, 0x00	; 0
 242:	a0 e0       	ldi	r26, 0x00	; 0
 244:	b0 e0       	ldi	r27, 0x00	; 0
 246:	30 97       	sbiw	r30, 0x00	; 0
 248:	19 f1       	breq	.+70     	; 0x290 <malloc+0x6c>
 24a:	40 81       	ld	r20, Z
 24c:	51 81       	ldd	r21, Z+1	; 0x01
 24e:	02 81       	ldd	r16, Z+2	; 0x02
 250:	13 81       	ldd	r17, Z+3	; 0x03
 252:	48 17       	cp	r20, r24
 254:	59 07       	cpc	r21, r25
 256:	c8 f0       	brcs	.+50     	; 0x28a <malloc+0x66>
 258:	84 17       	cp	r24, r20
 25a:	95 07       	cpc	r25, r21
 25c:	69 f4       	brne	.+26     	; 0x278 <malloc+0x54>
 25e:	10 97       	sbiw	r26, 0x00	; 0
 260:	31 f0       	breq	.+12     	; 0x26e <malloc+0x4a>
 262:	12 96       	adiw	r26, 0x02	; 2
 264:	0c 93       	st	X, r16
 266:	12 97       	sbiw	r26, 0x02	; 2
 268:	13 96       	adiw	r26, 0x03	; 3
 26a:	1c 93       	st	X, r17
 26c:	27 c0       	rjmp	.+78     	; 0x2bc <malloc+0x98>
 26e:	00 93 0d 01 	sts	0x010D, r16	; 0x80010d <__flp>
 272:	10 93 0e 01 	sts	0x010E, r17	; 0x80010e <__flp+0x1>
 276:	22 c0       	rjmp	.+68     	; 0x2bc <malloc+0x98>
 278:	21 15       	cp	r18, r1
 27a:	31 05       	cpc	r19, r1
 27c:	19 f0       	breq	.+6      	; 0x284 <malloc+0x60>
 27e:	42 17       	cp	r20, r18
 280:	53 07       	cpc	r21, r19
 282:	18 f4       	brcc	.+6      	; 0x28a <malloc+0x66>
 284:	9a 01       	movw	r18, r20
 286:	bd 01       	movw	r22, r26
 288:	ef 01       	movw	r28, r30
 28a:	df 01       	movw	r26, r30
 28c:	f8 01       	movw	r30, r16
 28e:	db cf       	rjmp	.-74     	; 0x246 <malloc+0x22>
 290:	21 15       	cp	r18, r1
 292:	31 05       	cpc	r19, r1
 294:	f9 f0       	breq	.+62     	; 0x2d4 <malloc+0xb0>
 296:	28 1b       	sub	r18, r24
 298:	39 0b       	sbc	r19, r25
 29a:	24 30       	cpi	r18, 0x04	; 4
 29c:	31 05       	cpc	r19, r1
 29e:	80 f4       	brcc	.+32     	; 0x2c0 <malloc+0x9c>
 2a0:	8a 81       	ldd	r24, Y+2	; 0x02
 2a2:	9b 81       	ldd	r25, Y+3	; 0x03
 2a4:	61 15       	cp	r22, r1
 2a6:	71 05       	cpc	r23, r1
 2a8:	21 f0       	breq	.+8      	; 0x2b2 <malloc+0x8e>
 2aa:	fb 01       	movw	r30, r22
 2ac:	93 83       	std	Z+3, r25	; 0x03
 2ae:	82 83       	std	Z+2, r24	; 0x02
 2b0:	04 c0       	rjmp	.+8      	; 0x2ba <malloc+0x96>
 2b2:	90 93 0e 01 	sts	0x010E, r25	; 0x80010e <__flp+0x1>
 2b6:	80 93 0d 01 	sts	0x010D, r24	; 0x80010d <__flp>
 2ba:	fe 01       	movw	r30, r28
 2bc:	32 96       	adiw	r30, 0x02	; 2
 2be:	44 c0       	rjmp	.+136    	; 0x348 <malloc+0x124>
 2c0:	fe 01       	movw	r30, r28
 2c2:	e2 0f       	add	r30, r18
 2c4:	f3 1f       	adc	r31, r19
 2c6:	81 93       	st	Z+, r24
 2c8:	91 93       	st	Z+, r25
 2ca:	22 50       	subi	r18, 0x02	; 2
 2cc:	31 09       	sbc	r19, r1
 2ce:	39 83       	std	Y+1, r19	; 0x01
 2d0:	28 83       	st	Y, r18
 2d2:	3a c0       	rjmp	.+116    	; 0x348 <malloc+0x124>
 2d4:	20 91 0b 01 	lds	r18, 0x010B	; 0x80010b <__brkval>
 2d8:	30 91 0c 01 	lds	r19, 0x010C	; 0x80010c <__brkval+0x1>
 2dc:	23 2b       	or	r18, r19
 2de:	41 f4       	brne	.+16     	; 0x2f0 <malloc+0xcc>
 2e0:	20 91 02 01 	lds	r18, 0x0102	; 0x800102 <__malloc_heap_start>
 2e4:	30 91 03 01 	lds	r19, 0x0103	; 0x800103 <__malloc_heap_start+0x1>
 2e8:	30 93 0c 01 	sts	0x010C, r19	; 0x80010c <__brkval+0x1>
 2ec:	20 93 0b 01 	sts	0x010B, r18	; 0x80010b <__brkval>
 2f0:	20 91 00 01 	lds	r18, 0x0100	; 0x800100 <__DATA_REGION_ORIGIN__>
 2f4:	30 91 01 01 	lds	r19, 0x0101	; 0x800101 <__DATA_REGION_ORIGIN__+0x1>
 2f8:	21 15       	cp	r18, r1
 2fa:	31 05       	cpc	r19, r1
 2fc:	41 f4       	brne	.+16     	; 0x30e <malloc+0xea>
 2fe:	2d b7       	in	r18, 0x3d	; 61
 300:	3e b7       	in	r19, 0x3e	; 62
 302:	40 91 04 01 	lds	r20, 0x0104	; 0x800104 <__malloc_margin>
 306:	50 91 05 01 	lds	r21, 0x0105	; 0x800105 <__malloc_margin+0x1>
 30a:	24 1b       	sub	r18, r20
 30c:	35 0b       	sbc	r19, r21
 30e:	e0 91 0b 01 	lds	r30, 0x010B	; 0x80010b <__brkval>
 312:	f0 91 0c 01 	lds	r31, 0x010C	; 0x80010c <__brkval+0x1>
 316:	e2 17       	cp	r30, r18
 318:	f3 07       	cpc	r31, r19
 31a:	a0 f4       	brcc	.+40     	; 0x344 <malloc+0x120>
 31c:	2e 1b       	sub	r18, r30
 31e:	3f 0b       	sbc	r19, r31
 320:	28 17       	cp	r18, r24
 322:	39 07       	cpc	r19, r25
 324:	78 f0       	brcs	.+30     	; 0x344 <malloc+0x120>
 326:	ac 01       	movw	r20, r24
 328:	4e 5f       	subi	r20, 0xFE	; 254
 32a:	5f 4f       	sbci	r21, 0xFF	; 255
 32c:	24 17       	cp	r18, r20
 32e:	35 07       	cpc	r19, r21
 330:	48 f0       	brcs	.+18     	; 0x344 <malloc+0x120>
 332:	4e 0f       	add	r20, r30
 334:	5f 1f       	adc	r21, r31
 336:	50 93 0c 01 	sts	0x010C, r21	; 0x80010c <__brkval+0x1>
 33a:	40 93 0b 01 	sts	0x010B, r20	; 0x80010b <__brkval>
 33e:	81 93       	st	Z+, r24
 340:	91 93       	st	Z+, r25
 342:	02 c0       	rjmp	.+4      	; 0x348 <malloc+0x124>
 344:	e0 e0       	ldi	r30, 0x00	; 0
 346:	f0 e0       	ldi	r31, 0x00	; 0
 348:	cf 01       	movw	r24, r30
 34a:	df 91       	pop	r29
 34c:	cf 91       	pop	r28
 34e:	1f 91       	pop	r17
 350:	0f 91       	pop	r16
 352:	08 95       	ret

00000354 <free>:
 354:	cf 93       	push	r28
 356:	df 93       	push	r29
 358:	00 97       	sbiw	r24, 0x00	; 0
 35a:	09 f4       	brne	.+2      	; 0x35e <free+0xa>
 35c:	81 c0       	rjmp	.+258    	; 0x460 <__LOCK_REGION_LENGTH__+0x60>
 35e:	fc 01       	movw	r30, r24
 360:	32 97       	sbiw	r30, 0x02	; 2
 362:	13 82       	std	Z+3, r1	; 0x03
 364:	12 82       	std	Z+2, r1	; 0x02
 366:	a0 91 0d 01 	lds	r26, 0x010D	; 0x80010d <__flp>
 36a:	b0 91 0e 01 	lds	r27, 0x010E	; 0x80010e <__flp+0x1>
 36e:	10 97       	sbiw	r26, 0x00	; 0
 370:	81 f4       	brne	.+32     	; 0x392 <free+0x3e>
 372:	20 81       	ld	r18, Z
 374:	31 81       	ldd	r19, Z+1	; 0x01
 376:	82 0f       	add	r24, r18
 378:	93 1f       	adc	r25, r19
 37a:	20 91 0b 01 	lds	r18, 0x010B	; 0x80010b <__brkval>
 37e:	30 91 0c 01 	lds	r19, 0x010C	; 0x80010c <__brkval+0x1>
 382:	28 17       	cp	r18, r24
 384:	39 07       	cpc	r19, r25
 386:	51 f5       	brne	.+84     	; 0x3dc <free+0x88>
 388:	f0 93 0c 01 	sts	0x010C, r31	; 0x80010c <__brkval+0x1>
 38c:	e0 93 0b 01 	sts	0x010B, r30	; 0x80010b <__brkval>
 390:	67 c0       	rjmp	.+206    	; 0x460 <__LOCK_REGION_LENGTH__+0x60>
 392:	ed 01       	movw	r28, r26
 394:	20 e0       	ldi	r18, 0x00	; 0
 396:	30 e0       	ldi	r19, 0x00	; 0
 398:	ce 17       	cp	r28, r30
 39a:	df 07       	cpc	r29, r31
 39c:	40 f4       	brcc	.+16     	; 0x3ae <free+0x5a>
 39e:	4a 81       	ldd	r20, Y+2	; 0x02
 3a0:	5b 81       	ldd	r21, Y+3	; 0x03
 3a2:	9e 01       	movw	r18, r28
 3a4:	41 15       	cp	r20, r1
 3a6:	51 05       	cpc	r21, r1
 3a8:	f1 f0       	breq	.+60     	; 0x3e6 <free+0x92>
 3aa:	ea 01       	movw	r28, r20
 3ac:	f5 cf       	rjmp	.-22     	; 0x398 <free+0x44>
 3ae:	d3 83       	std	Z+3, r29	; 0x03
 3b0:	c2 83       	std	Z+2, r28	; 0x02
 3b2:	40 81       	ld	r20, Z
 3b4:	51 81       	ldd	r21, Z+1	; 0x01
 3b6:	84 0f       	add	r24, r20
 3b8:	95 1f       	adc	r25, r21
 3ba:	c8 17       	cp	r28, r24
 3bc:	d9 07       	cpc	r29, r25
 3be:	59 f4       	brne	.+22     	; 0x3d6 <free+0x82>
 3c0:	88 81       	ld	r24, Y
 3c2:	99 81       	ldd	r25, Y+1	; 0x01
 3c4:	84 0f       	add	r24, r20
 3c6:	95 1f       	adc	r25, r21
 3c8:	02 96       	adiw	r24, 0x02	; 2
 3ca:	91 83       	std	Z+1, r25	; 0x01
 3cc:	80 83       	st	Z, r24
 3ce:	8a 81       	ldd	r24, Y+2	; 0x02
 3d0:	9b 81       	ldd	r25, Y+3	; 0x03
 3d2:	93 83       	std	Z+3, r25	; 0x03
 3d4:	82 83       	std	Z+2, r24	; 0x02
 3d6:	21 15       	cp	r18, r1
 3d8:	31 05       	cpc	r19, r1
 3da:	29 f4       	brne	.+10     	; 0x3e6 <free+0x92>
 3dc:	f0 93 0e 01 	sts	0x010E, r31	; 0x80010e <__flp+0x1>
 3e0:	e0 93 0d 01 	sts	0x010D, r30	; 0x80010d <__flp>
 3e4:	3d c0       	rjmp	.+122    	; 0x460 <__LOCK_REGION_LENGTH__+0x60>
 3e6:	e9 01       	movw	r28, r18
 3e8:	fb 83       	std	Y+3, r31	; 0x03
 3ea:	ea 83       	std	Y+2, r30	; 0x02
 3ec:	49 91       	ld	r20, Y+
 3ee:	59 91       	ld	r21, Y+
 3f0:	c4 0f       	add	r28, r20
 3f2:	d5 1f       	adc	r29, r21
 3f4:	ec 17       	cp	r30, r28
 3f6:	fd 07       	cpc	r31, r29
 3f8:	61 f4       	brne	.+24     	; 0x412 <__LOCK_REGION_LENGTH__+0x12>
 3fa:	80 81       	ld	r24, Z
 3fc:	91 81       	ldd	r25, Z+1	; 0x01
 3fe:	84 0f       	add	r24, r20
 400:	95 1f       	adc	r25, r21
 402:	02 96       	adiw	r24, 0x02	; 2
 404:	e9 01       	movw	r28, r18
 406:	99 83       	std	Y+1, r25	; 0x01
 408:	88 83       	st	Y, r24
 40a:	82 81       	ldd	r24, Z+2	; 0x02
 40c:	93 81       	ldd	r25, Z+3	; 0x03
 40e:	9b 83       	std	Y+3, r25	; 0x03
 410:	8a 83       	std	Y+2, r24	; 0x02
 412:	e0 e0       	ldi	r30, 0x00	; 0
 414:	f0 e0       	ldi	r31, 0x00	; 0
 416:	12 96       	adiw	r26, 0x02	; 2
 418:	8d 91       	ld	r24, X+
 41a:	9c 91       	ld	r25, X
 41c:	13 97       	sbiw	r26, 0x03	; 3
 41e:	00 97       	sbiw	r24, 0x00	; 0
 420:	19 f0       	breq	.+6      	; 0x428 <__LOCK_REGION_LENGTH__+0x28>
 422:	fd 01       	movw	r30, r26
 424:	dc 01       	movw	r26, r24
 426:	f7 cf       	rjmp	.-18     	; 0x416 <__LOCK_REGION_LENGTH__+0x16>
 428:	8d 91       	ld	r24, X+
 42a:	9c 91       	ld	r25, X
 42c:	11 97       	sbiw	r26, 0x01	; 1
 42e:	9d 01       	movw	r18, r26
 430:	2e 5f       	subi	r18, 0xFE	; 254
 432:	3f 4f       	sbci	r19, 0xFF	; 255
 434:	82 0f       	add	r24, r18
 436:	93 1f       	adc	r25, r19
 438:	20 91 0b 01 	lds	r18, 0x010B	; 0x80010b <__brkval>
 43c:	30 91 0c 01 	lds	r19, 0x010C	; 0x80010c <__brkval+0x1>
 440:	28 17       	cp	r18, r24
 442:	39 07       	cpc	r19, r25
 444:	69 f4       	brne	.+26     	; 0x460 <__LOCK_REGION_LENGTH__+0x60>
 446:	30 97       	sbiw	r30, 0x00	; 0
 448:	29 f4       	brne	.+10     	; 0x454 <__LOCK_REGION_LENGTH__+0x54>
 44a:	10 92 0e 01 	sts	0x010E, r1	; 0x80010e <__flp+0x1>
 44e:	10 92 0d 01 	sts	0x010D, r1	; 0x80010d <__flp>
 452:	02 c0       	rjmp	.+4      	; 0x458 <__LOCK_REGION_LENGTH__+0x58>
 454:	13 82       	std	Z+3, r1	; 0x03
 456:	12 82       	std	Z+2, r1	; 0x02
 458:	b0 93 0c 01 	sts	0x010C, r27	; 0x80010c <__brkval+0x1>
 45c:	a0 93 0b 01 	sts	0x010B, r26	; 0x80010b <__brkval>
 460:	df 91       	pop	r29
 462:	cf 91       	pop	r28
 464:	08 95       	ret

00000466 <_exit>:
 466:	f8 94       	cli

00000468 <__stop_program>:
 468:	ff cf       	rjmp	.-2      	; 0x468 <__stop_program>

Disassembly of section .bss:

00800106 <__bss_start>:
  800106:	00 00       	nop
  800108:	00 00       	nop
	...

0080010b <__brkval>:
	...

0080010d <__flp>:
	...

Disassembly of section .comment:

00000000 <__heap_start-0x80010f>:
   0:	47 43       	sbci	r20, 0x37	; 55
   2:	43 3a       	cpi	r20, 0xA3	; 163
   4:	20 28       	or	r2, r0
   6:	47 4e       	sbci	r20, 0xE7	; 231
   8:	55 29       	or	r21, r5
   a:	20 35       	cpi	r18, 0x50	; 80
   c:	2e 34       	cpi	r18, 0x4E	; 78
   e:	2e 30       	cpi	r18, 0x0E	; 14
	...

Disassembly of section .note.gnu.avr.deviceinfo:

00000000 <.note.gnu.avr.deviceinfo>:
   0:	04 00       	.word	0x0004	; ????
   2:	00 00       	nop
   4:	2c 00       	.word	0x002c	; ????
   6:	00 00       	nop
   8:	01 00       	.word	0x0001	; ????
   a:	00 00       	nop
   c:	41 56       	subi	r20, 0x61	; 97
   e:	52 00       	.word	0x0052	; ????
  10:	00 00       	nop
  12:	00 00       	nop
  14:	00 00       	nop
  16:	02 00       	.word	0x0002	; ????
  18:	00 01       	movw	r0, r0
  1a:	00 00       	nop
  1c:	00 10       	cpse	r0, r0
  1e:	00 00       	nop
  20:	00 00       	nop
  22:	00 00       	nop
  24:	00 10       	cpse	r0, r0
  26:	00 00       	nop
  28:	08 00       	.word	0x0008	; ????
  2a:	00 00       	nop
  2c:	01 00       	.word	0x0001	; ????
  2e:	00 00       	nop
  30:	00 61       	ori	r16, 0x10	; 16
  32:	74 6d       	ori	r23, 0xD4	; 212
  34:	65 67       	ori	r22, 0x75	; 117
  36:	61 31       	cpi	r22, 0x11	; 17
  38:	32 38       	cpi	r19, 0x82	; 130
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	5c 00       	.word	0x005c	; ????
   2:	00 00       	nop
   4:	02 00       	.word	0x0002	; ????
   6:	80 07       	cpc	r24, r16
   8:	00 00       	nop
   a:	04 00       	.word	0x0004	; ????
	...
  28:	ce 00       	.word	0x00ce	; ????
  2a:	00 00       	nop
  2c:	28 00       	.word	0x0028	; ????
  2e:	00 00       	nop
  30:	f6 00       	.word	0x00f6	; ????
  32:	00 00       	nop
  34:	24 00       	.word	0x0024	; ????
	...
  4e:	00 00       	nop
  50:	1a 01       	movw	r2, r20
  52:	00 00       	nop
  54:	0a 00       	.word	0x000a	; ????
	...
  5e:	00 00       	nop
  60:	24 00       	.word	0x0024	; ????
  62:	00 00       	nop
  64:	02 00       	.word	0x0002	; ????
  66:	0d 0e       	add	r0, r29
  68:	00 00       	nop
  6a:	04 00       	.word	0x0004	; ????
  6c:	00 00       	nop
  6e:	00 00       	nop
  70:	24 01       	movw	r4, r8
  72:	00 00       	nop
  74:	ca 00       	.word	0x00ca	; ????
  76:	00 00       	nop
  78:	ee 01       	movw	r28, r28
  7a:	00 00       	nop
  7c:	36 00       	.word	0x0036	; ????
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	7c 07       	cpc	r23, r28
   2:	00 00       	nop
   4:	02 00       	.word	0x0002	; ????
   6:	00 00       	nop
   8:	00 00       	nop
   a:	04 01       	movw	r0, r8
	...
  14:	02 0f       	add	r16, r18
  16:	00 00       	nop
  18:	00 01       	movw	r0, r0
  1a:	08 03       	fmul	r16, r16
  1c:	17 00       	.word	0x0017	; ????
  1e:	00 00       	nop
  20:	02 07       	cpc	r16, r18
  22:	04 14       	cp	r0, r4
  24:	00 00       	nop
  26:	00 05       	cpc	r16, r0
  28:	1b 00       	.word	0x001b	; ????
  2a:	00 00       	nop
  2c:	ff 0f       	add	r31, r31
  2e:	00 06       	cpc	r0, r16
  30:	20 00       	.word	0x0020	; ????
  32:	00 00       	nop
  34:	00 00       	nop
  36:	22 00       	.word	0x0022	; ????
  38:	00 00       	nop
  3a:	01 05       	cpc	r16, r1
  3c:	03 00       	.word	0x0003	; ????
  3e:	00 81       	ld	r16, Z
  40:	00 07       	cpc	r16, r16
  42:	29 00       	.word	0x0029	; ????
  44:	00 00       	nop
  46:	00 00       	nop
  48:	14 00       	.word	0x0014	; ????
  4a:	00 00       	nop
  4c:	01 05       	cpc	r16, r1
  4e:	03 40       	sbci	r16, 0x03	; 3
  50:	00 80       	ld	r0, Z
  52:	00 08       	sbc	r0, r0
  54:	2f 00       	.word	0x002f	; ????
  56:	00 00       	nop
  58:	00 00       	nop
  5a:	14 00       	.word	0x0014	; ????
  5c:	00 00       	nop
  5e:	01 05       	cpc	r16, r1
  60:	03 28       	or	r0, r3
  62:	00 80       	ld	r0, Z
  64:	00 09       	sbc	r16, r0
  66:	34 00       	.word	0x0034	; ????
  68:	00 00       	nop
  6a:	00 00       	nop
  6c:	14 00       	.word	0x0014	; ????
  6e:	00 00       	nop
  70:	01 05       	cpc	r16, r1
  72:	03 2f       	mov	r16, r19
  74:	00 80       	ld	r0, Z
  76:	00 0a       	sbc	r0, r16
  78:	39 00       	.word	0x0039	; ????
  7a:	00 00       	nop
  7c:	00 00       	nop
  7e:	14 00       	.word	0x0014	; ????
  80:	00 00       	nop
  82:	01 05       	cpc	r16, r1
  84:	03 2e       	mov	r0, r19
  86:	00 80       	ld	r0, Z
  88:	00 0b       	sbc	r16, r16
  8a:	3e 00       	.word	0x003e	; ????
  8c:	00 00       	nop
  8e:	00 00       	nop
  90:	14 00       	.word	0x0014	; ????
  92:	00 00       	nop
  94:	01 05       	cpc	r16, r1
  96:	03 2d       	mov	r16, r3
  98:	00 80       	ld	r0, Z
  9a:	00 0c       	add	r0, r0
  9c:	43 00       	.word	0x0043	; ????
  9e:	00 00       	nop
  a0:	00 00       	nop
  a2:	14 00       	.word	0x0014	; ????
  a4:	00 00       	nop
  a6:	01 05       	cpc	r16, r1
  a8:	03 70       	andi	r16, 0x03	; 3
  aa:	00 80       	ld	r0, Z
  ac:	00 0d       	add	r16, r0
  ae:	48 00       	.word	0x0048	; ????
  b0:	00 00       	nop
  b2:	00 00       	nop
  b4:	14 00       	.word	0x0014	; ????
  b6:	00 00       	nop
  b8:	01 05       	cpc	r16, r1
  ba:	03 74       	andi	r16, 0x43	; 67
  bc:	00 80       	ld	r0, Z
  be:	00 0e       	add	r0, r16
  c0:	4d 00       	.word	0x004d	; ????
  c2:	00 00       	nop
  c4:	00 00       	nop
  c6:	14 00       	.word	0x0014	; ????
  c8:	00 00       	nop
  ca:	01 05       	cpc	r16, r1
  cc:	03 71       	andi	r16, 0x13	; 19
  ce:	00 80       	ld	r0, Z
  d0:	00 0f       	add	r16, r16
  d2:	52 00       	.word	0x0052	; ????
  d4:	00 00       	nop
  d6:	00 00       	nop
  d8:	14 00       	.word	0x0014	; ????
  da:	00 00       	nop
  dc:	01 05       	cpc	r16, r1
  de:	03 73       	andi	r16, 0x33	; 51
  e0:	00 80       	ld	r0, Z
  e2:	00 10       	cpse	r0, r0
  e4:	57 00       	.word	0x0057	; ????
  e6:	00 00       	nop
  e8:	00 00       	nop
  ea:	14 00       	.word	0x0014	; ????
  ec:	00 00       	nop
  ee:	01 05       	cpc	r16, r1
  f0:	03 72       	andi	r16, 0x23	; 35
  f2:	00 80       	ld	r0, Z
  f4:	00 11       	cpse	r16, r0
  f6:	5c 00       	.word	0x005c	; ????
  f8:	00 00       	nop
  fa:	00 00       	nop
  fc:	14 00       	.word	0x0014	; ????
  fe:	00 00       	nop
 100:	01 05       	cpc	r16, r1
 102:	03 2c       	mov	r0, r3
 104:	00 80       	ld	r0, Z
 106:	00 12       	cpse	r0, r16
 108:	61 00       	.word	0x0061	; ????
 10a:	00 00       	nop
 10c:	00 00       	nop
 10e:	14 00       	.word	0x0014	; ????
 110:	00 00       	nop
 112:	01 05       	cpc	r16, r1
 114:	03 2b       	or	r16, r19
 116:	00 80       	ld	r0, Z
 118:	00 13       	cpse	r16, r16
 11a:	68 00       	.word	0x0068	; ????
 11c:	00 00       	nop
 11e:	00 00       	nop
 120:	14 00       	.word	0x0014	; ????
 122:	00 00       	nop
 124:	01 05       	cpc	r16, r1
 126:	03 2a       	or	r0, r19
 128:	00 80       	ld	r0, Z
 12a:	00 14       	cp	r0, r0
 12c:	6f 00       	.word	0x006f	; ????
 12e:	00 00       	nop
 130:	00 00       	nop
 132:	14 00       	.word	0x0014	; ????
 134:	00 00       	nop
 136:	01 05       	cpc	r16, r1
 138:	03 95       	inc	r16
 13a:	00 80       	ld	r0, Z
 13c:	00 15       	cp	r16, r0
 13e:	76 00       	.word	0x0076	; ????
 140:	00 00       	nop
 142:	00 00       	nop
 144:	14 00       	.word	0x0014	; ????
 146:	00 00       	nop
 148:	01 05       	cpc	r16, r1
 14a:	03 90       	.word	0x9003	; ????
 14c:	00 80       	ld	r0, Z
 14e:	00 16       	cp	r0, r16
 150:	7d 00       	.word	0x007d	; ????
 152:	00 00       	nop
 154:	00 00       	nop
 156:	14 00       	.word	0x0014	; ????
 158:	00 00       	nop
 15a:	01 05       	cpc	r16, r1
 15c:	03 29       	or	r16, r3
 15e:	00 80       	ld	r0, Z
 160:	00 17       	cp	r16, r16
 162:	84 00       	.word	0x0084	; ????
 164:	00 00       	nop
 166:	00 00       	nop
 168:	14 00       	.word	0x0014	; ????
 16a:	00 00       	nop
 16c:	01 05       	cpc	r16, r1
 16e:	03 9c       	mul	r0, r3
 170:	00 80       	ld	r0, Z
 172:	00 18       	sub	r0, r0
 174:	89 00       	.word	0x0089	; ????
 176:	00 00       	nop
 178:	00 00       	nop
 17a:	14 00       	.word	0x0014	; ????
 17c:	00 00       	nop
 17e:	01 05       	cpc	r16, r1
 180:	03 9b       	sbis	0x00, 3	; 0
 182:	00 80       	ld	r0, Z
 184:	00 19       	sub	r16, r0
 186:	90 00       	.word	0x0090	; ????
 188:	00 00       	nop
 18a:	00 00       	nop
 18c:	14 00       	.word	0x0014	; ????
 18e:	00 00       	nop
 190:	01 05       	cpc	r16, r1
 192:	03 9a       	sbi	0x00, 3	; 0
 194:	00 80       	ld	r0, Z
 196:	00 1a       	sub	r0, r16
 198:	97 00       	.word	0x0097	; ????
 19a:	00 00       	nop
 19c:	00 00       	nop
 19e:	14 00       	.word	0x0014	; ????
 1a0:	00 00       	nop
 1a2:	01 05       	cpc	r16, r1
 1a4:	03 9d       	mul	r16, r3
 1a6:	00 80       	ld	r0, Z
 1a8:	00 1b       	sub	r16, r16
 1aa:	9e 00       	.word	0x009e	; ????
 1ac:	00 00       	nop
 1ae:	00 00       	nop
 1b0:	14 00       	.word	0x0014	; ????
 1b2:	00 00       	nop
 1b4:	01 05       	cpc	r16, r1
 1b6:	03 98       	cbi	0x00, 3	; 0
 1b8:	00 80       	ld	r0, Z
 1ba:	00 1c       	adc	r0, r0
 1bc:	a5 00       	.word	0x00a5	; ????
 1be:	00 00       	nop
 1c0:	00 00       	nop
 1c2:	14 00       	.word	0x0014	; ????
 1c4:	00 00       	nop
 1c6:	01 05       	cpc	r16, r1
 1c8:	03 99       	sbic	0x00, 3	; 0
 1ca:	00 80       	ld	r0, Z
 1cc:	00 1d       	adc	r16, r0
 1ce:	ac 00       	.word	0x00ac	; ????
 1d0:	00 00       	nop
 1d2:	00 00       	nop
 1d4:	14 00       	.word	0x0014	; ????
 1d6:	00 00       	nop
 1d8:	01 05       	cpc	r16, r1
 1da:	03 5f       	subi	r16, 0xF3	; 243
 1dc:	00 80       	ld	r0, Z
 1de:	00 1e       	adc	r0, r16
 1e0:	b1 00       	.word	0x00b1	; ????
 1e2:	00 00       	nop
 1e4:	00 00       	nop
 1e6:	1b 00       	.word	0x001b	; ????
 1e8:	00 00       	nop
 1ea:	01 05       	cpc	r16, r1
 1ec:	03 5d       	subi	r16, 0xD3	; 211
 1ee:	00 80       	ld	r0, Z
 1f0:	00 1f       	adc	r16, r16
 1f2:	b4 00       	.word	0x00b4	; ????
 1f4:	00 00       	nop
 1f6:	00 00       	nop
 1f8:	14 00       	.word	0x0014	; ????
 1fa:	00 00       	nop
 1fc:	01 05       	cpc	r16, r1
 1fe:	03 55       	subi	r16, 0x53	; 83
 200:	00 80       	ld	r0, Z
 202:	00 20       	and	r0, r0
 204:	ba 00       	.word	0x00ba	; ????
 206:	00 00       	nop
 208:	00 00       	nop
 20a:	14 00       	.word	0x0014	; ????
 20c:	00 00       	nop
 20e:	01 05       	cpc	r16, r1
 210:	03 54       	subi	r16, 0x43	; 67
 212:	00 80       	ld	r0, Z
 214:	00 21       	and	r16, r0
 216:	c1 00       	.word	0x00c1	; ????
 218:	00 00       	nop
 21a:	00 00       	nop
 21c:	14 00       	.word	0x0014	; ????
 21e:	00 00       	nop
 220:	01 05       	cpc	r16, r1
 222:	03 6d       	ori	r16, 0xD3	; 211
 224:	00 80       	ld	r0, Z
 226:	00 22       	and	r0, r16
 228:	c7 00       	.word	0x00c7	; ????
 22a:	00 00       	nop
 22c:	00 00       	nop
 22e:	14 00       	.word	0x0014	; ????
 230:	00 00       	nop
 232:	01 05       	cpc	r16, r1
 234:	03 6c       	ori	r16, 0xC3	; 195
 236:	00 80       	ld	r0, Z
 238:	00 23       	and	r16, r16
 23a:	cd 00       	.word	0x00cd	; ????
 23c:	00 00       	nop
 23e:	00 00       	nop
 240:	14 00       	.word	0x0014	; ????
 242:	00 00       	nop
 244:	01 05       	cpc	r16, r1
 246:	03 6f       	ori	r16, 0xF3	; 243
 248:	00 80       	ld	r0, Z
 24a:	00 24       	eor	r0, r0
 24c:	d4 00       	.word	0x00d4	; ????
 24e:	00 00       	nop
 250:	00 00       	nop
 252:	14 00       	.word	0x0014	; ????
 254:	00 00       	nop
 256:	01 05       	cpc	r16, r1
 258:	03 5c       	subi	r16, 0xC3	; 195
 25a:	00 80       	ld	r0, Z
 25c:	00 25       	eor	r16, r0
 25e:	d9 00       	.word	0x00d9	; ????
 260:	00 00       	nop
 262:	00 00       	nop
 264:	14 00       	.word	0x0014	; ????
 266:	00 00       	nop
 268:	01 05       	cpc	r16, r1
 26a:	03 5b       	subi	r16, 0xB3	; 179
 26c:	00 80       	ld	r0, Z
 26e:	00 26       	eor	r0, r16
 270:	df 00       	.word	0x00df	; ????
 272:	00 00       	nop
 274:	00 00       	nop
 276:	14 00       	.word	0x0014	; ????
 278:	00 00       	nop
 27a:	01 05       	cpc	r16, r1
 27c:	03 68       	ori	r16, 0x83	; 131
 27e:	00 80       	ld	r0, Z
 280:	00 27       	eor	r16, r16
 282:	e6 00       	.word	0x00e6	; ????
 284:	00 00       	nop
 286:	00 00       	nop
 288:	14 00       	.word	0x0014	; ????
 28a:	00 00       	nop
 28c:	01 05       	cpc	r16, r1
 28e:	03 42       	sbci	r16, 0x23	; 35
 290:	00 80       	ld	r0, Z
 292:	00 28       	or	r0, r0
 294:	eb 00       	.word	0x00eb	; ????
 296:	00 00       	nop
 298:	00 00       	nop
 29a:	14 00       	.word	0x0014	; ????
 29c:	00 00       	nop
 29e:	01 05       	cpc	r16, r1
 2a0:	03 54       	subi	r16, 0x43	; 67
 2a2:	00 80       	ld	r0, Z
 2a4:	00 29       	or	r16, r0
 2a6:	f2 00       	.word	0x00f2	; ????
 2a8:	00 00       	nop
 2aa:	00 00       	nop
 2ac:	14 00       	.word	0x0014	; ????
 2ae:	00 00       	nop
 2b0:	01 05       	cpc	r16, r1
 2b2:	03 40       	sbci	r16, 0x03	; 3
 2b4:	00 80       	ld	r0, Z
 2b6:	00 2a       	or	r0, r16
 2b8:	f8 00       	.word	0x00f8	; ????
 2ba:	00 00       	nop
 2bc:	00 00       	nop
 2be:	14 00       	.word	0x0014	; ????
 2c0:	00 00       	nop
 2c2:	01 05       	cpc	r16, r1
 2c4:	03 6a       	ori	r16, 0xA3	; 163
 2c6:	00 80       	ld	r0, Z
 2c8:	00 2b       	or	r16, r16
 2ca:	fe 00       	.word	0x00fe	; ????
 2cc:	00 00       	nop
 2ce:	00 00       	nop
 2d0:	14 00       	.word	0x0014	; ????
 2d2:	00 00       	nop
 2d4:	01 05       	cpc	r16, r1
 2d6:	03 5a       	subi	r16, 0xA3	; 163
 2d8:	00 80       	ld	r0, Z
 2da:	00 2c       	mov	r0, r0
 2dc:	04 01       	movw	r0, r8
 2de:	00 00       	nop
 2e0:	00 00       	nop
 2e2:	14 00       	.word	0x0014	; ????
 2e4:	00 00       	nop
 2e6:	01 05       	cpc	r16, r1
 2e8:	03 59       	subi	r16, 0x93	; 147
 2ea:	00 80       	ld	r0, Z
 2ec:	00 2d       	mov	r16, r0
 2ee:	0a 01       	movw	r0, r20
 2f0:	00 00       	nop
 2f2:	00 00       	nop
 2f4:	14 00       	.word	0x0014	; ????
 2f6:	00 00       	nop
 2f8:	01 05       	cpc	r16, r1
 2fa:	03 58       	subi	r16, 0x83	; 131
 2fc:	00 80       	ld	r0, Z
 2fe:	00 2e       	mov	r0, r16
 300:	0f 01       	movw	r0, r30
 302:	00 00       	nop
 304:	00 00       	nop
 306:	1b 00       	.word	0x001b	; ????
 308:	00 00       	nop
 30a:	01 05       	cpc	r16, r1
 30c:	03 3e       	cpi	r16, 0xE3	; 227
 30e:	00 80       	ld	r0, Z
 310:	00 2f       	mov	r16, r16
 312:	14 01       	movw	r2, r8
 314:	00 00       	nop
 316:	00 00       	nop
 318:	14 00       	.word	0x0014	; ????
 31a:	00 00       	nop
 31c:	01 05       	cpc	r16, r1
 31e:	03 3d       	cpi	r16, 0xD3	; 211
 320:	00 80       	ld	r0, Z
 322:	00 30       	cpi	r16, 0x00	; 0
 324:	19 01       	movw	r2, r18
 326:	00 00       	nop
 328:	00 00       	nop
 32a:	14 00       	.word	0x0014	; ????
 32c:	00 00       	nop
 32e:	01 05       	cpc	r16, r1
 330:	03 3c       	cpi	r16, 0xC3	; 195
 332:	00 80       	ld	r0, Z
 334:	00 31       	cpi	r16, 0x10	; 16
 336:	1e 01       	movw	r2, r28
 338:	00 00       	nop
 33a:	00 00       	nop
 33c:	14 00       	.word	0x0014	; ????
 33e:	00 00       	nop
 340:	01 05       	cpc	r16, r1
 342:	03 3b       	cpi	r16, 0xB3	; 179
 344:	00 80       	ld	r0, Z
 346:	00 32       	cpi	r16, 0x20	; 32
 348:	24 01       	movw	r4, r8
 34a:	00 00       	nop
 34c:	00 00       	nop
 34e:	14 00       	.word	0x0014	; ????
 350:	00 00       	nop
 352:	01 05       	cpc	r16, r1
 354:	03 3a       	cpi	r16, 0xA3	; 163
 356:	00 80       	ld	r0, Z
 358:	00 33       	cpi	r16, 0x30	; 48
 35a:	29 01       	movw	r4, r18
 35c:	00 00       	nop
 35e:	00 00       	nop
 360:	14 00       	.word	0x0014	; ????
 362:	00 00       	nop
 364:	01 05       	cpc	r16, r1
 366:	03 39       	cpi	r16, 0x93	; 147
 368:	00 80       	ld	r0, Z
 36a:	00 34       	cpi	r16, 0x40	; 64
 36c:	2e 01       	movw	r4, r28
 36e:	00 00       	nop
 370:	00 00       	nop
 372:	14 00       	.word	0x0014	; ????
 374:	00 00       	nop
 376:	01 05       	cpc	r16, r1
 378:	03 38       	cpi	r16, 0x83	; 131
 37a:	00 80       	ld	r0, Z
 37c:	00 35       	cpi	r16, 0x50	; 80
 37e:	34 01       	movw	r6, r8
 380:	00 00       	nop
 382:	00 00       	nop
 384:	14 00       	.word	0x0014	; ????
 386:	00 00       	nop
 388:	01 05       	cpc	r16, r1
 38a:	03 37       	cpi	r16, 0x73	; 115
 38c:	00 80       	ld	r0, Z
 38e:	00 36       	cpi	r16, 0x60	; 96
 390:	39 01       	movw	r6, r18
 392:	00 00       	nop
 394:	00 00       	nop
 396:	14 00       	.word	0x0014	; ????
 398:	00 00       	nop
 39a:	01 05       	cpc	r16, r1
 39c:	03 36       	cpi	r16, 0x63	; 99
 39e:	00 80       	ld	r0, Z
 3a0:	00 37       	cpi	r16, 0x70	; 112
 3a2:	3e 01       	movw	r6, r28
 3a4:	00 00       	nop
 3a6:	00 00       	nop
 3a8:	14 00       	.word	0x0014	; ????
 3aa:	00 00       	nop
 3ac:	01 05       	cpc	r16, r1
 3ae:	03 35       	cpi	r16, 0x53	; 83
 3b0:	00 80       	ld	r0, Z
 3b2:	00 38       	cpi	r16, 0x80	; 128
 3b4:	44 01       	movw	r8, r8
 3b6:	00 00       	nop
 3b8:	00 00       	nop
 3ba:	14 00       	.word	0x0014	; ????
 3bc:	00 00       	nop
 3be:	01 05       	cpc	r16, r1
 3c0:	03 34       	cpi	r16, 0x43	; 67
 3c2:	00 80       	ld	r0, Z
 3c4:	00 39       	cpi	r16, 0x90	; 144
 3c6:	49 01       	movw	r8, r18
 3c8:	00 00       	nop
 3ca:	00 00       	nop
 3cc:	14 00       	.word	0x0014	; ????
 3ce:	00 00       	nop
 3d0:	01 05       	cpc	r16, r1
 3d2:	03 33       	cpi	r16, 0x33	; 51
 3d4:	00 80       	ld	r0, Z
 3d6:	00 3a       	cpi	r16, 0xA0	; 160
 3d8:	4e 01       	movw	r8, r28
 3da:	00 00       	nop
 3dc:	00 00       	nop
 3de:	14 00       	.word	0x0014	; ????
 3e0:	00 00       	nop
 3e2:	01 05       	cpc	r16, r1
 3e4:	03 32       	cpi	r16, 0x23	; 35
 3e6:	00 80       	ld	r0, Z
 3e8:	00 3b       	cpi	r16, 0xB0	; 176
 3ea:	54 01       	movw	r10, r8
 3ec:	00 00       	nop
 3ee:	00 00       	nop
 3f0:	14 00       	.word	0x0014	; ????
 3f2:	00 00       	nop
 3f4:	01 05       	cpc	r16, r1
 3f6:	03 31       	cpi	r16, 0x13	; 19
 3f8:	00 80       	ld	r0, Z
 3fa:	00 3c       	cpi	r16, 0xC0	; 192
 3fc:	59 01       	movw	r10, r18
 3fe:	00 00       	nop
 400:	00 00       	nop
 402:	14 00       	.word	0x0014	; ????
 404:	00 00       	nop
 406:	01 05       	cpc	r16, r1
 408:	03 30       	cpi	r16, 0x03	; 3
 40a:	00 80       	ld	r0, Z
 40c:	00 3d       	cpi	r16, 0xD0	; 208
 40e:	5e 01       	movw	r10, r28
 410:	00 00       	nop
 412:	00 00       	nop
 414:	14 00       	.word	0x0014	; ????
 416:	00 00       	nop
 418:	01 05       	cpc	r16, r1
 41a:	03 23       	and	r16, r19
 41c:	00 80       	ld	r0, Z
 41e:	00 3e       	cpi	r16, 0xE0	; 224
 420:	64 01       	movw	r12, r8
 422:	00 00       	nop
 424:	00 00       	nop
 426:	14 00       	.word	0x0014	; ????
 428:	00 00       	nop
 42a:	01 05       	cpc	r16, r1
 42c:	03 22       	and	r0, r19
 42e:	00 80       	ld	r0, Z
 430:	00 3f       	cpi	r16, 0xF0	; 240
 432:	69 01       	movw	r12, r18
 434:	00 00       	nop
 436:	00 00       	nop
 438:	14 00       	.word	0x0014	; ????
 43a:	00 00       	nop
 43c:	01 05       	cpc	r16, r1
 43e:	03 21       	and	r16, r3
 440:	00 80       	ld	r0, Z
 442:	00 40       	sbci	r16, 0x00	; 0
 444:	6e 01       	movw	r12, r28
 446:	00 00       	nop
 448:	00 00       	nop
 44a:	14 00       	.word	0x0014	; ????
 44c:	00 00       	nop
 44e:	01 05       	cpc	r16, r1
 450:	03 62       	ori	r16, 0x23	; 35
 452:	00 80       	ld	r0, Z
 454:	00 41       	sbci	r16, 0x10	; 16
 456:	74 01       	movw	r14, r8
 458:	00 00       	nop
 45a:	00 00       	nop
 45c:	14 00       	.word	0x0014	; ????
 45e:	00 00       	nop
 460:	01 05       	cpc	r16, r1
 462:	03 61       	ori	r16, 0x13	; 19
 464:	00 80       	ld	r0, Z
 466:	00 42       	sbci	r16, 0x20	; 32
 468:	79 01       	movw	r14, r18
 46a:	00 00       	nop
 46c:	00 00       	nop
 46e:	14 00       	.word	0x0014	; ????
 470:	00 00       	nop
 472:	01 05       	cpc	r16, r1
 474:	03 20       	and	r0, r3
 476:	00 80       	ld	r0, Z
 478:	00 43       	sbci	r16, 0x30	; 48
 47a:	7e 01       	movw	r14, r28
 47c:	00 00       	nop
 47e:	00 00       	nop
 480:	14 00       	.word	0x0014	; ????
 482:	00 00       	nop
 484:	01 05       	cpc	r16, r1
 486:	03 65       	ori	r16, 0x53	; 83
 488:	00 80       	ld	r0, Z
 48a:	00 44       	sbci	r16, 0x40	; 64
 48c:	84 01       	movw	r16, r8
 48e:	00 00       	nop
 490:	00 00       	nop
 492:	14 00       	.word	0x0014	; ????
 494:	00 00       	nop
 496:	01 05       	cpc	r16, r1
 498:	03 64       	ori	r16, 0x43	; 67
 49a:	00 80       	ld	r0, Z
 49c:	00 45       	sbci	r16, 0x50	; 80
 49e:	89 01       	movw	r16, r18
 4a0:	00 00       	nop
 4a2:	00 00       	nop
 4a4:	14 00       	.word	0x0014	; ????
 4a6:	00 00       	nop
 4a8:	01 05       	cpc	r16, r1
 4aa:	03 63       	ori	r16, 0x33	; 51
 4ac:	00 80       	ld	r0, Z
 4ae:	00 46       	sbci	r16, 0x60	; 96
 4b0:	8e 01       	movw	r16, r28
 4b2:	00 00       	nop
 4b4:	00 00       	nop
 4b6:	14 00       	.word	0x0014	; ????
 4b8:	00 00       	nop
 4ba:	01 05       	cpc	r16, r1
 4bc:	03 53       	subi	r16, 0x33	; 51
 4be:	00 80       	ld	r0, Z
 4c0:	00 47       	sbci	r16, 0x70	; 112
 4c2:	94 01       	movw	r18, r8
 4c4:	00 00       	nop
 4c6:	00 00       	nop
 4c8:	14 00       	.word	0x0014	; ????
 4ca:	00 00       	nop
 4cc:	01 05       	cpc	r16, r1
 4ce:	03 52       	subi	r16, 0x23	; 35
 4d0:	00 80       	ld	r0, Z
 4d2:	00 48       	sbci	r16, 0x80	; 128
 4d4:	9a 01       	movw	r18, r20
 4d6:	00 00       	nop
 4d8:	00 00       	nop
 4da:	14 00       	.word	0x0014	; ????
 4dc:	00 00       	nop
 4de:	01 05       	cpc	r16, r1
 4e0:	03 51       	subi	r16, 0x13	; 19
 4e2:	00 80       	ld	r0, Z
 4e4:	00 49       	sbci	r16, 0x90	; 144
 4e6:	9f 01       	movw	r18, r30
 4e8:	00 00       	nop
 4ea:	00 00       	nop
 4ec:	14 00       	.word	0x0014	; ????
 4ee:	00 00       	nop
 4f0:	01 05       	cpc	r16, r1
 4f2:	03 50       	subi	r16, 0x03	; 3
 4f4:	00 80       	ld	r0, Z
 4f6:	00 4a       	sbci	r16, 0xA0	; 160
 4f8:	a4 01       	movw	r20, r8
 4fa:	00 00       	nop
 4fc:	00 00       	nop
 4fe:	14 00       	.word	0x0014	; ????
 500:	00 00       	nop
 502:	01 05       	cpc	r16, r1
 504:	03 57       	subi	r16, 0x73	; 115
 506:	00 80       	ld	r0, Z
 508:	00 4b       	sbci	r16, 0xB0	; 176
 50a:	aa 01       	movw	r20, r20
 50c:	00 00       	nop
 50e:	00 00       	nop
 510:	14 00       	.word	0x0014	; ????
 512:	00 00       	nop
 514:	01 05       	cpc	r16, r1
 516:	03 56       	subi	r16, 0x63	; 99
 518:	00 80       	ld	r0, Z
 51a:	00 4c       	sbci	r16, 0xC0	; 192
 51c:	af 01       	movw	r20, r30
 51e:	00 00       	nop
 520:	00 00       	nop
 522:	14 00       	.word	0x0014	; ????
 524:	00 00       	nop
 526:	01 05       	cpc	r16, r1
 528:	03 40       	sbci	r16, 0x03	; 3
 52a:	00 80       	ld	r0, Z
 52c:	00 4d       	sbci	r16, 0xD0	; 208
 52e:	b5 01       	movw	r22, r10
 530:	00 00       	nop
 532:	00 00       	nop
 534:	14 00       	.word	0x0014	; ????
 536:	00 00       	nop
 538:	01 05       	cpc	r16, r1
 53a:	03 57       	subi	r16, 0x73	; 115
 53c:	00 80       	ld	r0, Z
 53e:	00 4e       	sbci	r16, 0xE0	; 224
 540:	bb 01       	movw	r22, r22
 542:	00 00       	nop
 544:	00 00       	nop
 546:	14 00       	.word	0x0014	; ????
 548:	00 00       	nop
 54a:	01 05       	cpc	r16, r1
 54c:	03 7d       	andi	r16, 0xD3	; 211
 54e:	00 80       	ld	r0, Z
 550:	00 4f       	sbci	r16, 0xF0	; 240
 552:	c2 01       	movw	r24, r4
 554:	00 00       	nop
 556:	00 00       	nop
 558:	14 00       	.word	0x0014	; ????
 55a:	00 00       	nop
 55c:	01 05       	cpc	r16, r1
 55e:	03 56       	subi	r16, 0x63	; 99
 560:	00 80       	ld	r0, Z
 562:	00 50       	subi	r16, 0x00	; 0
 564:	c7 01       	movw	r24, r14
 566:	00 00       	nop
 568:	00 00       	nop
 56a:	14 00       	.word	0x0014	; ????
 56c:	00 00       	nop
 56e:	01 05       	cpc	r16, r1
 570:	03 7c       	andi	r16, 0xC3	; 195
 572:	00 80       	ld	r0, Z
 574:	00 51       	subi	r16, 0x10	; 16
 576:	cd 01       	movw	r24, r26
 578:	00 00       	nop
 57a:	00 00       	nop
 57c:	14 00       	.word	0x0014	; ????
 57e:	00 00       	nop
 580:	01 05       	cpc	r16, r1
 582:	03 40       	sbci	r16, 0x03	; 3
 584:	00 80       	ld	r0, Z
 586:	00 52       	subi	r16, 0x20	; 32
 588:	d3 01       	movw	r26, r6
 58a:	00 00       	nop
 58c:	00 00       	nop
 58e:	14 00       	.word	0x0014	; ????
 590:	00 00       	nop
 592:	01 05       	cpc	r16, r1
 594:	03 4f       	sbci	r16, 0xF3	; 243
 596:	00 80       	ld	r0, Z
 598:	00 53       	subi	r16, 0x30	; 48
 59a:	da 01       	movw	r26, r20
 59c:	00 00       	nop
 59e:	00 00       	nop
 5a0:	14 00       	.word	0x0014	; ????
 5a2:	00 00       	nop
 5a4:	01 05       	cpc	r16, r1
 5a6:	03 4e       	sbci	r16, 0xE3	; 227
 5a8:	00 80       	ld	r0, Z
 5aa:	00 54       	subi	r16, 0x40	; 64
 5ac:	e1 01       	movw	r28, r2
 5ae:	00 00       	nop
 5b0:	00 00       	nop
 5b2:	14 00       	.word	0x0014	; ????
 5b4:	00 00       	nop
 5b6:	01 05       	cpc	r16, r1
 5b8:	03 7a       	andi	r16, 0xA3	; 163
 5ba:	00 80       	ld	r0, Z
 5bc:	00 55       	subi	r16, 0x50	; 80
 5be:	e8 01       	movw	r28, r16
 5c0:	00 00       	nop
 5c2:	00 00       	nop
 5c4:	1b 00       	.word	0x001b	; ????
 5c6:	00 00       	nop
 5c8:	01 05       	cpc	r16, r1
 5ca:	03 4c       	sbci	r16, 0xC3	; 195
 5cc:	00 80       	ld	r0, Z
 5ce:	00 56       	subi	r16, 0x60	; 96
 5d0:	ee 01       	movw	r28, r28
 5d2:	00 00       	nop
 5d4:	00 00       	nop
 5d6:	1b 00       	.word	0x001b	; ????
 5d8:	00 00       	nop
 5da:	01 05       	cpc	r16, r1
 5dc:	03 4a       	sbci	r16, 0xA3	; 163
 5de:	00 80       	ld	r0, Z
 5e0:	00 57       	subi	r16, 0x70	; 112
 5e2:	f4 01       	movw	r30, r8
 5e4:	00 00       	nop
 5e6:	00 00       	nop
 5e8:	1b 00       	.word	0x001b	; ????
 5ea:	00 00       	nop
 5ec:	01 05       	cpc	r16, r1
 5ee:	03 48       	sbci	r16, 0x83	; 131
 5f0:	00 80       	ld	r0, Z
 5f2:	00 58       	subi	r16, 0x80	; 128
 5f4:	fa 01       	movw	r30, r20
 5f6:	00 00       	nop
 5f8:	00 00       	nop
 5fa:	1b 00       	.word	0x001b	; ????
 5fc:	00 00       	nop
 5fe:	01 05       	cpc	r16, r1
 600:	03 78       	andi	r16, 0x83	; 131
 602:	00 80       	ld	r0, Z
 604:	00 59       	subi	r16, 0x90	; 144
 606:	00 02       	muls	r16, r16
 608:	00 00       	nop
 60a:	00 00       	nop
 60c:	1b 00       	.word	0x001b	; ????
 60e:	00 00       	nop
 610:	01 05       	cpc	r16, r1
 612:	03 46       	sbci	r16, 0x63	; 99
 614:	00 80       	ld	r0, Z
 616:	00 5a       	subi	r16, 0xA0	; 160
 618:	05 02       	muls	r16, r21
 61a:	00 00       	nop
 61c:	00 00       	nop
 61e:	14 00       	.word	0x0014	; ????
 620:	00 00       	nop
 622:	01 05       	cpc	r16, r1
 624:	03 45       	sbci	r16, 0x53	; 83
 626:	00 80       	ld	r0, Z
 628:	00 5b       	subi	r16, 0xB0	; 176
 62a:	0b 02       	muls	r16, r27
 62c:	00 00       	nop
 62e:	00 00       	nop
 630:	14 00       	.word	0x0014	; ????
 632:	00 00       	nop
 634:	01 05       	cpc	r16, r1
 636:	03 44       	sbci	r16, 0x43	; 67
 638:	00 80       	ld	r0, Z
 63a:	00 5c       	subi	r16, 0xC0	; 192
 63c:	11 02       	muls	r17, r17
 63e:	00 00       	nop
 640:	00 00       	nop
 642:	14 00       	.word	0x0014	; ????
 644:	00 00       	nop
 646:	01 05       	cpc	r16, r1
 648:	03 43       	sbci	r16, 0x33	; 51
 64a:	00 80       	ld	r0, Z
 64c:	00 5d       	subi	r16, 0xD0	; 208
 64e:	16 02       	muls	r17, r22
 650:	00 00       	nop
 652:	00 00       	nop
 654:	14 00       	.word	0x0014	; ????
 656:	00 00       	nop
 658:	01 05       	cpc	r16, r1
 65a:	03 56       	subi	r16, 0x63	; 99
 65c:	00 80       	ld	r0, Z
 65e:	00 5e       	subi	r16, 0xE0	; 224
 660:	1b 02       	muls	r17, r27
 662:	00 00       	nop
 664:	00 00       	nop
 666:	14 00       	.word	0x0014	; ????
 668:	00 00       	nop
 66a:	01 05       	cpc	r16, r1
 66c:	03 57       	subi	r16, 0x73	; 115
 66e:	00 80       	ld	r0, Z
 670:	00 5f       	subi	r16, 0xF0	; 240
 672:	21 02       	muls	r18, r17
 674:	00 00       	nop
 676:	00 00       	nop
 678:	14 00       	.word	0x0014	; ????
 67a:	00 00       	nop
 67c:	01 05       	cpc	r16, r1
 67e:	03 7d       	andi	r16, 0xD3	; 211
 680:	00 80       	ld	r0, Z
 682:	00 60       	ori	r16, 0x00	; 0
 684:	28 02       	muls	r18, r24
 686:	00 00       	nop
 688:	00 00       	nop
 68a:	14 00       	.word	0x0014	; ????
 68c:	00 00       	nop
 68e:	01 05       	cpc	r16, r1
 690:	03 7c       	andi	r16, 0xC3	; 195
 692:	00 80       	ld	r0, Z
 694:	00 61       	ori	r16, 0x10	; 16
 696:	2e 02       	muls	r18, r30
 698:	00 00       	nop
 69a:	00 00       	nop
 69c:	14 00       	.word	0x0014	; ????
 69e:	00 00       	nop
 6a0:	01 05       	cpc	r16, r1
 6a2:	03 40       	sbci	r16, 0x03	; 3
 6a4:	00 80       	ld	r0, Z
 6a6:	00 62       	ori	r16, 0x20	; 32
 6a8:	34 02       	muls	r19, r20
 6aa:	00 00       	nop
 6ac:	00 00       	nop
 6ae:	14 00       	.word	0x0014	; ????
 6b0:	00 00       	nop
 6b2:	01 05       	cpc	r16, r1
 6b4:	03 8b       	std	Z+19, r16	; 0x13
 6b6:	00 80       	ld	r0, Z
 6b8:	00 63       	ori	r16, 0x30	; 48
 6ba:	3b 02       	muls	r19, r27
 6bc:	00 00       	nop
 6be:	00 00       	nop
 6c0:	14 00       	.word	0x0014	; ????
 6c2:	00 00       	nop
 6c4:	01 05       	cpc	r16, r1
 6c6:	03 8a       	std	Z+19, r0	; 0x13
 6c8:	00 80       	ld	r0, Z
 6ca:	00 64       	ori	r16, 0x40	; 64
 6cc:	42 02       	muls	r20, r18
 6ce:	00 00       	nop
 6d0:	00 00       	nop
 6d2:	14 00       	.word	0x0014	; ????
 6d4:	00 00       	nop
 6d6:	01 05       	cpc	r16, r1
 6d8:	03 8c       	ldd	r0, Z+27	; 0x1b
 6da:	00 80       	ld	r0, Z
 6dc:	00 65       	ori	r16, 0x50	; 80
 6de:	49 02       	muls	r20, r25
 6e0:	00 00       	nop
 6e2:	00 00       	nop
 6e4:	1b 00       	.word	0x001b	; ????
 6e6:	00 00       	nop
 6e8:	01 05       	cpc	r16, r1
 6ea:	03 88       	ldd	r0, Z+19	; 0x13
 6ec:	00 80       	ld	r0, Z
 6ee:	00 66       	ori	r16, 0x60	; 96
 6f0:	4f 02       	muls	r20, r31
 6f2:	00 00       	nop
 6f4:	00 00       	nop
 6f6:	1b 00       	.word	0x001b	; ????
 6f8:	00 00       	nop
 6fa:	01 05       	cpc	r16, r1
 6fc:	03 86       	std	Z+11, r0	; 0x0b
 6fe:	00 80       	ld	r0, Z
 700:	00 67       	ori	r16, 0x70	; 112
 702:	55 02       	muls	r21, r21
 704:	00 00       	nop
 706:	00 00       	nop
 708:	1b 00       	.word	0x001b	; ????
 70a:	00 00       	nop
 70c:	01 05       	cpc	r16, r1
 70e:	03 84       	ldd	r0, Z+11	; 0x0b
 710:	00 80       	ld	r0, Z
 712:	00 68       	ori	r16, 0x80	; 128
 714:	5b 02       	muls	r21, r27
 716:	00 00       	nop
 718:	00 00       	nop
 71a:	1b 00       	.word	0x001b	; ????
 71c:	00 00       	nop
 71e:	01 05       	cpc	r16, r1
 720:	03 82       	std	Z+3, r0	; 0x03
 722:	00 80       	ld	r0, Z
 724:	00 69       	ori	r16, 0x90	; 144
 726:	61 02       	muls	r22, r17
 728:	00 00       	nop
 72a:	00 00       	nop
 72c:	1b 00       	.word	0x001b	; ????
 72e:	00 00       	nop
 730:	01 05       	cpc	r16, r1
 732:	03 80       	ldd	r0, Z+3	; 0x03
 734:	00 80       	ld	r0, Z
 736:	00 6a       	ori	r16, 0xA0	; 160
 738:	66 02       	muls	r22, r22
 73a:	00 00       	nop
 73c:	00 00       	nop
 73e:	14 00       	.word	0x0014	; ????
 740:	00 00       	nop
 742:	01 05       	cpc	r16, r1
 744:	03 41       	sbci	r16, 0x13	; 19
 746:	00 80       	ld	r0, Z
 748:	00 6b       	ori	r16, 0xB0	; 176
 74a:	6c 02       	muls	r22, r28
 74c:	00 00       	nop
 74e:	00 00       	nop
 750:	14 00       	.word	0x0014	; ????
 752:	00 00       	nop
 754:	01 05       	cpc	r16, r1
 756:	03 27       	eor	r16, r19
 758:	00 80       	ld	r0, Z
 75a:	00 6c       	ori	r16, 0xC0	; 192
 75c:	72 02       	muls	r23, r18
 75e:	00 00       	nop
 760:	00 00       	nop
 762:	14 00       	.word	0x0014	; ????
 764:	00 00       	nop
 766:	01 05       	cpc	r16, r1
 768:	03 26       	eor	r0, r19
 76a:	00 80       	ld	r0, Z
 76c:	00 6d       	ori	r16, 0xD0	; 208
 76e:	79 02       	muls	r23, r25
 770:	00 00       	nop
 772:	00 00       	nop
 774:	1b 00       	.word	0x001b	; ????
 776:	00 00       	nop
 778:	01 05       	cpc	r16, r1
 77a:	03 24       	eor	r0, r3
 77c:	00 80       	ld	r0, Z
 77e:	00 00       	nop
 780:	89 06       	cpc	r8, r25
 782:	00 00       	nop
 784:	02 00       	.word	0x0002	; ????
 786:	18 07       	cpc	r17, r24
 788:	00 00       	nop
 78a:	04 01       	movw	r0, r8
 78c:	2a 04       	cpc	r2, r10
 78e:	00 00       	nop
 790:	0c e7       	ldi	r16, 0x7C	; 124
 792:	03 00       	.word	0x0003	; ????
 794:	00 90 00 00 	lds	r0, 0x0000	; 0x800000 <__TEXT_REGION_LENGTH__+0x7e0000>
	...
 7a0:	00 1a       	sub	r0, r16
 7a2:	00 00       	nop
 7a4:	00 02       	muls	r16, r16
 7a6:	01 06       	cpc	r0, r17
 7a8:	eb 02       	muls	r30, r27
 7aa:	00 00       	nop
 7ac:	03 4b       	sbci	r16, 0xB3	; 179
 7ae:	03 00       	.word	0x0003	; ????
 7b0:	00 03       	mulsu	r16, r16
 7b2:	7e 37       	cpi	r23, 0x7E	; 126
 7b4:	00 00       	nop
 7b6:	00 02       	muls	r16, r16
 7b8:	01 08       	sbc	r0, r1
 7ba:	e9 02       	muls	r30, r25
 7bc:	00 00       	nop
 7be:	04 02       	muls	r16, r20
 7c0:	05 69       	ori	r16, 0x95	; 149
 7c2:	6e 74       	andi	r22, 0x4E	; 78
 7c4:	00 02       	muls	r16, r16
 7c6:	02 07       	cpc	r16, r18
 7c8:	3e 03       	fmul	r19, r22
 7ca:	00 00       	nop
 7cc:	02 04       	cpc	r0, r2
 7ce:	05 af       	std	Z+61, r16	; 0x3d
 7d0:	03 00       	.word	0x0003	; ????
 7d2:	00 03       	mulsu	r16, r16
 7d4:	16 04       	cpc	r1, r6
 7d6:	00 00       	nop
 7d8:	03 82       	std	Z+3, r0	; 0x03
 7da:	5e 00       	.word	0x005e	; ????
 7dc:	00 00       	nop
 7de:	02 04       	cpc	r0, r2
 7e0:	07 39       	cpi	r16, 0x97	; 151
 7e2:	03 00       	.word	0x0003	; ????
 7e4:	00 02       	muls	r16, r16
 7e6:	08 05       	cpc	r16, r8
 7e8:	aa 03       	fmulsu	r18, r18
 7ea:	00 00       	nop
 7ec:	02 08       	sbc	r0, r2
 7ee:	07 34       	cpi	r16, 0x47	; 71
 7f0:	03 00       	.word	0x0003	; ????
 7f2:	00 03       	mulsu	r16, r16
 7f4:	d1 02       	muls	r29, r17
 7f6:	00 00       	nop
 7f8:	04 28       	or	r0, r4
 7fa:	7e 00       	.word	0x007e	; ????
 7fc:	00 00       	nop
 7fe:	05 02       	muls	r16, r21
 800:	7d 02       	muls	r23, r29
 802:	00 00       	nop
 804:	03 d8       	rcall	.-4090   	; 0xfffff80c <__eeprom_end+0xff7ef80c>
 806:	02 00       	.word	0x0002	; ????
 808:	00 04       	cpc	r0, r0
 80a:	62 73       	andi	r22, 0x32	; 50
 80c:	00 00       	nop
 80e:	00 06       	cpc	r0, r16
 810:	02 95       	swap	r16
 812:	00 00       	nop
 814:	00 02       	muls	r16, r16
 816:	01 06       	cpc	r0, r17
 818:	f2 02       	muls	r31, r18
 81a:	00 00       	nop
 81c:	07 17       	cp	r16, r23
 81e:	03 00       	.word	0x0003	; ????
 820:	00 02       	muls	r16, r16
 822:	5c 01       	movw	r10, r24
 824:	03 b3       	in	r16, 0x13	; 19
 826:	00 00       	nop
 828:	00 08       	sbc	r0, r0
 82a:	61 00       	.word	0x0061	; ????
 82c:	02 5c       	subi	r16, 0xC2	; 194
 82e:	2c 00       	.word	0x002c	; ????
 830:	00 00       	nop
 832:	00 09       	sbc	r16, r0
 834:	fc 02       	muls	r31, r28
 836:	00 00       	nop
 838:	02 65       	ori	r16, 0x52	; 82
 83a:	03 07       	cpc	r16, r19
 83c:	94 03       	fmuls	r17, r20
 83e:	00 00       	nop
 840:	02 60       	ori	r16, 0x02	; 2
 842:	01 03       	mulsu	r16, r17
 844:	d2 00       	.word	0x00d2	; ????
 846:	00 00       	nop
 848:	08 63       	ori	r16, 0x38	; 56
 84a:	00 02       	muls	r16, r16
 84c:	60 95       	com	r22
 84e:	00 00       	nop
 850:	00 00       	nop
 852:	0a 01       	movw	r0, r20
 854:	c7 02       	muls	r28, r23
 856:	00 00       	nop
 858:	01 05       	cpc	r16, r1
 85a:	01 01       	movw	r0, r2
 85c:	f5 00       	.word	0x00f5	; ????
 85e:	00 00       	nop
 860:	08 73       	andi	r16, 0x38	; 56
 862:	74 72       	andi	r23, 0x24	; 36
 864:	00 01       	movw	r0, r0
 866:	05 8f       	std	Z+29, r16	; 0x1d
 868:	00 00       	nop
 86a:	00 0b       	sbc	r16, r16
 86c:	69 00       	.word	0x0069	; ????
 86e:	01 07       	cpc	r16, r17
 870:	3e 00       	.word	0x003e	; ????
 872:	00 00       	nop
 874:	00 0c       	add	r0, r0
 876:	d2 00       	.word	0x00d2	; ????
	...
 880:	00 00       	nop
 882:	03 92       	.word	0x9203	; ????
 884:	20 02       	muls	r18, r16
 886:	01 7d       	andi	r16, 0xD1	; 209
 888:	01 00       	.word	0x0001	; ????
 88a:	00 0d       	add	r16, r0
 88c:	e0 00       	.word	0x00e0	; ????
 88e:	00 00       	nop
 890:	00 00       	nop
 892:	00 00       	nop
 894:	0e eb       	ldi	r16, 0xBE	; 190
 896:	00 00       	nop
 898:	00 33       	cpi	r16, 0x30	; 48
 89a:	00 00       	nop
 89c:	00 0f       	add	r16, r16
 89e:	bb 00       	.word	0x00bb	; ????
	...
 8a8:	00 00       	nop
 8aa:	01 0c       	add	r0, r1
 8ac:	53 01       	movw	r10, r6
 8ae:	00 00       	nop
 8b0:	0d c8       	rjmp	.-4070   	; 0xfffff8cc <__eeprom_end+0xff7ef8cc>
 8b2:	00 00       	nop
 8b4:	00 9f       	mul	r16, r16
 8b6:	00 00       	nop
 8b8:	00 10       	cpse	r0, r0
 8ba:	9c 00       	.word	0x009c	; ????
 8bc:	00 00       	nop
 8be:	00 00       	nop
 8c0:	00 00       	nop
 8c2:	18 00       	.word	0x0018	; ????
 8c4:	00 00       	nop
 8c6:	02 63       	ori	r16, 0x32	; 50
 8c8:	0d a9       	ldd	r16, Y+53	; 0x35
 8ca:	00 00       	nop
 8cc:	00 b2       	in	r0, 0x10	; 16
 8ce:	00 00       	nop
 8d0:	00 00       	nop
 8d2:	00 10       	cpse	r0, r0
 8d4:	b3 00       	.word	0x00b3	; ????
 8d6:	00 00       	nop
 8d8:	00 00       	nop
 8da:	00 00       	nop
 8dc:	30 00       	.word	0x0030	; ????
 8de:	00 00       	nop
 8e0:	01 0a       	sbc	r0, r17
 8e2:	10 9c       	mul	r1, r0
 8e4:	00 00       	nop
 8e6:	00 00       	nop
 8e8:	00 00       	nop
 8ea:	00 30       	cpi	r16, 0x00	; 0
 8ec:	00 00       	nop
 8ee:	00 02       	muls	r16, r16
 8f0:	67 0d       	add	r22, r7
 8f2:	a9 00       	.word	0x00a9	; ????
 8f4:	00 00       	nop
 8f6:	c6 00       	.word	0x00c6	; ????
 8f8:	00 00       	nop
 8fa:	00 00       	nop
 8fc:	00 11       	cpse	r16, r0
 8fe:	01 1f       	adc	r16, r17
 900:	04 00       	.word	0x0004	; ????
 902:	00 01       	movw	r0, r0
 904:	11 01       	movw	r2, r2
	...
 90e:	03 92       	.word	0x9203	; ????
 910:	20 02       	muls	r18, r16
 912:	01 94       	neg	r0
 914:	02 00       	.word	0x0002	; ????
 916:	00 12       	cpse	r0, r16
 918:	2d 03       	fmul	r18, r21
 91a:	00 00       	nop
 91c:	01 11       	cpse	r16, r1
 91e:	8f 00       	.word	0x008f	; ????
 920:	00 00       	nop
 922:	da 00       	.word	0x00da	; ????
 924:	00 00       	nop
 926:	13 61       	ori	r17, 0x13	; 19
 928:	72 67       	ori	r23, 0x72	; 114
 92a:	00 01       	movw	r0, r0
 92c:	11 84       	ldd	r1, Z+9	; 0x09
 92e:	00 00       	nop
 930:	00 10       	cpse	r0, r0
 932:	01 00       	.word	0x0001	; ????
 934:	00 14       	cp	r0, r0
 936:	f7 02       	muls	r31, r23
 938:	00 00       	nop
 93a:	01 13       	cpse	r16, r17
 93c:	94 02       	muls	r25, r20
 93e:	00 00       	nop
 940:	05 03       	mulsu	r16, r21
 942:	00 00       	nop
 944:	00 00       	nop
 946:	15 d2       	rcall	.+1066   	; 0xd72 <__data_load_end+0x902>
	...
 950:	00 00       	nop
 952:	00 01       	movw	r0, r0
 954:	15 58       	subi	r17, 0x85	; 133
 956:	02 00       	.word	0x0002	; ????
 958:	00 16       	cp	r0, r16
 95a:	e0 00       	.word	0x00e0	; ????
 95c:	00 00       	nop
 95e:	06 03       	mulsu	r16, r22
 960:	00 00       	nop
 962:	00 00       	nop
 964:	9f 17       	cp	r25, r31
	...
 96e:	0e eb       	ldi	r16, 0xBE	; 190
 970:	00 00       	nop
 972:	00 46       	sbci	r16, 0x60	; 96
 974:	01 00       	.word	0x0001	; ????
 976:	00 0f       	add	r16, r16
 978:	bb 00       	.word	0x00bb	; ????
 97a:	00 00       	nop
 97c:	00 00       	nop
 97e:	00 00       	nop
 980:	48 00       	.word	0x0048	; ????
 982:	00 00       	nop
 984:	01 0c       	add	r0, r1
 986:	2d 02       	muls	r18, r29
 988:	00 00       	nop
 98a:	0d c8       	rjmp	.-4070   	; 0xfffff9a6 <__eeprom_end+0xff7ef9a6>
 98c:	00 00       	nop
 98e:	00 bc       	out	0x20, r0	; 32
 990:	01 00       	.word	0x0001	; ????
 992:	00 10       	cpse	r0, r0
 994:	9c 00       	.word	0x009c	; ????
 996:	00 00       	nop
 998:	00 00       	nop
 99a:	00 00       	nop
 99c:	60 00       	.word	0x0060	; ????
 99e:	00 00       	nop
 9a0:	02 63       	ori	r16, 0x32	; 50
 9a2:	0d a9       	ldd	r16, Y+53	; 0x35
 9a4:	00 00       	nop
 9a6:	00 cf       	rjmp	.-512    	; 0x7a8 <__data_load_end+0x338>
 9a8:	01 00       	.word	0x0001	; ????
 9aa:	00 00       	nop
 9ac:	00 10       	cpse	r0, r0
 9ae:	b3 00       	.word	0x00b3	; ????
 9b0:	00 00       	nop
 9b2:	00 00       	nop
 9b4:	00 00       	nop
 9b6:	78 00       	.word	0x0078	; ????
 9b8:	00 00       	nop
 9ba:	01 0a       	sbc	r0, r17
 9bc:	10 9c       	mul	r1, r0
 9be:	00 00       	nop
 9c0:	00 00       	nop
 9c2:	00 00       	nop
 9c4:	00 78       	andi	r16, 0x80	; 128
 9c6:	00 00       	nop
 9c8:	00 02       	muls	r16, r16
 9ca:	67 0d       	add	r22, r7
 9cc:	a9 00       	.word	0x00a9	; ????
 9ce:	00 00       	nop
 9d0:	e3 01       	movw	r28, r6
 9d2:	00 00       	nop
 9d4:	00 00       	nop
 9d6:	00 00       	nop
 9d8:	18 00       	.word	0x0018	; ????
 9da:	00 00       	nop
 9dc:	00 71       	andi	r16, 0x10	; 16
 9de:	06 00       	.word	0x0006	; ????
 9e0:	00 19       	sub	r16, r0
 9e2:	06 68       	ori	r16, 0x86	; 134
 9e4:	93 01       	movw	r18, r6
 9e6:	69 93       	st	Y+, r22
 9e8:	01 05       	cpc	r16, r1
 9ea:	03 00       	.word	0x0003	; ????
 9ec:	00 00       	nop
 9ee:	00 19       	sub	r16, r0
 9f0:	06 66       	ori	r16, 0x66	; 102
 9f2:	93 01       	movw	r18, r6
 9f4:	67 93       	lat	Z, r22
 9f6:	01 02       	muls	r16, r17
 9f8:	08 80       	ld	r0, Y
 9fa:	19 06       	cpc	r1, r25
 9fc:	64 93       	xch	Z, r22
 9fe:	01 65       	ori	r16, 0x51	; 81
 a00:	93 01       	movw	r18, r6
 a02:	03 f3       	brvs	.-64     	; 0x9c4 <__data_load_end+0x554>
 a04:	01 68       	ori	r16, 0x81	; 129
 a06:	19 06       	cpc	r1, r25
 a08:	62 93       	st	-Z, r22
 a0a:	01 63       	ori	r16, 0x31	; 49
 a0c:	93 01       	movw	r18, r6
 a0e:	03 f3       	brvs	.-64     	; 0x9d0 <__data_load_end+0x560>
 a10:	01 66       	ori	r16, 0x61	; 97
 a12:	00 00       	nop
 a14:	1a 95       	dec	r17
 a16:	00 00       	nop
 a18:	00 a4       	ldd	r0, Z+40	; 0x28
 a1a:	02 00       	.word	0x0002	; ????
 a1c:	00 1b       	sub	r16, r16
 a1e:	a4 02       	muls	r26, r20
 a20:	00 00       	nop
 a22:	7f 00       	.word	0x007f	; ????
 a24:	02 02       	muls	r16, r18
 a26:	07 8b       	std	Z+23, r16	; 0x17
 a28:	03 00       	.word	0x0003	; ????
 a2a:	00 1c       	adc	r0, r0
 a2c:	01 bc       	out	0x21, r0	; 33
 a2e:	02 00       	.word	0x0002	; ????
 a30:	00 01       	movw	r0, r0
 a32:	18 01       	movw	r2, r16
	...
 a3c:	f7 01       	movw	r30, r14
 a3e:	00 00       	nop
 a40:	01 06       	cpc	r0, r17
 a42:	03 00       	.word	0x0003	; ????
 a44:	00 1d       	adc	r16, r0
 a46:	2d 03       	fmul	r18, r21
 a48:	00 00       	nop
 a4a:	01 18       	sub	r0, r1
 a4c:	8f 00       	.word	0x008f	; ????
 a4e:	00 00       	nop
 a50:	02 91       	ld	r16, -Z
 a52:	01 1e       	adc	r0, r17
 a54:	1f 61       	ori	r17, 0x1F	; 31
 a56:	72 67       	ori	r23, 0x72	; 114
 a58:	00 01       	movw	r0, r0
 a5a:	1a 84       	ldd	r1, Y+10	; 0x0a
 a5c:	00 00       	nop
 a5e:	00 32       	cpi	r16, 0x20	; 32
 a60:	02 00       	.word	0x0002	; ????
 a62:	00 18       	sub	r0, r0
 a64:	00 00       	nop
 a66:	00 00       	nop
 a68:	7d 01       	movw	r14, r26
 a6a:	00 00       	nop
 a6c:	19 06       	cpc	r1, r25
 a6e:	68 93       	.word	0x9368	; ????
 a70:	01 69       	ori	r16, 0x91	; 145
 a72:	93 01       	movw	r18, r6
 a74:	04 91       	lpm	r16, Z
 a76:	01 94       	neg	r0
 a78:	02 19       	sub	r16, r2
 a7a:	06 66       	ori	r16, 0x66	; 102
 a7c:	93 01       	movw	r18, r6
 a7e:	67 93       	lat	Z, r22
 a80:	01 02       	muls	r16, r17
 a82:	91 03       	fmuls	r17, r17
 a84:	00 00       	nop
 a86:	20 01       	movw	r4, r0
 a88:	b8 03       	fmulsu	r19, r16
 a8a:	00 00       	nop
 a8c:	01 23       	and	r16, r17
 a8e:	ce 00       	.word	0x00ce	; ????
 a90:	00 00       	nop
 a92:	f6 00       	.word	0x00f6	; ????
 a94:	00 00       	nop
 a96:	03 92       	.word	0x9203	; ????
 a98:	20 02       	muls	r18, r16
 a9a:	01 57       	subi	r16, 0x71	; 113
 a9c:	04 00       	.word	0x0004	; ????
 a9e:	00 15       	cp	r16, r0
 aa0:	bb 00       	.word	0x00bb	; ????
 aa2:	00 00       	nop
 aa4:	ce 00       	.word	0x00ce	; ????
 aa6:	00 00       	nop
 aa8:	da 00       	.word	0x00da	; ????
 aaa:	00 00       	nop
 aac:	01 25       	eor	r16, r1
 aae:	55 03       	mulsu	r21, r21
 ab0:	00 00       	nop
 ab2:	0d c8       	rjmp	.-4070   	; 0xffffface <__eeprom_end+0xff7eface>
 ab4:	00 00       	nop
 ab6:	00 57       	subi	r16, 0x70	; 112
 ab8:	02 00       	.word	0x0002	; ????
 aba:	00 21       	and	r16, r0
 abc:	9c 00       	.word	0x009c	; ????
 abe:	00 00       	nop
 ac0:	d6 00       	.word	0x00d6	; ????
 ac2:	00 00       	nop
 ac4:	da 00       	.word	0x00da	; ????
 ac6:	00 00       	nop
 ac8:	02 63       	ori	r16, 0x32	; 50
 aca:	0d a9       	ldd	r16, Y+53	; 0x35
 acc:	00 00       	nop
 ace:	00 6c       	ori	r16, 0xC0	; 192
 ad0:	02 00       	.word	0x0002	; ????
 ad2:	00 00       	nop
 ad4:	00 15       	cp	r16, r0
 ad6:	bb 00       	.word	0x00bb	; ????
 ad8:	00 00       	nop
 ada:	da 00       	.word	0x00da	; ????
 adc:	00 00       	nop
 ade:	e0 00       	.word	0x00e0	; ????
 ae0:	00 00       	nop
 ae2:	01 26       	eor	r0, r17
 ae4:	8b 03       	fmulsu	r16, r19
 ae6:	00 00       	nop
 ae8:	0d c8       	rjmp	.-4070   	; 0xfffffb04 <__eeprom_end+0xff7efb04>
 aea:	00 00       	nop
 aec:	00 80       	ld	r0, Z
 aee:	02 00       	.word	0x0002	; ????
 af0:	00 21       	and	r16, r0
 af2:	9c 00       	.word	0x009c	; ????
 af4:	00 00       	nop
 af6:	de 00       	.word	0x00de	; ????
 af8:	00 00       	nop
 afa:	e0 00       	.word	0x00e0	; ????
 afc:	00 00       	nop
 afe:	02 63       	ori	r16, 0x32	; 50
 b00:	0d a9       	ldd	r16, Y+53	; 0x35
 b02:	00 00       	nop
 b04:	00 95       	com	r16
 b06:	02 00       	.word	0x0002	; ????
 b08:	00 00       	nop
 b0a:	00 15       	cp	r16, r0
 b0c:	bb 00       	.word	0x00bb	; ????
 b0e:	00 00       	nop
 b10:	e0 00       	.word	0x00e0	; ????
 b12:	00 00       	nop
 b14:	e6 00       	.word	0x00e6	; ????
 b16:	00 00       	nop
 b18:	01 27       	eor	r16, r17
 b1a:	c1 03       	fmuls	r20, r17
 b1c:	00 00       	nop
 b1e:	0d c8       	rjmp	.-4070   	; 0xfffffb3a <__eeprom_end+0xff7efb3a>
 b20:	00 00       	nop
 b22:	00 a9       	ldd	r16, Z+48	; 0x30
 b24:	02 00       	.word	0x0002	; ????
 b26:	00 21       	and	r16, r0
 b28:	9c 00       	.word	0x009c	; ????
 b2a:	00 00       	nop
 b2c:	e4 00       	.word	0x00e4	; ????
 b2e:	00 00       	nop
 b30:	e6 00       	.word	0x00e6	; ????
 b32:	00 00       	nop
 b34:	02 63       	ori	r16, 0x32	; 50
 b36:	0d a9       	ldd	r16, Y+53	; 0x35
 b38:	00 00       	nop
 b3a:	00 be       	out	0x30, r0	; 48
 b3c:	02 00       	.word	0x0002	; ????
 b3e:	00 00       	nop
 b40:	00 15       	cp	r16, r0
 b42:	bb 00       	.word	0x00bb	; ????
 b44:	00 00       	nop
 b46:	e6 00       	.word	0x00e6	; ????
 b48:	00 00       	nop
 b4a:	ec 00       	.word	0x00ec	; ????
 b4c:	00 00       	nop
 b4e:	01 28       	or	r0, r1
 b50:	f7 03       	fmuls	r23, r23
 b52:	00 00       	nop
 b54:	0d c8       	rjmp	.-4070   	; 0xfffffb70 <__eeprom_end+0xff7efb70>
 b56:	00 00       	nop
 b58:	00 d2       	rcall	.+1024   	; 0xf5a <__data_load_end+0xaea>
 b5a:	02 00       	.word	0x0002	; ????
 b5c:	00 21       	and	r16, r0
 b5e:	9c 00       	.word	0x009c	; ????
 b60:	00 00       	nop
 b62:	ea 00       	.word	0x00ea	; ????
 b64:	00 00       	nop
 b66:	ec 00       	.word	0x00ec	; ????
 b68:	00 00       	nop
 b6a:	02 63       	ori	r16, 0x32	; 50
 b6c:	0d a9       	ldd	r16, Y+53	; 0x35
 b6e:	00 00       	nop
 b70:	00 e7       	ldi	r16, 0x70	; 112
 b72:	02 00       	.word	0x0002	; ????
 b74:	00 00       	nop
 b76:	00 15       	cp	r16, r0
 b78:	bb 00       	.word	0x00bb	; ????
 b7a:	00 00       	nop
 b7c:	ec 00       	.word	0x00ec	; ????
 b7e:	00 00       	nop
 b80:	f0 00       	.word	0x00f0	; ????
 b82:	00 00       	nop
 b84:	01 29       	or	r16, r1
 b86:	2d 04       	cpc	r2, r13
 b88:	00 00       	nop
 b8a:	0d c8       	rjmp	.-4070   	; 0xfffffba6 <__eeprom_end+0xff7efba6>
 b8c:	00 00       	nop
 b8e:	00 fb       	bst	r16, 0
 b90:	02 00       	.word	0x0002	; ????
 b92:	00 21       	and	r16, r0
 b94:	9c 00       	.word	0x009c	; ????
 b96:	00 00       	nop
 b98:	ee 00       	.word	0x00ee	; ????
 b9a:	00 00       	nop
 b9c:	f0 00       	.word	0x00f0	; ????
 b9e:	00 00       	nop
 ba0:	02 63       	ori	r16, 0x32	; 50
 ba2:	0d a9       	ldd	r16, Y+53	; 0x35
 ba4:	00 00       	nop
 ba6:	00 10       	cpse	r0, r0
 ba8:	03 00       	.word	0x0003	; ????
 baa:	00 00       	nop
 bac:	00 21       	and	r16, r0
 bae:	b3 00       	.word	0x00b3	; ????
 bb0:	00 00       	nop
 bb2:	f0 00       	.word	0x00f0	; ????
 bb4:	00 00       	nop
 bb6:	f6 00       	.word	0x00f6	; ????
 bb8:	00 00       	nop
 bba:	01 2a       	or	r0, r17
 bbc:	21 9c       	mul	r2, r1
 bbe:	00 00       	nop
 bc0:	00 f0       	brcs	.+0      	; 0xbc2 <__data_load_end+0x752>
 bc2:	00 00       	nop
 bc4:	00 f6       	brcc	.-128    	; 0xb46 <__data_load_end+0x6d6>
 bc6:	00 00       	nop
 bc8:	00 02       	muls	r16, r16
 bca:	67 0d       	add	r22, r7
 bcc:	a9 00       	.word	0x00a9	; ????
 bce:	00 00       	nop
 bd0:	24 03       	mulsu	r18, r20
 bd2:	00 00       	nop
 bd4:	00 00       	nop
 bd6:	00 20       	and	r0, r0
 bd8:	01 9f       	mul	r16, r17
 bda:	02 00       	.word	0x0002	; ????
 bdc:	00 01       	movw	r0, r0
 bde:	2c f6       	brge	.-118    	; 0xb6a <__data_load_end+0x6fa>
 be0:	00 00       	nop
 be2:	00 1a       	sub	r0, r16
 be4:	01 00       	.word	0x0001	; ????
 be6:	00 03       	mulsu	r16, r16
 be8:	92 20       	and	r9, r2
 bea:	02 01       	movw	r0, r4
 bec:	72 05       	cpc	r23, r2
 bee:	00 00       	nop
 bf0:	15 bb       	out	0x15, r17	; 21
 bf2:	00 00       	nop
 bf4:	00 f6       	brcc	.-128    	; 0xb76 <__data_load_end+0x706>
 bf6:	00 00       	nop
 bf8:	00 02       	muls	r16, r16
 bfa:	01 00       	.word	0x0001	; ????
 bfc:	00 01       	movw	r0, r0
 bfe:	2e a6       	std	Y+46, r2	; 0x2e
 c00:	04 00       	.word	0x0004	; ????
 c02:	00 0d       	add	r16, r0
 c04:	c8 00       	.word	0x00c8	; ????
 c06:	00 00       	nop
 c08:	38 03       	fmul	r19, r16
 c0a:	00 00       	nop
 c0c:	21 9c       	mul	r2, r1
 c0e:	00 00       	nop
 c10:	00 fe       	sbrs	r0, 0
 c12:	00 00       	nop
 c14:	00 02       	muls	r16, r16
 c16:	01 00       	.word	0x0001	; ????
 c18:	00 02       	muls	r16, r16
 c1a:	63 0d       	add	r22, r3
 c1c:	a9 00       	.word	0x00a9	; ????
 c1e:	00 00       	nop
 c20:	4d 03       	fmul	r20, r21
 c22:	00 00       	nop
 c24:	00 00       	nop
 c26:	15 bb       	out	0x15, r17	; 21
 c28:	00 00       	nop
 c2a:	00 02       	muls	r16, r16
 c2c:	01 00       	.word	0x0001	; ????
 c2e:	00 08       	sbc	r0, r0
 c30:	01 00       	.word	0x0001	; ????
 c32:	00 01       	movw	r0, r0
 c34:	2f dc       	rcall	.-1954   	; 0x494 <__data_load_end+0x24>
 c36:	04 00       	.word	0x0004	; ????
 c38:	00 0d       	add	r16, r0
 c3a:	c8 00       	.word	0x00c8	; ????
 c3c:	00 00       	nop
 c3e:	61 03       	mulsu	r22, r17
 c40:	00 00       	nop
 c42:	21 9c       	mul	r2, r1
 c44:	00 00       	nop
 c46:	00 06       	cpc	r0, r16
 c48:	01 00       	.word	0x0001	; ????
 c4a:	00 08       	sbc	r0, r0
 c4c:	01 00       	.word	0x0001	; ????
 c4e:	00 02       	muls	r16, r16
 c50:	63 0d       	add	r22, r3
 c52:	a9 00       	.word	0x00a9	; ????
 c54:	00 00       	nop
 c56:	76 03       	mulsu	r23, r22
 c58:	00 00       	nop
 c5a:	00 00       	nop
 c5c:	15 bb       	out	0x15, r17	; 21
 c5e:	00 00       	nop
 c60:	00 08       	sbc	r0, r0
 c62:	01 00       	.word	0x0001	; ????
 c64:	00 0e       	add	r0, r16
 c66:	01 00       	.word	0x0001	; ????
 c68:	00 01       	movw	r0, r0
 c6a:	30 12       	cpse	r3, r16
 c6c:	05 00       	.word	0x0005	; ????
 c6e:	00 0d       	add	r16, r0
 c70:	c8 00       	.word	0x00c8	; ????
 c72:	00 00       	nop
 c74:	8a 03       	fmulsu	r16, r18
 c76:	00 00       	nop
 c78:	21 9c       	mul	r2, r1
 c7a:	00 00       	nop
 c7c:	00 0c       	add	r0, r0
 c7e:	01 00       	.word	0x0001	; ????
 c80:	00 0e       	add	r0, r16
 c82:	01 00       	.word	0x0001	; ????
 c84:	00 02       	muls	r16, r16
 c86:	63 0d       	add	r22, r3
 c88:	a9 00       	.word	0x00a9	; ????
 c8a:	00 00       	nop
 c8c:	9f 03       	fmulsu	r17, r23
 c8e:	00 00       	nop
 c90:	00 00       	nop
 c92:	15 bb       	out	0x15, r17	; 21
 c94:	00 00       	nop
 c96:	00 0e       	add	r0, r16
 c98:	01 00       	.word	0x0001	; ????
 c9a:	00 14       	cp	r0, r0
 c9c:	01 00       	.word	0x0001	; ????
 c9e:	00 01       	movw	r0, r0
 ca0:	31 48       	sbci	r19, 0x81	; 129
 ca2:	05 00       	.word	0x0005	; ????
 ca4:	00 0d       	add	r16, r0
 ca6:	c8 00       	.word	0x00c8	; ????
 ca8:	00 00       	nop
 caa:	b3 03       	fmuls	r19, r19
 cac:	00 00       	nop
 cae:	21 9c       	mul	r2, r1
 cb0:	00 00       	nop
 cb2:	00 12       	cpse	r0, r16
 cb4:	01 00       	.word	0x0001	; ????
 cb6:	00 14       	cp	r0, r0
 cb8:	01 00       	.word	0x0001	; ????
 cba:	00 02       	muls	r16, r16
 cbc:	63 0d       	add	r22, r3
 cbe:	a9 00       	.word	0x00a9	; ????
 cc0:	00 00       	nop
 cc2:	c8 03       	fmulsu	r20, r16
 cc4:	00 00       	nop
 cc6:	00 00       	nop
 cc8:	21 b3       	in	r18, 0x11	; 17
 cca:	00 00       	nop
 ccc:	00 14       	cp	r0, r0
 cce:	01 00       	.word	0x0001	; ????
 cd0:	00 1a       	sub	r0, r16
 cd2:	01 00       	.word	0x0001	; ????
 cd4:	00 01       	movw	r0, r0
 cd6:	32 21       	and	r19, r2
 cd8:	9c 00       	.word	0x009c	; ????
 cda:	00 00       	nop
 cdc:	14 01       	movw	r2, r8
 cde:	00 00       	nop
 ce0:	1a 01       	movw	r2, r20
 ce2:	00 00       	nop
 ce4:	02 67       	ori	r16, 0x72	; 114
 ce6:	0d a9       	ldd	r16, Y+53	; 0x35
 ce8:	00 00       	nop
 cea:	00 dc       	rcall	.-2048   	; 0x4ec <__data_load_end+0x7c>
 cec:	03 00       	.word	0x0003	; ????
 cee:	00 00       	nop
 cf0:	00 00       	nop
 cf2:	1c 01       	movw	r2, r24
 cf4:	e0 02       	muls	r30, r16
 cf6:	00 00       	nop
 cf8:	01 35       	cpi	r16, 0x51	; 81
 cfa:	01 00       	.word	0x0001	; ????
 cfc:	00 00       	nop
 cfe:	00 00       	nop
 d00:	00 00       	nop
 d02:	00 f0       	brcs	.+0      	; 0xd04 <__data_load_end+0x894>
 d04:	03 00       	.word	0x0003	; ????
 d06:	00 01       	movw	r0, r0
 d08:	a5 05       	cpc	r26, r5
 d0a:	00 00       	nop
 d0c:	12 99       	sbic	0x02, 2	; 2
 d0e:	02 00       	.word	0x0002	; ????
 d10:	00 01       	movw	r0, r0
 d12:	35 53       	subi	r19, 0x35	; 53
 d14:	00 00       	nop
 d16:	00 60       	ori	r16, 0x00	; 0
 d18:	04 00       	.word	0x0004	; ????
 d1a:	00 22       	and	r0, r16
 d1c:	00 00       	nop
 d1e:	00 00       	nop
 d20:	ab 02       	muls	r26, r27
 d22:	00 00       	nop
 d24:	00 11       	cpse	r16, r0
 d26:	01 80       	ldd	r0, Z+1	; 0x01
 d28:	03 00       	.word	0x0003	; ????
 d2a:	00 01       	movw	r0, r0
 d2c:	38 01       	movw	r6, r16
	...
 d36:	03 92       	.word	0x9203	; ????
 d38:	20 02       	muls	r18, r16
 d3a:	01 d8       	rcall	.-4094   	; 0xfffffd3e <__eeprom_end+0xff7efd3e>
 d3c:	05 00       	.word	0x0005	; ????
 d3e:	00 1d       	adc	r16, r0
 d40:	99 02       	muls	r25, r25
 d42:	00 00       	nop
 d44:	01 38       	cpi	r16, 0x81	; 129
 d46:	53 00       	.word	0x0053	; ????
 d48:	00 00       	nop
 d4a:	0c 66       	ori	r16, 0x6C	; 108
 d4c:	93 01       	movw	r18, r6
 d4e:	67 93       	lat	Z, r22
 d50:	01 68       	ori	r16, 0x81	; 129
 d52:	93 01       	movw	r18, r6
 d54:	69 93       	st	Y+, r22
 d56:	01 00       	.word	0x0001	; ????
 d58:	11 01       	movw	r2, r2
 d5a:	a8 04       	cpc	r10, r8
 d5c:	00 00       	nop
 d5e:	01 39       	cpi	r16, 0x91	; 145
 d60:	01 00       	.word	0x0001	; ????
 d62:	00 00       	nop
 d64:	00 00       	nop
 d66:	00 00       	nop
 d68:	00 03       	mulsu	r16, r16
 d6a:	92 20       	and	r9, r2
 d6c:	02 01       	movw	r0, r4
 d6e:	05 06       	cpc	r0, r21
 d70:	00 00       	nop
 d72:	23 73       	andi	r18, 0x33	; 51
 d74:	74 72       	andi	r23, 0x24	; 36
 d76:	00 01       	movw	r0, r0
 d78:	39 05       	cpc	r19, r9
 d7a:	06 00       	.word	0x0006	; ????
 d7c:	00 06       	cpc	r0, r16
 d7e:	68 93       	.word	0x9368	; ????
 d80:	01 69       	ori	r16, 0x91	; 145
 d82:	93 01       	movw	r18, r6
 d84:	00 06       	cpc	r0, r16
 d86:	02 2c       	mov	r0, r2
 d88:	00 00       	nop
 d8a:	00 24       	eor	r0, r0
 d8c:	01 12       	cpse	r0, r17
 d8e:	03 00       	.word	0x0003	; ????
 d90:	00 01       	movw	r0, r0
 d92:	3b 3e       	cpi	r19, 0xEB	; 235
 d94:	00 00       	nop
 d96:	00 1a       	sub	r0, r16
 d98:	01 00       	.word	0x0001	; ????
 d9a:	00 24       	eor	r0, r0
 d9c:	01 00       	.word	0x0001	; ????
 d9e:	00 03       	mulsu	r16, r16
 da0:	92 20       	and	r9, r2
 da2:	02 01       	movw	r0, r4
 da4:	45 06       	cpc	r4, r21
 da6:	00 00       	nop
 da8:	25 01       	movw	r4, r10
 daa:	53 03       	mulsu	r21, r19
 dac:	00 00       	nop
 dae:	01 3c       	cpi	r16, 0xC1	; 193
 db0:	3e 00       	.word	0x003e	; ????
 db2:	00 00       	nop
 db4:	01 3b       	cpi	r16, 0xB1	; 177
 db6:	06 00       	.word	0x0006	; ????
 db8:	00 1e       	adc	r0, r16
 dba:	00 22       	and	r0, r16
 dbc:	1e 01       	movw	r2, r28
 dbe:	00 00       	nop
 dc0:	7f 06       	cpc	r7, r31
 dc2:	00 00       	nop
 dc4:	00 1a       	sub	r0, r16
 dc6:	55 06       	cpc	r5, r21
 dc8:	00 00       	nop
 dca:	55 06       	cpc	r5, r21
 dcc:	00 00       	nop
 dce:	1b a4       	ldd	r1, Y+43	; 0x2b
 dd0:	02 00       	.word	0x0002	; ????
 dd2:	00 04       	cpc	r0, r0
 dd4:	00 26       	eor	r0, r16
 dd6:	2c 00       	.word	0x002c	; ????
 dd8:	00 00       	nop
 dda:	27 dd       	rcall	.-1458   	; 0x82a <__data_load_end+0x3ba>
 ddc:	03 00       	.word	0x0003	; ????
 dde:	00 02       	muls	r16, r16
 de0:	45 6c       	ori	r20, 0xC5	; 197
 de2:	06 00       	.word	0x0006	; ????
 de4:	00 01       	movw	r0, r0
 de6:	05 03       	mulsu	r16, r21
 de8:	06 01       	movw	r0, r12
 dea:	80 00       	.word	0x0080	; ????
 dec:	26 45       	sbci	r18, 0x56	; 86
 dee:	06 00       	.word	0x0006	; ????
 df0:	00 28       	or	r0, r0
 df2:	01 01       	movw	r0, r2
 df4:	8f 02       	muls	r24, r31
 df6:	00 00       	nop
 df8:	8f 02       	muls	r24, r31
 dfa:	00 00       	nop
 dfc:	05 cb       	rjmp	.-2550   	; 0x408 <__LOCK_REGION_LENGTH__+0x8>
 dfe:	02 29       	or	r16, r2
 e00:	01 01       	movw	r0, r2
 e02:	53 03       	mulsu	r21, r19
 e04:	00 00       	nop
 e06:	53 03       	mulsu	r21, r19
 e08:	00 00       	nop
 e0a:	01 3c       	cpi	r16, 0xC1	; 193
 e0c:	00 eb       	ldi	r16, 0xB0	; 176
 e0e:	01 00       	.word	0x0001	; ????
 e10:	00 02       	muls	r16, r16
 e12:	00 6a       	ori	r16, 0xA0	; 160
 e14:	09 00       	.word	0x0009	; ????
 e16:	00 04       	cpc	r0, r0
 e18:	01 2a       	or	r0, r17
 e1a:	04 00       	.word	0x0004	; ????
 e1c:	00 0c       	add	r0, r0
 e1e:	01 05       	cpc	r16, r1
 e20:	00 00       	nop
 e22:	f8 00       	.word	0x00f8	; ????
	...
 e2c:	00 00       	nop
 e2e:	6e 02       	muls	r22, r30
 e30:	00 00       	nop
 e32:	02 01       	movw	r0, r4
 e34:	06 eb       	ldi	r16, 0xB6	; 182
 e36:	02 00       	.word	0x0002	; ????
 e38:	00 03       	mulsu	r16, r16
 e3a:	4b 03       	fmul	r20, r19
 e3c:	00 00       	nop
 e3e:	02 7e       	andi	r16, 0xE2	; 226
 e40:	37 00       	.word	0x0037	; ????
 e42:	00 00       	nop
 e44:	02 01       	movw	r0, r4
 e46:	08 e9       	ldi	r16, 0x98	; 152
 e48:	02 00       	.word	0x0002	; ????
 e4a:	00 04       	cpc	r0, r0
 e4c:	02 05       	cpc	r16, r2
 e4e:	69 6e       	ori	r22, 0xE9	; 233
 e50:	74 00       	.word	0x0074	; ????
 e52:	03 2e       	mov	r0, r19
 e54:	05 00       	.word	0x0005	; ????
 e56:	00 02       	muls	r16, r16
 e58:	80 50       	subi	r24, 0x00	; 0
 e5a:	00 00       	nop
 e5c:	00 02       	muls	r16, r16
 e5e:	02 07       	cpc	r16, r18
 e60:	3e 03       	fmul	r19, r22
 e62:	00 00       	nop
 e64:	03 17       	cp	r16, r19
 e66:	04 00       	.word	0x0004	; ????
 e68:	00 02       	muls	r16, r16
 e6a:	81 62       	ori	r24, 0x21	; 33
 e6c:	00 00       	nop
 e6e:	00 02       	muls	r16, r16
 e70:	04 05       	cpc	r16, r4
 e72:	af 03       	fmulsu	r18, r23
 e74:	00 00       	nop
 e76:	02 04       	cpc	r0, r2
 e78:	07 39       	cpi	r16, 0x97	; 151
 e7a:	03 00       	.word	0x0003	; ????
 e7c:	00 02       	muls	r16, r16
 e7e:	08 05       	cpc	r16, r8
 e80:	aa 03       	fmulsu	r18, r18
 e82:	00 00       	nop
 e84:	02 08       	sbc	r0, r2
 e86:	07 34       	cpi	r16, 0x47	; 71
 e88:	03 00       	.word	0x0003	; ????
 e8a:	00 05       	cpc	r16, r0
 e8c:	01 d9       	rcall	.-3582   	; 0x90 <__ctors_end+0x4>
 e8e:	04 00       	.word	0x0004	; ????
 e90:	00 01       	movw	r0, r0
 e92:	03 01       	movw	r0, r6
 e94:	24 01       	movw	r4, r8
 e96:	00 00       	nop
 e98:	ee 01       	movw	r28, r28
 e9a:	00 00       	nop
 e9c:	8c 04       	cpc	r8, r12
 e9e:	00 00       	nop
 ea0:	01 3f       	cpi	r16, 0xF1	; 241
 ea2:	01 00       	.word	0x0001	; ????
 ea4:	00 06       	cpc	r0, r16
 ea6:	ce 04       	cpc	r12, r14
 ea8:	00 00       	nop
 eaa:	01 03       	mulsu	r16, r17
 eac:	45 00       	.word	0x0045	; ????
 eae:	00 00       	nop
 eb0:	3d 05       	cpc	r19, r13
 eb2:	00 00       	nop
 eb4:	06 b6       	in	r0, 0x36	; 54
 eb6:	04 00       	.word	0x0004	; ????
 eb8:	00 01       	movw	r0, r0
 eba:	03 3f       	cpi	r16, 0xF3	; 243
 ebc:	01 00       	.word	0x0001	; ????
 ebe:	00 80       	ld	r0, Z
 ec0:	05 00       	.word	0x0005	; ????
 ec2:	00 07       	cpc	r16, r16
 ec4:	3e 05       	cpc	r19, r14
 ec6:	00 00       	nop
 ec8:	01 06       	cpc	r0, r17
 eca:	57 00       	.word	0x0057	; ????
 ecc:	00 00       	nop
 ece:	b6 05       	cpc	r27, r6
 ed0:	00 00       	nop
 ed2:	08 6d       	ori	r16, 0xD8	; 216
 ed4:	69 64       	ori	r22, 0x49	; 73
 ed6:	00 01       	movw	r0, r0
 ed8:	08 45       	sbci	r16, 0x58	; 88
 eda:	00 00       	nop
 edc:	00 d4       	rcall	.+2048   	; 0x16de <__stack+0x5df>
 ede:	05 00       	.word	0x0005	; ????
 ee0:	00 09       	sbc	r16, r0
 ee2:	66 01       	movw	r12, r12
 ee4:	00 00       	nop
 ee6:	c2 01       	movw	r24, r4
 ee8:	00 00       	nop
 eea:	2c 01       	movw	r4, r24
 eec:	00 00       	nop
 eee:	08 69       	ori	r16, 0x98	; 152
 ef0:	00 01       	movw	r0, r0
 ef2:	09 45       	sbci	r16, 0x59	; 89
 ef4:	00 00       	nop
 ef6:	00 18       	sub	r0, r0
 ef8:	06 00       	.word	0x0006	; ????
 efa:	00 0a       	sbc	r0, r16
 efc:	66 01       	movw	r12, r12
 efe:	00 00       	nop
 f00:	c0 01       	movw	r24, r0
 f02:	00 00       	nop
 f04:	08 6c       	ori	r16, 0xC8	; 200
 f06:	6f 77       	andi	r22, 0x7F	; 127
 f08:	00 01       	movw	r0, r0
 f0a:	0a 45       	sbci	r16, 0x5A	; 90
 f0c:	00 00       	nop
 f0e:	00 5f       	subi	r16, 0xF0	; 240
 f10:	06 00       	.word	0x0006	; ????
 f12:	00 07       	cpc	r16, r16
 f14:	b1 04       	cpc	r11, r1
 f16:	00 00       	nop
 f18:	01 0b       	sbc	r16, r17
 f1a:	45 00       	.word	0x0045	; ????
 f1c:	00 00       	nop
 f1e:	93 06       	cpc	r9, r19
 f20:	00 00       	nop
 f22:	0b e0       	ldi	r16, 0x0B	; 11
 f24:	00 00       	nop
 f26:	00 07       	cpc	r16, r16
 f28:	c3 04       	cpc	r12, r3
 f2a:	00 00       	nop
 f2c:	01 0f       	add	r16, r17
 f2e:	57 00       	.word	0x0057	; ????
 f30:	00 00       	nop
 f32:	cb 06       	cpc	r12, r27
 f34:	00 00       	nop
 f36:	00 00       	nop
 f38:	00 0c       	add	r0, r0
 f3a:	44 01       	movw	r8, r8
 f3c:	00 00       	nop
 f3e:	c7 01       	movw	r24, r14
 f40:	00 00       	nop
 f42:	0c c6       	rjmp	.+3096   	; 0x1b5c <__stack+0xa5d>
 f44:	01 00       	.word	0x0001	; ????
 f46:	00 d4       	rcall	.+2048   	; 0x1748 <__stack+0x649>
 f48:	01 00       	.word	0x0001	; ????
 f4a:	00 00       	nop
 f4c:	0d 02       	muls	r16, r29
 f4e:	57 00       	.word	0x0057	; ????
 f50:	00 00       	nop
 f52:	0e 01       	movw	r0, r28
 f54:	53 03       	mulsu	r21, r19
 f56:	00 00       	nop
 f58:	01 1d       	adc	r16, r1
 f5a:	ee 01       	movw	r28, r28
 f5c:	00 00       	nop
 f5e:	24 02       	muls	r18, r20
 f60:	00 00       	nop
 f62:	03 92       	.word	0x9203	; ????
 f64:	20 02       	muls	r18, r16
 f66:	01 c7       	rjmp	.+3586   	; 0x1d6a <__stack+0xc6b>
 f68:	01 00       	.word	0x0001	; ????
 f6a:	00 0f       	add	r16, r16
 f6c:	ce 04       	cpc	r12, r14
 f6e:	00 00       	nop
 f70:	01 1e       	adc	r0, r17
 f72:	45 00       	.word	0x0045	; ????
 f74:	00 00       	nop
 f76:	64 07       	cpc	r22, r20
 f78:	b6 04       	cpc	r11, r6
 f7a:	00 00       	nop
 f7c:	01 20       	and	r0, r1
 f7e:	3f 01       	movw	r6, r30
 f80:	00 00       	nop
 f82:	ff 06       	cpc	r15, r31
 f84:	00 00       	nop
 f86:	09 00       	.word	0x0009	; ????
 f88:	02 00       	.word	0x0002	; ????
 f8a:	00 1a       	sub	r0, r16
 f8c:	02 00       	.word	0x0002	; ????
 f8e:	00 96       	adiw	r24, 0x00	; 0
 f90:	01 00       	.word	0x0001	; ????
 f92:	00 07       	cpc	r16, r16
 f94:	be 04       	cpc	r11, r14
 f96:	00 00       	nop
 f98:	01 22       	and	r0, r17
 f9a:	2c 00       	.word	0x002c	; ????
 f9c:	00 00       	nop
 f9e:	17 07       	cpc	r17, r23
 fa0:	00 00       	nop
 fa2:	00 10       	cpse	r0, r0
 fa4:	f6 01       	movw	r30, r12
 fa6:	00 00       	nop
 fa8:	e1 01       	movw	r28, r2
 faa:	00 00       	nop
 fac:	b0 01       	movw	r22, r0
 fae:	00 00       	nop
 fb0:	11 06       	cpc	r1, r17
 fb2:	68 93       	.word	0x9368	; ????
 fb4:	01 69       	ori	r16, 0x91	; 145
 fb6:	93 01       	movw	r18, r6
 fb8:	03 0a       	sbc	r0, r19
 fba:	90 01       	movw	r18, r0
 fbc:	00 12       	cpse	r0, r16
 fbe:	24 02       	muls	r18, r20
 fc0:	00 00       	nop
 fc2:	01 7e       	andi	r16, 0xE1	; 225
 fc4:	00 00       	nop
 fc6:	00 11       	cpse	r16, r0
 fc8:	06 68       	ori	r16, 0x86	; 134
 fca:	93 01       	movw	r18, r6
 fcc:	69 93       	st	Y+, r22
 fce:	01 02       	muls	r16, r17
 fd0:	08 64       	ori	r16, 0x48	; 72
 fd2:	00 00       	nop
 fd4:	13 01       	movw	r2, r6
 fd6:	01 b8       	out	0x01, r0	; 1
 fd8:	03 00       	.word	0x0003	; ????
 fda:	00 b8       	out	0x00, r0	; 0
 fdc:	03 00       	.word	0x0003	; ????
 fde:	00 03       	mulsu	r16, r16
 fe0:	13 13       	cpse	r17, r19
 fe2:	01 01       	movw	r0, r2
 fe4:	9f 02       	muls	r25, r31
 fe6:	00 00       	nop
 fe8:	9f 02       	muls	r25, r31
 fea:	00 00       	nop
 fec:	03 14       	cp	r0, r3
 fee:	13 01       	movw	r2, r6
 ff0:	01 37       	cpi	r16, 0x71	; 113
 ff2:	05 00       	.word	0x0005	; ????
 ff4:	00 37       	cpi	r16, 0x70	; 112
 ff6:	05 00       	.word	0x0005	; ????
 ff8:	00 03       	mulsu	r16, r16
 ffa:	12 00       	.word	0x0012	; ????

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	01 11       	cpse	r16, r1
   2:	01 25       	eor	r16, r1
   4:	0e 10       	cpse	r0, r14
   6:	06 00       	.word	0x0006	; ????
   8:	00 02       	muls	r16, r16
   a:	24 00       	.word	0x0024	; ????
   c:	03 0e       	add	r0, r19
   e:	0b 0b       	sbc	r16, r27
  10:	3e 0b       	sbc	r19, r30
  12:	00 00       	nop
  14:	03 24       	eor	r0, r3
  16:	00 03       	mulsu	r16, r16
  18:	0e 0b       	sbc	r16, r30
  1a:	0b 3e       	cpi	r16, 0xEB	; 235
  1c:	0b 00       	.word	0x000b	; ????
  1e:	00 04       	cpc	r0, r0
  20:	01 01       	movw	r0, r2
  22:	49 13       	cpse	r20, r25
  24:	00 00       	nop
  26:	05 21       	and	r16, r5
  28:	00 49       	sbci	r16, 0x90	; 144
  2a:	13 2f       	mov	r17, r19
  2c:	05 00       	.word	0x0005	; ????
  2e:	00 06       	cpc	r0, r16
  30:	34 00       	.word	0x0034	; ????
  32:	03 0e       	add	r0, r19
  34:	3a 0b       	sbc	r19, r26
  36:	3b 0b       	sbc	r19, r27
  38:	49 13       	cpse	r20, r25
  3a:	3f 0c       	add	r3, r15
  3c:	02 0a       	sbc	r0, r18
  3e:	00 00       	nop
  40:	07 34       	cpi	r16, 0x47	; 71
  42:	00 03       	mulsu	r16, r16
  44:	0e 3a       	cpi	r16, 0xAE	; 174
  46:	0b 3b       	cpi	r16, 0xBB	; 187
  48:	0b 49       	sbci	r16, 0x9B	; 155
  4a:	13 3f       	cpi	r17, 0xF3	; 243
  4c:	0c 02       	muls	r16, r28
  4e:	0a 00       	.word	0x000a	; ????
  50:	00 08       	sbc	r0, r0
  52:	34 00       	.word	0x0034	; ????
  54:	03 0e       	add	r0, r19
  56:	3a 0b       	sbc	r19, r26
  58:	3b 0b       	sbc	r19, r27
  5a:	49 13       	cpse	r20, r25
  5c:	3f 0c       	add	r3, r15
  5e:	02 0a       	sbc	r0, r18
  60:	00 00       	nop
  62:	09 34       	cpi	r16, 0x49	; 73
  64:	00 03       	mulsu	r16, r16
  66:	0e 3a       	cpi	r16, 0xAE	; 174
  68:	0b 3b       	cpi	r16, 0xBB	; 187
  6a:	0b 49       	sbci	r16, 0x9B	; 155
  6c:	13 3f       	cpi	r17, 0xF3	; 243
  6e:	0c 02       	muls	r16, r28
  70:	0a 00       	.word	0x000a	; ????
  72:	00 0a       	sbc	r0, r16
  74:	34 00       	.word	0x0034	; ????
  76:	03 0e       	add	r0, r19
  78:	3a 0b       	sbc	r19, r26
  7a:	3b 0b       	sbc	r19, r27
  7c:	49 13       	cpse	r20, r25
  7e:	3f 0c       	add	r3, r15
  80:	02 0a       	sbc	r0, r18
  82:	00 00       	nop
  84:	0b 34       	cpi	r16, 0x4B	; 75
  86:	00 03       	mulsu	r16, r16
  88:	0e 3a       	cpi	r16, 0xAE	; 174
  8a:	0b 3b       	cpi	r16, 0xBB	; 187
  8c:	0b 49       	sbci	r16, 0x9B	; 155
  8e:	13 3f       	cpi	r17, 0xF3	; 243
  90:	0c 02       	muls	r16, r28
  92:	0a 00       	.word	0x000a	; ????
  94:	00 0c       	add	r0, r0
  96:	34 00       	.word	0x0034	; ????
  98:	03 0e       	add	r0, r19
  9a:	3a 0b       	sbc	r19, r26
  9c:	3b 0b       	sbc	r19, r27
  9e:	49 13       	cpse	r20, r25
  a0:	3f 0c       	add	r3, r15
  a2:	02 0a       	sbc	r0, r18
  a4:	00 00       	nop
  a6:	0d 34       	cpi	r16, 0x4D	; 77
  a8:	00 03       	mulsu	r16, r16
  aa:	0e 3a       	cpi	r16, 0xAE	; 174
  ac:	0b 3b       	cpi	r16, 0xBB	; 187
  ae:	0b 49       	sbci	r16, 0x9B	; 155
  b0:	13 3f       	cpi	r17, 0xF3	; 243
  b2:	0c 02       	muls	r16, r28
  b4:	0a 00       	.word	0x000a	; ????
  b6:	00 0e       	add	r0, r16
  b8:	34 00       	.word	0x0034	; ????
  ba:	03 0e       	add	r0, r19
  bc:	3a 0b       	sbc	r19, r26
  be:	3b 0b       	sbc	r19, r27
  c0:	49 13       	cpse	r20, r25
  c2:	3f 0c       	add	r3, r15
  c4:	02 0a       	sbc	r0, r18
  c6:	00 00       	nop
  c8:	0f 34       	cpi	r16, 0x4F	; 79
  ca:	00 03       	mulsu	r16, r16
  cc:	0e 3a       	cpi	r16, 0xAE	; 174
  ce:	0b 3b       	cpi	r16, 0xBB	; 187
  d0:	0b 49       	sbci	r16, 0x9B	; 155
  d2:	13 3f       	cpi	r17, 0xF3	; 243
  d4:	0c 02       	muls	r16, r28
  d6:	0a 00       	.word	0x000a	; ????
  d8:	00 10       	cpse	r0, r0
  da:	34 00       	.word	0x0034	; ????
  dc:	03 0e       	add	r0, r19
  de:	3a 0b       	sbc	r19, r26
  e0:	3b 0b       	sbc	r19, r27
  e2:	49 13       	cpse	r20, r25
  e4:	3f 0c       	add	r3, r15
  e6:	02 0a       	sbc	r0, r18
  e8:	00 00       	nop
  ea:	11 34       	cpi	r17, 0x41	; 65
  ec:	00 03       	mulsu	r16, r16
  ee:	0e 3a       	cpi	r16, 0xAE	; 174
  f0:	0b 3b       	cpi	r16, 0xBB	; 187
  f2:	0b 49       	sbci	r16, 0x9B	; 155
  f4:	13 3f       	cpi	r17, 0xF3	; 243
  f6:	0c 02       	muls	r16, r28
  f8:	0a 00       	.word	0x000a	; ????
  fa:	00 12       	cpse	r0, r16
  fc:	34 00       	.word	0x0034	; ????
  fe:	03 0e       	add	r0, r19
 100:	3a 0b       	sbc	r19, r26
 102:	3b 0b       	sbc	r19, r27
 104:	49 13       	cpse	r20, r25
 106:	3f 0c       	add	r3, r15
 108:	02 0a       	sbc	r0, r18
 10a:	00 00       	nop
 10c:	13 34       	cpi	r17, 0x43	; 67
 10e:	00 03       	mulsu	r16, r16
 110:	0e 3a       	cpi	r16, 0xAE	; 174
 112:	0b 3b       	cpi	r16, 0xBB	; 187
 114:	0b 49       	sbci	r16, 0x9B	; 155
 116:	13 3f       	cpi	r17, 0xF3	; 243
 118:	0c 02       	muls	r16, r28
 11a:	0a 00       	.word	0x000a	; ????
 11c:	00 14       	cp	r0, r0
 11e:	34 00       	.word	0x0034	; ????
 120:	03 0e       	add	r0, r19
 122:	3a 0b       	sbc	r19, r26
 124:	3b 0b       	sbc	r19, r27
 126:	49 13       	cpse	r20, r25
 128:	3f 0c       	add	r3, r15
 12a:	02 0a       	sbc	r0, r18
 12c:	00 00       	nop
 12e:	15 34       	cpi	r17, 0x45	; 69
 130:	00 03       	mulsu	r16, r16
 132:	0e 3a       	cpi	r16, 0xAE	; 174
 134:	0b 3b       	cpi	r16, 0xBB	; 187
 136:	0b 49       	sbci	r16, 0x9B	; 155
 138:	13 3f       	cpi	r17, 0xF3	; 243
 13a:	0c 02       	muls	r16, r28
 13c:	0a 00       	.word	0x000a	; ????
 13e:	00 16       	cp	r0, r16
 140:	34 00       	.word	0x0034	; ????
 142:	03 0e       	add	r0, r19
 144:	3a 0b       	sbc	r19, r26
 146:	3b 0b       	sbc	r19, r27
 148:	49 13       	cpse	r20, r25
 14a:	3f 0c       	add	r3, r15
 14c:	02 0a       	sbc	r0, r18
 14e:	00 00       	nop
 150:	17 34       	cpi	r17, 0x47	; 71
 152:	00 03       	mulsu	r16, r16
 154:	0e 3a       	cpi	r16, 0xAE	; 174
 156:	0b 3b       	cpi	r16, 0xBB	; 187
 158:	0b 49       	sbci	r16, 0x9B	; 155
 15a:	13 3f       	cpi	r17, 0xF3	; 243
 15c:	0c 02       	muls	r16, r28
 15e:	0a 00       	.word	0x000a	; ????
 160:	00 18       	sub	r0, r0
 162:	34 00       	.word	0x0034	; ????
 164:	03 0e       	add	r0, r19
 166:	3a 0b       	sbc	r19, r26
 168:	3b 0b       	sbc	r19, r27
 16a:	49 13       	cpse	r20, r25
 16c:	3f 0c       	add	r3, r15
 16e:	02 0a       	sbc	r0, r18
 170:	00 00       	nop
 172:	19 34       	cpi	r17, 0x49	; 73
 174:	00 03       	mulsu	r16, r16
 176:	0e 3a       	cpi	r16, 0xAE	; 174
 178:	0b 3b       	cpi	r16, 0xBB	; 187
 17a:	0b 49       	sbci	r16, 0x9B	; 155
 17c:	13 3f       	cpi	r17, 0xF3	; 243
 17e:	0c 02       	muls	r16, r28
 180:	0a 00       	.word	0x000a	; ????
 182:	00 1a       	sub	r0, r16
 184:	34 00       	.word	0x0034	; ????
 186:	03 0e       	add	r0, r19
 188:	3a 0b       	sbc	r19, r26
 18a:	3b 0b       	sbc	r19, r27
 18c:	49 13       	cpse	r20, r25
 18e:	3f 0c       	add	r3, r15
 190:	02 0a       	sbc	r0, r18
 192:	00 00       	nop
 194:	1b 34       	cpi	r17, 0x4B	; 75
 196:	00 03       	mulsu	r16, r16
 198:	0e 3a       	cpi	r16, 0xAE	; 174
 19a:	0b 3b       	cpi	r16, 0xBB	; 187
 19c:	0b 49       	sbci	r16, 0x9B	; 155
 19e:	13 3f       	cpi	r17, 0xF3	; 243
 1a0:	0c 02       	muls	r16, r28
 1a2:	0a 00       	.word	0x000a	; ????
 1a4:	00 1c       	adc	r0, r0
 1a6:	34 00       	.word	0x0034	; ????
 1a8:	03 0e       	add	r0, r19
 1aa:	3a 0b       	sbc	r19, r26
 1ac:	3b 0b       	sbc	r19, r27
 1ae:	49 13       	cpse	r20, r25
 1b0:	3f 0c       	add	r3, r15
 1b2:	02 0a       	sbc	r0, r18
 1b4:	00 00       	nop
 1b6:	1d 34       	cpi	r17, 0x4D	; 77
 1b8:	00 03       	mulsu	r16, r16
 1ba:	0e 3a       	cpi	r16, 0xAE	; 174
 1bc:	0b 3b       	cpi	r16, 0xBB	; 187
 1be:	0b 49       	sbci	r16, 0x9B	; 155
 1c0:	13 3f       	cpi	r17, 0xF3	; 243
 1c2:	0c 02       	muls	r16, r28
 1c4:	0a 00       	.word	0x000a	; ????
 1c6:	00 1e       	adc	r0, r16
 1c8:	34 00       	.word	0x0034	; ????
 1ca:	03 0e       	add	r0, r19
 1cc:	3a 0b       	sbc	r19, r26
 1ce:	3b 0b       	sbc	r19, r27
 1d0:	49 13       	cpse	r20, r25
 1d2:	3f 0c       	add	r3, r15
 1d4:	02 0a       	sbc	r0, r18
 1d6:	00 00       	nop
 1d8:	1f 34       	cpi	r17, 0x4F	; 79
 1da:	00 03       	mulsu	r16, r16
 1dc:	0e 3a       	cpi	r16, 0xAE	; 174
 1de:	0b 3b       	cpi	r16, 0xBB	; 187
 1e0:	0b 49       	sbci	r16, 0x9B	; 155
 1e2:	13 3f       	cpi	r17, 0xF3	; 243
 1e4:	0c 02       	muls	r16, r28
 1e6:	0a 00       	.word	0x000a	; ????
 1e8:	00 20       	and	r0, r0
 1ea:	34 00       	.word	0x0034	; ????
 1ec:	03 0e       	add	r0, r19
 1ee:	3a 0b       	sbc	r19, r26
 1f0:	3b 0b       	sbc	r19, r27
 1f2:	49 13       	cpse	r20, r25
 1f4:	3f 0c       	add	r3, r15
 1f6:	02 0a       	sbc	r0, r18
 1f8:	00 00       	nop
 1fa:	21 34       	cpi	r18, 0x41	; 65
 1fc:	00 03       	mulsu	r16, r16
 1fe:	0e 3a       	cpi	r16, 0xAE	; 174
 200:	0b 3b       	cpi	r16, 0xBB	; 187
 202:	0b 49       	sbci	r16, 0x9B	; 155
 204:	13 3f       	cpi	r17, 0xF3	; 243
 206:	0c 02       	muls	r16, r28
 208:	0a 00       	.word	0x000a	; ????
 20a:	00 22       	and	r0, r16
 20c:	34 00       	.word	0x0034	; ????
 20e:	03 0e       	add	r0, r19
 210:	3a 0b       	sbc	r19, r26
 212:	3b 0b       	sbc	r19, r27
 214:	49 13       	cpse	r20, r25
 216:	3f 0c       	add	r3, r15
 218:	02 0a       	sbc	r0, r18
 21a:	00 00       	nop
 21c:	23 34       	cpi	r18, 0x43	; 67
 21e:	00 03       	mulsu	r16, r16
 220:	0e 3a       	cpi	r16, 0xAE	; 174
 222:	0b 3b       	cpi	r16, 0xBB	; 187
 224:	0b 49       	sbci	r16, 0x9B	; 155
 226:	13 3f       	cpi	r17, 0xF3	; 243
 228:	0c 02       	muls	r16, r28
 22a:	0a 00       	.word	0x000a	; ????
 22c:	00 24       	eor	r0, r0
 22e:	34 00       	.word	0x0034	; ????
 230:	03 0e       	add	r0, r19
 232:	3a 0b       	sbc	r19, r26
 234:	3b 0b       	sbc	r19, r27
 236:	49 13       	cpse	r20, r25
 238:	3f 0c       	add	r3, r15
 23a:	02 0a       	sbc	r0, r18
 23c:	00 00       	nop
 23e:	25 34       	cpi	r18, 0x45	; 69
 240:	00 03       	mulsu	r16, r16
 242:	0e 3a       	cpi	r16, 0xAE	; 174
 244:	0b 3b       	cpi	r16, 0xBB	; 187
 246:	0b 49       	sbci	r16, 0x9B	; 155
 248:	13 3f       	cpi	r17, 0xF3	; 243
 24a:	0c 02       	muls	r16, r28
 24c:	0a 00       	.word	0x000a	; ????
 24e:	00 26       	eor	r0, r16
 250:	34 00       	.word	0x0034	; ????
 252:	03 0e       	add	r0, r19
 254:	3a 0b       	sbc	r19, r26
 256:	3b 0b       	sbc	r19, r27
 258:	49 13       	cpse	r20, r25
 25a:	3f 0c       	add	r3, r15
 25c:	02 0a       	sbc	r0, r18
 25e:	00 00       	nop
 260:	27 34       	cpi	r18, 0x47	; 71
 262:	00 03       	mulsu	r16, r16
 264:	0e 3a       	cpi	r16, 0xAE	; 174
 266:	0b 3b       	cpi	r16, 0xBB	; 187
 268:	0b 49       	sbci	r16, 0x9B	; 155
 26a:	13 3f       	cpi	r17, 0xF3	; 243
 26c:	0c 02       	muls	r16, r28
 26e:	0a 00       	.word	0x000a	; ????
 270:	00 28       	or	r0, r0
 272:	34 00       	.word	0x0034	; ????
 274:	03 0e       	add	r0, r19
 276:	3a 0b       	sbc	r19, r26
 278:	3b 0b       	sbc	r19, r27
 27a:	49 13       	cpse	r20, r25
 27c:	3f 0c       	add	r3, r15
 27e:	02 0a       	sbc	r0, r18
 280:	00 00       	nop
 282:	29 34       	cpi	r18, 0x49	; 73
 284:	00 03       	mulsu	r16, r16
 286:	0e 3a       	cpi	r16, 0xAE	; 174
 288:	0b 3b       	cpi	r16, 0xBB	; 187
 28a:	0b 49       	sbci	r16, 0x9B	; 155
 28c:	13 3f       	cpi	r17, 0xF3	; 243
 28e:	0c 02       	muls	r16, r28
 290:	0a 00       	.word	0x000a	; ????
 292:	00 2a       	or	r0, r16
 294:	34 00       	.word	0x0034	; ????
 296:	03 0e       	add	r0, r19
 298:	3a 0b       	sbc	r19, r26
 29a:	3b 0b       	sbc	r19, r27
 29c:	49 13       	cpse	r20, r25
 29e:	3f 0c       	add	r3, r15
 2a0:	02 0a       	sbc	r0, r18
 2a2:	00 00       	nop
 2a4:	2b 34       	cpi	r18, 0x4B	; 75
 2a6:	00 03       	mulsu	r16, r16
 2a8:	0e 3a       	cpi	r16, 0xAE	; 174
 2aa:	0b 3b       	cpi	r16, 0xBB	; 187
 2ac:	0b 49       	sbci	r16, 0x9B	; 155
 2ae:	13 3f       	cpi	r17, 0xF3	; 243
 2b0:	0c 02       	muls	r16, r28
 2b2:	0a 00       	.word	0x000a	; ????
 2b4:	00 2c       	mov	r0, r0
 2b6:	34 00       	.word	0x0034	; ????
 2b8:	03 0e       	add	r0, r19
 2ba:	3a 0b       	sbc	r19, r26
 2bc:	3b 0b       	sbc	r19, r27
 2be:	49 13       	cpse	r20, r25
 2c0:	3f 0c       	add	r3, r15
 2c2:	02 0a       	sbc	r0, r18
 2c4:	00 00       	nop
 2c6:	2d 34       	cpi	r18, 0x4D	; 77
 2c8:	00 03       	mulsu	r16, r16
 2ca:	0e 3a       	cpi	r16, 0xAE	; 174
 2cc:	0b 3b       	cpi	r16, 0xBB	; 187
 2ce:	0b 49       	sbci	r16, 0x9B	; 155
 2d0:	13 3f       	cpi	r17, 0xF3	; 243
 2d2:	0c 02       	muls	r16, r28
 2d4:	0a 00       	.word	0x000a	; ????
 2d6:	00 2e       	mov	r0, r16
 2d8:	34 00       	.word	0x0034	; ????
 2da:	03 0e       	add	r0, r19
 2dc:	3a 0b       	sbc	r19, r26
 2de:	3b 0b       	sbc	r19, r27
 2e0:	49 13       	cpse	r20, r25
 2e2:	3f 0c       	add	r3, r15
 2e4:	02 0a       	sbc	r0, r18
 2e6:	00 00       	nop
 2e8:	2f 34       	cpi	r18, 0x4F	; 79
 2ea:	00 03       	mulsu	r16, r16
 2ec:	0e 3a       	cpi	r16, 0xAE	; 174
 2ee:	0b 3b       	cpi	r16, 0xBB	; 187
 2f0:	0b 49       	sbci	r16, 0x9B	; 155
 2f2:	13 3f       	cpi	r17, 0xF3	; 243
 2f4:	0c 02       	muls	r16, r28
 2f6:	0a 00       	.word	0x000a	; ????
 2f8:	00 30       	cpi	r16, 0x00	; 0
 2fa:	34 00       	.word	0x0034	; ????
 2fc:	03 0e       	add	r0, r19
 2fe:	3a 0b       	sbc	r19, r26
 300:	3b 0b       	sbc	r19, r27
 302:	49 13       	cpse	r20, r25
 304:	3f 0c       	add	r3, r15
 306:	02 0a       	sbc	r0, r18
 308:	00 00       	nop
 30a:	31 34       	cpi	r19, 0x41	; 65
 30c:	00 03       	mulsu	r16, r16
 30e:	0e 3a       	cpi	r16, 0xAE	; 174
 310:	0b 3b       	cpi	r16, 0xBB	; 187
 312:	0b 49       	sbci	r16, 0x9B	; 155
 314:	13 3f       	cpi	r17, 0xF3	; 243
 316:	0c 02       	muls	r16, r28
 318:	0a 00       	.word	0x000a	; ????
 31a:	00 32       	cpi	r16, 0x20	; 32
 31c:	34 00       	.word	0x0034	; ????
 31e:	03 0e       	add	r0, r19
 320:	3a 0b       	sbc	r19, r26
 322:	3b 0b       	sbc	r19, r27
 324:	49 13       	cpse	r20, r25
 326:	3f 0c       	add	r3, r15
 328:	02 0a       	sbc	r0, r18
 32a:	00 00       	nop
 32c:	33 34       	cpi	r19, 0x43	; 67
 32e:	00 03       	mulsu	r16, r16
 330:	0e 3a       	cpi	r16, 0xAE	; 174
 332:	0b 3b       	cpi	r16, 0xBB	; 187
 334:	0b 49       	sbci	r16, 0x9B	; 155
 336:	13 3f       	cpi	r17, 0xF3	; 243
 338:	0c 02       	muls	r16, r28
 33a:	0a 00       	.word	0x000a	; ????
 33c:	00 34       	cpi	r16, 0x40	; 64
 33e:	34 00       	.word	0x0034	; ????
 340:	03 0e       	add	r0, r19
 342:	3a 0b       	sbc	r19, r26
 344:	3b 0b       	sbc	r19, r27
 346:	49 13       	cpse	r20, r25
 348:	3f 0c       	add	r3, r15
 34a:	02 0a       	sbc	r0, r18
 34c:	00 00       	nop
 34e:	35 34       	cpi	r19, 0x45	; 69
 350:	00 03       	mulsu	r16, r16
 352:	0e 3a       	cpi	r16, 0xAE	; 174
 354:	0b 3b       	cpi	r16, 0xBB	; 187
 356:	0b 49       	sbci	r16, 0x9B	; 155
 358:	13 3f       	cpi	r17, 0xF3	; 243
 35a:	0c 02       	muls	r16, r28
 35c:	0a 00       	.word	0x000a	; ????
 35e:	00 36       	cpi	r16, 0x60	; 96
 360:	34 00       	.word	0x0034	; ????
 362:	03 0e       	add	r0, r19
 364:	3a 0b       	sbc	r19, r26
 366:	3b 0b       	sbc	r19, r27
 368:	49 13       	cpse	r20, r25
 36a:	3f 0c       	add	r3, r15
 36c:	02 0a       	sbc	r0, r18
 36e:	00 00       	nop
 370:	37 34       	cpi	r19, 0x47	; 71
 372:	00 03       	mulsu	r16, r16
 374:	0e 3a       	cpi	r16, 0xAE	; 174
 376:	0b 3b       	cpi	r16, 0xBB	; 187
 378:	0b 49       	sbci	r16, 0x9B	; 155
 37a:	13 3f       	cpi	r17, 0xF3	; 243
 37c:	0c 02       	muls	r16, r28
 37e:	0a 00       	.word	0x000a	; ????
 380:	00 38       	cpi	r16, 0x80	; 128
 382:	34 00       	.word	0x0034	; ????
 384:	03 0e       	add	r0, r19
 386:	3a 0b       	sbc	r19, r26
 388:	3b 0b       	sbc	r19, r27
 38a:	49 13       	cpse	r20, r25
 38c:	3f 0c       	add	r3, r15
 38e:	02 0a       	sbc	r0, r18
 390:	00 00       	nop
 392:	39 34       	cpi	r19, 0x49	; 73
 394:	00 03       	mulsu	r16, r16
 396:	0e 3a       	cpi	r16, 0xAE	; 174
 398:	0b 3b       	cpi	r16, 0xBB	; 187
 39a:	0b 49       	sbci	r16, 0x9B	; 155
 39c:	13 3f       	cpi	r17, 0xF3	; 243
 39e:	0c 02       	muls	r16, r28
 3a0:	0a 00       	.word	0x000a	; ????
 3a2:	00 3a       	cpi	r16, 0xA0	; 160
 3a4:	34 00       	.word	0x0034	; ????
 3a6:	03 0e       	add	r0, r19
 3a8:	3a 0b       	sbc	r19, r26
 3aa:	3b 0b       	sbc	r19, r27
 3ac:	49 13       	cpse	r20, r25
 3ae:	3f 0c       	add	r3, r15
 3b0:	02 0a       	sbc	r0, r18
 3b2:	00 00       	nop
 3b4:	3b 34       	cpi	r19, 0x4B	; 75
 3b6:	00 03       	mulsu	r16, r16
 3b8:	0e 3a       	cpi	r16, 0xAE	; 174
 3ba:	0b 3b       	cpi	r16, 0xBB	; 187
 3bc:	0b 49       	sbci	r16, 0x9B	; 155
 3be:	13 3f       	cpi	r17, 0xF3	; 243
 3c0:	0c 02       	muls	r16, r28
 3c2:	0a 00       	.word	0x000a	; ????
 3c4:	00 3c       	cpi	r16, 0xC0	; 192
 3c6:	34 00       	.word	0x0034	; ????
 3c8:	03 0e       	add	r0, r19
 3ca:	3a 0b       	sbc	r19, r26
 3cc:	3b 0b       	sbc	r19, r27
 3ce:	49 13       	cpse	r20, r25
 3d0:	3f 0c       	add	r3, r15
 3d2:	02 0a       	sbc	r0, r18
 3d4:	00 00       	nop
 3d6:	3d 34       	cpi	r19, 0x4D	; 77
 3d8:	00 03       	mulsu	r16, r16
 3da:	0e 3a       	cpi	r16, 0xAE	; 174
 3dc:	0b 3b       	cpi	r16, 0xBB	; 187
 3de:	0b 49       	sbci	r16, 0x9B	; 155
 3e0:	13 3f       	cpi	r17, 0xF3	; 243
 3e2:	0c 02       	muls	r16, r28
 3e4:	0a 00       	.word	0x000a	; ????
 3e6:	00 3e       	cpi	r16, 0xE0	; 224
 3e8:	34 00       	.word	0x0034	; ????
 3ea:	03 0e       	add	r0, r19
 3ec:	3a 0b       	sbc	r19, r26
 3ee:	3b 0b       	sbc	r19, r27
 3f0:	49 13       	cpse	r20, r25
 3f2:	3f 0c       	add	r3, r15
 3f4:	02 0a       	sbc	r0, r18
 3f6:	00 00       	nop
 3f8:	3f 34       	cpi	r19, 0x4F	; 79
 3fa:	00 03       	mulsu	r16, r16
 3fc:	0e 3a       	cpi	r16, 0xAE	; 174
 3fe:	0b 3b       	cpi	r16, 0xBB	; 187
 400:	0b 49       	sbci	r16, 0x9B	; 155
 402:	13 3f       	cpi	r17, 0xF3	; 243
 404:	0c 02       	muls	r16, r28
 406:	0a 00       	.word	0x000a	; ????
 408:	00 40       	sbci	r16, 0x00	; 0
 40a:	34 00       	.word	0x0034	; ????
 40c:	03 0e       	add	r0, r19
 40e:	3a 0b       	sbc	r19, r26
 410:	3b 0b       	sbc	r19, r27
 412:	49 13       	cpse	r20, r25
 414:	3f 0c       	add	r3, r15
 416:	02 0a       	sbc	r0, r18
 418:	00 00       	nop
 41a:	41 34       	cpi	r20, 0x41	; 65
 41c:	00 03       	mulsu	r16, r16
 41e:	0e 3a       	cpi	r16, 0xAE	; 174
 420:	0b 3b       	cpi	r16, 0xBB	; 187
 422:	0b 49       	sbci	r16, 0x9B	; 155
 424:	13 3f       	cpi	r17, 0xF3	; 243
 426:	0c 02       	muls	r16, r28
 428:	0a 00       	.word	0x000a	; ????
 42a:	00 42       	sbci	r16, 0x20	; 32
 42c:	34 00       	.word	0x0034	; ????
 42e:	03 0e       	add	r0, r19
 430:	3a 0b       	sbc	r19, r26
 432:	3b 0b       	sbc	r19, r27
 434:	49 13       	cpse	r20, r25
 436:	3f 0c       	add	r3, r15
 438:	02 0a       	sbc	r0, r18
 43a:	00 00       	nop
 43c:	43 34       	cpi	r20, 0x43	; 67
 43e:	00 03       	mulsu	r16, r16
 440:	0e 3a       	cpi	r16, 0xAE	; 174
 442:	0b 3b       	cpi	r16, 0xBB	; 187
 444:	0b 49       	sbci	r16, 0x9B	; 155
 446:	13 3f       	cpi	r17, 0xF3	; 243
 448:	0c 02       	muls	r16, r28
 44a:	0a 00       	.word	0x000a	; ????
 44c:	00 44       	sbci	r16, 0x40	; 64
 44e:	34 00       	.word	0x0034	; ????
 450:	03 0e       	add	r0, r19
 452:	3a 0b       	sbc	r19, r26
 454:	3b 0b       	sbc	r19, r27
 456:	49 13       	cpse	r20, r25
 458:	3f 0c       	add	r3, r15
 45a:	02 0a       	sbc	r0, r18
 45c:	00 00       	nop
 45e:	45 34       	cpi	r20, 0x45	; 69
 460:	00 03       	mulsu	r16, r16
 462:	0e 3a       	cpi	r16, 0xAE	; 174
 464:	0b 3b       	cpi	r16, 0xBB	; 187
 466:	0b 49       	sbci	r16, 0x9B	; 155
 468:	13 3f       	cpi	r17, 0xF3	; 243
 46a:	0c 02       	muls	r16, r28
 46c:	0a 00       	.word	0x000a	; ????
 46e:	00 46       	sbci	r16, 0x60	; 96
 470:	34 00       	.word	0x0034	; ????
 472:	03 0e       	add	r0, r19
 474:	3a 0b       	sbc	r19, r26
 476:	3b 0b       	sbc	r19, r27
 478:	49 13       	cpse	r20, r25
 47a:	3f 0c       	add	r3, r15
 47c:	02 0a       	sbc	r0, r18
 47e:	00 00       	nop
 480:	47 34       	cpi	r20, 0x47	; 71
 482:	00 03       	mulsu	r16, r16
 484:	0e 3a       	cpi	r16, 0xAE	; 174
 486:	0b 3b       	cpi	r16, 0xBB	; 187
 488:	0b 49       	sbci	r16, 0x9B	; 155
 48a:	13 3f       	cpi	r17, 0xF3	; 243
 48c:	0c 02       	muls	r16, r28
 48e:	0a 00       	.word	0x000a	; ????
 490:	00 48       	sbci	r16, 0x80	; 128
 492:	34 00       	.word	0x0034	; ????
 494:	03 0e       	add	r0, r19
 496:	3a 0b       	sbc	r19, r26
 498:	3b 0b       	sbc	r19, r27
 49a:	49 13       	cpse	r20, r25
 49c:	3f 0c       	add	r3, r15
 49e:	02 0a       	sbc	r0, r18
 4a0:	00 00       	nop
 4a2:	49 34       	cpi	r20, 0x49	; 73
 4a4:	00 03       	mulsu	r16, r16
 4a6:	0e 3a       	cpi	r16, 0xAE	; 174
 4a8:	0b 3b       	cpi	r16, 0xBB	; 187
 4aa:	0b 49       	sbci	r16, 0x9B	; 155
 4ac:	13 3f       	cpi	r17, 0xF3	; 243
 4ae:	0c 02       	muls	r16, r28
 4b0:	0a 00       	.word	0x000a	; ????
 4b2:	00 4a       	sbci	r16, 0xA0	; 160
 4b4:	34 00       	.word	0x0034	; ????
 4b6:	03 0e       	add	r0, r19
 4b8:	3a 0b       	sbc	r19, r26
 4ba:	3b 0b       	sbc	r19, r27
 4bc:	49 13       	cpse	r20, r25
 4be:	3f 0c       	add	r3, r15
 4c0:	02 0a       	sbc	r0, r18
 4c2:	00 00       	nop
 4c4:	4b 34       	cpi	r20, 0x4B	; 75
 4c6:	00 03       	mulsu	r16, r16
 4c8:	0e 3a       	cpi	r16, 0xAE	; 174
 4ca:	0b 3b       	cpi	r16, 0xBB	; 187
 4cc:	0b 49       	sbci	r16, 0x9B	; 155
 4ce:	13 3f       	cpi	r17, 0xF3	; 243
 4d0:	0c 02       	muls	r16, r28
 4d2:	0a 00       	.word	0x000a	; ????
 4d4:	00 4c       	sbci	r16, 0xC0	; 192
 4d6:	34 00       	.word	0x0034	; ????
 4d8:	03 0e       	add	r0, r19
 4da:	3a 0b       	sbc	r19, r26
 4dc:	3b 0b       	sbc	r19, r27
 4de:	49 13       	cpse	r20, r25
 4e0:	3f 0c       	add	r3, r15
 4e2:	02 0a       	sbc	r0, r18
 4e4:	00 00       	nop
 4e6:	4d 34       	cpi	r20, 0x4D	; 77
 4e8:	00 03       	mulsu	r16, r16
 4ea:	0e 3a       	cpi	r16, 0xAE	; 174
 4ec:	0b 3b       	cpi	r16, 0xBB	; 187
 4ee:	0b 49       	sbci	r16, 0x9B	; 155
 4f0:	13 3f       	cpi	r17, 0xF3	; 243
 4f2:	0c 02       	muls	r16, r28
 4f4:	0a 00       	.word	0x000a	; ????
 4f6:	00 4e       	sbci	r16, 0xE0	; 224
 4f8:	34 00       	.word	0x0034	; ????
 4fa:	03 0e       	add	r0, r19
 4fc:	3a 0b       	sbc	r19, r26
 4fe:	3b 0b       	sbc	r19, r27
 500:	49 13       	cpse	r20, r25
 502:	3f 0c       	add	r3, r15
 504:	02 0a       	sbc	r0, r18
 506:	00 00       	nop
 508:	4f 34       	cpi	r20, 0x4F	; 79
 50a:	00 03       	mulsu	r16, r16
 50c:	0e 3a       	cpi	r16, 0xAE	; 174
 50e:	0b 3b       	cpi	r16, 0xBB	; 187
 510:	0b 49       	sbci	r16, 0x9B	; 155
 512:	13 3f       	cpi	r17, 0xF3	; 243
 514:	0c 02       	muls	r16, r28
 516:	0a 00       	.word	0x000a	; ????
 518:	00 50       	subi	r16, 0x00	; 0
 51a:	34 00       	.word	0x0034	; ????
 51c:	03 0e       	add	r0, r19
 51e:	3a 0b       	sbc	r19, r26
 520:	3b 0b       	sbc	r19, r27
 522:	49 13       	cpse	r20, r25
 524:	3f 0c       	add	r3, r15
 526:	02 0a       	sbc	r0, r18
 528:	00 00       	nop
 52a:	51 34       	cpi	r21, 0x41	; 65
 52c:	00 03       	mulsu	r16, r16
 52e:	0e 3a       	cpi	r16, 0xAE	; 174
 530:	0b 3b       	cpi	r16, 0xBB	; 187
 532:	0b 49       	sbci	r16, 0x9B	; 155
 534:	13 3f       	cpi	r17, 0xF3	; 243
 536:	0c 02       	muls	r16, r28
 538:	0a 00       	.word	0x000a	; ????
 53a:	00 52       	subi	r16, 0x20	; 32
 53c:	34 00       	.word	0x0034	; ????
 53e:	03 0e       	add	r0, r19
 540:	3a 0b       	sbc	r19, r26
 542:	3b 0b       	sbc	r19, r27
 544:	49 13       	cpse	r20, r25
 546:	3f 0c       	add	r3, r15
 548:	02 0a       	sbc	r0, r18
 54a:	00 00       	nop
 54c:	53 34       	cpi	r21, 0x43	; 67
 54e:	00 03       	mulsu	r16, r16
 550:	0e 3a       	cpi	r16, 0xAE	; 174
 552:	0b 3b       	cpi	r16, 0xBB	; 187
 554:	0b 49       	sbci	r16, 0x9B	; 155
 556:	13 3f       	cpi	r17, 0xF3	; 243
 558:	0c 02       	muls	r16, r28
 55a:	0a 00       	.word	0x000a	; ????
 55c:	00 54       	subi	r16, 0x40	; 64
 55e:	34 00       	.word	0x0034	; ????
 560:	03 0e       	add	r0, r19
 562:	3a 0b       	sbc	r19, r26
 564:	3b 0b       	sbc	r19, r27
 566:	49 13       	cpse	r20, r25
 568:	3f 0c       	add	r3, r15
 56a:	02 0a       	sbc	r0, r18
 56c:	00 00       	nop
 56e:	55 34       	cpi	r21, 0x45	; 69
 570:	00 03       	mulsu	r16, r16
 572:	0e 3a       	cpi	r16, 0xAE	; 174
 574:	0b 3b       	cpi	r16, 0xBB	; 187
 576:	0b 49       	sbci	r16, 0x9B	; 155
 578:	13 3f       	cpi	r17, 0xF3	; 243
 57a:	0c 02       	muls	r16, r28
 57c:	0a 00       	.word	0x000a	; ????
 57e:	00 56       	subi	r16, 0x60	; 96
 580:	34 00       	.word	0x0034	; ????
 582:	03 0e       	add	r0, r19
 584:	3a 0b       	sbc	r19, r26
 586:	3b 0b       	sbc	r19, r27
 588:	49 13       	cpse	r20, r25
 58a:	3f 0c       	add	r3, r15
 58c:	02 0a       	sbc	r0, r18
 58e:	00 00       	nop
 590:	57 34       	cpi	r21, 0x47	; 71
 592:	00 03       	mulsu	r16, r16
 594:	0e 3a       	cpi	r16, 0xAE	; 174
 596:	0b 3b       	cpi	r16, 0xBB	; 187
 598:	0b 49       	sbci	r16, 0x9B	; 155
 59a:	13 3f       	cpi	r17, 0xF3	; 243
 59c:	0c 02       	muls	r16, r28
 59e:	0a 00       	.word	0x000a	; ????
 5a0:	00 58       	subi	r16, 0x80	; 128
 5a2:	34 00       	.word	0x0034	; ????
 5a4:	03 0e       	add	r0, r19
 5a6:	3a 0b       	sbc	r19, r26
 5a8:	3b 0b       	sbc	r19, r27
 5aa:	49 13       	cpse	r20, r25
 5ac:	3f 0c       	add	r3, r15
 5ae:	02 0a       	sbc	r0, r18
 5b0:	00 00       	nop
 5b2:	59 34       	cpi	r21, 0x49	; 73
 5b4:	00 03       	mulsu	r16, r16
 5b6:	0e 3a       	cpi	r16, 0xAE	; 174
 5b8:	0b 3b       	cpi	r16, 0xBB	; 187
 5ba:	0b 49       	sbci	r16, 0x9B	; 155
 5bc:	13 3f       	cpi	r17, 0xF3	; 243
 5be:	0c 02       	muls	r16, r28
 5c0:	0a 00       	.word	0x000a	; ????
 5c2:	00 5a       	subi	r16, 0xA0	; 160
 5c4:	34 00       	.word	0x0034	; ????
 5c6:	03 0e       	add	r0, r19
 5c8:	3a 0b       	sbc	r19, r26
 5ca:	3b 0b       	sbc	r19, r27
 5cc:	49 13       	cpse	r20, r25
 5ce:	3f 0c       	add	r3, r15
 5d0:	02 0a       	sbc	r0, r18
 5d2:	00 00       	nop
 5d4:	5b 34       	cpi	r21, 0x4B	; 75
 5d6:	00 03       	mulsu	r16, r16
 5d8:	0e 3a       	cpi	r16, 0xAE	; 174
 5da:	0b 3b       	cpi	r16, 0xBB	; 187
 5dc:	0b 49       	sbci	r16, 0x9B	; 155
 5de:	13 3f       	cpi	r17, 0xF3	; 243
 5e0:	0c 02       	muls	r16, r28
 5e2:	0a 00       	.word	0x000a	; ????
 5e4:	00 5c       	subi	r16, 0xC0	; 192
 5e6:	34 00       	.word	0x0034	; ????
 5e8:	03 0e       	add	r0, r19
 5ea:	3a 0b       	sbc	r19, r26
 5ec:	3b 0b       	sbc	r19, r27
 5ee:	49 13       	cpse	r20, r25
 5f0:	3f 0c       	add	r3, r15
 5f2:	02 0a       	sbc	r0, r18
 5f4:	00 00       	nop
 5f6:	5d 34       	cpi	r21, 0x4D	; 77
 5f8:	00 03       	mulsu	r16, r16
 5fa:	0e 3a       	cpi	r16, 0xAE	; 174
 5fc:	0b 3b       	cpi	r16, 0xBB	; 187
 5fe:	0b 49       	sbci	r16, 0x9B	; 155
 600:	13 3f       	cpi	r17, 0xF3	; 243
 602:	0c 02       	muls	r16, r28
 604:	0a 00       	.word	0x000a	; ????
 606:	00 5e       	subi	r16, 0xE0	; 224
 608:	34 00       	.word	0x0034	; ????
 60a:	03 0e       	add	r0, r19
 60c:	3a 0b       	sbc	r19, r26
 60e:	3b 0b       	sbc	r19, r27
 610:	49 13       	cpse	r20, r25
 612:	3f 0c       	add	r3, r15
 614:	02 0a       	sbc	r0, r18
 616:	00 00       	nop
 618:	5f 34       	cpi	r21, 0x4F	; 79
 61a:	00 03       	mulsu	r16, r16
 61c:	0e 3a       	cpi	r16, 0xAE	; 174
 61e:	0b 3b       	cpi	r16, 0xBB	; 187
 620:	0b 49       	sbci	r16, 0x9B	; 155
 622:	13 3f       	cpi	r17, 0xF3	; 243
 624:	0c 02       	muls	r16, r28
 626:	0a 00       	.word	0x000a	; ????
 628:	00 60       	ori	r16, 0x00	; 0
 62a:	34 00       	.word	0x0034	; ????
 62c:	03 0e       	add	r0, r19
 62e:	3a 0b       	sbc	r19, r26
 630:	3b 0b       	sbc	r19, r27
 632:	49 13       	cpse	r20, r25
 634:	3f 0c       	add	r3, r15
 636:	02 0a       	sbc	r0, r18
 638:	00 00       	nop
 63a:	61 34       	cpi	r22, 0x41	; 65
 63c:	00 03       	mulsu	r16, r16
 63e:	0e 3a       	cpi	r16, 0xAE	; 174
 640:	0b 3b       	cpi	r16, 0xBB	; 187
 642:	0b 49       	sbci	r16, 0x9B	; 155
 644:	13 3f       	cpi	r17, 0xF3	; 243
 646:	0c 02       	muls	r16, r28
 648:	0a 00       	.word	0x000a	; ????
 64a:	00 62       	ori	r16, 0x20	; 32
 64c:	34 00       	.word	0x0034	; ????
 64e:	03 0e       	add	r0, r19
 650:	3a 0b       	sbc	r19, r26
 652:	3b 0b       	sbc	r19, r27
 654:	49 13       	cpse	r20, r25
 656:	3f 0c       	add	r3, r15
 658:	02 0a       	sbc	r0, r18
 65a:	00 00       	nop
 65c:	63 34       	cpi	r22, 0x43	; 67
 65e:	00 03       	mulsu	r16, r16
 660:	0e 3a       	cpi	r16, 0xAE	; 174
 662:	0b 3b       	cpi	r16, 0xBB	; 187
 664:	0b 49       	sbci	r16, 0x9B	; 155
 666:	13 3f       	cpi	r17, 0xF3	; 243
 668:	0c 02       	muls	r16, r28
 66a:	0a 00       	.word	0x000a	; ????
 66c:	00 64       	ori	r16, 0x40	; 64
 66e:	34 00       	.word	0x0034	; ????
 670:	03 0e       	add	r0, r19
 672:	3a 0b       	sbc	r19, r26
 674:	3b 0b       	sbc	r19, r27
 676:	49 13       	cpse	r20, r25
 678:	3f 0c       	add	r3, r15
 67a:	02 0a       	sbc	r0, r18
 67c:	00 00       	nop
 67e:	65 34       	cpi	r22, 0x45	; 69
 680:	00 03       	mulsu	r16, r16
 682:	0e 3a       	cpi	r16, 0xAE	; 174
 684:	0b 3b       	cpi	r16, 0xBB	; 187
 686:	0b 49       	sbci	r16, 0x9B	; 155
 688:	13 3f       	cpi	r17, 0xF3	; 243
 68a:	0c 02       	muls	r16, r28
 68c:	0a 00       	.word	0x000a	; ????
 68e:	00 66       	ori	r16, 0x60	; 96
 690:	34 00       	.word	0x0034	; ????
 692:	03 0e       	add	r0, r19
 694:	3a 0b       	sbc	r19, r26
 696:	3b 0b       	sbc	r19, r27
 698:	49 13       	cpse	r20, r25
 69a:	3f 0c       	add	r3, r15
 69c:	02 0a       	sbc	r0, r18
 69e:	00 00       	nop
 6a0:	67 34       	cpi	r22, 0x47	; 71
 6a2:	00 03       	mulsu	r16, r16
 6a4:	0e 3a       	cpi	r16, 0xAE	; 174
 6a6:	0b 3b       	cpi	r16, 0xBB	; 187
 6a8:	0b 49       	sbci	r16, 0x9B	; 155
 6aa:	13 3f       	cpi	r17, 0xF3	; 243
 6ac:	0c 02       	muls	r16, r28
 6ae:	0a 00       	.word	0x000a	; ????
 6b0:	00 68       	ori	r16, 0x80	; 128
 6b2:	34 00       	.word	0x0034	; ????
 6b4:	03 0e       	add	r0, r19
 6b6:	3a 0b       	sbc	r19, r26
 6b8:	3b 0b       	sbc	r19, r27
 6ba:	49 13       	cpse	r20, r25
 6bc:	3f 0c       	add	r3, r15
 6be:	02 0a       	sbc	r0, r18
 6c0:	00 00       	nop
 6c2:	69 34       	cpi	r22, 0x49	; 73
 6c4:	00 03       	mulsu	r16, r16
 6c6:	0e 3a       	cpi	r16, 0xAE	; 174
 6c8:	0b 3b       	cpi	r16, 0xBB	; 187
 6ca:	0b 49       	sbci	r16, 0x9B	; 155
 6cc:	13 3f       	cpi	r17, 0xF3	; 243
 6ce:	0c 02       	muls	r16, r28
 6d0:	0a 00       	.word	0x000a	; ????
 6d2:	00 6a       	ori	r16, 0xA0	; 160
 6d4:	34 00       	.word	0x0034	; ????
 6d6:	03 0e       	add	r0, r19
 6d8:	3a 0b       	sbc	r19, r26
 6da:	3b 0b       	sbc	r19, r27
 6dc:	49 13       	cpse	r20, r25
 6de:	3f 0c       	add	r3, r15
 6e0:	02 0a       	sbc	r0, r18
 6e2:	00 00       	nop
 6e4:	6b 34       	cpi	r22, 0x4B	; 75
 6e6:	00 03       	mulsu	r16, r16
 6e8:	0e 3a       	cpi	r16, 0xAE	; 174
 6ea:	0b 3b       	cpi	r16, 0xBB	; 187
 6ec:	0b 49       	sbci	r16, 0x9B	; 155
 6ee:	13 3f       	cpi	r17, 0xF3	; 243
 6f0:	0c 02       	muls	r16, r28
 6f2:	0a 00       	.word	0x000a	; ????
 6f4:	00 6c       	ori	r16, 0xC0	; 192
 6f6:	34 00       	.word	0x0034	; ????
 6f8:	03 0e       	add	r0, r19
 6fa:	3a 0b       	sbc	r19, r26
 6fc:	3b 0b       	sbc	r19, r27
 6fe:	49 13       	cpse	r20, r25
 700:	3f 0c       	add	r3, r15
 702:	02 0a       	sbc	r0, r18
 704:	00 00       	nop
 706:	6d 34       	cpi	r22, 0x4D	; 77
 708:	00 03       	mulsu	r16, r16
 70a:	0e 3a       	cpi	r16, 0xAE	; 174
 70c:	0b 3b       	cpi	r16, 0xBB	; 187
 70e:	0b 49       	sbci	r16, 0x9B	; 155
 710:	13 3f       	cpi	r17, 0xF3	; 243
 712:	0c 02       	muls	r16, r28
 714:	0a 00       	.word	0x000a	; ????
 716:	00 00       	nop
 718:	01 11       	cpse	r16, r1
 71a:	01 25       	eor	r16, r1
 71c:	0e 13       	cpse	r16, r30
 71e:	0b 03       	fmul	r16, r19
 720:	0e 55       	subi	r16, 0x5E	; 94
 722:	06 11       	cpse	r16, r6
 724:	01 52       	subi	r16, 0x21	; 33
 726:	01 10       	cpse	r0, r1
 728:	06 00       	.word	0x0006	; ????
 72a:	00 02       	muls	r16, r16
 72c:	24 00       	.word	0x0024	; ????
 72e:	0b 0b       	sbc	r16, r27
 730:	3e 0b       	sbc	r19, r30
 732:	03 0e       	add	r0, r19
 734:	00 00       	nop
 736:	03 16       	cp	r0, r19
 738:	00 03       	mulsu	r16, r16
 73a:	0e 3a       	cpi	r16, 0xAE	; 174
 73c:	0b 3b       	cpi	r16, 0xBB	; 187
 73e:	0b 49       	sbci	r16, 0x9B	; 155
 740:	13 00       	.word	0x0013	; ????
 742:	00 04       	cpc	r0, r0
 744:	24 00       	.word	0x0024	; ????
 746:	0b 0b       	sbc	r16, r27
 748:	3e 0b       	sbc	r19, r30
 74a:	03 08       	sbc	r0, r3
 74c:	00 00       	nop
 74e:	05 0f       	add	r16, r21
 750:	00 0b       	sbc	r16, r16
 752:	0b 03       	fmul	r16, r19
 754:	0e 00       	.word	0x000e	; ????
 756:	00 06       	cpc	r0, r16
 758:	0f 00       	.word	0x000f	; ????
 75a:	0b 0b       	sbc	r16, r27
 75c:	49 13       	cpse	r20, r25
 75e:	00 00       	nop
 760:	07 2e       	mov	r0, r23
 762:	01 03       	mulsu	r16, r17
 764:	0e 3a       	cpi	r16, 0xAE	; 174
 766:	0b 3b       	cpi	r16, 0xBB	; 187
 768:	0b 27       	eor	r16, r27
 76a:	0c 20       	and	r0, r12
 76c:	0b 01       	movw	r0, r22
 76e:	13 00       	.word	0x0013	; ????
 770:	00 08       	sbc	r0, r0
 772:	05 00       	.word	0x0005	; ????
 774:	03 08       	sbc	r0, r3
 776:	3a 0b       	sbc	r19, r26
 778:	3b 0b       	sbc	r19, r27
 77a:	49 13       	cpse	r20, r25
 77c:	00 00       	nop
 77e:	09 2e       	mov	r0, r25
 780:	00 03       	mulsu	r16, r16
 782:	0e 3a       	cpi	r16, 0xAE	; 174
 784:	0b 3b       	cpi	r16, 0xBB	; 187
 786:	0b 20       	and	r0, r11
 788:	0b 00       	.word	0x000b	; ????
 78a:	00 0a       	sbc	r0, r16
 78c:	2e 01       	movw	r4, r28
 78e:	3f 0c       	add	r3, r15
 790:	03 0e       	add	r0, r19
 792:	3a 0b       	sbc	r19, r26
 794:	3b 0b       	sbc	r19, r27
 796:	27 0c       	add	r2, r7
 798:	20 0b       	sbc	r18, r16
 79a:	01 13       	cpse	r16, r17
 79c:	00 00       	nop
 79e:	0b 34       	cpi	r16, 0x4B	; 75
 7a0:	00 03       	mulsu	r16, r16
 7a2:	08 3a       	cpi	r16, 0xA8	; 168
 7a4:	0b 3b       	cpi	r16, 0xBB	; 187
 7a6:	0b 49       	sbci	r16, 0x9B	; 155
 7a8:	13 00       	.word	0x0013	; ????
 7aa:	00 0c       	add	r0, r0
 7ac:	2e 01       	movw	r4, r28
 7ae:	31 13       	cpse	r19, r17
 7b0:	11 01       	movw	r2, r2
 7b2:	12 01       	movw	r2, r4
 7b4:	40 0a       	sbc	r4, r16
 7b6:	97 42       	sbci	r25, 0x27	; 39
 7b8:	0c 01       	movw	r0, r24
 7ba:	13 00       	.word	0x0013	; ????
 7bc:	00 0d       	add	r16, r0
 7be:	05 00       	.word	0x0005	; ????
 7c0:	31 13       	cpse	r19, r17
 7c2:	02 06       	cpc	r0, r18
 7c4:	00 00       	nop
 7c6:	0e 34       	cpi	r16, 0x4E	; 78
 7c8:	00 31       	cpi	r16, 0x10	; 16
 7ca:	13 02       	muls	r17, r19
 7cc:	06 00       	.word	0x0006	; ????
 7ce:	00 0f       	add	r16, r16
 7d0:	1d 01       	movw	r2, r26
 7d2:	31 13       	cpse	r19, r17
 7d4:	52 01       	movw	r10, r4
 7d6:	55 06       	cpc	r5, r21
 7d8:	58 0b       	sbc	r21, r24
 7da:	59 0b       	sbc	r21, r25
 7dc:	01 13       	cpse	r16, r17
 7de:	00 00       	nop
 7e0:	10 1d       	adc	r17, r0
 7e2:	01 31       	cpi	r16, 0x11	; 17
 7e4:	13 52       	subi	r17, 0x23	; 35
 7e6:	01 55       	subi	r16, 0x51	; 81
 7e8:	06 58       	subi	r16, 0x86	; 134
 7ea:	0b 59       	subi	r16, 0x9B	; 155
 7ec:	0b 00       	.word	0x000b	; ????
 7ee:	00 11       	cpse	r16, r0
 7f0:	2e 01       	movw	r4, r28
 7f2:	3f 0c       	add	r3, r15
 7f4:	03 0e       	add	r0, r19
 7f6:	3a 0b       	sbc	r19, r26
 7f8:	3b 0b       	sbc	r19, r27
 7fa:	27 0c       	add	r2, r7
 7fc:	11 01       	movw	r2, r2
 7fe:	12 01       	movw	r2, r4
 800:	40 0a       	sbc	r4, r16
 802:	97 42       	sbci	r25, 0x27	; 39
 804:	0c 01       	movw	r0, r24
 806:	13 00       	.word	0x0013	; ????
 808:	00 12       	cpse	r0, r16
 80a:	05 00       	.word	0x0005	; ????
 80c:	03 0e       	add	r0, r19
 80e:	3a 0b       	sbc	r19, r26
 810:	3b 0b       	sbc	r19, r27
 812:	49 13       	cpse	r20, r25
 814:	02 06       	cpc	r0, r18
 816:	00 00       	nop
 818:	13 05       	cpc	r17, r3
 81a:	00 03       	mulsu	r16, r16
 81c:	08 3a       	cpi	r16, 0xA8	; 168
 81e:	0b 3b       	cpi	r16, 0xBB	; 187
 820:	0b 49       	sbci	r16, 0x9B	; 155
 822:	13 02       	muls	r17, r19
 824:	06 00       	.word	0x0006	; ????
 826:	00 14       	cp	r0, r0
 828:	34 00       	.word	0x0034	; ????
 82a:	03 0e       	add	r0, r19
 82c:	3a 0b       	sbc	r19, r26
 82e:	3b 0b       	sbc	r19, r27
 830:	49 13       	cpse	r20, r25
 832:	02 0a       	sbc	r0, r18
 834:	00 00       	nop
 836:	15 1d       	adc	r17, r5
 838:	01 31       	cpi	r16, 0x11	; 17
 83a:	13 11       	cpse	r17, r3
 83c:	01 12       	cpse	r0, r17
 83e:	01 58       	subi	r16, 0x81	; 129
 840:	0b 59       	subi	r16, 0x9B	; 155
 842:	0b 01       	movw	r0, r22
 844:	13 00       	.word	0x0013	; ????
 846:	00 16       	cp	r0, r16
 848:	05 00       	.word	0x0005	; ????
 84a:	31 13       	cpse	r19, r17
 84c:	02 0a       	sbc	r0, r18
 84e:	00 00       	nop
 850:	17 0b       	sbc	r17, r23
 852:	01 11       	cpse	r16, r1
 854:	01 12       	cpse	r0, r17
 856:	01 00       	.word	0x0001	; ????
 858:	00 18       	sub	r0, r0
 85a:	89 82       	std	Y+1, r8	; 0x01
 85c:	01 01       	movw	r0, r2
 85e:	11 01       	movw	r2, r2
 860:	31 13       	cpse	r19, r17
 862:	00 00       	nop
 864:	19 8a       	std	Y+17, r1	; 0x11
 866:	82 01       	movw	r16, r4
 868:	00 02       	muls	r16, r16
 86a:	0a 91       	ld	r16, -Y
 86c:	42 0a       	sbc	r4, r18
 86e:	00 00       	nop
 870:	1a 01       	movw	r2, r20
 872:	01 49       	sbci	r16, 0x91	; 145
 874:	13 01       	movw	r2, r6
 876:	13 00       	.word	0x0013	; ????
 878:	00 1b       	sub	r16, r16
 87a:	21 00       	.word	0x0021	; ????
 87c:	49 13       	cpse	r20, r25
 87e:	2f 0b       	sbc	r18, r31
 880:	00 00       	nop
 882:	1c 2e       	mov	r1, r28
 884:	01 3f       	cpi	r16, 0xF1	; 241
 886:	0c 03       	fmul	r16, r20
 888:	0e 3a       	cpi	r16, 0xAE	; 174
 88a:	0b 3b       	cpi	r16, 0xBB	; 187
 88c:	0b 27       	eor	r16, r27
 88e:	0c 11       	cpse	r16, r12
 890:	01 12       	cpse	r0, r17
 892:	01 40       	sbci	r16, 0x01	; 1
 894:	06 97       	sbiw	r24, 0x06	; 6
 896:	42 0c       	add	r4, r2
 898:	01 13       	cpse	r16, r17
 89a:	00 00       	nop
 89c:	1d 05       	cpc	r17, r13
 89e:	00 03       	mulsu	r16, r16
 8a0:	0e 3a       	cpi	r16, 0xAE	; 174
 8a2:	0b 3b       	cpi	r16, 0xBB	; 187
 8a4:	0b 49       	sbci	r16, 0x9B	; 155
 8a6:	13 02       	muls	r17, r19
 8a8:	0a 00       	.word	0x000a	; ????
 8aa:	00 1e       	adc	r0, r16
 8ac:	18 00       	.word	0x0018	; ????
 8ae:	00 00       	nop
 8b0:	1f 34       	cpi	r17, 0x4F	; 79
 8b2:	00 03       	mulsu	r16, r16
 8b4:	08 3a       	cpi	r16, 0xA8	; 168
 8b6:	0b 3b       	cpi	r16, 0xBB	; 187
 8b8:	0b 49       	sbci	r16, 0x9B	; 155
 8ba:	13 02       	muls	r17, r19
 8bc:	06 00       	.word	0x0006	; ????
 8be:	00 20       	and	r0, r0
 8c0:	2e 01       	movw	r4, r28
 8c2:	3f 0c       	add	r3, r15
 8c4:	03 0e       	add	r0, r19
 8c6:	3a 0b       	sbc	r19, r26
 8c8:	3b 0b       	sbc	r19, r27
 8ca:	11 01       	movw	r2, r2
 8cc:	12 01       	movw	r2, r4
 8ce:	40 0a       	sbc	r4, r16
 8d0:	97 42       	sbci	r25, 0x27	; 39
 8d2:	0c 01       	movw	r0, r24
 8d4:	13 00       	.word	0x0013	; ????
 8d6:	00 21       	and	r16, r0
 8d8:	1d 01       	movw	r2, r26
 8da:	31 13       	cpse	r19, r17
 8dc:	11 01       	movw	r2, r2
 8de:	12 01       	movw	r2, r4
 8e0:	58 0b       	sbc	r21, r24
 8e2:	59 0b       	sbc	r21, r25
 8e4:	00 00       	nop
 8e6:	22 89       	ldd	r18, Z+18	; 0x12
 8e8:	82 01       	movw	r16, r4
 8ea:	00 11       	cpse	r16, r0
 8ec:	01 31       	cpi	r16, 0x11	; 17
 8ee:	13 00       	.word	0x0013	; ????
 8f0:	00 23       	and	r16, r16
 8f2:	05 00       	.word	0x0005	; ????
 8f4:	03 08       	sbc	r0, r3
 8f6:	3a 0b       	sbc	r19, r26
 8f8:	3b 0b       	sbc	r19, r27
 8fa:	49 13       	cpse	r20, r25
 8fc:	02 0a       	sbc	r0, r18
 8fe:	00 00       	nop
 900:	24 2e       	mov	r2, r20
 902:	01 3f       	cpi	r16, 0xF1	; 241
 904:	0c 03       	fmul	r16, r20
 906:	0e 3a       	cpi	r16, 0xAE	; 174
 908:	0b 3b       	cpi	r16, 0xBB	; 187
 90a:	0b 49       	sbci	r16, 0x9B	; 155
 90c:	13 11       	cpse	r17, r3
 90e:	01 12       	cpse	r0, r17
 910:	01 40       	sbci	r16, 0x01	; 1
 912:	0a 97       	sbiw	r24, 0x0a	; 10
 914:	42 0c       	add	r4, r2
 916:	01 13       	cpse	r16, r17
 918:	00 00       	nop
 91a:	25 2e       	mov	r2, r21
 91c:	01 3f       	cpi	r16, 0xF1	; 241
 91e:	0c 03       	fmul	r16, r20
 920:	0e 3a       	cpi	r16, 0xAE	; 174
 922:	0b 3b       	cpi	r16, 0xBB	; 187
 924:	0b 49       	sbci	r16, 0x9B	; 155
 926:	13 3c       	cpi	r17, 0xC3	; 195
 928:	0c 01       	movw	r0, r24
 92a:	13 00       	.word	0x0013	; ????
 92c:	00 26       	eor	r0, r16
 92e:	35 00       	.word	0x0035	; ????
 930:	49 13       	cpse	r20, r25
 932:	00 00       	nop
 934:	27 34       	cpi	r18, 0x47	; 71
 936:	00 03       	mulsu	r16, r16
 938:	0e 3a       	cpi	r16, 0xAE	; 174
 93a:	0b 3b       	cpi	r16, 0xBB	; 187
 93c:	0b 49       	sbci	r16, 0x9B	; 155
 93e:	13 3f       	cpi	r17, 0xF3	; 243
 940:	0c 02       	muls	r16, r28
 942:	0a 00       	.word	0x000a	; ????
 944:	00 28       	or	r0, r0
 946:	2e 00       	.word	0x002e	; ????
 948:	3f 0c       	add	r3, r15
 94a:	3c 0c       	add	r3, r12
 94c:	87 40       	sbci	r24, 0x07	; 7
 94e:	0e 03       	fmul	r16, r22
 950:	0e 3a       	cpi	r16, 0xAE	; 174
 952:	0b 3b       	cpi	r16, 0xBB	; 187
 954:	05 00       	.word	0x0005	; ????
 956:	00 29       	or	r16, r0
 958:	2e 00       	.word	0x002e	; ????
 95a:	3f 0c       	add	r3, r15
 95c:	3c 0c       	add	r3, r12
 95e:	87 40       	sbci	r24, 0x07	; 7
 960:	0e 03       	fmul	r16, r22
 962:	0e 3a       	cpi	r16, 0xAE	; 174
 964:	0b 3b       	cpi	r16, 0xBB	; 187
 966:	0b 00       	.word	0x000b	; ????
 968:	00 00       	nop
 96a:	01 11       	cpse	r16, r1
 96c:	01 25       	eor	r16, r1
 96e:	0e 13       	cpse	r16, r30
 970:	0b 03       	fmul	r16, r19
 972:	0e 55       	subi	r16, 0x5E	; 94
 974:	06 11       	cpse	r16, r6
 976:	01 52       	subi	r16, 0x21	; 33
 978:	01 10       	cpse	r0, r1
 97a:	06 00       	.word	0x0006	; ????
 97c:	00 02       	muls	r16, r16
 97e:	24 00       	.word	0x0024	; ????
 980:	0b 0b       	sbc	r16, r27
 982:	3e 0b       	sbc	r19, r30
 984:	03 0e       	add	r0, r19
 986:	00 00       	nop
 988:	03 16       	cp	r0, r19
 98a:	00 03       	mulsu	r16, r16
 98c:	0e 3a       	cpi	r16, 0xAE	; 174
 98e:	0b 3b       	cpi	r16, 0xBB	; 187
 990:	0b 49       	sbci	r16, 0x9B	; 155
 992:	13 00       	.word	0x0013	; ????
 994:	00 04       	cpc	r0, r0
 996:	24 00       	.word	0x0024	; ????
 998:	0b 0b       	sbc	r16, r27
 99a:	3e 0b       	sbc	r19, r30
 99c:	03 08       	sbc	r0, r3
 99e:	00 00       	nop
 9a0:	05 2e       	mov	r0, r21
 9a2:	01 3f       	cpi	r16, 0xF1	; 241
 9a4:	0c 03       	fmul	r16, r20
 9a6:	0e 3a       	cpi	r16, 0xAE	; 174
 9a8:	0b 3b       	cpi	r16, 0xBB	; 187
 9aa:	0b 27       	eor	r16, r27
 9ac:	0c 11       	cpse	r16, r12
 9ae:	01 12       	cpse	r0, r17
 9b0:	01 40       	sbci	r16, 0x01	; 1
 9b2:	06 97       	sbiw	r24, 0x06	; 6
 9b4:	42 0c       	add	r4, r2
 9b6:	01 13       	cpse	r16, r17
 9b8:	00 00       	nop
 9ba:	06 05       	cpc	r16, r6
 9bc:	00 03       	mulsu	r16, r16
 9be:	0e 3a       	cpi	r16, 0xAE	; 174
 9c0:	0b 3b       	cpi	r16, 0xBB	; 187
 9c2:	0b 49       	sbci	r16, 0x9B	; 155
 9c4:	13 02       	muls	r17, r19
 9c6:	06 00       	.word	0x0006	; ????
 9c8:	00 07       	cpc	r16, r16
 9ca:	34 00       	.word	0x0034	; ????
 9cc:	03 0e       	add	r0, r19
 9ce:	3a 0b       	sbc	r19, r26
 9d0:	3b 0b       	sbc	r19, r27
 9d2:	49 13       	cpse	r20, r25
 9d4:	02 06       	cpc	r0, r18
 9d6:	00 00       	nop
 9d8:	08 34       	cpi	r16, 0x48	; 72
 9da:	00 03       	mulsu	r16, r16
 9dc:	08 3a       	cpi	r16, 0xA8	; 168
 9de:	0b 3b       	cpi	r16, 0xBB	; 187
 9e0:	0b 49       	sbci	r16, 0x9B	; 155
 9e2:	13 02       	muls	r17, r19
 9e4:	06 00       	.word	0x0006	; ????
 9e6:	00 09       	sbc	r16, r0
 9e8:	0b 01       	movw	r0, r22
 9ea:	11 01       	movw	r2, r2
 9ec:	12 01       	movw	r2, r4
 9ee:	01 13       	cpse	r16, r17
 9f0:	00 00       	nop
 9f2:	0a 0b       	sbc	r16, r26
 9f4:	01 11       	cpse	r16, r1
 9f6:	01 12       	cpse	r0, r17
 9f8:	01 00       	.word	0x0001	; ????
 9fa:	00 0b       	sbc	r16, r16
 9fc:	0b 01       	movw	r0, r22
 9fe:	55 06       	cpc	r5, r21
 a00:	00 00       	nop
 a02:	0c 89       	ldd	r16, Y+20	; 0x14
 a04:	82 01       	movw	r16, r4
 a06:	00 11       	cpse	r16, r0
 a08:	01 31       	cpi	r16, 0x11	; 17
 a0a:	13 00       	.word	0x0013	; ????
 a0c:	00 0d       	add	r16, r0
 a0e:	0f 00       	.word	0x000f	; ????
 a10:	0b 0b       	sbc	r16, r27
 a12:	49 13       	cpse	r20, r25
 a14:	00 00       	nop
 a16:	0e 2e       	mov	r0, r30
 a18:	01 3f       	cpi	r16, 0xF1	; 241
 a1a:	0c 03       	fmul	r16, r20
 a1c:	0e 3a       	cpi	r16, 0xAE	; 174
 a1e:	0b 3b       	cpi	r16, 0xBB	; 187
 a20:	0b 11       	cpse	r16, r11
 a22:	01 12       	cpse	r0, r17
 a24:	01 40       	sbci	r16, 0x01	; 1
 a26:	0a 97       	sbiw	r24, 0x0a	; 10
 a28:	42 0c       	add	r4, r2
 a2a:	01 13       	cpse	r16, r17
 a2c:	00 00       	nop
 a2e:	0f 34       	cpi	r16, 0x4F	; 79
 a30:	00 03       	mulsu	r16, r16
 a32:	0e 3a       	cpi	r16, 0xAE	; 174
 a34:	0b 3b       	cpi	r16, 0xBB	; 187
 a36:	0b 49       	sbci	r16, 0x9B	; 155
 a38:	13 1c       	adc	r1, r3
 a3a:	0b 00       	.word	0x000b	; ????
 a3c:	00 10       	cpse	r0, r0
 a3e:	89 82       	std	Y+1, r8	; 0x01
 a40:	01 01       	movw	r0, r2
 a42:	11 01       	movw	r2, r2
 a44:	31 13       	cpse	r19, r17
 a46:	01 13       	cpse	r16, r17
 a48:	00 00       	nop
 a4a:	11 8a       	std	Z+17, r1	; 0x11
 a4c:	82 01       	movw	r16, r4
 a4e:	00 02       	muls	r16, r16
 a50:	0a 91       	ld	r16, -Y
 a52:	42 0a       	sbc	r4, r18
 a54:	00 00       	nop
 a56:	12 89       	ldd	r17, Z+18	; 0x12
 a58:	82 01       	movw	r16, r4
 a5a:	01 11       	cpse	r16, r1
 a5c:	01 95       	neg	r16
 a5e:	42 0c       	add	r4, r2
 a60:	31 13       	cpse	r19, r17
 a62:	00 00       	nop
 a64:	13 2e       	mov	r1, r19
 a66:	00 3f       	cpi	r16, 0xF0	; 240
 a68:	0c 3c       	cpi	r16, 0xCC	; 204
 a6a:	0c 87       	std	Y+12, r16	; 0x0c
 a6c:	40 0e       	add	r4, r16
 a6e:	03 0e       	add	r0, r19
 a70:	3a 0b       	sbc	r19, r26
 a72:	3b 0b       	sbc	r19, r27
 a74:	00 00       	nop
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	16 00       	.word	0x0016	; ????
   2:	00 00       	nop
   4:	02 00       	.word	0x0002	; ????
   6:	10 00       	.word	0x0010	; ????
   8:	00 00       	nop
   a:	02 01       	movw	r0, r4
   c:	fb 0e       	add	r15, r27
   e:	0a 00       	.word	0x000a	; ????
  10:	01 01       	movw	r0, r2
  12:	01 01       	movw	r0, r2
  14:	00 00       	nop
  16:	00 01       	movw	r0, r0
  18:	00 00       	nop
  1a:	50 02       	muls	r21, r16
  1c:	00 00       	nop
  1e:	02 00       	.word	0x0002	; ????
  20:	aa 00       	.word	0x00aa	; ????
  22:	00 00       	nop
  24:	02 01       	movw	r0, r4
  26:	fb 0e       	add	r15, r27
  28:	0a 00       	.word	0x000a	; ????
  2a:	01 01       	movw	r0, r2
  2c:	01 01       	movw	r0, r2
  2e:	00 00       	nop
  30:	00 01       	movw	r0, r0
  32:	2f 68       	ori	r18, 0x8F	; 143
  34:	6f 6d       	ori	r22, 0xDF	; 223
  36:	65 2f       	mov	r22, r21
  38:	66 61       	ori	r22, 0x16	; 22
  3a:	6e 68       	ori	r22, 0x8E	; 142
  3c:	63 2f       	mov	r22, r19
  3e:	77 61       	ori	r23, 0x17	; 23
  40:	73 6d       	ori	r23, 0xD3	; 211
  42:	2d 61       	ori	r18, 0x1D	; 29
  44:	6f 74       	andi	r22, 0x4F	; 79
  46:	2f 61       	ori	r18, 0x1F	; 31
  48:	70 70       	andi	r23, 0x00	; 0
  4a:	2f 62       	ori	r18, 0x2F	; 47
  4c:	65 6e       	ori	r22, 0xE5	; 229
  4e:	63 68       	ori	r22, 0x83	; 131
  50:	6d 61       	ori	r22, 0x1D	; 29
  52:	72 6b       	ori	r23, 0xB2	; 178
  54:	00 2f       	mov	r16, r16
  56:	75 73       	andi	r23, 0x35	; 53
  58:	72 2f       	mov	r23, r18
  5a:	6c 69       	ori	r22, 0x9C	; 156
  5c:	62 2f       	mov	r22, r18
  5e:	61 76       	andi	r22, 0x61	; 97
  60:	72 2f       	mov	r23, r18
  62:	69 6e       	ori	r22, 0xE9	; 233
  64:	63 6c       	ori	r22, 0xC3	; 195
  66:	75 64       	ori	r23, 0x45	; 69
  68:	65 00       	.word	0x0065	; ????
  6a:	2f 75       	andi	r18, 0x5F	; 95
  6c:	73 72       	andi	r23, 0x23	; 35
  6e:	2f 6c       	ori	r18, 0xCF	; 207
  70:	69 62       	ori	r22, 0x29	; 41
  72:	2f 67       	ori	r18, 0x7F	; 127
  74:	63 63       	ori	r22, 0x33	; 51
  76:	2f 61       	ori	r18, 0x1F	; 31
  78:	76 72       	andi	r23, 0x26	; 38
  7a:	2f 35       	cpi	r18, 0x5F	; 95
  7c:	2e 34       	cpi	r18, 0x4E	; 78
  7e:	2e 30       	cpi	r18, 0x0E	; 14
  80:	2f 69       	ori	r18, 0x9F	; 159
  82:	6e 63       	ori	r22, 0x3E	; 62
  84:	6c 75       	andi	r22, 0x5C	; 92
  86:	64 65       	ori	r22, 0x54	; 84
  88:	00 00       	nop
  8a:	62 65       	ori	r22, 0x52	; 82
  8c:	6e 63       	ori	r22, 0x3E	; 62
  8e:	68 6d       	ori	r22, 0xD8	; 216
  90:	61 72       	andi	r22, 0x21	; 33
  92:	6b 2e       	mov	r6, r27
  94:	63 00       	.word	0x0063	; ????
  96:	01 00       	.word	0x0001	; ????
  98:	00 41       	sbci	r16, 0x10	; 16
  9a:	76 72       	andi	r23, 0x26	; 38
  9c:	6f 72       	andi	r22, 0x2F	; 47
  9e:	61 50       	subi	r22, 0x01	; 1
  a0:	72 69       	ori	r23, 0x92	; 146
  a2:	6e 74       	andi	r22, 0x4E	; 78
  a4:	2e 68       	ori	r18, 0x8E	; 142
  a6:	00 01       	movw	r0, r0
  a8:	00 00       	nop
  aa:	73 74       	andi	r23, 0x43	; 67
  ac:	64 69       	ori	r22, 0x94	; 148
  ae:	6e 74       	andi	r22, 0x4E	; 78
  b0:	2e 68       	ori	r18, 0x8E	; 142
  b2:	00 02       	muls	r16, r16
  b4:	00 00       	nop
  b6:	73 74       	andi	r23, 0x43	; 67
  b8:	64 61       	ori	r22, 0x14	; 20
  ba:	72 67       	ori	r23, 0x72	; 114
  bc:	2e 68       	ori	r18, 0x8E	; 142
  be:	00 03       	mulsu	r16, r16
  c0:	00 00       	nop
  c2:	73 74       	andi	r23, 0x43	; 67
  c4:	64 69       	ori	r22, 0x94	; 148
  c6:	6f 2e       	mov	r6, r31
  c8:	68 00       	.word	0x0068	; ????
  ca:	02 00       	.word	0x0002	; ????
  cc:	00 00       	nop
  ce:	00 05       	cpc	r16, r0
  d0:	02 00       	.word	0x0002	; ????
  d2:	00 00       	nop
  d4:	00 14       	cp	r0, r0
  d6:	03 02       	muls	r16, r19
  d8:	09 00       	.word	0x0009	; ????
  da:	00 01       	movw	r0, r0
  dc:	04 02       	muls	r16, r20
  de:	03 d6       	rcall	.+3078   	; 0xce6 <__data_load_end+0x876>
  e0:	00 09       	sbc	r16, r0
  e2:	00 00       	nop
  e4:	01 03       	mulsu	r16, r17
  e6:	04 09       	sbc	r16, r4
  e8:	00 00       	nop
  ea:	01 03       	mulsu	r16, r17
  ec:	7c 09       	sbc	r23, r12
  ee:	00 00       	nop
  f0:	01 04       	cpc	r0, r1
  f2:	01 03       	mulsu	r16, r17
  f4:	aa 7f       	andi	r26, 0xFA	; 250
  f6:	09 00       	.word	0x0009	; ????
  f8:	00 01       	movw	r0, r0
  fa:	03 01       	movw	r0, r6
  fc:	09 00       	.word	0x0009	; ????
  fe:	00 01       	movw	r0, r0
 100:	04 02       	muls	r16, r20
 102:	03 d5       	rcall	.+2566   	; 0xb0a <__data_load_end+0x69a>
 104:	00 09       	sbc	r16, r0
 106:	00 00       	nop
 108:	01 04       	cpc	r0, r1
 10a:	01 03       	mulsu	r16, r17
 10c:	aa 7f       	andi	r26, 0xFA	; 250
 10e:	09 00       	.word	0x0009	; ????
 110:	00 01       	movw	r0, r0
 112:	09 00       	.word	0x0009	; ????
 114:	00 00       	nop
 116:	01 01       	movw	r0, r2
 118:	00 05       	cpc	r16, r0
 11a:	02 00       	.word	0x0002	; ????
 11c:	00 00       	nop
 11e:	00 03       	mulsu	r16, r16
 120:	11 01       	movw	r2, r2
 122:	03 02       	muls	r16, r19
 124:	09 00       	.word	0x0009	; ????
 126:	00 01       	movw	r0, r0
 128:	03 74       	andi	r16, 0x43	; 67
 12a:	09 00       	.word	0x0009	; ????
 12c:	00 01       	movw	r0, r0
 12e:	04 02       	muls	r16, r20
 130:	03 d6       	rcall	.+3078   	; 0xd38 <__data_load_end+0x8c8>
 132:	00 09       	sbc	r16, r0
 134:	00 00       	nop
 136:	01 03       	mulsu	r16, r17
 138:	04 09       	sbc	r16, r4
 13a:	00 00       	nop
 13c:	01 03       	mulsu	r16, r17
 13e:	7c 09       	sbc	r23, r12
 140:	00 00       	nop
 142:	01 04       	cpc	r0, r1
 144:	01 03       	mulsu	r16, r17
 146:	aa 7f       	andi	r26, 0xFA	; 250
 148:	09 00       	.word	0x0009	; ????
 14a:	00 01       	movw	r0, r0
 14c:	03 01       	movw	r0, r6
 14e:	09 00       	.word	0x0009	; ????
 150:	00 01       	movw	r0, r0
 152:	04 02       	muls	r16, r20
 154:	03 d5       	rcall	.+2566   	; 0xb5c <__data_load_end+0x6ec>
 156:	00 09       	sbc	r16, r0
 158:	00 00       	nop
 15a:	01 04       	cpc	r0, r1
 15c:	01 03       	mulsu	r16, r17
 15e:	aa 7f       	andi	r26, 0xFA	; 250
 160:	09 00       	.word	0x0009	; ????
 162:	00 01       	movw	r0, r0
 164:	09 00       	.word	0x0009	; ????
 166:	00 00       	nop
 168:	01 01       	movw	r0, r2
 16a:	00 05       	cpc	r16, r0
 16c:	02 00       	.word	0x0002	; ????
 16e:	00 00       	nop
 170:	00 03       	mulsu	r16, r16
 172:	18 01       	movw	r2, r16
 174:	03 04       	cpc	r0, r3
 176:	09 00       	.word	0x0009	; ????
 178:	00 01       	movw	r0, r0
 17a:	03 02       	muls	r16, r19
 17c:	09 00       	.word	0x0009	; ????
 17e:	00 01       	movw	r0, r0
 180:	09 00       	.word	0x0009	; ????
 182:	00 00       	nop
 184:	01 01       	movw	r0, r2
 186:	00 05       	cpc	r16, r0
 188:	02 ce       	rjmp	.-1020   	; 0xfffffd8e <__eeprom_end+0xff7efd8e>
 18a:	00 00       	nop
 18c:	00 03       	mulsu	r16, r16
 18e:	22 01       	movw	r4, r4
 190:	04 02       	muls	r16, r20
 192:	03 3f       	cpi	r16, 0xF3	; 243
 194:	09 00       	.word	0x0009	; ????
 196:	00 01       	movw	r0, r0
 198:	03 7c       	andi	r16, 0xC3	; 195
 19a:	09 08       	sbc	r0, r9
 19c:	00 01       	movw	r0, r0
 19e:	03 04       	cpc	r0, r3
 1a0:	09 04       	cpc	r0, r9
 1a2:	00 01       	movw	r0, r0
 1a4:	03 7c       	andi	r16, 0xC3	; 195
 1a6:	09 04       	cpc	r0, r9
 1a8:	00 01       	movw	r0, r0
 1aa:	03 04       	cpc	r0, r3
 1ac:	09 02       	muls	r16, r25
 1ae:	00 01       	movw	r0, r0
 1b0:	03 7c       	andi	r16, 0xC3	; 195
 1b2:	09 04       	cpc	r0, r9
 1b4:	00 01       	movw	r0, r0
 1b6:	03 04       	cpc	r0, r3
 1b8:	09 02       	muls	r16, r25
 1ba:	00 01       	movw	r0, r0
 1bc:	03 7c       	andi	r16, 0xC3	; 195
 1be:	09 04       	cpc	r0, r9
 1c0:	00 01       	movw	r0, r0
 1c2:	03 04       	cpc	r0, r3
 1c4:	09 02       	muls	r16, r25
 1c6:	00 01       	movw	r0, r0
 1c8:	03 7c       	andi	r16, 0xC3	; 195
 1ca:	09 02       	muls	r16, r25
 1cc:	00 01       	movw	r0, r0
 1ce:	09 08       	sbc	r0, r9
 1d0:	00 00       	nop
 1d2:	01 01       	movw	r0, r2
 1d4:	00 05       	cpc	r16, r0
 1d6:	02 f6       	brpl	.-128    	; 0x158 <rtcbenchmark_measure_native_performance+0x34>
 1d8:	00 00       	nop
 1da:	00 03       	mulsu	r16, r16
 1dc:	2b 01       	movw	r4, r22
 1de:	04 02       	muls	r16, r20
 1e0:	03 36       	cpi	r16, 0x63	; 99
 1e2:	09 00       	.word	0x0009	; ????
 1e4:	00 01       	movw	r0, r0
 1e6:	03 7c       	andi	r16, 0xC3	; 195
 1e8:	09 08       	sbc	r0, r9
 1ea:	00 01       	movw	r0, r0
 1ec:	03 04       	cpc	r0, r3
 1ee:	09 04       	cpc	r0, r9
 1f0:	00 01       	movw	r0, r0
 1f2:	03 7c       	andi	r16, 0xC3	; 195
 1f4:	09 04       	cpc	r0, r9
 1f6:	00 01       	movw	r0, r0
 1f8:	03 04       	cpc	r0, r3
 1fa:	09 02       	muls	r16, r25
 1fc:	00 01       	movw	r0, r0
 1fe:	03 7c       	andi	r16, 0xC3	; 195
 200:	09 04       	cpc	r0, r9
 202:	00 01       	movw	r0, r0
 204:	03 04       	cpc	r0, r3
 206:	09 02       	muls	r16, r25
 208:	00 01       	movw	r0, r0
 20a:	03 7c       	andi	r16, 0xC3	; 195
 20c:	09 04       	cpc	r0, r9
 20e:	00 01       	movw	r0, r0
 210:	09 08       	sbc	r0, r9
 212:	00 00       	nop
 214:	01 01       	movw	r0, r2
 216:	00 05       	cpc	r16, r0
 218:	02 00       	.word	0x0002	; ????
 21a:	00 00       	nop
 21c:	00 03       	mulsu	r16, r16
 21e:	34 01       	movw	r6, r8
 220:	03 01       	movw	r0, r6
 222:	09 00       	.word	0x0009	; ????
 224:	00 01       	movw	r0, r0
 226:	03 01       	movw	r0, r6
 228:	09 00       	.word	0x0009	; ????
 22a:	00 01       	movw	r0, r0
 22c:	09 00       	.word	0x0009	; ????
 22e:	00 00       	nop
 230:	01 01       	movw	r0, r2
 232:	00 05       	cpc	r16, r0
 234:	02 00       	.word	0x0002	; ????
 236:	00 00       	nop
 238:	00 03       	mulsu	r16, r16
 23a:	37 01       	movw	r6, r14
 23c:	09 00       	.word	0x0009	; ????
 23e:	00 00       	nop
 240:	01 01       	movw	r0, r2
 242:	00 05       	cpc	r16, r0
 244:	02 00       	.word	0x0002	; ????
 246:	00 00       	nop
 248:	00 03       	mulsu	r16, r16
 24a:	38 01       	movw	r6, r16
 24c:	09 00       	.word	0x0009	; ????
 24e:	00 00       	nop
 250:	01 01       	movw	r0, r2
 252:	00 05       	cpc	r16, r0
 254:	02 1a       	sub	r0, r18
 256:	01 00       	.word	0x0001	; ????
 258:	00 03       	mulsu	r16, r16
 25a:	3a 01       	movw	r6, r20
 25c:	03 01       	movw	r0, r6
 25e:	09 00       	.word	0x0009	; ????
 260:	00 01       	movw	r0, r0
 262:	03 01       	movw	r0, r6
 264:	09 04       	cpc	r0, r9
 266:	00 01       	movw	r0, r0
 268:	09 06       	cpc	r0, r25
 26a:	00 00       	nop
 26c:	01 01       	movw	r0, r2
 26e:	12 01       	movw	r2, r4
 270:	00 00       	nop
 272:	02 00       	.word	0x0002	; ????
 274:	70 00       	.word	0x0070	; ????
 276:	00 00       	nop
 278:	02 01       	movw	r0, r4
 27a:	fb 0e       	add	r15, r27
 27c:	0a 00       	.word	0x000a	; ????
 27e:	01 01       	movw	r0, r2
 280:	01 01       	movw	r0, r2
 282:	00 00       	nop
 284:	00 01       	movw	r0, r0
 286:	2f 68       	ori	r18, 0x8F	; 143
 288:	6f 6d       	ori	r22, 0xDF	; 223
 28a:	65 2f       	mov	r22, r21
 28c:	66 61       	ori	r22, 0x16	; 22
 28e:	6e 68       	ori	r22, 0x8E	; 142
 290:	63 2f       	mov	r22, r19
 292:	77 61       	ori	r23, 0x17	; 23
 294:	73 6d       	ori	r23, 0xD3	; 211
 296:	2d 61       	ori	r18, 0x1D	; 29
 298:	6f 74       	andi	r22, 0x4F	; 79
 29a:	2f 61       	ori	r18, 0x1F	; 31
 29c:	70 70       	andi	r23, 0x00	; 0
 29e:	2f 62       	ori	r18, 0x2F	; 47
 2a0:	65 6e       	ori	r22, 0xE5	; 229
 2a2:	63 68       	ori	r22, 0x83	; 131
 2a4:	6d 61       	ori	r22, 0x1D	; 29
 2a6:	72 6b       	ori	r23, 0xB2	; 178
 2a8:	00 2f       	mov	r16, r16
 2aa:	75 73       	andi	r23, 0x35	; 53
 2ac:	72 2f       	mov	r23, r18
 2ae:	6c 69       	ori	r22, 0x9C	; 156
 2b0:	62 2f       	mov	r22, r18
 2b2:	61 76       	andi	r22, 0x61	; 97
 2b4:	72 2f       	mov	r23, r18
 2b6:	69 6e       	ori	r22, 0xE9	; 233
 2b8:	63 6c       	ori	r22, 0xC3	; 195
 2ba:	75 64       	ori	r23, 0x45	; 69
 2bc:	65 00       	.word	0x0065	; ????
 2be:	00 62       	ori	r16, 0x20	; 32
 2c0:	69 6e       	ori	r22, 0xE9	; 233
 2c2:	73 72       	andi	r23, 0x23	; 35
 2c4:	63 68       	ori	r22, 0x83	; 131
 2c6:	2e 63       	ori	r18, 0x3E	; 62
 2c8:	00 01       	movw	r0, r0
 2ca:	00 00       	nop
 2cc:	73 74       	andi	r23, 0x43	; 67
 2ce:	64 69       	ori	r22, 0x94	; 148
 2d0:	6e 74       	andi	r22, 0x4E	; 78
 2d2:	2e 68       	ori	r18, 0x8E	; 142
 2d4:	00 02       	muls	r16, r16
 2d6:	00 00       	nop
 2d8:	62 65       	ori	r22, 0x52	; 82
 2da:	6e 63       	ori	r22, 0x3E	; 62
 2dc:	68 6d       	ori	r22, 0xD8	; 216
 2de:	61 72       	andi	r22, 0x21	; 33
 2e0:	6b 2e       	mov	r6, r27
 2e2:	68 00       	.word	0x0068	; ????
 2e4:	01 00       	.word	0x0001	; ????
 2e6:	00 00       	nop
 2e8:	00 05       	cpc	r16, r0
 2ea:	02 24       	eor	r0, r2
 2ec:	01 00       	.word	0x0001	; ????
 2ee:	00 11       	cpse	r16, r0
 2f0:	03 01       	movw	r0, r6
 2f2:	09 1c       	adc	r0, r9
 2f4:	00 01       	movw	r0, r0
 2f6:	03 02       	muls	r16, r19
 2f8:	09 04       	cpc	r0, r9
 2fa:	00 01       	movw	r0, r0
 2fc:	03 05       	cpc	r16, r3
 2fe:	09 22       	and	r0, r25
 300:	00 01       	movw	r0, r0
 302:	03 7f       	andi	r16, 0xF3	; 243
 304:	09 02       	muls	r16, r25
 306:	00 01       	movw	r0, r0
 308:	03 07       	cpc	r16, r19
 30a:	09 06       	cpc	r0, r25
 30c:	00 01       	movw	r0, r0
 30e:	03 7b       	andi	r16, 0xB3	; 179
 310:	09 06       	cpc	r0, r25
 312:	00 01       	movw	r0, r0
 314:	03 01       	movw	r0, r6
 316:	09 06       	cpc	r0, r25
 318:	00 01       	movw	r0, r0
 31a:	03 03       	mulsu	r16, r19
 31c:	09 0c       	add	r0, r9
 31e:	00 01       	movw	r0, r0
 320:	03 02       	muls	r16, r19
 322:	09 20       	and	r0, r9
 324:	00 01       	movw	r0, r0
 326:	03 01       	movw	r0, r6
 328:	09 0a       	sbc	r0, r25
 32a:	00 01       	movw	r0, r0
 32c:	03 79       	andi	r16, 0x93	; 147
 32e:	09 06       	cpc	r0, r25
 330:	00 01       	movw	r0, r0
 332:	00 02       	muls	r16, r16
 334:	04 02       	muls	r16, r20
 336:	03 7d       	andi	r16, 0xD3	; 211
 338:	09 0a       	sbc	r0, r25
 33a:	00 01       	movw	r0, r0
 33c:	03 11       	cpse	r16, r3
 33e:	09 02       	muls	r16, r25
 340:	00 01       	movw	r0, r0
 342:	03 01       	movw	r0, r6
 344:	09 04       	cpc	r0, r9
 346:	00 01       	movw	r0, r0
 348:	03 01       	movw	r0, r6
 34a:	09 0e       	add	r0, r25
 34c:	00 01       	movw	r0, r0
 34e:	09 1a       	sub	r0, r25
 350:	00 00       	nop
 352:	01 01       	movw	r0, r2
 354:	00 05       	cpc	r16, r0
 356:	02 ee       	ldi	r16, 0xE2	; 226
 358:	01 00       	.word	0x0001	; ????
 35a:	00 03       	mulsu	r16, r16
 35c:	1c 01       	movw	r2, r24
 35e:	03 03       	mulsu	r16, r19
 360:	09 00       	.word	0x0009	; ????
 362:	00 01       	movw	r0, r0
 364:	00 02       	muls	r16, r16
 366:	04 03       	mulsu	r16, r20
 368:	03 03       	mulsu	r16, r19
 36a:	09 12       	cpse	r0, r25
 36c:	00 01       	movw	r0, r0
 36e:	00 02       	muls	r16, r16
 370:	04 03       	mulsu	r16, r20
 372:	03 7f       	andi	r16, 0xF3	; 243
 374:	09 10       	cpse	r0, r9
 376:	00 01       	movw	r0, r0
 378:	03 03       	mulsu	r16, r19
 37a:	09 0a       	sbc	r0, r25
 37c:	00 01       	movw	r0, r0
 37e:	09 0a       	sbc	r0, r25
 380:	00 00       	nop
 382:	01 01       	movw	r0, r2

Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	10 00       	.word	0x0010	; ????
   2:	00 00       	nop
   4:	ff ff       	.word	0xffff	; ????
   6:	ff ff       	.word	0xffff	; ????
   8:	01 00       	.word	0x0001	; ????
   a:	02 7f       	andi	r16, 0xF2	; 242
   c:	24 0c       	add	r2, r4
   e:	20 02       	muls	r18, r16
  10:	a4 01       	movw	r20, r8
  12:	00 00       	nop
  14:	0c 00       	.word	0x000c	; ????
	...
  22:	00 00       	nop
  24:	0c 00       	.word	0x000c	; ????
	...
  32:	00 00       	nop
  34:	1c 00       	.word	0x001c	; ????
	...
  42:	00 00       	nop
  44:	41 0e       	add	r4, r17
  46:	03 9c       	mul	r0, r3
  48:	02 41       	sbci	r16, 0x12	; 18
  4a:	0e 04       	cpc	r0, r14
  4c:	9d 03       	fmulsu	r17, r21
  4e:	42 0d       	add	r20, r2
  50:	1c 00       	.word	0x001c	; ????
  52:	00 00       	nop
  54:	0c 00       	.word	0x000c	; ????
  56:	00 00       	nop
  58:	00 00       	nop
  5a:	00 00       	nop
  5c:	ce 00       	.word	0x00ce	; ????
  5e:	00 00       	nop
  60:	28 00       	.word	0x0028	; ????
  62:	00 00       	nop
  64:	0c 00       	.word	0x000c	; ????
  66:	00 00       	nop
  68:	00 00       	nop
  6a:	00 00       	nop
  6c:	f6 00       	.word	0x00f6	; ????
  6e:	00 00       	nop
  70:	24 00       	.word	0x0024	; ????
  72:	00 00       	nop
  74:	24 00       	.word	0x0024	; ????
	...
  82:	00 00       	nop
  84:	41 0e       	add	r4, r17
  86:	03 41       	sbci	r16, 0x13	; 19
  88:	0e 04       	cpc	r0, r14
  8a:	41 0e       	add	r4, r17
  8c:	05 41       	sbci	r16, 0x15	; 21
  8e:	0e 06       	cpc	r0, r30
  90:	43 0e       	add	r4, r19
  92:	07 41       	sbci	r16, 0x17	; 23
  94:	0e 08       	sbc	r0, r14
  96:	48 0e       	add	r4, r24
  98:	02 00       	.word	0x0002	; ????
  9a:	00 00       	nop
  9c:	0c 00       	.word	0x000c	; ????
	...
  aa:	00 00       	nop
  ac:	0c 00       	.word	0x000c	; ????
	...
  ba:	00 00       	nop
  bc:	0c 00       	.word	0x000c	; ????
  be:	00 00       	nop
  c0:	00 00       	nop
  c2:	00 00       	nop
  c4:	1a 01       	movw	r2, r20
  c6:	00 00       	nop
  c8:	0a 00       	.word	0x000a	; ????
  ca:	00 00       	nop
  cc:	10 00       	.word	0x0010	; ????
  ce:	00 00       	nop
  d0:	ff ff       	.word	0xffff	; ????
  d2:	ff ff       	.word	0xffff	; ????
  d4:	01 00       	.word	0x0001	; ????
  d6:	02 7f       	andi	r16, 0xF2	; 242
  d8:	24 0c       	add	r2, r4
  da:	20 02       	muls	r18, r16
  dc:	a4 01       	movw	r20, r8
  de:	00 00       	nop
  e0:	48 00       	.word	0x0048	; ????
  e2:	00 00       	nop
  e4:	cc 00       	.word	0x00cc	; ????
  e6:	00 00       	nop
  e8:	24 01       	movw	r4, r8
  ea:	00 00       	nop
  ec:	ca 00       	.word	0x00ca	; ????
  ee:	00 00       	nop
  f0:	41 0e       	add	r4, r17
  f2:	03 88       	ldd	r0, Z+19	; 0x13
  f4:	02 41       	sbci	r16, 0x12	; 18
  f6:	0e 04       	cpc	r0, r14
  f8:	89 03       	fmulsu	r16, r17
  fa:	41 0e       	add	r4, r17
  fc:	05 8a       	std	Z+21, r0	; 0x15
  fe:	04 41       	sbci	r16, 0x14	; 20
 100:	0e 06       	cpc	r0, r30
 102:	8b 05       	cpc	r24, r11
 104:	41 0e       	add	r4, r17
 106:	07 8c       	ldd	r0, Z+31	; 0x1f
 108:	06 41       	sbci	r16, 0x16	; 22
 10a:	0e 08       	sbc	r0, r14
 10c:	8d 07       	cpc	r24, r29
 10e:	41 0e       	add	r4, r17
 110:	09 8e       	std	Y+25, r0	; 0x19
 112:	08 41       	sbci	r16, 0x18	; 24
 114:	0e 0a       	sbc	r0, r30
 116:	8f 09       	sbc	r24, r15
 118:	41 0e       	add	r4, r17
 11a:	0b 90       	.word	0x900b	; ????
 11c:	0a 41       	sbci	r16, 0x1A	; 26
 11e:	0e 0c       	add	r0, r14
 120:	91 0b       	sbc	r25, r17
 122:	41 0e       	add	r4, r17
 124:	0d 9c       	mul	r0, r13
 126:	0c 41       	sbci	r16, 0x1C	; 28
 128:	0e 0e       	add	r0, r30
 12a:	9d 0d       	add	r25, r13
 12c:	0c 00       	.word	0x000c	; ????
 12e:	00 00       	nop
 130:	cc 00       	.word	0x00cc	; ????
 132:	00 00       	nop
 134:	ee 01       	movw	r28, r28
 136:	00 00       	nop
 138:	36 00       	.word	0x0036	; ????
	...

Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	61 76       	andi	r22, 0x61	; 97
   2:	72 2d       	mov	r23, r2
   4:	6c 69       	ori	r22, 0x9C	; 156
   6:	62 63       	ori	r22, 0x32	; 50
   8:	20 32       	cpi	r18, 0x20	; 32
   a:	2e 30       	cpi	r18, 0x0E	; 14
   c:	2e 30       	cpi	r18, 0x0E	; 14
   e:	00 75       	andi	r16, 0x50	; 80
  10:	69 6e       	ori	r22, 0xE9	; 233
  12:	74 38       	cpi	r23, 0x84	; 132
  14:	5f 74       	andi	r21, 0x4F	; 79
  16:	00 75       	andi	r16, 0x50	; 80
  18:	69 6e       	ori	r22, 0xE9	; 233
  1a:	74 31       	cpi	r23, 0x14	; 20
  1c:	36 5f       	subi	r19, 0xF6	; 246
  1e:	74 00       	.word	0x0074	; ????
  20:	5f 5f       	subi	r21, 0xFF	; 255
  22:	65 65       	ori	r22, 0x55	; 85
  24:	70 72       	andi	r23, 0x20	; 32
  26:	6f 6d       	ori	r22, 0xDF	; 223
  28:	00 53       	subi	r16, 0x30	; 48
  2a:	46 49       	sbci	r20, 0x96	; 150
  2c:	4f 52       	subi	r20, 0x2F	; 47
  2e:	00 41       	sbci	r16, 0x10	; 16
  30:	43 53       	subi	r20, 0x33	; 51
  32:	52 00       	.word	0x0052	; ????
  34:	53 50       	subi	r21, 0x03	; 3
  36:	44 52       	subi	r20, 0x24	; 36
  38:	00 53       	subi	r16, 0x30	; 48
  3a:	50 53       	subi	r21, 0x30	; 48
  3c:	52 00       	.word	0x0052	; ????
  3e:	53 50       	subi	r21, 0x03	; 3
  40:	43 52       	subi	r20, 0x23	; 35
  42:	00 54       	subi	r16, 0x40	; 64
  44:	57 42       	sbci	r21, 0x27	; 39
  46:	52 00       	.word	0x0052	; ????
  48:	54 57       	subi	r21, 0x74	; 116
  4a:	43 52       	subi	r20, 0x23	; 35
  4c:	00 54       	subi	r16, 0x40	; 64
  4e:	57 53       	subi	r21, 0x37	; 55
  50:	52 00       	.word	0x0052	; ????
  52:	54 57       	subi	r21, 0x74	; 116
  54:	44 52       	subi	r20, 0x24	; 36
  56:	00 54       	subi	r16, 0x40	; 64
  58:	57 41       	sbci	r21, 0x17	; 23
  5a:	52 00       	.word	0x0052	; ????
  5c:	55 44       	sbci	r21, 0x45	; 69
  5e:	52 30       	cpi	r21, 0x02	; 2
  60:	00 55       	subi	r16, 0x50	; 80
  62:	43 53       	subi	r20, 0x33	; 51
  64:	52 30       	cpi	r21, 0x02	; 2
  66:	41 00       	.word	0x0041	; ????
  68:	55 43       	sbci	r21, 0x35	; 53
  6a:	53 52       	subi	r21, 0x23	; 35
  6c:	30 42       	sbci	r19, 0x20	; 32
  6e:	00 55       	subi	r16, 0x50	; 80
  70:	43 53       	subi	r20, 0x33	; 51
  72:	52 30       	cpi	r21, 0x02	; 2
  74:	43 00       	.word	0x0043	; ????
  76:	55 42       	sbci	r21, 0x25	; 37
  78:	52 52       	subi	r21, 0x22	; 34
  7a:	30 48       	sbci	r19, 0x80	; 128
  7c:	00 55       	subi	r16, 0x50	; 80
  7e:	42 52       	subi	r20, 0x22	; 34
  80:	52 30       	cpi	r21, 0x02	; 2
  82:	4c 00       	.word	0x004c	; ????
  84:	55 44       	sbci	r21, 0x45	; 69
  86:	52 31       	cpi	r21, 0x12	; 18
  88:	00 55       	subi	r16, 0x50	; 80
  8a:	43 53       	subi	r20, 0x33	; 51
  8c:	52 31       	cpi	r21, 0x12	; 18
  8e:	41 00       	.word	0x0041	; ????
  90:	55 43       	sbci	r21, 0x35	; 53
  92:	53 52       	subi	r21, 0x23	; 35
  94:	31 42       	sbci	r19, 0x21	; 33
  96:	00 55       	subi	r16, 0x50	; 80
  98:	43 53       	subi	r20, 0x33	; 51
  9a:	52 31       	cpi	r21, 0x12	; 18
  9c:	43 00       	.word	0x0043	; ????
  9e:	55 42       	sbci	r21, 0x25	; 37
  a0:	52 52       	subi	r21, 0x22	; 34
  a2:	31 48       	sbci	r19, 0x81	; 129
  a4:	00 55       	subi	r16, 0x50	; 80
  a6:	42 52       	subi	r20, 0x22	; 34
  a8:	52 31       	cpi	r21, 0x12	; 18
  aa:	4c 00       	.word	0x004c	; ????
  ac:	53 52       	subi	r21, 0x23	; 35
  ae:	45 47       	sbci	r20, 0x75	; 117
  b0:	00 53       	subi	r16, 0x30	; 48
  b2:	50 00       	.word	0x0050	; ????
  b4:	4d 43       	sbci	r20, 0x3D	; 61
  b6:	55 43       	sbci	r21, 0x35	; 53
  b8:	52 00       	.word	0x0052	; ????
  ba:	4d 43       	sbci	r20, 0x3D	; 61
  bc:	55 43       	sbci	r21, 0x35	; 53
  be:	53 52       	subi	r21, 0x23	; 35
  c0:	00 58       	subi	r16, 0x80	; 128
  c2:	4d 43       	sbci	r20, 0x3D	; 61
  c4:	52 41       	sbci	r21, 0x12	; 18
  c6:	00 58       	subi	r16, 0x80	; 128
  c8:	4d 43       	sbci	r20, 0x3D	; 61
  ca:	52 42       	sbci	r21, 0x22	; 34
  cc:	00 4f       	sbci	r16, 0xF0	; 240
  ce:	53 43       	sbci	r21, 0x33	; 51
  d0:	43 41       	sbci	r20, 0x13	; 19
  d2:	4c 00       	.word	0x004c	; ????
  d4:	58 44       	sbci	r21, 0x48	; 72
  d6:	49 56       	subi	r20, 0x69	; 105
  d8:	00 52       	subi	r16, 0x20	; 32
  da:	41 4d       	sbci	r20, 0xD1	; 209
  dc:	50 5a       	subi	r21, 0xA0	; 160
  de:	00 53       	subi	r16, 0x30	; 48
  e0:	50 4d       	sbci	r21, 0xD0	; 208
  e2:	43 53       	subi	r20, 0x33	; 51
  e4:	52 00       	.word	0x0052	; ????
  e6:	4f 43       	sbci	r20, 0x3F	; 63
  e8:	44 52       	subi	r20, 0x24	; 36
  ea:	00 4d       	sbci	r16, 0xD0	; 208
  ec:	43 55       	subi	r20, 0x53	; 83
  ee:	43 53       	subi	r20, 0x33	; 51
  f0:	52 00       	.word	0x0052	; ????
  f2:	53 46       	sbci	r21, 0x63	; 99
  f4:	49 4f       	sbci	r20, 0xF9	; 249
  f6:	52 00       	.word	0x0052	; ????
  f8:	45 49       	sbci	r20, 0x95	; 149
  fa:	43 52       	subi	r20, 0x23	; 35
  fc:	41 00       	.word	0x0041	; ????
  fe:	45 49       	sbci	r20, 0x95	; 149
 100:	43 52       	subi	r20, 0x23	; 35
 102:	42 00       	.word	0x0042	; ????
 104:	45 49       	sbci	r20, 0x95	; 149
 106:	4d 53       	subi	r20, 0x3D	; 61
 108:	4b 00       	.word	0x004b	; ????
 10a:	45 49       	sbci	r20, 0x95	; 149
 10c:	46 52       	subi	r20, 0x26	; 38
 10e:	00 45       	sbci	r16, 0x50	; 80
 110:	45 41       	sbci	r20, 0x15	; 21
 112:	52 00       	.word	0x0052	; ????
 114:	45 45       	sbci	r20, 0x55	; 85
 116:	44 52       	subi	r20, 0x24	; 36
 118:	00 45       	sbci	r16, 0x50	; 80
 11a:	45 43       	sbci	r20, 0x35	; 53
 11c:	52 00       	.word	0x0052	; ????
 11e:	50 4f       	sbci	r21, 0xF0	; 240
 120:	52 54       	subi	r21, 0x42	; 66
 122:	41 00       	.word	0x0041	; ????
 124:	44 44       	sbci	r20, 0x44	; 68
 126:	52 41       	sbci	r21, 0x12	; 18
 128:	00 50       	subi	r16, 0x00	; 0
 12a:	49 4e       	sbci	r20, 0xE9	; 233
 12c:	41 00       	.word	0x0041	; ????
 12e:	50 4f       	sbci	r21, 0xF0	; 240
 130:	52 54       	subi	r21, 0x42	; 66
 132:	42 00       	.word	0x0042	; ????
 134:	44 44       	sbci	r20, 0x44	; 68
 136:	52 42       	sbci	r21, 0x22	; 34
 138:	00 50       	subi	r16, 0x00	; 0
 13a:	49 4e       	sbci	r20, 0xE9	; 233
 13c:	42 00       	.word	0x0042	; ????
 13e:	50 4f       	sbci	r21, 0xF0	; 240
 140:	52 54       	subi	r21, 0x42	; 66
 142:	43 00       	.word	0x0043	; ????
 144:	44 44       	sbci	r20, 0x44	; 68
 146:	52 43       	sbci	r21, 0x32	; 50
 148:	00 50       	subi	r16, 0x00	; 0
 14a:	49 4e       	sbci	r20, 0xE9	; 233
 14c:	43 00       	.word	0x0043	; ????
 14e:	50 4f       	sbci	r21, 0xF0	; 240
 150:	52 54       	subi	r21, 0x42	; 66
 152:	44 00       	.word	0x0044	; ????
 154:	44 44       	sbci	r20, 0x44	; 68
 156:	52 44       	sbci	r21, 0x42	; 66
 158:	00 50       	subi	r16, 0x00	; 0
 15a:	49 4e       	sbci	r20, 0xE9	; 233
 15c:	44 00       	.word	0x0044	; ????
 15e:	50 4f       	sbci	r21, 0xF0	; 240
 160:	52 54       	subi	r21, 0x42	; 66
 162:	45 00       	.word	0x0045	; ????
 164:	44 44       	sbci	r20, 0x44	; 68
 166:	52 45       	sbci	r21, 0x52	; 82
 168:	00 50       	subi	r16, 0x00	; 0
 16a:	49 4e       	sbci	r20, 0xE9	; 233
 16c:	45 00       	.word	0x0045	; ????
 16e:	50 4f       	sbci	r21, 0xF0	; 240
 170:	52 54       	subi	r21, 0x42	; 66
 172:	46 00       	.word	0x0046	; ????
 174:	44 44       	sbci	r20, 0x44	; 68
 176:	52 46       	sbci	r21, 0x62	; 98
 178:	00 50       	subi	r16, 0x00	; 0
 17a:	49 4e       	sbci	r20, 0xE9	; 233
 17c:	46 00       	.word	0x0046	; ????
 17e:	50 4f       	sbci	r21, 0xF0	; 240
 180:	52 54       	subi	r21, 0x42	; 66
 182:	47 00       	.word	0x0047	; ????
 184:	44 44       	sbci	r20, 0x44	; 68
 186:	52 47       	sbci	r21, 0x72	; 114
 188:	00 50       	subi	r16, 0x00	; 0
 18a:	49 4e       	sbci	r20, 0xE9	; 233
 18c:	47 00       	.word	0x0047	; ????
 18e:	54 43       	sbci	r21, 0x34	; 52
 190:	43 52       	subi	r20, 0x23	; 35
 192:	30 00       	.word	0x0030	; ????
 194:	54 43       	sbci	r21, 0x34	; 52
 196:	4e 54       	subi	r20, 0x4E	; 78
 198:	30 00       	.word	0x0030	; ????
 19a:	4f 43       	sbci	r20, 0x3F	; 63
 19c:	52 30       	cpi	r21, 0x02	; 2
 19e:	00 41       	sbci	r16, 0x10	; 16
 1a0:	53 53       	subi	r21, 0x33	; 51
 1a2:	52 00       	.word	0x0052	; ????
 1a4:	54 49       	sbci	r21, 0x94	; 148
 1a6:	4d 53       	subi	r20, 0x3D	; 61
 1a8:	4b 00       	.word	0x004b	; ????
 1aa:	54 49       	sbci	r21, 0x94	; 148
 1ac:	46 52       	subi	r20, 0x26	; 38
 1ae:	00 53       	subi	r16, 0x30	; 48
 1b0:	46 49       	sbci	r20, 0x96	; 150
 1b2:	4f 52       	subi	r20, 0x2F	; 47
 1b4:	00 54       	subi	r16, 0x40	; 64
 1b6:	49 4d       	sbci	r20, 0xD9	; 217
 1b8:	53 4b       	sbci	r21, 0xB3	; 179
 1ba:	00 45       	sbci	r16, 0x50	; 80
 1bc:	54 49       	sbci	r21, 0x94	; 148
 1be:	4d 53       	subi	r20, 0x3D	; 61
 1c0:	4b 00       	.word	0x004b	; ????
 1c2:	54 49       	sbci	r21, 0x94	; 148
 1c4:	46 52       	subi	r20, 0x26	; 38
 1c6:	00 45       	sbci	r16, 0x50	; 80
 1c8:	54 49       	sbci	r21, 0x94	; 148
 1ca:	46 52       	subi	r20, 0x26	; 38
 1cc:	00 53       	subi	r16, 0x30	; 48
 1ce:	46 49       	sbci	r20, 0x96	; 150
 1d0:	4f 52       	subi	r20, 0x2F	; 47
 1d2:	00 54       	subi	r16, 0x40	; 64
 1d4:	43 43       	sbci	r20, 0x33	; 51
 1d6:	52 31       	cpi	r21, 0x12	; 18
 1d8:	41 00       	.word	0x0041	; ????
 1da:	54 43       	sbci	r21, 0x34	; 52
 1dc:	43 52       	subi	r20, 0x23	; 35
 1de:	31 42       	sbci	r19, 0x21	; 33
 1e0:	00 54       	subi	r16, 0x40	; 64
 1e2:	43 43       	sbci	r20, 0x33	; 51
 1e4:	52 31       	cpi	r21, 0x12	; 18
 1e6:	43 00       	.word	0x0043	; ????
 1e8:	54 43       	sbci	r21, 0x34	; 52
 1ea:	4e 54       	subi	r20, 0x4E	; 78
 1ec:	31 00       	.word	0x0031	; ????
 1ee:	4f 43       	sbci	r20, 0x3F	; 63
 1f0:	52 31       	cpi	r21, 0x12	; 18
 1f2:	41 00       	.word	0x0041	; ????
 1f4:	4f 43       	sbci	r20, 0x3F	; 63
 1f6:	52 31       	cpi	r21, 0x12	; 18
 1f8:	42 00       	.word	0x0042	; ????
 1fa:	4f 43       	sbci	r20, 0x3F	; 63
 1fc:	52 31       	cpi	r21, 0x12	; 18
 1fe:	43 00       	.word	0x0043	; ????
 200:	49 43       	sbci	r20, 0x39	; 57
 202:	52 31       	cpi	r21, 0x12	; 18
 204:	00 54       	subi	r16, 0x40	; 64
 206:	43 43       	sbci	r20, 0x33	; 51
 208:	52 32       	cpi	r21, 0x22	; 34
 20a:	00 54       	subi	r16, 0x40	; 64
 20c:	43 4e       	sbci	r20, 0xE3	; 227
 20e:	54 32       	cpi	r21, 0x24	; 36
 210:	00 4f       	sbci	r16, 0xF0	; 240
 212:	43 52       	subi	r20, 0x23	; 35
 214:	32 00       	.word	0x0032	; ????
 216:	54 49       	sbci	r21, 0x94	; 148
 218:	46 52       	subi	r20, 0x26	; 38
 21a:	00 54       	subi	r16, 0x40	; 64
 21c:	49 4d       	sbci	r20, 0xD9	; 217
 21e:	53 4b       	sbci	r21, 0xB3	; 179
 220:	00 45       	sbci	r16, 0x50	; 80
 222:	54 49       	sbci	r21, 0x94	; 148
 224:	4d 53       	subi	r20, 0x3D	; 61
 226:	4b 00       	.word	0x004b	; ????
 228:	45 54       	subi	r20, 0x45	; 69
 22a:	49 46       	sbci	r20, 0x69	; 105
 22c:	52 00       	.word	0x0052	; ????
 22e:	53 46       	sbci	r21, 0x63	; 99
 230:	49 4f       	sbci	r20, 0xF9	; 249
 232:	52 00       	.word	0x0052	; ????
 234:	54 43       	sbci	r21, 0x34	; 52
 236:	43 52       	subi	r20, 0x23	; 35
 238:	33 41       	sbci	r19, 0x13	; 19
 23a:	00 54       	subi	r16, 0x40	; 64
 23c:	43 43       	sbci	r20, 0x33	; 51
 23e:	52 33       	cpi	r21, 0x32	; 50
 240:	42 00       	.word	0x0042	; ????
 242:	54 43       	sbci	r21, 0x34	; 52
 244:	43 52       	subi	r20, 0x23	; 35
 246:	33 43       	sbci	r19, 0x33	; 51
 248:	00 54       	subi	r16, 0x40	; 64
 24a:	43 4e       	sbci	r20, 0xE3	; 227
 24c:	54 33       	cpi	r21, 0x34	; 52
 24e:	00 4f       	sbci	r16, 0xF0	; 240
 250:	43 52       	subi	r20, 0x23	; 35
 252:	33 41       	sbci	r19, 0x13	; 19
 254:	00 4f       	sbci	r16, 0xF0	; 240
 256:	43 52       	subi	r20, 0x23	; 35
 258:	33 42       	sbci	r19, 0x23	; 35
 25a:	00 4f       	sbci	r16, 0xF0	; 240
 25c:	43 52       	subi	r20, 0x23	; 35
 25e:	33 43       	sbci	r19, 0x33	; 51
 260:	00 49       	sbci	r16, 0x90	; 144
 262:	43 52       	subi	r20, 0x23	; 35
 264:	33 00       	.word	0x0033	; ????
 266:	57 44       	sbci	r21, 0x47	; 71
 268:	54 43       	sbci	r21, 0x34	; 52
 26a:	52 00       	.word	0x0052	; ????
 26c:	41 44       	sbci	r20, 0x41	; 65
 26e:	4d 55       	subi	r20, 0x5D	; 93
 270:	58 00       	.word	0x0058	; ????
 272:	41 44       	sbci	r20, 0x41	; 65
 274:	43 53       	subi	r20, 0x33	; 51
 276:	52 41       	sbci	r21, 0x12	; 18
 278:	00 41       	sbci	r16, 0x10	; 16
 27a:	44 43       	sbci	r20, 0x34	; 52
 27c:	00 5f       	subi	r16, 0xF0	; 240
 27e:	5f 62       	ori	r21, 0x2F	; 47
 280:	75 69       	ori	r23, 0x95	; 149
 282:	6c 74       	andi	r22, 0x4C	; 76
 284:	69 6e       	ori	r22, 0xE9	; 233
 286:	5f 76       	andi	r21, 0x6F	; 111
 288:	61 5f       	subi	r22, 0xF1	; 241
 28a:	6c 69       	ori	r22, 0x9C	; 156
 28c:	73 74       	andi	r23, 0x43	; 67
 28e:	00 76       	andi	r16, 0x60	; 96
 290:	73 6e       	ori	r23, 0xE3	; 227
 292:	70 72       	andi	r23, 0x20	; 32
 294:	69 6e       	ori	r22, 0xE9	; 233
 296:	74 66       	ori	r23, 0x64	; 100
 298:	00 76       	andi	r16, 0x60	; 96
 29a:	61 6c       	ori	r22, 0xC1	; 193
 29c:	75 65       	ori	r23, 0x55	; 85
 29e:	00 72       	andi	r16, 0x20	; 32
 2a0:	74 63       	ori	r23, 0x34	; 52
 2a2:	5f 73       	andi	r21, 0x3F	; 63
 2a4:	74 6f       	ori	r23, 0xF4	; 244
 2a6:	70 42       	sbci	r23, 0x20	; 32
 2a8:	65 6e       	ori	r22, 0xE5	; 229
 2aa:	63 68       	ori	r22, 0x83	; 131
 2ac:	6d 61       	ori	r22, 0x1D	; 29
 2ae:	72 6b       	ori	r23, 0xB2	; 178
 2b0:	4d 65       	ori	r20, 0x5D	; 93
 2b2:	61 73       	andi	r22, 0x31	; 49
 2b4:	75 72       	andi	r23, 0x25	; 37
 2b6:	65 6d       	ori	r22, 0xD5	; 213
 2b8:	65 6e       	ori	r22, 0xE5	; 229
 2ba:	74 00       	.word	0x0074	; ????
 2bc:	61 76       	andi	r22, 0x61	; 97
 2be:	72 5f       	subi	r23, 0xF2	; 242
 2c0:	50 72       	andi	r21, 0x20	; 32
 2c2:	69 6e       	ori	r22, 0xE9	; 233
 2c4:	74 66       	ori	r23, 0x64	; 100
 2c6:	00 61       	ori	r16, 0x10	; 16
 2c8:	76 72       	andi	r23, 0x26	; 38
 2ca:	5f 50       	subi	r21, 0x0F	; 15
 2cc:	72 69       	ori	r23, 0x92	; 146
 2ce:	6e 74       	andi	r22, 0x4E	; 78
 2d0:	00 5f       	subi	r16, 0xF0	; 240
 2d2:	5f 67       	ori	r21, 0x7F	; 127
 2d4:	6e 75       	andi	r22, 0x5E	; 94
 2d6:	63 5f       	subi	r22, 0xF3	; 243
 2d8:	76 61       	ori	r23, 0x16	; 22
 2da:	5f 6c       	ori	r21, 0xCF	; 207
 2dc:	69 73       	andi	r22, 0x39	; 57
 2de:	74 00       	.word	0x0074	; ????
 2e0:	70 72       	andi	r23, 0x20	; 32
 2e2:	69 6e       	ori	r22, 0xE9	; 233
 2e4:	74 49       	sbci	r23, 0x94	; 148
 2e6:	6e 74       	andi	r22, 0x4E	; 78
 2e8:	00 75       	andi	r16, 0x50	; 80
 2ea:	6e 73       	andi	r22, 0x3E	; 62
 2ec:	69 67       	ori	r22, 0x79	; 121
 2ee:	6e 65       	ori	r22, 0x5E	; 94
 2f0:	64 20       	and	r6, r4
 2f2:	63 68       	ori	r22, 0x83	; 131
 2f4:	61 72       	andi	r22, 0x21	; 33
 2f6:	00 74       	andi	r16, 0x40	; 64
 2f8:	65 6d       	ori	r22, 0xD5	; 213
 2fa:	70 00       	.word	0x0070	; ????
 2fc:	61 76       	andi	r22, 0x61	; 97
 2fe:	72 6f       	ori	r23, 0xF2	; 242
 300:	72 61       	ori	r23, 0x12	; 18
 302:	50 72       	andi	r21, 0x20	; 32
 304:	69 6e       	ori	r22, 0xE9	; 233
 306:	74 43       	sbci	r23, 0x34	; 52
 308:	68 61       	ori	r22, 0x18	; 24
 30a:	72 42       	sbci	r23, 0x22	; 34
 30c:	75 66       	ori	r23, 0x65	; 101
 30e:	66 65       	ori	r22, 0x56	; 86
 310:	72 00       	.word	0x0072	; ????
 312:	6d 61       	ori	r22, 0x1D	; 29
 314:	69 6e       	ori	r22, 0xE9	; 233
 316:	00 61       	ori	r16, 0x10	; 16
 318:	76 72       	andi	r23, 0x26	; 38
 31a:	6f 72       	andi	r22, 0x2F	; 47
 31c:	61 50       	subi	r22, 0x01	; 1
 31e:	72 69       	ori	r23, 0x92	; 146
 320:	6e 74       	andi	r22, 0x4E	; 78
 322:	53 65       	ori	r21, 0x53	; 83
 324:	74 56       	subi	r23, 0x64	; 100
 326:	61 72       	andi	r22, 0x21	; 33
 328:	54 79       	andi	r21, 0x94	; 148
 32a:	70 65       	ori	r23, 0x50	; 80
 32c:	00 66       	ori	r16, 0x60	; 96
 32e:	6f 72       	andi	r22, 0x2F	; 47
 330:	6d 61       	ori	r22, 0x1D	; 29
 332:	74 00       	.word	0x0074	; ????
 334:	6c 6f       	ori	r22, 0xFC	; 252
 336:	6e 67       	ori	r22, 0x7E	; 126
 338:	20 6c       	ori	r18, 0xC0	; 192
 33a:	6f 6e       	ori	r22, 0xEF	; 239
 33c:	67 20       	and	r6, r7
 33e:	75 6e       	ori	r23, 0xE5	; 229
 340:	73 69       	ori	r23, 0x93	; 147
 342:	67 6e       	ori	r22, 0xE7	; 231
 344:	65 64       	ori	r22, 0x45	; 69
 346:	20 69       	ori	r18, 0x90	; 144
 348:	6e 74       	andi	r22, 0x4E	; 78
 34a:	00 75       	andi	r16, 0x50	; 80
 34c:	69 6e       	ori	r22, 0xE9	; 233
 34e:	74 38       	cpi	r23, 0x84	; 132
 350:	5f 74       	andi	r21, 0x4F	; 79
 352:	00 6a       	ori	r16, 0xA0	; 160
 354:	61 76       	andi	r22, 0x61	; 97
 356:	61 78       	andi	r22, 0x81	; 129
 358:	5f 72       	andi	r21, 0x2F	; 47
 35a:	74 63       	ori	r23, 0x34	; 52
 35c:	62 65       	ori	r22, 0x52	; 82
 35e:	6e 63       	ori	r22, 0x3E	; 62
 360:	68 5f       	subi	r22, 0xF8	; 248
 362:	52 54       	subi	r21, 0x42	; 66
 364:	43 42       	sbci	r20, 0x23	; 35
 366:	65 6e       	ori	r22, 0xE5	; 229
 368:	63 68       	ori	r22, 0x83	; 131
 36a:	6d 61       	ori	r22, 0x1D	; 29
 36c:	72 6b       	ori	r23, 0xB2	; 178
 36e:	5f 76       	andi	r21, 0x6F	; 111
 370:	6f 69       	ori	r22, 0x9F	; 159
 372:	64 5f       	subi	r22, 0xF4	; 244
 374:	74 65       	ori	r23, 0x54	; 84
 376:	73 74       	andi	r23, 0x43	; 67
 378:	5f 6e       	ori	r21, 0xEF	; 239
 37a:	61 74       	andi	r22, 0x41	; 65
 37c:	69 76       	andi	r22, 0x69	; 105
 37e:	65 00       	.word	0x0065	; ????
 380:	50 72       	andi	r21, 0x20	; 32
 382:	69 6e       	ori	r22, 0xE9	; 233
 384:	74 49       	sbci	r23, 0x94	; 148
 386:	6e 74       	andi	r22, 0x4E	; 78
 388:	33 32       	cpi	r19, 0x23	; 35
 38a:	00 73       	andi	r16, 0x30	; 48
 38c:	69 7a       	andi	r22, 0xA9	; 169
 38e:	65 74       	andi	r22, 0x45	; 69
 390:	79 70       	andi	r23, 0x09	; 9
 392:	65 00       	.word	0x0065	; ????
 394:	61 76       	andi	r22, 0x61	; 97
 396:	72 6f       	ori	r23, 0xF2	; 242
 398:	72 61       	ori	r23, 0x12	; 18
 39a:	57 72       	andi	r21, 0x27	; 39
 39c:	69 74       	andi	r22, 0x49	; 73
 39e:	65 43       	sbci	r22, 0x35	; 53
 3a0:	68 61       	ori	r22, 0x18	; 24
 3a2:	72 42       	sbci	r23, 0x22	; 34
 3a4:	75 66       	ori	r23, 0x65	; 101
 3a6:	66 65       	ori	r22, 0x56	; 86
 3a8:	72 00       	.word	0x0072	; ????
 3aa:	6c 6f       	ori	r22, 0xFC	; 252
 3ac:	6e 67       	ori	r22, 0x7E	; 126
 3ae:	20 6c       	ori	r18, 0xC0	; 192
 3b0:	6f 6e       	ori	r22, 0xEF	; 239
 3b2:	67 20       	and	r6, r7
 3b4:	69 6e       	ori	r22, 0xE9	; 233
 3b6:	74 00       	.word	0x0074	; ????
 3b8:	72 74       	andi	r23, 0x42	; 66
 3ba:	63 5f       	subi	r22, 0xF3	; 243
 3bc:	73 74       	andi	r23, 0x43	; 67
 3be:	61 72       	andi	r22, 0x21	; 33
 3c0:	74 42       	sbci	r23, 0x24	; 36
 3c2:	65 6e       	ori	r22, 0xE5	; 229
 3c4:	63 68       	ori	r22, 0x83	; 131
 3c6:	6d 61       	ori	r22, 0x1D	; 29
 3c8:	72 6b       	ori	r23, 0xB2	; 178
 3ca:	4d 65       	ori	r20, 0x5D	; 93
 3cc:	61 73       	andi	r22, 0x31	; 49
 3ce:	75 72       	andi	r23, 0x25	; 37
 3d0:	65 6d       	ori	r22, 0xD5	; 213
 3d2:	65 6e       	ori	r22, 0xE5	; 229
 3d4:	74 5f       	subi	r23, 0xF4	; 244
 3d6:	4e 61       	ori	r20, 0x1E	; 30
 3d8:	74 69       	ori	r23, 0x94	; 148
 3da:	76 65       	ori	r23, 0x56	; 86
 3dc:	00 64       	ori	r16, 0x40	; 64
 3de:	65 62       	ori	r22, 0x25	; 37
 3e0:	75 67       	ori	r23, 0x75	; 117
 3e2:	62 75       	andi	r22, 0x52	; 82
 3e4:	66 31       	cpi	r22, 0x16	; 22
 3e6:	00 2f       	mov	r16, r16
 3e8:	68 6f       	ori	r22, 0xF8	; 248
 3ea:	6d 65       	ori	r22, 0x5D	; 93
 3ec:	2f 66       	ori	r18, 0x6F	; 111
 3ee:	61 6e       	ori	r22, 0xE1	; 225
 3f0:	68 63       	ori	r22, 0x38	; 56
 3f2:	2f 77       	andi	r18, 0x7F	; 127
 3f4:	61 73       	andi	r22, 0x31	; 49
 3f6:	6d 2d       	mov	r22, r13
 3f8:	61 6f       	ori	r22, 0xF1	; 241
 3fa:	74 2f       	mov	r23, r20
 3fc:	61 70       	andi	r22, 0x01	; 1
 3fe:	70 2f       	mov	r23, r16
 400:	62 65       	ori	r22, 0x52	; 82
 402:	6e 63       	ori	r22, 0x3E	; 62
 404:	68 6d       	ori	r22, 0xD8	; 216
 406:	61 72       	andi	r22, 0x21	; 33
 408:	6b 2f       	mov	r22, r27
 40a:	62 65       	ori	r22, 0x52	; 82
 40c:	6e 63       	ori	r22, 0x3E	; 62
 40e:	68 6d       	ori	r22, 0xD8	; 216
 410:	61 72       	andi	r22, 0x21	; 33
 412:	6b 2e       	mov	r6, r27
 414:	63 00       	.word	0x0063	; ????
 416:	75 69       	ori	r23, 0x95	; 149
 418:	6e 74       	andi	r22, 0x4E	; 78
 41a:	33 32       	cpi	r19, 0x23	; 35
 41c:	5f 74       	andi	r21, 0x4F	; 79
 41e:	00 61       	ori	r16, 0x10	; 16
 420:	76 72       	andi	r23, 0x26	; 38
 422:	5f 56       	subi	r21, 0x6F	; 111
 424:	50 72       	andi	r21, 0x20	; 32
 426:	69 6e       	ori	r22, 0xE9	; 233
 428:	74 00       	.word	0x0074	; ????
 42a:	47 4e       	sbci	r20, 0xE7	; 231
 42c:	55 20       	and	r5, r5
 42e:	43 39       	cpi	r20, 0x93	; 147
 430:	39 20       	and	r3, r9
 432:	35 2e       	mov	r3, r21
 434:	34 2e       	mov	r3, r20
 436:	30 20       	and	r3, r0
 438:	2d 6d       	ori	r18, 0xDD	; 221
 43a:	6e 2d       	mov	r22, r14
 43c:	66 6c       	ori	r22, 0xC6	; 198
 43e:	61 73       	andi	r22, 0x31	; 49
 440:	68 3d       	cpi	r22, 0xD8	; 216
 442:	32 20       	and	r3, r2
 444:	2d 6d       	ori	r18, 0xDD	; 221
 446:	6e 6f       	ori	r22, 0xFE	; 254
 448:	2d 73       	andi	r18, 0x3D	; 61
 44a:	6b 69       	ori	r22, 0x9B	; 155
 44c:	70 2d       	mov	r23, r0
 44e:	62 75       	andi	r22, 0x52	; 82
 450:	67 20       	and	r6, r7
 452:	2d 6d       	ori	r18, 0xDD	; 221
 454:	6d 63       	ori	r22, 0x3D	; 61
 456:	75 3d       	cpi	r23, 0xD5	; 213
 458:	61 76       	andi	r22, 0x61	; 97
 45a:	72 35       	cpi	r23, 0x52	; 82
 45c:	31 20       	and	r3, r1
 45e:	2d 67       	ori	r18, 0x7D	; 125
 460:	67 64       	ori	r22, 0x47	; 71
 462:	62 20       	and	r6, r2
 464:	2d 4f       	sbci	r18, 0xFD	; 253
 466:	32 20       	and	r3, r2
 468:	2d 73       	andi	r18, 0x3D	; 61
 46a:	74 64       	ori	r23, 0x44	; 68
 46c:	3d 67       	ori	r19, 0x7D	; 125
 46e:	6e 75       	andi	r22, 0x5E	; 94
 470:	39 39       	cpi	r19, 0x99	; 153
 472:	20 2d       	mov	r18, r0
 474:	66 69       	ori	r22, 0x96	; 150
 476:	6e 6c       	ori	r22, 0xCE	; 206
 478:	69 6e       	ori	r22, 0xE9	; 233
 47a:	65 2d       	mov	r22, r5
 47c:	6c 69       	ori	r22, 0x9C	; 156
 47e:	6d 69       	ori	r22, 0x9D	; 157
 480:	74 3d       	cpi	r23, 0xD4	; 212
 482:	30 20       	and	r3, r0
 484:	2d 66       	ori	r18, 0x6D	; 109
 486:	64 61       	ori	r22, 0x14	; 20
 488:	74 61       	ori	r23, 0x14	; 20
 48a:	2d 73       	andi	r18, 0x3D	; 61
 48c:	65 63       	ori	r22, 0x35	; 53
 48e:	74 69       	ori	r23, 0x94	; 148
 490:	6f 6e       	ori	r22, 0xEF	; 239
 492:	73 20       	and	r7, r3
 494:	2d 66       	ori	r18, 0x6D	; 109
 496:	66 75       	andi	r22, 0x56	; 86
 498:	6e 63       	ori	r22, 0x3E	; 62
 49a:	74 69       	ori	r23, 0x94	; 148
 49c:	6f 6e       	ori	r22, 0xEF	; 239
 49e:	2d 73       	andi	r18, 0x3D	; 61
 4a0:	65 63       	ori	r22, 0x35	; 53
 4a2:	74 69       	ori	r23, 0x94	; 148
 4a4:	6f 6e       	ori	r22, 0xEF	; 239
 4a6:	73 00       	.word	0x0073	; ????
 4a8:	50 72       	andi	r21, 0x20	; 32
 4aa:	69 6e       	ori	r22, 0xE9	; 233
 4ac:	74 53       	subi	r23, 0x34	; 52
 4ae:	74 72       	andi	r23, 0x24	; 36
 4b0:	00 68       	ori	r16, 0x80	; 128
 4b2:	69 67       	ori	r22, 0x79	; 121
 4b4:	68 00       	.word	0x0068	; ????
 4b6:	6e 75       	andi	r22, 0x5E	; 94
 4b8:	6d 62       	ori	r22, 0x2D	; 45
 4ba:	65 72       	andi	r22, 0x25	; 37
 4bc:	73 00       	.word	0x0073	; ????
 4be:	6c 6f       	ori	r22, 0xFC	; 252
 4c0:	6f 70       	andi	r22, 0x0F	; 15
 4c2:	00 6e       	ori	r16, 0xE0	; 224
 4c4:	75 6d       	ori	r23, 0xD5	; 213
 4c6:	62 65       	ori	r22, 0x52	; 82
 4c8:	72 5f       	subi	r23, 0xF2	; 242
 4ca:	6d 69       	ori	r22, 0x9D	; 157
 4cc:	64 00       	.word	0x0064	; ????
 4ce:	4e 55       	subi	r20, 0x5E	; 94
 4d0:	4d 4e       	sbci	r20, 0xED	; 237
 4d2:	55 4d       	sbci	r21, 0xD5	; 213
 4d4:	42 45       	sbci	r20, 0x52	; 82
 4d6:	52 53       	subi	r21, 0x32	; 50
 4d8:	00 72       	andi	r16, 0x20	; 32
 4da:	74 63       	ori	r23, 0x34	; 52
 4dc:	62 65       	ori	r22, 0x52	; 82
 4de:	6e 63       	ori	r22, 0x3E	; 62
 4e0:	68 6d       	ori	r22, 0xD8	; 216
 4e2:	61 72       	andi	r22, 0x21	; 33
 4e4:	6b 5f       	subi	r22, 0xFB	; 251
 4e6:	6d 65       	ori	r22, 0x5D	; 93
 4e8:	61 73       	andi	r22, 0x31	; 49
 4ea:	75 72       	andi	r23, 0x25	; 37
 4ec:	65 5f       	subi	r22, 0xF5	; 245
 4ee:	6e 61       	ori	r22, 0x1E	; 30
 4f0:	74 69       	ori	r23, 0x94	; 148
 4f2:	76 65       	ori	r23, 0x56	; 86
 4f4:	5f 70       	andi	r21, 0x0F	; 15
 4f6:	65 72       	andi	r22, 0x25	; 37
 4f8:	66 6f       	ori	r22, 0xF6	; 246
 4fa:	72 6d       	ori	r23, 0xD2	; 210
 4fc:	61 6e       	ori	r22, 0xE1	; 225
 4fe:	63 65       	ori	r22, 0x53	; 83
 500:	00 2f       	mov	r16, r16
 502:	68 6f       	ori	r22, 0xF8	; 248
 504:	6d 65       	ori	r22, 0x5D	; 93
 506:	2f 66       	ori	r18, 0x6F	; 111
 508:	61 6e       	ori	r22, 0xE1	; 225
 50a:	68 63       	ori	r22, 0x38	; 56
 50c:	2f 77       	andi	r18, 0x7F	; 127
 50e:	61 73       	andi	r22, 0x31	; 49
 510:	6d 2d       	mov	r22, r13
 512:	61 6f       	ori	r22, 0xF1	; 241
 514:	74 2f       	mov	r23, r20
 516:	61 70       	andi	r22, 0x01	; 1
 518:	70 2f       	mov	r23, r16
 51a:	62 65       	ori	r22, 0x52	; 82
 51c:	6e 63       	ori	r22, 0x3E	; 62
 51e:	68 6d       	ori	r22, 0xD8	; 216
 520:	61 72       	andi	r22, 0x21	; 33
 522:	6b 2f       	mov	r22, r27
 524:	62 69       	ori	r22, 0x92	; 146
 526:	6e 73       	andi	r22, 0x3E	; 62
 528:	72 63       	ori	r23, 0x32	; 50
 52a:	68 2e       	mov	r6, r24
 52c:	63 00       	.word	0x0063	; ????
 52e:	75 69       	ori	r23, 0x95	; 149
 530:	6e 74       	andi	r22, 0x4E	; 78
 532:	31 36       	cpi	r19, 0x61	; 97
 534:	5f 74       	andi	r21, 0x4F	; 79
 536:	00 6d       	ori	r16, 0xD0	; 208
 538:	61 6c       	ori	r22, 0xC1	; 193
 53a:	6c 6f       	ori	r22, 0xFC	; 252
 53c:	63 00       	.word	0x0063	; ????
 53e:	74 6f       	ori	r23, 0xF4	; 244
 540:	46 69       	ori	r20, 0x96	; 150
 542:	6e 64       	ori	r22, 0x4E	; 78
	...

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
	...
   8:	06 00       	.word	0x0006	; ????
   a:	68 93       	.word	0x9368	; ????
   c:	01 69       	ori	r16, 0x91	; 145
   e:	93 01       	movw	r18, r6
	...
  18:	03 00       	.word	0x0003	; ????
  1a:	8e 7f       	andi	r24, 0xFE	; 254
  1c:	9f 00       	.word	0x009f	; ????
  1e:	00 00       	nop
  20:	00 00       	nop
  22:	00 00       	nop
  24:	00 04       	cpc	r0, r0
  26:	00 f3       	brcs	.-64     	; 0xffffffe8 <__eeprom_end+0xff7effe8>
  28:	01 68       	ori	r16, 0x81	; 129
  2a:	9f 00       	.word	0x009f	; ????
	...
  38:	00 00       	nop
  3a:	00 02       	muls	r16, r16
  3c:	00 30       	cpi	r16, 0x00	; 0
  3e:	9f 00       	.word	0x009f	; ????
  40:	00 00       	nop
  42:	00 00       	nop
  44:	00 00       	nop
  46:	00 08       	sbc	r0, r0
  48:	00 f3       	brcs	.-64     	; 0xa <__FUSE_REGION_LENGTH__+0x7>
  4a:	01 68       	ori	r16, 0x81	; 129
  4c:	20 8e       	std	Z+24, r2	; 0x18
  4e:	00 22       	and	r0, r16
  50:	9f 00       	.word	0x009f	; ????
  52:	00 00       	nop
  54:	00 00       	nop
  56:	00 00       	nop
  58:	00 07       	cpc	r16, r16
  5a:	00 8e       	std	Z+24, r0	; 0x18
  5c:	00 f3       	brcs	.-64     	; 0x1e <__FUSE_REGION_LENGTH__+0x1b>
  5e:	01 68       	ori	r16, 0x81	; 129
  60:	1c 9f       	mul	r17, r28
	...
  6a:	08 00       	.word	0x0008	; ????
  6c:	f3 01       	movw	r30, r6
  6e:	68 20       	and	r6, r8
  70:	8e 00       	.word	0x008e	; ????
  72:	22 9f       	mul	r18, r18
	...
  7c:	07 00       	.word	0x0007	; ????
  7e:	8e 00       	.word	0x008e	; ????
  80:	f3 01       	movw	r30, r6
  82:	68 1c       	adc	r6, r8
  84:	9f 00       	.word	0x009f	; ????
  86:	00 00       	nop
  88:	00 00       	nop
  8a:	00 00       	nop
  8c:	00 08       	sbc	r0, r0
  8e:	00 f3       	brcs	.-64     	; 0x50 <__SREG__+0x11>
  90:	01 68       	ori	r16, 0x81	; 129
  92:	20 8e       	std	Z+24, r2	; 0x18
  94:	00 22       	and	r0, r16
  96:	9f 00       	.word	0x009f	; ????
	...
  a4:	00 00       	nop
  a6:	00 01       	movw	r0, r0
  a8:	00 69       	ori	r16, 0x90	; 144
	...
  ba:	02 00       	.word	0x0002	; ????
  bc:	3a 9f       	mul	r19, r26
	...
  ce:	02 00       	.word	0x0002	; ????
  d0:	3b 9f       	mul	r19, r27
	...
  e2:	06 00       	.word	0x0006	; ????
  e4:	68 93       	.word	0x9368	; ????
  e6:	01 69       	ori	r16, 0x91	; 145
  e8:	93 01       	movw	r18, r6
	...
  f2:	06 00       	.word	0x0006	; ????
  f4:	64 93       	xch	Z, r22
  f6:	01 65       	ori	r16, 0x51	; 81
  f8:	93 01       	movw	r18, r6
	...
 102:	04 00       	.word	0x0004	; ????
 104:	f3 01       	movw	r30, r6
 106:	68 9f       	mul	r22, r24
	...
 118:	06 00       	.word	0x0006	; ????
 11a:	66 93       	lac	Z, r22
 11c:	01 67       	ori	r16, 0x71	; 113
 11e:	93 01       	movw	r18, r6
	...
 128:	06 00       	.word	0x0006	; ????
 12a:	62 93       	st	-Z, r22
 12c:	01 63       	ori	r16, 0x31	; 49
 12e:	93 01       	movw	r18, r6
	...
 138:	04 00       	.word	0x0004	; ????
 13a:	f3 01       	movw	r30, r6
 13c:	66 9f       	mul	r22, r22
	...
 14e:	02 00       	.word	0x0002	; ????
 150:	30 9f       	mul	r19, r16
	...
 15a:	0a 00       	.word	0x000a	; ????
 15c:	03 00       	.word	0x0003	; ????
 15e:	00 00       	nop
 160:	00 20       	and	r0, r0
 162:	8e 00       	.word	0x008e	; ????
 164:	22 9f       	mul	r18, r18
	...
 16e:	09 00       	.word	0x0009	; ????
 170:	8e 00       	.word	0x008e	; ????
 172:	03 00       	.word	0x0003	; ????
 174:	00 00       	nop
 176:	00 1c       	adc	r0, r0
 178:	9f 00       	.word	0x009f	; ????
 17a:	00 00       	nop
 17c:	00 00       	nop
 17e:	00 00       	nop
 180:	00 0a       	sbc	r0, r16
 182:	00 03       	mulsu	r16, r16
 184:	00 00       	nop
 186:	00 00       	nop
 188:	20 8e       	std	Z+24, r2	; 0x18
 18a:	00 22       	and	r0, r16
 18c:	9f 00       	.word	0x009f	; ????
 18e:	00 00       	nop
 190:	00 00       	nop
 192:	00 00       	nop
 194:	00 09       	sbc	r16, r0
 196:	00 8e       	std	Z+24, r0	; 0x18
 198:	00 03       	mulsu	r16, r16
 19a:	00 00       	nop
 19c:	00 00       	nop
 19e:	1c 9f       	mul	r17, r28
	...
 1a8:	0a 00       	.word	0x000a	; ????
 1aa:	03 00       	.word	0x0003	; ????
 1ac:	00 00       	nop
 1ae:	00 20       	and	r0, r0
 1b0:	8e 00       	.word	0x008e	; ????
 1b2:	22 9f       	mul	r18, r18
	...
 1c4:	01 00       	.word	0x0001	; ????
 1c6:	68 00       	.word	0x0068	; ????
	...
 1d4:	00 00       	nop
 1d6:	00 02       	muls	r16, r16
 1d8:	00 3a       	cpi	r16, 0xA0	; 160
 1da:	9f 00       	.word	0x009f	; ????
	...
 1e8:	00 00       	nop
 1ea:	00 02       	muls	r16, r16
 1ec:	00 3b       	cpi	r16, 0xB0	; 176
 1ee:	9f 00       	.word	0x009f	; ????
	...
 1fc:	00 00       	nop
 1fe:	00 03       	mulsu	r16, r16
 200:	00 92 20 02 	sts	0x0220, r0	; 0x800220 <__bss_end+0x111>
	...
 20c:	03 00       	.word	0x0003	; ????
 20e:	92 20       	and	r9, r2
 210:	03 00       	.word	0x0003	; ????
 212:	00 00       	nop
 214:	00 00       	nop
 216:	00 00       	nop
 218:	00 03       	mulsu	r16, r16
 21a:	00 92 20 04 	sts	0x0420, r0	; 0x800420 <__bss_end+0x311>
	...
 226:	02 00       	.word	0x0002	; ????
 228:	8c 04       	cpc	r8, r12
	...
 23a:	06 00       	.word	0x0006	; ????
 23c:	66 93       	lac	Z, r22
 23e:	01 67       	ori	r16, 0x71	; 113
 240:	93 01       	movw	r18, r6
	...
 24a:	03 00       	.word	0x0003	; ????
 24c:	91 03       	fmuls	r17, r17
 24e:	9f 00       	.word	0x009f	; ????
 250:	00 00       	nop
 252:	00 00       	nop
 254:	00 00       	nop
 256:	00 ce       	rjmp	.-1024   	; 0xfffffe58 <__eeprom_end+0xff7efe58>
 258:	00 00       	nop
 25a:	00 da       	rcall	.-3072   	; 0xfffff65c <__eeprom_end+0xff7ef65c>
 25c:	00 00       	nop
 25e:	00 03       	mulsu	r16, r16
 260:	00 08       	sbc	r0, r0
 262:	73 9f       	mul	r23, r19
	...
 26c:	d6 00       	.word	0x00d6	; ????
 26e:	00 00       	nop
 270:	da 00       	.word	0x00da	; ????
 272:	00 00       	nop
 274:	02 00       	.word	0x0002	; ????
 276:	3a 9f       	mul	r19, r26
	...
 280:	da 00       	.word	0x00da	; ????
 282:	00 00       	nop
 284:	e0 00       	.word	0x00e0	; ????
 286:	00 00       	nop
 288:	03 00       	.word	0x0003	; ????
 28a:	08 74       	andi	r16, 0x48	; 72
 28c:	9f 00       	.word	0x009f	; ????
 28e:	00 00       	nop
 290:	00 00       	nop
 292:	00 00       	nop
 294:	00 de       	rcall	.-1024   	; 0xfffffe96 <__eeprom_end+0xff7efe96>
 296:	00 00       	nop
 298:	00 e0       	ldi	r16, 0x00	; 0
 29a:	00 00       	nop
 29c:	00 02       	muls	r16, r16
 29e:	00 3a       	cpi	r16, 0xA0	; 160
 2a0:	9f 00       	.word	0x009f	; ????
 2a2:	00 00       	nop
 2a4:	00 00       	nop
 2a6:	00 00       	nop
 2a8:	00 e0       	ldi	r16, 0x00	; 0
 2aa:	00 00       	nop
 2ac:	00 e6       	ldi	r16, 0x60	; 96
 2ae:	00 00       	nop
 2b0:	00 03       	mulsu	r16, r16
 2b2:	00 08       	sbc	r0, r0
 2b4:	61 9f       	mul	r22, r17
	...
 2be:	e4 00       	.word	0x00e4	; ????
 2c0:	00 00       	nop
 2c2:	e6 00       	.word	0x00e6	; ????
 2c4:	00 00       	nop
 2c6:	02 00       	.word	0x0002	; ????
 2c8:	3a 9f       	mul	r19, r26
	...
 2d2:	e6 00       	.word	0x00e6	; ????
 2d4:	00 00       	nop
 2d6:	ec 00       	.word	0x00ec	; ????
 2d8:	00 00       	nop
 2da:	03 00       	.word	0x0003	; ????
 2dc:	08 72       	andi	r16, 0x28	; 40
 2de:	9f 00       	.word	0x009f	; ????
 2e0:	00 00       	nop
 2e2:	00 00       	nop
 2e4:	00 00       	nop
 2e6:	00 ea       	ldi	r16, 0xA0	; 160
 2e8:	00 00       	nop
 2ea:	00 ec       	ldi	r16, 0xC0	; 192
 2ec:	00 00       	nop
 2ee:	00 02       	muls	r16, r16
 2f0:	00 3a       	cpi	r16, 0xA0	; 160
 2f2:	9f 00       	.word	0x009f	; ????
 2f4:	00 00       	nop
 2f6:	00 00       	nop
 2f8:	00 00       	nop
 2fa:	00 ec       	ldi	r16, 0xC0	; 192
 2fc:	00 00       	nop
 2fe:	00 f0       	brcs	.+0      	; 0x300 <malloc+0xdc>
 300:	00 00       	nop
 302:	00 03       	mulsu	r16, r16
 304:	00 08       	sbc	r0, r0
 306:	74 9f       	mul	r23, r20
	...
 310:	ee 00       	.word	0x00ee	; ????
 312:	00 00       	nop
 314:	f0 00       	.word	0x00f0	; ????
 316:	00 00       	nop
 318:	02 00       	.word	0x0002	; ????
 31a:	3a 9f       	mul	r19, r26
	...
 324:	f0 00       	.word	0x00f0	; ????
 326:	00 00       	nop
 328:	f4 00       	.word	0x00f4	; ????
 32a:	00 00       	nop
 32c:	02 00       	.word	0x0002	; ????
 32e:	3b 9f       	mul	r19, r27
	...
 338:	f6 00       	.word	0x00f6	; ????
 33a:	00 00       	nop
 33c:	02 01       	movw	r0, r4
 33e:	00 00       	nop
 340:	03 00       	.word	0x0003	; ????
 342:	08 73       	andi	r16, 0x38	; 56
 344:	9f 00       	.word	0x009f	; ????
 346:	00 00       	nop
 348:	00 00       	nop
 34a:	00 00       	nop
 34c:	00 fe       	sbrs	r0, 0
 34e:	00 00       	nop
 350:	00 02       	muls	r16, r16
 352:	01 00       	.word	0x0001	; ????
 354:	00 02       	muls	r16, r16
 356:	00 3a       	cpi	r16, 0xA0	; 160
 358:	9f 00       	.word	0x009f	; ????
 35a:	00 00       	nop
 35c:	00 00       	nop
 35e:	00 00       	nop
 360:	00 02       	muls	r16, r16
 362:	01 00       	.word	0x0001	; ????
 364:	00 08       	sbc	r0, r0
 366:	01 00       	.word	0x0001	; ????
 368:	00 03       	mulsu	r16, r16
 36a:	00 08       	sbc	r0, r0
 36c:	74 9f       	mul	r23, r20
	...
 376:	06 01       	movw	r0, r12
 378:	00 00       	nop
 37a:	08 01       	movw	r0, r16
 37c:	00 00       	nop
 37e:	02 00       	.word	0x0002	; ????
 380:	3a 9f       	mul	r19, r26
	...
 38a:	08 01       	movw	r0, r16
 38c:	00 00       	nop
 38e:	0e 01       	movw	r0, r28
 390:	00 00       	nop
 392:	03 00       	.word	0x0003	; ????
 394:	08 6f       	ori	r16, 0xF8	; 248
 396:	9f 00       	.word	0x009f	; ????
 398:	00 00       	nop
 39a:	00 00       	nop
 39c:	00 00       	nop
 39e:	00 0c       	add	r0, r0
 3a0:	01 00       	.word	0x0001	; ????
 3a2:	00 0e       	add	r0, r16
 3a4:	01 00       	.word	0x0001	; ????
 3a6:	00 02       	muls	r16, r16
 3a8:	00 3a       	cpi	r16, 0xA0	; 160
 3aa:	9f 00       	.word	0x009f	; ????
 3ac:	00 00       	nop
 3ae:	00 00       	nop
 3b0:	00 00       	nop
 3b2:	00 0e       	add	r0, r16
 3b4:	01 00       	.word	0x0001	; ????
 3b6:	00 14       	cp	r0, r0
 3b8:	01 00       	.word	0x0001	; ????
 3ba:	00 03       	mulsu	r16, r16
 3bc:	00 08       	sbc	r0, r0
 3be:	70 9f       	mul	r23, r16
	...
 3c8:	12 01       	movw	r2, r4
 3ca:	00 00       	nop
 3cc:	14 01       	movw	r2, r8
 3ce:	00 00       	nop
 3d0:	02 00       	.word	0x0002	; ????
 3d2:	3a 9f       	mul	r19, r26
	...
 3dc:	14 01       	movw	r2, r8
 3de:	00 00       	nop
 3e0:	18 01       	movw	r2, r16
 3e2:	00 00       	nop
 3e4:	02 00       	.word	0x0002	; ????
 3e6:	3b 9f       	mul	r19, r27
	...
 3f8:	03 00       	.word	0x0003	; ????
 3fa:	92 20       	and	r9, r2
 3fc:	02 00       	.word	0x0002	; ????
 3fe:	00 00       	nop
 400:	00 00       	nop
 402:	00 00       	nop
 404:	00 03       	mulsu	r16, r16
 406:	00 92 20 03 	sts	0x0320, r0	; 0x800320 <__bss_end+0x211>
	...
 412:	03 00       	.word	0x0003	; ????
 414:	92 20       	and	r9, r2
 416:	04 00       	.word	0x0004	; ????
 418:	00 00       	nop
 41a:	00 00       	nop
 41c:	00 00       	nop
 41e:	00 03       	mulsu	r16, r16
 420:	00 92 20 05 	sts	0x0520, r0	; 0x800520 <__bss_end+0x411>
	...
 42c:	03 00       	.word	0x0003	; ????
 42e:	92 20       	and	r9, r2
 430:	06 00       	.word	0x0006	; ????
 432:	00 00       	nop
 434:	00 00       	nop
 436:	00 00       	nop
 438:	00 03       	mulsu	r16, r16
 43a:	00 92 20 07 	sts	0x0720, r0	; 0x800720 <__bss_end+0x611>
	...
 446:	03 00       	.word	0x0003	; ????
 448:	92 20       	and	r9, r2
 44a:	08 00       	.word	0x0008	; ????
 44c:	00 00       	nop
 44e:	00 00       	nop
 450:	00 00       	nop
 452:	00 03       	mulsu	r16, r16
 454:	00 92 20 02 	sts	0x0220, r0	; 0x800220 <__bss_end+0x111>
	...
 468:	0c 00       	.word	0x000c	; ????
 46a:	66 93       	lac	Z, r22
 46c:	01 67       	ori	r16, 0x71	; 113
 46e:	93 01       	movw	r18, r6
 470:	68 93       	.word	0x9368	; ????
 472:	01 69       	ori	r16, 0x91	; 145
 474:	93 01       	movw	r18, r6
	...
 47e:	04 00       	.word	0x0004	; ????
 480:	f3 01       	movw	r30, r6
 482:	66 9f       	mul	r22, r22
	...
 48c:	24 01       	movw	r4, r8
 48e:	00 00       	nop
 490:	26 01       	movw	r4, r12
 492:	00 00       	nop
 494:	03 00       	.word	0x0003	; ????
 496:	92 20       	and	r9, r2
 498:	02 26       	eor	r0, r18
 49a:	01 00       	.word	0x0001	; ????
 49c:	00 28       	or	r0, r0
 49e:	01 00       	.word	0x0001	; ????
 4a0:	00 03       	mulsu	r16, r16
 4a2:	00 92 20 03 	sts	0x0320, r0	; 0x800320 <__bss_end+0x211>
 4a6:	28 01       	movw	r4, r16
 4a8:	00 00       	nop
 4aa:	2a 01       	movw	r4, r20
 4ac:	00 00       	nop
 4ae:	03 00       	.word	0x0003	; ????
 4b0:	92 20       	and	r9, r2
 4b2:	04 2a       	or	r0, r20
 4b4:	01 00       	.word	0x0001	; ????
 4b6:	00 2c       	mov	r0, r0
 4b8:	01 00       	.word	0x0001	; ????
 4ba:	00 03       	mulsu	r16, r16
 4bc:	00 92 20 05 	sts	0x0520, r0	; 0x800520 <__bss_end+0x411>
 4c0:	2c 01       	movw	r4, r24
 4c2:	00 00       	nop
 4c4:	2e 01       	movw	r4, r28
 4c6:	00 00       	nop
 4c8:	03 00       	.word	0x0003	; ????
 4ca:	92 20       	and	r9, r2
 4cc:	06 2e       	mov	r0, r22
 4ce:	01 00       	.word	0x0001	; ????
 4d0:	00 30       	cpi	r16, 0x00	; 0
 4d2:	01 00       	.word	0x0001	; ????
 4d4:	00 03       	mulsu	r16, r16
 4d6:	00 92 20 07 	sts	0x0720, r0	; 0x800720 <__bss_end+0x611>
 4da:	30 01       	movw	r6, r0
 4dc:	00 00       	nop
 4de:	32 01       	movw	r6, r4
 4e0:	00 00       	nop
 4e2:	03 00       	.word	0x0003	; ????
 4e4:	92 20       	and	r9, r2
 4e6:	08 32       	cpi	r16, 0x28	; 40
 4e8:	01 00       	.word	0x0001	; ????
 4ea:	00 34       	cpi	r16, 0x40	; 64
 4ec:	01 00       	.word	0x0001	; ????
 4ee:	00 03       	mulsu	r16, r16
 4f0:	00 92 20 09 	sts	0x0920, r0	; 0x800920 <__bss_end+0x811>
 4f4:	34 01       	movw	r6, r8
 4f6:	00 00       	nop
 4f8:	36 01       	movw	r6, r12
 4fa:	00 00       	nop
 4fc:	03 00       	.word	0x0003	; ????
 4fe:	92 20       	and	r9, r2
 500:	0a 36       	cpi	r16, 0x6A	; 106
 502:	01 00       	.word	0x0001	; ????
 504:	00 38       	cpi	r16, 0x80	; 128
 506:	01 00       	.word	0x0001	; ????
 508:	00 03       	mulsu	r16, r16
 50a:	00 92 20 0b 	sts	0x0B20, r0	; 0x800b20 <__bss_end+0xa11>
 50e:	38 01       	movw	r6, r16
 510:	00 00       	nop
 512:	3a 01       	movw	r6, r20
 514:	00 00       	nop
 516:	03 00       	.word	0x0003	; ????
 518:	92 20       	and	r9, r2
 51a:	0c 3a       	cpi	r16, 0xAC	; 172
 51c:	01 00       	.word	0x0001	; ????
 51e:	00 3c       	cpi	r16, 0xC0	; 192
 520:	01 00       	.word	0x0001	; ????
 522:	00 03       	mulsu	r16, r16
 524:	00 92 20 0d 	sts	0x0D20, r0	; 0x800d20 <__bss_end+0xc11>
 528:	3c 01       	movw	r6, r24
 52a:	00 00       	nop
 52c:	ee 01       	movw	r28, r28
 52e:	00 00       	nop
 530:	03 00       	.word	0x0003	; ????
 532:	92 20       	and	r9, r2
 534:	0e 00       	.word	0x000e	; ????
 536:	00 00       	nop
 538:	00 00       	nop
 53a:	00 00       	nop
 53c:	00 24       	eor	r0, r0
 53e:	01 00       	.word	0x0001	; ????
 540:	00 43       	sbci	r16, 0x30	; 48
 542:	01 00       	.word	0x0001	; ????
 544:	00 06       	cpc	r0, r16
 546:	00 68       	ori	r16, 0x80	; 128
 548:	93 01       	movw	r18, r6
 54a:	69 93       	st	Y+, r22
 54c:	01 43       	sbci	r16, 0x31	; 49
 54e:	01 00       	.word	0x0001	; ????
 550:	00 66       	ori	r16, 0x60	; 96
 552:	01 00       	.word	0x0001	; ????
 554:	00 06       	cpc	r0, r16
 556:	00 60       	ori	r16, 0x00	; 0
 558:	93 01       	movw	r18, r6
 55a:	61 93       	st	Z+, r22
 55c:	01 66       	ori	r16, 0x61	; 97
 55e:	01 00       	.word	0x0001	; ????
 560:	00 c5       	rjmp	.+2560   	; 0xf62 <__data_load_end+0xaf2>
 562:	01 00       	.word	0x0001	; ????
 564:	00 03       	mulsu	r16, r16
 566:	00 8a       	std	Z+16, r0	; 0x10
 568:	01 9f       	mul	r16, r17
 56a:	c5 01       	movw	r24, r10
 56c:	00 00       	nop
 56e:	ee 01       	movw	r28, r28
 570:	00 00       	nop
 572:	04 00       	.word	0x0004	; ????
 574:	f3 01       	movw	r30, r6
 576:	68 9f       	mul	r22, r24
	...
 580:	24 01       	movw	r4, r8
 582:	00 00       	nop
 584:	43 01       	movw	r8, r6
 586:	00 00       	nop
 588:	06 00       	.word	0x0006	; ????
 58a:	66 93       	lac	Z, r22
 58c:	01 67       	ori	r16, 0x71	; 113
 58e:	93 01       	movw	r18, r6
 590:	43 01       	movw	r8, r6
 592:	00 00       	nop
 594:	d8 01       	movw	r26, r16
 596:	00 00       	nop
 598:	06 00       	.word	0x0006	; ????
 59a:	6c 93       	st	X, r22
 59c:	01 6d       	ori	r16, 0xD1	; 209
 59e:	93 01       	movw	r18, r6
 5a0:	d8 01       	movw	r26, r16
 5a2:	00 00       	nop
 5a4:	ee 01       	movw	r28, r28
 5a6:	00 00       	nop
 5a8:	04 00       	.word	0x0004	; ????
 5aa:	f3 01       	movw	r30, r6
 5ac:	66 9f       	mul	r22, r22
	...
 5b6:	5e 01       	movw	r10, r28
 5b8:	00 00       	nop
 5ba:	ec 01       	movw	r28, r24
 5bc:	00 00       	nop
 5be:	0c 00       	.word	0x000c	; ????
 5c0:	58 93       	.word	0x9358	; ????
 5c2:	01 59       	subi	r16, 0x91	; 145
 5c4:	93 01       	movw	r18, r6
 5c6:	5a 93       	st	-Y, r21
 5c8:	01 5b       	subi	r16, 0xB1	; 177
 5ca:	93 01       	movw	r18, r6
	...
 5d4:	5e 01       	movw	r10, r28
 5d6:	00 00       	nop
 5d8:	66 01       	movw	r12, r12
 5da:	00 00       	nop
 5dc:	02 00       	.word	0x0002	; ????
 5de:	30 9f       	mul	r19, r16
 5e0:	6e 01       	movw	r12, r28
 5e2:	00 00       	nop
 5e4:	7a 01       	movw	r14, r20
 5e6:	00 00       	nop
 5e8:	06 00       	.word	0x0006	; ????
 5ea:	60 93 01 61 	sts	0x6101, r22	; 0x806101 <__bss_end+0x5ff2>
 5ee:	93 01       	movw	r18, r6
 5f0:	86 01       	movw	r16, r12
 5f2:	00 00       	nop
 5f4:	dc 01       	movw	r26, r24
 5f6:	00 00       	nop
 5f8:	06 00       	.word	0x0006	; ????
 5fa:	60 93 01 61 	sts	0x6101, r22	; 0x806101 <__bss_end+0x5ff2>
 5fe:	93 01       	movw	r18, r6
 600:	dc 01       	movw	r26, r24
 602:	00 00       	nop
 604:	ee 01       	movw	r28, r28
 606:	00 00       	nop
 608:	06 00       	.word	0x0006	; ????
 60a:	68 93       	.word	0x9368	; ????
 60c:	01 69       	ori	r16, 0x91	; 145
 60e:	93 01       	movw	r18, r6
	...
 618:	5e 01       	movw	r10, r28
 61a:	00 00       	nop
 61c:	66 01       	movw	r12, r12
 61e:	00 00       	nop
 620:	02 00       	.word	0x0002	; ????
 622:	30 9f       	mul	r19, r16
 624:	66 01       	movw	r12, r12
 626:	00 00       	nop
 628:	bc 01       	movw	r22, r24
 62a:	00 00       	nop
 62c:	07 00       	.word	0x0007	; ????
 62e:	0a e8       	ldi	r16, 0x8A	; 138
 630:	03 86       	std	Z+11, r0	; 0x0b
 632:	00 1c       	adc	r0, r0
 634:	9f bc       	out	0x2f, r9	; 47
 636:	01 00       	.word	0x0001	; ????
 638:	00 c0       	rjmp	.+0      	; 0x63a <__data_load_end+0x1ca>
 63a:	01 00       	.word	0x0001	; ????
 63c:	00 07       	cpc	r16, r16
 63e:	00 0a       	sbc	r0, r16
 640:	e9 03       	fmulsu	r22, r17
 642:	86 00       	.word	0x0086	; ????
 644:	1c 9f       	mul	r17, r28
 646:	c0 01       	movw	r24, r0
 648:	00 00       	nop
 64a:	c5 01       	movw	r24, r10
 64c:	00 00       	nop
 64e:	07 00       	.word	0x0007	; ????
 650:	0a e8       	ldi	r16, 0x8A	; 138
 652:	03 86       	std	Z+11, r0	; 0x0b
 654:	00 1c       	adc	r0, r0
 656:	9f 00       	.word	0x009f	; ????
 658:	00 00       	nop
 65a:	00 00       	nop
 65c:	00 00       	nop
 65e:	00 66       	ori	r16, 0x60	; 96
 660:	01 00       	.word	0x0001	; ????
 662:	00 6e       	ori	r16, 0xE0	; 224
 664:	01 00       	.word	0x0001	; ????
 666:	00 02       	muls	r16, r16
 668:	00 30       	cpi	r16, 0x00	; 0
 66a:	9f 6e       	ori	r25, 0xEF	; 239
 66c:	01 00       	.word	0x0001	; ????
 66e:	00 70       	andi	r16, 0x00	; 0
 670:	01 00       	.word	0x0001	; ????
 672:	00 06       	cpc	r0, r16
 674:	00 62       	ori	r16, 0x20	; 32
 676:	93 01       	movw	r18, r6
 678:	63 93       	.word	0x9363	; ????
 67a:	01 74       	andi	r16, 0x41	; 65
 67c:	01 00       	.word	0x0001	; ????
 67e:	00 c5       	rjmp	.+2560   	; 0x1080 <__data_load_end+0xc10>
 680:	01 00       	.word	0x0001	; ????
 682:	00 06       	cpc	r0, r16
 684:	00 62       	ori	r16, 0x20	; 32
 686:	93 01       	movw	r18, r6
 688:	63 93       	.word	0x9363	; ????
 68a:	01 00       	.word	0x0001	; ????
 68c:	00 00       	nop
 68e:	00 00       	nop
 690:	00 00       	nop
 692:	00 66       	ori	r16, 0x60	; 96
 694:	01 00       	.word	0x0001	; ????
 696:	00 6e       	ori	r16, 0xE0	; 224
 698:	01 00       	.word	0x0001	; ????
 69a:	00 06       	cpc	r0, r16
 69c:	00 6a       	ori	r16, 0xA0	; 160
 69e:	93 01       	movw	r18, r6
 6a0:	6b 93       	.word	0x936b	; ????
 6a2:	01 6e       	ori	r16, 0xE1	; 225
 6a4:	01 00       	.word	0x0001	; ????
 6a6:	00 b2       	in	r0, 0x10	; 16
 6a8:	01 00       	.word	0x0001	; ????
 6aa:	00 06       	cpc	r0, r16
 6ac:	00 64       	ori	r16, 0x40	; 64
 6ae:	93 01       	movw	r18, r6
 6b0:	65 93       	las	Z, r22
 6b2:	01 b6       	in	r0, 0x31	; 49
 6b4:	01 00       	.word	0x0001	; ????
 6b6:	00 c5       	rjmp	.+2560   	; 0x10b8 <__data_load_end+0xc48>
 6b8:	01 00       	.word	0x0001	; ????
 6ba:	00 06       	cpc	r0, r16
 6bc:	00 64       	ori	r16, 0x40	; 64
 6be:	93 01       	movw	r18, r6
 6c0:	65 93       	las	Z, r22
 6c2:	01 00       	.word	0x0001	; ????
 6c4:	00 00       	nop
 6c6:	00 00       	nop
 6c8:	00 00       	nop
 6ca:	00 6e       	ori	r16, 0xE0	; 224
 6cc:	01 00       	.word	0x0001	; ????
 6ce:	00 7a       	andi	r16, 0xA0	; 160
 6d0:	01 00       	.word	0x0001	; ????
 6d2:	00 0c       	add	r0, r0
 6d4:	00 5c       	subi	r16, 0xC0	; 192
 6d6:	93 01       	movw	r18, r6
 6d8:	5d 93       	st	X+, r21
 6da:	01 5e       	subi	r16, 0xE1	; 225
 6dc:	93 01       	movw	r18, r6
 6de:	5f 93       	push	r21
 6e0:	01 9c       	mul	r0, r1
 6e2:	01 00       	.word	0x0001	; ????
 6e4:	00 e4       	ldi	r16, 0x40	; 64
 6e6:	01 00       	.word	0x0001	; ????
 6e8:	00 0c       	add	r0, r0
 6ea:	00 5c       	subi	r16, 0xC0	; 192
 6ec:	93 01       	movw	r18, r6
 6ee:	5d 93       	st	X+, r21
 6f0:	01 5e       	subi	r16, 0xE1	; 225
 6f2:	93 01       	movw	r18, r6
 6f4:	5f 93       	push	r21
 6f6:	01 00       	.word	0x0001	; ????
 6f8:	00 00       	nop
 6fa:	00 00       	nop
 6fc:	00 00       	nop
 6fe:	00 f6       	brcc	.-128    	; 0x680 <__data_load_end+0x210>
 700:	01 00       	.word	0x0001	; ????
 702:	00 20       	and	r0, r0
 704:	02 00       	.word	0x0002	; ????
 706:	00 06       	cpc	r0, r16
 708:	00 68       	ori	r16, 0x80	; 128
 70a:	93 01       	movw	r18, r6
 70c:	69 93       	st	Y+, r22
 70e:	01 00       	.word	0x0001	; ????
 710:	00 00       	nop
 712:	00 00       	nop
 714:	00 00       	nop
 716:	00 f6       	brcc	.-128    	; 0x698 <__data_load_end+0x228>
 718:	01 00       	.word	0x0001	; ????
 71a:	00 00       	nop
 71c:	02 00       	.word	0x0002	; ????
 71e:	00 02       	muls	r16, r16
 720:	00 30       	cpi	r16, 0x00	; 0
 722:	9f 00       	.word	0x009f	; ????
 724:	02 00       	.word	0x0002	; ????
 726:	00 08       	sbc	r0, r0
 728:	02 00       	.word	0x0002	; ????
 72a:	00 03       	mulsu	r16, r16
 72c:	00 84       	ldd	r0, Z+8	; 0x08
 72e:	1e 9f       	mul	r17, r30
 730:	08 02       	muls	r16, r24
 732:	00 00       	nop
 734:	10 02       	muls	r17, r16
 736:	00 00       	nop
 738:	03 00       	.word	0x0003	; ????
 73a:	84 1f       	adc	r24, r20
 73c:	9f 10       	cpse	r9, r15
 73e:	02 00       	.word	0x0002	; ????
 740:	00 23       	and	r16, r16
 742:	02 00       	.word	0x0002	; ????
 744:	00 07       	cpc	r16, r16
 746:	00 8e       	std	Z+24, r0	; 0x18
 748:	7c 94 01 23 	jmp	0x1c4602	; 0x1c4602 <__TEXT_REGION_LENGTH__+0x1a4602>
 74c:	1f 9f       	mul	r17, r31
	...

Disassembly of section .debug_ranges:

00000000 <.debug_ranges>:
   0:	01 00       	.word	0x0001	; ????
   2:	00 00       	nop
   4:	01 00       	.word	0x0001	; ????
   6:	00 00       	nop
   8:	01 00       	.word	0x0001	; ????
   a:	00 00       	nop
   c:	01 00       	.word	0x0001	; ????
	...
  16:	00 00       	nop
  18:	01 00       	.word	0x0001	; ????
  1a:	00 00       	nop
  1c:	01 00       	.word	0x0001	; ????
  1e:	00 00       	nop
  20:	01 00       	.word	0x0001	; ????
  22:	00 00       	nop
  24:	01 00       	.word	0x0001	; ????
	...
  2e:	00 00       	nop
  30:	01 00       	.word	0x0001	; ????
  32:	00 00       	nop
  34:	01 00       	.word	0x0001	; ????
  36:	00 00       	nop
  38:	01 00       	.word	0x0001	; ????
  3a:	00 00       	nop
  3c:	01 00       	.word	0x0001	; ????
	...
  46:	00 00       	nop
  48:	01 00       	.word	0x0001	; ????
  4a:	00 00       	nop
  4c:	01 00       	.word	0x0001	; ????
  4e:	00 00       	nop
  50:	01 00       	.word	0x0001	; ????
  52:	00 00       	nop
  54:	01 00       	.word	0x0001	; ????
	...
  5e:	00 00       	nop
  60:	01 00       	.word	0x0001	; ????
  62:	00 00       	nop
  64:	01 00       	.word	0x0001	; ????
  66:	00 00       	nop
  68:	01 00       	.word	0x0001	; ????
  6a:	00 00       	nop
  6c:	01 00       	.word	0x0001	; ????
	...
  76:	00 00       	nop
  78:	01 00       	.word	0x0001	; ????
  7a:	00 00       	nop
  7c:	01 00       	.word	0x0001	; ????
  7e:	00 00       	nop
  80:	01 00       	.word	0x0001	; ????
  82:	00 00       	nop
  84:	01 00       	.word	0x0001	; ????
	...
  8e:	00 00       	nop
  90:	01 00       	.word	0x0001	; ????
  92:	00 00       	nop
  94:	01 00       	.word	0x0001	; ????
  96:	00 00       	nop
  98:	01 00       	.word	0x0001	; ????
  9a:	00 00       	nop
  9c:	01 00       	.word	0x0001	; ????
  9e:	00 00       	nop
  a0:	01 00       	.word	0x0001	; ????
  a2:	00 00       	nop
  a4:	01 00       	.word	0x0001	; ????
  a6:	00 00       	nop
  a8:	ce 00       	.word	0x00ce	; ????
  aa:	00 00       	nop
  ac:	f6 00       	.word	0x00f6	; ????
  ae:	00 00       	nop
  b0:	f6 00       	.word	0x00f6	; ????
  b2:	00 00       	nop
  b4:	1a 01       	movw	r2, r20
  b6:	00 00       	nop
  b8:	01 00       	.word	0x0001	; ????
  ba:	00 00       	nop
  bc:	01 00       	.word	0x0001	; ????
  be:	00 00       	nop
  c0:	01 00       	.word	0x0001	; ????
  c2:	00 00       	nop
  c4:	01 00       	.word	0x0001	; ????
  c6:	00 00       	nop
  c8:	01 00       	.word	0x0001	; ????
  ca:	00 00       	nop
  cc:	01 00       	.word	0x0001	; ????
  ce:	00 00       	nop
  d0:	1a 01       	movw	r2, r20
  d2:	00 00       	nop
  d4:	24 01       	movw	r4, r8
	...
  de:	00 00       	nop
  e0:	6e 01       	movw	r12, r28
  e2:	00 00       	nop
  e4:	74 01       	movw	r14, r8
  e6:	00 00       	nop
  e8:	7a 01       	movw	r14, r20
  ea:	00 00       	nop
  ec:	b6 01       	movw	r22, r12
	...
  f6:	00 00       	nop
  f8:	24 01       	movw	r4, r8
  fa:	00 00       	nop
  fc:	ee 01       	movw	r28, r28
  fe:	00 00       	nop
 100:	ee 01       	movw	r28, r28
 102:	00 00       	nop
 104:	24 02       	muls	r18, r20
	...
