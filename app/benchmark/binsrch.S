
/home/fanhc/wasm-aot/app/benchmark/binsrch.elf:     file format elf32-avr


Disassembly of section .data:

00800100 <__data_start>:
	...

00800102 <__malloc_heap_start>:
  800102:	10 01       	movw	r2, r0

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
  9e:	e2 eb       	ldi	r30, 0xB2	; 178
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
  bc:	a0 31       	cpi	r26, 0x10	; 16
  be:	b2 07       	cpc	r27, r18
  c0:	e1 f7       	brne	.-8      	; 0xba <.do_clear_bss_loop>
  c2:	0e 94 b0 00 	call	0x160	; 0x160 <main>
  c6:	0c 94 57 02 	jmp	0x4ae	; 0x4ae <_exit>

000000ca <__bad_interrupt>:
  ca:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000ce <rtc_startBenchmarkMeasurement_Native>:
  ce:	e6 e0       	ldi	r30, 0x06	; 6
  d0:	f1 e0       	ldi	r31, 0x01	; 1
  d2:	82 e6       	ldi	r24, 0x62	; 98
  d4:	81 83       	std	Z+1, r24	; 0x01
  d6:	8a e0       	ldi	r24, 0x0A	; 10
  d8:	80 83       	st	Z, r24
  da:	95 e6       	ldi	r25, 0x65	; 101
  dc:	91 83       	std	Z+1, r25	; 0x01
  de:	80 83       	st	Z, r24
  e0:	9e e6       	ldi	r25, 0x6E	; 110
  e2:	91 83       	std	Z+1, r25	; 0x01
  e4:	80 83       	st	Z, r24
  e6:	93 e6       	ldi	r25, 0x63	; 99
  e8:	91 83       	std	Z+1, r25	; 0x01
  ea:	80 83       	st	Z, r24
  ec:	98 e6       	ldi	r25, 0x68	; 104
  ee:	91 83       	std	Z+1, r25	; 0x01
  f0:	80 83       	st	Z, r24
  f2:	93 e7       	ldi	r25, 0x73	; 115
  f4:	91 83       	std	Z+1, r25	; 0x01
  f6:	80 83       	st	Z, r24
  f8:	94 e7       	ldi	r25, 0x74	; 116
  fa:	91 83       	std	Z+1, r25	; 0x01
  fc:	80 83       	st	Z, r24
  fe:	21 e6       	ldi	r18, 0x61	; 97
 100:	21 83       	std	Z+1, r18	; 0x01
 102:	80 83       	st	Z, r24
 104:	22 e7       	ldi	r18, 0x72	; 114
 106:	21 83       	std	Z+1, r18	; 0x01
 108:	80 83       	st	Z, r24
 10a:	91 83       	std	Z+1, r25	; 0x01
 10c:	80 83       	st	Z, r24
 10e:	8b e0       	ldi	r24, 0x0B	; 11
 110:	80 83       	st	Z, r24
 112:	81 e0       	ldi	r24, 0x01	; 1
 114:	80 93 0b 01 	sts	0x010B, r24	; 0x80010b <avroraTraceEnabledVariable>
 118:	08 95       	ret

0000011a <rtc_stopBenchmarkMeasurement>:
 11a:	10 92 0b 01 	sts	0x010B, r1	; 0x80010b <avroraTraceEnabledVariable>
 11e:	e6 e0       	ldi	r30, 0x06	; 6
 120:	f1 e0       	ldi	r31, 0x01	; 1
 122:	82 e6       	ldi	r24, 0x62	; 98
 124:	81 83       	std	Z+1, r24	; 0x01
 126:	8a e0       	ldi	r24, 0x0A	; 10
 128:	80 83       	st	Z, r24
 12a:	95 e6       	ldi	r25, 0x65	; 101
 12c:	91 83       	std	Z+1, r25	; 0x01
 12e:	80 83       	st	Z, r24
 130:	9e e6       	ldi	r25, 0x6E	; 110
 132:	91 83       	std	Z+1, r25	; 0x01
 134:	80 83       	st	Z, r24
 136:	93 e6       	ldi	r25, 0x63	; 99
 138:	91 83       	std	Z+1, r25	; 0x01
 13a:	80 83       	st	Z, r24
 13c:	98 e6       	ldi	r25, 0x68	; 104
 13e:	91 83       	std	Z+1, r25	; 0x01
 140:	80 83       	st	Z, r24
 142:	93 e7       	ldi	r25, 0x73	; 115
 144:	91 83       	std	Z+1, r25	; 0x01
 146:	80 83       	st	Z, r24
 148:	94 e7       	ldi	r25, 0x74	; 116
 14a:	91 83       	std	Z+1, r25	; 0x01
 14c:	80 83       	st	Z, r24
 14e:	9f e6       	ldi	r25, 0x6F	; 111
 150:	91 83       	std	Z+1, r25	; 0x01
 152:	80 83       	st	Z, r24
 154:	90 e7       	ldi	r25, 0x70	; 112
 156:	91 83       	std	Z+1, r25	; 0x01
 158:	80 83       	st	Z, r24
 15a:	8b e0       	ldi	r24, 0x0B	; 11
 15c:	80 83       	st	Z, r24
 15e:	08 95       	ret

00000160 <main>:
 160:	0e 94 1b 01 	call	0x236	; 0x236 <javax_rtcbench_RTCBenchmark_void_test_native>
 164:	98 95       	break
 166:	80 e0       	ldi	r24, 0x00	; 0
 168:	90 e0       	ldi	r25, 0x00	; 0
 16a:	08 95       	ret

0000016c <rtcbenchmark_measure_native_performance>:
 16c:	8f 92       	push	r8
 16e:	9f 92       	push	r9
 170:	af 92       	push	r10
 172:	bf 92       	push	r11
 174:	cf 92       	push	r12
 176:	df 92       	push	r13
 178:	ef 92       	push	r14
 17a:	ff 92       	push	r15
 17c:	0f 93       	push	r16
 17e:	1f 93       	push	r17
 180:	cf 93       	push	r28
 182:	df 93       	push	r29
 184:	ec 01       	movw	r28, r24
 186:	8b 01       	movw	r16, r22
 188:	0e 94 67 00 	call	0xce	; 0xce <rtc_startBenchmarkMeasurement_Native>
 18c:	fe 01       	movw	r30, r28
 18e:	e1 50       	subi	r30, 0x01	; 1
 190:	f0 4c       	sbci	r31, 0xC0	; 192
 192:	ee 0f       	add	r30, r30
 194:	ff 1f       	adc	r31, r31
 196:	ee 0f       	add	r30, r30
 198:	ff 1f       	adc	r31, r31
 19a:	e0 0f       	add	r30, r16
 19c:	f1 1f       	adc	r31, r17
 19e:	c0 80       	ld	r12, Z
 1a0:	d1 80       	ldd	r13, Z+1	; 0x01
 1a2:	e2 80       	ldd	r14, Z+2	; 0x02
 1a4:	f3 80       	ldd	r15, Z+3	; 0x03
 1a6:	28 ee       	ldi	r18, 0xE8	; 232
 1a8:	33 e0       	ldi	r19, 0x03	; 3
 1aa:	de 01       	movw	r26, r28
 1ac:	11 97       	sbiw	r26, 0x01	; 1
 1ae:	bd 01       	movw	r22, r26
 1b0:	40 e0       	ldi	r20, 0x00	; 0
 1b2:	50 e0       	ldi	r21, 0x00	; 0
 1b4:	ca 01       	movw	r24, r20
 1b6:	86 0f       	add	r24, r22
 1b8:	97 1f       	adc	r25, r23
 1ba:	ec 01       	movw	r28, r24
 1bc:	d6 95       	lsr	r29
 1be:	c7 95       	ror	r28
 1c0:	fe 01       	movw	r30, r28
 1c2:	ee 0f       	add	r30, r30
 1c4:	ff 1f       	adc	r31, r31
 1c6:	ee 0f       	add	r30, r30
 1c8:	ff 1f       	adc	r31, r31
 1ca:	e0 0f       	add	r30, r16
 1cc:	f1 1f       	adc	r31, r17
 1ce:	80 80       	ld	r8, Z
 1d0:	91 80       	ldd	r9, Z+1	; 0x01
 1d2:	a2 80       	ldd	r10, Z+2	; 0x02
 1d4:	b3 80       	ldd	r11, Z+3	; 0x03
 1d6:	8c 14       	cp	r8, r12
 1d8:	9d 04       	cpc	r9, r13
 1da:	ae 04       	cpc	r10, r14
 1dc:	bf 04       	cpc	r11, r15
 1de:	24 f4       	brge	.+8      	; 0x1e8 <rtcbenchmark_measure_native_performance+0x7c>
 1e0:	ae 01       	movw	r20, r28
 1e2:	4f 5f       	subi	r20, 0xFF	; 255
 1e4:	5f 4f       	sbci	r21, 0xFF	; 255
 1e6:	22 c0       	rjmp	.+68     	; 0x22c <rtcbenchmark_measure_native_performance+0xc0>
 1e8:	c8 14       	cp	r12, r8
 1ea:	d9 04       	cpc	r13, r9
 1ec:	ea 04       	cpc	r14, r10
 1ee:	fb 04       	cpc	r15, r11
 1f0:	d4 f0       	brlt	.+52     	; 0x226 <rtcbenchmark_measure_native_performance+0xba>
 1f2:	21 50       	subi	r18, 0x01	; 1
 1f4:	31 09       	sbc	r19, r1
 1f6:	d9 f6       	brne	.-74     	; 0x1ae <rtcbenchmark_measure_native_performance+0x42>
 1f8:	0e 94 8d 00 	call	0x11a	; 0x11a <rtc_stopBenchmarkMeasurement>
 1fc:	ce 01       	movw	r24, r28
 1fe:	a0 e0       	ldi	r26, 0x00	; 0
 200:	b0 e0       	ldi	r27, 0x00	; 0
 202:	f8 01       	movw	r30, r16
 204:	80 83       	st	Z, r24
 206:	91 83       	std	Z+1, r25	; 0x01
 208:	a2 83       	std	Z+2, r26	; 0x02
 20a:	b3 83       	std	Z+3, r27	; 0x03
 20c:	df 91       	pop	r29
 20e:	cf 91       	pop	r28
 210:	1f 91       	pop	r17
 212:	0f 91       	pop	r16
 214:	ff 90       	pop	r15
 216:	ef 90       	pop	r14
 218:	df 90       	pop	r13
 21a:	cf 90       	pop	r12
 21c:	bf 90       	pop	r11
 21e:	af 90       	pop	r10
 220:	9f 90       	pop	r9
 222:	8f 90       	pop	r8
 224:	08 95       	ret
 226:	be 01       	movw	r22, r28
 228:	61 50       	subi	r22, 0x01	; 1
 22a:	71 09       	sbc	r23, r1
 22c:	64 17       	cp	r22, r20
 22e:	75 07       	cpc	r23, r21
 230:	08 f0       	brcs	.+2      	; 0x234 <rtcbenchmark_measure_native_performance+0xc8>
 232:	c0 cf       	rjmp	.-128    	; 0x1b4 <rtcbenchmark_measure_native_performance+0x48>
 234:	de cf       	rjmp	.-68     	; 0x1f2 <rtcbenchmark_measure_native_performance+0x86>

00000236 <javax_rtcbench_RTCBenchmark_void_test_native>:
 236:	80 e9       	ldi	r24, 0x90	; 144
 238:	91 e0       	ldi	r25, 0x01	; 1
 23a:	0e 94 36 01 	call	0x26c	; 0x26c <malloc>
 23e:	fc 01       	movw	r30, r24
 240:	42 ee       	ldi	r20, 0xE2	; 226
 242:	5f ef       	ldi	r21, 0xFF	; 255
 244:	6f ef       	ldi	r22, 0xFF	; 255
 246:	7f ef       	ldi	r23, 0xFF	; 255
 248:	41 93       	st	Z+, r20
 24a:	51 93       	st	Z+, r21
 24c:	61 93       	st	Z+, r22
 24e:	71 93       	st	Z+, r23
 250:	4f 5f       	subi	r20, 0xFF	; 255
 252:	5f 4f       	sbci	r21, 0xFF	; 255
 254:	6f 4f       	sbci	r22, 0xFF	; 255
 256:	7f 4f       	sbci	r23, 0xFF	; 255
 258:	46 34       	cpi	r20, 0x46	; 70
 25a:	51 05       	cpc	r21, r1
 25c:	61 05       	cpc	r22, r1
 25e:	71 05       	cpc	r23, r1
 260:	99 f7       	brne	.-26     	; 0x248 <javax_rtcbench_RTCBenchmark_void_test_native+0x12>
 262:	bc 01       	movw	r22, r24
 264:	84 e6       	ldi	r24, 0x64	; 100
 266:	90 e0       	ldi	r25, 0x00	; 0
 268:	0c 94 b6 00 	jmp	0x16c	; 0x16c <rtcbenchmark_measure_native_performance>

0000026c <malloc>:
 26c:	0f 93       	push	r16
 26e:	1f 93       	push	r17
 270:	cf 93       	push	r28
 272:	df 93       	push	r29
 274:	82 30       	cpi	r24, 0x02	; 2
 276:	91 05       	cpc	r25, r1
 278:	10 f4       	brcc	.+4      	; 0x27e <malloc+0x12>
 27a:	82 e0       	ldi	r24, 0x02	; 2
 27c:	90 e0       	ldi	r25, 0x00	; 0
 27e:	e0 91 0e 01 	lds	r30, 0x010E	; 0x80010e <__flp>
 282:	f0 91 0f 01 	lds	r31, 0x010F	; 0x80010f <__flp+0x1>
 286:	20 e0       	ldi	r18, 0x00	; 0
 288:	30 e0       	ldi	r19, 0x00	; 0
 28a:	a0 e0       	ldi	r26, 0x00	; 0
 28c:	b0 e0       	ldi	r27, 0x00	; 0
 28e:	30 97       	sbiw	r30, 0x00	; 0
 290:	19 f1       	breq	.+70     	; 0x2d8 <malloc+0x6c>
 292:	40 81       	ld	r20, Z
 294:	51 81       	ldd	r21, Z+1	; 0x01
 296:	02 81       	ldd	r16, Z+2	; 0x02
 298:	13 81       	ldd	r17, Z+3	; 0x03
 29a:	48 17       	cp	r20, r24
 29c:	59 07       	cpc	r21, r25
 29e:	c8 f0       	brcs	.+50     	; 0x2d2 <malloc+0x66>
 2a0:	84 17       	cp	r24, r20
 2a2:	95 07       	cpc	r25, r21
 2a4:	69 f4       	brne	.+26     	; 0x2c0 <malloc+0x54>
 2a6:	10 97       	sbiw	r26, 0x00	; 0
 2a8:	31 f0       	breq	.+12     	; 0x2b6 <malloc+0x4a>
 2aa:	12 96       	adiw	r26, 0x02	; 2
 2ac:	0c 93       	st	X, r16
 2ae:	12 97       	sbiw	r26, 0x02	; 2
 2b0:	13 96       	adiw	r26, 0x03	; 3
 2b2:	1c 93       	st	X, r17
 2b4:	27 c0       	rjmp	.+78     	; 0x304 <malloc+0x98>
 2b6:	00 93 0e 01 	sts	0x010E, r16	; 0x80010e <__flp>
 2ba:	10 93 0f 01 	sts	0x010F, r17	; 0x80010f <__flp+0x1>
 2be:	22 c0       	rjmp	.+68     	; 0x304 <malloc+0x98>
 2c0:	21 15       	cp	r18, r1
 2c2:	31 05       	cpc	r19, r1
 2c4:	19 f0       	breq	.+6      	; 0x2cc <malloc+0x60>
 2c6:	42 17       	cp	r20, r18
 2c8:	53 07       	cpc	r21, r19
 2ca:	18 f4       	brcc	.+6      	; 0x2d2 <malloc+0x66>
 2cc:	9a 01       	movw	r18, r20
 2ce:	bd 01       	movw	r22, r26
 2d0:	ef 01       	movw	r28, r30
 2d2:	df 01       	movw	r26, r30
 2d4:	f8 01       	movw	r30, r16
 2d6:	db cf       	rjmp	.-74     	; 0x28e <malloc+0x22>
 2d8:	21 15       	cp	r18, r1
 2da:	31 05       	cpc	r19, r1
 2dc:	f9 f0       	breq	.+62     	; 0x31c <malloc+0xb0>
 2de:	28 1b       	sub	r18, r24
 2e0:	39 0b       	sbc	r19, r25
 2e2:	24 30       	cpi	r18, 0x04	; 4
 2e4:	31 05       	cpc	r19, r1
 2e6:	80 f4       	brcc	.+32     	; 0x308 <malloc+0x9c>
 2e8:	8a 81       	ldd	r24, Y+2	; 0x02
 2ea:	9b 81       	ldd	r25, Y+3	; 0x03
 2ec:	61 15       	cp	r22, r1
 2ee:	71 05       	cpc	r23, r1
 2f0:	21 f0       	breq	.+8      	; 0x2fa <malloc+0x8e>
 2f2:	fb 01       	movw	r30, r22
 2f4:	93 83       	std	Z+3, r25	; 0x03
 2f6:	82 83       	std	Z+2, r24	; 0x02
 2f8:	04 c0       	rjmp	.+8      	; 0x302 <malloc+0x96>
 2fa:	90 93 0f 01 	sts	0x010F, r25	; 0x80010f <__flp+0x1>
 2fe:	80 93 0e 01 	sts	0x010E, r24	; 0x80010e <__flp>
 302:	fe 01       	movw	r30, r28
 304:	32 96       	adiw	r30, 0x02	; 2
 306:	44 c0       	rjmp	.+136    	; 0x390 <malloc+0x124>
 308:	fe 01       	movw	r30, r28
 30a:	e2 0f       	add	r30, r18
 30c:	f3 1f       	adc	r31, r19
 30e:	81 93       	st	Z+, r24
 310:	91 93       	st	Z+, r25
 312:	22 50       	subi	r18, 0x02	; 2
 314:	31 09       	sbc	r19, r1
 316:	39 83       	std	Y+1, r19	; 0x01
 318:	28 83       	st	Y, r18
 31a:	3a c0       	rjmp	.+116    	; 0x390 <malloc+0x124>
 31c:	20 91 0c 01 	lds	r18, 0x010C	; 0x80010c <__brkval>
 320:	30 91 0d 01 	lds	r19, 0x010D	; 0x80010d <__brkval+0x1>
 324:	23 2b       	or	r18, r19
 326:	41 f4       	brne	.+16     	; 0x338 <malloc+0xcc>
 328:	20 91 02 01 	lds	r18, 0x0102	; 0x800102 <__malloc_heap_start>
 32c:	30 91 03 01 	lds	r19, 0x0103	; 0x800103 <__malloc_heap_start+0x1>
 330:	30 93 0d 01 	sts	0x010D, r19	; 0x80010d <__brkval+0x1>
 334:	20 93 0c 01 	sts	0x010C, r18	; 0x80010c <__brkval>
 338:	20 91 00 01 	lds	r18, 0x0100	; 0x800100 <__DATA_REGION_ORIGIN__>
 33c:	30 91 01 01 	lds	r19, 0x0101	; 0x800101 <__DATA_REGION_ORIGIN__+0x1>
 340:	21 15       	cp	r18, r1
 342:	31 05       	cpc	r19, r1
 344:	41 f4       	brne	.+16     	; 0x356 <malloc+0xea>
 346:	2d b7       	in	r18, 0x3d	; 61
 348:	3e b7       	in	r19, 0x3e	; 62
 34a:	40 91 04 01 	lds	r20, 0x0104	; 0x800104 <__malloc_margin>
 34e:	50 91 05 01 	lds	r21, 0x0105	; 0x800105 <__malloc_margin+0x1>
 352:	24 1b       	sub	r18, r20
 354:	35 0b       	sbc	r19, r21
 356:	e0 91 0c 01 	lds	r30, 0x010C	; 0x80010c <__brkval>
 35a:	f0 91 0d 01 	lds	r31, 0x010D	; 0x80010d <__brkval+0x1>
 35e:	e2 17       	cp	r30, r18
 360:	f3 07       	cpc	r31, r19
 362:	a0 f4       	brcc	.+40     	; 0x38c <malloc+0x120>
 364:	2e 1b       	sub	r18, r30
 366:	3f 0b       	sbc	r19, r31
 368:	28 17       	cp	r18, r24
 36a:	39 07       	cpc	r19, r25
 36c:	78 f0       	brcs	.+30     	; 0x38c <malloc+0x120>
 36e:	ac 01       	movw	r20, r24
 370:	4e 5f       	subi	r20, 0xFE	; 254
 372:	5f 4f       	sbci	r21, 0xFF	; 255
 374:	24 17       	cp	r18, r20
 376:	35 07       	cpc	r19, r21
 378:	48 f0       	brcs	.+18     	; 0x38c <malloc+0x120>
 37a:	4e 0f       	add	r20, r30
 37c:	5f 1f       	adc	r21, r31
 37e:	50 93 0d 01 	sts	0x010D, r21	; 0x80010d <__brkval+0x1>
 382:	40 93 0c 01 	sts	0x010C, r20	; 0x80010c <__brkval>
 386:	81 93       	st	Z+, r24
 388:	91 93       	st	Z+, r25
 38a:	02 c0       	rjmp	.+4      	; 0x390 <malloc+0x124>
 38c:	e0 e0       	ldi	r30, 0x00	; 0
 38e:	f0 e0       	ldi	r31, 0x00	; 0
 390:	cf 01       	movw	r24, r30
 392:	df 91       	pop	r29
 394:	cf 91       	pop	r28
 396:	1f 91       	pop	r17
 398:	0f 91       	pop	r16
 39a:	08 95       	ret

0000039c <free>:
 39c:	cf 93       	push	r28
 39e:	df 93       	push	r29
 3a0:	00 97       	sbiw	r24, 0x00	; 0
 3a2:	09 f4       	brne	.+2      	; 0x3a6 <free+0xa>
 3a4:	81 c0       	rjmp	.+258    	; 0x4a8 <__LOCK_REGION_LENGTH__+0xa8>
 3a6:	fc 01       	movw	r30, r24
 3a8:	32 97       	sbiw	r30, 0x02	; 2
 3aa:	13 82       	std	Z+3, r1	; 0x03
 3ac:	12 82       	std	Z+2, r1	; 0x02
 3ae:	a0 91 0e 01 	lds	r26, 0x010E	; 0x80010e <__flp>
 3b2:	b0 91 0f 01 	lds	r27, 0x010F	; 0x80010f <__flp+0x1>
 3b6:	10 97       	sbiw	r26, 0x00	; 0
 3b8:	81 f4       	brne	.+32     	; 0x3da <free+0x3e>
 3ba:	20 81       	ld	r18, Z
 3bc:	31 81       	ldd	r19, Z+1	; 0x01
 3be:	82 0f       	add	r24, r18
 3c0:	93 1f       	adc	r25, r19
 3c2:	20 91 0c 01 	lds	r18, 0x010C	; 0x80010c <__brkval>
 3c6:	30 91 0d 01 	lds	r19, 0x010D	; 0x80010d <__brkval+0x1>
 3ca:	28 17       	cp	r18, r24
 3cc:	39 07       	cpc	r19, r25
 3ce:	51 f5       	brne	.+84     	; 0x424 <__LOCK_REGION_LENGTH__+0x24>
 3d0:	f0 93 0d 01 	sts	0x010D, r31	; 0x80010d <__brkval+0x1>
 3d4:	e0 93 0c 01 	sts	0x010C, r30	; 0x80010c <__brkval>
 3d8:	67 c0       	rjmp	.+206    	; 0x4a8 <__LOCK_REGION_LENGTH__+0xa8>
 3da:	ed 01       	movw	r28, r26
 3dc:	20 e0       	ldi	r18, 0x00	; 0
 3de:	30 e0       	ldi	r19, 0x00	; 0
 3e0:	ce 17       	cp	r28, r30
 3e2:	df 07       	cpc	r29, r31
 3e4:	40 f4       	brcc	.+16     	; 0x3f6 <free+0x5a>
 3e6:	4a 81       	ldd	r20, Y+2	; 0x02
 3e8:	5b 81       	ldd	r21, Y+3	; 0x03
 3ea:	9e 01       	movw	r18, r28
 3ec:	41 15       	cp	r20, r1
 3ee:	51 05       	cpc	r21, r1
 3f0:	f1 f0       	breq	.+60     	; 0x42e <__LOCK_REGION_LENGTH__+0x2e>
 3f2:	ea 01       	movw	r28, r20
 3f4:	f5 cf       	rjmp	.-22     	; 0x3e0 <free+0x44>
 3f6:	d3 83       	std	Z+3, r29	; 0x03
 3f8:	c2 83       	std	Z+2, r28	; 0x02
 3fa:	40 81       	ld	r20, Z
 3fc:	51 81       	ldd	r21, Z+1	; 0x01
 3fe:	84 0f       	add	r24, r20
 400:	95 1f       	adc	r25, r21
 402:	c8 17       	cp	r28, r24
 404:	d9 07       	cpc	r29, r25
 406:	59 f4       	brne	.+22     	; 0x41e <__LOCK_REGION_LENGTH__+0x1e>
 408:	88 81       	ld	r24, Y
 40a:	99 81       	ldd	r25, Y+1	; 0x01
 40c:	84 0f       	add	r24, r20
 40e:	95 1f       	adc	r25, r21
 410:	02 96       	adiw	r24, 0x02	; 2
 412:	91 83       	std	Z+1, r25	; 0x01
 414:	80 83       	st	Z, r24
 416:	8a 81       	ldd	r24, Y+2	; 0x02
 418:	9b 81       	ldd	r25, Y+3	; 0x03
 41a:	93 83       	std	Z+3, r25	; 0x03
 41c:	82 83       	std	Z+2, r24	; 0x02
 41e:	21 15       	cp	r18, r1
 420:	31 05       	cpc	r19, r1
 422:	29 f4       	brne	.+10     	; 0x42e <__LOCK_REGION_LENGTH__+0x2e>
 424:	f0 93 0f 01 	sts	0x010F, r31	; 0x80010f <__flp+0x1>
 428:	e0 93 0e 01 	sts	0x010E, r30	; 0x80010e <__flp>
 42c:	3d c0       	rjmp	.+122    	; 0x4a8 <__LOCK_REGION_LENGTH__+0xa8>
 42e:	e9 01       	movw	r28, r18
 430:	fb 83       	std	Y+3, r31	; 0x03
 432:	ea 83       	std	Y+2, r30	; 0x02
 434:	49 91       	ld	r20, Y+
 436:	59 91       	ld	r21, Y+
 438:	c4 0f       	add	r28, r20
 43a:	d5 1f       	adc	r29, r21
 43c:	ec 17       	cp	r30, r28
 43e:	fd 07       	cpc	r31, r29
 440:	61 f4       	brne	.+24     	; 0x45a <__LOCK_REGION_LENGTH__+0x5a>
 442:	80 81       	ld	r24, Z
 444:	91 81       	ldd	r25, Z+1	; 0x01
 446:	84 0f       	add	r24, r20
 448:	95 1f       	adc	r25, r21
 44a:	02 96       	adiw	r24, 0x02	; 2
 44c:	e9 01       	movw	r28, r18
 44e:	99 83       	std	Y+1, r25	; 0x01
 450:	88 83       	st	Y, r24
 452:	82 81       	ldd	r24, Z+2	; 0x02
 454:	93 81       	ldd	r25, Z+3	; 0x03
 456:	9b 83       	std	Y+3, r25	; 0x03
 458:	8a 83       	std	Y+2, r24	; 0x02
 45a:	e0 e0       	ldi	r30, 0x00	; 0
 45c:	f0 e0       	ldi	r31, 0x00	; 0
 45e:	12 96       	adiw	r26, 0x02	; 2
 460:	8d 91       	ld	r24, X+
 462:	9c 91       	ld	r25, X
 464:	13 97       	sbiw	r26, 0x03	; 3
 466:	00 97       	sbiw	r24, 0x00	; 0
 468:	19 f0       	breq	.+6      	; 0x470 <__LOCK_REGION_LENGTH__+0x70>
 46a:	fd 01       	movw	r30, r26
 46c:	dc 01       	movw	r26, r24
 46e:	f7 cf       	rjmp	.-18     	; 0x45e <__LOCK_REGION_LENGTH__+0x5e>
 470:	8d 91       	ld	r24, X+
 472:	9c 91       	ld	r25, X
 474:	11 97       	sbiw	r26, 0x01	; 1
 476:	9d 01       	movw	r18, r26
 478:	2e 5f       	subi	r18, 0xFE	; 254
 47a:	3f 4f       	sbci	r19, 0xFF	; 255
 47c:	82 0f       	add	r24, r18
 47e:	93 1f       	adc	r25, r19
 480:	20 91 0c 01 	lds	r18, 0x010C	; 0x80010c <__brkval>
 484:	30 91 0d 01 	lds	r19, 0x010D	; 0x80010d <__brkval+0x1>
 488:	28 17       	cp	r18, r24
 48a:	39 07       	cpc	r19, r25
 48c:	69 f4       	brne	.+26     	; 0x4a8 <__LOCK_REGION_LENGTH__+0xa8>
 48e:	30 97       	sbiw	r30, 0x00	; 0
 490:	29 f4       	brne	.+10     	; 0x49c <__LOCK_REGION_LENGTH__+0x9c>
 492:	10 92 0f 01 	sts	0x010F, r1	; 0x80010f <__flp+0x1>
 496:	10 92 0e 01 	sts	0x010E, r1	; 0x80010e <__flp>
 49a:	02 c0       	rjmp	.+4      	; 0x4a0 <__LOCK_REGION_LENGTH__+0xa0>
 49c:	13 82       	std	Z+3, r1	; 0x03
 49e:	12 82       	std	Z+2, r1	; 0x02
 4a0:	b0 93 0d 01 	sts	0x010D, r27	; 0x80010d <__brkval+0x1>
 4a4:	a0 93 0c 01 	sts	0x010C, r26	; 0x80010c <__brkval>
 4a8:	df 91       	pop	r29
 4aa:	cf 91       	pop	r28
 4ac:	08 95       	ret

000004ae <_exit>:
 4ae:	f8 94       	cli

000004b0 <__stop_program>:
 4b0:	ff cf       	rjmp	.-2      	; 0x4b0 <__stop_program>

Disassembly of section .bss:

00800106 <__bss_start>:
  800106:	00 00       	nop
  800108:	00 00       	nop
	...

0080010b <avroraTraceEnabledVariable>:
	...

0080010c <__brkval>:
	...

0080010e <__flp>:
	...

Disassembly of section .comment:

00000000 <__heap_start-0x800110>:
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
   0:	64 00       	.word	0x0064	; ????
   2:	00 00       	nop
   4:	02 00       	.word	0x0002	; ????
   6:	80 07       	cpc	r24, r16
   8:	00 00       	nop
   a:	04 00       	.word	0x0004	; ????
	...
  28:	ce 00       	.word	0x00ce	; ????
  2a:	00 00       	nop
  2c:	4c 00       	.word	0x004c	; ????
  2e:	00 00       	nop
  30:	1a 01       	movw	r2, r20
  32:	00 00       	nop
  34:	46 00       	.word	0x0046	; ????
	...
  56:	00 00       	nop
  58:	60 01       	movw	r12, r0
  5a:	00 00       	nop
  5c:	0c 00       	.word	0x000c	; ????
	...
  66:	00 00       	nop
  68:	24 00       	.word	0x0024	; ????
  6a:	00 00       	nop
  6c:	02 00       	.word	0x0002	; ????
  6e:	16 11       	cpse	r17, r6
  70:	00 00       	nop
  72:	04 00       	.word	0x0004	; ????
  74:	00 00       	nop
  76:	00 00       	nop
  78:	6c 01       	movw	r12, r24
  7a:	00 00       	nop
  7c:	ca 00       	.word	0x00ca	; ????
  7e:	00 00       	nop
  80:	36 02       	muls	r19, r22
  82:	00 00       	nop
  84:	36 00       	.word	0x0036	; ????
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
     780:	92 09       	sbc	r25, r2
     782:	00 00       	nop
     784:	02 00       	.word	0x0002	; ????
     786:	18 07       	cpc	r17, r24
     788:	00 00       	nop
     78a:	04 01       	movw	r0, r8
     78c:	06 04       	cpc	r0, r6
     78e:	00 00       	nop
     790:	0c 8d       	ldd	r16, Y+28	; 0x1c
     792:	04 00       	.word	0x0004	; ????
     794:	00 48       	sbci	r16, 0x80	; 128
	...
     79e:	00 00       	nop
     7a0:	00 1a       	sub	r0, r16
     7a2:	00 00       	nop
     7a4:	00 02       	muls	r16, r16
     7a6:	01 06       	cpc	r0, r17
     7a8:	10 03       	mulsu	r17, r16
     7aa:	00 00       	nop
     7ac:	03 a2       	std	Z+35, r0	; 0x23
     7ae:	03 00       	.word	0x0003	; ????
     7b0:	00 04       	cpc	r0, r0
     7b2:	7e 37       	cpi	r23, 0x7E	; 126
     7b4:	00 00       	nop
     7b6:	00 02       	muls	r16, r16
     7b8:	01 08       	sbc	r0, r1
     7ba:	0e 03       	fmul	r16, r22
     7bc:	00 00       	nop
     7be:	03 85       	ldd	r16, Z+11	; 0x0b
     7c0:	04 00       	.word	0x0004	; ????
     7c2:	00 04       	cpc	r0, r0
     7c4:	7f 49       	sbci	r23, 0x9F	; 159
     7c6:	00 00       	nop
     7c8:	00 04       	cpc	r0, r0
     7ca:	02 05       	cpc	r16, r2
     7cc:	69 6e       	ori	r22, 0xE9	; 233
     7ce:	74 00       	.word	0x0074	; ????
     7d0:	03 84       	ldd	r0, Z+11	; 0x0b
     7d2:	04 00       	.word	0x0004	; ????
     7d4:	00 04       	cpc	r0, r0
     7d6:	80 5b       	subi	r24, 0xB0	; 176
     7d8:	00 00       	nop
     7da:	00 02       	muls	r16, r16
     7dc:	02 07       	cpc	r16, r18
     7de:	95 03       	fmuls	r17, r21
     7e0:	00 00       	nop
     7e2:	03 ce       	rjmp	.-1018   	; 0x3ea <free+0x4e>
     7e4:	04 00       	.word	0x0004	; ????
     7e6:	00 04       	cpc	r0, r0
     7e8:	81 6d       	ori	r24, 0xD1	; 209
     7ea:	00 00       	nop
     7ec:	00 02       	muls	r16, r16
     7ee:	04 05       	cpc	r16, r4
     7f0:	ce 03       	fmulsu	r20, r22
     7f2:	00 00       	nop
     7f4:	03 cd       	rjmp	.-1530   	; 0x1fc <rtcbenchmark_measure_native_performance+0x90>
     7f6:	04 00       	.word	0x0004	; ????
     7f8:	00 04       	cpc	r0, r0
     7fa:	82 7f       	andi	r24, 0xF2	; 242
     7fc:	00 00       	nop
     7fe:	00 02       	muls	r16, r16
     800:	04 07       	cpc	r16, r20
     802:	90 03       	fmuls	r17, r16
     804:	00 00       	nop
     806:	02 08       	sbc	r0, r2
     808:	05 c9       	rjmp	.-3574   	; 0xfffffa14 <__eeprom_end+0xff7efa14>
     80a:	03 00       	.word	0x0003	; ????
     80c:	00 02       	muls	r16, r16
     80e:	08 07       	cpc	r16, r24
     810:	8b 03       	fmulsu	r16, r19
     812:	00 00       	nop
     814:	03 ff       	sbrs	r16, 3
     816:	02 00       	.word	0x0002	; ????
     818:	00 05       	cpc	r16, r0
     81a:	28 9f       	mul	r18, r24
     81c:	00 00       	nop
     81e:	00 05       	cpc	r16, r0
     820:	02 7d       	andi	r16, 0xD2	; 210
     822:	02 00       	.word	0x0002	; ????
     824:	00 03       	mulsu	r16, r16
     826:	06 03       	mulsu	r16, r22
     828:	00 00       	nop
     82a:	05 62       	ori	r16, 0x25	; 37
     82c:	94 00       	.word	0x0094	; ????
     82e:	00 00       	nop
     830:	06 02       	muls	r16, r22
     832:	b6 00       	.word	0x00b6	; ????
     834:	00 00       	nop
     836:	02 01       	movw	r0, r4
     838:	06 17       	cp	r16, r22
     83a:	03 00       	.word	0x0003	; ????
     83c:	00 07       	cpc	r16, r16
     83e:	4d 03       	fmul	r20, r21
     840:	00 00       	nop
     842:	02 5c       	subi	r16, 0xC2	; 194
     844:	01 03       	mulsu	r16, r17
     846:	d4 00       	.word	0x00d4	; ????
     848:	00 00       	nop
     84a:	08 61       	ori	r16, 0x18	; 24
     84c:	00 02       	muls	r16, r16
     84e:	5c 2c       	mov	r5, r12
     850:	00 00       	nop
     852:	00 00       	nop
     854:	09 21       	and	r16, r9
     856:	03 00       	.word	0x0003	; ????
     858:	00 02       	muls	r16, r16
     85a:	65 03       	mulsu	r22, r21
     85c:	07 b3       	in	r16, 0x17	; 23
     85e:	03 00       	.word	0x0003	; ????
     860:	00 02       	muls	r16, r16
     862:	60 01       	movw	r12, r0
     864:	03 f3       	brvs	.-64     	; 0x826 <__data_load_end+0x36e>
     866:	00 00       	nop
     868:	00 08       	sbc	r0, r0
     86a:	63 00       	.word	0x0063	; ????
     86c:	02 60       	ori	r16, 0x02	; 2
     86e:	b6 00       	.word	0x00b6	; ????
     870:	00 00       	nop
     872:	00 09       	sbc	r16, r0
     874:	79 03       	fmul	r23, r17
     876:	00 00       	nop
     878:	03 0d       	add	r16, r3
     87a:	03 09       	sbc	r16, r3
     87c:	c7 02       	muls	r28, r23
     87e:	00 00       	nop
     880:	03 12       	cpse	r0, r19
     882:	03 0a       	sbc	r0, r19
     884:	01 f5       	brne	.+64     	; 0x8c6 <__data_load_end+0x40e>
     886:	02 00       	.word	0x0002	; ????
     888:	00 01       	movw	r0, r0
     88a:	07 01       	movw	r0, r14
	...
     894:	03 92       	.word	0x9203	; ????
     896:	20 02       	muls	r18, r16
     898:	01 99       	sbic	0x00, 1	; 0
     89a:	01 00       	.word	0x0001	; ????
     89c:	00 0b       	sbc	r16, r16
     89e:	73 74       	andi	r23, 0x43	; 67
     8a0:	72 00       	.word	0x0072	; ????
     8a2:	01 07       	cpc	r16, r17
     8a4:	b0 00       	.word	0x00b0	; ????
     8a6:	00 00       	nop
     8a8:	00 00       	nop
     8aa:	00 00       	nop
     8ac:	0c 69       	ori	r16, 0x9C	; 156
     8ae:	00 01       	movw	r0, r0
     8b0:	09 49       	sbci	r16, 0x99	; 153
     8b2:	00 00       	nop
     8b4:	00 36       	cpi	r16, 0x60	; 96
     8b6:	00 00       	nop
     8b8:	00 0d       	add	r16, r0
     8ba:	dc 00       	.word	0x00dc	; ????
	...
     8c4:	00 00       	nop
     8c6:	01 0e       	add	r0, r17
     8c8:	6f 01       	movw	r12, r30
     8ca:	00 00       	nop
     8cc:	0e e9       	ldi	r16, 0x9E	; 158
     8ce:	00 00       	nop
     8d0:	00 90 00 00 	lds	r0, 0x0000	; 0x800000 <__TEXT_REGION_LENGTH__+0x7e0000>
     8d4:	00 0f       	add	r16, r16
     8d6:	bd 00       	.word	0x00bd	; ????
     8d8:	00 00       	nop
     8da:	00 00       	nop
     8dc:	00 00       	nop
     8de:	18 00       	.word	0x0018	; ????
     8e0:	00 00       	nop
     8e2:	02 63       	ori	r16, 0x32	; 50
     8e4:	0e ca       	rjmp	.-3044   	; 0xfffffd02 <__eeprom_end+0xff7efd02>
     8e6:	00 00       	nop
     8e8:	00 a3       	std	Z+32, r16	; 0x20
     8ea:	00 00       	nop
     8ec:	00 00       	nop
     8ee:	00 0f       	add	r16, r16
     8f0:	d4 00       	.word	0x00d4	; ????
     8f2:	00 00       	nop
     8f4:	00 00       	nop
     8f6:	00 00       	nop
     8f8:	30 00       	.word	0x0030	; ????
     8fa:	00 00       	nop
     8fc:	01 0c       	add	r0, r1
     8fe:	0f bd       	out	0x2f, r16	; 47
     900:	00 00       	nop
     902:	00 00       	nop
     904:	00 00       	nop
     906:	00 30       	cpi	r16, 0x00	; 0
     908:	00 00       	nop
     90a:	00 02       	muls	r16, r16
     90c:	67 0e       	add	r6, r23
     90e:	ca 00       	.word	0x00ca	; ????
     910:	00 00       	nop
     912:	b7 00       	.word	0x00b7	; ????
     914:	00 00       	nop
     916:	00 00       	nop
     918:	00 0a       	sbc	r0, r16
     91a:	01 d6       	rcall	.+3074   	; 0x151e <__stack+0x41f>
     91c:	04 00       	.word	0x0004	; ????
     91e:	00 01       	movw	r0, r0
     920:	13 01       	movw	r2, r6
	...
     92a:	03 92       	.word	0x9203	; ????
     92c:	20 02       	muls	r18, r16
     92e:	01 3b       	cpi	r16, 0xB1	; 177
     930:	02 00       	.word	0x0002	; ????
     932:	00 10       	cpse	r0, r0
     934:	72 03       	mulsu	r23, r18
     936:	00 00       	nop
     938:	01 13       	cpse	r16, r17
     93a:	b0 00       	.word	0x00b0	; ????
     93c:	00 00       	nop
     93e:	cb 00       	.word	0x00cb	; ????
     940:	00 00       	nop
     942:	0b 61       	ori	r16, 0x1B	; 27
     944:	72 67       	ori	r23, 0x72	; 114
     946:	00 01       	movw	r0, r0
     948:	13 a5       	ldd	r17, Z+43	; 0x2b
     94a:	00 00       	nop
     94c:	00 01       	movw	r0, r0
     94e:	01 00       	.word	0x0001	; ????
     950:	00 11       	cpse	r16, r0
     952:	1c 03       	fmul	r17, r20
     954:	00 00       	nop
     956:	01 15       	cp	r16, r1
     958:	3b 02       	muls	r19, r27
     95a:	00 00       	nop
     95c:	05 03       	mulsu	r16, r21
     95e:	00 00       	nop
     960:	00 00       	nop
     962:	12 00       	.word	0x0012	; ????
     964:	00 00       	nop
     966:	00 7a       	andi	r16, 0xA0	; 160
     968:	09 00       	.word	0x0009	; ????
     96a:	00 21       	and	r16, r0
     96c:	02 00       	.word	0x0002	; ????
     96e:	00 13       	cpse	r16, r16
     970:	06 68       	ori	r16, 0x86	; 134
     972:	93 01       	movw	r18, r6
     974:	69 93       	st	Y+, r22
     976:	01 05       	cpc	r16, r1
     978:	03 00       	.word	0x0003	; ????
     97a:	00 00       	nop
     97c:	00 13       	cpse	r16, r16
     97e:	06 66       	ori	r16, 0x66	; 102
     980:	93 01       	movw	r18, r6
     982:	67 93       	lat	Z, r22
     984:	01 02       	muls	r16, r17
     986:	08 80       	ld	r0, Y
     988:	13 06       	cpc	r1, r19
     98a:	64 93       	xch	Z, r22
     98c:	01 65       	ori	r16, 0x51	; 81
     98e:	93 01       	movw	r18, r6
     990:	03 f3       	brvs	.-64     	; 0x952 <__data_load_end+0x49a>
     992:	01 68       	ori	r16, 0x81	; 129
     994:	13 06       	cpc	r1, r19
     996:	62 93       	st	-Z, r22
     998:	01 63       	ori	r16, 0x31	; 49
     99a:	93 01       	movw	r18, r6
     99c:	03 f3       	brvs	.-64     	; 0x95e <__data_load_end+0x4a6>
     99e:	01 66       	ori	r16, 0x61	; 97
     9a0:	00 14       	cp	r0, r0
     9a2:	00 00       	nop
     9a4:	00 00       	nop
     9a6:	01 03       	mulsu	r16, r17
     9a8:	01 00       	.word	0x0001	; ????
     9aa:	00 13       	cpse	r16, r16
     9ac:	06 68       	ori	r16, 0x86	; 134
     9ae:	93 01       	movw	r18, r6
     9b0:	69 93       	st	Y+, r22
     9b2:	01 05       	cpc	r16, r1
     9b4:	03 00       	.word	0x0003	; ????
     9b6:	00 00       	nop
     9b8:	00 00       	nop
     9ba:	00 15       	cp	r16, r0
     9bc:	b6 00       	.word	0x00b6	; ????
     9be:	00 00       	nop
     9c0:	4b 02       	muls	r20, r27
     9c2:	00 00       	nop
     9c4:	16 4b       	sbci	r17, 0xB6	; 182
     9c6:	02 00       	.word	0x0002	; ????
     9c8:	00 7f       	andi	r16, 0xF0	; 240
     9ca:	00 02       	muls	r16, r16
     9cc:	02 07       	cpc	r16, r18
     9ce:	aa 03       	fmulsu	r18, r18
     9d0:	00 00       	nop
     9d2:	17 01       	movw	r2, r14
     9d4:	bc 02       	muls	r27, r28
     9d6:	00 00       	nop
     9d8:	01 1a       	sub	r0, r17
     9da:	01 00       	.word	0x0001	; ????
     9dc:	00 00       	nop
     9de:	00 00       	nop
     9e0:	00 00       	nop
     9e2:	00 37       	cpi	r16, 0x70	; 112
     9e4:	01 00       	.word	0x0001	; ????
     9e6:	00 01       	movw	r0, r0
     9e8:	ad 02       	muls	r26, r29
     9ea:	00 00       	nop
     9ec:	18 72       	andi	r17, 0x28	; 40
     9ee:	03 00       	.word	0x0003	; ????
     9f0:	00 01       	movw	r0, r0
     9f2:	1a b0       	in	r1, 0x0a	; 10
     9f4:	00 00       	nop
     9f6:	00 02       	muls	r16, r16
     9f8:	91 01       	movw	r18, r2
     9fa:	19 0c       	add	r1, r9
     9fc:	61 72       	andi	r22, 0x21	; 33
     9fe:	67 00       	.word	0x0067	; ????
     a00:	01 1c       	adc	r0, r1
     a02:	a5 00       	.word	0x00a5	; ????
     a04:	00 00       	nop
     a06:	72 01       	movw	r14, r4
     a08:	00 00       	nop
     a0a:	1a 00       	.word	0x001a	; ????
     a0c:	00 00       	nop
     a0e:	00 99       	sbic	0x00, 0	; 0
     a10:	01 00       	.word	0x0001	; ????
     a12:	00 13       	cpse	r16, r16
     a14:	06 68       	ori	r16, 0x86	; 134
     a16:	93 01       	movw	r18, r6
     a18:	69 93       	st	Y+, r22
     a1a:	01 04       	cpc	r0, r1
     a1c:	91 01       	movw	r18, r2
     a1e:	94 02       	muls	r25, r20
     a20:	13 06       	cpc	r1, r19
     a22:	66 93       	lac	Z, r22
     a24:	01 67       	ori	r16, 0x71	; 113
     a26:	93 01       	movw	r18, r6
     a28:	02 91       	ld	r16, -Z
     a2a:	03 00       	.word	0x0003	; ????
     a2c:	00 1b       	sub	r16, r16
     a2e:	01 d7       	rcall	.+3586   	; 0x1832 <__stack+0x733>
     a30:	03 00       	.word	0x0003	; ????
     a32:	00 01       	movw	r0, r0
     a34:	25 ce       	rjmp	.-950    	; 0x680 <__data_load_end+0x1c8>
     a36:	00 00       	nop
     a38:	00 1a       	sub	r0, r16
     a3a:	01 00       	.word	0x0001	; ????
     a3c:	00 03       	mulsu	r16, r16
     a3e:	92 20       	and	r9, r2
     a40:	02 01       	movw	r0, r4
     a42:	1f 05       	cpc	r17, r15
     a44:	00 00       	nop
     a46:	1c dc       	rcall	.-1992   	; 0x280 <malloc+0x14>
     a48:	00 00       	nop
     a4a:	00 ce       	rjmp	.-1024   	; 0x64c <__data_load_end+0x194>
     a4c:	00 00       	nop
     a4e:	00 da       	rcall	.-3072   	; 0xfffffe50 <__eeprom_end+0xff7efe50>
     a50:	00 00       	nop
     a52:	00 01       	movw	r0, r0
     a54:	27 fc       	sbrc	r2, 7
     a56:	02 00       	.word	0x0002	; ????
     a58:	00 0e       	add	r0, r16
     a5a:	e9 00       	.word	0x00e9	; ????
     a5c:	00 00       	nop
     a5e:	97 01       	movw	r18, r14
     a60:	00 00       	nop
     a62:	1d bd       	out	0x2d, r17	; 45
     a64:	00 00       	nop
     a66:	00 d6       	rcall	.+3072   	; 0x1668 <__stack+0x569>
     a68:	00 00       	nop
     a6a:	00 da       	rcall	.-3072   	; 0xfffffe6c <__eeprom_end+0xff7efe6c>
     a6c:	00 00       	nop
     a6e:	00 02       	muls	r16, r16
     a70:	63 0e       	add	r6, r19
     a72:	ca 00       	.word	0x00ca	; ????
     a74:	00 00       	nop
     a76:	ac 01       	movw	r20, r24
     a78:	00 00       	nop
     a7a:	00 00       	nop
     a7c:	1c dc       	rcall	.-1992   	; 0x2b6 <malloc+0x4a>
     a7e:	00 00       	nop
     a80:	00 da       	rcall	.-3072   	; 0xfffffe82 <__eeprom_end+0xff7efe82>
     a82:	00 00       	nop
     a84:	00 e0       	ldi	r16, 0x00	; 0
     a86:	00 00       	nop
     a88:	00 01       	movw	r0, r0
     a8a:	28 32       	cpi	r18, 0x28	; 40
     a8c:	03 00       	.word	0x0003	; ????
     a8e:	00 0e       	add	r0, r16
     a90:	e9 00       	.word	0x00e9	; ????
     a92:	00 00       	nop
     a94:	c0 01       	movw	r24, r0
     a96:	00 00       	nop
     a98:	1d bd       	out	0x2d, r17	; 45
     a9a:	00 00       	nop
     a9c:	00 de       	rcall	.-1024   	; 0x69e <__data_load_end+0x1e6>
     a9e:	00 00       	nop
     aa0:	00 e0       	ldi	r16, 0x00	; 0
     aa2:	00 00       	nop
     aa4:	00 02       	muls	r16, r16
     aa6:	63 0e       	add	r6, r19
     aa8:	ca 00       	.word	0x00ca	; ????
     aaa:	00 00       	nop
     aac:	d5 01       	movw	r26, r10
     aae:	00 00       	nop
     ab0:	00 00       	nop
     ab2:	1c dc       	rcall	.-1992   	; 0x2ec <malloc+0x80>
     ab4:	00 00       	nop
     ab6:	00 e0       	ldi	r16, 0x00	; 0
     ab8:	00 00       	nop
     aba:	00 e6       	ldi	r16, 0x60	; 96
     abc:	00 00       	nop
     abe:	00 01       	movw	r0, r0
     ac0:	29 68       	ori	r18, 0x89	; 137
     ac2:	03 00       	.word	0x0003	; ????
     ac4:	00 0e       	add	r0, r16
     ac6:	e9 00       	.word	0x00e9	; ????
     ac8:	00 00       	nop
     aca:	e9 01       	movw	r28, r18
     acc:	00 00       	nop
     ace:	1d bd       	out	0x2d, r17	; 45
     ad0:	00 00       	nop
     ad2:	00 e4       	ldi	r16, 0x40	; 64
     ad4:	00 00       	nop
     ad6:	00 e6       	ldi	r16, 0x60	; 96
     ad8:	00 00       	nop
     ada:	00 02       	muls	r16, r16
     adc:	63 0e       	add	r6, r19
     ade:	ca 00       	.word	0x00ca	; ????
     ae0:	00 00       	nop
     ae2:	fe 01       	movw	r30, r28
     ae4:	00 00       	nop
     ae6:	00 00       	nop
     ae8:	1c dc       	rcall	.-1992   	; 0x322 <malloc+0xb6>
     aea:	00 00       	nop
     aec:	00 e6       	ldi	r16, 0x60	; 96
     aee:	00 00       	nop
     af0:	00 ec       	ldi	r16, 0xC0	; 192
     af2:	00 00       	nop
     af4:	00 01       	movw	r0, r0
     af6:	2a 9e       	mul	r2, r26
     af8:	03 00       	.word	0x0003	; ????
     afa:	00 0e       	add	r0, r16
     afc:	e9 00       	.word	0x00e9	; ????
     afe:	00 00       	nop
     b00:	12 02       	muls	r17, r18
     b02:	00 00       	nop
     b04:	1d bd       	out	0x2d, r17	; 45
     b06:	00 00       	nop
     b08:	00 ea       	ldi	r16, 0xA0	; 160
     b0a:	00 00       	nop
     b0c:	00 ec       	ldi	r16, 0xC0	; 192
     b0e:	00 00       	nop
     b10:	00 02       	muls	r16, r16
     b12:	63 0e       	add	r6, r19
     b14:	ca 00       	.word	0x00ca	; ????
     b16:	00 00       	nop
     b18:	27 02       	muls	r18, r23
     b1a:	00 00       	nop
     b1c:	00 00       	nop
     b1e:	1c dc       	rcall	.-1992   	; 0x358 <malloc+0xec>
     b20:	00 00       	nop
     b22:	00 ec       	ldi	r16, 0xC0	; 192
     b24:	00 00       	nop
     b26:	00 f2       	brcs	.-128    	; 0xaa8 <__data_load_end+0x5f0>
     b28:	00 00       	nop
     b2a:	00 01       	movw	r0, r0
     b2c:	2b d4       	rcall	.+2134   	; 0x1384 <__stack+0x285>
     b2e:	03 00       	.word	0x0003	; ????
     b30:	00 0e       	add	r0, r16
     b32:	e9 00       	.word	0x00e9	; ????
     b34:	00 00       	nop
     b36:	3b 02       	muls	r19, r27
     b38:	00 00       	nop
     b3a:	1d bd       	out	0x2d, r17	; 45
     b3c:	00 00       	nop
     b3e:	00 f0       	brcs	.+0      	; 0xb40 <__data_load_end+0x688>
     b40:	00 00       	nop
     b42:	00 f2       	brcs	.-128    	; 0xac4 <__data_load_end+0x60c>
     b44:	00 00       	nop
     b46:	00 02       	muls	r16, r16
     b48:	63 0e       	add	r6, r19
     b4a:	ca 00       	.word	0x00ca	; ????
     b4c:	00 00       	nop
     b4e:	50 02       	muls	r21, r16
     b50:	00 00       	nop
     b52:	00 00       	nop
     b54:	1c dc       	rcall	.-1992   	; 0x38e <malloc+0x122>
     b56:	00 00       	nop
     b58:	00 f2       	brcs	.-128    	; 0xada <__data_load_end+0x622>
     b5a:	00 00       	nop
     b5c:	00 f8       	bld	r0, 0
     b5e:	00 00       	nop
     b60:	00 01       	movw	r0, r0
     b62:	2c 0a       	sbc	r2, r28
     b64:	04 00       	.word	0x0004	; ????
     b66:	00 0e       	add	r0, r16
     b68:	e9 00       	.word	0x00e9	; ????
     b6a:	00 00       	nop
     b6c:	64 02       	muls	r22, r20
     b6e:	00 00       	nop
     b70:	1d bd       	out	0x2d, r17	; 45
     b72:	00 00       	nop
     b74:	00 f6       	brcc	.-128    	; 0xaf6 <__data_load_end+0x63e>
     b76:	00 00       	nop
     b78:	00 f8       	bld	r0, 0
     b7a:	00 00       	nop
     b7c:	00 02       	muls	r16, r16
     b7e:	63 0e       	add	r6, r19
     b80:	ca 00       	.word	0x00ca	; ????
     b82:	00 00       	nop
     b84:	79 02       	muls	r23, r25
     b86:	00 00       	nop
     b88:	00 00       	nop
     b8a:	1c dc       	rcall	.-1992   	; 0x3c4 <free+0x28>
     b8c:	00 00       	nop
     b8e:	00 f8       	bld	r0, 0
     b90:	00 00       	nop
     b92:	00 fe       	sbrs	r0, 0
     b94:	00 00       	nop
     b96:	00 01       	movw	r0, r0
     b98:	2d 40       	sbci	r18, 0x0D	; 13
     b9a:	04 00       	.word	0x0004	; ????
     b9c:	00 0e       	add	r0, r16
     b9e:	e9 00       	.word	0x00e9	; ????
     ba0:	00 00       	nop
     ba2:	8d 02       	muls	r24, r29
     ba4:	00 00       	nop
     ba6:	1d bd       	out	0x2d, r17	; 45
     ba8:	00 00       	nop
     baa:	00 fc       	sbrc	r0, 0
     bac:	00 00       	nop
     bae:	00 fe       	sbrs	r0, 0
     bb0:	00 00       	nop
     bb2:	00 02       	muls	r16, r16
     bb4:	63 0e       	add	r6, r19
     bb6:	ca 00       	.word	0x00ca	; ????
     bb8:	00 00       	nop
     bba:	a2 02       	muls	r26, r18
     bbc:	00 00       	nop
     bbe:	00 00       	nop
     bc0:	1c dc       	rcall	.-1992   	; 0x3fa <free+0x5e>
     bc2:	00 00       	nop
     bc4:	00 fe       	sbrs	r0, 0
     bc6:	00 00       	nop
     bc8:	00 04       	cpc	r0, r0
     bca:	01 00       	.word	0x0001	; ????
     bcc:	00 01       	movw	r0, r0
     bce:	2e 76       	andi	r18, 0x6E	; 110
     bd0:	04 00       	.word	0x0004	; ????
     bd2:	00 0e       	add	r0, r16
     bd4:	e9 00       	.word	0x00e9	; ????
     bd6:	00 00       	nop
     bd8:	b6 02       	muls	r27, r22
     bda:	00 00       	nop
     bdc:	1d bd       	out	0x2d, r17	; 45
     bde:	00 00       	nop
     be0:	00 02       	muls	r16, r16
     be2:	01 00       	.word	0x0001	; ????
     be4:	00 04       	cpc	r0, r0
     be6:	01 00       	.word	0x0001	; ????
     be8:	00 02       	muls	r16, r16
     bea:	63 0e       	add	r6, r19
     bec:	ca 00       	.word	0x00ca	; ????
     bee:	00 00       	nop
     bf0:	cb 02       	muls	r28, r27
     bf2:	00 00       	nop
     bf4:	00 00       	nop
     bf6:	1c dc       	rcall	.-1992   	; 0x430 <__LOCK_REGION_LENGTH__+0x30>
     bf8:	00 00       	nop
     bfa:	00 04       	cpc	r0, r0
     bfc:	01 00       	.word	0x0001	; ????
     bfe:	00 0a       	sbc	r0, r16
     c00:	01 00       	.word	0x0001	; ????
     c02:	00 01       	movw	r0, r0
     c04:	2f ac       	ldd	r2, Y+63	; 0x3f
     c06:	04 00       	.word	0x0004	; ????
     c08:	00 0e       	add	r0, r16
     c0a:	e9 00       	.word	0x00e9	; ????
     c0c:	00 00       	nop
     c0e:	df 02       	muls	r29, r31
     c10:	00 00       	nop
     c12:	1d bd       	out	0x2d, r17	; 45
     c14:	00 00       	nop
     c16:	00 08       	sbc	r0, r0
     c18:	01 00       	.word	0x0001	; ????
     c1a:	00 0a       	sbc	r0, r16
     c1c:	01 00       	.word	0x0001	; ????
     c1e:	00 02       	muls	r16, r16
     c20:	63 0e       	add	r6, r19
     c22:	ca 00       	.word	0x00ca	; ????
     c24:	00 00       	nop
     c26:	f4 02       	muls	r31, r20
     c28:	00 00       	nop
     c2a:	00 00       	nop
     c2c:	1c dc       	rcall	.-1992   	; 0x466 <__LOCK_REGION_LENGTH__+0x66>
     c2e:	00 00       	nop
     c30:	00 0a       	sbc	r0, r16
     c32:	01 00       	.word	0x0001	; ????
     c34:	00 0e       	add	r0, r16
     c36:	01 00       	.word	0x0001	; ????
     c38:	00 01       	movw	r0, r0
     c3a:	30 e2       	ldi	r19, 0x20	; 32
     c3c:	04 00       	.word	0x0004	; ????
     c3e:	00 0e       	add	r0, r16
     c40:	e9 00       	.word	0x00e9	; ????
     c42:	00 00       	nop
     c44:	08 03       	fmul	r16, r16
     c46:	00 00       	nop
     c48:	1d bd       	out	0x2d, r17	; 45
     c4a:	00 00       	nop
     c4c:	00 0c       	add	r0, r0
     c4e:	01 00       	.word	0x0001	; ????
     c50:	00 0e       	add	r0, r16
     c52:	01 00       	.word	0x0001	; ????
     c54:	00 02       	muls	r16, r16
     c56:	63 0e       	add	r6, r19
     c58:	ca 00       	.word	0x00ca	; ????
     c5a:	00 00       	nop
     c5c:	1d 03       	fmul	r17, r21
     c5e:	00 00       	nop
     c60:	00 00       	nop
     c62:	1c d4       	rcall	.+2104   	; 0x149c <__stack+0x39d>
     c64:	00 00       	nop
     c66:	00 0e       	add	r0, r16
     c68:	01 00       	.word	0x0001	; ????
     c6a:	00 12       	cpse	r0, r16
     c6c:	01 00       	.word	0x0001	; ????
     c6e:	00 01       	movw	r0, r0
     c70:	31 0f       	add	r19, r17
     c72:	05 00       	.word	0x0005	; ????
     c74:	00 1d       	adc	r16, r0
     c76:	bd 00       	.word	0x00bd	; ????
     c78:	00 00       	nop
     c7a:	0e 01       	movw	r0, r28
     c7c:	00 00       	nop
     c7e:	12 01       	movw	r2, r4
     c80:	00 00       	nop
     c82:	02 67       	ori	r16, 0x72	; 114
     c84:	0e ca       	rjmp	.-3044   	; 0xa2 <__do_copy_data+0xa>
     c86:	00 00       	nop
     c88:	00 31       	cpi	r16, 0x10	; 16
     c8a:	03 00       	.word	0x0003	; ????
     c8c:	00 00       	nop
     c8e:	00 1e       	adc	r0, r16
     c90:	f3 00       	.word	0x00f3	; ????
     c92:	00 00       	nop
     c94:	12 01       	movw	r2, r4
     c96:	00 00       	nop
     c98:	1a 01       	movw	r2, r20
     c9a:	00 00       	nop
     c9c:	01 32       	cpi	r16, 0x21	; 33
     c9e:	00 1b       	sub	r16, r16
     ca0:	01 9f       	mul	r16, r17
     ca2:	02 00       	.word	0x0002	; ????
     ca4:	00 01       	movw	r0, r0
     ca6:	34 1a       	sub	r3, r20
     ca8:	01 00       	.word	0x0001	; ????
     caa:	00 60       	ori	r16, 0x00	; 0
     cac:	01 00       	.word	0x0001	; ????
     cae:	00 03       	mulsu	r16, r16
     cb0:	92 20       	and	r9, r2
     cb2:	02 01       	movw	r0, r4
     cb4:	57 07       	cpc	r21, r23
     cb6:	00 00       	nop
     cb8:	1e fb       	.word	0xfb1e	; ????
     cba:	00 00       	nop
     cbc:	00 1a       	sub	r0, r16
     cbe:	01 00       	.word	0x0001	; ????
     cc0:	00 1e       	adc	r0, r16
     cc2:	01 00       	.word	0x0001	; ????
     cc4:	00 01       	movw	r0, r0
     cc6:	35 1c       	adc	r3, r5
     cc8:	dc 00       	.word	0x00dc	; ????
     cca:	00 00       	nop
     ccc:	1e 01       	movw	r2, r28
     cce:	00 00       	nop
     cd0:	2a 01       	movw	r4, r20
     cd2:	00 00       	nop
     cd4:	01 36       	cpi	r16, 0x61	; 97
     cd6:	7d 05       	cpc	r23, r13
     cd8:	00 00       	nop
     cda:	0e e9       	ldi	r16, 0x9E	; 158
     cdc:	00 00       	nop
     cde:	00 45       	sbci	r16, 0x50	; 80
     ce0:	03 00       	.word	0x0003	; ????
     ce2:	00 1d       	adc	r16, r0
     ce4:	bd 00       	.word	0x00bd	; ????
     ce6:	00 00       	nop
     ce8:	26 01       	movw	r4, r12
     cea:	00 00       	nop
     cec:	2a 01       	movw	r4, r20
     cee:	00 00       	nop
     cf0:	02 63       	ori	r16, 0x32	; 50
     cf2:	0e ca       	rjmp	.-3044   	; 0x110 <rtc_startBenchmarkMeasurement_Native+0x42>
     cf4:	00 00       	nop
     cf6:	00 5a       	subi	r16, 0xA0	; 160
     cf8:	03 00       	.word	0x0003	; ????
     cfa:	00 00       	nop
     cfc:	00 1c       	adc	r0, r0
     cfe:	dc 00       	.word	0x00dc	; ????
     d00:	00 00       	nop
     d02:	2a 01       	movw	r4, r20
     d04:	00 00       	nop
     d06:	30 01       	movw	r6, r0
     d08:	00 00       	nop
     d0a:	01 37       	cpi	r16, 0x71	; 113
     d0c:	b3 05       	cpc	r27, r3
     d0e:	00 00       	nop
     d10:	0e e9       	ldi	r16, 0x9E	; 158
     d12:	00 00       	nop
     d14:	00 6e       	ori	r16, 0xE0	; 224
     d16:	03 00       	.word	0x0003	; ????
     d18:	00 1d       	adc	r16, r0
     d1a:	bd 00       	.word	0x00bd	; ????
     d1c:	00 00       	nop
     d1e:	2e 01       	movw	r4, r28
     d20:	00 00       	nop
     d22:	30 01       	movw	r6, r0
     d24:	00 00       	nop
     d26:	02 63       	ori	r16, 0x32	; 50
     d28:	0e ca       	rjmp	.-3044   	; 0x146 <rtc_stopBenchmarkMeasurement+0x2c>
     d2a:	00 00       	nop
     d2c:	00 83       	st	Z, r16
     d2e:	03 00       	.word	0x0003	; ????
     d30:	00 00       	nop
     d32:	00 1c       	adc	r0, r0
     d34:	dc 00       	.word	0x00dc	; ????
     d36:	00 00       	nop
     d38:	30 01       	movw	r6, r0
     d3a:	00 00       	nop
     d3c:	36 01       	movw	r6, r12
     d3e:	00 00       	nop
     d40:	01 38       	cpi	r16, 0x81	; 129
     d42:	e9 05       	cpc	r30, r9
     d44:	00 00       	nop
     d46:	0e e9       	ldi	r16, 0x9E	; 158
     d48:	00 00       	nop
     d4a:	00 97       	sbiw	r24, 0x00	; 0
     d4c:	03 00       	.word	0x0003	; ????
     d4e:	00 1d       	adc	r16, r0
     d50:	bd 00       	.word	0x00bd	; ????
     d52:	00 00       	nop
     d54:	34 01       	movw	r6, r8
     d56:	00 00       	nop
     d58:	36 01       	movw	r6, r12
     d5a:	00 00       	nop
     d5c:	02 63       	ori	r16, 0x32	; 50
     d5e:	0e ca       	rjmp	.-3044   	; 0x17c <rtcbenchmark_measure_native_performance+0x10>
     d60:	00 00       	nop
     d62:	00 ac       	ldd	r0, Z+56	; 0x38
     d64:	03 00       	.word	0x0003	; ????
     d66:	00 00       	nop
     d68:	00 1c       	adc	r0, r0
     d6a:	dc 00       	.word	0x00dc	; ????
     d6c:	00 00       	nop
     d6e:	36 01       	movw	r6, r12
     d70:	00 00       	nop
     d72:	3c 01       	movw	r6, r24
     d74:	00 00       	nop
     d76:	01 39       	cpi	r16, 0x91	; 145
     d78:	1f 06       	cpc	r1, r31
     d7a:	00 00       	nop
     d7c:	0e e9       	ldi	r16, 0x9E	; 158
     d7e:	00 00       	nop
     d80:	00 c0       	rjmp	.+0      	; 0xd82 <__data_load_end+0x8ca>
     d82:	03 00       	.word	0x0003	; ????
     d84:	00 1d       	adc	r16, r0
     d86:	bd 00       	.word	0x00bd	; ????
     d88:	00 00       	nop
     d8a:	3a 01       	movw	r6, r20
     d8c:	00 00       	nop
     d8e:	3c 01       	movw	r6, r24
     d90:	00 00       	nop
     d92:	02 63       	ori	r16, 0x32	; 50
     d94:	0e ca       	rjmp	.-3044   	; 0x1b2 <rtcbenchmark_measure_native_performance+0x46>
     d96:	00 00       	nop
     d98:	00 d5       	rcall	.+2560   	; 0x179a <__stack+0x69b>
     d9a:	03 00       	.word	0x0003	; ????
     d9c:	00 00       	nop
     d9e:	00 1c       	adc	r0, r0
     da0:	dc 00       	.word	0x00dc	; ????
     da2:	00 00       	nop
     da4:	3c 01       	movw	r6, r24
     da6:	00 00       	nop
     da8:	42 01       	movw	r8, r4
     daa:	00 00       	nop
     dac:	01 3a       	cpi	r16, 0xA1	; 161
     dae:	55 06       	cpc	r5, r21
     db0:	00 00       	nop
     db2:	0e e9       	ldi	r16, 0x9E	; 158
     db4:	00 00       	nop
     db6:	00 e9       	ldi	r16, 0x90	; 144
     db8:	03 00       	.word	0x0003	; ????
     dba:	00 1d       	adc	r16, r0
     dbc:	bd 00       	.word	0x00bd	; ????
     dbe:	00 00       	nop
     dc0:	40 01       	movw	r8, r0
     dc2:	00 00       	nop
     dc4:	42 01       	movw	r8, r4
     dc6:	00 00       	nop
     dc8:	02 63       	ori	r16, 0x32	; 50
     dca:	0e ca       	rjmp	.-3044   	; 0x1e8 <rtcbenchmark_measure_native_performance+0x7c>
     dcc:	00 00       	nop
     dce:	00 fe       	sbrs	r0, 0
     dd0:	03 00       	.word	0x0003	; ????
     dd2:	00 00       	nop
     dd4:	00 1c       	adc	r0, r0
     dd6:	dc 00       	.word	0x00dc	; ????
     dd8:	00 00       	nop
     dda:	42 01       	movw	r8, r4
     ddc:	00 00       	nop
     dde:	48 01       	movw	r8, r16
     de0:	00 00       	nop
     de2:	01 3b       	cpi	r16, 0xB1	; 177
     de4:	8b 06       	cpc	r8, r27
     de6:	00 00       	nop
     de8:	0e e9       	ldi	r16, 0x9E	; 158
     dea:	00 00       	nop
     dec:	00 12       	cpse	r0, r16
     dee:	04 00       	.word	0x0004	; ????
     df0:	00 1d       	adc	r16, r0
     df2:	bd 00       	.word	0x00bd	; ????
     df4:	00 00       	nop
     df6:	46 01       	movw	r8, r12
     df8:	00 00       	nop
     dfa:	48 01       	movw	r8, r16
     dfc:	00 00       	nop
     dfe:	02 63       	ori	r16, 0x32	; 50
     e00:	0e ca       	rjmp	.-3044   	; 0x21e <rtcbenchmark_measure_native_performance+0xb2>
     e02:	00 00       	nop
     e04:	00 27       	eor	r16, r16
     e06:	04 00       	.word	0x0004	; ????
     e08:	00 00       	nop
     e0a:	00 1c       	adc	r0, r0
     e0c:	dc 00       	.word	0x00dc	; ????
     e0e:	00 00       	nop
     e10:	48 01       	movw	r8, r16
     e12:	00 00       	nop
     e14:	4e 01       	movw	r8, r28
     e16:	00 00       	nop
     e18:	01 3c       	cpi	r16, 0xC1	; 193
     e1a:	c1 06       	cpc	r12, r17
     e1c:	00 00       	nop
     e1e:	0e e9       	ldi	r16, 0x9E	; 158
     e20:	00 00       	nop
     e22:	00 3b       	cpi	r16, 0xB0	; 176
     e24:	04 00       	.word	0x0004	; ????
     e26:	00 1d       	adc	r16, r0
     e28:	bd 00       	.word	0x00bd	; ????
     e2a:	00 00       	nop
     e2c:	4c 01       	movw	r8, r24
     e2e:	00 00       	nop
     e30:	4e 01       	movw	r8, r28
     e32:	00 00       	nop
     e34:	02 63       	ori	r16, 0x32	; 50
     e36:	0e ca       	rjmp	.-3044   	; 0x254 <javax_rtcbench_RTCBenchmark_void_test_native+0x1e>
     e38:	00 00       	nop
     e3a:	00 50       	subi	r16, 0x00	; 0
     e3c:	04 00       	.word	0x0004	; ????
     e3e:	00 00       	nop
     e40:	00 1c       	adc	r0, r0
     e42:	dc 00       	.word	0x00dc	; ????
     e44:	00 00       	nop
     e46:	4e 01       	movw	r8, r28
     e48:	00 00       	nop
     e4a:	54 01       	movw	r10, r8
     e4c:	00 00       	nop
     e4e:	01 3d       	cpi	r16, 0xD1	; 209
     e50:	f7 06       	cpc	r15, r23
     e52:	00 00       	nop
     e54:	0e e9       	ldi	r16, 0x9E	; 158
     e56:	00 00       	nop
     e58:	00 64       	ori	r16, 0x40	; 64
     e5a:	04 00       	.word	0x0004	; ????
     e5c:	00 1d       	adc	r16, r0
     e5e:	bd 00       	.word	0x00bd	; ????
     e60:	00 00       	nop
     e62:	52 01       	movw	r10, r4
     e64:	00 00       	nop
     e66:	54 01       	movw	r10, r8
     e68:	00 00       	nop
     e6a:	02 63       	ori	r16, 0x32	; 50
     e6c:	0e ca       	rjmp	.-3044   	; 0x28a <malloc+0x1e>
     e6e:	00 00       	nop
     e70:	00 79       	andi	r16, 0x90	; 144
     e72:	04 00       	.word	0x0004	; ????
     e74:	00 00       	nop
     e76:	00 1c       	adc	r0, r0
     e78:	dc 00       	.word	0x00dc	; ????
     e7a:	00 00       	nop
     e7c:	54 01       	movw	r10, r8
     e7e:	00 00       	nop
     e80:	5a 01       	movw	r10, r20
     e82:	00 00       	nop
     e84:	01 3e       	cpi	r16, 0xE1	; 225
     e86:	2d 07       	cpc	r18, r29
     e88:	00 00       	nop
     e8a:	0e e9       	ldi	r16, 0x9E	; 158
     e8c:	00 00       	nop
     e8e:	00 8d       	ldd	r16, Z+24	; 0x18
     e90:	04 00       	.word	0x0004	; ????
     e92:	00 1d       	adc	r16, r0
     e94:	bd 00       	.word	0x00bd	; ????
     e96:	00 00       	nop
     e98:	58 01       	movw	r10, r16
     e9a:	00 00       	nop
     e9c:	5a 01       	movw	r10, r20
     e9e:	00 00       	nop
     ea0:	02 63       	ori	r16, 0x32	; 50
     ea2:	0e ca       	rjmp	.-3044   	; 0x2c0 <malloc+0x54>
     ea4:	00 00       	nop
     ea6:	00 a2       	std	Z+32, r0	; 0x20
     ea8:	04 00       	.word	0x0004	; ????
     eaa:	00 00       	nop
     eac:	00 1d       	adc	r16, r0
     eae:	d4 00       	.word	0x00d4	; ????
     eb0:	00 00       	nop
     eb2:	5a 01       	movw	r10, r20
     eb4:	00 00       	nop
     eb6:	60 01       	movw	r12, r0
     eb8:	00 00       	nop
     eba:	01 3f       	cpi	r16, 0xF1	; 241
     ebc:	1d bd       	out	0x2d, r17	; 45
     ebe:	00 00       	nop
     ec0:	00 5a       	subi	r16, 0xA0	; 160
     ec2:	01 00       	.word	0x0001	; ????
     ec4:	00 60       	ori	r16, 0x00	; 0
     ec6:	01 00       	.word	0x0001	; ????
     ec8:	00 02       	muls	r16, r16
     eca:	67 0e       	add	r6, r23
     ecc:	ca 00       	.word	0x00ca	; ????
     ece:	00 00       	nop
     ed0:	b6 04       	cpc	r11, r6
     ed2:	00 00       	nop
     ed4:	00 00       	nop
     ed6:	00 17       	cp	r16, r16
     ed8:	01 e1       	ldi	r16, 0x11	; 17
     eda:	04 00       	.word	0x0004	; ????
     edc:	00 01       	movw	r0, r0
     ede:	42 01       	movw	r8, r4
	...
     ee8:	ca 04       	cpc	r12, r10
     eea:	00 00       	nop
     eec:	01 8a       	std	Z+17, r0	; 0x11
     eee:	07 00       	.word	0x0007	; ????
     ef0:	00 10       	cpse	r0, r0
     ef2:	99 02       	muls	r25, r25
     ef4:	00 00       	nop
     ef6:	01 42       	sbci	r16, 0x21	; 33
     ef8:	74 00       	.word	0x0074	; ????
     efa:	00 00       	nop
     efc:	3a 05       	cpc	r19, r10
     efe:	00 00       	nop
     f00:	1f 00       	.word	0x001f	; ????
     f02:	00 00       	nop
     f04:	00 52       	subi	r16, 0x20	; 32
     f06:	02 00       	.word	0x0002	; ????
     f08:	00 00       	nop
     f0a:	07 37       	cpi	r16, 0x77	; 119
     f0c:	03 00       	.word	0x0003	; ????
     f0e:	00 02       	muls	r16, r16
     f10:	88 01       	movw	r16, r16
     f12:	03 a1       	ldd	r16, Z+35	; 0x23
     f14:	07 00       	.word	0x0007	; ????
     f16:	00 08       	sbc	r0, r0
     f18:	69 00       	.word	0x0069	; ????
     f1a:	02 88       	ldd	r0, Z+18	; 0x12
     f1c:	62 00       	.word	0x0062	; ????
     f1e:	00 00       	nop
     f20:	00 17       	cp	r16, r16
     f22:	01 3d       	cpi	r16, 0xD1	; 209
     f24:	03 00       	.word	0x0003	; ????
     f26:	00 01       	movw	r0, r0
     f28:	45 01       	movw	r8, r10
	...
     f32:	66 05       	cpc	r22, r6
     f34:	00 00       	nop
     f36:	01 06       	cpc	r0, r17
     f38:	08 00       	.word	0x0008	; ????
     f3a:	00 18       	sub	r0, r0
     f3c:	99 02       	muls	r25, r25
     f3e:	00 00       	nop
     f40:	01 45       	sbci	r16, 0x51	; 81
     f42:	74 00       	.word	0x0074	; ????
     f44:	00 00       	nop
     f46:	0c 66       	ori	r16, 0x6C	; 108
     f48:	93 01       	movw	r18, r6
     f4a:	67 93       	lat	Z, r22
     f4c:	01 68       	ori	r16, 0x81	; 129
     f4e:	93 01       	movw	r18, r6
     f50:	69 93       	st	Y+, r22
     f52:	01 1d       	adc	r16, r1
     f54:	8a 07       	cpc	r24, r26
	...
     f5e:	00 00       	nop
     f60:	01 46       	sbci	r16, 0x61	; 97
     f62:	0e 97       	sbiw	r24, 0x0e	; 14
     f64:	07 00       	.word	0x0007	; ????
     f66:	00 95       	com	r16
     f68:	05 00       	.word	0x0005	; ????
     f6a:	00 1d       	adc	r16, r0
     f6c:	bd 00       	.word	0x00bd	; ????
	...
     f76:	00 00       	nop
     f78:	02 8e       	std	Z+26, r0	; 0x1a
     f7a:	0e ca       	rjmp	.-3044   	; 0x398 <malloc+0x12c>
     f7c:	00 00       	nop
     f7e:	00 b3       	in	r16, 0x10	; 16
     f80:	05 00       	.word	0x0005	; ????
     f82:	00 00       	nop
     f84:	00 00       	nop
     f86:	07 bc       	out	0x27, r0	; 39
     f88:	04 00       	.word	0x0004	; ????
     f8a:	00 02       	muls	r16, r16
     f8c:	7c 01       	movw	r14, r24
     f8e:	03 1d       	adc	r16, r3
     f90:	08 00       	.word	0x0008	; ????
     f92:	00 08       	sbc	r0, r0
     f94:	69 00       	.word	0x0069	; ????
     f96:	02 7c       	andi	r16, 0xC2	; 194
     f98:	3e 00       	.word	0x003e	; ????
     f9a:	00 00       	nop
     f9c:	00 0a       	sbc	r0, r16
     f9e:	01 c2       	rjmp	.+1026   	; 0x13a2 <__stack+0x2a3>
     fa0:	04 00       	.word	0x0004	; ????
     fa2:	00 01       	movw	r0, r0
     fa4:	48 01       	movw	r8, r16
	...
     fae:	03 92       	.word	0x9203	; ????
     fb0:	20 02       	muls	r18, r16
     fb2:	01 79       	andi	r16, 0x91	; 145
     fb4:	08 00       	.word	0x0008	; ????
     fb6:	00 10       	cpse	r0, r0
     fb8:	99 02       	muls	r25, r25
     fba:	00 00       	nop
     fbc:	01 48       	sbci	r16, 0x81	; 129
     fbe:	50 00       	.word	0x0050	; ????
     fc0:	00 00       	nop
     fc2:	c7 05       	cpc	r28, r7
     fc4:	00 00       	nop
     fc6:	1d 06       	cpc	r1, r29
     fc8:	08 00       	.word	0x0008	; ????
	...
     fd2:	00 01       	movw	r0, r0
     fd4:	49 0e       	add	r4, r25
     fd6:	13 08       	sbc	r1, r3
     fd8:	00 00       	nop
     fda:	ed 05       	cpc	r30, r13
     fdc:	00 00       	nop
     fde:	1d bd       	out	0x2d, r17	; 45
	...
     fe8:	00 00       	nop
     fea:	00 02       	muls	r16, r16
     fec:	80 0e       	add	r8, r16
     fee:	ca 00       	.word	0x00ca	; ????
     ff0:	00 00       	nop
     ff2:	05 06       	cpc	r0, r21
     ff4:	00 00       	nop
     ff6:	00 00       	nop
     ff8:	00 07       	cpc	r16, r16
     ffa:	63 03       	mulsu	r22, r19
     ffc:	00 00       	nop
     ffe:	02 98       	cbi	0x00, 2	; 0
    1000:	01 03       	mulsu	r16, r17
    1002:	90 08       	sbc	r9, r0
    1004:	00 00       	nop
    1006:	08 73       	andi	r16, 0x38	; 56
    1008:	00 02       	muls	r16, r16
    100a:	98 9b       	sbis	0x13, 0	; 19
    100c:	08 00       	.word	0x0008	; ????
    100e:	00 00       	nop
    1010:	06 02       	muls	r16, r22
    1012:	96 08       	sbc	r9, r6
    1014:	00 00       	nop
    1016:	20 b6       	in	r2, 0x30	; 48
    1018:	00 00       	nop
    101a:	00 20       	and	r0, r0
    101c:	90 08       	sbc	r9, r0
    101e:	00 00       	nop
    1020:	0a 01       	movw	r0, r20
    1022:	69 03       	fmul	r22, r17
    1024:	00 00       	nop
    1026:	01 4b       	sbci	r16, 0xB1	; 177
    1028:	01 00       	.word	0x0001	; ????
    102a:	00 00       	nop
    102c:	00 00       	nop
    102e:	00 00       	nop
    1030:	00 03       	mulsu	r16, r16
    1032:	92 20       	and	r9, r2
    1034:	02 01       	movw	r0, r4
    1036:	fc 08       	sbc	r15, r12
    1038:	00 00       	nop
    103a:	0b 73       	andi	r16, 0x3B	; 59
    103c:	74 72       	andi	r23, 0x24	; 36
    103e:	00 01       	movw	r0, r0
    1040:	4b fc       	.word	0xfc4b	; ????
    1042:	08 00       	.word	0x0008	; ????
    1044:	00 19       	sub	r16, r0
    1046:	06 00       	.word	0x0006	; ????
    1048:	00 1d       	adc	r16, r0
    104a:	79 08       	sbc	r7, r9
	...
    1054:	00 00       	nop
    1056:	01 4c       	sbci	r16, 0xC1	; 193
    1058:	0e 86       	std	Y+14, r0	; 0x0e
    105a:	08 00       	.word	0x0008	; ????
    105c:	00 3f       	cpi	r16, 0xF0	; 240
    105e:	06 00       	.word	0x0006	; ????
    1060:	00 1d       	adc	r16, r0
    1062:	bd 00       	.word	0x00bd	; ????
	...
    106c:	00 00       	nop
    106e:	02 9c       	mul	r0, r2
    1070:	0e ca       	rjmp	.-3044   	; 0x48e <__LOCK_REGION_LENGTH__+0x8e>
    1072:	00 00       	nop
    1074:	00 57       	subi	r16, 0x70	; 112
    1076:	06 00       	.word	0x0006	; ????
    1078:	00 00       	nop
    107a:	00 00       	nop
    107c:	06 02       	muls	r16, r22
    107e:	2c 00       	.word	0x002c	; ????
    1080:	00 00       	nop
    1082:	21 01       	movw	r4, r2
    1084:	48 03       	fmul	r20, r16
    1086:	00 00       	nop
    1088:	01 4f       	sbci	r16, 0xF1	; 241
    108a:	49 00       	.word	0x0049	; ????
    108c:	00 00       	nop
    108e:	60 01       	movw	r12, r0
    1090:	00 00       	nop
    1092:	6c 01       	movw	r12, r24
    1094:	00 00       	nop
    1096:	03 92       	.word	0x9203	; ????
    1098:	20 02       	muls	r18, r16
    109a:	01 3c       	cpi	r16, 0xC1	; 193
    109c:	09 00       	.word	0x0009	; ????
    109e:	00 22       	and	r0, r16
    10a0:	01 f0       	breq	.+0      	; 0x10a2 <__data_load_end+0xbea>
    10a2:	04 00       	.word	0x0004	; ????
    10a4:	00 01       	movw	r0, r0
    10a6:	50 49       	sbci	r21, 0x90	; 144
    10a8:	00 00       	nop
    10aa:	00 01       	movw	r0, r0
    10ac:	32 09       	sbc	r19, r2
    10ae:	00 00       	nop
    10b0:	19 00       	.word	0x0019	; ????
    10b2:	1f 64       	ori	r17, 0x4F	; 79
    10b4:	01 00       	.word	0x0001	; ????
    10b6:	00 88       	ldd	r0, Z+16	; 0x10
    10b8:	09 00       	.word	0x0009	; ????
    10ba:	00 00       	nop
    10bc:	15 4c       	sbci	r17, 0xC5	; 197
    10be:	09 00       	.word	0x0009	; ????
    10c0:	00 4c       	sbci	r16, 0xC0	; 192
    10c2:	09 00       	.word	0x0009	; ????
    10c4:	00 16       	cp	r0, r16
    10c6:	4b 02       	muls	r20, r27
    10c8:	00 00       	nop
    10ca:	04 00       	.word	0x0004	; ????
    10cc:	23 2c       	mov	r2, r3
    10ce:	00 00       	nop
    10d0:	00 24       	eor	r0, r0
    10d2:	fc 03       	fmulsu	r23, r20
    10d4:	00 00       	nop
    10d6:	02 45       	sbci	r16, 0x52	; 82
    10d8:	63 09       	sbc	r22, r3
    10da:	00 00       	nop
    10dc:	01 05       	cpc	r16, r1
    10de:	03 06       	cpc	r0, r19
    10e0:	01 80       	ldd	r0, Z+1	; 0x01
    10e2:	00 23       	and	r16, r16
    10e4:	3c 09       	sbc	r19, r12
    10e6:	00 00       	nop
    10e8:	24 da       	rcall	.-3000   	; 0x532 <__data_load_end+0x7a>
    10ea:	02 00       	.word	0x0002	; ????
    10ec:	00 03       	mulsu	r16, r16
    10ee:	0b 4c       	sbci	r16, 0xCB	; 203
    10f0:	09 00       	.word	0x0009	; ????
    10f2:	00 01       	movw	r0, r0
    10f4:	05 03       	mulsu	r16, r21
    10f6:	0b 01       	movw	r0, r22
    10f8:	80 00       	.word	0x0080	; ????
    10fa:	25 01       	movw	r4, r10
    10fc:	01 8f       	std	Z+25, r16	; 0x19
    10fe:	02 00       	.word	0x0002	; ????
    1100:	00 8f       	std	Z+24, r16	; 0x18
    1102:	02 00       	.word	0x0002	; ????
    1104:	00 06       	cpc	r0, r16
    1106:	cb 02       	muls	r28, r27
    1108:	26 01       	movw	r4, r12
    110a:	01 f0       	breq	.+0      	; 0x110c <__stack+0xd>
    110c:	04 00       	.word	0x0004	; ????
    110e:	00 f0       	brcs	.+0      	; 0x1110 <__stack+0x11>
    1110:	04 00       	.word	0x0004	; ????
    1112:	00 01       	movw	r0, r0
    1114:	50 00       	.word	0x0050	; ????
    1116:	16 02       	muls	r17, r22
    1118:	00 00       	nop
    111a:	02 00       	.word	0x0002	; ????
    111c:	3f 09       	sbc	r19, r15
    111e:	00 00       	nop
    1120:	04 01       	movw	r0, r8
    1122:	06 04       	cpc	r0, r6
    1124:	00 00       	nop
    1126:	0c 6d       	ori	r16, 0xDC	; 220
    1128:	05 00       	.word	0x0005	; ????
    112a:	00 e8       	ldi	r16, 0x80	; 128
	...
    1134:	00 00       	nop
    1136:	00 63       	ori	r16, 0x30	; 48
    1138:	03 00       	.word	0x0003	; ????
    113a:	00 02       	muls	r16, r16
    113c:	01 06       	cpc	r0, r17
    113e:	10 03       	mulsu	r17, r16
    1140:	00 00       	nop
    1142:	03 a2       	std	Z+35, r0	; 0x23
    1144:	03 00       	.word	0x0003	; ????
    1146:	00 02       	muls	r16, r16
    1148:	7e 37       	cpi	r23, 0x7E	; 126
    114a:	00 00       	nop
    114c:	00 02       	muls	r16, r16
    114e:	01 08       	sbc	r0, r1
    1150:	0e 03       	fmul	r16, r22
    1152:	00 00       	nop
    1154:	04 02       	muls	r16, r20
    1156:	05 69       	ori	r16, 0x95	; 149
    1158:	6e 74       	andi	r22, 0x4E	; 78
    115a:	00 03       	mulsu	r16, r16
    115c:	84 04       	cpc	r8, r4
    115e:	00 00       	nop
    1160:	02 80       	ldd	r0, Z+2	; 0x02
    1162:	50 00       	.word	0x0050	; ????
    1164:	00 00       	nop
    1166:	02 02       	muls	r16, r18
    1168:	07 95       	ror	r16
    116a:	03 00       	.word	0x0003	; ????
    116c:	00 03       	mulsu	r16, r16
    116e:	ce 04       	cpc	r12, r14
    1170:	00 00       	nop
    1172:	02 81       	ldd	r16, Z+2	; 0x02
    1174:	62 00       	.word	0x0062	; ????
    1176:	00 00       	nop
    1178:	02 04       	cpc	r0, r2
    117a:	05 ce       	rjmp	.-1014   	; 0xd86 <__data_load_end+0x8ce>
    117c:	03 00       	.word	0x0003	; ????
    117e:	00 02       	muls	r16, r16
    1180:	04 07       	cpc	r16, r20
    1182:	90 03       	fmuls	r17, r16
    1184:	00 00       	nop
    1186:	02 08       	sbc	r0, r2
    1188:	05 c9       	rjmp	.-3574   	; 0x394 <malloc+0x128>
    118a:	03 00       	.word	0x0003	; ????
    118c:	00 02       	muls	r16, r16
    118e:	08 07       	cpc	r16, r24
    1190:	8b 03       	fmulsu	r16, r19
    1192:	00 00       	nop
    1194:	05 01       	movw	r0, r10
    1196:	45 05       	cpc	r20, r5
    1198:	00 00       	nop
    119a:	01 03       	mulsu	r16, r17
    119c:	01 6c       	ori	r16, 0xC1	; 193
    119e:	01 00       	.word	0x0001	; ????
    11a0:	00 36       	cpi	r16, 0x60	; 96
    11a2:	02 00       	.word	0x0002	; ????
    11a4:	00 6b       	ori	r16, 0xB0	; 176
    11a6:	06 00       	.word	0x0006	; ????
    11a8:	00 01       	movw	r0, r0
    11aa:	37 01       	movw	r6, r14
    11ac:	00 00       	nop
    11ae:	06 3a       	cpi	r16, 0xA6	; 166
    11b0:	05 00       	.word	0x0005	; ????
    11b2:	00 01       	movw	r0, r0
    11b4:	03 45       	sbci	r16, 0x53	; 83
    11b6:	00 00       	nop
    11b8:	00 1c       	adc	r0, r0
    11ba:	07 00       	.word	0x0007	; ????
    11bc:	00 06       	cpc	r0, r16
    11be:	22 05       	cpc	r18, r2
    11c0:	00 00       	nop
    11c2:	01 03       	mulsu	r16, r17
    11c4:	37 01       	movw	r6, r14
    11c6:	00 00       	nop
    11c8:	5f 07       	cpc	r21, r31
    11ca:	00 00       	nop
    11cc:	07 a1       	ldd	r16, Z+39	; 0x27
    11ce:	05 00       	.word	0x0005	; ????
    11d0:	00 01       	movw	r0, r0
    11d2:	06 57       	subi	r16, 0x76	; 118
    11d4:	00 00       	nop
    11d6:	00 a7       	std	Z+40, r16	; 0x28
    11d8:	07 00       	.word	0x0007	; ????
    11da:	00 08       	sbc	r0, r0
    11dc:	6d 69       	ori	r22, 0x9D	; 157
    11de:	64 00       	.word	0x0064	; ????
    11e0:	01 08       	sbc	r0, r1
    11e2:	45 00       	.word	0x0045	; ????
    11e4:	00 00       	nop
    11e6:	db 07       	cpc	r29, r27
    11e8:	00 00       	nop
    11ea:	09 a0       	ldd	r0, Y+33	; 0x21
    11ec:	00 00       	nop
    11ee:	00 24       	eor	r0, r0
    11f0:	01 00       	.word	0x0001	; ????
    11f2:	00 08       	sbc	r0, r0
    11f4:	69 00       	.word	0x0069	; ????
    11f6:	01 09       	sbc	r16, r1
    11f8:	45 00       	.word	0x0045	; ????
    11fa:	00 00       	nop
    11fc:	1f 08       	sbc	r1, r15
    11fe:	00 00       	nop
    1200:	0a b8       	out	0x0a, r0	; 10
    1202:	00 00       	nop
    1204:	00 08       	sbc	r0, r0
    1206:	6c 6f       	ori	r22, 0xFC	; 252
    1208:	77 00       	.word	0x0077	; ????
    120a:	01 0a       	sbc	r0, r17
    120c:	45 00       	.word	0x0045	; ????
    120e:	00 00       	nop
    1210:	77 08       	sbc	r7, r7
    1212:	00 00       	nop
    1214:	07 1d       	adc	r16, r7
    1216:	05 00       	.word	0x0005	; ????
    1218:	00 01       	movw	r0, r0
    121a:	0b 45       	sbci	r16, 0x5B	; 91
    121c:	00 00       	nop
    121e:	00 bb       	out	0x10, r16	; 16
    1220:	08 00       	.word	0x0008	; ????
    1222:	00 0a       	sbc	r0, r16
    1224:	d0 00       	.word	0x00d0	; ????
    1226:	00 00       	nop
    1228:	07 2f       	mov	r16, r23
    122a:	05 00       	.word	0x0005	; ????
    122c:	00 01       	movw	r0, r0
    122e:	0f 57       	subi	r16, 0x7F	; 127
    1230:	00 00       	nop
    1232:	00 f3       	brcs	.-64     	; 0x11f4 <__stack+0xf5>
    1234:	08 00       	.word	0x0008	; ????
    1236:	00 00       	nop
    1238:	00 00       	nop
    123a:	0b 8c       	ldd	r0, Y+27	; 0x1b
    123c:	01 00       	.word	0x0001	; ????
    123e:	00 f2       	brcs	.-128    	; 0x11c0 <__stack+0xc1>
    1240:	01 00       	.word	0x0001	; ????
    1242:	00 0b       	sbc	r16, r16
    1244:	fc 01       	movw	r30, r24
    1246:	00 00       	nop
    1248:	ff 01       	movw	r30, r30
    124a:	00 00       	nop
    124c:	00 0c       	add	r0, r0
    124e:	02 57       	subi	r16, 0x72	; 114
    1250:	00 00       	nop
    1252:	00 0d       	add	r16, r0
    1254:	01 f0       	breq	.+0      	; 0x1256 <__stack+0x157>
    1256:	04 00       	.word	0x0004	; ????
    1258:	00 01       	movw	r0, r0
    125a:	1d 36       	cpi	r17, 0x6D	; 109
    125c:	02 00       	.word	0x0002	; ????
    125e:	00 6c       	ori	r16, 0xC0	; 192
    1260:	02 00       	.word	0x0002	; ????
    1262:	00 03       	mulsu	r16, r16
    1264:	92 20       	and	r9, r2
    1266:	02 01       	movw	r0, r4
    1268:	bf 01       	movw	r22, r30
    126a:	00 00       	nop
    126c:	0e 3a       	cpi	r16, 0xAE	; 174
    126e:	05 00       	.word	0x0005	; ????
    1270:	00 01       	movw	r0, r0
    1272:	1e 45       	sbci	r17, 0x5E	; 94
    1274:	00 00       	nop
    1276:	00 64       	ori	r16, 0x40	; 64
    1278:	07 22       	and	r0, r23
    127a:	05 00       	.word	0x0005	; ????
    127c:	00 01       	movw	r0, r0
    127e:	20 37       	cpi	r18, 0x70	; 112
    1280:	01 00       	.word	0x0001	; ????
    1282:	00 27       	eor	r16, r16
    1284:	09 00       	.word	0x0009	; ????
    1286:	00 0f       	add	r16, r16
    1288:	48 02       	muls	r20, r24
    128a:	00 00       	nop
    128c:	62 02       	muls	r22, r18
    128e:	00 00       	nop
    1290:	8e 01       	movw	r16, r28
    1292:	00 00       	nop
    1294:	07 2a       	or	r0, r23
    1296:	05 00       	.word	0x0005	; ????
    1298:	00 01       	movw	r0, r0
    129a:	22 2c       	mov	r2, r2
    129c:	00 00       	nop
    129e:	00 3f       	cpi	r16, 0xF0	; 240
    12a0:	09 00       	.word	0x0009	; ????
    12a2:	00 00       	nop
    12a4:	10 3e       	cpi	r17, 0xE0	; 224
    12a6:	02 00       	.word	0x0002	; ????
    12a8:	00 0c       	add	r0, r0
    12aa:	02 00       	.word	0x0002	; ????
    12ac:	00 a8       	ldd	r0, Z+48	; 0x30
    12ae:	01 00       	.word	0x0001	; ????
    12b0:	00 11       	cpse	r16, r0
    12b2:	06 68       	ori	r16, 0x86	; 134
    12b4:	93 01       	movw	r18, r6
    12b6:	69 93       	st	Y+, r22
    12b8:	01 03       	mulsu	r16, r17
    12ba:	0a 90       	ld	r0, -Y
    12bc:	01 00       	.word	0x0001	; ????
    12be:	12 6c       	ori	r17, 0xC2	; 194
    12c0:	02 00       	.word	0x0002	; ????
    12c2:	00 01       	movw	r0, r0
    12c4:	7e 00       	.word	0x007e	; ????
    12c6:	00 00       	nop
    12c8:	11 06       	cpc	r1, r17
    12ca:	68 93       	.word	0x9368	; ????
    12cc:	01 69       	ori	r16, 0x91	; 145
    12ce:	93 01       	movw	r18, r6
    12d0:	02 08       	sbc	r0, r2
    12d2:	64 00       	.word	0x0064	; ????
    12d4:	00 13       	cpse	r16, r16
    12d6:	d6 01       	movw	r26, r12
    12d8:	00 00       	nop
    12da:	cf 01       	movw	r24, r30
    12dc:	00 00       	nop
    12de:	14 cf       	rjmp	.-472    	; 0x1108 <__stack+0x9>
    12e0:	01 00       	.word	0x0001	; ????
    12e2:	00 04       	cpc	r0, r0
    12e4:	00 02       	muls	r16, r16
    12e6:	02 07       	cpc	r16, r18
    12e8:	aa 03       	fmulsu	r18, r18
    12ea:	00 00       	nop
    12ec:	15 2c       	mov	r1, r5
    12ee:	00 00       	nop
    12f0:	00 16       	cp	r0, r16
    12f2:	fc 03       	fmulsu	r23, r20
    12f4:	00 00       	nop
    12f6:	04 45       	sbci	r16, 0x54	; 84
    12f8:	ed 01       	movw	r28, r26
    12fa:	00 00       	nop
    12fc:	01 05       	cpc	r16, r1
    12fe:	03 06       	cpc	r0, r19
    1300:	01 80       	ldd	r0, Z+1	; 0x01
    1302:	00 15       	cp	r16, r0
    1304:	bf 01       	movw	r22, r30
    1306:	00 00       	nop
    1308:	17 01       	movw	r2, r14
    130a:	01 d7       	rcall	.+3586   	; 0x210e <__stack+0x100f>
    130c:	03 00       	.word	0x0003	; ????
    130e:	00 d7       	rcall	.+3584   	; 0x2110 <__stack+0x1011>
    1310:	03 00       	.word	0x0003	; ????
    1312:	00 03       	mulsu	r16, r16
    1314:	18 17       	cp	r17, r24
    1316:	01 01       	movw	r0, r2
    1318:	9f 02       	muls	r25, r31
    131a:	00 00       	nop
    131c:	9f 02       	muls	r25, r31
    131e:	00 00       	nop
    1320:	03 19       	sub	r16, r3
    1322:	17 01       	movw	r2, r14
    1324:	01 9a       	sbi	0x00, 1	; 0
    1326:	05 00       	.word	0x0005	; ????
    1328:	00 9a       	sbi	0x00, 0	; 0
    132a:	05 00       	.word	0x0005	; ????
    132c:	00 03       	mulsu	r16, r16
    132e:	16 00       	.word	0x0016	; ????

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
 798:	11 01       	movw	r2, r2
 79a:	12 01       	movw	r2, r4
 79c:	40 0a       	sbc	r4, r16
 79e:	97 42       	sbci	r25, 0x27	; 39
 7a0:	0c 01       	movw	r0, r24
 7a2:	13 00       	.word	0x0013	; ????
 7a4:	00 0b       	sbc	r16, r16
 7a6:	05 00       	.word	0x0005	; ????
 7a8:	03 08       	sbc	r0, r3
 7aa:	3a 0b       	sbc	r19, r26
 7ac:	3b 0b       	sbc	r19, r27
 7ae:	49 13       	cpse	r20, r25
 7b0:	02 06       	cpc	r0, r18
 7b2:	00 00       	nop
 7b4:	0c 34       	cpi	r16, 0x4C	; 76
 7b6:	00 03       	mulsu	r16, r16
 7b8:	08 3a       	cpi	r16, 0xA8	; 168
 7ba:	0b 3b       	cpi	r16, 0xBB	; 187
 7bc:	0b 49       	sbci	r16, 0x9B	; 155
 7be:	13 02       	muls	r17, r19
 7c0:	06 00       	.word	0x0006	; ????
 7c2:	00 0d       	add	r16, r0
 7c4:	1d 01       	movw	r2, r26
 7c6:	31 13       	cpse	r19, r17
 7c8:	52 01       	movw	r10, r4
 7ca:	55 06       	cpc	r5, r21
 7cc:	58 0b       	sbc	r21, r24
 7ce:	59 0b       	sbc	r21, r25
 7d0:	01 13       	cpse	r16, r17
 7d2:	00 00       	nop
 7d4:	0e 05       	cpc	r16, r14
 7d6:	00 31       	cpi	r16, 0x10	; 16
 7d8:	13 02       	muls	r17, r19
 7da:	06 00       	.word	0x0006	; ????
 7dc:	00 0f       	add	r16, r16
 7de:	1d 01       	movw	r2, r26
 7e0:	31 13       	cpse	r19, r17
 7e2:	52 01       	movw	r10, r4
 7e4:	55 06       	cpc	r5, r21
 7e6:	58 0b       	sbc	r21, r24
 7e8:	59 0b       	sbc	r21, r25
 7ea:	00 00       	nop
 7ec:	10 05       	cpc	r17, r0
 7ee:	00 03       	mulsu	r16, r16
 7f0:	0e 3a       	cpi	r16, 0xAE	; 174
 7f2:	0b 3b       	cpi	r16, 0xBB	; 187
 7f4:	0b 49       	sbci	r16, 0x9B	; 155
 7f6:	13 02       	muls	r17, r19
 7f8:	06 00       	.word	0x0006	; ????
 7fa:	00 11       	cpse	r16, r0
 7fc:	34 00       	.word	0x0034	; ????
 7fe:	03 0e       	add	r0, r19
 800:	3a 0b       	sbc	r19, r26
 802:	3b 0b       	sbc	r19, r27
 804:	49 13       	cpse	r20, r25
 806:	02 0a       	sbc	r0, r18
 808:	00 00       	nop
 80a:	12 89       	ldd	r17, Z+18	; 0x12
 80c:	82 01       	movw	r16, r4
 80e:	01 11       	cpse	r16, r1
 810:	01 31       	cpi	r16, 0x11	; 17
 812:	13 01       	movw	r2, r6
 814:	13 00       	.word	0x0013	; ????
 816:	00 13       	cpse	r16, r16
 818:	8a 82       	std	Y+2, r8	; 0x02
 81a:	01 00       	.word	0x0001	; ????
 81c:	02 0a       	sbc	r0, r18
 81e:	91 42       	sbci	r25, 0x21	; 33
 820:	0a 00       	.word	0x000a	; ????
 822:	00 14       	cp	r0, r0
 824:	89 82       	std	Y+1, r8	; 0x01
 826:	01 01       	movw	r0, r2
 828:	11 01       	movw	r2, r2
 82a:	95 42       	sbci	r25, 0x25	; 37
 82c:	0c 31       	cpi	r16, 0x1C	; 28
 82e:	13 00       	.word	0x0013	; ????
 830:	00 15       	cp	r16, r0
 832:	01 01       	movw	r0, r2
 834:	49 13       	cpse	r20, r25
 836:	01 13       	cpse	r16, r17
 838:	00 00       	nop
 83a:	16 21       	and	r17, r6
 83c:	00 49       	sbci	r16, 0x90	; 144
 83e:	13 2f       	mov	r17, r19
 840:	0b 00       	.word	0x000b	; ????
 842:	00 17       	cp	r16, r16
 844:	2e 01       	movw	r4, r28
 846:	3f 0c       	add	r3, r15
 848:	03 0e       	add	r0, r19
 84a:	3a 0b       	sbc	r19, r26
 84c:	3b 0b       	sbc	r19, r27
 84e:	27 0c       	add	r2, r7
 850:	11 01       	movw	r2, r2
 852:	12 01       	movw	r2, r4
 854:	40 06       	cpc	r4, r16
 856:	97 42       	sbci	r25, 0x27	; 39
 858:	0c 01       	movw	r0, r24
 85a:	13 00       	.word	0x0013	; ????
 85c:	00 18       	sub	r0, r0
 85e:	05 00       	.word	0x0005	; ????
 860:	03 0e       	add	r0, r19
 862:	3a 0b       	sbc	r19, r26
 864:	3b 0b       	sbc	r19, r27
 866:	49 13       	cpse	r20, r25
 868:	02 0a       	sbc	r0, r18
 86a:	00 00       	nop
 86c:	19 18       	sub	r1, r9
 86e:	00 00       	nop
 870:	00 1a       	sub	r0, r16
 872:	89 82       	std	Y+1, r8	; 0x01
 874:	01 01       	movw	r0, r2
 876:	11 01       	movw	r2, r2
 878:	31 13       	cpse	r19, r17
 87a:	00 00       	nop
 87c:	1b 2e       	mov	r1, r27
 87e:	01 3f       	cpi	r16, 0xF1	; 241
 880:	0c 03       	fmul	r16, r20
 882:	0e 3a       	cpi	r16, 0xAE	; 174
 884:	0b 3b       	cpi	r16, 0xBB	; 187
 886:	0b 11       	cpse	r16, r11
 888:	01 12       	cpse	r0, r17
 88a:	01 40       	sbci	r16, 0x01	; 1
 88c:	0a 97       	sbiw	r24, 0x0a	; 10
 88e:	42 0c       	add	r4, r2
 890:	01 13       	cpse	r16, r17
 892:	00 00       	nop
 894:	1c 1d       	adc	r17, r12
 896:	01 31       	cpi	r16, 0x11	; 17
 898:	13 11       	cpse	r17, r3
 89a:	01 12       	cpse	r0, r17
 89c:	01 58       	subi	r16, 0x81	; 129
 89e:	0b 59       	subi	r16, 0x9B	; 155
 8a0:	0b 01       	movw	r0, r22
 8a2:	13 00       	.word	0x0013	; ????
 8a4:	00 1d       	adc	r16, r0
 8a6:	1d 01       	movw	r2, r26
 8a8:	31 13       	cpse	r19, r17
 8aa:	11 01       	movw	r2, r2
 8ac:	12 01       	movw	r2, r4
 8ae:	58 0b       	sbc	r21, r24
 8b0:	59 0b       	sbc	r21, r25
 8b2:	00 00       	nop
 8b4:	1e 1d       	adc	r17, r14
 8b6:	00 31       	cpi	r16, 0x10	; 16
 8b8:	13 11       	cpse	r17, r3
 8ba:	01 12       	cpse	r0, r17
 8bc:	01 58       	subi	r16, 0x81	; 129
 8be:	0b 59       	subi	r16, 0x9B	; 155
 8c0:	0b 00       	.word	0x000b	; ????
 8c2:	00 1f       	adc	r16, r16
 8c4:	89 82       	std	Y+1, r8	; 0x01
 8c6:	01 00       	.word	0x0001	; ????
 8c8:	11 01       	movw	r2, r2
 8ca:	31 13       	cpse	r19, r17
 8cc:	00 00       	nop
 8ce:	20 26       	eor	r2, r16
 8d0:	00 49       	sbci	r16, 0x90	; 144
 8d2:	13 00       	.word	0x0013	; ????
 8d4:	00 21       	and	r16, r0
 8d6:	2e 01       	movw	r4, r28
 8d8:	3f 0c       	add	r3, r15
 8da:	03 0e       	add	r0, r19
 8dc:	3a 0b       	sbc	r19, r26
 8de:	3b 0b       	sbc	r19, r27
 8e0:	49 13       	cpse	r20, r25
 8e2:	11 01       	movw	r2, r2
 8e4:	12 01       	movw	r2, r4
 8e6:	40 0a       	sbc	r4, r16
 8e8:	97 42       	sbci	r25, 0x27	; 39
 8ea:	0c 01       	movw	r0, r24
 8ec:	13 00       	.word	0x0013	; ????
 8ee:	00 22       	and	r0, r16
 8f0:	2e 01       	movw	r4, r28
 8f2:	3f 0c       	add	r3, r15
 8f4:	03 0e       	add	r0, r19
 8f6:	3a 0b       	sbc	r19, r26
 8f8:	3b 0b       	sbc	r19, r27
 8fa:	49 13       	cpse	r20, r25
 8fc:	3c 0c       	add	r3, r12
 8fe:	01 13       	cpse	r16, r17
 900:	00 00       	nop
 902:	23 35       	cpi	r18, 0x53	; 83
 904:	00 49       	sbci	r16, 0x90	; 144
 906:	13 00       	.word	0x0013	; ????
 908:	00 24       	eor	r0, r0
 90a:	34 00       	.word	0x0034	; ????
 90c:	03 0e       	add	r0, r19
 90e:	3a 0b       	sbc	r19, r26
 910:	3b 0b       	sbc	r19, r27
 912:	49 13       	cpse	r20, r25
 914:	3f 0c       	add	r3, r15
 916:	02 0a       	sbc	r0, r18
 918:	00 00       	nop
 91a:	25 2e       	mov	r2, r21
 91c:	00 3f       	cpi	r16, 0xF0	; 240
 91e:	0c 3c       	cpi	r16, 0xCC	; 204
 920:	0c 87       	std	Y+12, r16	; 0x0c
 922:	40 0e       	add	r4, r16
 924:	03 0e       	add	r0, r19
 926:	3a 0b       	sbc	r19, r26
 928:	3b 05       	cpc	r19, r11
 92a:	00 00       	nop
 92c:	26 2e       	mov	r2, r22
 92e:	00 3f       	cpi	r16, 0xF0	; 240
 930:	0c 3c       	cpi	r16, 0xCC	; 204
 932:	0c 87       	std	Y+12, r16	; 0x0c
 934:	40 0e       	add	r4, r16
 936:	03 0e       	add	r0, r19
 938:	3a 0b       	sbc	r19, r26
 93a:	3b 0b       	sbc	r19, r27
 93c:	00 00       	nop
 93e:	00 01       	movw	r0, r0
 940:	11 01       	movw	r2, r2
 942:	25 0e       	add	r2, r21
 944:	13 0b       	sbc	r17, r19
 946:	03 0e       	add	r0, r19
 948:	55 06       	cpc	r5, r21
 94a:	11 01       	movw	r2, r2
 94c:	52 01       	movw	r10, r4
 94e:	10 06       	cpc	r1, r16
 950:	00 00       	nop
 952:	02 24       	eor	r0, r2
 954:	00 0b       	sbc	r16, r16
 956:	0b 3e       	cpi	r16, 0xEB	; 235
 958:	0b 03       	fmul	r16, r19
 95a:	0e 00       	.word	0x000e	; ????
 95c:	00 03       	mulsu	r16, r16
 95e:	16 00       	.word	0x0016	; ????
 960:	03 0e       	add	r0, r19
 962:	3a 0b       	sbc	r19, r26
 964:	3b 0b       	sbc	r19, r27
 966:	49 13       	cpse	r20, r25
 968:	00 00       	nop
 96a:	04 24       	eor	r0, r4
 96c:	00 0b       	sbc	r16, r16
 96e:	0b 3e       	cpi	r16, 0xEB	; 235
 970:	0b 03       	fmul	r16, r19
 972:	08 00       	.word	0x0008	; ????
 974:	00 05       	cpc	r16, r0
 976:	2e 01       	movw	r4, r28
 978:	3f 0c       	add	r3, r15
 97a:	03 0e       	add	r0, r19
 97c:	3a 0b       	sbc	r19, r26
 97e:	3b 0b       	sbc	r19, r27
 980:	27 0c       	add	r2, r7
 982:	11 01       	movw	r2, r2
 984:	12 01       	movw	r2, r4
 986:	40 06       	cpc	r4, r16
 988:	97 42       	sbci	r25, 0x27	; 39
 98a:	0c 01       	movw	r0, r24
 98c:	13 00       	.word	0x0013	; ????
 98e:	00 06       	cpc	r0, r16
 990:	05 00       	.word	0x0005	; ????
 992:	03 0e       	add	r0, r19
 994:	3a 0b       	sbc	r19, r26
 996:	3b 0b       	sbc	r19, r27
 998:	49 13       	cpse	r20, r25
 99a:	02 06       	cpc	r0, r18
 99c:	00 00       	nop
 99e:	07 34       	cpi	r16, 0x47	; 71
 9a0:	00 03       	mulsu	r16, r16
 9a2:	0e 3a       	cpi	r16, 0xAE	; 174
 9a4:	0b 3b       	cpi	r16, 0xBB	; 187
 9a6:	0b 49       	sbci	r16, 0x9B	; 155
 9a8:	13 02       	muls	r17, r19
 9aa:	06 00       	.word	0x0006	; ????
 9ac:	00 08       	sbc	r0, r0
 9ae:	34 00       	.word	0x0034	; ????
 9b0:	03 08       	sbc	r0, r3
 9b2:	3a 0b       	sbc	r19, r26
 9b4:	3b 0b       	sbc	r19, r27
 9b6:	49 13       	cpse	r20, r25
 9b8:	02 06       	cpc	r0, r18
 9ba:	00 00       	nop
 9bc:	09 0b       	sbc	r16, r25
 9be:	01 55       	subi	r16, 0x51	; 81
 9c0:	06 01       	movw	r0, r12
 9c2:	13 00       	.word	0x0013	; ????
 9c4:	00 0a       	sbc	r0, r16
 9c6:	0b 01       	movw	r0, r22
 9c8:	55 06       	cpc	r5, r21
 9ca:	00 00       	nop
 9cc:	0b 89       	ldd	r16, Y+19	; 0x13
 9ce:	82 01       	movw	r16, r4
 9d0:	00 11       	cpse	r16, r0
 9d2:	01 31       	cpi	r16, 0x11	; 17
 9d4:	13 00       	.word	0x0013	; ????
 9d6:	00 0c       	add	r0, r0
 9d8:	0f 00       	.word	0x000f	; ????
 9da:	0b 0b       	sbc	r16, r27
 9dc:	49 13       	cpse	r20, r25
 9de:	00 00       	nop
 9e0:	0d 2e       	mov	r0, r29
 9e2:	01 3f       	cpi	r16, 0xF1	; 241
 9e4:	0c 03       	fmul	r16, r20
 9e6:	0e 3a       	cpi	r16, 0xAE	; 174
 9e8:	0b 3b       	cpi	r16, 0xBB	; 187
 9ea:	0b 11       	cpse	r16, r11
 9ec:	01 12       	cpse	r0, r17
 9ee:	01 40       	sbci	r16, 0x01	; 1
 9f0:	0a 97       	sbiw	r24, 0x0a	; 10
 9f2:	42 0c       	add	r4, r2
 9f4:	01 13       	cpse	r16, r17
 9f6:	00 00       	nop
 9f8:	0e 34       	cpi	r16, 0x4E	; 78
 9fa:	00 03       	mulsu	r16, r16
 9fc:	0e 3a       	cpi	r16, 0xAE	; 174
 9fe:	0b 3b       	cpi	r16, 0xBB	; 187
 a00:	0b 49       	sbci	r16, 0x9B	; 155
 a02:	13 1c       	adc	r1, r3
 a04:	0b 00       	.word	0x000b	; ????
 a06:	00 0f       	add	r16, r16
 a08:	0b 01       	movw	r0, r22
 a0a:	11 01       	movw	r2, r2
 a0c:	12 01       	movw	r2, r4
 a0e:	01 13       	cpse	r16, r17
 a10:	00 00       	nop
 a12:	10 89       	ldd	r17, Z+16	; 0x10
 a14:	82 01       	movw	r16, r4
 a16:	01 11       	cpse	r16, r1
 a18:	01 31       	cpi	r16, 0x11	; 17
 a1a:	13 01       	movw	r2, r6
 a1c:	13 00       	.word	0x0013	; ????
 a1e:	00 11       	cpse	r16, r0
 a20:	8a 82       	std	Y+2, r8	; 0x02
 a22:	01 00       	.word	0x0001	; ????
 a24:	02 0a       	sbc	r0, r18
 a26:	91 42       	sbci	r25, 0x21	; 33
 a28:	0a 00       	.word	0x000a	; ????
 a2a:	00 12       	cpse	r0, r16
 a2c:	89 82       	std	Y+1, r8	; 0x01
 a2e:	01 01       	movw	r0, r2
 a30:	11 01       	movw	r2, r2
 a32:	95 42       	sbci	r25, 0x25	; 37
 a34:	0c 31       	cpi	r16, 0x1C	; 28
 a36:	13 00       	.word	0x0013	; ????
 a38:	00 13       	cpse	r16, r16
 a3a:	01 01       	movw	r0, r2
 a3c:	49 13       	cpse	r20, r25
 a3e:	01 13       	cpse	r16, r17
 a40:	00 00       	nop
 a42:	14 21       	and	r17, r4
 a44:	00 49       	sbci	r16, 0x90	; 144
 a46:	13 2f       	mov	r17, r19
 a48:	0b 00       	.word	0x000b	; ????
 a4a:	00 15       	cp	r16, r0
 a4c:	35 00       	.word	0x0035	; ????
 a4e:	49 13       	cpse	r20, r25
 a50:	00 00       	nop
 a52:	16 34       	cpi	r17, 0x46	; 70
 a54:	00 03       	mulsu	r16, r16
 a56:	0e 3a       	cpi	r16, 0xAE	; 174
 a58:	0b 3b       	cpi	r16, 0xBB	; 187
 a5a:	0b 49       	sbci	r16, 0x9B	; 155
 a5c:	13 3f       	cpi	r17, 0xF3	; 243
 a5e:	0c 02       	muls	r16, r28
 a60:	0a 00       	.word	0x000a	; ????
 a62:	00 17       	cp	r16, r16
 a64:	2e 00       	.word	0x002e	; ????
 a66:	3f 0c       	add	r3, r15
 a68:	3c 0c       	add	r3, r12
 a6a:	87 40       	sbci	r24, 0x07	; 7
 a6c:	0e 03       	fmul	r16, r22
 a6e:	0e 3a       	cpi	r16, 0xAE	; 174
 a70:	0b 3b       	cpi	r16, 0xBB	; 187
 a72:	0b 00       	.word	0x000b	; ????
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
  1a:	45 03       	mulsu	r20, r21
  1c:	00 00       	nop
  1e:	02 00       	.word	0x0002	; ????
  20:	e0 00       	.word	0x00e0	; ????
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
  56:	68 6f       	ori	r22, 0xF8	; 248
  58:	6d 65       	ori	r22, 0x5D	; 93
  5a:	2f 66       	ori	r18, 0x6F	; 111
  5c:	61 6e       	ori	r22, 0xE1	; 225
  5e:	68 63       	ori	r22, 0x38	; 56
  60:	2f 77       	andi	r18, 0x7F	; 127
  62:	61 73       	andi	r22, 0x31	; 49
  64:	6d 2d       	mov	r22, r13
  66:	61 6f       	ori	r22, 0xF1	; 241
  68:	74 2f       	mov	r23, r20
  6a:	61 70       	andi	r22, 0x01	; 1
  6c:	70 2f       	mov	r23, r16
  6e:	62 65       	ori	r22, 0x52	; 82
  70:	6e 63       	ori	r22, 0x3E	; 62
  72:	68 6d       	ori	r22, 0xD8	; 216
  74:	61 72       	andi	r22, 0x21	; 33
  76:	6b 2f       	mov	r22, r27
  78:	2e 00       	.word	0x002e	; ????
  7a:	2f 75       	andi	r18, 0x5F	; 95
  7c:	73 72       	andi	r23, 0x23	; 35
  7e:	2f 6c       	ori	r18, 0xCF	; 207
  80:	69 62       	ori	r22, 0x29	; 41
  82:	2f 61       	ori	r18, 0x1F	; 31
  84:	76 72       	andi	r23, 0x26	; 38
  86:	2f 69       	ori	r18, 0x9F	; 159
  88:	6e 63       	ori	r22, 0x3E	; 62
  8a:	6c 75       	andi	r22, 0x5C	; 92
  8c:	64 65       	ori	r22, 0x54	; 84
  8e:	00 2f       	mov	r16, r16
  90:	75 73       	andi	r23, 0x35	; 53
  92:	72 2f       	mov	r23, r18
  94:	6c 69       	ori	r22, 0x9C	; 156
  96:	62 2f       	mov	r22, r18
  98:	67 63       	ori	r22, 0x37	; 55
  9a:	63 2f       	mov	r22, r19
  9c:	61 76       	andi	r22, 0x61	; 97
  9e:	72 2f       	mov	r23, r18
  a0:	35 2e       	mov	r3, r21
  a2:	34 2e       	mov	r3, r20
  a4:	30 2f       	mov	r19, r16
  a6:	69 6e       	ori	r22, 0xE9	; 233
  a8:	63 6c       	ori	r22, 0xC3	; 195
  aa:	75 64       	ori	r23, 0x45	; 69
  ac:	65 00       	.word	0x0065	; ????
  ae:	00 62       	ori	r16, 0x20	; 32
  b0:	65 6e       	ori	r22, 0xE5	; 229
  b2:	63 68       	ori	r22, 0x83	; 131
  b4:	6d 61       	ori	r22, 0x1D	; 29
  b6:	72 6b       	ori	r23, 0xB2	; 178
  b8:	2e 63       	ori	r18, 0x3E	; 62
  ba:	00 01       	movw	r0, r0
  bc:	00 00       	nop
  be:	41 76       	andi	r20, 0x61	; 97
  c0:	72 6f       	ori	r23, 0xF2	; 242
  c2:	72 61       	ori	r23, 0x12	; 18
  c4:	50 72       	andi	r21, 0x20	; 32
  c6:	69 6e       	ori	r22, 0xE9	; 233
  c8:	74 2e       	mov	r7, r20
  ca:	68 00       	.word	0x0068	; ????
  cc:	02 00       	.word	0x0002	; ????
  ce:	00 41       	sbci	r16, 0x10	; 16
  d0:	76 72       	andi	r23, 0x26	; 38
  d2:	6f 72       	andi	r22, 0x2F	; 47
  d4:	61 54       	subi	r22, 0x41	; 65
  d6:	72 61       	ori	r23, 0x12	; 18
  d8:	63 65       	ori	r22, 0x53	; 83
  da:	2e 68       	ori	r18, 0x8E	; 142
  dc:	00 01       	movw	r0, r0
  de:	00 00       	nop
  e0:	73 74       	andi	r23, 0x43	; 67
  e2:	64 69       	ori	r22, 0x94	; 148
  e4:	6e 74       	andi	r22, 0x4E	; 78
  e6:	2e 68       	ori	r18, 0x8E	; 142
  e8:	00 03       	mulsu	r16, r16
  ea:	00 00       	nop
  ec:	73 74       	andi	r23, 0x43	; 67
  ee:	64 61       	ori	r22, 0x14	; 20
  f0:	72 67       	ori	r23, 0x72	; 114
  f2:	2e 68       	ori	r18, 0x8E	; 142
  f4:	00 04       	cpc	r0, r0
  f6:	00 00       	nop
  f8:	73 74       	andi	r23, 0x43	; 67
  fa:	64 69       	ori	r22, 0x94	; 148
  fc:	6f 2e       	mov	r6, r31
  fe:	68 00       	.word	0x0068	; ????
 100:	03 00       	.word	0x0003	; ????
 102:	00 00       	nop
 104:	00 05       	cpc	r16, r0
 106:	02 00       	.word	0x0002	; ????
 108:	00 00       	nop
 10a:	00 16       	cp	r0, r16
 10c:	04 02       	muls	r16, r20
 10e:	03 d6       	rcall	.+3078   	; 0xd16 <__data_load_end+0x85e>
 110:	00 09       	sbc	r16, r0
 112:	00 00       	nop
 114:	01 04       	cpc	r0, r1
 116:	01 00       	.word	0x0001	; ????
 118:	02 04       	cpc	r0, r2
 11a:	01 03       	mulsu	r16, r17
 11c:	ac 7f       	andi	r26, 0xFC	; 252
 11e:	09 00       	.word	0x0009	; ????
 120:	00 01       	movw	r0, r0
 122:	03 01       	movw	r0, r6
 124:	09 00       	.word	0x0009	; ????
 126:	00 01       	movw	r0, r0
 128:	04 02       	muls	r16, r20
 12a:	03 d3       	rcall	.+1542   	; 0x732 <__data_load_end+0x27a>
 12c:	00 09       	sbc	r16, r0
 12e:	00 00       	nop
 130:	01 03       	mulsu	r16, r17
 132:	04 09       	sbc	r16, r4
 134:	00 00       	nop
 136:	01 03       	mulsu	r16, r17
 138:	7c 09       	sbc	r23, r12
 13a:	00 00       	nop
 13c:	01 04       	cpc	r0, r1
 13e:	01 03       	mulsu	r16, r17
 140:	b3 7f       	andi	r27, 0xF3	; 243
 142:	09 00       	.word	0x0009	; ????
 144:	00 01       	movw	r0, r0
 146:	09 00       	.word	0x0009	; ????
 148:	00 00       	nop
 14a:	01 01       	movw	r0, r2
 14c:	00 05       	cpc	r16, r0
 14e:	02 00       	.word	0x0002	; ????
 150:	00 00       	nop
 152:	00 03       	mulsu	r16, r16
 154:	13 01       	movw	r2, r6
 156:	03 02       	muls	r16, r19
 158:	09 00       	.word	0x0009	; ????
 15a:	00 01       	movw	r0, r0
 15c:	03 01       	movw	r0, r6
 15e:	09 00       	.word	0x0009	; ????
 160:	00 01       	movw	r0, r0
 162:	09 00       	.word	0x0009	; ????
 164:	00 00       	nop
 166:	01 01       	movw	r0, r2
 168:	00 05       	cpc	r16, r0
 16a:	02 00       	.word	0x0002	; ????
 16c:	00 00       	nop
 16e:	00 03       	mulsu	r16, r16
 170:	1a 01       	movw	r2, r20
 172:	03 04       	cpc	r0, r3
 174:	09 00       	.word	0x0009	; ????
 176:	00 01       	movw	r0, r0
 178:	03 02       	muls	r16, r19
 17a:	09 00       	.word	0x0009	; ????
 17c:	00 01       	movw	r0, r0
 17e:	09 00       	.word	0x0009	; ????
 180:	00 00       	nop
 182:	01 01       	movw	r0, r2
 184:	00 05       	cpc	r16, r0
 186:	02 ce       	rjmp	.-1020   	; 0xfffffd8c <__eeprom_end+0xff7efd8c>
 188:	00 00       	nop
 18a:	00 03       	mulsu	r16, r16
 18c:	24 01       	movw	r4, r8
 18e:	04 02       	muls	r16, r20
 190:	03 3d       	cpi	r16, 0xD3	; 211
 192:	09 00       	.word	0x0009	; ????
 194:	00 01       	movw	r0, r0
 196:	03 7c       	andi	r16, 0xC3	; 195
 198:	09 08       	sbc	r0, r9
 19a:	00 01       	movw	r0, r0
 19c:	03 04       	cpc	r0, r3
 19e:	09 04       	cpc	r0, r9
 1a0:	00 01       	movw	r0, r0
 1a2:	03 7c       	andi	r16, 0xC3	; 195
 1a4:	09 04       	cpc	r0, r9
 1a6:	00 01       	movw	r0, r0
 1a8:	03 04       	cpc	r0, r3
 1aa:	09 02       	muls	r16, r25
 1ac:	00 01       	movw	r0, r0
 1ae:	03 7c       	andi	r16, 0xC3	; 195
 1b0:	09 04       	cpc	r0, r9
 1b2:	00 01       	movw	r0, r0
 1b4:	03 04       	cpc	r0, r3
 1b6:	09 02       	muls	r16, r25
 1b8:	00 01       	movw	r0, r0
 1ba:	03 7c       	andi	r16, 0xC3	; 195
 1bc:	09 04       	cpc	r0, r9
 1be:	00 01       	movw	r0, r0
 1c0:	03 04       	cpc	r0, r3
 1c2:	09 02       	muls	r16, r25
 1c4:	00 01       	movw	r0, r0
 1c6:	03 7c       	andi	r16, 0xC3	; 195
 1c8:	09 04       	cpc	r0, r9
 1ca:	00 01       	movw	r0, r0
 1cc:	03 04       	cpc	r0, r3
 1ce:	09 02       	muls	r16, r25
 1d0:	00 01       	movw	r0, r0
 1d2:	03 7c       	andi	r16, 0xC3	; 195
 1d4:	09 04       	cpc	r0, r9
 1d6:	00 01       	movw	r0, r0
 1d8:	03 04       	cpc	r0, r3
 1da:	09 02       	muls	r16, r25
 1dc:	00 01       	movw	r0, r0
 1de:	03 7c       	andi	r16, 0xC3	; 195
 1e0:	09 04       	cpc	r0, r9
 1e2:	00 01       	movw	r0, r0
 1e4:	03 04       	cpc	r0, r3
 1e6:	09 02       	muls	r16, r25
 1e8:	00 01       	movw	r0, r0
 1ea:	03 7c       	andi	r16, 0xC3	; 195
 1ec:	09 04       	cpc	r0, r9
 1ee:	00 01       	movw	r0, r0
 1f0:	03 04       	cpc	r0, r3
 1f2:	09 02       	muls	r16, r25
 1f4:	00 01       	movw	r0, r0
 1f6:	03 7c       	andi	r16, 0xC3	; 195
 1f8:	09 04       	cpc	r0, r9
 1fa:	00 01       	movw	r0, r0
 1fc:	03 04       	cpc	r0, r3
 1fe:	09 02       	muls	r16, r25
 200:	00 01       	movw	r0, r0
 202:	03 7c       	andi	r16, 0xC3	; 195
 204:	09 02       	muls	r16, r25
 206:	00 01       	movw	r0, r0
 208:	04 03       	mulsu	r16, r20
 20a:	03 b1       	in	r16, 0x03	; 3
 20c:	7f 09       	sbc	r23, r15
 20e:	06 00       	.word	0x0006	; ????
 210:	01 09       	sbc	r16, r1
 212:	08 00       	.word	0x0008	; ????
 214:	00 01       	movw	r0, r0
 216:	01 00       	.word	0x0001	; ????
 218:	05 02       	muls	r16, r21
 21a:	1a 01       	movw	r2, r20
 21c:	00 00       	nop
 21e:	03 33       	cpi	r16, 0x33	; 51
 220:	01 04       	cpc	r0, r1
 222:	03 03       	mulsu	r16, r19
 224:	60 09       	sbc	r22, r0
 226:	00 00       	nop
 228:	01 04       	cpc	r0, r1
 22a:	02 03       	mulsu	r16, r18
 22c:	ce 00       	.word	0x00ce	; ????
 22e:	09 04       	cpc	r0, r9
 230:	00 01       	movw	r0, r0
 232:	03 7c       	andi	r16, 0xC3	; 195
 234:	09 08       	sbc	r0, r9
 236:	00 01       	movw	r0, r0
 238:	03 04       	cpc	r0, r3
 23a:	09 04       	cpc	r0, r9
 23c:	00 01       	movw	r0, r0
 23e:	03 7c       	andi	r16, 0xC3	; 195
 240:	09 04       	cpc	r0, r9
 242:	00 01       	movw	r0, r0
 244:	03 04       	cpc	r0, r3
 246:	09 02       	muls	r16, r25
 248:	00 01       	movw	r0, r0
 24a:	03 7c       	andi	r16, 0xC3	; 195
 24c:	09 04       	cpc	r0, r9
 24e:	00 01       	movw	r0, r0
 250:	03 04       	cpc	r0, r3
 252:	09 02       	muls	r16, r25
 254:	00 01       	movw	r0, r0
 256:	03 7c       	andi	r16, 0xC3	; 195
 258:	09 04       	cpc	r0, r9
 25a:	00 01       	movw	r0, r0
 25c:	03 04       	cpc	r0, r3
 25e:	09 02       	muls	r16, r25
 260:	00 01       	movw	r0, r0
 262:	03 7c       	andi	r16, 0xC3	; 195
 264:	09 04       	cpc	r0, r9
 266:	00 01       	movw	r0, r0
 268:	03 04       	cpc	r0, r3
 26a:	09 02       	muls	r16, r25
 26c:	00 01       	movw	r0, r0
 26e:	03 7c       	andi	r16, 0xC3	; 195
 270:	09 04       	cpc	r0, r9
 272:	00 01       	movw	r0, r0
 274:	03 04       	cpc	r0, r3
 276:	09 02       	muls	r16, r25
 278:	00 01       	movw	r0, r0
 27a:	03 7c       	andi	r16, 0xC3	; 195
 27c:	09 04       	cpc	r0, r9
 27e:	00 01       	movw	r0, r0
 280:	03 04       	cpc	r0, r3
 282:	09 02       	muls	r16, r25
 284:	00 01       	movw	r0, r0
 286:	03 7c       	andi	r16, 0xC3	; 195
 288:	09 04       	cpc	r0, r9
 28a:	00 01       	movw	r0, r0
 28c:	03 04       	cpc	r0, r3
 28e:	09 02       	muls	r16, r25
 290:	00 01       	movw	r0, r0
 292:	03 7c       	andi	r16, 0xC3	; 195
 294:	09 04       	cpc	r0, r9
 296:	00 01       	movw	r0, r0
 298:	09 08       	sbc	r0, r9
 29a:	00 00       	nop
 29c:	01 01       	movw	r0, r2
 29e:	00 05       	cpc	r16, r0
 2a0:	02 00       	.word	0x0002	; ????
 2a2:	00 00       	nop
 2a4:	00 03       	mulsu	r16, r16
 2a6:	c1 00       	.word	0x00c1	; ????
 2a8:	01 03       	mulsu	r16, r17
 2aa:	01 09       	sbc	r16, r1
 2ac:	00 00       	nop
 2ae:	01 03       	mulsu	r16, r17
 2b0:	01 09       	sbc	r16, r1
 2b2:	00 00       	nop
 2b4:	01 09       	sbc	r16, r1
 2b6:	00 00       	nop
 2b8:	00 01       	movw	r0, r0
 2ba:	01 00       	.word	0x0001	; ????
 2bc:	05 02       	muls	r16, r21
 2be:	00 00       	nop
 2c0:	00 00       	nop
 2c2:	03 c4       	rjmp	.+2054   	; 0xaca <__data_load_end+0x612>
 2c4:	00 01       	movw	r0, r0
 2c6:	04 02       	muls	r16, r20
 2c8:	03 c5       	rjmp	.+2566   	; 0xcd0 <__data_load_end+0x818>
 2ca:	00 09       	sbc	r16, r0
 2cc:	00 00       	nop
 2ce:	01 03       	mulsu	r16, r17
 2d0:	01 09       	sbc	r16, r1
 2d2:	00 00       	nop
 2d4:	01 03       	mulsu	r16, r17
 2d6:	01 09       	sbc	r16, r1
 2d8:	00 00       	nop
 2da:	01 03       	mulsu	r16, r17
 2dc:	01 09       	sbc	r16, r1
 2de:	00 00       	nop
 2e0:	01 03       	mulsu	r16, r17
 2e2:	51 09       	sbc	r21, r1
 2e4:	00 00       	nop
 2e6:	01 04       	cpc	r0, r1
 2e8:	01 03       	mulsu	r16, r17
 2ea:	69 09       	sbc	r22, r9
 2ec:	00 00       	nop
 2ee:	01 09       	sbc	r16, r1
 2f0:	00 00       	nop
 2f2:	00 01       	movw	r0, r0
 2f4:	01 00       	.word	0x0001	; ????
 2f6:	05 02       	muls	r16, r21
 2f8:	00 00       	nop
 2fa:	00 00       	nop
 2fc:	03 c7       	rjmp	.+3590   	; 0x1104 <__stack+0x5>
 2fe:	00 01       	movw	r0, r0
 300:	04 02       	muls	r16, r20
 302:	03 36       	cpi	r16, 0x63	; 99
 304:	09 00       	.word	0x0009	; ????
 306:	00 01       	movw	r0, r0
 308:	03 01       	movw	r0, r6
 30a:	09 00       	.word	0x0009	; ????
 30c:	00 01       	movw	r0, r0
 30e:	03 5f       	subi	r16, 0xF3	; 243
 310:	09 00       	.word	0x0009	; ????
 312:	00 01       	movw	r0, r0
 314:	09 00       	.word	0x0009	; ????
 316:	00 00       	nop
 318:	01 01       	movw	r0, r2
 31a:	00 05       	cpc	r16, r0
 31c:	02 00       	.word	0x0002	; ????
 31e:	00 00       	nop
 320:	00 03       	mulsu	r16, r16
 322:	ca 00       	.word	0x00ca	; ????
 324:	01 04       	cpc	r0, r1
 326:	02 03       	mulsu	r16, r18
 328:	cf 00       	.word	0x00cf	; ????
 32a:	09 00       	.word	0x0009	; ????
 32c:	00 01       	movw	r0, r0
 32e:	03 01       	movw	r0, r6
 330:	09 00       	.word	0x0009	; ????
 332:	00 01       	movw	r0, r0
 334:	03 43       	sbci	r16, 0x33	; 51
 336:	09 00       	.word	0x0009	; ????
 338:	00 01       	movw	r0, r0
 33a:	09 00       	.word	0x0009	; ????
 33c:	00 00       	nop
 33e:	01 01       	movw	r0, r2
 340:	00 05       	cpc	r16, r0
 342:	02 60       	ori	r16, 0x02	; 2
 344:	01 00       	.word	0x0001	; ????
 346:	00 03       	mulsu	r16, r16
 348:	ce 00       	.word	0x00ce	; ????
 34a:	01 03       	mulsu	r16, r17
 34c:	01 09       	sbc	r16, r1
 34e:	00 00       	nop
 350:	01 03       	mulsu	r16, r17
 352:	01 09       	sbc	r16, r1
 354:	04 00       	.word	0x0004	; ????
 356:	01 03       	mulsu	r16, r17
 358:	01 09       	sbc	r16, r1
 35a:	02 00       	.word	0x0002	; ????
 35c:	01 09       	sbc	r16, r1
 35e:	06 00       	.word	0x0006	; ????
 360:	00 01       	movw	r0, r0
 362:	01 3e       	cpi	r16, 0xE1	; 225
 364:	01 00       	.word	0x0001	; ????
 366:	00 02       	muls	r16, r16
 368:	00 a6       	std	Z+40, r0	; 0x28
 36a:	00 00       	nop
 36c:	00 02       	muls	r16, r16
 36e:	01 fb       	bst	r16, 1
 370:	0e 0a       	sbc	r0, r30
 372:	00 01       	movw	r0, r0
 374:	01 01       	movw	r0, r2
 376:	01 00       	.word	0x0001	; ????
 378:	00 00       	nop
 37a:	01 2f       	mov	r16, r17
 37c:	68 6f       	ori	r22, 0xF8	; 248
 37e:	6d 65       	ori	r22, 0x5D	; 93
 380:	2f 66       	ori	r18, 0x6F	; 111
 382:	61 6e       	ori	r22, 0xE1	; 225
 384:	68 63       	ori	r22, 0x38	; 56
 386:	2f 77       	andi	r18, 0x7F	; 127
 388:	61 73       	andi	r22, 0x31	; 49
 38a:	6d 2d       	mov	r22, r13
 38c:	61 6f       	ori	r22, 0xF1	; 241
 38e:	74 2f       	mov	r23, r20
 390:	61 70       	andi	r22, 0x01	; 1
 392:	70 2f       	mov	r23, r16
 394:	62 65       	ori	r22, 0x52	; 82
 396:	6e 63       	ori	r22, 0x3E	; 62
 398:	68 6d       	ori	r22, 0xD8	; 216
 39a:	61 72       	andi	r22, 0x21	; 33
 39c:	6b 00       	.word	0x006b	; ????
 39e:	2f 75       	andi	r18, 0x5F	; 95
 3a0:	73 72       	andi	r23, 0x23	; 35
 3a2:	2f 6c       	ori	r18, 0xCF	; 207
 3a4:	69 62       	ori	r22, 0x29	; 41
 3a6:	2f 61       	ori	r18, 0x1F	; 31
 3a8:	76 72       	andi	r23, 0x26	; 38
 3aa:	2f 69       	ori	r18, 0x9F	; 159
 3ac:	6e 63       	ori	r22, 0x3E	; 62
 3ae:	6c 75       	andi	r22, 0x5C	; 92
 3b0:	64 65       	ori	r22, 0x54	; 84
 3b2:	00 2f       	mov	r16, r16
 3b4:	68 6f       	ori	r22, 0xF8	; 248
 3b6:	6d 65       	ori	r22, 0x5D	; 93
 3b8:	2f 66       	ori	r18, 0x6F	; 111
 3ba:	61 6e       	ori	r22, 0xE1	; 225
 3bc:	68 63       	ori	r22, 0x38	; 56
 3be:	2f 77       	andi	r18, 0x7F	; 127
 3c0:	61 73       	andi	r22, 0x31	; 49
 3c2:	6d 2d       	mov	r22, r13
 3c4:	61 6f       	ori	r22, 0xF1	; 241
 3c6:	74 2f       	mov	r23, r20
 3c8:	61 70       	andi	r22, 0x01	; 1
 3ca:	70 2f       	mov	r23, r16
 3cc:	62 65       	ori	r22, 0x52	; 82
 3ce:	6e 63       	ori	r22, 0x3E	; 62
 3d0:	68 6d       	ori	r22, 0xD8	; 216
 3d2:	61 72       	andi	r22, 0x21	; 33
 3d4:	6b 2f       	mov	r22, r27
 3d6:	2e 00       	.word	0x002e	; ????
 3d8:	00 62       	ori	r16, 0x20	; 32
 3da:	69 6e       	ori	r22, 0xE9	; 233
 3dc:	73 72       	andi	r23, 0x23	; 35
 3de:	63 68       	ori	r22, 0x83	; 131
 3e0:	2e 63       	ori	r18, 0x3E	; 62
 3e2:	00 01       	movw	r0, r0
 3e4:	00 00       	nop
 3e6:	73 74       	andi	r23, 0x43	; 67
 3e8:	64 69       	ori	r22, 0x94	; 148
 3ea:	6e 74       	andi	r22, 0x4E	; 78
 3ec:	2e 68       	ori	r18, 0x8E	; 142
 3ee:	00 02       	muls	r16, r16
 3f0:	00 00       	nop
 3f2:	62 65       	ori	r22, 0x52	; 82
 3f4:	6e 63       	ori	r22, 0x3E	; 62
 3f6:	68 6d       	ori	r22, 0xD8	; 216
 3f8:	61 72       	andi	r22, 0x21	; 33
 3fa:	6b 2e       	mov	r6, r27
 3fc:	68 00       	.word	0x0068	; ????
 3fe:	01 00       	.word	0x0001	; ????
 400:	00 41       	sbci	r16, 0x10	; 16
 402:	76 72       	andi	r23, 0x26	; 38
 404:	6f 72       	andi	r22, 0x2F	; 47
 406:	61 50       	subi	r22, 0x01	; 1
 408:	72 69       	ori	r23, 0x92	; 146
 40a:	6e 74       	andi	r22, 0x4E	; 78
 40c:	2e 68       	ori	r18, 0x8E	; 142
 40e:	00 03       	mulsu	r16, r16
 410:	00 00       	nop
 412:	00 00       	nop
 414:	05 02       	muls	r16, r21
 416:	6c 01       	movw	r12, r24
 418:	00 00       	nop
 41a:	11 03       	mulsu	r17, r17
 41c:	01 09       	sbc	r16, r1
 41e:	1c 00       	.word	0x001c	; ????
 420:	01 03       	mulsu	r16, r17
 422:	02 09       	sbc	r16, r2
 424:	04 00       	.word	0x0004	; ????
 426:	01 03       	mulsu	r16, r17
 428:	05 09       	sbc	r16, r5
 42a:	1e 00       	.word	0x001e	; ????
 42c:	01 03       	mulsu	r16, r17
 42e:	7f 09       	sbc	r23, r15
 430:	06 00       	.word	0x0006	; ????
 432:	01 03       	mulsu	r16, r17
 434:	03 09       	sbc	r16, r3
 436:	04 00       	.word	0x0004	; ????
 438:	01 03       	mulsu	r16, r17
 43a:	03 09       	sbc	r16, r3
 43c:	0c 00       	.word	0x000c	; ????
 43e:	01 03       	mulsu	r16, r17
 440:	01 09       	sbc	r16, r1
 442:	20 00       	.word	0x0020	; ????
 444:	01 03       	mulsu	r16, r17
 446:	01 09       	sbc	r16, r1
 448:	08 00       	.word	0x0008	; ????
 44a:	01 03       	mulsu	r16, r17
 44c:	77 09       	sbc	r23, r7
 44e:	0e 00       	.word	0x000e	; ????
 450:	01 03       	mulsu	r16, r17
 452:	11 09       	sbc	r17, r1
 454:	02 00       	.word	0x0002	; ????
 456:	01 03       	mulsu	r16, r17
 458:	01 09       	sbc	r16, r1
 45a:	04 00       	.word	0x0004	; ????
 45c:	01 03       	mulsu	r16, r17
 45e:	01 09       	sbc	r16, r1
 460:	10 00       	.word	0x0010	; ????
 462:	01 03       	mulsu	r16, r17
 464:	77 09       	sbc	r23, r7
 466:	1a 00       	.word	0x001a	; ????
 468:	01 03       	mulsu	r16, r17
 46a:	79 09       	sbc	r23, r9
 46c:	06 00       	.word	0x0006	; ????
 46e:	01 09       	sbc	r16, r1
 470:	0a 00       	.word	0x000a	; ????
 472:	00 01       	movw	r0, r0
 474:	01 00       	.word	0x0001	; ????
 476:	05 02       	muls	r16, r21
 478:	36 02       	muls	r19, r22
 47a:	00 00       	nop
 47c:	03 1c       	adc	r0, r3
 47e:	01 03       	mulsu	r16, r17
 480:	03 09       	sbc	r16, r3
 482:	00 00       	nop
 484:	01 00       	.word	0x0001	; ????
 486:	02 04       	cpc	r0, r2
 488:	03 03       	mulsu	r16, r19
 48a:	03 09       	sbc	r16, r3
 48c:	12 00       	.word	0x0012	; ????
 48e:	01 00       	.word	0x0001	; ????
 490:	02 04       	cpc	r0, r2
 492:	03 03       	mulsu	r16, r19
 494:	7f 09       	sbc	r23, r15
 496:	10 00       	.word	0x0010	; ????
 498:	01 03       	mulsu	r16, r17
 49a:	03 09       	sbc	r16, r3
 49c:	0a 00       	.word	0x000a	; ????
 49e:	01 09       	sbc	r16, r1
 4a0:	0a 00       	.word	0x000a	; ????
 4a2:	00 01       	movw	r0, r0
 4a4:	01 03       	Address 0x00000000000004a4 is out of bounds.
.word	0xffff	; ????

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
  60:	4c 00       	.word	0x004c	; ????
  62:	00 00       	nop
  64:	0c 00       	.word	0x000c	; ????
  66:	00 00       	nop
  68:	00 00       	nop
  6a:	00 00       	nop
  6c:	1a 01       	movw	r2, r20
  6e:	00 00       	nop
  70:	46 00       	.word	0x0046	; ????
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
  9c:	18 00       	.word	0x0018	; ????
	...
  aa:	00 00       	nop
  ac:	41 0e       	add	r4, r17
  ae:	03 90       	.word	0x9003	; ????
  b0:	02 41       	sbci	r16, 0x12	; 18
  b2:	0e 04       	cpc	r0, r14
  b4:	91 03       	fmuls	r17, r17
  b6:	00 00       	nop
  b8:	0c 00       	.word	0x000c	; ????
	...
  c6:	00 00       	nop
  c8:	0c 00       	.word	0x000c	; ????
	...
  d6:	00 00       	nop
  d8:	0c 00       	.word	0x000c	; ????
  da:	00 00       	nop
  dc:	00 00       	nop
  de:	00 00       	nop
  e0:	60 01       	movw	r12, r0
  e2:	00 00       	nop
  e4:	0c 00       	.word	0x000c	; ????
  e6:	00 00       	nop
  e8:	10 00       	.word	0x0010	; ????
  ea:	00 00       	nop
  ec:	ff ff       	.word	0xffff	; ????
  ee:	ff ff       	.word	0xffff	; ????
  f0:	01 00       	.word	0x0001	; ????
  f2:	02 7f       	andi	r16, 0xF2	; 242
  f4:	24 0c       	add	r2, r4
  f6:	20 02       	muls	r18, r16
  f8:	a4 01       	movw	r20, r8
  fa:	00 00       	nop
  fc:	48 00       	.word	0x0048	; ????
  fe:	00 00       	nop
 100:	e8 00       	.word	0x00e8	; ????
 102:	00 00       	nop
 104:	6c 01       	movw	r12, r24
 106:	00 00       	nop
 108:	ca 00       	.word	0x00ca	; ????
 10a:	00 00       	nop
 10c:	41 0e       	add	r4, r17
 10e:	03 88       	ldd	r0, Z+19	; 0x13
 110:	02 41       	sbci	r16, 0x12	; 18
 112:	0e 04       	cpc	r0, r14
 114:	89 03       	fmulsu	r16, r17
 116:	41 0e       	add	r4, r17
 118:	05 8a       	std	Z+21, r0	; 0x15
 11a:	04 41       	sbci	r16, 0x14	; 20
 11c:	0e 06       	cpc	r0, r30
 11e:	8b 05       	cpc	r24, r11
 120:	41 0e       	add	r4, r17
 122:	07 8c       	ldd	r0, Z+31	; 0x1f
 124:	06 41       	sbci	r16, 0x16	; 22
 126:	0e 08       	sbc	r0, r14
 128:	8d 07       	cpc	r24, r29
 12a:	41 0e       	add	r4, r17
 12c:	09 8e       	std	Y+25, r0	; 0x19
 12e:	08 41       	sbci	r16, 0x18	; 24
 130:	0e 0a       	sbc	r0, r30
 132:	8f 09       	sbc	r24, r15
 134:	41 0e       	add	r4, r17
 136:	0b 90       	.word	0x900b	; ????
 138:	0a 41       	sbci	r16, 0x1A	; 26
 13a:	0e 0c       	add	r0, r14
 13c:	91 0b       	sbc	r25, r17
 13e:	41 0e       	add	r4, r17
 140:	0d 9c       	mul	r0, r13
 142:	0c 41       	sbci	r16, 0x1C	; 28
 144:	0e 0e       	add	r0, r30
 146:	9d 0d       	add	r25, r13
 148:	0c 00       	.word	0x000c	; ????
 14a:	00 00       	nop
 14c:	e8 00       	.word	0x00e8	; ????
 14e:	00 00       	nop
 150:	36 02       	muls	r19, r22
 152:	00 00       	nop
 154:	36 00       	.word	0x0036	; ????
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
 2ca:	6f 72       	andi	r22, 0x2F	; 47
 2cc:	61 54       	subi	r22, 0x41	; 65
 2ce:	72 61       	ori	r23, 0x12	; 18
 2d0:	63 65       	ori	r22, 0x53	; 83
 2d2:	44 69       	ori	r20, 0x94	; 148
 2d4:	73 61       	ori	r23, 0x13	; 19
 2d6:	62 6c       	ori	r22, 0xC2	; 194
 2d8:	65 00       	.word	0x0065	; ????
 2da:	61 76       	andi	r22, 0x61	; 97
 2dc:	72 6f       	ori	r23, 0xF2	; 242
 2de:	72 61       	ori	r23, 0x12	; 18
 2e0:	54 72       	andi	r21, 0x24	; 36
 2e2:	61 63       	ori	r22, 0x31	; 49
 2e4:	65 45       	sbci	r22, 0x55	; 85
 2e6:	6e 61       	ori	r22, 0x1E	; 30
 2e8:	62 6c       	ori	r22, 0xC2	; 194
 2ea:	65 64       	ori	r22, 0x45	; 69
 2ec:	56 61       	ori	r21, 0x16	; 22
 2ee:	72 69       	ori	r23, 0x92	; 146
 2f0:	61 62       	ori	r22, 0x21	; 33
 2f2:	6c 65       	ori	r22, 0x5C	; 92
 2f4:	00 61       	ori	r16, 0x10	; 16
 2f6:	76 72       	andi	r23, 0x26	; 38
 2f8:	5f 50       	subi	r21, 0x0F	; 15
 2fa:	72 69       	ori	r23, 0x92	; 146
 2fc:	6e 74       	andi	r22, 0x4E	; 78
 2fe:	00 5f       	subi	r16, 0xF0	; 240
 300:	5f 67       	ori	r21, 0x7F	; 127
 302:	6e 75       	andi	r22, 0x5E	; 94
 304:	63 5f       	subi	r22, 0xF3	; 243
 306:	76 61       	ori	r23, 0x16	; 22
 308:	5f 6c       	ori	r21, 0xCF	; 207
 30a:	69 73       	andi	r22, 0x39	; 57
 30c:	74 00       	.word	0x0074	; ????
 30e:	75 6e       	ori	r23, 0xE5	; 229
 310:	73 69       	ori	r23, 0x93	; 147
 312:	67 6e       	ori	r22, 0xE7	; 231
 314:	65 64       	ori	r22, 0x45	; 69
 316:	20 63       	ori	r18, 0x30	; 48
 318:	68 61       	ori	r22, 0x18	; 24
 31a:	72 00       	.word	0x0072	; ????
 31c:	74 65       	ori	r23, 0x54	; 84
 31e:	6d 70       	andi	r22, 0x0D	; 13
 320:	00 61       	ori	r16, 0x10	; 16
 322:	76 72       	andi	r23, 0x26	; 38
 324:	6f 72       	andi	r22, 0x2F	; 47
 326:	61 50       	subi	r22, 0x01	; 1
 328:	72 69       	ori	r23, 0x92	; 146
 32a:	6e 74       	andi	r22, 0x4E	; 78
 32c:	43 68       	ori	r20, 0x83	; 131
 32e:	61 72       	andi	r22, 0x21	; 33
 330:	42 75       	andi	r20, 0x52	; 82
 332:	66 66       	ori	r22, 0x66	; 102
 334:	65 72       	andi	r22, 0x25	; 37
 336:	00 61       	ori	r16, 0x10	; 16
 338:	76 72       	andi	r23, 0x26	; 38
 33a:	6f 72       	andi	r22, 0x2F	; 47
 33c:	61 50       	subi	r22, 0x01	; 1
 33e:	72 69       	ori	r23, 0x92	; 146
 340:	6e 74       	andi	r22, 0x4E	; 78
 342:	49 6e       	ori	r20, 0xE9	; 233
 344:	74 33       	cpi	r23, 0x34	; 52
 346:	32 00       	.word	0x0032	; ????
 348:	6d 61       	ori	r22, 0x1D	; 29
 34a:	69 6e       	ori	r22, 0xE9	; 233
 34c:	00 61       	ori	r16, 0x10	; 16
 34e:	76 72       	andi	r23, 0x26	; 38
 350:	6f 72       	andi	r22, 0x2F	; 47
 352:	61 50       	subi	r22, 0x01	; 1
 354:	72 69       	ori	r23, 0x92	; 146
 356:	6e 74       	andi	r22, 0x4E	; 78
 358:	53 65       	ori	r21, 0x53	; 83
 35a:	74 56       	subi	r23, 0x64	; 100
 35c:	61 72       	andi	r22, 0x21	; 33
 35e:	54 79       	andi	r21, 0x94	; 148
 360:	70 65       	ori	r23, 0x50	; 80
 362:	00 61       	ori	r16, 0x10	; 16
 364:	76 72       	andi	r23, 0x26	; 38
 366:	6f 72       	andi	r22, 0x2F	; 47
 368:	61 50       	subi	r22, 0x01	; 1
 36a:	72 69       	ori	r23, 0x92	; 146
 36c:	6e 74       	andi	r22, 0x4E	; 78
 36e:	53 74       	andi	r21, 0x43	; 67
 370:	72 00       	.word	0x0072	; ????
 372:	66 6f       	ori	r22, 0xF6	; 246
 374:	72 6d       	ori	r23, 0xD2	; 210
 376:	61 74       	andi	r22, 0x41	; 65
 378:	00 61       	ori	r16, 0x10	; 16
 37a:	76 72       	andi	r23, 0x26	; 38
 37c:	6f 72       	andi	r22, 0x2F	; 47
 37e:	61 54       	subi	r22, 0x41	; 65
 380:	72 61       	ori	r23, 0x12	; 18
 382:	63 65       	ori	r22, 0x53	; 83
 384:	45 6e       	ori	r20, 0xE5	; 229
 386:	61 62       	ori	r22, 0x21	; 33
 388:	6c 65       	ori	r22, 0x5C	; 92
 38a:	00 6c       	ori	r16, 0xC0	; 192
 38c:	6f 6e       	ori	r22, 0xEF	; 239
 38e:	67 20       	and	r6, r7
 390:	6c 6f       	ori	r22, 0xFC	; 252
 392:	6e 67       	ori	r22, 0x7E	; 126
 394:	20 75       	andi	r18, 0x50	; 80
 396:	6e 73       	andi	r22, 0x3E	; 62
 398:	69 67       	ori	r22, 0x79	; 121
 39a:	6e 65       	ori	r22, 0x5E	; 94
 39c:	64 20       	and	r6, r4
 39e:	69 6e       	ori	r22, 0xE9	; 233
 3a0:	74 00       	.word	0x0074	; ????
 3a2:	75 69       	ori	r23, 0x95	; 149
 3a4:	6e 74       	andi	r22, 0x4E	; 78
 3a6:	38 5f       	subi	r19, 0xF8	; 248
 3a8:	74 00       	.word	0x0074	; ????
 3aa:	73 69       	ori	r23, 0x93	; 147
 3ac:	7a 65       	ori	r23, 0x5A	; 90
 3ae:	74 79       	andi	r23, 0x94	; 148
 3b0:	70 65       	ori	r23, 0x50	; 80
 3b2:	00 61       	ori	r16, 0x10	; 16
 3b4:	76 72       	andi	r23, 0x26	; 38
 3b6:	6f 72       	andi	r22, 0x2F	; 47
 3b8:	61 57       	subi	r22, 0x71	; 113
 3ba:	72 69       	ori	r23, 0x92	; 146
 3bc:	74 65       	ori	r23, 0x54	; 84
 3be:	43 68       	ori	r20, 0x83	; 131
 3c0:	61 72       	andi	r22, 0x21	; 33
 3c2:	42 75       	andi	r20, 0x52	; 82
 3c4:	66 66       	ori	r22, 0x66	; 102
 3c6:	65 72       	andi	r22, 0x25	; 37
 3c8:	00 6c       	ori	r16, 0xC0	; 192
 3ca:	6f 6e       	ori	r22, 0xEF	; 239
 3cc:	67 20       	and	r6, r7
 3ce:	6c 6f       	ori	r22, 0xFC	; 252
 3d0:	6e 67       	ori	r22, 0x7E	; 126
 3d2:	20 69       	ori	r18, 0x90	; 144
 3d4:	6e 74       	andi	r22, 0x4E	; 78
 3d6:	00 72       	andi	r16, 0x20	; 32
 3d8:	74 63       	ori	r23, 0x34	; 52
 3da:	5f 73       	andi	r21, 0x3F	; 63
 3dc:	74 61       	ori	r23, 0x14	; 20
 3de:	72 74       	andi	r23, 0x42	; 66
 3e0:	42 65       	ori	r20, 0x52	; 82
 3e2:	6e 63       	ori	r22, 0x3E	; 62
 3e4:	68 6d       	ori	r22, 0xD8	; 216
 3e6:	61 72       	andi	r22, 0x21	; 33
 3e8:	6b 4d       	sbci	r22, 0xDB	; 219
 3ea:	65 61       	ori	r22, 0x15	; 21
 3ec:	73 75       	andi	r23, 0x53	; 83
 3ee:	72 65       	ori	r23, 0x52	; 82
 3f0:	6d 65       	ori	r22, 0x5D	; 93
 3f2:	6e 74       	andi	r22, 0x4E	; 78
 3f4:	5f 4e       	sbci	r21, 0xEF	; 239
 3f6:	61 74       	andi	r22, 0x41	; 65
 3f8:	69 76       	andi	r22, 0x69	; 105
 3fa:	65 00       	.word	0x0065	; ????
 3fc:	64 65       	ori	r22, 0x54	; 84
 3fe:	62 75       	andi	r22, 0x52	; 82
 400:	67 62       	ori	r22, 0x27	; 39
 402:	75 66       	ori	r23, 0x65	; 101
 404:	31 00       	.word	0x0031	; ????
 406:	47 4e       	sbci	r20, 0xE7	; 231
 408:	55 20       	and	r5, r5
 40a:	43 39       	cpi	r20, 0x93	; 147
 40c:	39 20       	and	r3, r9
 40e:	35 2e       	mov	r3, r21
 410:	34 2e       	mov	r3, r20
 412:	30 20       	and	r3, r0
 414:	2d 6d       	ori	r18, 0xDD	; 221
 416:	6e 2d       	mov	r22, r14
 418:	66 6c       	ori	r22, 0xC6	; 198
 41a:	61 73       	andi	r22, 0x31	; 49
 41c:	68 3d       	cpi	r22, 0xD8	; 216
 41e:	32 20       	and	r3, r2
 420:	2d 6d       	ori	r18, 0xDD	; 221
 422:	6e 6f       	ori	r22, 0xFE	; 254
 424:	2d 73       	andi	r18, 0x3D	; 61
 426:	6b 69       	ori	r22, 0x9B	; 155
 428:	70 2d       	mov	r23, r0
 42a:	62 75       	andi	r22, 0x52	; 82
 42c:	67 20       	and	r6, r7
 42e:	2d 6d       	ori	r18, 0xDD	; 221
 430:	6d 63       	ori	r22, 0x3D	; 61
 432:	75 3d       	cpi	r23, 0xD5	; 213
 434:	61 76       	andi	r22, 0x61	; 97
 436:	72 35       	cpi	r23, 0x52	; 82
 438:	31 20       	and	r3, r1
 43a:	2d 67       	ori	r18, 0x7D	; 125
 43c:	67 64       	ori	r22, 0x47	; 71
 43e:	62 20       	and	r6, r2
 440:	2d 4f       	sbci	r18, 0xFD	; 253
 442:	73 20       	and	r7, r3
 444:	2d 73       	andi	r18, 0x3D	; 61
 446:	74 64       	ori	r23, 0x44	; 68
 448:	3d 67       	ori	r19, 0x7D	; 125
 44a:	6e 75       	andi	r22, 0x5E	; 94
 44c:	39 39       	cpi	r19, 0x99	; 153
 44e:	20 2d       	mov	r18, r0
 450:	66 69       	ori	r22, 0x96	; 150
 452:	6e 6c       	ori	r22, 0xCE	; 206
 454:	69 6e       	ori	r22, 0xE9	; 233
 456:	65 2d       	mov	r22, r5
 458:	6c 69       	ori	r22, 0x9C	; 156
 45a:	6d 69       	ori	r22, 0x9D	; 157
 45c:	74 3d       	cpi	r23, 0xD4	; 212
 45e:	30 20       	and	r3, r0
 460:	2d 66       	ori	r18, 0x6D	; 109
 462:	64 61       	ori	r22, 0x14	; 20
 464:	74 61       	ori	r23, 0x14	; 20
 466:	2d 73       	andi	r18, 0x3D	; 61
 468:	65 63       	ori	r22, 0x35	; 53
 46a:	74 69       	ori	r23, 0x94	; 148
 46c:	6f 6e       	ori	r22, 0xEF	; 239
 46e:	73 20       	and	r7, r3
 470:	2d 66       	ori	r18, 0x6D	; 109
 472:	66 75       	andi	r22, 0x56	; 86
 474:	6e 63       	ori	r22, 0x3E	; 62
 476:	74 69       	ori	r23, 0x94	; 148
 478:	6f 6e       	ori	r22, 0xEF	; 239
 47a:	2d 73       	andi	r18, 0x3D	; 61
 47c:	65 63       	ori	r22, 0x35	; 53
 47e:	74 69       	ori	r23, 0x94	; 148
 480:	6f 6e       	ori	r22, 0xEF	; 239
 482:	73 00       	.word	0x0073	; ????
 484:	75 69       	ori	r23, 0x95	; 149
 486:	6e 74       	andi	r22, 0x4E	; 78
 488:	31 36       	cpi	r19, 0x61	; 97
 48a:	5f 74       	andi	r21, 0x4F	; 79
 48c:	00 2f       	mov	r16, r16
 48e:	68 6f       	ori	r22, 0xF8	; 248
 490:	6d 65       	ori	r22, 0x5D	; 93
 492:	2f 66       	ori	r18, 0x6F	; 111
 494:	61 6e       	ori	r22, 0xE1	; 225
 496:	68 63       	ori	r22, 0x38	; 56
 498:	2f 77       	andi	r18, 0x7F	; 127
 49a:	61 73       	andi	r22, 0x31	; 49
 49c:	6d 2d       	mov	r22, r13
 49e:	61 6f       	ori	r22, 0xF1	; 241
 4a0:	74 2f       	mov	r23, r20
 4a2:	61 70       	andi	r22, 0x01	; 1
 4a4:	70 2f       	mov	r23, r16
 4a6:	62 65       	ori	r22, 0x52	; 82
 4a8:	6e 63       	ori	r22, 0x3E	; 62
 4aa:	68 6d       	ori	r22, 0xD8	; 216
 4ac:	61 72       	andi	r22, 0x21	; 33
 4ae:	6b 2f       	mov	r22, r27
 4b0:	62 65       	ori	r22, 0x52	; 82
 4b2:	6e 63       	ori	r22, 0x3E	; 62
 4b4:	68 6d       	ori	r22, 0xD8	; 216
 4b6:	61 72       	andi	r22, 0x21	; 33
 4b8:	6b 2e       	mov	r6, r27
 4ba:	63 00       	.word	0x0063	; ????
 4bc:	61 76       	andi	r22, 0x61	; 97
 4be:	72 6f       	ori	r23, 0xF2	; 242
 4c0:	72 61       	ori	r23, 0x12	; 18
 4c2:	50 72       	andi	r21, 0x20	; 32
 4c4:	69 6e       	ori	r22, 0xE9	; 233
 4c6:	74 49       	sbci	r23, 0x94	; 148
 4c8:	6e 74       	andi	r22, 0x4E	; 78
 4ca:	31 36       	cpi	r19, 0x61	; 97
 4cc:	00 75       	andi	r16, 0x50	; 80
 4ce:	69 6e       	ori	r22, 0xE9	; 233
 4d0:	74 33       	cpi	r23, 0x34	; 52
 4d2:	32 5f       	subi	r19, 0xF2	; 242
 4d4:	74 00       	.word	0x0074	; ????
 4d6:	61 76       	andi	r22, 0x61	; 97
 4d8:	72 5f       	subi	r23, 0xF2	; 242
 4da:	56 50       	subi	r21, 0x06	; 6
 4dc:	72 69       	ori	r23, 0x92	; 146
 4de:	6e 74       	andi	r22, 0x4E	; 78
 4e0:	00 61       	ori	r16, 0x10	; 16
 4e2:	76 72       	andi	r23, 0x26	; 38
 4e4:	6f 72       	andi	r22, 0x2F	; 47
 4e6:	61 50       	subi	r22, 0x01	; 1
 4e8:	72 69       	ori	r23, 0x92	; 146
 4ea:	6e 74       	andi	r22, 0x4E	; 78
 4ec:	49 6e       	ori	r20, 0xE9	; 233
 4ee:	74 00       	.word	0x0074	; ????
 4f0:	6a 61       	ori	r22, 0x1A	; 26
 4f2:	76 61       	ori	r23, 0x16	; 22
 4f4:	78 5f       	subi	r23, 0xF8	; 248
 4f6:	72 74       	andi	r23, 0x42	; 66
 4f8:	63 62       	ori	r22, 0x23	; 35
 4fa:	65 6e       	ori	r22, 0xE5	; 229
 4fc:	63 68       	ori	r22, 0x83	; 131
 4fe:	5f 52       	subi	r21, 0x2F	; 47
 500:	54 43       	sbci	r21, 0x34	; 52
 502:	42 65       	ori	r20, 0x52	; 82
 504:	6e 63       	ori	r22, 0x3E	; 62
 506:	68 6d       	ori	r22, 0xD8	; 216
 508:	61 72       	andi	r22, 0x21	; 33
 50a:	6b 5f       	subi	r22, 0xFB	; 251
 50c:	76 6f       	ori	r23, 0xF6	; 246
 50e:	69 64       	ori	r22, 0x49	; 73
 510:	5f 74       	andi	r21, 0x4F	; 79
 512:	65 73       	andi	r22, 0x35	; 53
 514:	74 5f       	subi	r23, 0xF4	; 244
 516:	6e 61       	ori	r22, 0x1E	; 30
 518:	74 69       	ori	r23, 0x94	; 148
 51a:	76 65       	ori	r23, 0x56	; 86
 51c:	00 68       	ori	r16, 0x80	; 128
 51e:	69 67       	ori	r22, 0x79	; 121
 520:	68 00       	.word	0x0068	; ????
 522:	6e 75       	andi	r22, 0x5E	; 94
 524:	6d 62       	ori	r22, 0x2D	; 45
 526:	65 72       	andi	r22, 0x25	; 37
 528:	73 00       	.word	0x0073	; ????
 52a:	6c 6f       	ori	r22, 0xFC	; 252
 52c:	6f 70       	andi	r22, 0x0F	; 15
 52e:	00 6e       	ori	r16, 0xE0	; 224
 530:	75 6d       	ori	r23, 0xD5	; 213
 532:	62 65       	ori	r22, 0x52	; 82
 534:	72 5f       	subi	r23, 0xF2	; 242
 536:	6d 69       	ori	r22, 0x9D	; 157
 538:	64 00       	.word	0x0064	; ????
 53a:	4e 55       	subi	r20, 0x5E	; 94
 53c:	4d 4e       	sbci	r20, 0xED	; 237
 53e:	55 4d       	sbci	r21, 0xD5	; 213
 540:	42 45       	sbci	r20, 0x52	; 82
 542:	52 53       	subi	r21, 0x32	; 50
 544:	00 72       	andi	r16, 0x20	; 32
 546:	74 63       	ori	r23, 0x34	; 52
 548:	62 65       	ori	r22, 0x52	; 82
 54a:	6e 63       	ori	r22, 0x3E	; 62
 54c:	68 6d       	ori	r22, 0xD8	; 216
 54e:	61 72       	andi	r22, 0x21	; 33
 550:	6b 5f       	subi	r22, 0xFB	; 251
 552:	6d 65       	ori	r22, 0x5D	; 93
 554:	61 73       	andi	r22, 0x31	; 49
 556:	75 72       	andi	r23, 0x25	; 37
 558:	65 5f       	subi	r22, 0xF5	; 245
 55a:	6e 61       	ori	r22, 0x1E	; 30
 55c:	74 69       	ori	r23, 0x94	; 148
 55e:	76 65       	ori	r23, 0x56	; 86
 560:	5f 70       	andi	r21, 0x0F	; 15
 562:	65 72       	andi	r22, 0x25	; 37
 564:	66 6f       	ori	r22, 0xF6	; 246
 566:	72 6d       	ori	r23, 0xD2	; 210
 568:	61 6e       	ori	r22, 0xE1	; 225
 56a:	63 65       	ori	r22, 0x53	; 83
 56c:	00 2f       	mov	r16, r16
 56e:	68 6f       	ori	r22, 0xF8	; 248
 570:	6d 65       	ori	r22, 0x5D	; 93
 572:	2f 66       	ori	r18, 0x6F	; 111
 574:	61 6e       	ori	r22, 0xE1	; 225
 576:	68 63       	ori	r22, 0x38	; 56
 578:	2f 77       	andi	r18, 0x7F	; 127
 57a:	61 73       	andi	r22, 0x31	; 49
 57c:	6d 2d       	mov	r22, r13
 57e:	61 6f       	ori	r22, 0xF1	; 241
 580:	74 2f       	mov	r23, r20
 582:	61 70       	andi	r22, 0x01	; 1
 584:	70 2f       	mov	r23, r16
 586:	62 65       	ori	r22, 0x52	; 82
 588:	6e 63       	ori	r22, 0x3E	; 62
 58a:	68 6d       	ori	r22, 0xD8	; 216
 58c:	61 72       	andi	r22, 0x21	; 33
 58e:	6b 2f       	mov	r22, r27
 590:	62 69       	ori	r22, 0x92	; 146
 592:	6e 73       	andi	r22, 0x3E	; 62
 594:	72 63       	ori	r23, 0x32	; 50
 596:	68 2e       	mov	r6, r24
 598:	63 00       	.word	0x0063	; ????
 59a:	6d 61       	ori	r22, 0x1D	; 29
 59c:	6c 6c       	ori	r22, 0xCC	; 204
 59e:	6f 63       	ori	r22, 0x3F	; 63
 5a0:	00 74       	andi	r16, 0x40	; 64
 5a2:	6f 46       	sbci	r22, 0x6F	; 111
 5a4:	69 6e       	ori	r22, 0xE9	; 233
 5a6:	64 00       	.word	0x0064	; ????

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
	...
   8:	06 00       	.word	0x0006	; ????
   a:	68 93       	.word	0x9368	; ????
   c:	01 69       	ori	r16, 0x91	; 145
   e:	93 01       	movw	r18, r6
	...
  18:	06 00       	.word	0x0006	; ????
  1a:	6e 93       	st	-X, r22
  1c:	01 6f       	ori	r16, 0xF1	; 241
  1e:	93 01       	movw	r18, r6
	...
  28:	04 00       	.word	0x0004	; ????
  2a:	f3 01       	movw	r30, r6
  2c:	68 9f       	mul	r22, r24
	...
  3e:	02 00       	.word	0x0002	; ????
  40:	30 9f       	mul	r19, r16
	...
  4a:	07 00       	.word	0x0007	; ????
  4c:	8e 00       	.word	0x008e	; ????
  4e:	f3 01       	movw	r30, r6
  50:	68 1c       	adc	r6, r8
  52:	9f 00       	.word	0x009f	; ????
  54:	00 00       	nop
  56:	00 00       	nop
  58:	00 00       	nop
  5a:	00 08       	sbc	r0, r0
  5c:	00 f3       	brcs	.-64     	; 0x1e <__FUSE_REGION_LENGTH__+0x1b>
  5e:	01 68       	ori	r16, 0x81	; 129
  60:	20 8e       	std	Z+24, r2	; 0x18
  62:	00 22       	and	r0, r16
  64:	9f 00       	.word	0x009f	; ????
  66:	00 00       	nop
  68:	00 00       	nop
  6a:	00 00       	nop
  6c:	00 07       	cpc	r16, r16
  6e:	00 8e       	std	Z+24, r0	; 0x18
  70:	00 f3       	brcs	.-64     	; 0x32 <__FUSE_REGION_LENGTH__+0x2f>
  72:	01 68       	ori	r16, 0x81	; 129
  74:	1c 9f       	mul	r17, r28
	...
  7e:	08 00       	.word	0x0008	; ????
  80:	f3 01       	movw	r30, r6
  82:	68 20       	and	r6, r8
  84:	8e 00       	.word	0x008e	; ????
  86:	22 9f       	mul	r18, r18
	...
  98:	01 00       	.word	0x0001	; ????
  9a:	69 00       	.word	0x0069	; ????
	...
  a8:	00 00       	nop
  aa:	00 02       	muls	r16, r16
  ac:	00 3a       	cpi	r16, 0xA0	; 160
  ae:	9f 00       	.word	0x009f	; ????
	...
  bc:	00 00       	nop
  be:	00 02       	muls	r16, r16
  c0:	00 3b       	cpi	r16, 0xB0	; 176
  c2:	9f 00       	.word	0x009f	; ????
	...
  d0:	00 00       	nop
  d2:	00 06       	cpc	r0, r16
  d4:	00 68       	ori	r16, 0x80	; 128
  d6:	93 01       	movw	r18, r6
  d8:	69 93       	st	Y+, r22
  da:	01 00       	.word	0x0001	; ????
  dc:	00 00       	nop
  de:	00 00       	nop
  e0:	00 00       	nop
  e2:	00 06       	cpc	r0, r16
  e4:	00 64       	ori	r16, 0x40	; 64
  e6:	93 01       	movw	r18, r6
  e8:	65 93       	las	Z, r22
  ea:	01 00       	.word	0x0001	; ????
  ec:	00 00       	nop
  ee:	00 00       	nop
  f0:	00 00       	nop
  f2:	00 04       	cpc	r0, r0
  f4:	00 f3       	brcs	.-64     	; 0xb6 <__do_clear_bss+0x4>
  f6:	01 68       	ori	r16, 0x81	; 129
  f8:	9f 00       	.word	0x009f	; ????
	...
 106:	00 00       	nop
 108:	00 06       	cpc	r0, r16
 10a:	00 66       	ori	r16, 0x60	; 96
 10c:	93 01       	movw	r18, r6
 10e:	67 93       	lat	Z, r22
 110:	01 00       	.word	0x0001	; ????
 112:	00 00       	nop
 114:	00 00       	nop
 116:	00 00       	nop
 118:	00 06       	cpc	r0, r16
 11a:	00 62       	ori	r16, 0x20	; 32
 11c:	93 01       	movw	r18, r6
 11e:	63 93       	.word	0x9363	; ????
 120:	01 00       	.word	0x0001	; ????
 122:	00 00       	nop
 124:	00 00       	nop
 126:	00 00       	nop
 128:	00 04       	cpc	r0, r0
 12a:	00 f3       	brcs	.-64     	; 0xec <rtc_startBenchmarkMeasurement_Native+0x1e>
 12c:	01 66       	ori	r16, 0x61	; 97
 12e:	9f 00       	.word	0x009f	; ????
	...
 13c:	00 00       	nop
 13e:	00 03       	mulsu	r16, r16
 140:	00 92 20 02 	sts	0x0220, r0	; 0x800220 <__bss_end+0x110>
	...
 14c:	03 00       	.word	0x0003	; ????
 14e:	92 20       	and	r9, r2
 150:	03 00       	.word	0x0003	; ????
 152:	00 00       	nop
 154:	00 00       	nop
 156:	00 00       	nop
 158:	00 03       	mulsu	r16, r16
 15a:	00 92 20 04 	sts	0x0420, r0	; 0x800420 <__bss_end+0x310>
	...
 166:	02 00       	.word	0x0002	; ????
 168:	8c 04       	cpc	r8, r12
	...
 17a:	06 00       	.word	0x0006	; ????
 17c:	66 93       	lac	Z, r22
 17e:	01 67       	ori	r16, 0x71	; 113
 180:	93 01       	movw	r18, r6
	...
 18a:	03 00       	.word	0x0003	; ????
 18c:	91 03       	fmuls	r17, r17
 18e:	9f 00       	.word	0x009f	; ????
 190:	00 00       	nop
 192:	00 00       	nop
 194:	00 00       	nop
 196:	00 ce       	rjmp	.-1024   	; 0xfffffd98 <__eeprom_end+0xff7efd98>
 198:	00 00       	nop
 19a:	00 da       	rcall	.-3072   	; 0xfffff59c <__eeprom_end+0xff7ef59c>
 19c:	00 00       	nop
 19e:	00 03       	mulsu	r16, r16
 1a0:	00 08       	sbc	r0, r0
 1a2:	62 9f       	mul	r22, r18
	...
 1ac:	d6 00       	.word	0x00d6	; ????
 1ae:	00 00       	nop
 1b0:	da 00       	.word	0x00da	; ????
 1b2:	00 00       	nop
 1b4:	02 00       	.word	0x0002	; ????
 1b6:	3a 9f       	mul	r19, r26
	...
 1c0:	da 00       	.word	0x00da	; ????
 1c2:	00 00       	nop
 1c4:	e0 00       	.word	0x00e0	; ????
 1c6:	00 00       	nop
 1c8:	03 00       	.word	0x0003	; ????
 1ca:	08 65       	ori	r16, 0x58	; 88
 1cc:	9f 00       	.word	0x009f	; ????
 1ce:	00 00       	nop
 1d0:	00 00       	nop
 1d2:	00 00       	nop
 1d4:	00 de       	rcall	.-1024   	; 0xfffffdd6 <__eeprom_end+0xff7efdd6>
 1d6:	00 00       	nop
 1d8:	00 e0       	ldi	r16, 0x00	; 0
 1da:	00 00       	nop
 1dc:	00 02       	muls	r16, r16
 1de:	00 3a       	cpi	r16, 0xA0	; 160
 1e0:	9f 00       	.word	0x009f	; ????
 1e2:	00 00       	nop
 1e4:	00 00       	nop
 1e6:	00 00       	nop
 1e8:	00 e0       	ldi	r16, 0x00	; 0
 1ea:	00 00       	nop
 1ec:	00 e6       	ldi	r16, 0x60	; 96
 1ee:	00 00       	nop
 1f0:	00 03       	mulsu	r16, r16
 1f2:	00 08       	sbc	r0, r0
 1f4:	6e 9f       	mul	r22, r30
	...
 1fe:	e4 00       	.word	0x00e4	; ????
 200:	00 00       	nop
 202:	e6 00       	.word	0x00e6	; ????
 204:	00 00       	nop
 206:	02 00       	.word	0x0002	; ????
 208:	3a 9f       	mul	r19, r26
	...
 212:	e6 00       	.word	0x00e6	; ????
 214:	00 00       	nop
 216:	ec 00       	.word	0x00ec	; ????
 218:	00 00       	nop
 21a:	03 00       	.word	0x0003	; ????
 21c:	08 63       	ori	r16, 0x38	; 56
 21e:	9f 00       	.word	0x009f	; ????
 220:	00 00       	nop
 222:	00 00       	nop
 224:	00 00       	nop
 226:	00 ea       	ldi	r16, 0xA0	; 160
 228:	00 00       	nop
 22a:	00 ec       	ldi	r16, 0xC0	; 192
 22c:	00 00       	nop
 22e:	00 02       	muls	r16, r16
 230:	00 3a       	cpi	r16, 0xA0	; 160
 232:	9f 00       	.word	0x009f	; ????
 234:	00 00       	nop
 236:	00 00       	nop
 238:	00 00       	nop
 23a:	00 ec       	ldi	r16, 0xC0	; 192
 23c:	00 00       	nop
 23e:	00 f2       	brcs	.-128    	; 0x1c0 <rtcbenchmark_measure_native_performance+0x54>
 240:	00 00       	nop
 242:	00 03       	mulsu	r16, r16
 244:	00 08       	sbc	r0, r0
 246:	68 9f       	mul	r22, r24
	...
 250:	f0 00       	.word	0x00f0	; ????
 252:	00 00       	nop
 254:	f2 00       	.word	0x00f2	; ????
 256:	00 00       	nop
 258:	02 00       	.word	0x0002	; ????
 25a:	3a 9f       	mul	r19, r26
	...
 264:	f2 00       	.word	0x00f2	; ????
 266:	00 00       	nop
 268:	f8 00       	.word	0x00f8	; ????
 26a:	00 00       	nop
 26c:	03 00       	.word	0x0003	; ????
 26e:	08 73       	andi	r16, 0x38	; 56
 270:	9f 00       	.word	0x009f	; ????
 272:	00 00       	nop
 274:	00 00       	nop
 276:	00 00       	nop
 278:	00 f6       	brcc	.-128    	; 0x1fa <rtcbenchmark_measure_native_performance+0x8e>
 27a:	00 00       	nop
 27c:	00 f8       	bld	r0, 0
 27e:	00 00       	nop
 280:	00 02       	muls	r16, r16
 282:	00 3a       	cpi	r16, 0xA0	; 160
 284:	9f 00       	.word	0x009f	; ????
 286:	00 00       	nop
 288:	00 00       	nop
 28a:	00 00       	nop
 28c:	00 f8       	bld	r0, 0
 28e:	00 00       	nop
 290:	00 fe       	sbrs	r0, 0
 292:	00 00       	nop
 294:	00 03       	mulsu	r16, r16
 296:	00 08       	sbc	r0, r0
 298:	74 9f       	mul	r23, r20
	...
 2a2:	fc 00       	.word	0x00fc	; ????
 2a4:	00 00       	nop
 2a6:	fe 00       	.word	0x00fe	; ????
 2a8:	00 00       	nop
 2aa:	02 00       	.word	0x0002	; ????
 2ac:	3a 9f       	mul	r19, r26
	...
 2b6:	fe 00       	.word	0x00fe	; ????
 2b8:	00 00       	nop
 2ba:	04 01       	movw	r0, r8
 2bc:	00 00       	nop
 2be:	03 00       	.word	0x0003	; ????
 2c0:	08 61       	ori	r16, 0x18	; 24
 2c2:	9f 00       	.word	0x009f	; ????
 2c4:	00 00       	nop
 2c6:	00 00       	nop
 2c8:	00 00       	nop
 2ca:	00 02       	muls	r16, r16
 2cc:	01 00       	.word	0x0001	; ????
 2ce:	00 04       	cpc	r0, r0
 2d0:	01 00       	.word	0x0001	; ????
 2d2:	00 02       	muls	r16, r16
 2d4:	00 3a       	cpi	r16, 0xA0	; 160
 2d6:	9f 00       	.word	0x009f	; ????
 2d8:	00 00       	nop
 2da:	00 00       	nop
 2dc:	00 00       	nop
 2de:	00 04       	cpc	r0, r0
 2e0:	01 00       	.word	0x0001	; ????
 2e2:	00 0a       	sbc	r0, r16
 2e4:	01 00       	.word	0x0001	; ????
 2e6:	00 03       	mulsu	r16, r16
 2e8:	00 08       	sbc	r0, r0
 2ea:	72 9f       	mul	r23, r18
	...
 2f4:	08 01       	movw	r0, r16
 2f6:	00 00       	nop
 2f8:	0a 01       	movw	r0, r20
 2fa:	00 00       	nop
 2fc:	02 00       	.word	0x0002	; ????
 2fe:	3a 9f       	mul	r19, r26
	...
 308:	0a 01       	movw	r0, r20
 30a:	00 00       	nop
 30c:	0e 01       	movw	r0, r28
 30e:	00 00       	nop
 310:	03 00       	.word	0x0003	; ????
 312:	08 74       	andi	r16, 0x48	; 72
 314:	9f 00       	.word	0x009f	; ????
 316:	00 00       	nop
 318:	00 00       	nop
 31a:	00 00       	nop
 31c:	00 0c       	add	r0, r0
 31e:	01 00       	.word	0x0001	; ????
 320:	00 0e       	add	r0, r16
 322:	01 00       	.word	0x0001	; ????
 324:	00 02       	muls	r16, r16
 326:	00 3a       	cpi	r16, 0xA0	; 160
 328:	9f 00       	.word	0x009f	; ????
 32a:	00 00       	nop
 32c:	00 00       	nop
 32e:	00 00       	nop
 330:	00 0e       	add	r0, r16
 332:	01 00       	.word	0x0001	; ????
 334:	00 12       	cpse	r0, r16
 336:	01 00       	.word	0x0001	; ????
 338:	00 02       	muls	r16, r16
 33a:	00 3b       	cpi	r16, 0xB0	; 176
 33c:	9f 00       	.word	0x009f	; ????
 33e:	00 00       	nop
 340:	00 00       	nop
 342:	00 00       	nop
 344:	00 1e       	adc	r0, r16
 346:	01 00       	.word	0x0001	; ????
 348:	00 2a       	or	r0, r16
 34a:	01 00       	.word	0x0001	; ????
 34c:	00 03       	mulsu	r16, r16
 34e:	00 08       	sbc	r0, r0
 350:	62 9f       	mul	r22, r18
	...
 35a:	26 01       	movw	r4, r12
 35c:	00 00       	nop
 35e:	2a 01       	movw	r4, r20
 360:	00 00       	nop
 362:	02 00       	.word	0x0002	; ????
 364:	3a 9f       	mul	r19, r26
	...
 36e:	2a 01       	movw	r4, r20
 370:	00 00       	nop
 372:	30 01       	movw	r6, r0
 374:	00 00       	nop
 376:	03 00       	.word	0x0003	; ????
 378:	08 65       	ori	r16, 0x58	; 88
 37a:	9f 00       	.word	0x009f	; ????
 37c:	00 00       	nop
 37e:	00 00       	nop
 380:	00 00       	nop
 382:	00 2e       	mov	r0, r16
 384:	01 00       	.word	0x0001	; ????
 386:	00 30       	cpi	r16, 0x00	; 0
 388:	01 00       	.word	0x0001	; ????
 38a:	00 02       	muls	r16, r16
 38c:	00 3a       	cpi	r16, 0xA0	; 160
 38e:	9f 00       	.word	0x009f	; ????
 390:	00 00       	nop
 392:	00 00       	nop
 394:	00 00       	nop
 396:	00 30       	cpi	r16, 0x00	; 0
 398:	01 00       	.word	0x0001	; ????
 39a:	00 36       	cpi	r16, 0x60	; 96
 39c:	01 00       	.word	0x0001	; ????
 39e:	00 03       	mulsu	r16, r16
 3a0:	00 08       	sbc	r0, r0
 3a2:	6e 9f       	mul	r22, r30
	...
 3ac:	34 01       	movw	r6, r8
 3ae:	00 00       	nop
 3b0:	36 01       	movw	r6, r12
 3b2:	00 00       	nop
 3b4:	02 00       	.word	0x0002	; ????
 3b6:	3a 9f       	mul	r19, r26
	...
 3c0:	36 01       	movw	r6, r12
 3c2:	00 00       	nop
 3c4:	3c 01       	movw	r6, r24
 3c6:	00 00       	nop
 3c8:	03 00       	.word	0x0003	; ????
 3ca:	08 63       	ori	r16, 0x38	; 56
 3cc:	9f 00       	.word	0x009f	; ????
 3ce:	00 00       	nop
 3d0:	00 00       	nop
 3d2:	00 00       	nop
 3d4:	00 3a       	cpi	r16, 0xA0	; 160
 3d6:	01 00       	.word	0x0001	; ????
 3d8:	00 3c       	cpi	r16, 0xC0	; 192
 3da:	01 00       	.word	0x0001	; ????
 3dc:	00 02       	muls	r16, r16
 3de:	00 3a       	cpi	r16, 0xA0	; 160
 3e0:	9f 00       	.word	0x009f	; ????
 3e2:	00 00       	nop
 3e4:	00 00       	nop
 3e6:	00 00       	nop
 3e8:	00 3c       	cpi	r16, 0xC0	; 192
 3ea:	01 00       	.word	0x0001	; ????
 3ec:	00 42       	sbci	r16, 0x20	; 32
 3ee:	01 00       	.word	0x0001	; ????
 3f0:	00 03       	mulsu	r16, r16
 3f2:	00 08       	sbc	r0, r0
 3f4:	68 9f       	mul	r22, r24
	...
 3fe:	40 01       	movw	r8, r0
 400:	00 00       	nop
 402:	42 01       	movw	r8, r4
 404:	00 00       	nop
 406:	02 00       	.word	0x0002	; ????
 408:	3a 9f       	mul	r19, r26
	...
 412:	42 01       	movw	r8, r4
 414:	00 00       	nop
 416:	48 01       	movw	r8, r16
 418:	00 00       	nop
 41a:	03 00       	.word	0x0003	; ????
 41c:	08 73       	andi	r16, 0x38	; 56
 41e:	9f 00       	.word	0x009f	; ????
 420:	00 00       	nop
 422:	00 00       	nop
 424:	00 00       	nop
 426:	00 46       	sbci	r16, 0x60	; 96
 428:	01 00       	.word	0x0001	; ????
 42a:	00 48       	sbci	r16, 0x80	; 128
 42c:	01 00       	.word	0x0001	; ????
 42e:	00 02       	muls	r16, r16
 430:	00 3a       	cpi	r16, 0xA0	; 160
 432:	9f 00       	.word	0x009f	; ????
 434:	00 00       	nop
 436:	00 00       	nop
 438:	00 00       	nop
 43a:	00 48       	sbci	r16, 0x80	; 128
 43c:	01 00       	.word	0x0001	; ????
 43e:	00 4e       	sbci	r16, 0xE0	; 224
 440:	01 00       	.word	0x0001	; ????
 442:	00 03       	mulsu	r16, r16
 444:	00 08       	sbc	r0, r0
 446:	74 9f       	mul	r23, r20
	...
 450:	4c 01       	movw	r8, r24
 452:	00 00       	nop
 454:	4e 01       	movw	r8, r28
 456:	00 00       	nop
 458:	02 00       	.word	0x0002	; ????
 45a:	3a 9f       	mul	r19, r26
	...
 464:	4e 01       	movw	r8, r28
 466:	00 00       	nop
 468:	54 01       	movw	r10, r8
 46a:	00 00       	nop
 46c:	03 00       	.word	0x0003	; ????
 46e:	08 6f       	ori	r16, 0xF8	; 248
 470:	9f 00       	.word	0x009f	; ????
 472:	00 00       	nop
 474:	00 00       	nop
 476:	00 00       	nop
 478:	00 52       	subi	r16, 0x20	; 32
 47a:	01 00       	.word	0x0001	; ????
 47c:	00 54       	subi	r16, 0x40	; 64
 47e:	01 00       	.word	0x0001	; ????
 480:	00 02       	muls	r16, r16
 482:	00 3a       	cpi	r16, 0xA0	; 160
 484:	9f 00       	.word	0x009f	; ????
 486:	00 00       	nop
 488:	00 00       	nop
 48a:	00 00       	nop
 48c:	00 54       	subi	r16, 0x40	; 64
 48e:	01 00       	.word	0x0001	; ????
 490:	00 5a       	subi	r16, 0xA0	; 160
 492:	01 00       	.word	0x0001	; ????
 494:	00 03       	mulsu	r16, r16
 496:	00 08       	sbc	r0, r0
 498:	70 9f       	mul	r23, r16
	...
 4a2:	58 01       	movw	r10, r16
 4a4:	00 00       	nop
 4a6:	5a 01       	movw	r10, r20
 4a8:	00 00       	nop
 4aa:	02 00       	.word	0x0002	; ????
 4ac:	3a 9f       	mul	r19, r26
	...
 4b6:	5a 01       	movw	r10, r20
 4b8:	00 00       	nop
 4ba:	5e 01       	movw	r10, r28
 4bc:	00 00       	nop
 4be:	02 00       	.word	0x0002	; ????
 4c0:	3b 9f       	mul	r19, r27
	...
 4d2:	03 00       	.word	0x0003	; ????
 4d4:	92 20       	and	r9, r2
 4d6:	02 00       	.word	0x0002	; ????
 4d8:	00 00       	nop
 4da:	00 00       	nop
 4dc:	00 00       	nop
 4de:	00 03       	mulsu	r16, r16
 4e0:	00 92 20 03 	sts	0x0320, r0	; 0x800320 <__bss_end+0x210>
	...
 4ec:	03 00       	.word	0x0003	; ????
 4ee:	92 20       	and	r9, r2
 4f0:	04 00       	.word	0x0004	; ????
 4f2:	00 00       	nop
 4f4:	00 00       	nop
 4f6:	00 00       	nop
 4f8:	00 03       	mulsu	r16, r16
 4fa:	00 92 20 05 	sts	0x0520, r0	; 0x800520 <__bss_end+0x410>
	...
 506:	03 00       	.word	0x0003	; ????
 508:	92 20       	and	r9, r2
 50a:	06 00       	.word	0x0006	; ????
 50c:	00 00       	nop
 50e:	00 00       	nop
 510:	00 00       	nop
 512:	00 03       	mulsu	r16, r16
 514:	00 92 20 07 	sts	0x0720, r0	; 0x800720 <__bss_end+0x610>
	...
 520:	03 00       	.word	0x0003	; ????
 522:	92 20       	and	r9, r2
 524:	08 00       	.word	0x0008	; ????
 526:	00 00       	nop
 528:	00 00       	nop
 52a:	00 00       	nop
 52c:	00 03       	mulsu	r16, r16
 52e:	00 92 20 02 	sts	0x0220, r0	; 0x800220 <__bss_end+0x110>
	...
 542:	0c 00       	.word	0x000c	; ????
 544:	66 93       	lac	Z, r22
 546:	01 67       	ori	r16, 0x71	; 113
 548:	93 01       	movw	r18, r6
 54a:	68 93       	.word	0x9368	; ????
 54c:	01 69       	ori	r16, 0x91	; 145
 54e:	93 01       	movw	r18, r6
	...
 558:	04 00       	.word	0x0004	; ????
 55a:	f3 01       	movw	r30, r6
 55c:	66 9f       	mul	r22, r22
	...
 56e:	03 00       	.word	0x0003	; ????
 570:	92 20       	and	r9, r2
 572:	02 00       	.word	0x0002	; ????
 574:	00 00       	nop
 576:	00 00       	nop
 578:	00 00       	nop
 57a:	00 03       	mulsu	r16, r16
 57c:	00 92 20 03 	sts	0x0320, r0	; 0x800320 <__bss_end+0x210>
	...
 588:	03 00       	.word	0x0003	; ????
 58a:	92 20       	and	r9, r2
 58c:	04 00       	.word	0x0004	; ????
	...
 59a:	00 00       	nop
 59c:	00 0c       	add	r0, r0
 59e:	00 66       	ori	r16, 0x60	; 96
 5a0:	93 01       	movw	r18, r6
 5a2:	67 93       	lat	Z, r22
 5a4:	01 68       	ori	r16, 0x81	; 129
 5a6:	93 01       	movw	r18, r6
 5a8:	69 93       	st	Y+, r22
 5aa:	01 00       	.word	0x0001	; ????
	...
 5b8:	00 00       	nop
 5ba:	00 02       	muls	r16, r16
 5bc:	00 39       	cpi	r16, 0x90	; 144
 5be:	9f 00       	.word	0x009f	; ????
	...
 5cc:	00 00       	nop
 5ce:	00 06       	cpc	r0, r16
 5d0:	00 68       	ori	r16, 0x80	; 128
 5d2:	93 01       	movw	r18, r6
 5d4:	69 93       	st	Y+, r22
 5d6:	01 00       	.word	0x0001	; ????
 5d8:	00 00       	nop
 5da:	00 00       	nop
 5dc:	00 00       	nop
 5de:	00 04       	cpc	r0, r0
 5e0:	00 f3       	brcs	.-64     	; 0x5a2 <__data_load_end+0xea>
 5e2:	01 68       	ori	r16, 0x81	; 129
 5e4:	9f 00       	.word	0x009f	; ????
	...
 5f2:	00 00       	nop
 5f4:	00 06       	cpc	r0, r16
 5f6:	00 68       	ori	r16, 0x80	; 128
 5f8:	93 01       	movw	r18, r6
 5fa:	69 93       	st	Y+, r22
 5fc:	01 00       	.word	0x0001	; ????
	...
 60a:	00 00       	nop
 60c:	00 02       	muls	r16, r16
 60e:	00 38       	cpi	r16, 0x80	; 128
 610:	9f 00       	.word	0x009f	; ????
	...
 61e:	00 00       	nop
 620:	00 06       	cpc	r0, r16
 622:	00 68       	ori	r16, 0x80	; 128
 624:	93 01       	movw	r18, r6
 626:	69 93       	st	Y+, r22
 628:	01 00       	.word	0x0001	; ????
 62a:	00 00       	nop
 62c:	00 00       	nop
 62e:	00 00       	nop
 630:	00 04       	cpc	r0, r0
 632:	00 f3       	brcs	.-64     	; 0x5f4 <__data_load_end+0x13c>
 634:	01 68       	ori	r16, 0x81	; 129
 636:	9f 00       	.word	0x009f	; ????
	...
 644:	00 00       	nop
 646:	00 06       	cpc	r0, r16
 648:	00 68       	ori	r16, 0x80	; 128
 64a:	93 01       	movw	r18, r6
 64c:	69 93       	st	Y+, r22
 64e:	01 00       	.word	0x0001	; ????
	...
 65c:	00 00       	nop
 65e:	00 02       	muls	r16, r16
 660:	00 36       	cpi	r16, 0x60	; 96
 662:	9f 00       	.word	0x009f	; ????
 664:	00 00       	nop
 666:	00 00       	nop
 668:	00 00       	nop
 66a:	00 6c       	ori	r16, 0xC0	; 192
 66c:	01 00       	.word	0x0001	; ????
 66e:	00 6e       	ori	r16, 0xE0	; 224
 670:	01 00       	.word	0x0001	; ????
 672:	00 03       	mulsu	r16, r16
 674:	00 92 20 02 	sts	0x0220, r0	; 0x800220 <__bss_end+0x110>
 678:	6e 01       	movw	r12, r28
 67a:	00 00       	nop
 67c:	70 01       	movw	r14, r0
 67e:	00 00       	nop
 680:	03 00       	.word	0x0003	; ????
 682:	92 20       	and	r9, r2
 684:	03 70       	andi	r16, 0x03	; 3
 686:	01 00       	.word	0x0001	; ????
 688:	00 72       	andi	r16, 0x20	; 32
 68a:	01 00       	.word	0x0001	; ????
 68c:	00 03       	mulsu	r16, r16
 68e:	00 92 20 04 	sts	0x0420, r0	; 0x800420 <__bss_end+0x310>
 692:	72 01       	movw	r14, r4
 694:	00 00       	nop
 696:	74 01       	movw	r14, r8
 698:	00 00       	nop
 69a:	03 00       	.word	0x0003	; ????
 69c:	92 20       	and	r9, r2
 69e:	05 74       	andi	r16, 0x45	; 69
 6a0:	01 00       	.word	0x0001	; ????
 6a2:	00 76       	andi	r16, 0x60	; 96
 6a4:	01 00       	.word	0x0001	; ????
 6a6:	00 03       	mulsu	r16, r16
 6a8:	00 92 20 06 	sts	0x0620, r0	; 0x800620 <__bss_end+0x510>
 6ac:	76 01       	movw	r14, r12
 6ae:	00 00       	nop
 6b0:	78 01       	movw	r14, r16
 6b2:	00 00       	nop
 6b4:	03 00       	.word	0x0003	; ????
 6b6:	92 20       	and	r9, r2
 6b8:	07 78       	andi	r16, 0x87	; 135
 6ba:	01 00       	.word	0x0001	; ????
 6bc:	00 7a       	andi	r16, 0xA0	; 160
 6be:	01 00       	.word	0x0001	; ????
 6c0:	00 03       	mulsu	r16, r16
 6c2:	00 92 20 08 	sts	0x0820, r0	; 0x800820 <__bss_end+0x710>
 6c6:	7a 01       	movw	r14, r20
 6c8:	00 00       	nop
 6ca:	7c 01       	movw	r14, r24
 6cc:	00 00       	nop
 6ce:	03 00       	.word	0x0003	; ????
 6d0:	92 20       	and	r9, r2
 6d2:	09 7c       	andi	r16, 0xC9	; 201
 6d4:	01 00       	.word	0x0001	; ????
 6d6:	00 7e       	andi	r16, 0xE0	; 224
 6d8:	01 00       	.word	0x0001	; ????
 6da:	00 03       	mulsu	r16, r16
 6dc:	00 92 20 0a 	sts	0x0A20, r0	; 0x800a20 <__bss_end+0x910>
 6e0:	7e 01       	movw	r14, r28
 6e2:	00 00       	nop
 6e4:	80 01       	movw	r16, r0
 6e6:	00 00       	nop
 6e8:	03 00       	.word	0x0003	; ????
 6ea:	92 20       	and	r9, r2
 6ec:	0b 80       	ldd	r0, Y+3	; 0x03
 6ee:	01 00       	.word	0x0001	; ????
 6f0:	00 82       	st	Z, r0
 6f2:	01 00       	.word	0x0001	; ????
 6f4:	00 03       	mulsu	r16, r16
 6f6:	00 92 20 0c 	sts	0x0C20, r0	; 0x800c20 <__bss_end+0xb10>
 6fa:	82 01       	movw	r16, r4
 6fc:	00 00       	nop
 6fe:	84 01       	movw	r16, r8
 700:	00 00       	nop
 702:	03 00       	.word	0x0003	; ????
 704:	92 20       	and	r9, r2
 706:	0d 84       	ldd	r0, Y+13	; 0x0d
 708:	01 00       	.word	0x0001	; ????
 70a:	00 36       	cpi	r16, 0x60	; 96
 70c:	02 00       	.word	0x0002	; ????
 70e:	00 03       	mulsu	r16, r16
 710:	00 92 20 0e 	sts	0x0E20, r0	; 0x800e20 <__bss_end+0xd10>
	...
 71c:	6c 01       	movw	r12, r24
 71e:	00 00       	nop
 720:	8b 01       	movw	r16, r22
 722:	00 00       	nop
 724:	06 00       	.word	0x0006	; ????
 726:	68 93       	.word	0x9368	; ????
 728:	01 69       	ori	r16, 0x91	; 145
 72a:	93 01       	movw	r18, r6
 72c:	8b 01       	movw	r16, r22
 72e:	00 00       	nop
 730:	ae 01       	movw	r20, r28
 732:	00 00       	nop
 734:	06 00       	.word	0x0006	; ????
 736:	6c 93       	st	X, r22
 738:	01 6d       	ori	r16, 0xD1	; 209
 73a:	93 01       	movw	r18, r6
 73c:	ae 01       	movw	r20, r28
 73e:	00 00       	nop
 740:	fb 01       	movw	r30, r22
 742:	00 00       	nop
 744:	03 00       	.word	0x0003	; ????
 746:	8a 01       	movw	r16, r20
 748:	9f fb       	.word	0xfb9f	; ????
 74a:	01 00       	.word	0x0001	; ????
 74c:	00 36       	cpi	r16, 0x60	; 96
 74e:	02 00       	.word	0x0002	; ????
 750:	00 04       	cpc	r0, r0
 752:	00 f3       	brcs	.-64     	; 0x714 <__data_load_end+0x25c>
 754:	01 68       	ori	r16, 0x81	; 129
 756:	9f 00       	.word	0x009f	; ????
 758:	00 00       	nop
 75a:	00 00       	nop
 75c:	00 00       	nop
 75e:	00 6c       	ori	r16, 0xC0	; 192
 760:	01 00       	.word	0x0001	; ????
 762:	00 8b       	std	Z+16, r16	; 0x10
 764:	01 00       	.word	0x0001	; ????
 766:	00 06       	cpc	r0, r16
 768:	00 66       	ori	r16, 0x60	; 96
 76a:	93 01       	movw	r18, r6
 76c:	67 93       	lat	Z, r22
 76e:	01 8b       	std	Z+17, r16	; 0x11
 770:	01 00       	.word	0x0001	; ????
 772:	00 14       	cp	r0, r0
 774:	02 00       	.word	0x0002	; ????
 776:	00 06       	cpc	r0, r16
 778:	00 60       	ori	r16, 0x00	; 0
 77a:	93 01       	movw	r18, r6
 77c:	61 93       	st	Z+, r22
 77e:	01 14       	cp	r0, r1
 780:	02 00       	.word	0x0002	; ????
 782:	00 26       	eor	r0, r16
 784:	02 00       	.word	0x0002	; ????
 786:	00 06       	cpc	r0, r16
 788:	00 6e       	ori	r16, 0xE0	; 224
 78a:	93 01       	movw	r18, r6
 78c:	6f 93       	push	r22
 78e:	01 26       	eor	r0, r17
 790:	02 00       	.word	0x0002	; ????
 792:	00 36       	cpi	r16, 0x60	; 96
 794:	02 00       	.word	0x0002	; ????
 796:	00 06       	cpc	r0, r16
 798:	00 60       	ori	r16, 0x00	; 0
 79a:	93 01       	movw	r18, r6
 79c:	61 93       	st	Z+, r22
 79e:	01 00       	.word	0x0001	; ????
 7a0:	00 00       	nop
 7a2:	00 00       	nop
 7a4:	00 00       	nop
 7a6:	00 a6       	std	Z+40, r0	; 0x28
 7a8:	01 00       	.word	0x0001	; ????
 7aa:	00 1c       	adc	r0, r0
 7ac:	02 00       	.word	0x0002	; ????
 7ae:	00 0c       	add	r0, r0
 7b0:	00 5c       	subi	r16, 0xC0	; 192
 7b2:	93 01       	movw	r18, r6
 7b4:	5d 93       	st	X+, r21
 7b6:	01 5e       	subi	r16, 0xE1	; 225
 7b8:	93 01       	movw	r18, r6
 7ba:	5f 93       	push	r21
 7bc:	01 26       	eor	r0, r17
 7be:	02 00       	.word	0x0002	; ????
 7c0:	00 36       	cpi	r16, 0x60	; 96
 7c2:	02 00       	.word	0x0002	; ????
 7c4:	00 0c       	add	r0, r0
 7c6:	00 5c       	subi	r16, 0xC0	; 192
 7c8:	93 01       	movw	r18, r6
 7ca:	5d 93       	st	X+, r21
 7cc:	01 5e       	subi	r16, 0xE1	; 225
 7ce:	93 01       	movw	r18, r6
 7d0:	5f 93       	push	r21
 7d2:	01 00       	.word	0x0001	; ????
 7d4:	00 00       	nop
 7d6:	00 00       	nop
 7d8:	00 00       	nop
 7da:	00 a6       	std	Z+40, r0	; 0x28
 7dc:	01 00       	.word	0x0001	; ????
 7de:	00 ae       	std	Z+56, r0	; 0x38
 7e0:	01 00       	.word	0x0001	; ????
 7e2:	00 02       	muls	r16, r16
 7e4:	00 30       	cpi	r16, 0x00	; 0
 7e6:	9f c0       	rjmp	.+318    	; 0x926 <__data_load_end+0x46e>
 7e8:	01 00       	.word	0x0001	; ????
 7ea:	00 10       	cpse	r0, r0
 7ec:	02 00       	.word	0x0002	; ????
 7ee:	00 06       	cpc	r0, r16
 7f0:	00 6c       	ori	r16, 0xC0	; 192
 7f2:	93 01       	movw	r18, r6
 7f4:	6d 93       	st	X+, r22
 7f6:	01 10       	cpse	r0, r1
 7f8:	02 00       	.word	0x0002	; ????
 7fa:	00 26       	eor	r0, r16
 7fc:	02 00       	.word	0x0002	; ????
 7fe:	00 06       	cpc	r0, r16
 800:	00 68       	ori	r16, 0x80	; 128
 802:	93 01       	movw	r18, r6
 804:	69 93       	st	Y+, r22
 806:	01 26       	eor	r0, r17
 808:	02 00       	.word	0x0002	; ????
 80a:	00 36       	cpi	r16, 0x60	; 96
 80c:	02 00       	.word	0x0002	; ????
 80e:	00 06       	cpc	r0, r16
 810:	00 6c       	ori	r16, 0xC0	; 192
 812:	93 01       	movw	r18, r6
 814:	6d 93       	st	X+, r22
 816:	01 00       	.word	0x0001	; ????
 818:	00 00       	nop
 81a:	00 00       	nop
 81c:	00 00       	nop
 81e:	00 a6       	std	Z+40, r0	; 0x28
 820:	01 00       	.word	0x0001	; ????
 822:	00 ae       	std	Z+56, r0	; 0x38
 824:	01 00       	.word	0x0001	; ????
 826:	00 02       	muls	r16, r16
 828:	00 30       	cpi	r16, 0x00	; 0
 82a:	9f ae       	std	Y+63, r9	; 0x3f
 82c:	01 00       	.word	0x0001	; ????
 82e:	00 f2       	brcs	.-128    	; 0x7b0 <__data_load_end+0x2f8>
 830:	01 00       	.word	0x0001	; ????
 832:	00 07       	cpc	r16, r16
 834:	00 0a       	sbc	r0, r16
 836:	e8 03       	fmulsu	r22, r16
 838:	82 00       	.word	0x0082	; ????
 83a:	1c 9f       	mul	r17, r28
 83c:	f2 01       	movw	r30, r4
 83e:	00 00       	nop
 840:	f6 01       	movw	r30, r12
 842:	00 00       	nop
 844:	07 00       	.word	0x0007	; ????
 846:	0a e9       	ldi	r16, 0x9A	; 154
 848:	03 82       	std	Z+3, r0	; 0x03
 84a:	00 1c       	adc	r0, r0
 84c:	9f f6       	brid	.-90     	; 0x7f4 <__data_load_end+0x33c>
 84e:	01 00       	.word	0x0001	; ????
 850:	00 fb       	bst	r16, 0
 852:	01 00       	.word	0x0001	; ????
 854:	00 07       	cpc	r16, r16
 856:	00 0a       	sbc	r0, r16
 858:	e8 03       	fmulsu	r22, r16
 85a:	82 00       	.word	0x0082	; ????
 85c:	1c 9f       	mul	r17, r28
 85e:	26 02       	muls	r18, r22
 860:	00 00       	nop
 862:	36 02       	muls	r19, r22
 864:	00 00       	nop
 866:	07 00       	.word	0x0007	; ????
 868:	0a e8       	ldi	r16, 0x8A	; 138
 86a:	03 82       	std	Z+3, r0	; 0x03
 86c:	00 1c       	adc	r0, r0
 86e:	9f 00       	.word	0x009f	; ????
 870:	00 00       	nop
 872:	00 00       	nop
 874:	00 00       	nop
 876:	00 ae       	std	Z+56, r0	; 0x38
 878:	01 00       	.word	0x0001	; ????
 87a:	00 b4       	in	r0, 0x20	; 32
 87c:	01 00       	.word	0x0001	; ????
 87e:	00 02       	muls	r16, r16
 880:	00 30       	cpi	r16, 0x00	; 0
 882:	9f b4       	in	r9, 0x2f	; 47
 884:	01 00       	.word	0x0001	; ????
 886:	00 e2       	ldi	r16, 0x20	; 32
 888:	01 00       	.word	0x0001	; ????
 88a:	00 06       	cpc	r0, r16
 88c:	00 64       	ori	r16, 0x40	; 64
 88e:	93 01       	movw	r18, r6
 890:	65 93       	las	Z, r22
 892:	01 e6       	ldi	r16, 0x61	; 97
 894:	01 00       	.word	0x0001	; ????
 896:	00 fb       	bst	r16, 0
 898:	01 00       	.word	0x0001	; ????
 89a:	00 06       	cpc	r0, r16
 89c:	00 64       	ori	r16, 0x40	; 64
 89e:	93 01       	movw	r18, r6
 8a0:	65 93       	las	Z, r22
 8a2:	01 26       	eor	r0, r17
 8a4:	02 00       	.word	0x0002	; ????
 8a6:	00 36       	cpi	r16, 0x60	; 96
 8a8:	02 00       	.word	0x0002	; ????
 8aa:	00 06       	cpc	r0, r16
 8ac:	00 64       	ori	r16, 0x40	; 64
 8ae:	93 01       	movw	r18, r6
 8b0:	65 93       	las	Z, r22
 8b2:	01 00       	.word	0x0001	; ????
 8b4:	00 00       	nop
 8b6:	00 00       	nop
 8b8:	00 00       	nop
 8ba:	00 b0       	in	r0, 0x00	; 0
 8bc:	01 00       	.word	0x0001	; ????
 8be:	00 fb       	bst	r16, 0
 8c0:	01 00       	.word	0x0001	; ????
 8c2:	00 06       	cpc	r0, r16
 8c4:	00 66       	ori	r16, 0x60	; 96
 8c6:	93 01       	movw	r18, r6
 8c8:	67 93       	lat	Z, r22
 8ca:	01 26       	eor	r0, r17
 8cc:	02 00       	.word	0x0002	; ????
 8ce:	00 28       	or	r0, r0
 8d0:	02 00       	.word	0x0002	; ????
 8d2:	00 06       	cpc	r0, r16
 8d4:	00 66       	ori	r16, 0x60	; 96
 8d6:	93 01       	movw	r18, r6
 8d8:	67 93       	lat	Z, r22
 8da:	01 2c       	mov	r0, r1
 8dc:	02 00       	.word	0x0002	; ????
 8de:	00 36       	cpi	r16, 0x60	; 96
 8e0:	02 00       	.word	0x0002	; ????
 8e2:	00 06       	cpc	r0, r16
 8e4:	00 66       	ori	r16, 0x60	; 96
 8e6:	93 01       	movw	r18, r6
 8e8:	67 93       	lat	Z, r22
 8ea:	01 00       	.word	0x0001	; ????
 8ec:	00 00       	nop
 8ee:	00 00       	nop
 8f0:	00 00       	nop
 8f2:	00 d6       	rcall	.+3072   	; 0x14f4 <__stack+0x3f5>
 8f4:	01 00       	.word	0x0001	; ????
 8f6:	00 24       	eor	r0, r0
 8f8:	02 00       	.word	0x0002	; ????
 8fa:	00 0c       	add	r0, r0
 8fc:	00 58       	subi	r16, 0x80	; 128
 8fe:	93 01       	movw	r18, r6
 900:	59 93       	st	Y+, r21
 902:	01 5a       	subi	r16, 0xA1	; 161
 904:	93 01       	movw	r18, r6
 906:	5b 93       	.word	0x935b	; ????
 908:	01 26       	eor	r0, r17
 90a:	02 00       	.word	0x0002	; ????
 90c:	00 36       	cpi	r16, 0x60	; 96
 90e:	02 00       	.word	0x0002	; ????
 910:	00 0c       	add	r0, r0
 912:	00 58       	subi	r16, 0x80	; 128
 914:	93 01       	movw	r18, r6
 916:	59 93       	st	Y+, r21
 918:	01 5a       	subi	r16, 0xA1	; 161
 91a:	93 01       	movw	r18, r6
 91c:	5b 93       	.word	0x935b	; ????
 91e:	01 00       	.word	0x0001	; ????
 920:	00 00       	nop
 922:	00 00       	nop
 924:	00 00       	nop
 926:	00 3e       	cpi	r16, 0xE0	; 224
 928:	02 00       	.word	0x0002	; ????
 92a:	00 68       	ori	r16, 0x80	; 128
 92c:	02 00       	.word	0x0002	; ????
 92e:	00 06       	cpc	r0, r16
 930:	00 68       	ori	r16, 0x80	; 128
 932:	93 01       	movw	r18, r6
 934:	69 93       	st	Y+, r22
 936:	01 00       	.word	0x0001	; ????
 938:	00 00       	nop
 93a:	00 00       	nop
 93c:	00 00       	nop
 93e:	00 3e       	cpi	r16, 0xE0	; 224
 940:	02 00       	.word	0x0002	; ????
 942:	00 48       	sbci	r16, 0x80	; 128
 944:	02 00       	.word	0x0002	; ????
 946:	00 02       	muls	r16, r16
 948:	00 30       	cpi	r16, 0x00	; 0
 94a:	9f 48       	sbci	r25, 0x8F	; 143
 94c:	02 00       	.word	0x0002	; ????
 94e:	00 50       	subi	r16, 0x00	; 0
 950:	02 00       	.word	0x0002	; ????
 952:	00 03       	mulsu	r16, r16
 954:	00 84       	ldd	r0, Z+8	; 0x08
 956:	1e 9f       	mul	r17, r30
 958:	50 02       	muls	r21, r16
 95a:	00 00       	nop
 95c:	58 02       	muls	r21, r24
 95e:	00 00       	nop
 960:	03 00       	.word	0x0003	; ????
 962:	84 1f       	adc	r24, r20
 964:	9f 58       	subi	r25, 0x8F	; 143
 966:	02 00       	.word	0x0002	; ????
 968:	00 6b       	ori	r16, 0xB0	; 176
 96a:	02 00       	.word	0x0002	; ????
 96c:	00 07       	cpc	r16, r16
 96e:	00 8e       	std	Z+24, r0	; 0x18
 970:	7c 94 01 23 	jmp	0x1c4602	; 0x1c4602 <__TEXT_REGION_LENGTH__+0x1a4602>
 974:	1f 9f       	mul	r17, r31
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
  56:	00 00       	nop
  58:	01 00       	.word	0x0001	; ????
  5a:	00 00       	nop
  5c:	01 00       	.word	0x0001	; ????
  5e:	00 00       	nop
  60:	ce 00       	.word	0x00ce	; ????
  62:	00 00       	nop
  64:	1a 01       	movw	r2, r20
  66:	00 00       	nop
  68:	1a 01       	movw	r2, r20
  6a:	00 00       	nop
  6c:	60 01       	movw	r12, r0
  6e:	00 00       	nop
  70:	01 00       	.word	0x0001	; ????
  72:	00 00       	nop
  74:	01 00       	.word	0x0001	; ????
  76:	00 00       	nop
  78:	01 00       	.word	0x0001	; ????
  7a:	00 00       	nop
  7c:	01 00       	.word	0x0001	; ????
  7e:	00 00       	nop
  80:	01 00       	.word	0x0001	; ????
  82:	00 00       	nop
  84:	01 00       	.word	0x0001	; ????
  86:	00 00       	nop
  88:	01 00       	.word	0x0001	; ????
  8a:	00 00       	nop
  8c:	01 00       	.word	0x0001	; ????
  8e:	00 00       	nop
  90:	60 01       	movw	r12, r0
  92:	00 00       	nop
  94:	6c 01       	movw	r12, r24
	...
  9e:	00 00       	nop
  a0:	aa 01       	movw	r20, r20
  a2:	00 00       	nop
  a4:	f8 01       	movw	r30, r16
  a6:	00 00       	nop
  a8:	26 02       	muls	r18, r22
  aa:	00 00       	nop
  ac:	36 02       	muls	r19, r22
	...
  b6:	00 00       	nop
  b8:	aa 01       	movw	r20, r20
  ba:	00 00       	nop
  bc:	f6 01       	movw	r30, r12
  be:	00 00       	nop
  c0:	26 02       	muls	r18, r22
  c2:	00 00       	nop
  c4:	36 02       	muls	r19, r22
	...
  ce:	00 00       	nop
  d0:	b4 01       	movw	r22, r8
  d2:	00 00       	nop
  d4:	f6 01       	movw	r30, r12
  d6:	00 00       	nop
  d8:	26 02       	muls	r18, r22
  da:	00 00       	nop
  dc:	2c 02       	muls	r18, r28
	...
  e6:	00 00       	nop
  e8:	6c 01       	movw	r12, r24
  ea:	00 00       	nop
  ec:	36 02       	muls	r19, r22
  ee:	00 00       	nop
  f0:	36 02       	muls	r19, r22
  f2:	00 00       	nop
  f4:	6c 02       	muls	r22, r28
	...
