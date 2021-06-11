
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
  9e:	e2 e7       	ldi	r30, 0x72	; 114
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
  c6:	0c 94 37 02 	jmp	0x46e	; 0x46e <_exit>

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
 11a:	0e 94 f8 00 	call	0x1f0	; 0x1f0 <javax_rtcbench_RTCBenchmark_void_test_native>
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
 13c:	7c 01       	movw	r14, r24
 13e:	8b 01       	movw	r16, r22
 140:	0e 94 67 00 	call	0xce	; 0xce <rtc_startBenchmarkMeasurement_Native>
 144:	f7 01       	movw	r30, r14
 146:	e1 50       	subi	r30, 0x01	; 1
 148:	f0 4c       	sbci	r31, 0xC0	; 192
 14a:	ee 0f       	add	r30, r30
 14c:	ff 1f       	adc	r31, r31
 14e:	ee 0f       	add	r30, r30
 150:	ff 1f       	adc	r31, r31
 152:	e0 0f       	add	r30, r16
 154:	f1 1f       	adc	r31, r17
 156:	80 80       	ld	r8, Z
 158:	91 80       	ldd	r9, Z+1	; 0x01
 15a:	a2 80       	ldd	r10, Z+2	; 0x02
 15c:	b3 80       	ldd	r11, Z+3	; 0x03
 15e:	68 ee       	ldi	r22, 0xE8	; 232
 160:	73 e0       	ldi	r23, 0x03	; 3
 162:	81 e0       	ldi	r24, 0x01	; 1
 164:	e8 1a       	sub	r14, r24
 166:	f1 08       	sbc	r15, r1
 168:	c1 2c       	mov	r12, r1
 16a:	d1 2c       	mov	r13, r1
 16c:	a7 01       	movw	r20, r14
 16e:	2c 2d       	mov	r18, r12
 170:	3d 2d       	mov	r19, r13
 172:	c9 01       	movw	r24, r18
 174:	84 0f       	add	r24, r20
 176:	95 1f       	adc	r25, r21
 178:	ec 01       	movw	r28, r24
 17a:	d6 95       	lsr	r29
 17c:	c7 95       	ror	r28
 17e:	fe 01       	movw	r30, r28
 180:	ee 0f       	add	r30, r30
 182:	ff 1f       	adc	r31, r31
 184:	ee 0f       	add	r30, r30
 186:	ff 1f       	adc	r31, r31
 188:	e0 0f       	add	r30, r16
 18a:	f1 1f       	adc	r31, r17
 18c:	80 81       	ld	r24, Z
 18e:	91 81       	ldd	r25, Z+1	; 0x01
 190:	a2 81       	ldd	r26, Z+2	; 0x02
 192:	b3 81       	ldd	r27, Z+3	; 0x03
 194:	88 15       	cp	r24, r8
 196:	99 05       	cpc	r25, r9
 198:	aa 05       	cpc	r26, r10
 19a:	bb 05       	cpc	r27, r11
 19c:	24 f4       	brge	.+8      	; 0x1a6 <rtcbenchmark_measure_native_performance+0x82>
 19e:	9e 01       	movw	r18, r28
 1a0:	2f 5f       	subi	r18, 0xFF	; 255
 1a2:	3f 4f       	sbci	r19, 0xFF	; 255
 1a4:	08 c0       	rjmp	.+16     	; 0x1b6 <rtcbenchmark_measure_native_performance+0x92>
 1a6:	88 16       	cp	r8, r24
 1a8:	99 06       	cpc	r9, r25
 1aa:	aa 06       	cpc	r10, r26
 1ac:	bb 06       	cpc	r11, r27
 1ae:	34 f4       	brge	.+12     	; 0x1bc <rtcbenchmark_measure_native_performance+0x98>
 1b0:	ae 01       	movw	r20, r28
 1b2:	41 50       	subi	r20, 0x01	; 1
 1b4:	51 09       	sbc	r21, r1
 1b6:	42 17       	cp	r20, r18
 1b8:	53 07       	cpc	r21, r19
 1ba:	d8 f6       	brcc	.-74     	; 0x172 <rtcbenchmark_measure_native_performance+0x4e>
 1bc:	61 50       	subi	r22, 0x01	; 1
 1be:	71 09       	sbc	r23, r1
 1c0:	a9 f6       	brne	.-86     	; 0x16c <rtcbenchmark_measure_native_performance+0x48>
 1c2:	0e 94 7b 00 	call	0xf6	; 0xf6 <rtc_stopBenchmarkMeasurement>
 1c6:	ce 01       	movw	r24, r28
 1c8:	a0 e0       	ldi	r26, 0x00	; 0
 1ca:	b0 e0       	ldi	r27, 0x00	; 0
 1cc:	f8 01       	movw	r30, r16
 1ce:	80 83       	st	Z, r24
 1d0:	91 83       	std	Z+1, r25	; 0x01
 1d2:	a2 83       	std	Z+2, r26	; 0x02
 1d4:	b3 83       	std	Z+3, r27	; 0x03
 1d6:	df 91       	pop	r29
 1d8:	cf 91       	pop	r28
 1da:	1f 91       	pop	r17
 1dc:	0f 91       	pop	r16
 1de:	ff 90       	pop	r15
 1e0:	ef 90       	pop	r14
 1e2:	df 90       	pop	r13
 1e4:	cf 90       	pop	r12
 1e6:	bf 90       	pop	r11
 1e8:	af 90       	pop	r10
 1ea:	9f 90       	pop	r9
 1ec:	8f 90       	pop	r8
 1ee:	08 95       	ret

000001f0 <javax_rtcbench_RTCBenchmark_void_test_native>:
 1f0:	80 e9       	ldi	r24, 0x90	; 144
 1f2:	91 e0       	ldi	r25, 0x01	; 1
 1f4:	0e 94 16 01 	call	0x22c	; 0x22c <malloc>
 1f8:	e8 2f       	mov	r30, r24
 1fa:	f9 2f       	mov	r31, r25
 1fc:	42 ee       	ldi	r20, 0xE2	; 226
 1fe:	5f ef       	ldi	r21, 0xFF	; 255
 200:	6f ef       	ldi	r22, 0xFF	; 255
 202:	7f ef       	ldi	r23, 0xFF	; 255
 204:	41 93       	st	Z+, r20
 206:	51 93       	st	Z+, r21
 208:	61 93       	st	Z+, r22
 20a:	71 93       	st	Z+, r23
 20c:	4f 5f       	subi	r20, 0xFF	; 255
 20e:	5f 4f       	sbci	r21, 0xFF	; 255
 210:	6f 4f       	sbci	r22, 0xFF	; 255
 212:	7f 4f       	sbci	r23, 0xFF	; 255
 214:	46 34       	cpi	r20, 0x46	; 70
 216:	51 05       	cpc	r21, r1
 218:	61 05       	cpc	r22, r1
 21a:	71 05       	cpc	r23, r1
 21c:	99 f7       	brne	.-26     	; 0x204 <javax_rtcbench_RTCBenchmark_void_test_native+0x14>
 21e:	68 2f       	mov	r22, r24
 220:	79 2f       	mov	r23, r25
 222:	84 e6       	ldi	r24, 0x64	; 100
 224:	90 e0       	ldi	r25, 0x00	; 0
 226:	0e 94 92 00 	call	0x124	; 0x124 <rtcbenchmark_measure_native_performance>
 22a:	08 95       	ret

0000022c <malloc>:
 22c:	0f 93       	push	r16
 22e:	1f 93       	push	r17
 230:	cf 93       	push	r28
 232:	df 93       	push	r29
 234:	82 30       	cpi	r24, 0x02	; 2
 236:	91 05       	cpc	r25, r1
 238:	10 f4       	brcc	.+4      	; 0x23e <malloc+0x12>
 23a:	82 e0       	ldi	r24, 0x02	; 2
 23c:	90 e0       	ldi	r25, 0x00	; 0
 23e:	e0 91 0d 01 	lds	r30, 0x010D	; 0x80010d <__flp>
 242:	f0 91 0e 01 	lds	r31, 0x010E	; 0x80010e <__flp+0x1>
 246:	20 e0       	ldi	r18, 0x00	; 0
 248:	30 e0       	ldi	r19, 0x00	; 0
 24a:	a0 e0       	ldi	r26, 0x00	; 0
 24c:	b0 e0       	ldi	r27, 0x00	; 0
 24e:	30 97       	sbiw	r30, 0x00	; 0
 250:	19 f1       	breq	.+70     	; 0x298 <malloc+0x6c>
 252:	40 81       	ld	r20, Z
 254:	51 81       	ldd	r21, Z+1	; 0x01
 256:	02 81       	ldd	r16, Z+2	; 0x02
 258:	13 81       	ldd	r17, Z+3	; 0x03
 25a:	48 17       	cp	r20, r24
 25c:	59 07       	cpc	r21, r25
 25e:	c8 f0       	brcs	.+50     	; 0x292 <malloc+0x66>
 260:	84 17       	cp	r24, r20
 262:	95 07       	cpc	r25, r21
 264:	69 f4       	brne	.+26     	; 0x280 <malloc+0x54>
 266:	10 97       	sbiw	r26, 0x00	; 0
 268:	31 f0       	breq	.+12     	; 0x276 <malloc+0x4a>
 26a:	12 96       	adiw	r26, 0x02	; 2
 26c:	0c 93       	st	X, r16
 26e:	12 97       	sbiw	r26, 0x02	; 2
 270:	13 96       	adiw	r26, 0x03	; 3
 272:	1c 93       	st	X, r17
 274:	27 c0       	rjmp	.+78     	; 0x2c4 <malloc+0x98>
 276:	00 93 0d 01 	sts	0x010D, r16	; 0x80010d <__flp>
 27a:	10 93 0e 01 	sts	0x010E, r17	; 0x80010e <__flp+0x1>
 27e:	22 c0       	rjmp	.+68     	; 0x2c4 <malloc+0x98>
 280:	21 15       	cp	r18, r1
 282:	31 05       	cpc	r19, r1
 284:	19 f0       	breq	.+6      	; 0x28c <malloc+0x60>
 286:	42 17       	cp	r20, r18
 288:	53 07       	cpc	r21, r19
 28a:	18 f4       	brcc	.+6      	; 0x292 <malloc+0x66>
 28c:	9a 01       	movw	r18, r20
 28e:	bd 01       	movw	r22, r26
 290:	ef 01       	movw	r28, r30
 292:	df 01       	movw	r26, r30
 294:	f8 01       	movw	r30, r16
 296:	db cf       	rjmp	.-74     	; 0x24e <malloc+0x22>
 298:	21 15       	cp	r18, r1
 29a:	31 05       	cpc	r19, r1
 29c:	f9 f0       	breq	.+62     	; 0x2dc <malloc+0xb0>
 29e:	28 1b       	sub	r18, r24
 2a0:	39 0b       	sbc	r19, r25
 2a2:	24 30       	cpi	r18, 0x04	; 4
 2a4:	31 05       	cpc	r19, r1
 2a6:	80 f4       	brcc	.+32     	; 0x2c8 <malloc+0x9c>
 2a8:	8a 81       	ldd	r24, Y+2	; 0x02
 2aa:	9b 81       	ldd	r25, Y+3	; 0x03
 2ac:	61 15       	cp	r22, r1
 2ae:	71 05       	cpc	r23, r1
 2b0:	21 f0       	breq	.+8      	; 0x2ba <malloc+0x8e>
 2b2:	fb 01       	movw	r30, r22
 2b4:	93 83       	std	Z+3, r25	; 0x03
 2b6:	82 83       	std	Z+2, r24	; 0x02
 2b8:	04 c0       	rjmp	.+8      	; 0x2c2 <malloc+0x96>
 2ba:	90 93 0e 01 	sts	0x010E, r25	; 0x80010e <__flp+0x1>
 2be:	80 93 0d 01 	sts	0x010D, r24	; 0x80010d <__flp>
 2c2:	fe 01       	movw	r30, r28
 2c4:	32 96       	adiw	r30, 0x02	; 2
 2c6:	44 c0       	rjmp	.+136    	; 0x350 <malloc+0x124>
 2c8:	fe 01       	movw	r30, r28
 2ca:	e2 0f       	add	r30, r18
 2cc:	f3 1f       	adc	r31, r19
 2ce:	81 93       	st	Z+, r24
 2d0:	91 93       	st	Z+, r25
 2d2:	22 50       	subi	r18, 0x02	; 2
 2d4:	31 09       	sbc	r19, r1
 2d6:	39 83       	std	Y+1, r19	; 0x01
 2d8:	28 83       	st	Y, r18
 2da:	3a c0       	rjmp	.+116    	; 0x350 <malloc+0x124>
 2dc:	20 91 0b 01 	lds	r18, 0x010B	; 0x80010b <__brkval>
 2e0:	30 91 0c 01 	lds	r19, 0x010C	; 0x80010c <__brkval+0x1>
 2e4:	23 2b       	or	r18, r19
 2e6:	41 f4       	brne	.+16     	; 0x2f8 <malloc+0xcc>
 2e8:	20 91 02 01 	lds	r18, 0x0102	; 0x800102 <__malloc_heap_start>
 2ec:	30 91 03 01 	lds	r19, 0x0103	; 0x800103 <__malloc_heap_start+0x1>
 2f0:	30 93 0c 01 	sts	0x010C, r19	; 0x80010c <__brkval+0x1>
 2f4:	20 93 0b 01 	sts	0x010B, r18	; 0x80010b <__brkval>
 2f8:	20 91 00 01 	lds	r18, 0x0100	; 0x800100 <__DATA_REGION_ORIGIN__>
 2fc:	30 91 01 01 	lds	r19, 0x0101	; 0x800101 <__DATA_REGION_ORIGIN__+0x1>
 300:	21 15       	cp	r18, r1
 302:	31 05       	cpc	r19, r1
 304:	41 f4       	brne	.+16     	; 0x316 <malloc+0xea>
 306:	2d b7       	in	r18, 0x3d	; 61
 308:	3e b7       	in	r19, 0x3e	; 62
 30a:	40 91 04 01 	lds	r20, 0x0104	; 0x800104 <__malloc_margin>
 30e:	50 91 05 01 	lds	r21, 0x0105	; 0x800105 <__malloc_margin+0x1>
 312:	24 1b       	sub	r18, r20
 314:	35 0b       	sbc	r19, r21
 316:	e0 91 0b 01 	lds	r30, 0x010B	; 0x80010b <__brkval>
 31a:	f0 91 0c 01 	lds	r31, 0x010C	; 0x80010c <__brkval+0x1>
 31e:	e2 17       	cp	r30, r18
 320:	f3 07       	cpc	r31, r19
 322:	a0 f4       	brcc	.+40     	; 0x34c <malloc+0x120>
 324:	2e 1b       	sub	r18, r30
 326:	3f 0b       	sbc	r19, r31
 328:	28 17       	cp	r18, r24
 32a:	39 07       	cpc	r19, r25
 32c:	78 f0       	brcs	.+30     	; 0x34c <malloc+0x120>
 32e:	ac 01       	movw	r20, r24
 330:	4e 5f       	subi	r20, 0xFE	; 254
 332:	5f 4f       	sbci	r21, 0xFF	; 255
 334:	24 17       	cp	r18, r20
 336:	35 07       	cpc	r19, r21
 338:	48 f0       	brcs	.+18     	; 0x34c <malloc+0x120>
 33a:	4e 0f       	add	r20, r30
 33c:	5f 1f       	adc	r21, r31
 33e:	50 93 0c 01 	sts	0x010C, r21	; 0x80010c <__brkval+0x1>
 342:	40 93 0b 01 	sts	0x010B, r20	; 0x80010b <__brkval>
 346:	81 93       	st	Z+, r24
 348:	91 93       	st	Z+, r25
 34a:	02 c0       	rjmp	.+4      	; 0x350 <malloc+0x124>
 34c:	e0 e0       	ldi	r30, 0x00	; 0
 34e:	f0 e0       	ldi	r31, 0x00	; 0
 350:	cf 01       	movw	r24, r30
 352:	df 91       	pop	r29
 354:	cf 91       	pop	r28
 356:	1f 91       	pop	r17
 358:	0f 91       	pop	r16
 35a:	08 95       	ret

0000035c <free>:
 35c:	cf 93       	push	r28
 35e:	df 93       	push	r29
 360:	00 97       	sbiw	r24, 0x00	; 0
 362:	09 f4       	brne	.+2      	; 0x366 <free+0xa>
 364:	81 c0       	rjmp	.+258    	; 0x468 <__LOCK_REGION_LENGTH__+0x68>
 366:	fc 01       	movw	r30, r24
 368:	32 97       	sbiw	r30, 0x02	; 2
 36a:	13 82       	std	Z+3, r1	; 0x03
 36c:	12 82       	std	Z+2, r1	; 0x02
 36e:	a0 91 0d 01 	lds	r26, 0x010D	; 0x80010d <__flp>
 372:	b0 91 0e 01 	lds	r27, 0x010E	; 0x80010e <__flp+0x1>
 376:	10 97       	sbiw	r26, 0x00	; 0
 378:	81 f4       	brne	.+32     	; 0x39a <free+0x3e>
 37a:	20 81       	ld	r18, Z
 37c:	31 81       	ldd	r19, Z+1	; 0x01
 37e:	82 0f       	add	r24, r18
 380:	93 1f       	adc	r25, r19
 382:	20 91 0b 01 	lds	r18, 0x010B	; 0x80010b <__brkval>
 386:	30 91 0c 01 	lds	r19, 0x010C	; 0x80010c <__brkval+0x1>
 38a:	28 17       	cp	r18, r24
 38c:	39 07       	cpc	r19, r25
 38e:	51 f5       	brne	.+84     	; 0x3e4 <free+0x88>
 390:	f0 93 0c 01 	sts	0x010C, r31	; 0x80010c <__brkval+0x1>
 394:	e0 93 0b 01 	sts	0x010B, r30	; 0x80010b <__brkval>
 398:	67 c0       	rjmp	.+206    	; 0x468 <__LOCK_REGION_LENGTH__+0x68>
 39a:	ed 01       	movw	r28, r26
 39c:	20 e0       	ldi	r18, 0x00	; 0
 39e:	30 e0       	ldi	r19, 0x00	; 0
 3a0:	ce 17       	cp	r28, r30
 3a2:	df 07       	cpc	r29, r31
 3a4:	40 f4       	brcc	.+16     	; 0x3b6 <free+0x5a>
 3a6:	4a 81       	ldd	r20, Y+2	; 0x02
 3a8:	5b 81       	ldd	r21, Y+3	; 0x03
 3aa:	9e 01       	movw	r18, r28
 3ac:	41 15       	cp	r20, r1
 3ae:	51 05       	cpc	r21, r1
 3b0:	f1 f0       	breq	.+60     	; 0x3ee <free+0x92>
 3b2:	ea 01       	movw	r28, r20
 3b4:	f5 cf       	rjmp	.-22     	; 0x3a0 <free+0x44>
 3b6:	d3 83       	std	Z+3, r29	; 0x03
 3b8:	c2 83       	std	Z+2, r28	; 0x02
 3ba:	40 81       	ld	r20, Z
 3bc:	51 81       	ldd	r21, Z+1	; 0x01
 3be:	84 0f       	add	r24, r20
 3c0:	95 1f       	adc	r25, r21
 3c2:	c8 17       	cp	r28, r24
 3c4:	d9 07       	cpc	r29, r25
 3c6:	59 f4       	brne	.+22     	; 0x3de <free+0x82>
 3c8:	88 81       	ld	r24, Y
 3ca:	99 81       	ldd	r25, Y+1	; 0x01
 3cc:	84 0f       	add	r24, r20
 3ce:	95 1f       	adc	r25, r21
 3d0:	02 96       	adiw	r24, 0x02	; 2
 3d2:	91 83       	std	Z+1, r25	; 0x01
 3d4:	80 83       	st	Z, r24
 3d6:	8a 81       	ldd	r24, Y+2	; 0x02
 3d8:	9b 81       	ldd	r25, Y+3	; 0x03
 3da:	93 83       	std	Z+3, r25	; 0x03
 3dc:	82 83       	std	Z+2, r24	; 0x02
 3de:	21 15       	cp	r18, r1
 3e0:	31 05       	cpc	r19, r1
 3e2:	29 f4       	brne	.+10     	; 0x3ee <free+0x92>
 3e4:	f0 93 0e 01 	sts	0x010E, r31	; 0x80010e <__flp+0x1>
 3e8:	e0 93 0d 01 	sts	0x010D, r30	; 0x80010d <__flp>
 3ec:	3d c0       	rjmp	.+122    	; 0x468 <__LOCK_REGION_LENGTH__+0x68>
 3ee:	e9 01       	movw	r28, r18
 3f0:	fb 83       	std	Y+3, r31	; 0x03
 3f2:	ea 83       	std	Y+2, r30	; 0x02
 3f4:	49 91       	ld	r20, Y+
 3f6:	59 91       	ld	r21, Y+
 3f8:	c4 0f       	add	r28, r20
 3fa:	d5 1f       	adc	r29, r21
 3fc:	ec 17       	cp	r30, r28
 3fe:	fd 07       	cpc	r31, r29
 400:	61 f4       	brne	.+24     	; 0x41a <__LOCK_REGION_LENGTH__+0x1a>
 402:	80 81       	ld	r24, Z
 404:	91 81       	ldd	r25, Z+1	; 0x01
 406:	84 0f       	add	r24, r20
 408:	95 1f       	adc	r25, r21
 40a:	02 96       	adiw	r24, 0x02	; 2
 40c:	e9 01       	movw	r28, r18
 40e:	99 83       	std	Y+1, r25	; 0x01
 410:	88 83       	st	Y, r24
 412:	82 81       	ldd	r24, Z+2	; 0x02
 414:	93 81       	ldd	r25, Z+3	; 0x03
 416:	9b 83       	std	Y+3, r25	; 0x03
 418:	8a 83       	std	Y+2, r24	; 0x02
 41a:	e0 e0       	ldi	r30, 0x00	; 0
 41c:	f0 e0       	ldi	r31, 0x00	; 0
 41e:	12 96       	adiw	r26, 0x02	; 2
 420:	8d 91       	ld	r24, X+
 422:	9c 91       	ld	r25, X
 424:	13 97       	sbiw	r26, 0x03	; 3
 426:	00 97       	sbiw	r24, 0x00	; 0
 428:	19 f0       	breq	.+6      	; 0x430 <__LOCK_REGION_LENGTH__+0x30>
 42a:	fd 01       	movw	r30, r26
 42c:	dc 01       	movw	r26, r24
 42e:	f7 cf       	rjmp	.-18     	; 0x41e <__LOCK_REGION_LENGTH__+0x1e>
 430:	8d 91       	ld	r24, X+
 432:	9c 91       	ld	r25, X
 434:	11 97       	sbiw	r26, 0x01	; 1
 436:	9d 01       	movw	r18, r26
 438:	2e 5f       	subi	r18, 0xFE	; 254
 43a:	3f 4f       	sbci	r19, 0xFF	; 255
 43c:	82 0f       	add	r24, r18
 43e:	93 1f       	adc	r25, r19
 440:	20 91 0b 01 	lds	r18, 0x010B	; 0x80010b <__brkval>
 444:	30 91 0c 01 	lds	r19, 0x010C	; 0x80010c <__brkval+0x1>
 448:	28 17       	cp	r18, r24
 44a:	39 07       	cpc	r19, r25
 44c:	69 f4       	brne	.+26     	; 0x468 <__LOCK_REGION_LENGTH__+0x68>
 44e:	30 97       	sbiw	r30, 0x00	; 0
 450:	29 f4       	brne	.+10     	; 0x45c <__LOCK_REGION_LENGTH__+0x5c>
 452:	10 92 0e 01 	sts	0x010E, r1	; 0x80010e <__flp+0x1>
 456:	10 92 0d 01 	sts	0x010D, r1	; 0x80010d <__flp>
 45a:	02 c0       	rjmp	.+4      	; 0x460 <__LOCK_REGION_LENGTH__+0x60>
 45c:	13 82       	std	Z+3, r1	; 0x03
 45e:	12 82       	std	Z+2, r1	; 0x02
 460:	b0 93 0c 01 	sts	0x010C, r27	; 0x80010c <__brkval+0x1>
 464:	a0 93 0b 01 	sts	0x010B, r26	; 0x80010b <__brkval>
 468:	df 91       	pop	r29
 46a:	cf 91       	pop	r28
 46c:	08 95       	ret

0000046e <_exit>:
 46e:	f8 94       	cli

00000470 <__stop_program>:
 470:	ff cf       	rjmp	.-2      	; 0x470 <__stop_program>

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
  66:	98 0d       	add	r25, r8
  68:	00 00       	nop
  6a:	04 00       	.word	0x0004	; ????
  6c:	00 00       	nop
  6e:	00 00       	nop
  70:	24 01       	movw	r4, r8
  72:	00 00       	nop
  74:	cc 00       	.word	0x00cc	; ????
  76:	00 00       	nop
  78:	f0 01       	movw	r30, r0
  7a:	00 00       	nop
  7c:	3c 00       	.word	0x003c	; ????
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
 780:	14 06       	cpc	r1, r20
 782:	00 00       	nop
 784:	02 00       	.word	0x0002	; ????
 786:	18 07       	cpc	r17, r24
 788:	00 00       	nop
 78a:	04 01       	movw	r0, r8
 78c:	c8 02       	muls	r28, r24
 78e:	00 00       	nop
 790:	0c ab       	std	Y+52, r16	; 0x34
 792:	04 00       	.word	0x0004	; ????
 794:	00 7d       	andi	r16, 0xD0	; 208
 796:	02 00       	.word	0x0002	; ????
 798:	00 48       	sbci	r16, 0x80	; 128
	...
 7a2:	00 00       	nop
 7a4:	00 1a       	sub	r0, r16
 7a6:	00 00       	nop
 7a8:	00 02       	muls	r16, r16
 7aa:	05 04       	cpc	r0, r5
 7ac:	00 00       	nop
 7ae:	03 04       	cpc	r0, r3
 7b0:	34 00       	.word	0x0034	; ????
 7b2:	00 00       	nop
 7b4:	03 01       	movw	r0, r6
 7b6:	08 98       	cbi	0x01, 0	; 1
 7b8:	03 00       	.word	0x0003	; ????
 7ba:	00 03       	mulsu	r16, r16
 7bc:	01 06       	cpc	r0, r17
 7be:	a1 03       	fmuls	r18, r17
 7c0:	00 00       	nop
 7c2:	03 02       	muls	r16, r19
 7c4:	07 ab       	std	Z+55, r16	; 0x37
 7c6:	03 00       	.word	0x0003	; ????
 7c8:	00 03       	mulsu	r16, r16
 7ca:	02 05       	cpc	r16, r2
 7cc:	a1 04       	cpc	r10, r1
 7ce:	00 00       	nop
 7d0:	02 da       	rcall	.-3068   	; 0xfffffbd6 <__eeprom_end+0xff7efbd6>
 7d2:	04 00       	.word	0x0004	; ????
 7d4:	00 03       	mulsu	r16, r16
 7d6:	08 5b       	subi	r16, 0xB8	; 184
 7d8:	00 00       	nop
 7da:	00 03       	mulsu	r16, r16
 7dc:	04 07       	cpc	r16, r20
 7de:	7d 03       	fmul	r23, r21
 7e0:	00 00       	nop
 7e2:	03 04       	cpc	r0, r3
 7e4:	05 69       	ori	r16, 0x95	; 149
 7e6:	04 00       	.word	0x0004	; ????
 7e8:	00 03       	mulsu	r16, r16
 7ea:	08 07       	cpc	r16, r24
 7ec:	78 03       	fmul	r23, r16
 7ee:	00 00       	nop
 7f0:	03 08       	sbc	r0, r3
 7f2:	05 64       	ori	r16, 0x45	; 69
 7f4:	04 00       	.word	0x0004	; ????
 7f6:	00 02       	muls	r16, r16
 7f8:	d9 03       	fmulsu	r21, r17
 7fa:	00 00       	nop
 7fc:	04 28       	or	r0, r4
 7fe:	82 00       	.word	0x0082	; ????
 800:	00 00       	nop
 802:	04 02       	muls	r16, r20
 804:	a6 02       	muls	r26, r22
 806:	00 00       	nop
 808:	02 e0       	ldi	r16, 0x02	; 2
 80a:	03 00       	.word	0x0003	; ????
 80c:	00 04       	cpc	r0, r0
 80e:	62 77       	andi	r22, 0x72	; 114
 810:	00 00       	nop
 812:	00 05       	cpc	r16, r0
 814:	e8 03       	fmulsu	r22, r16
 816:	00 00       	nop
 818:	02 5c       	subi	r16, 0xC2	; 194
 81a:	01 03       	mulsu	r16, r17
 81c:	aa 00       	.word	0x00aa	; ????
 81e:	00 00       	nop
 820:	06 61       	ori	r16, 0x16	; 22
 822:	00 02       	muls	r16, r16
 824:	5c 29       	or	r21, r12
 826:	00 00       	nop
 828:	00 00       	nop
 82a:	07 be       	out	0x37, r0	; 55
 82c:	03 00       	.word	0x0003	; ????
 82e:	00 02       	muls	r16, r16
 830:	65 03       	mulsu	r22, r21
 832:	05 4e       	sbci	r16, 0xE5	; 229
 834:	04 00       	.word	0x0004	; ????
 836:	00 02       	muls	r16, r16
 838:	60 01       	movw	r12, r0
 83a:	03 c9       	rjmp	.-3578   	; 0xfffffa42 <__eeprom_end+0xff7efa42>
 83c:	00 00       	nop
 83e:	00 06       	cpc	r0, r16
 840:	63 00       	.word	0x0063	; ????
 842:	02 60       	ori	r16, 0x02	; 2
 844:	3b 00       	.word	0x003b	; ????
 846:	00 00       	nop
 848:	00 08       	sbc	r0, r0
 84a:	01 6e       	ori	r16, 0xE1	; 225
 84c:	03 00       	.word	0x0003	; ????
 84e:	00 01       	movw	r0, r0
 850:	05 01       	movw	r0, r10
	...
 85a:	03 92       	.word	0x9203	; ????
 85c:	20 02       	muls	r18, r16
 85e:	01 5f       	subi	r16, 0xF1	; 241
 860:	01 00       	.word	0x0001	; ????
 862:	00 09       	sbc	r16, r0
 864:	73 74       	andi	r23, 0x43	; 67
 866:	72 00       	.word	0x0072	; ????
 868:	01 05       	cpc	r16, r1
 86a:	5f 01       	movw	r10, r30
 86c:	00 00       	nop
 86e:	00 00       	nop
 870:	00 00       	nop
 872:	0a 69       	ori	r16, 0x9A	; 154
 874:	00 01       	movw	r0, r0
 876:	07 65       	ori	r16, 0x57	; 87
 878:	01 00       	.word	0x0001	; ????
 87a:	00 33       	cpi	r16, 0x30	; 48
 87c:	00 00       	nop
 87e:	00 0b       	sbc	r16, r16
 880:	b2 00       	.word	0x00b2	; ????
	...
 88a:	00 00       	nop
 88c:	01 0c       	add	r0, r1
 88e:	35 01       	movw	r6, r10
 890:	00 00       	nop
 892:	0c bf       	out	0x3c, r16	; 60
 894:	00 00       	nop
 896:	00 7c       	andi	r16, 0xC0	; 192
 898:	00 00       	nop
 89a:	00 0d       	add	r16, r0
 89c:	93 00       	.word	0x0093	; ????
 89e:	00 00       	nop
 8a0:	00 00       	nop
 8a2:	00 00       	nop
 8a4:	18 00       	.word	0x0018	; ????
 8a6:	00 00       	nop
 8a8:	02 63       	ori	r16, 0x32	; 50
 8aa:	0c a0       	ldd	r0, Y+36	; 0x24
 8ac:	00 00       	nop
 8ae:	00 8f       	std	Z+24, r16	; 0x18
 8b0:	00 00       	nop
 8b2:	00 00       	nop
 8b4:	00 0d       	add	r16, r0
 8b6:	aa 00       	.word	0x00aa	; ????
 8b8:	00 00       	nop
 8ba:	00 00       	nop
 8bc:	00 00       	nop
 8be:	30 00       	.word	0x0030	; ????
 8c0:	00 00       	nop
 8c2:	01 0a       	sbc	r0, r17
 8c4:	0d 93       	st	X+, r16
 8c6:	00 00       	nop
 8c8:	00 00       	nop
 8ca:	00 00       	nop
 8cc:	00 30       	cpi	r16, 0x00	; 0
 8ce:	00 00       	nop
 8d0:	00 02       	muls	r16, r16
 8d2:	67 0c       	add	r6, r7
 8d4:	a0 00       	.word	0x00a0	; ????
 8d6:	00 00       	nop
 8d8:	a3 00       	.word	0x00a3	; ????
 8da:	00 00       	nop
 8dc:	00 00       	nop
 8de:	00 0e       	add	r0, r16
 8e0:	02 3b       	cpi	r16, 0xB2	; 178
 8e2:	00 00       	nop
 8e4:	00 0f       	add	r16, r16
 8e6:	02 05       	cpc	r16, r2
 8e8:	69 6e       	ori	r22, 0xE9	; 233
 8ea:	74 00       	.word	0x0074	; ????
 8ec:	08 01       	movw	r0, r16
 8ee:	e3 04       	cpc	r14, r3
 8f0:	00 00       	nop
 8f2:	01 11       	cpse	r16, r1
 8f4:	01 00       	.word	0x0001	; ????
 8f6:	00 00       	nop
 8f8:	00 00       	nop
 8fa:	00 00       	nop
 8fc:	00 03       	mulsu	r16, r16
 8fe:	92 20       	and	r9, r2
 900:	02 01       	movw	r0, r4
 902:	20 02       	muls	r18, r16
 904:	00 00       	nop
 906:	10 fe       	sbrs	r1, 0
 908:	03 00       	.word	0x0003	; ????
 90a:	00 01       	movw	r0, r0
 90c:	11 5f       	subi	r17, 0xF1	; 241
 90e:	01 00       	.word	0x0001	; ????
 910:	00 b7       	in	r16, 0x30	; 48
 912:	00 00       	nop
 914:	00 09       	sbc	r16, r0
 916:	61 72       	andi	r22, 0x21	; 33
 918:	67 00       	.word	0x0067	; ????
 91a:	01 11       	cpse	r16, r1
 91c:	88 00       	.word	0x0088	; ????
 91e:	00 00       	nop
 920:	ed 00       	.word	0x00ed	; ????
 922:	00 00       	nop
 924:	11 a6       	std	Z+41, r1	; 0x29
 926:	03 00       	.word	0x0003	; ????
 928:	00 01       	movw	r0, r0
 92a:	13 20       	and	r1, r3
 92c:	02 00       	.word	0x0002	; ????
 92e:	00 05       	cpc	r16, r0
 930:	03 00       	.word	0x0003	; ????
 932:	00 00       	nop
 934:	00 12       	cpse	r0, r16
 936:	01 b8       	out	0x01, r0	; 1
 938:	02 00       	.word	0x0002	; ????
 93a:	00 05       	cpc	r16, r0
 93c:	00 65       	ori	r16, 0x50	; 80
 93e:	01 00       	.word	0x0001	; ????
 940:	00 01       	movw	r0, r0
 942:	c8 01       	movw	r24, r16
 944:	00 00       	nop
 946:	13 00       	.word	0x0013	; ????
 948:	14 00       	.word	0x0014	; ????
 94a:	00 00       	nop
 94c:	00 fd       	sbrc	r16, 0
 94e:	05 00       	.word	0x0005	; ????
 950:	00 07       	cpc	r16, r16
 952:	02 00       	.word	0x0002	; ????
 954:	00 15       	cp	r16, r0
 956:	06 68       	ori	r16, 0x86	; 134
 958:	93 01       	movw	r18, r6
 95a:	69 93       	st	Y+, r22
 95c:	01 05       	cpc	r16, r1
 95e:	03 00       	.word	0x0003	; ????
 960:	00 00       	nop
 962:	00 15       	cp	r16, r0
 964:	06 66       	ori	r16, 0x66	; 102
 966:	93 01       	movw	r18, r6
 968:	67 93       	lat	Z, r22
 96a:	01 02       	muls	r16, r17
 96c:	08 80       	ld	r0, Y
 96e:	15 06       	cpc	r1, r21
 970:	64 93       	xch	Z, r22
 972:	01 65       	ori	r16, 0x51	; 81
 974:	93 01       	movw	r18, r6
 976:	03 f3       	brvs	.-64     	; 0x938 <__data_load_end+0x4c0>
 978:	01 68       	ori	r16, 0x81	; 129
 97a:	15 06       	cpc	r1, r21
 97c:	62 93       	st	-Z, r22
 97e:	01 63       	ori	r16, 0x31	; 49
 980:	93 01       	movw	r18, r6
 982:	03 f3       	brvs	.-64     	; 0x944 <__data_load_end+0x4cc>
 984:	01 66       	ori	r16, 0x61	; 97
 986:	00 16       	cp	r0, r16
 988:	00 00       	nop
 98a:	00 00       	nop
 98c:	c9 00       	.word	0x00c9	; ????
 98e:	00 00       	nop
 990:	15 06       	cpc	r1, r21
 992:	68 93       	.word	0x9368	; ????
 994:	01 69       	ori	r16, 0x91	; 145
 996:	93 01       	movw	r18, r6
 998:	05 03       	mulsu	r16, r21
 99a:	00 00       	nop
 99c:	00 00       	nop
 99e:	00 00       	nop
 9a0:	17 3b       	cpi	r17, 0xB7	; 183
 9a2:	00 00       	nop
 9a4:	00 30       	cpi	r16, 0x00	; 0
 9a6:	02 00       	.word	0x0002	; ????
 9a8:	00 18       	sub	r0, r0
 9aa:	30 02       	muls	r19, r16
 9ac:	00 00       	nop
 9ae:	7f 00       	.word	0x007f	; ????
 9b0:	03 02       	muls	r16, r19
 9b2:	07 45       	sbci	r16, 0x57	; 87
 9b4:	04 00       	.word	0x0004	; ????
 9b6:	00 19       	sub	r16, r0
 9b8:	01 63       	ori	r16, 0x31	; 49
 9ba:	03 00       	.word	0x0003	; ????
 9bc:	00 01       	movw	r0, r0
 9be:	18 01       	movw	r2, r16
	...
 9c8:	23 01       	movw	r4, r6
 9ca:	00 00       	nop
 9cc:	01 92       	st	Z+, r0
 9ce:	02 00       	.word	0x0002	; ????
 9d0:	00 1a       	sub	r0, r16
 9d2:	fe 03       	fmulsu	r23, r22
 9d4:	00 00       	nop
 9d6:	01 18       	sub	r0, r1
 9d8:	5f 01       	movw	r10, r30
 9da:	00 00       	nop
 9dc:	02 91       	ld	r16, -Z
 9de:	01 13       	cpse	r16, r17
 9e0:	0a 61       	ori	r16, 0x1A	; 26
 9e2:	72 67       	ori	r23, 0x72	; 114
 9e4:	00 01       	movw	r0, r0
 9e6:	1a 88       	ldd	r1, Y+18	; 0x12
 9e8:	00 00       	nop
 9ea:	00 5e       	subi	r16, 0xE0	; 224
 9ec:	01 00       	.word	0x0001	; ????
 9ee:	00 16       	cp	r0, r16
 9f0:	00 00       	nop
 9f2:	00 00       	nop
 9f4:	6c 01       	movw	r12, r24
 9f6:	00 00       	nop
 9f8:	15 06       	cpc	r1, r21
 9fa:	68 93       	.word	0x9368	; ????
 9fc:	01 69       	ori	r16, 0x91	; 145
 9fe:	93 01       	movw	r18, r6
 a00:	04 91       	lpm	r16, Z
 a02:	01 94       	neg	r0
 a04:	02 15       	cp	r16, r2
 a06:	06 66       	ori	r16, 0x66	; 102
 a08:	93 01       	movw	r18, r6
 a0a:	67 93       	lat	Z, r22
 a0c:	01 02       	muls	r16, r17
 a0e:	91 03       	fmuls	r17, r17
 a10:	00 00       	nop
 a12:	1b 01       	movw	r2, r22
 a14:	72 04       	cpc	r7, r2
 a16:	00 00       	nop
 a18:	01 23       	and	r16, r17
 a1a:	ce 00       	.word	0x00ce	; ????
 a1c:	00 00       	nop
 a1e:	f6 00       	.word	0x00f6	; ????
 a20:	00 00       	nop
 a22:	03 92       	.word	0x9203	; ????
 a24:	20 02       	muls	r18, r16
 a26:	01 e3       	ldi	r16, 0x31	; 49
 a28:	03 00       	.word	0x0003	; ????
 a2a:	00 1c       	adc	r0, r0
 a2c:	b2 00       	.word	0x00b2	; ????
 a2e:	00 00       	nop
 a30:	ce 00       	.word	0x00ce	; ????
 a32:	00 00       	nop
 a34:	da 00       	.word	0x00da	; ????
 a36:	00 00       	nop
 a38:	01 25       	eor	r16, r1
 a3a:	e1 02       	muls	r30, r17
 a3c:	00 00       	nop
 a3e:	0c bf       	out	0x3c, r16	; 60
 a40:	00 00       	nop
 a42:	00 83       	st	Z, r16
 a44:	01 00       	.word	0x0001	; ????
 a46:	00 1d       	adc	r16, r0
 a48:	93 00       	.word	0x0093	; ????
 a4a:	00 00       	nop
 a4c:	d6 00       	.word	0x00d6	; ????
 a4e:	00 00       	nop
 a50:	da 00       	.word	0x00da	; ????
 a52:	00 00       	nop
 a54:	02 63       	ori	r16, 0x32	; 50
 a56:	0c a0       	ldd	r0, Y+36	; 0x24
 a58:	00 00       	nop
 a5a:	00 98       	cbi	0x00, 0	; 0
 a5c:	01 00       	.word	0x0001	; ????
 a5e:	00 00       	nop
 a60:	00 1c       	adc	r0, r0
 a62:	b2 00       	.word	0x00b2	; ????
 a64:	00 00       	nop
 a66:	da 00       	.word	0x00da	; ????
 a68:	00 00       	nop
 a6a:	e0 00       	.word	0x00e0	; ????
 a6c:	00 00       	nop
 a6e:	01 26       	eor	r0, r17
 a70:	17 03       	mulsu	r17, r23
 a72:	00 00       	nop
 a74:	0c bf       	out	0x3c, r16	; 60
 a76:	00 00       	nop
 a78:	00 ac       	ldd	r0, Z+56	; 0x38
 a7a:	01 00       	.word	0x0001	; ????
 a7c:	00 1d       	adc	r16, r0
 a7e:	93 00       	.word	0x0093	; ????
 a80:	00 00       	nop
 a82:	de 00       	.word	0x00de	; ????
 a84:	00 00       	nop
 a86:	e0 00       	.word	0x00e0	; ????
 a88:	00 00       	nop
 a8a:	02 63       	ori	r16, 0x32	; 50
 a8c:	0c a0       	ldd	r0, Y+36	; 0x24
 a8e:	00 00       	nop
 a90:	00 c1       	rjmp	.+512    	; 0xc92 <__data_load_end+0x81a>
 a92:	01 00       	.word	0x0001	; ????
 a94:	00 00       	nop
 a96:	00 1c       	adc	r0, r0
 a98:	b2 00       	.word	0x00b2	; ????
 a9a:	00 00       	nop
 a9c:	e0 00       	.word	0x00e0	; ????
 a9e:	00 00       	nop
 aa0:	e6 00       	.word	0x00e6	; ????
 aa2:	00 00       	nop
 aa4:	01 27       	eor	r16, r17
 aa6:	4d 03       	fmul	r20, r21
 aa8:	00 00       	nop
 aaa:	0c bf       	out	0x3c, r16	; 60
 aac:	00 00       	nop
 aae:	00 d5       	rcall	.+2560   	; 0x14b0 <__stack+0x3b1>
 ab0:	01 00       	.word	0x0001	; ????
 ab2:	00 1d       	adc	r16, r0
 ab4:	93 00       	.word	0x0093	; ????
 ab6:	00 00       	nop
 ab8:	e4 00       	.word	0x00e4	; ????
 aba:	00 00       	nop
 abc:	e6 00       	.word	0x00e6	; ????
 abe:	00 00       	nop
 ac0:	02 63       	ori	r16, 0x32	; 50
 ac2:	0c a0       	ldd	r0, Y+36	; 0x24
 ac4:	00 00       	nop
 ac6:	00 ea       	ldi	r16, 0xA0	; 160
 ac8:	01 00       	.word	0x0001	; ????
 aca:	00 00       	nop
 acc:	00 1c       	adc	r0, r0
 ace:	b2 00       	.word	0x00b2	; ????
 ad0:	00 00       	nop
 ad2:	e6 00       	.word	0x00e6	; ????
 ad4:	00 00       	nop
 ad6:	ec 00       	.word	0x00ec	; ????
 ad8:	00 00       	nop
 ada:	01 28       	or	r0, r1
 adc:	83 03       	fmuls	r16, r19
 ade:	00 00       	nop
 ae0:	0c bf       	out	0x3c, r16	; 60
 ae2:	00 00       	nop
 ae4:	00 fe       	sbrs	r0, 0
 ae6:	01 00       	.word	0x0001	; ????
 ae8:	00 1d       	adc	r16, r0
 aea:	93 00       	.word	0x0093	; ????
 aec:	00 00       	nop
 aee:	ea 00       	.word	0x00ea	; ????
 af0:	00 00       	nop
 af2:	ec 00       	.word	0x00ec	; ????
 af4:	00 00       	nop
 af6:	02 63       	ori	r16, 0x32	; 50
 af8:	0c a0       	ldd	r0, Y+36	; 0x24
 afa:	00 00       	nop
 afc:	00 13       	cpse	r16, r16
 afe:	02 00       	.word	0x0002	; ????
 b00:	00 00       	nop
 b02:	00 1c       	adc	r0, r0
 b04:	b2 00       	.word	0x00b2	; ????
 b06:	00 00       	nop
 b08:	ec 00       	.word	0x00ec	; ????
 b0a:	00 00       	nop
 b0c:	f0 00       	.word	0x00f0	; ????
 b0e:	00 00       	nop
 b10:	01 29       	or	r16, r1
 b12:	b9 03       	fmulsu	r19, r17
 b14:	00 00       	nop
 b16:	0c bf       	out	0x3c, r16	; 60
 b18:	00 00       	nop
 b1a:	00 27       	eor	r16, r16
 b1c:	02 00       	.word	0x0002	; ????
 b1e:	00 1d       	adc	r16, r0
 b20:	93 00       	.word	0x0093	; ????
 b22:	00 00       	nop
 b24:	ee 00       	.word	0x00ee	; ????
 b26:	00 00       	nop
 b28:	f0 00       	.word	0x00f0	; ????
 b2a:	00 00       	nop
 b2c:	02 63       	ori	r16, 0x32	; 50
 b2e:	0c a0       	ldd	r0, Y+36	; 0x24
 b30:	00 00       	nop
 b32:	00 3c       	cpi	r16, 0xC0	; 192
 b34:	02 00       	.word	0x0002	; ????
 b36:	00 00       	nop
 b38:	00 1d       	adc	r16, r0
 b3a:	aa 00       	.word	0x00aa	; ????
 b3c:	00 00       	nop
 b3e:	f0 00       	.word	0x00f0	; ????
 b40:	00 00       	nop
 b42:	f6 00       	.word	0x00f6	; ????
 b44:	00 00       	nop
 b46:	01 2a       	or	r0, r17
 b48:	1d 93       	st	X+, r17
 b4a:	00 00       	nop
 b4c:	00 f0       	brcs	.+0      	; 0xb4e <__data_load_end+0x6d6>
 b4e:	00 00       	nop
 b50:	00 f6       	brcc	.-128    	; 0xad2 <__data_load_end+0x65a>
 b52:	00 00       	nop
 b54:	00 02       	muls	r16, r16
 b56:	67 0c       	add	r6, r7
 b58:	a0 00       	.word	0x00a0	; ????
 b5a:	00 00       	nop
 b5c:	50 02       	muls	r21, r16
 b5e:	00 00       	nop
 b60:	00 00       	nop
 b62:	00 1b       	sub	r16, r16
 b64:	01 46       	sbci	r16, 0x61	; 97
 b66:	03 00       	.word	0x0003	; ????
 b68:	00 01       	movw	r0, r0
 b6a:	2c f6       	brge	.-118    	; 0xaf6 <__data_load_end+0x67e>
 b6c:	00 00       	nop
 b6e:	00 1a       	sub	r0, r16
 b70:	01 00       	.word	0x0001	; ????
 b72:	00 03       	mulsu	r16, r16
 b74:	92 20       	and	r9, r2
 b76:	02 01       	movw	r0, r4
 b78:	fe 04       	cpc	r15, r14
 b7a:	00 00       	nop
 b7c:	1c b2       	in	r1, 0x1c	; 28
 b7e:	00 00       	nop
 b80:	00 f6       	brcc	.-128    	; 0xb02 <__data_load_end+0x68a>
 b82:	00 00       	nop
 b84:	00 02       	muls	r16, r16
 b86:	01 00       	.word	0x0001	; ????
 b88:	00 01       	movw	r0, r0
 b8a:	2e 32       	cpi	r18, 0x2E	; 46
 b8c:	04 00       	.word	0x0004	; ????
 b8e:	00 0c       	add	r0, r0
 b90:	bf 00       	.word	0x00bf	; ????
 b92:	00 00       	nop
 b94:	64 02       	muls	r22, r20
 b96:	00 00       	nop
 b98:	1d 93       	st	X+, r17
 b9a:	00 00       	nop
 b9c:	00 fe       	sbrs	r0, 0
 b9e:	00 00       	nop
 ba0:	00 02       	muls	r16, r16
 ba2:	01 00       	.word	0x0001	; ????
 ba4:	00 02       	muls	r16, r16
 ba6:	63 0c       	add	r6, r3
 ba8:	a0 00       	.word	0x00a0	; ????
 baa:	00 00       	nop
 bac:	79 02       	muls	r23, r25
 bae:	00 00       	nop
 bb0:	00 00       	nop
 bb2:	1c b2       	in	r1, 0x1c	; 28
 bb4:	00 00       	nop
 bb6:	00 02       	muls	r16, r16
 bb8:	01 00       	.word	0x0001	; ????
 bba:	00 08       	sbc	r0, r0
 bbc:	01 00       	.word	0x0001	; ????
 bbe:	00 01       	movw	r0, r0
 bc0:	2f 68       	ori	r18, 0x8F	; 143
 bc2:	04 00       	.word	0x0004	; ????
 bc4:	00 0c       	add	r0, r0
 bc6:	bf 00       	.word	0x00bf	; ????
 bc8:	00 00       	nop
 bca:	8d 02       	muls	r24, r29
 bcc:	00 00       	nop
 bce:	1d 93       	st	X+, r17
 bd0:	00 00       	nop
 bd2:	00 06       	cpc	r0, r16
 bd4:	01 00       	.word	0x0001	; ????
 bd6:	00 08       	sbc	r0, r0
 bd8:	01 00       	.word	0x0001	; ????
 bda:	00 02       	muls	r16, r16
 bdc:	63 0c       	add	r6, r3
 bde:	a0 00       	.word	0x00a0	; ????
 be0:	00 00       	nop
 be2:	a2 02       	muls	r26, r18
 be4:	00 00       	nop
 be6:	00 00       	nop
 be8:	1c b2       	in	r1, 0x1c	; 28
 bea:	00 00       	nop
 bec:	00 08       	sbc	r0, r0
 bee:	01 00       	.word	0x0001	; ????
 bf0:	00 0e       	add	r0, r16
 bf2:	01 00       	.word	0x0001	; ????
 bf4:	00 01       	movw	r0, r0
 bf6:	30 9e       	mul	r3, r16
 bf8:	04 00       	.word	0x0004	; ????
 bfa:	00 0c       	add	r0, r0
 bfc:	bf 00       	.word	0x00bf	; ????
 bfe:	00 00       	nop
 c00:	b6 02       	muls	r27, r22
 c02:	00 00       	nop
 c04:	1d 93       	st	X+, r17
 c06:	00 00       	nop
 c08:	00 0c       	add	r0, r0
 c0a:	01 00       	.word	0x0001	; ????
 c0c:	00 0e       	add	r0, r16
 c0e:	01 00       	.word	0x0001	; ????
 c10:	00 02       	muls	r16, r16
 c12:	63 0c       	add	r6, r3
 c14:	a0 00       	.word	0x00a0	; ????
 c16:	00 00       	nop
 c18:	cb 02       	muls	r28, r27
 c1a:	00 00       	nop
 c1c:	00 00       	nop
 c1e:	1c b2       	in	r1, 0x1c	; 28
 c20:	00 00       	nop
 c22:	00 0e       	add	r0, r16
 c24:	01 00       	.word	0x0001	; ????
 c26:	00 14       	cp	r0, r0
 c28:	01 00       	.word	0x0001	; ????
 c2a:	00 01       	movw	r0, r0
 c2c:	31 d4       	rcall	.+2146   	; 0x1490 <__stack+0x391>
 c2e:	04 00       	.word	0x0004	; ????
 c30:	00 0c       	add	r0, r0
 c32:	bf 00       	.word	0x00bf	; ????
 c34:	00 00       	nop
 c36:	df 02       	muls	r29, r31
 c38:	00 00       	nop
 c3a:	1d 93       	st	X+, r17
 c3c:	00 00       	nop
 c3e:	00 12       	cpse	r0, r16
 c40:	01 00       	.word	0x0001	; ????
 c42:	00 14       	cp	r0, r0
 c44:	01 00       	.word	0x0001	; ????
 c46:	00 02       	muls	r16, r16
 c48:	63 0c       	add	r6, r3
 c4a:	a0 00       	.word	0x00a0	; ????
 c4c:	00 00       	nop
 c4e:	f4 02       	muls	r31, r20
 c50:	00 00       	nop
 c52:	00 00       	nop
 c54:	1d aa       	std	Y+53, r1	; 0x35
 c56:	00 00       	nop
 c58:	00 14       	cp	r0, r0
 c5a:	01 00       	.word	0x0001	; ????
 c5c:	00 1a       	sub	r0, r16
 c5e:	01 00       	.word	0x0001	; ????
 c60:	00 01       	movw	r0, r0
 c62:	32 1d       	adc	r19, r2
 c64:	93 00       	.word	0x0093	; ????
 c66:	00 00       	nop
 c68:	14 01       	movw	r2, r8
 c6a:	00 00       	nop
 c6c:	1a 01       	movw	r2, r20
 c6e:	00 00       	nop
 c70:	02 67       	ori	r16, 0x72	; 114
 c72:	0c a0       	ldd	r0, Y+36	; 0x24
 c74:	00 00       	nop
 c76:	00 08       	sbc	r0, r0
 c78:	03 00       	.word	0x0003	; ????
 c7a:	00 00       	nop
 c7c:	00 00       	nop
 c7e:	19 01       	movw	r2, r18
 c80:	8f 03       	fmulsu	r16, r23
 c82:	00 00       	nop
 c84:	01 35       	cpi	r16, 0x51	; 81
 c86:	01 00       	.word	0x0001	; ????
 c88:	00 00       	nop
 c8a:	00 00       	nop
 c8c:	00 00       	nop
 c8e:	00 1c       	adc	r0, r0
 c90:	03 00       	.word	0x0003	; ????
 c92:	00 01       	movw	r0, r0
 c94:	31 05       	cpc	r19, r1
 c96:	00 00       	nop
 c98:	10 c2       	rjmp	.+1056   	; 0x10ba <__data_load_end+0xc42>
 c9a:	02 00       	.word	0x0002	; ????
 c9c:	00 01       	movw	r0, r0
 c9e:	35 50       	subi	r19, 0x05	; 5
 ca0:	00 00       	nop
 ca2:	00 8c       	ldd	r0, Z+24	; 0x18
 ca4:	03 00       	.word	0x0003	; ????
 ca6:	00 1e       	adc	r0, r16
 ca8:	00 00       	nop
 caa:	00 00       	nop
 cac:	37 02       	muls	r19, r23
 cae:	00 00       	nop
 cb0:	00 08       	sbc	r0, r0
 cb2:	01 3a       	cpi	r16, 0xA1	; 161
 cb4:	04 00       	.word	0x0004	; ????
 cb6:	00 01       	movw	r0, r0
 cb8:	38 01       	movw	r6, r16
	...
 cc2:	03 92       	.word	0x9203	; ????
 cc4:	20 02       	muls	r18, r16
 cc6:	01 64       	ori	r16, 0x41	; 65
 cc8:	05 00       	.word	0x0005	; ????
 cca:	00 1a       	sub	r0, r16
 ccc:	c2 02       	muls	r28, r18
 cce:	00 00       	nop
 cd0:	01 38       	cpi	r16, 0x81	; 129
 cd2:	50 00       	.word	0x0050	; ????
 cd4:	00 00       	nop
 cd6:	0c 66       	ori	r16, 0x6C	; 108
 cd8:	93 01       	movw	r18, r6
 cda:	67 93       	lat	Z, r22
 cdc:	01 68       	ori	r16, 0x81	; 129
 cde:	93 01       	movw	r18, r6
 ce0:	69 93       	st	Y+, r22
 ce2:	01 00       	.word	0x0001	; ????
 ce4:	08 01       	movw	r0, r16
 ce6:	ee 04       	cpc	r14, r14
 ce8:	00 00       	nop
 cea:	01 39       	cpi	r16, 0x91	; 145
 cec:	01 00       	.word	0x0001	; ????
 cee:	00 00       	nop
 cf0:	00 00       	nop
 cf2:	00 00       	nop
 cf4:	00 03       	mulsu	r16, r16
 cf6:	92 20       	and	r9, r2
 cf8:	02 01       	movw	r0, r4
 cfa:	91 05       	cpc	r25, r1
 cfc:	00 00       	nop
 cfe:	1f 73       	andi	r17, 0x3F	; 63
 d00:	74 72       	andi	r23, 0x24	; 36
 d02:	00 01       	movw	r0, r0
 d04:	39 91       	ld	r19, Y+
 d06:	05 00       	.word	0x0005	; ????
 d08:	00 06       	cpc	r0, r16
 d0a:	68 93       	.word	0x9368	; ????
 d0c:	01 69       	ori	r16, 0x91	; 145
 d0e:	93 01       	movw	r18, r6
 d10:	00 0e       	add	r0, r16
 d12:	02 29       	or	r16, r2
 d14:	00 00       	nop
 d16:	00 20       	and	r0, r0
 d18:	01 d4       	rcall	.+2050   	; 0x151c <__stack+0x41d>
 d1a:	03 00       	.word	0x0003	; ????
 d1c:	00 01       	movw	r0, r0
 d1e:	3b 65       	ori	r19, 0x5B	; 91
 d20:	01 00       	.word	0x0001	; ????
 d22:	00 1a       	sub	r0, r16
 d24:	01 00       	.word	0x0001	; ????
 d26:	00 24       	eor	r0, r0
 d28:	01 00       	.word	0x0001	; ????
 d2a:	00 03       	mulsu	r16, r16
 d2c:	92 20       	and	r9, r2
 d2e:	02 01       	movw	r0, r4
 d30:	d1 05       	cpc	r29, r1
 d32:	00 00       	nop
 d34:	12 01       	movw	r2, r4
 d36:	0d 04       	cpc	r0, r13
 d38:	00 00       	nop
 d3a:	01 3c       	cpi	r16, 0xC1	; 193
 d3c:	65 01       	movw	r12, r10
 d3e:	00 00       	nop
 d40:	01 c7       	rjmp	.+3586   	; 0x1b44 <__stack+0xa45>
 d42:	05 00       	.word	0x0005	; ????
 d44:	00 13       	cpse	r16, r16
 d46:	00 1e       	adc	r0, r16
 d48:	1e 01       	movw	r2, r28
 d4a:	00 00       	nop
 d4c:	0a 06       	cpc	r0, r26
 d4e:	00 00       	nop
 d50:	00 17       	cp	r16, r16
 d52:	e1 05       	cpc	r30, r1
 d54:	00 00       	nop
 d56:	e1 05       	cpc	r30, r1
 d58:	00 00       	nop
 d5a:	18 30       	cpi	r17, 0x08	; 8
 d5c:	02 00       	.word	0x0002	; ????
 d5e:	00 04       	cpc	r0, r0
 d60:	00 21       	and	r16, r0
 d62:	29 00       	.word	0x0029	; ????
 d64:	00 00       	nop
 d66:	22 97       	sbiw	r28, 0x02	; 2
 d68:	04 00       	.word	0x0004	; ????
 d6a:	00 02       	muls	r16, r16
 d6c:	45 f8       	bld	r4, 5
 d6e:	05 00       	.word	0x0005	; ????
 d70:	00 01       	movw	r0, r0
 d72:	05 03       	mulsu	r16, r21
 d74:	06 01       	movw	r0, r12
 d76:	80 00       	.word	0x0080	; ????
 d78:	21 d1       	rcall	.+578    	; 0xfbc <__data_load_end+0xb44>
 d7a:	05 00       	.word	0x0005	; ????
 d7c:	00 23       	and	r16, r16
 d7e:	01 01       	movw	r0, r2
 d80:	b8 02       	muls	r27, r24
 d82:	00 00       	nop
 d84:	b8 02       	muls	r27, r24
 d86:	00 00       	nop
 d88:	05 00       	.word	0x0005	; ????
 d8a:	23 01       	movw	r4, r6
 d8c:	01 0d       	add	r16, r1
 d8e:	04 00       	.word	0x0004	; ????
 d90:	00 0d       	add	r16, r0
 d92:	04 00       	.word	0x0004	; ????
 d94:	00 01       	movw	r0, r0
 d96:	3c 00       	.word	0x003c	; ????
 d98:	ee 01       	movw	r28, r28
 d9a:	00 00       	nop
 d9c:	02 00       	.word	0x0002	; ????
 d9e:	1a 09       	sbc	r17, r10
 da0:	00 00       	nop
 da2:	04 01       	movw	r0, r8
 da4:	c8 02       	muls	r28, r24
 da6:	00 00       	nop
 da8:	0c 49       	sbci	r16, 0x9C	; 156
 daa:	05 00       	.word	0x0005	; ????
 dac:	00 98       	cbi	0x00, 0	; 0
	...
 db6:	00 00       	nop
 db8:	00 2d       	mov	r16, r0
 dba:	02 00       	.word	0x0002	; ????
 dbc:	00 02       	muls	r16, r16
 dbe:	05 04       	cpc	r0, r5
 dc0:	00 00       	nop
 dc2:	02 04       	cpc	r0, r2
 dc4:	30 00       	.word	0x0030	; ????
 dc6:	00 00       	nop
 dc8:	03 01       	movw	r0, r6
 dca:	08 98       	cbi	0x01, 0	; 1
 dcc:	03 00       	.word	0x0003	; ????
 dce:	00 03       	mulsu	r16, r16
 dd0:	01 06       	cpc	r0, r17
 dd2:	a1 03       	fmuls	r18, r17
 dd4:	00 00       	nop
 dd6:	02 76       	andi	r16, 0x62	; 98
 dd8:	05 00       	.word	0x0005	; ????
 dda:	00 02       	muls	r16, r16
 ddc:	06 49       	sbci	r16, 0x96	; 150
 dde:	00 00       	nop
 de0:	00 03       	mulsu	r16, r16
 de2:	02 07       	cpc	r16, r18
 de4:	ab 03       	fmulsu	r18, r19
 de6:	00 00       	nop
 de8:	03 02       	muls	r16, r19
 dea:	05 a1       	ldd	r16, Z+37	; 0x25
 dec:	04 00       	.word	0x0004	; ????
 dee:	00 03       	mulsu	r16, r16
 df0:	04 07       	cpc	r16, r20
 df2:	7d 03       	fmul	r23, r21
 df4:	00 00       	nop
 df6:	02 db       	rcall	.-2556   	; 0x3fc <free+0xa0>
 df8:	04 00       	.word	0x0004	; ????
 dfa:	00 02       	muls	r16, r16
 dfc:	09 69       	ori	r16, 0x99	; 153
 dfe:	00 00       	nop
 e00:	00 03       	mulsu	r16, r16
 e02:	04 05       	cpc	r16, r4
 e04:	69 04       	cpc	r6, r9
 e06:	00 00       	nop
 e08:	03 08       	sbc	r0, r3
 e0a:	07 78       	andi	r16, 0x87	; 135
 e0c:	03 00       	.word	0x0003	; ????
 e0e:	00 03       	mulsu	r16, r16
 e10:	08 05       	cpc	r16, r8
 e12:	64 04       	cpc	r6, r4
 e14:	00 00       	nop
 e16:	04 01       	movw	r0, r8
 e18:	21 05       	cpc	r18, r1
 e1a:	00 00       	nop
 e1c:	01 03       	mulsu	r16, r17
 e1e:	01 24       	eor	r0, r1
 e20:	01 00       	.word	0x0001	; ????
 e22:	00 f0       	brcs	.+0      	; 0xe24 <__data_load_end+0x9ac>
 e24:	01 00       	.word	0x0001	; ????
 e26:	00 b8       	out	0x00, r0	; 0
 e28:	03 00       	.word	0x0003	; ????
 e2a:	00 01       	movw	r0, r0
 e2c:	43 01       	movw	r8, r6
 e2e:	00 00       	nop
 e30:	05 09       	sbc	r16, r5
 e32:	05 00       	.word	0x0005	; ????
 e34:	00 01       	movw	r0, r0
 e36:	03 3e       	cpi	r16, 0xE3	; 227
 e38:	00 00       	nop
 e3a:	00 69       	ori	r16, 0x90	; 144
 e3c:	04 00       	.word	0x0004	; ????
 e3e:	00 05       	cpc	r16, r0
 e40:	19 05       	cpc	r17, r9
 e42:	00 00       	nop
 e44:	01 03       	mulsu	r16, r17
 e46:	43 01       	movw	r8, r6
 e48:	00 00       	nop
 e4a:	ac 04       	cpc	r10, r12
 e4c:	00 00       	nop
 e4e:	06 02       	muls	r16, r22
 e50:	05 00       	.word	0x0005	; ????
 e52:	00 01       	movw	r0, r0
 e54:	06 5e       	subi	r16, 0xE6	; 230
 e56:	00 00       	nop
 e58:	00 e4       	ldi	r16, 0x40	; 64
 e5a:	04 00       	.word	0x0004	; ????
 e5c:	00 07       	cpc	r16, r16
 e5e:	6d 69       	ori	r22, 0x9D	; 157
 e60:	64 00       	.word	0x0064	; ????
 e62:	01 08       	sbc	r0, r1
 e64:	3e 00       	.word	0x003e	; ????
 e66:	00 00       	nop
 e68:	02 05       	cpc	r16, r2
 e6a:	00 00       	nop
 e6c:	08 62       	ori	r16, 0x28	; 40
 e6e:	01 00       	.word	0x0001	; ????
 e70:	00 c2       	rjmp	.+1024   	; 0x1272 <__stack+0x173>
 e72:	01 00       	.word	0x0001	; ????
 e74:	00 30       	cpi	r16, 0x00	; 0
 e76:	01 00       	.word	0x0001	; ????
 e78:	00 07       	cpc	r16, r16
 e7a:	69 00       	.word	0x0069	; ????
 e7c:	01 09       	sbc	r16, r1
 e7e:	3e 00       	.word	0x003e	; ????
 e80:	00 00       	nop
 e82:	36 05       	cpc	r19, r6
 e84:	00 00       	nop
 e86:	09 62       	ori	r16, 0x29	; 41
 e88:	01 00       	.word	0x0001	; ????
 e8a:	00 c0       	rjmp	.+0      	; 0xe8c <__data_load_end+0xa14>
 e8c:	01 00       	.word	0x0001	; ????
 e8e:	00 07       	cpc	r16, r16
 e90:	6c 6f       	ori	r22, 0xFC	; 252
 e92:	77 00       	.word	0x0077	; ????
 e94:	01 0a       	sbc	r0, r17
 e96:	3e 00       	.word	0x003e	; ????
 e98:	00 00       	nop
 e9a:	7d 05       	cpc	r23, r13
 e9c:	00 00       	nop
 e9e:	06 14       	cp	r0, r6
 ea0:	05 00       	.word	0x0005	; ????
 ea2:	00 01       	movw	r0, r0
 ea4:	0b 3e       	cpi	r16, 0xEB	; 235
 ea6:	00 00       	nop
 ea8:	00 b1       	in	r16, 0x00	; 0
 eaa:	05 00       	.word	0x0005	; ????
 eac:	00 09       	sbc	r16, r0
 eae:	72 01       	movw	r14, r4
 eb0:	00 00       	nop
 eb2:	b6 01       	movw	r22, r12
 eb4:	00 00       	nop
 eb6:	06 f7       	brtc	.-64     	; 0xe78 <__data_load_end+0xa00>
 eb8:	04 00       	.word	0x0004	; ????
 eba:	00 01       	movw	r0, r0
 ebc:	0f 5e       	subi	r16, 0xEF	; 239
 ebe:	00 00       	nop
 ec0:	00 d9       	rcall	.-3584   	; 0xc2 <.do_clear_bss_start+0x6>
 ec2:	05 00       	.word	0x0005	; ????
 ec4:	00 00       	nop
 ec6:	00 00       	nop
 ec8:	0a 44       	sbci	r16, 0x4A	; 74
 eca:	01 00       	.word	0x0001	; ????
 ecc:	00 ca       	rjmp	.-3072   	; 0x2ce <malloc+0xa2>
 ece:	01 00       	.word	0x0001	; ????
 ed0:	00 0a       	sbc	r0, r16
 ed2:	c6 01       	movw	r24, r12
 ed4:	00 00       	nop
 ed6:	d7 01       	movw	r26, r14
 ed8:	00 00       	nop
 eda:	00 0b       	sbc	r16, r16
 edc:	02 5e       	subi	r16, 0xE2	; 226
 ede:	00 00       	nop
 ee0:	00 0c       	add	r0, r0
 ee2:	01 0d       	add	r16, r1
 ee4:	04 00       	.word	0x0004	; ????
 ee6:	00 01       	movw	r0, r0
 ee8:	1d f0       	brhs	.+6      	; 0xef0 <__data_load_end+0xa78>
 eea:	01 00       	.word	0x0001	; ????
 eec:	00 2c       	mov	r0, r0
 eee:	02 00       	.word	0x0002	; ????
 ef0:	00 03       	mulsu	r16, r16
 ef2:	92 20       	and	r9, r2
 ef4:	02 01       	movw	r0, r4
 ef6:	ca 01       	movw	r24, r20
 ef8:	00 00       	nop
 efa:	0d 09       	sbc	r16, r13
 efc:	05 00       	.word	0x0005	; ????
 efe:	00 01       	movw	r0, r0
 f00:	1e 3e       	cpi	r17, 0xEE	; 238
 f02:	00 00       	nop
 f04:	00 64       	ori	r16, 0x40	; 64
 f06:	06 19       	sub	r16, r6
 f08:	05 00       	.word	0x0005	; ????
 f0a:	00 01       	movw	r0, r0
 f0c:	20 43       	sbci	r18, 0x30	; 48
 f0e:	01 00       	.word	0x0001	; ????
 f10:	00 f7       	brcc	.-64     	; 0xed2 <__data_load_end+0xa5a>
 f12:	05 00       	.word	0x0005	; ????
 f14:	00 08       	sbc	r0, r0
 f16:	04 02       	muls	r16, r20
 f18:	00 00       	nop
 f1a:	1e 02       	muls	r17, r30
 f1c:	00 00       	nop
 f1e:	9a 01       	movw	r18, r20
 f20:	00 00       	nop
 f22:	06 7f       	andi	r16, 0xF6	; 246
 f24:	05 00       	.word	0x0005	; ????
 f26:	00 01       	movw	r0, r0
 f28:	22 25       	eor	r18, r2
 f2a:	00 00       	nop
 f2c:	00 1f       	adc	r16, r16
 f2e:	06 00       	.word	0x0006	; ????
 f30:	00 00       	nop
 f32:	0e f8       	.word	0xf80e	; ????
 f34:	01 00       	.word	0x0001	; ????
 f36:	00 e4       	ldi	r16, 0x40	; 64
 f38:	01 00       	.word	0x0001	; ????
 f3a:	00 b4       	in	r0, 0x20	; 32
 f3c:	01 00       	.word	0x0001	; ????
 f3e:	00 0f       	add	r16, r16
 f40:	06 68       	ori	r16, 0x86	; 134
 f42:	93 01       	movw	r18, r6
 f44:	69 93       	st	Y+, r22
 f46:	01 03       	mulsu	r16, r17
 f48:	0a 90       	ld	r0, -Y
 f4a:	01 00       	.word	0x0001	; ????
 f4c:	10 2a       	or	r1, r16
 f4e:	02 00       	.word	0x0002	; ????
 f50:	00 7e       	andi	r16, 0xE0	; 224
 f52:	00 00       	nop
 f54:	00 0f       	add	r16, r16
 f56:	06 68       	ori	r16, 0x86	; 134
 f58:	93 01       	movw	r18, r6
 f5a:	69 93       	st	Y+, r22
 f5c:	01 02       	muls	r16, r17
 f5e:	08 64       	ori	r16, 0x48	; 72
 f60:	00 00       	nop
 f62:	11 01       	movw	r2, r2
 f64:	01 72       	andi	r16, 0x21	; 33
 f66:	04 00       	.word	0x0004	; ????
 f68:	00 72       	andi	r16, 0x20	; 32
 f6a:	04 00       	.word	0x0004	; ????
 f6c:	00 02       	muls	r16, r16
 f6e:	0e 11       	cpse	r16, r14
 f70:	01 01       	movw	r0, r2
 f72:	46 03       	mulsu	r20, r22
 f74:	00 00       	nop
 f76:	46 03       	mulsu	r20, r22
 f78:	00 00       	nop
 f7a:	02 0f       	add	r16, r18
 f7c:	11 01       	movw	r2, r2
 f7e:	01 84       	ldd	r0, Z+9	; 0x09
 f80:	05 00       	.word	0x0005	; ????
 f82:	00 84       	ldd	r0, Z+8	; 0x08
 f84:	05 00       	.word	0x0005	; ????
 f86:	00 02       	muls	r16, r16
 f88:	0d 00       	.word	0x000d	; ????

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
 720:	0e 1b       	sub	r16, r30
 722:	0e 55       	subi	r16, 0x5E	; 94
 724:	06 11       	cpse	r16, r6
 726:	01 52       	subi	r16, 0x21	; 33
 728:	01 10       	cpse	r0, r1
 72a:	06 00       	.word	0x0006	; ????
 72c:	00 02       	muls	r16, r16
 72e:	16 00       	.word	0x0016	; ????
 730:	03 0e       	add	r0, r19
 732:	3a 0b       	sbc	r19, r26
 734:	3b 0b       	sbc	r19, r27
 736:	49 13       	cpse	r20, r25
 738:	00 00       	nop
 73a:	03 24       	eor	r0, r3
 73c:	00 0b       	sbc	r16, r16
 73e:	0b 3e       	cpi	r16, 0xEB	; 235
 740:	0b 03       	fmul	r16, r19
 742:	0e 00       	.word	0x000e	; ????
 744:	00 04       	cpc	r0, r0
 746:	0f 00       	.word	0x000f	; ????
 748:	0b 0b       	sbc	r16, r27
 74a:	03 0e       	add	r0, r19
 74c:	00 00       	nop
 74e:	05 2e       	mov	r0, r21
 750:	01 03       	mulsu	r16, r17
 752:	0e 3a       	cpi	r16, 0xAE	; 174
 754:	0b 3b       	cpi	r16, 0xBB	; 187
 756:	0b 27       	eor	r16, r27
 758:	0c 20       	and	r0, r12
 75a:	0b 01       	movw	r0, r22
 75c:	13 00       	.word	0x0013	; ????
 75e:	00 06       	cpc	r0, r16
 760:	05 00       	.word	0x0005	; ????
 762:	03 08       	sbc	r0, r3
 764:	3a 0b       	sbc	r19, r26
 766:	3b 0b       	sbc	r19, r27
 768:	49 13       	cpse	r20, r25
 76a:	00 00       	nop
 76c:	07 2e       	mov	r0, r23
 76e:	00 03       	mulsu	r16, r16
 770:	0e 3a       	cpi	r16, 0xAE	; 174
 772:	0b 3b       	cpi	r16, 0xBB	; 187
 774:	0b 20       	and	r0, r11
 776:	0b 00       	.word	0x000b	; ????
 778:	00 08       	sbc	r0, r0
 77a:	2e 01       	movw	r4, r28
 77c:	3f 0c       	add	r3, r15
 77e:	03 0e       	add	r0, r19
 780:	3a 0b       	sbc	r19, r26
 782:	3b 0b       	sbc	r19, r27
 784:	27 0c       	add	r2, r7
 786:	11 01       	movw	r2, r2
 788:	12 01       	movw	r2, r4
 78a:	40 0a       	sbc	r4, r16
 78c:	97 42       	sbci	r25, 0x27	; 39
 78e:	0c 01       	movw	r0, r24
 790:	13 00       	.word	0x0013	; ????
 792:	00 09       	sbc	r16, r0
 794:	05 00       	.word	0x0005	; ????
 796:	03 08       	sbc	r0, r3
 798:	3a 0b       	sbc	r19, r26
 79a:	3b 0b       	sbc	r19, r27
 79c:	49 13       	cpse	r20, r25
 79e:	02 06       	cpc	r0, r18
 7a0:	00 00       	nop
 7a2:	0a 34       	cpi	r16, 0x4A	; 74
 7a4:	00 03       	mulsu	r16, r16
 7a6:	08 3a       	cpi	r16, 0xA8	; 168
 7a8:	0b 3b       	cpi	r16, 0xBB	; 187
 7aa:	0b 49       	sbci	r16, 0x9B	; 155
 7ac:	13 02       	muls	r17, r19
 7ae:	06 00       	.word	0x0006	; ????
 7b0:	00 0b       	sbc	r16, r16
 7b2:	1d 01       	movw	r2, r26
 7b4:	31 13       	cpse	r19, r17
 7b6:	52 01       	movw	r10, r4
 7b8:	55 06       	cpc	r5, r21
 7ba:	58 0b       	sbc	r21, r24
 7bc:	59 0b       	sbc	r21, r25
 7be:	01 13       	cpse	r16, r17
 7c0:	00 00       	nop
 7c2:	0c 05       	cpc	r16, r12
 7c4:	00 31       	cpi	r16, 0x10	; 16
 7c6:	13 02       	muls	r17, r19
 7c8:	06 00       	.word	0x0006	; ????
 7ca:	00 0d       	add	r16, r0
 7cc:	1d 01       	movw	r2, r26
 7ce:	31 13       	cpse	r19, r17
 7d0:	52 01       	movw	r10, r4
 7d2:	55 06       	cpc	r5, r21
 7d4:	58 0b       	sbc	r21, r24
 7d6:	59 0b       	sbc	r21, r25
 7d8:	00 00       	nop
 7da:	0e 0f       	add	r16, r30
 7dc:	00 0b       	sbc	r16, r16
 7de:	0b 49       	sbci	r16, 0x9B	; 155
 7e0:	13 00       	.word	0x0013	; ????
 7e2:	00 0f       	add	r16, r16
 7e4:	24 00       	.word	0x0024	; ????
 7e6:	0b 0b       	sbc	r16, r27
 7e8:	3e 0b       	sbc	r19, r30
 7ea:	03 08       	sbc	r0, r3
 7ec:	00 00       	nop
 7ee:	10 05       	cpc	r17, r0
 7f0:	00 03       	mulsu	r16, r16
 7f2:	0e 3a       	cpi	r16, 0xAE	; 174
 7f4:	0b 3b       	cpi	r16, 0xBB	; 187
 7f6:	0b 49       	sbci	r16, 0x9B	; 155
 7f8:	13 02       	muls	r17, r19
 7fa:	06 00       	.word	0x0006	; ????
 7fc:	00 11       	cpse	r16, r0
 7fe:	34 00       	.word	0x0034	; ????
 800:	03 0e       	add	r0, r19
 802:	3a 0b       	sbc	r19, r26
 804:	3b 0b       	sbc	r19, r27
 806:	49 13       	cpse	r20, r25
 808:	02 0a       	sbc	r0, r18
 80a:	00 00       	nop
 80c:	12 2e       	mov	r1, r18
 80e:	01 3f       	cpi	r16, 0xF1	; 241
 810:	0c 03       	fmul	r16, r20
 812:	0e 3a       	cpi	r16, 0xAE	; 174
 814:	0b 3b       	cpi	r16, 0xBB	; 187
 816:	0b 49       	sbci	r16, 0x9B	; 155
 818:	13 3c       	cpi	r17, 0xC3	; 195
 81a:	0c 01       	movw	r0, r24
 81c:	13 00       	.word	0x0013	; ????
 81e:	00 13       	cpse	r16, r16
 820:	18 00       	.word	0x0018	; ????
 822:	00 00       	nop
 824:	14 89       	ldd	r17, Z+20	; 0x14
 826:	82 01       	movw	r16, r4
 828:	01 11       	cpse	r16, r1
 82a:	01 31       	cpi	r16, 0x11	; 17
 82c:	13 01       	movw	r2, r6
 82e:	13 00       	.word	0x0013	; ????
 830:	00 15       	cp	r16, r0
 832:	8a 82       	std	Y+2, r8	; 0x02
 834:	01 00       	.word	0x0001	; ????
 836:	02 0a       	sbc	r0, r18
 838:	91 42       	sbci	r25, 0x21	; 33
 83a:	0a 00       	.word	0x000a	; ????
 83c:	00 16       	cp	r0, r16
 83e:	89 82       	std	Y+1, r8	; 0x01
 840:	01 01       	movw	r0, r2
 842:	11 01       	movw	r2, r2
 844:	31 13       	cpse	r19, r17
 846:	00 00       	nop
 848:	17 01       	movw	r2, r14
 84a:	01 49       	sbci	r16, 0x91	; 145
 84c:	13 01       	movw	r2, r6
 84e:	13 00       	.word	0x0013	; ????
 850:	00 18       	sub	r0, r0
 852:	21 00       	.word	0x0021	; ????
 854:	49 13       	cpse	r20, r25
 856:	2f 0b       	sbc	r18, r31
 858:	00 00       	nop
 85a:	19 2e       	mov	r1, r25
 85c:	01 3f       	cpi	r16, 0xF1	; 241
 85e:	0c 03       	fmul	r16, r20
 860:	0e 3a       	cpi	r16, 0xAE	; 174
 862:	0b 3b       	cpi	r16, 0xBB	; 187
 864:	0b 27       	eor	r16, r27
 866:	0c 11       	cpse	r16, r12
 868:	01 12       	cpse	r0, r17
 86a:	01 40       	sbci	r16, 0x01	; 1
 86c:	06 97       	sbiw	r24, 0x06	; 6
 86e:	42 0c       	add	r4, r2
 870:	01 13       	cpse	r16, r17
 872:	00 00       	nop
 874:	1a 05       	cpc	r17, r10
 876:	00 03       	mulsu	r16, r16
 878:	0e 3a       	cpi	r16, 0xAE	; 174
 87a:	0b 3b       	cpi	r16, 0xBB	; 187
 87c:	0b 49       	sbci	r16, 0x9B	; 155
 87e:	13 02       	muls	r17, r19
 880:	0a 00       	.word	0x000a	; ????
 882:	00 1b       	sub	r16, r16
 884:	2e 01       	movw	r4, r28
 886:	3f 0c       	add	r3, r15
 888:	03 0e       	add	r0, r19
 88a:	3a 0b       	sbc	r19, r26
 88c:	3b 0b       	sbc	r19, r27
 88e:	11 01       	movw	r2, r2
 890:	12 01       	movw	r2, r4
 892:	40 0a       	sbc	r4, r16
 894:	97 42       	sbci	r25, 0x27	; 39
 896:	0c 01       	movw	r0, r24
 898:	13 00       	.word	0x0013	; ????
 89a:	00 1c       	adc	r0, r0
 89c:	1d 01       	movw	r2, r26
 89e:	31 13       	cpse	r19, r17
 8a0:	11 01       	movw	r2, r2
 8a2:	12 01       	movw	r2, r4
 8a4:	58 0b       	sbc	r21, r24
 8a6:	59 0b       	sbc	r21, r25
 8a8:	01 13       	cpse	r16, r17
 8aa:	00 00       	nop
 8ac:	1d 1d       	adc	r17, r13
 8ae:	01 31       	cpi	r16, 0x11	; 17
 8b0:	13 11       	cpse	r17, r3
 8b2:	01 12       	cpse	r0, r17
 8b4:	01 58       	subi	r16, 0x81	; 129
 8b6:	0b 59       	subi	r16, 0x9B	; 155
 8b8:	0b 00       	.word	0x000b	; ????
 8ba:	00 1e       	adc	r0, r16
 8bc:	89 82       	std	Y+1, r8	; 0x01
 8be:	01 00       	.word	0x0001	; ????
 8c0:	11 01       	movw	r2, r2
 8c2:	31 13       	cpse	r19, r17
 8c4:	00 00       	nop
 8c6:	1f 05       	cpc	r17, r15
 8c8:	00 03       	mulsu	r16, r16
 8ca:	08 3a       	cpi	r16, 0xA8	; 168
 8cc:	0b 3b       	cpi	r16, 0xBB	; 187
 8ce:	0b 49       	sbci	r16, 0x9B	; 155
 8d0:	13 02       	muls	r17, r19
 8d2:	0a 00       	.word	0x000a	; ????
 8d4:	00 20       	and	r0, r0
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
 8ee:	00 21       	and	r16, r0
 8f0:	35 00       	.word	0x0035	; ????
 8f2:	49 13       	cpse	r20, r25
 8f4:	00 00       	nop
 8f6:	22 34       	cpi	r18, 0x42	; 66
 8f8:	00 03       	mulsu	r16, r16
 8fa:	0e 3a       	cpi	r16, 0xAE	; 174
 8fc:	0b 3b       	cpi	r16, 0xBB	; 187
 8fe:	0b 49       	sbci	r16, 0x9B	; 155
 900:	13 3f       	cpi	r17, 0xF3	; 243
 902:	0c 02       	muls	r16, r28
 904:	0a 00       	.word	0x000a	; ????
 906:	00 23       	and	r16, r16
 908:	2e 00       	.word	0x002e	; ????
 90a:	3f 0c       	add	r3, r15
 90c:	3c 0c       	add	r3, r12
 90e:	87 40       	sbci	r24, 0x07	; 7
 910:	0e 03       	fmul	r16, r22
 912:	0e 3a       	cpi	r16, 0xAE	; 174
 914:	0b 3b       	cpi	r16, 0xBB	; 187
 916:	0b 00       	.word	0x000b	; ????
 918:	00 00       	nop
 91a:	01 11       	cpse	r16, r1
 91c:	01 25       	eor	r16, r1
 91e:	0e 13       	cpse	r16, r30
 920:	0b 03       	fmul	r16, r19
 922:	0e 55       	subi	r16, 0x5E	; 94
 924:	06 11       	cpse	r16, r6
 926:	01 52       	subi	r16, 0x21	; 33
 928:	01 10       	cpse	r0, r1
 92a:	06 00       	.word	0x0006	; ????
 92c:	00 02       	muls	r16, r16
 92e:	16 00       	.word	0x0016	; ????
 930:	03 0e       	add	r0, r19
 932:	3a 0b       	sbc	r19, r26
 934:	3b 0b       	sbc	r19, r27
 936:	49 13       	cpse	r20, r25
 938:	00 00       	nop
 93a:	03 24       	eor	r0, r3
 93c:	00 0b       	sbc	r16, r16
 93e:	0b 3e       	cpi	r16, 0xEB	; 235
 940:	0b 03       	fmul	r16, r19
 942:	0e 00       	.word	0x000e	; ????
 944:	00 04       	cpc	r0, r0
 946:	2e 01       	movw	r4, r28
 948:	3f 0c       	add	r3, r15
 94a:	03 0e       	add	r0, r19
 94c:	3a 0b       	sbc	r19, r26
 94e:	3b 0b       	sbc	r19, r27
 950:	27 0c       	add	r2, r7
 952:	11 01       	movw	r2, r2
 954:	12 01       	movw	r2, r4
 956:	40 06       	cpc	r4, r16
 958:	97 42       	sbci	r25, 0x27	; 39
 95a:	0c 01       	movw	r0, r24
 95c:	13 00       	.word	0x0013	; ????
 95e:	00 05       	cpc	r16, r0
 960:	05 00       	.word	0x0005	; ????
 962:	03 0e       	add	r0, r19
 964:	3a 0b       	sbc	r19, r26
 966:	3b 0b       	sbc	r19, r27
 968:	49 13       	cpse	r20, r25
 96a:	02 06       	cpc	r0, r18
 96c:	00 00       	nop
 96e:	06 34       	cpi	r16, 0x46	; 70
 970:	00 03       	mulsu	r16, r16
 972:	0e 3a       	cpi	r16, 0xAE	; 174
 974:	0b 3b       	cpi	r16, 0xBB	; 187
 976:	0b 49       	sbci	r16, 0x9B	; 155
 978:	13 02       	muls	r17, r19
 97a:	06 00       	.word	0x0006	; ????
 97c:	00 07       	cpc	r16, r16
 97e:	34 00       	.word	0x0034	; ????
 980:	03 08       	sbc	r0, r3
 982:	3a 0b       	sbc	r19, r26
 984:	3b 0b       	sbc	r19, r27
 986:	49 13       	cpse	r20, r25
 988:	02 06       	cpc	r0, r18
 98a:	00 00       	nop
 98c:	08 0b       	sbc	r16, r24
 98e:	01 11       	cpse	r16, r1
 990:	01 12       	cpse	r0, r17
 992:	01 01       	movw	r0, r2
 994:	13 00       	.word	0x0013	; ????
 996:	00 09       	sbc	r16, r0
 998:	0b 01       	movw	r0, r22
 99a:	11 01       	movw	r2, r2
 99c:	12 01       	movw	r2, r4
 99e:	00 00       	nop
 9a0:	0a 89       	ldd	r16, Y+18	; 0x12
 9a2:	82 01       	movw	r16, r4
 9a4:	00 11       	cpse	r16, r0
 9a6:	01 31       	cpi	r16, 0x11	; 17
 9a8:	13 00       	.word	0x0013	; ????
 9aa:	00 0b       	sbc	r16, r16
 9ac:	0f 00       	.word	0x000f	; ????
 9ae:	0b 0b       	sbc	r16, r27
 9b0:	49 13       	cpse	r20, r25
 9b2:	00 00       	nop
 9b4:	0c 2e       	mov	r0, r28
 9b6:	01 3f       	cpi	r16, 0xF1	; 241
 9b8:	0c 03       	fmul	r16, r20
 9ba:	0e 3a       	cpi	r16, 0xAE	; 174
 9bc:	0b 3b       	cpi	r16, 0xBB	; 187
 9be:	0b 11       	cpse	r16, r11
 9c0:	01 12       	cpse	r0, r17
 9c2:	01 40       	sbci	r16, 0x01	; 1
 9c4:	0a 97       	sbiw	r24, 0x0a	; 10
 9c6:	42 0c       	add	r4, r2
 9c8:	01 13       	cpse	r16, r17
 9ca:	00 00       	nop
 9cc:	0d 34       	cpi	r16, 0x4D	; 77
 9ce:	00 03       	mulsu	r16, r16
 9d0:	0e 3a       	cpi	r16, 0xAE	; 174
 9d2:	0b 3b       	cpi	r16, 0xBB	; 187
 9d4:	0b 49       	sbci	r16, 0x9B	; 155
 9d6:	13 1c       	adc	r1, r3
 9d8:	0b 00       	.word	0x000b	; ????
 9da:	00 0e       	add	r0, r16
 9dc:	89 82       	std	Y+1, r8	; 0x01
 9de:	01 01       	movw	r0, r2
 9e0:	11 01       	movw	r2, r2
 9e2:	31 13       	cpse	r19, r17
 9e4:	01 13       	cpse	r16, r17
 9e6:	00 00       	nop
 9e8:	0f 8a       	std	Y+23, r0	; 0x17
 9ea:	82 01       	movw	r16, r4
 9ec:	00 02       	muls	r16, r16
 9ee:	0a 91       	ld	r16, -Y
 9f0:	42 0a       	sbc	r4, r18
 9f2:	00 00       	nop
 9f4:	10 89       	ldd	r17, Z+16	; 0x10
 9f6:	82 01       	movw	r16, r4
 9f8:	01 11       	cpse	r16, r1
 9fa:	01 31       	cpi	r16, 0x11	; 17
 9fc:	13 00       	.word	0x0013	; ????
 9fe:	00 11       	cpse	r16, r0
 a00:	2e 00       	.word	0x002e	; ????
 a02:	3f 0c       	add	r3, r15
 a04:	3c 0c       	add	r3, r12
 a06:	87 40       	sbci	r24, 0x07	; 7
 a08:	0e 03       	fmul	r16, r22
 a0a:	0e 3a       	cpi	r16, 0xAE	; 174
 a0c:	0b 3b       	cpi	r16, 0xBB	; 187
 a0e:	0b 00       	.word	0x000b	; ????
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
  1a:	0f 02       	muls	r16, r31
  1c:	00 00       	nop
  1e:	02 00       	.word	0x0002	; ????
  20:	9b 00       	.word	0x009b	; ????
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
  5e:	67 63       	ori	r22, 0x37	; 55
  60:	63 2f       	mov	r22, r19
  62:	61 76       	andi	r22, 0x61	; 97
  64:	72 2f       	mov	r23, r18
  66:	35 2e       	mov	r3, r21
  68:	34 2e       	mov	r3, r20
  6a:	30 2f       	mov	r19, r16
  6c:	69 6e       	ori	r22, 0xE9	; 233
  6e:	63 6c       	ori	r22, 0xC3	; 195
  70:	75 64       	ori	r23, 0x45	; 69
  72:	65 00       	.word	0x0065	; ????
  74:	00 62       	ori	r16, 0x20	; 32
  76:	65 6e       	ori	r22, 0xE5	; 229
  78:	63 68       	ori	r22, 0x83	; 131
  7a:	6d 61       	ori	r22, 0x1D	; 29
  7c:	72 6b       	ori	r23, 0xB2	; 178
  7e:	2e 63       	ori	r18, 0x3E	; 62
  80:	00 01       	movw	r0, r0
  82:	00 00       	nop
  84:	41 76       	andi	r20, 0x61	; 97
  86:	72 6f       	ori	r23, 0xF2	; 242
  88:	72 61       	ori	r23, 0x12	; 18
  8a:	50 72       	andi	r21, 0x20	; 32
  8c:	69 6e       	ori	r22, 0xE9	; 233
  8e:	74 2e       	mov	r7, r20
  90:	68 00       	.word	0x0068	; ????
  92:	01 00       	.word	0x0001	; ????
  94:	00 62       	ori	r16, 0x20	; 32
  96:	65 6e       	ori	r22, 0xE5	; 229
  98:	63 68       	ori	r22, 0x83	; 131
  9a:	6d 61       	ori	r22, 0x1D	; 29
  9c:	72 6b       	ori	r23, 0xB2	; 178
  9e:	2e 68       	ori	r18, 0x8E	; 142
  a0:	00 01       	movw	r0, r0
  a2:	00 00       	nop
  a4:	73 74       	andi	r23, 0x43	; 67
  a6:	64 61       	ori	r22, 0x14	; 20
  a8:	72 67       	ori	r23, 0x72	; 114
  aa:	2e 68       	ori	r18, 0x8E	; 142
  ac:	00 02       	muls	r16, r16
  ae:	00 00       	nop
  b0:	3c 62       	ori	r19, 0x2C	; 44
  b2:	75 69       	ori	r23, 0x95	; 149
  b4:	6c 74       	andi	r22, 0x4C	; 76
  b6:	2d 69       	ori	r18, 0x9D	; 157
  b8:	6e 3e       	cpi	r22, 0xEE	; 238
  ba:	00 00       	nop
  bc:	00 00       	nop
  be:	00 00       	nop
  c0:	05 02       	muls	r16, r21
  c2:	00 00       	nop
  c4:	00 00       	nop
  c6:	14 03       	mulsu	r17, r20
  c8:	02 09       	sbc	r16, r2
  ca:	00 00       	nop
  cc:	01 04       	cpc	r0, r1
  ce:	02 03       	mulsu	r16, r18
  d0:	da 00       	.word	0x00da	; ????
  d2:	09 00       	.word	0x0009	; ????
  d4:	00 01       	movw	r0, r0
  d6:	03 7c       	andi	r16, 0xC3	; 195
  d8:	09 00       	.word	0x0009	; ????
  da:	00 01       	movw	r0, r0
  dc:	04 01       	movw	r0, r8
  de:	03 ab       	std	Z+51, r16	; 0x33
  e0:	7f 09       	sbc	r23, r15
  e2:	00 00       	nop
  e4:	01 04       	cpc	r0, r1
  e6:	02 03       	mulsu	r16, r18
  e8:	d5 00       	.word	0x00d5	; ????
  ea:	09 00       	.word	0x0009	; ????
  ec:	00 01       	movw	r0, r0
  ee:	03 04       	cpc	r0, r3
  f0:	09 00       	.word	0x0009	; ????
  f2:	00 01       	movw	r0, r0
  f4:	03 7c       	andi	r16, 0xC3	; 195
  f6:	09 00       	.word	0x0009	; ????
  f8:	00 01       	movw	r0, r0
  fa:	04 01       	movw	r0, r8
  fc:	00 02       	muls	r16, r16
  fe:	04 02       	muls	r16, r20
 100:	03 aa       	std	Z+51, r0	; 0x33
 102:	7f 09       	sbc	r23, r15
 104:	00 00       	nop
 106:	01 09       	sbc	r16, r1
 108:	00 00       	nop
 10a:	00 01       	movw	r0, r0
 10c:	01 00       	.word	0x0001	; ????
 10e:	05 02       	muls	r16, r21
 110:	00 00       	nop
 112:	00 00       	nop
 114:	03 11       	cpse	r16, r3
 116:	01 03       	mulsu	r16, r17
 118:	02 09       	sbc	r16, r2
 11a:	00 00       	nop
 11c:	01 03       	mulsu	r16, r17
 11e:	01 09       	sbc	r16, r1
 120:	00 00       	nop
 122:	01 09       	sbc	r16, r1
 124:	00 00       	nop
 126:	00 01       	movw	r0, r0
 128:	01 00       	.word	0x0001	; ????
 12a:	05 02       	muls	r16, r21
 12c:	00 00       	nop
 12e:	00 00       	nop
 130:	03 18       	sub	r0, r3
 132:	01 03       	mulsu	r16, r17
 134:	04 09       	sbc	r16, r4
 136:	00 00       	nop
 138:	01 03       	mulsu	r16, r17
 13a:	02 09       	sbc	r16, r2
 13c:	00 00       	nop
 13e:	01 09       	sbc	r16, r1
 140:	00 00       	nop
 142:	00 01       	movw	r0, r0
 144:	01 00       	.word	0x0001	; ????
 146:	05 02       	muls	r16, r21
 148:	ce 00       	.word	0x00ce	; ????
 14a:	00 00       	nop
 14c:	03 22       	and	r0, r19
 14e:	01 04       	cpc	r0, r1
 150:	02 03       	mulsu	r16, r18
 152:	3f 09       	sbc	r19, r15
 154:	00 00       	nop
 156:	01 03       	mulsu	r16, r17
 158:	7c 09       	sbc	r23, r12
 15a:	08 00       	.word	0x0008	; ????
 15c:	01 03       	mulsu	r16, r17
 15e:	04 09       	sbc	r16, r4
 160:	04 00       	.word	0x0004	; ????
 162:	01 03       	mulsu	r16, r17
 164:	7c 09       	sbc	r23, r12
 166:	04 00       	.word	0x0004	; ????
 168:	01 03       	mulsu	r16, r17
 16a:	04 09       	sbc	r16, r4
 16c:	02 00       	.word	0x0002	; ????
 16e:	01 03       	mulsu	r16, r17
 170:	7c 09       	sbc	r23, r12
 172:	04 00       	.word	0x0004	; ????
 174:	01 03       	mulsu	r16, r17
 176:	04 09       	sbc	r16, r4
 178:	02 00       	.word	0x0002	; ????
 17a:	01 03       	mulsu	r16, r17
 17c:	7c 09       	sbc	r23, r12
 17e:	04 00       	.word	0x0004	; ????
 180:	01 03       	mulsu	r16, r17
 182:	04 09       	sbc	r16, r4
 184:	02 00       	.word	0x0002	; ????
 186:	01 03       	mulsu	r16, r17
 188:	7c 09       	sbc	r23, r12
 18a:	02 00       	.word	0x0002	; ????
 18c:	01 09       	sbc	r16, r1
 18e:	08 00       	.word	0x0008	; ????
 190:	00 01       	movw	r0, r0
 192:	01 00       	.word	0x0001	; ????
 194:	05 02       	muls	r16, r21
 196:	f6 00       	.word	0x00f6	; ????
 198:	00 00       	nop
 19a:	03 2b       	or	r16, r19
 19c:	01 04       	cpc	r0, r1
 19e:	02 03       	mulsu	r16, r18
 1a0:	36 09       	sbc	r19, r6
 1a2:	00 00       	nop
 1a4:	01 03       	mulsu	r16, r17
 1a6:	7c 09       	sbc	r23, r12
 1a8:	08 00       	.word	0x0008	; ????
 1aa:	01 03       	mulsu	r16, r17
 1ac:	04 09       	sbc	r16, r4
 1ae:	04 00       	.word	0x0004	; ????
 1b0:	01 03       	mulsu	r16, r17
 1b2:	7c 09       	sbc	r23, r12
 1b4:	04 00       	.word	0x0004	; ????
 1b6:	01 03       	mulsu	r16, r17
 1b8:	04 09       	sbc	r16, r4
 1ba:	02 00       	.word	0x0002	; ????
 1bc:	01 03       	mulsu	r16, r17
 1be:	7c 09       	sbc	r23, r12
 1c0:	04 00       	.word	0x0004	; ????
 1c2:	01 03       	mulsu	r16, r17
 1c4:	04 09       	sbc	r16, r4
 1c6:	02 00       	.word	0x0002	; ????
 1c8:	01 03       	mulsu	r16, r17
 1ca:	7c 09       	sbc	r23, r12
 1cc:	04 00       	.word	0x0004	; ????
 1ce:	01 09       	sbc	r16, r1
 1d0:	08 00       	.word	0x0008	; ????
 1d2:	00 01       	movw	r0, r0
 1d4:	01 00       	.word	0x0001	; ????
 1d6:	05 02       	muls	r16, r21
 1d8:	00 00       	nop
 1da:	00 00       	nop
 1dc:	03 34       	cpi	r16, 0x43	; 67
 1de:	01 03       	mulsu	r16, r17
 1e0:	01 09       	sbc	r16, r1
 1e2:	00 00       	nop
 1e4:	01 03       	mulsu	r16, r17
 1e6:	01 09       	sbc	r16, r1
 1e8:	00 00       	nop
 1ea:	01 09       	sbc	r16, r1
 1ec:	00 00       	nop
 1ee:	00 01       	movw	r0, r0
 1f0:	01 00       	.word	0x0001	; ????
 1f2:	05 02       	muls	r16, r21
 1f4:	00 00       	nop
 1f6:	00 00       	nop
 1f8:	03 37       	cpi	r16, 0x73	; 115
 1fa:	01 09       	sbc	r16, r1
 1fc:	00 00       	nop
 1fe:	00 01       	movw	r0, r0
 200:	01 00       	.word	0x0001	; ????
 202:	05 02       	muls	r16, r21
 204:	00 00       	nop
 206:	00 00       	nop
 208:	03 38       	cpi	r16, 0x83	; 131
 20a:	01 09       	sbc	r16, r1
 20c:	00 00       	nop
 20e:	00 01       	movw	r0, r0
 210:	01 00       	.word	0x0001	; ????
 212:	05 02       	muls	r16, r21
 214:	1a 01       	movw	r2, r20
 216:	00 00       	nop
 218:	03 3a       	cpi	r16, 0xA3	; 163
 21a:	01 03       	mulsu	r16, r17
 21c:	01 09       	sbc	r16, r1
 21e:	00 00       	nop
 220:	01 03       	mulsu	r16, r17
 222:	01 09       	sbc	r16, r1
 224:	04 00       	.word	0x0004	; ????
 226:	01 09       	sbc	r16, r1
 228:	06 00       	.word	0x0006	; ????
 22a:	00 01       	movw	r0, r0
 22c:	01 f7       	brne	.-64     	; 0x1ee <rtcbenchmark_measure_native_performance+0xca>
 22e:	00 00       	nop
 230:	00 02       	muls	r16, r16
 232:	00 4f       	sbci	r16, 0xF0	; 240
 234:	00 00       	nop
 236:	00 02       	muls	r16, r16
 238:	01 fb       	bst	r16, 1
 23a:	0e 0a       	sbc	r0, r30
 23c:	00 01       	movw	r0, r0
 23e:	01 01       	movw	r0, r2
 240:	01 00       	.word	0x0001	; ????
 242:	00 00       	nop
 244:	01 2f       	mov	r16, r17
 246:	68 6f       	ori	r22, 0xF8	; 248
 248:	6d 65       	ori	r22, 0x5D	; 93
 24a:	2f 66       	ori	r18, 0x6F	; 111
 24c:	61 6e       	ori	r22, 0xE1	; 225
 24e:	68 63       	ori	r22, 0x38	; 56
 250:	2f 77       	andi	r18, 0x7F	; 127
 252:	61 73       	andi	r22, 0x31	; 49
 254:	6d 2d       	mov	r22, r13
 256:	61 6f       	ori	r22, 0xF1	; 241
 258:	74 2f       	mov	r23, r20
 25a:	61 70       	andi	r22, 0x01	; 1
 25c:	70 2f       	mov	r23, r16
 25e:	62 65       	ori	r22, 0x52	; 82
 260:	6e 63       	ori	r22, 0x3E	; 62
 262:	68 6d       	ori	r22, 0xD8	; 216
 264:	61 72       	andi	r22, 0x21	; 33
 266:	6b 00       	.word	0x006b	; ????
 268:	00 62       	ori	r16, 0x20	; 32
 26a:	69 6e       	ori	r22, 0xE9	; 233
 26c:	73 72       	andi	r23, 0x23	; 35
 26e:	63 68       	ori	r22, 0x83	; 131
 270:	2e 63       	ori	r18, 0x3E	; 62
 272:	00 01       	movw	r0, r0
 274:	00 00       	nop
 276:	62 65       	ori	r22, 0x52	; 82
 278:	6e 63       	ori	r22, 0x3E	; 62
 27a:	68 6d       	ori	r22, 0xD8	; 216
 27c:	61 72       	andi	r22, 0x21	; 33
 27e:	6b 2e       	mov	r6, r27
 280:	68 00       	.word	0x0068	; ????
 282:	01 00       	.word	0x0001	; ????
 284:	00 00       	nop
 286:	00 05       	cpc	r16, r0
 288:	02 24       	eor	r0, r2
 28a:	01 00       	.word	0x0001	; ????
 28c:	00 11       	cpse	r16, r0
 28e:	03 01       	movw	r0, r6
 290:	09 1c       	adc	r0, r9
 292:	00 01       	movw	r0, r0
 294:	03 02       	muls	r16, r19
 296:	09 04       	cpc	r0, r9
 298:	00 01       	movw	r0, r0
 29a:	03 05       	cpc	r16, r3
 29c:	09 1e       	adc	r0, r25
 29e:	00 01       	movw	r0, r0
 2a0:	03 7f       	andi	r16, 0xF3	; 243
 2a2:	09 06       	cpc	r0, r25
 2a4:	00 01       	movw	r0, r0
 2a6:	03 01       	movw	r0, r6
 2a8:	09 04       	cpc	r0, r9
 2aa:	00 01       	movw	r0, r0
 2ac:	03 7f       	andi	r16, 0xF3	; 243
 2ae:	09 02       	muls	r16, r25
 2b0:	00 01       	movw	r0, r0
 2b2:	03 03       	mulsu	r16, r19
 2b4:	09 04       	cpc	r0, r9
 2b6:	00 01       	movw	r0, r0
 2b8:	03 03       	mulsu	r16, r19
 2ba:	09 0c       	add	r0, r9
 2bc:	00 01       	movw	r0, r0
 2be:	03 01       	movw	r0, r6
 2c0:	09 20       	and	r0, r9
 2c2:	00 01       	movw	r0, r0
 2c4:	03 01       	movw	r0, r6
 2c6:	09 08       	sbc	r0, r9
 2c8:	00 01       	movw	r0, r0
 2ca:	03 01       	movw	r0, r6
 2cc:	09 0a       	sbc	r0, r25
 2ce:	00 01       	movw	r0, r0
 2d0:	03 79       	andi	r16, 0x93	; 147
 2d2:	09 06       	cpc	r0, r25
 2d4:	00 01       	movw	r0, r0
 2d6:	00 02       	muls	r16, r16
 2d8:	04 02       	muls	r16, r20
 2da:	03 7d       	andi	r16, 0xD3	; 211
 2dc:	09 0a       	sbc	r0, r25
 2de:	00 01       	movw	r0, r0
 2e0:	03 11       	cpse	r16, r3
 2e2:	09 02       	muls	r16, r25
 2e4:	00 01       	movw	r0, r0
 2e6:	03 01       	movw	r0, r6
 2e8:	09 04       	cpc	r0, r9
 2ea:	00 01       	movw	r0, r0
 2ec:	03 01       	movw	r0, r6
 2ee:	09 10       	cpse	r0, r9
 2f0:	00 01       	movw	r0, r0
 2f2:	09 1a       	sub	r0, r25
 2f4:	00 00       	nop
 2f6:	01 01       	movw	r0, r2
 2f8:	00 05       	cpc	r16, r0
 2fa:	02 f0       	brmi	.+0      	; 0x2fc <malloc+0xd0>
 2fc:	01 00       	.word	0x0001	; ????
 2fe:	00 03       	mulsu	r16, r16
 300:	1c 01       	movw	r2, r24
 302:	03 03       	mulsu	r16, r19
 304:	09 00       	.word	0x0009	; ????
 306:	00 01       	movw	r0, r0
 308:	00 02       	muls	r16, r16
 30a:	04 03       	mulsu	r16, r20
 30c:	03 03       	mulsu	r16, r19
 30e:	09 14       	cp	r0, r9
 310:	00 01       	movw	r0, r0
 312:	00 02       	muls	r16, r16
 314:	04 03       	mulsu	r16, r20
 316:	03 7f       	andi	r16, 0xF3	; 243
 318:	09 10       	cpse	r0, r9
 31a:	00 01       	movw	r0, r0
 31c:	03 03       	mulsu	r16, r19
 31e:	09 0a       	sbc	r0, r25
 320:	00 01       	movw	r0, r0
 322:	09 0e       	add	r0, r25
 324:	00 00       	nop
 326:	01 01       	movw	r0, r2

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
  ec:	cc 00       	.word	0x00cc	; ????
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
 134:	f0 01       	movw	r30, r0
 136:	00 00       	nop
 138:	3c 00       	.word	0x003c	; ????
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
 27c:	00 2f       	mov	r16, r16
 27e:	68 6f       	ori	r22, 0xF8	; 248
 280:	6d 65       	ori	r22, 0x5D	; 93
 282:	2f 66       	ori	r18, 0x6F	; 111
 284:	61 6e       	ori	r22, 0xE1	; 225
 286:	68 63       	ori	r22, 0x38	; 56
 288:	2f 77       	andi	r18, 0x7F	; 127
 28a:	61 73       	andi	r22, 0x31	; 49
 28c:	6d 2d       	mov	r22, r13
 28e:	61 6f       	ori	r22, 0xF1	; 241
 290:	74 2f       	mov	r23, r20
 292:	61 70       	andi	r22, 0x01	; 1
 294:	70 2f       	mov	r23, r16
 296:	62 65       	ori	r22, 0x52	; 82
 298:	6e 63       	ori	r22, 0x3E	; 62
 29a:	68 6d       	ori	r22, 0xD8	; 216
 29c:	61 72       	andi	r22, 0x21	; 33
 29e:	6b 2f       	mov	r22, r27
 2a0:	62 75       	andi	r22, 0x52	; 82
 2a2:	69 6c       	ori	r22, 0xC9	; 201
 2a4:	64 00       	.word	0x0064	; ????
 2a6:	5f 5f       	subi	r21, 0xFF	; 255
 2a8:	62 75       	andi	r22, 0x52	; 82
 2aa:	69 6c       	ori	r22, 0xC9	; 201
 2ac:	74 69       	ori	r23, 0x94	; 148
 2ae:	6e 5f       	subi	r22, 0xFE	; 254
 2b0:	76 61       	ori	r23, 0x16	; 22
 2b2:	5f 6c       	ori	r21, 0xCF	; 207
 2b4:	69 73       	andi	r22, 0x39	; 57
 2b6:	74 00       	.word	0x0074	; ????
 2b8:	76 73       	andi	r23, 0x36	; 54
 2ba:	6e 70       	andi	r22, 0x0E	; 14
 2bc:	72 69       	ori	r23, 0x92	; 146
 2be:	6e 74       	andi	r22, 0x4E	; 78
 2c0:	66 00       	.word	0x0066	; ????
 2c2:	76 61       	ori	r23, 0x16	; 22
 2c4:	6c 75       	andi	r22, 0x5C	; 92
 2c6:	65 00       	.word	0x0065	; ????
 2c8:	47 4e       	sbci	r20, 0xE7	; 231
 2ca:	55 20       	and	r5, r5
 2cc:	43 39       	cpi	r20, 0x93	; 147
 2ce:	39 20       	and	r3, r9
 2d0:	35 2e       	mov	r3, r21
 2d2:	34 2e       	mov	r3, r20
 2d4:	30 20       	and	r3, r0
 2d6:	2d 6d       	ori	r18, 0xDD	; 221
 2d8:	6e 2d       	mov	r22, r14
 2da:	66 6c       	ori	r22, 0xC6	; 198
 2dc:	61 73       	andi	r22, 0x31	; 49
 2de:	68 3d       	cpi	r22, 0xD8	; 216
 2e0:	32 20       	and	r3, r2
 2e2:	2d 6d       	ori	r18, 0xDD	; 221
 2e4:	6e 6f       	ori	r22, 0xFE	; 254
 2e6:	2d 73       	andi	r18, 0x3D	; 61
 2e8:	6b 69       	ori	r22, 0x9B	; 155
 2ea:	70 2d       	mov	r23, r0
 2ec:	62 75       	andi	r22, 0x52	; 82
 2ee:	67 20       	and	r6, r7
 2f0:	2d 6d       	ori	r18, 0xDD	; 221
 2f2:	6d 63       	ori	r22, 0x3D	; 61
 2f4:	75 3d       	cpi	r23, 0xD5	; 213
 2f6:	61 76       	andi	r22, 0x61	; 97
 2f8:	72 35       	cpi	r23, 0x52	; 82
 2fa:	31 20       	and	r3, r1
 2fc:	2d 67       	ori	r18, 0x7D	; 125
 2fe:	67 64       	ori	r22, 0x47	; 71
 300:	62 20       	and	r6, r2
 302:	2d 4f       	sbci	r18, 0xFD	; 253
 304:	31 20       	and	r3, r1
 306:	2d 73       	andi	r18, 0x3D	; 61
 308:	74 64       	ori	r23, 0x44	; 68
 30a:	3d 67       	ori	r19, 0x7D	; 125
 30c:	6e 75       	andi	r22, 0x5E	; 94
 30e:	39 39       	cpi	r19, 0x99	; 153
 310:	20 2d       	mov	r18, r0
 312:	66 69       	ori	r22, 0x96	; 150
 314:	6e 6c       	ori	r22, 0xCE	; 206
 316:	69 6e       	ori	r22, 0xE9	; 233
 318:	65 2d       	mov	r22, r5
 31a:	6c 69       	ori	r22, 0x9C	; 156
 31c:	6d 69       	ori	r22, 0x9D	; 157
 31e:	74 3d       	cpi	r23, 0xD4	; 212
 320:	30 20       	and	r3, r0
 322:	2d 66       	ori	r18, 0x6D	; 109
 324:	64 61       	ori	r22, 0x14	; 20
 326:	74 61       	ori	r23, 0x14	; 20
 328:	2d 73       	andi	r18, 0x3D	; 61
 32a:	65 63       	ori	r22, 0x35	; 53
 32c:	74 69       	ori	r23, 0x94	; 148
 32e:	6f 6e       	ori	r22, 0xEF	; 239
 330:	73 20       	and	r7, r3
 332:	2d 66       	ori	r18, 0x6D	; 109
 334:	66 75       	andi	r22, 0x56	; 86
 336:	6e 63       	ori	r22, 0x3E	; 62
 338:	74 69       	ori	r23, 0x94	; 148
 33a:	6f 6e       	ori	r22, 0xEF	; 239
 33c:	2d 73       	andi	r18, 0x3D	; 61
 33e:	65 63       	ori	r22, 0x35	; 53
 340:	74 69       	ori	r23, 0x94	; 148
 342:	6f 6e       	ori	r22, 0xEF	; 239
 344:	73 00       	.word	0x0073	; ????
 346:	72 74       	andi	r23, 0x42	; 66
 348:	63 5f       	subi	r22, 0xF3	; 243
 34a:	73 74       	andi	r23, 0x43	; 67
 34c:	6f 70       	andi	r22, 0x0F	; 15
 34e:	42 65       	ori	r20, 0x52	; 82
 350:	6e 63       	ori	r22, 0x3E	; 62
 352:	68 6d       	ori	r22, 0xD8	; 216
 354:	61 72       	andi	r22, 0x21	; 33
 356:	6b 4d       	sbci	r22, 0xDB	; 219
 358:	65 61       	ori	r22, 0x15	; 21
 35a:	73 75       	andi	r23, 0x53	; 83
 35c:	72 65       	ori	r23, 0x52	; 82
 35e:	6d 65       	ori	r22, 0x5D	; 93
 360:	6e 74       	andi	r22, 0x4E	; 78
 362:	00 61       	ori	r16, 0x10	; 16
 364:	76 72       	andi	r23, 0x26	; 38
 366:	5f 50       	subi	r21, 0x0F	; 15
 368:	72 69       	ori	r23, 0x92	; 146
 36a:	6e 74       	andi	r22, 0x4E	; 78
 36c:	66 00       	.word	0x0066	; ????
 36e:	61 76       	andi	r22, 0x61	; 97
 370:	72 5f       	subi	r23, 0xF2	; 242
 372:	50 72       	andi	r21, 0x20	; 32
 374:	69 6e       	ori	r22, 0xE9	; 233
 376:	74 00       	.word	0x0074	; ????
 378:	6c 6f       	ori	r22, 0xFC	; 252
 37a:	6e 67       	ori	r22, 0x7E	; 126
 37c:	20 6c       	ori	r18, 0xC0	; 192
 37e:	6f 6e       	ori	r22, 0xEF	; 239
 380:	67 20       	and	r6, r7
 382:	75 6e       	ori	r23, 0xE5	; 229
 384:	73 69       	ori	r23, 0x93	; 147
 386:	67 6e       	ori	r22, 0xE7	; 231
 388:	65 64       	ori	r22, 0x45	; 69
 38a:	20 69       	ori	r18, 0x90	; 144
 38c:	6e 74       	andi	r22, 0x4E	; 78
 38e:	00 70       	andi	r16, 0x00	; 0
 390:	72 69       	ori	r23, 0x92	; 146
 392:	6e 74       	andi	r22, 0x4E	; 78
 394:	49 6e       	ori	r20, 0xE9	; 233
 396:	74 00       	.word	0x0074	; ????
 398:	75 6e       	ori	r23, 0xE5	; 229
 39a:	73 69       	ori	r23, 0x93	; 147
 39c:	67 6e       	ori	r22, 0xE7	; 231
 39e:	65 64       	ori	r22, 0x45	; 69
 3a0:	20 63       	ori	r18, 0x30	; 48
 3a2:	68 61       	ori	r22, 0x18	; 24
 3a4:	72 00       	.word	0x0072	; ????
 3a6:	74 65       	ori	r23, 0x54	; 84
 3a8:	6d 70       	andi	r22, 0x0D	; 13
 3aa:	00 73       	andi	r16, 0x30	; 48
 3ac:	68 6f       	ori	r22, 0xF8	; 248
 3ae:	72 74       	andi	r23, 0x42	; 66
 3b0:	20 75       	andi	r18, 0x50	; 80
 3b2:	6e 73       	andi	r22, 0x3E	; 62
 3b4:	69 67       	ori	r22, 0x79	; 121
 3b6:	6e 65       	ori	r22, 0x5E	; 94
 3b8:	64 20       	and	r6, r4
 3ba:	69 6e       	ori	r22, 0xE9	; 233
 3bc:	74 00       	.word	0x0074	; ????
 3be:	61 76       	andi	r22, 0x61	; 97
 3c0:	72 6f       	ori	r23, 0xF2	; 242
 3c2:	72 61       	ori	r23, 0x12	; 18
 3c4:	50 72       	andi	r21, 0x20	; 32
 3c6:	69 6e       	ori	r22, 0xE9	; 233
 3c8:	74 43       	sbci	r23, 0x34	; 52
 3ca:	68 61       	ori	r22, 0x18	; 24
 3cc:	72 42       	sbci	r23, 0x22	; 34
 3ce:	75 66       	ori	r23, 0x65	; 101
 3d0:	66 65       	ori	r22, 0x56	; 86
 3d2:	72 00       	.word	0x0072	; ????
 3d4:	6d 61       	ori	r22, 0x1D	; 29
 3d6:	69 6e       	ori	r22, 0xE9	; 233
 3d8:	00 5f       	subi	r16, 0xF0	; 240
 3da:	5f 67       	ori	r21, 0x7F	; 127
 3dc:	6e 75       	andi	r22, 0x5E	; 94
 3de:	63 5f       	subi	r22, 0xF3	; 243
 3e0:	76 61       	ori	r23, 0x16	; 22
 3e2:	5f 6c       	ori	r21, 0xCF	; 207
 3e4:	69 73       	andi	r22, 0x39	; 57
 3e6:	74 00       	.word	0x0074	; ????
 3e8:	61 76       	andi	r22, 0x61	; 97
 3ea:	72 6f       	ori	r23, 0xF2	; 242
 3ec:	72 61       	ori	r23, 0x12	; 18
 3ee:	50 72       	andi	r21, 0x20	; 32
 3f0:	69 6e       	ori	r22, 0xE9	; 233
 3f2:	74 53       	subi	r23, 0x34	; 52
 3f4:	65 74       	andi	r22, 0x45	; 69
 3f6:	56 61       	ori	r21, 0x16	; 22
 3f8:	72 54       	subi	r23, 0x42	; 66
 3fa:	79 70       	andi	r23, 0x09	; 9
 3fc:	65 00       	.word	0x0065	; ????
 3fe:	66 6f       	ori	r22, 0xF6	; 246
 400:	72 6d       	ori	r23, 0xD2	; 210
 402:	61 74       	andi	r22, 0x41	; 65
 404:	00 75       	andi	r16, 0x50	; 80
 406:	69 6e       	ori	r22, 0xE9	; 233
 408:	74 38       	cpi	r23, 0x84	; 132
 40a:	5f 74       	andi	r21, 0x4F	; 79
 40c:	00 6a       	ori	r16, 0xA0	; 160
 40e:	61 76       	andi	r22, 0x61	; 97
 410:	61 78       	andi	r22, 0x81	; 129
 412:	5f 72       	andi	r21, 0x2F	; 47
 414:	74 63       	ori	r23, 0x34	; 52
 416:	62 65       	ori	r22, 0x52	; 82
 418:	6e 63       	ori	r22, 0x3E	; 62
 41a:	68 5f       	subi	r22, 0xF8	; 248
 41c:	52 54       	subi	r21, 0x42	; 66
 41e:	43 42       	sbci	r20, 0x23	; 35
 420:	65 6e       	ori	r22, 0xE5	; 229
 422:	63 68       	ori	r22, 0x83	; 131
 424:	6d 61       	ori	r22, 0x1D	; 29
 426:	72 6b       	ori	r23, 0xB2	; 178
 428:	5f 76       	andi	r21, 0x6F	; 111
 42a:	6f 69       	ori	r22, 0x9F	; 159
 42c:	64 5f       	subi	r22, 0xF4	; 244
 42e:	74 65       	ori	r23, 0x54	; 84
 430:	73 74       	andi	r23, 0x43	; 67
 432:	5f 6e       	ori	r21, 0xEF	; 239
 434:	61 74       	andi	r22, 0x41	; 65
 436:	69 76       	andi	r22, 0x69	; 105
 438:	65 00       	.word	0x0065	; ????
 43a:	50 72       	andi	r21, 0x20	; 32
 43c:	69 6e       	ori	r22, 0xE9	; 233
 43e:	74 49       	sbci	r23, 0x94	; 148
 440:	6e 74       	andi	r22, 0x4E	; 78
 442:	33 32       	cpi	r19, 0x23	; 35
 444:	00 73       	andi	r16, 0x30	; 48
 446:	69 7a       	andi	r22, 0xA9	; 169
 448:	65 74       	andi	r22, 0x45	; 69
 44a:	79 70       	andi	r23, 0x09	; 9
 44c:	65 00       	.word	0x0065	; ????
 44e:	61 76       	andi	r22, 0x61	; 97
 450:	72 6f       	ori	r23, 0xF2	; 242
 452:	72 61       	ori	r23, 0x12	; 18
 454:	57 72       	andi	r21, 0x27	; 39
 456:	69 74       	andi	r22, 0x49	; 73
 458:	65 43       	sbci	r22, 0x35	; 53
 45a:	68 61       	ori	r22, 0x18	; 24
 45c:	72 42       	sbci	r23, 0x22	; 34
 45e:	75 66       	ori	r23, 0x65	; 101
 460:	66 65       	ori	r22, 0x56	; 86
 462:	72 00       	.word	0x0072	; ????
 464:	6c 6f       	ori	r22, 0xFC	; 252
 466:	6e 67       	ori	r22, 0x7E	; 126
 468:	20 6c       	ori	r18, 0xC0	; 192
 46a:	6f 6e       	ori	r22, 0xEF	; 239
 46c:	67 20       	and	r6, r7
 46e:	69 6e       	ori	r22, 0xE9	; 233
 470:	74 00       	.word	0x0074	; ????
 472:	72 74       	andi	r23, 0x42	; 66
 474:	63 5f       	subi	r22, 0xF3	; 243
 476:	73 74       	andi	r23, 0x43	; 67
 478:	61 72       	andi	r22, 0x21	; 33
 47a:	74 42       	sbci	r23, 0x24	; 36
 47c:	65 6e       	ori	r22, 0xE5	; 229
 47e:	63 68       	ori	r22, 0x83	; 131
 480:	6d 61       	ori	r22, 0x1D	; 29
 482:	72 6b       	ori	r23, 0xB2	; 178
 484:	4d 65       	ori	r20, 0x5D	; 93
 486:	61 73       	andi	r22, 0x31	; 49
 488:	75 72       	andi	r23, 0x25	; 37
 48a:	65 6d       	ori	r22, 0xD5	; 213
 48c:	65 6e       	ori	r22, 0xE5	; 229
 48e:	74 5f       	subi	r23, 0xF4	; 244
 490:	4e 61       	ori	r20, 0x1E	; 30
 492:	74 69       	ori	r23, 0x94	; 148
 494:	76 65       	ori	r23, 0x56	; 86
 496:	00 64       	ori	r16, 0x40	; 64
 498:	65 62       	ori	r22, 0x25	; 37
 49a:	75 67       	ori	r23, 0x75	; 117
 49c:	62 75       	andi	r22, 0x52	; 82
 49e:	66 31       	cpi	r22, 0x16	; 22
 4a0:	00 73       	andi	r16, 0x30	; 48
 4a2:	68 6f       	ori	r22, 0xF8	; 248
 4a4:	72 74       	andi	r23, 0x42	; 66
 4a6:	20 69       	ori	r18, 0x90	; 144
 4a8:	6e 74       	andi	r22, 0x4E	; 78
 4aa:	00 2f       	mov	r16, r16
 4ac:	68 6f       	ori	r22, 0xF8	; 248
 4ae:	6d 65       	ori	r22, 0x5D	; 93
 4b0:	2f 66       	ori	r18, 0x6F	; 111
 4b2:	61 6e       	ori	r22, 0xE1	; 225
 4b4:	68 63       	ori	r22, 0x38	; 56
 4b6:	2f 77       	andi	r18, 0x7F	; 127
 4b8:	61 73       	andi	r22, 0x31	; 49
 4ba:	6d 2d       	mov	r22, r13
 4bc:	61 6f       	ori	r22, 0xF1	; 241
 4be:	74 2f       	mov	r23, r20
 4c0:	61 70       	andi	r22, 0x01	; 1
 4c2:	70 2f       	mov	r23, r16
 4c4:	62 65       	ori	r22, 0x52	; 82
 4c6:	6e 63       	ori	r22, 0x3E	; 62
 4c8:	68 6d       	ori	r22, 0xD8	; 216
 4ca:	61 72       	andi	r22, 0x21	; 33
 4cc:	6b 2f       	mov	r22, r27
 4ce:	62 65       	ori	r22, 0x52	; 82
 4d0:	6e 63       	ori	r22, 0x3E	; 62
 4d2:	68 6d       	ori	r22, 0xD8	; 216
 4d4:	61 72       	andi	r22, 0x21	; 33
 4d6:	6b 2e       	mov	r6, r27
 4d8:	63 00       	.word	0x0063	; ????
 4da:	75 69       	ori	r23, 0x95	; 149
 4dc:	6e 74       	andi	r22, 0x4E	; 78
 4de:	33 32       	cpi	r19, 0x23	; 35
 4e0:	5f 74       	andi	r21, 0x4F	; 79
 4e2:	00 61       	ori	r16, 0x10	; 16
 4e4:	76 72       	andi	r23, 0x26	; 38
 4e6:	5f 56       	subi	r21, 0x6F	; 111
 4e8:	50 72       	andi	r21, 0x20	; 32
 4ea:	69 6e       	ori	r22, 0xE9	; 233
 4ec:	74 00       	.word	0x0074	; ????
 4ee:	50 72       	andi	r21, 0x20	; 32
 4f0:	69 6e       	ori	r22, 0xE9	; 233
 4f2:	74 53       	subi	r23, 0x34	; 52
 4f4:	74 72       	andi	r23, 0x24	; 36
 4f6:	00 6e       	ori	r16, 0xE0	; 224
 4f8:	75 6d       	ori	r23, 0xD5	; 213
 4fa:	62 65       	ori	r22, 0x52	; 82
 4fc:	72 5f       	subi	r23, 0xF2	; 242
 4fe:	6d 69       	ori	r22, 0x9D	; 157
 500:	64 00       	.word	0x0064	; ????
 502:	74 6f       	ori	r23, 0xF4	; 244
 504:	46 69       	ori	r20, 0x96	; 150
 506:	6e 64       	ori	r22, 0x4E	; 78
 508:	00 4e       	sbci	r16, 0xE0	; 224
 50a:	55 4d       	sbci	r21, 0xD5	; 213
 50c:	4e 55       	subi	r20, 0x5E	; 94
 50e:	4d 42       	sbci	r20, 0x2D	; 45
 510:	45 52       	subi	r20, 0x25	; 37
 512:	53 00       	.word	0x0053	; ????
 514:	68 69       	ori	r22, 0x98	; 152
 516:	67 68       	ori	r22, 0x87	; 135
 518:	00 6e       	ori	r16, 0xE0	; 224
 51a:	75 6d       	ori	r23, 0xD5	; 213
 51c:	62 65       	ori	r22, 0x52	; 82
 51e:	72 73       	andi	r23, 0x32	; 50
 520:	00 72       	andi	r16, 0x20	; 32
 522:	74 63       	ori	r23, 0x34	; 52
 524:	62 65       	ori	r22, 0x52	; 82
 526:	6e 63       	ori	r22, 0x3E	; 62
 528:	68 6d       	ori	r22, 0xD8	; 216
 52a:	61 72       	andi	r22, 0x21	; 33
 52c:	6b 5f       	subi	r22, 0xFB	; 251
 52e:	6d 65       	ori	r22, 0x5D	; 93
 530:	61 73       	andi	r22, 0x31	; 49
 532:	75 72       	andi	r23, 0x25	; 37
 534:	65 5f       	subi	r22, 0xF5	; 245
 536:	6e 61       	ori	r22, 0x1E	; 30
 538:	74 69       	ori	r23, 0x94	; 148
 53a:	76 65       	ori	r23, 0x56	; 86
 53c:	5f 70       	andi	r21, 0x0F	; 15
 53e:	65 72       	andi	r22, 0x25	; 37
 540:	66 6f       	ori	r22, 0xF6	; 246
 542:	72 6d       	ori	r23, 0xD2	; 210
 544:	61 6e       	ori	r22, 0xE1	; 225
 546:	63 65       	ori	r22, 0x53	; 83
 548:	00 2f       	mov	r16, r16
 54a:	68 6f       	ori	r22, 0xF8	; 248
 54c:	6d 65       	ori	r22, 0x5D	; 93
 54e:	2f 66       	ori	r18, 0x6F	; 111
 550:	61 6e       	ori	r22, 0xE1	; 225
 552:	68 63       	ori	r22, 0x38	; 56
 554:	2f 77       	andi	r18, 0x7F	; 127
 556:	61 73       	andi	r22, 0x31	; 49
 558:	6d 2d       	mov	r22, r13
 55a:	61 6f       	ori	r22, 0xF1	; 241
 55c:	74 2f       	mov	r23, r20
 55e:	61 70       	andi	r22, 0x01	; 1
 560:	70 2f       	mov	r23, r16
 562:	62 65       	ori	r22, 0x52	; 82
 564:	6e 63       	ori	r22, 0x3E	; 62
 566:	68 6d       	ori	r22, 0xD8	; 216
 568:	61 72       	andi	r22, 0x21	; 33
 56a:	6b 2f       	mov	r22, r27
 56c:	62 69       	ori	r22, 0x92	; 146
 56e:	6e 73       	andi	r22, 0x3E	; 62
 570:	72 63       	ori	r23, 0x32	; 50
 572:	68 2e       	mov	r6, r24
 574:	63 00       	.word	0x0063	; ????
 576:	75 69       	ori	r23, 0x95	; 149
 578:	6e 74       	andi	r22, 0x4E	; 78
 57a:	31 36       	cpi	r19, 0x61	; 97
 57c:	5f 74       	andi	r21, 0x4F	; 79
 57e:	00 6c       	ori	r16, 0xC0	; 192
 580:	6f 6f       	ori	r22, 0xFF	; 255
 582:	70 00       	.word	0x0070	; ????
 584:	6d 61       	ori	r22, 0x1D	; 29
 586:	6c 6c       	ori	r22, 0xCC	; 204
 588:	6f 63       	ori	r22, 0x3F	; 63
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
  84:	01 00       	.word	0x0001	; ????
  86:	69 00       	.word	0x0069	; ????
	...
  94:	00 00       	nop
  96:	00 02       	muls	r16, r16
  98:	00 3a       	cpi	r16, 0xA0	; 160
  9a:	9f 00       	.word	0x009f	; ????
	...
  a8:	00 00       	nop
  aa:	00 02       	muls	r16, r16
  ac:	00 3b       	cpi	r16, 0xB0	; 176
  ae:	9f 00       	.word	0x009f	; ????
	...
  bc:	00 00       	nop
  be:	00 06       	cpc	r0, r16
  c0:	00 68       	ori	r16, 0x80	; 128
  c2:	93 01       	movw	r18, r6
  c4:	69 93       	st	Y+, r22
  c6:	01 00       	.word	0x0001	; ????
  c8:	00 00       	nop
  ca:	00 00       	nop
  cc:	00 00       	nop
  ce:	00 06       	cpc	r0, r16
  d0:	00 64       	ori	r16, 0x40	; 64
  d2:	93 01       	movw	r18, r6
  d4:	65 93       	las	Z, r22
  d6:	01 00       	.word	0x0001	; ????
  d8:	00 00       	nop
  da:	00 00       	nop
  dc:	00 00       	nop
  de:	00 04       	cpc	r0, r0
  e0:	00 f3       	brcs	.-64     	; 0xa2 <__do_copy_data+0xa>
  e2:	01 68       	ori	r16, 0x81	; 129
  e4:	9f 00       	.word	0x009f	; ????
	...
  f2:	00 00       	nop
  f4:	00 06       	cpc	r0, r16
  f6:	00 66       	ori	r16, 0x60	; 96
  f8:	93 01       	movw	r18, r6
  fa:	67 93       	lat	Z, r22
  fc:	01 00       	.word	0x0001	; ????
  fe:	00 00       	nop
 100:	00 00       	nop
 102:	00 00       	nop
 104:	00 06       	cpc	r0, r16
 106:	00 62       	ori	r16, 0x20	; 32
 108:	93 01       	movw	r18, r6
 10a:	63 93       	.word	0x9363	; ????
 10c:	01 00       	.word	0x0001	; ????
 10e:	00 00       	nop
 110:	00 00       	nop
 112:	00 00       	nop
 114:	00 04       	cpc	r0, r0
 116:	00 f3       	brcs	.-64     	; 0xd8 <rtc_startBenchmarkMeasurement_Native+0xa>
 118:	01 66       	ori	r16, 0x61	; 97
 11a:	9f 00       	.word	0x009f	; ????
	...
 128:	00 00       	nop
 12a:	00 03       	mulsu	r16, r16
 12c:	00 92 20 02 	sts	0x0220, r0	; 0x800220 <__bss_end+0x111>
	...
 138:	03 00       	.word	0x0003	; ????
 13a:	92 20       	and	r9, r2
 13c:	03 00       	.word	0x0003	; ????
 13e:	00 00       	nop
 140:	00 00       	nop
 142:	00 00       	nop
 144:	00 03       	mulsu	r16, r16
 146:	00 92 20 04 	sts	0x0420, r0	; 0x800420 <__bss_end+0x311>
	...
 152:	02 00       	.word	0x0002	; ????
 154:	8c 04       	cpc	r8, r12
	...
 166:	06 00       	.word	0x0006	; ????
 168:	66 93       	lac	Z, r22
 16a:	01 67       	ori	r16, 0x71	; 113
 16c:	93 01       	movw	r18, r6
	...
 176:	03 00       	.word	0x0003	; ????
 178:	91 03       	fmuls	r17, r17
 17a:	9f 00       	.word	0x009f	; ????
 17c:	00 00       	nop
 17e:	00 00       	nop
 180:	00 00       	nop
 182:	00 ce       	rjmp	.-1024   	; 0xfffffd84 <__eeprom_end+0xff7efd84>
 184:	00 00       	nop
 186:	00 da       	rcall	.-3072   	; 0xfffff588 <__eeprom_end+0xff7ef588>
 188:	00 00       	nop
 18a:	00 03       	mulsu	r16, r16
 18c:	00 08       	sbc	r0, r0
 18e:	73 9f       	mul	r23, r19
	...
 198:	d6 00       	.word	0x00d6	; ????
 19a:	00 00       	nop
 19c:	da 00       	.word	0x00da	; ????
 19e:	00 00       	nop
 1a0:	02 00       	.word	0x0002	; ????
 1a2:	3a 9f       	mul	r19, r26
	...
 1ac:	da 00       	.word	0x00da	; ????
 1ae:	00 00       	nop
 1b0:	e0 00       	.word	0x00e0	; ????
 1b2:	00 00       	nop
 1b4:	03 00       	.word	0x0003	; ????
 1b6:	08 74       	andi	r16, 0x48	; 72
 1b8:	9f 00       	.word	0x009f	; ????
 1ba:	00 00       	nop
 1bc:	00 00       	nop
 1be:	00 00       	nop
 1c0:	00 de       	rcall	.-1024   	; 0xfffffdc2 <__eeprom_end+0xff7efdc2>
 1c2:	00 00       	nop
 1c4:	00 e0       	ldi	r16, 0x00	; 0
 1c6:	00 00       	nop
 1c8:	00 02       	muls	r16, r16
 1ca:	00 3a       	cpi	r16, 0xA0	; 160
 1cc:	9f 00       	.word	0x009f	; ????
 1ce:	00 00       	nop
 1d0:	00 00       	nop
 1d2:	00 00       	nop
 1d4:	00 e0       	ldi	r16, 0x00	; 0
 1d6:	00 00       	nop
 1d8:	00 e6       	ldi	r16, 0x60	; 96
 1da:	00 00       	nop
 1dc:	00 03       	mulsu	r16, r16
 1de:	00 08       	sbc	r0, r0
 1e0:	61 9f       	mul	r22, r17
	...
 1ea:	e4 00       	.word	0x00e4	; ????
 1ec:	00 00       	nop
 1ee:	e6 00       	.word	0x00e6	; ????
 1f0:	00 00       	nop
 1f2:	02 00       	.word	0x0002	; ????
 1f4:	3a 9f       	mul	r19, r26
	...
 1fe:	e6 00       	.word	0x00e6	; ????
 200:	00 00       	nop
 202:	ec 00       	.word	0x00ec	; ????
 204:	00 00       	nop
 206:	03 00       	.word	0x0003	; ????
 208:	08 72       	andi	r16, 0x28	; 40
 20a:	9f 00       	.word	0x009f	; ????
 20c:	00 00       	nop
 20e:	00 00       	nop
 210:	00 00       	nop
 212:	00 ea       	ldi	r16, 0xA0	; 160
 214:	00 00       	nop
 216:	00 ec       	ldi	r16, 0xC0	; 192
 218:	00 00       	nop
 21a:	00 02       	muls	r16, r16
 21c:	00 3a       	cpi	r16, 0xA0	; 160
 21e:	9f 00       	.word	0x009f	; ????
 220:	00 00       	nop
 222:	00 00       	nop
 224:	00 00       	nop
 226:	00 ec       	ldi	r16, 0xC0	; 192
 228:	00 00       	nop
 22a:	00 f0       	brcs	.+0      	; 0x22c <malloc>
 22c:	00 00       	nop
 22e:	00 03       	mulsu	r16, r16
 230:	00 08       	sbc	r0, r0
 232:	74 9f       	mul	r23, r20
	...
 23c:	ee 00       	.word	0x00ee	; ????
 23e:	00 00       	nop
 240:	f0 00       	.word	0x00f0	; ????
 242:	00 00       	nop
 244:	02 00       	.word	0x0002	; ????
 246:	3a 9f       	mul	r19, r26
	...
 250:	f0 00       	.word	0x00f0	; ????
 252:	00 00       	nop
 254:	f4 00       	.word	0x00f4	; ????
 256:	00 00       	nop
 258:	02 00       	.word	0x0002	; ????
 25a:	3b 9f       	mul	r19, r27
	...
 264:	f6 00       	.word	0x00f6	; ????
 266:	00 00       	nop
 268:	02 01       	movw	r0, r4
 26a:	00 00       	nop
 26c:	03 00       	.word	0x0003	; ????
 26e:	08 73       	andi	r16, 0x38	; 56
 270:	9f 00       	.word	0x009f	; ????
 272:	00 00       	nop
 274:	00 00       	nop
 276:	00 00       	nop
 278:	00 fe       	sbrs	r0, 0
 27a:	00 00       	nop
 27c:	00 02       	muls	r16, r16
 27e:	01 00       	.word	0x0001	; ????
 280:	00 02       	muls	r16, r16
 282:	00 3a       	cpi	r16, 0xA0	; 160
 284:	9f 00       	.word	0x009f	; ????
 286:	00 00       	nop
 288:	00 00       	nop
 28a:	00 00       	nop
 28c:	00 02       	muls	r16, r16
 28e:	01 00       	.word	0x0001	; ????
 290:	00 08       	sbc	r0, r0
 292:	01 00       	.word	0x0001	; ????
 294:	00 03       	mulsu	r16, r16
 296:	00 08       	sbc	r0, r0
 298:	74 9f       	mul	r23, r20
	...
 2a2:	06 01       	movw	r0, r12
 2a4:	00 00       	nop
 2a6:	08 01       	movw	r0, r16
 2a8:	00 00       	nop
 2aa:	02 00       	.word	0x0002	; ????
 2ac:	3a 9f       	mul	r19, r26
	...
 2b6:	08 01       	movw	r0, r16
 2b8:	00 00       	nop
 2ba:	0e 01       	movw	r0, r28
 2bc:	00 00       	nop
 2be:	03 00       	.word	0x0003	; ????
 2c0:	08 6f       	ori	r16, 0xF8	; 248
 2c2:	9f 00       	.word	0x009f	; ????
 2c4:	00 00       	nop
 2c6:	00 00       	nop
 2c8:	00 00       	nop
 2ca:	00 0c       	add	r0, r0
 2cc:	01 00       	.word	0x0001	; ????
 2ce:	00 0e       	add	r0, r16
 2d0:	01 00       	.word	0x0001	; ????
 2d2:	00 02       	muls	r16, r16
 2d4:	00 3a       	cpi	r16, 0xA0	; 160
 2d6:	9f 00       	.word	0x009f	; ????
 2d8:	00 00       	nop
 2da:	00 00       	nop
 2dc:	00 00       	nop
 2de:	00 0e       	add	r0, r16
 2e0:	01 00       	.word	0x0001	; ????
 2e2:	00 14       	cp	r0, r0
 2e4:	01 00       	.word	0x0001	; ????
 2e6:	00 03       	mulsu	r16, r16
 2e8:	00 08       	sbc	r0, r0
 2ea:	70 9f       	mul	r23, r16
	...
 2f4:	12 01       	movw	r2, r4
 2f6:	00 00       	nop
 2f8:	14 01       	movw	r2, r8
 2fa:	00 00       	nop
 2fc:	02 00       	.word	0x0002	; ????
 2fe:	3a 9f       	mul	r19, r26
	...
 308:	14 01       	movw	r2, r8
 30a:	00 00       	nop
 30c:	18 01       	movw	r2, r16
 30e:	00 00       	nop
 310:	02 00       	.word	0x0002	; ????
 312:	3b 9f       	mul	r19, r27
	...
 324:	03 00       	.word	0x0003	; ????
 326:	92 20       	and	r9, r2
 328:	02 00       	.word	0x0002	; ????
 32a:	00 00       	nop
 32c:	00 00       	nop
 32e:	00 00       	nop
 330:	00 03       	mulsu	r16, r16
 332:	00 92 20 03 	sts	0x0320, r0	; 0x800320 <__bss_end+0x211>
	...
 33e:	03 00       	.word	0x0003	; ????
 340:	92 20       	and	r9, r2
 342:	04 00       	.word	0x0004	; ????
 344:	00 00       	nop
 346:	00 00       	nop
 348:	00 00       	nop
 34a:	00 03       	mulsu	r16, r16
 34c:	00 92 20 05 	sts	0x0520, r0	; 0x800520 <__bss_end+0x411>
	...
 358:	03 00       	.word	0x0003	; ????
 35a:	92 20       	and	r9, r2
 35c:	06 00       	.word	0x0006	; ????
 35e:	00 00       	nop
 360:	00 00       	nop
 362:	00 00       	nop
 364:	00 03       	mulsu	r16, r16
 366:	00 92 20 07 	sts	0x0720, r0	; 0x800720 <__bss_end+0x611>
	...
 372:	03 00       	.word	0x0003	; ????
 374:	92 20       	and	r9, r2
 376:	08 00       	.word	0x0008	; ????
 378:	00 00       	nop
 37a:	00 00       	nop
 37c:	00 00       	nop
 37e:	00 03       	mulsu	r16, r16
 380:	00 92 20 02 	sts	0x0220, r0	; 0x800220 <__bss_end+0x111>
	...
 394:	0c 00       	.word	0x000c	; ????
 396:	66 93       	lac	Z, r22
 398:	01 67       	ori	r16, 0x71	; 113
 39a:	93 01       	movw	r18, r6
 39c:	68 93       	.word	0x9368	; ????
 39e:	01 69       	ori	r16, 0x91	; 145
 3a0:	93 01       	movw	r18, r6
	...
 3aa:	04 00       	.word	0x0004	; ????
 3ac:	f3 01       	movw	r30, r6
 3ae:	66 9f       	mul	r22, r22
	...
 3b8:	24 01       	movw	r4, r8
 3ba:	00 00       	nop
 3bc:	26 01       	movw	r4, r12
 3be:	00 00       	nop
 3c0:	03 00       	.word	0x0003	; ????
 3c2:	92 20       	and	r9, r2
 3c4:	02 26       	eor	r0, r18
 3c6:	01 00       	.word	0x0001	; ????
 3c8:	00 28       	or	r0, r0
 3ca:	01 00       	.word	0x0001	; ????
 3cc:	00 03       	mulsu	r16, r16
 3ce:	00 92 20 03 	sts	0x0320, r0	; 0x800320 <__bss_end+0x211>
 3d2:	28 01       	movw	r4, r16
 3d4:	00 00       	nop
 3d6:	2a 01       	movw	r4, r20
 3d8:	00 00       	nop
 3da:	03 00       	.word	0x0003	; ????
 3dc:	92 20       	and	r9, r2
 3de:	04 2a       	or	r0, r20
 3e0:	01 00       	.word	0x0001	; ????
 3e2:	00 2c       	mov	r0, r0
 3e4:	01 00       	.word	0x0001	; ????
 3e6:	00 03       	mulsu	r16, r16
 3e8:	00 92 20 05 	sts	0x0520, r0	; 0x800520 <__bss_end+0x411>
 3ec:	2c 01       	movw	r4, r24
 3ee:	00 00       	nop
 3f0:	2e 01       	movw	r4, r28
 3f2:	00 00       	nop
 3f4:	03 00       	.word	0x0003	; ????
 3f6:	92 20       	and	r9, r2
 3f8:	06 2e       	mov	r0, r22
 3fa:	01 00       	.word	0x0001	; ????
 3fc:	00 30       	cpi	r16, 0x00	; 0
 3fe:	01 00       	.word	0x0001	; ????
 400:	00 03       	mulsu	r16, r16
 402:	00 92 20 07 	sts	0x0720, r0	; 0x800720 <__bss_end+0x611>
 406:	30 01       	movw	r6, r0
 408:	00 00       	nop
 40a:	32 01       	movw	r6, r4
 40c:	00 00       	nop
 40e:	03 00       	.word	0x0003	; ????
 410:	92 20       	and	r9, r2
 412:	08 32       	cpi	r16, 0x28	; 40
 414:	01 00       	.word	0x0001	; ????
 416:	00 34       	cpi	r16, 0x40	; 64
 418:	01 00       	.word	0x0001	; ????
 41a:	00 03       	mulsu	r16, r16
 41c:	00 92 20 09 	sts	0x0920, r0	; 0x800920 <__bss_end+0x811>
 420:	34 01       	movw	r6, r8
 422:	00 00       	nop
 424:	36 01       	movw	r6, r12
 426:	00 00       	nop
 428:	03 00       	.word	0x0003	; ????
 42a:	92 20       	and	r9, r2
 42c:	0a 36       	cpi	r16, 0x6A	; 106
 42e:	01 00       	.word	0x0001	; ????
 430:	00 38       	cpi	r16, 0x80	; 128
 432:	01 00       	.word	0x0001	; ????
 434:	00 03       	mulsu	r16, r16
 436:	00 92 20 0b 	sts	0x0B20, r0	; 0x800b20 <__bss_end+0xa11>
 43a:	38 01       	movw	r6, r16
 43c:	00 00       	nop
 43e:	3a 01       	movw	r6, r20
 440:	00 00       	nop
 442:	03 00       	.word	0x0003	; ????
 444:	92 20       	and	r9, r2
 446:	0c 3a       	cpi	r16, 0xAC	; 172
 448:	01 00       	.word	0x0001	; ????
 44a:	00 3c       	cpi	r16, 0xC0	; 192
 44c:	01 00       	.word	0x0001	; ????
 44e:	00 03       	mulsu	r16, r16
 450:	00 92 20 0d 	sts	0x0D20, r0	; 0x800d20 <__bss_end+0xc11>
 454:	3c 01       	movw	r6, r24
 456:	00 00       	nop
 458:	f0 01       	movw	r30, r0
 45a:	00 00       	nop
 45c:	03 00       	.word	0x0003	; ????
 45e:	92 20       	and	r9, r2
 460:	0e 00       	.word	0x000e	; ????
 462:	00 00       	nop
 464:	00 00       	nop
 466:	00 00       	nop
 468:	00 24       	eor	r0, r0
 46a:	01 00       	.word	0x0001	; ????
 46c:	00 43       	sbci	r16, 0x30	; 48
 46e:	01 00       	.word	0x0001	; ????
 470:	00 06       	cpc	r0, r16
 472:	00 68       	ori	r16, 0x80	; 128
 474:	93 01       	movw	r18, r6
 476:	69 93       	st	Y+, r22
 478:	01 43       	sbci	r16, 0x31	; 49
 47a:	01 00       	.word	0x0001	; ????
 47c:	00 68       	ori	r16, 0x80	; 128
 47e:	01 00       	.word	0x0001	; ????
 480:	00 06       	cpc	r0, r16
 482:	00 5e       	subi	r16, 0xE0	; 224
 484:	93 01       	movw	r18, r6
 486:	5f 93       	push	r21
 488:	01 68       	ori	r16, 0x81	; 129
 48a:	01 00       	.word	0x0001	; ????
 48c:	00 e2       	ldi	r16, 0x20	; 32
 48e:	01 00       	.word	0x0001	; ????
 490:	00 03       	mulsu	r16, r16
 492:	00 7e       	andi	r16, 0xE0	; 224
 494:	01 9f       	mul	r16, r17
 496:	e2 01       	movw	r28, r4
 498:	00 00       	nop
 49a:	f0 01       	movw	r30, r0
 49c:	00 00       	nop
 49e:	04 00       	.word	0x0004	; ????
 4a0:	f3 01       	movw	r30, r6
 4a2:	68 9f       	mul	r22, r24
	...
 4ac:	24 01       	movw	r4, r8
 4ae:	00 00       	nop
 4b0:	43 01       	movw	r8, r6
 4b2:	00 00       	nop
 4b4:	06 00       	.word	0x0006	; ????
 4b6:	66 93       	lac	Z, r22
 4b8:	01 67       	ori	r16, 0x71	; 113
 4ba:	93 01       	movw	r18, r6
 4bc:	43 01       	movw	r8, r6
 4be:	00 00       	nop
 4c0:	de 01       	movw	r26, r28
 4c2:	00 00       	nop
 4c4:	06 00       	.word	0x0006	; ????
 4c6:	60 93 01 61 	sts	0x6101, r22	; 0x806101 <__bss_end+0x5ff2>
 4ca:	93 01       	movw	r18, r6
 4cc:	de 01       	movw	r26, r28
 4ce:	00 00       	nop
 4d0:	f0 01       	movw	r30, r0
 4d2:	00 00       	nop
 4d4:	06 00       	.word	0x0006	; ????
 4d6:	6e 93       	st	-X, r22
 4d8:	01 6f       	ori	r16, 0xF1	; 241
 4da:	93 01       	movw	r18, r6
	...
 4e4:	5e 01       	movw	r10, r28
 4e6:	00 00       	nop
 4e8:	ee 01       	movw	r28, r28
 4ea:	00 00       	nop
 4ec:	0c 00       	.word	0x000c	; ????
 4ee:	58 93       	.word	0x9358	; ????
 4f0:	01 59       	subi	r16, 0x91	; 145
 4f2:	93 01       	movw	r18, r6
 4f4:	5a 93       	st	-Y, r21
 4f6:	01 5b       	subi	r16, 0xB1	; 177
 4f8:	93 01       	movw	r18, r6
	...
 502:	5e 01       	movw	r10, r28
 504:	00 00       	nop
 506:	6c 01       	movw	r12, r24
 508:	00 00       	nop
 50a:	02 00       	.word	0x0002	; ????
 50c:	30 9f       	mul	r19, r16
 50e:	7e 01       	movw	r14, r28
 510:	00 00       	nop
 512:	da 01       	movw	r26, r20
 514:	00 00       	nop
 516:	06 00       	.word	0x0006	; ????
 518:	6c 93       	st	X, r22
 51a:	01 6d       	ori	r16, 0xD1	; 209
 51c:	93 01       	movw	r18, r6
 51e:	da 01       	movw	r26, r20
 520:	00 00       	nop
 522:	f0 01       	movw	r30, r0
 524:	00 00       	nop
 526:	06 00       	.word	0x0006	; ????
 528:	68 93       	.word	0x9368	; ????
 52a:	01 69       	ori	r16, 0x91	; 145
 52c:	93 01       	movw	r18, r6
	...
 536:	5e 01       	movw	r10, r28
 538:	00 00       	nop
 53a:	6c 01       	movw	r12, r24
 53c:	00 00       	nop
 53e:	02 00       	.word	0x0002	; ????
 540:	30 9f       	mul	r19, r16
 542:	6c 01       	movw	r12, r24
 544:	00 00       	nop
 546:	bc 01       	movw	r22, r24
 548:	00 00       	nop
 54a:	07 00       	.word	0x0007	; ????
 54c:	0a e8       	ldi	r16, 0x8A	; 138
 54e:	03 86       	std	Z+11, r0	; 0x0b
 550:	00 1c       	adc	r0, r0
 552:	9f bc       	out	0x2f, r9	; 47
 554:	01 00       	.word	0x0001	; ????
 556:	00 c0       	rjmp	.+0      	; 0x558 <__data_load_end+0xe0>
 558:	01 00       	.word	0x0001	; ????
 55a:	00 07       	cpc	r16, r16
 55c:	00 0a       	sbc	r0, r16
 55e:	e9 03       	fmulsu	r22, r17
 560:	86 00       	.word	0x0086	; ????
 562:	1c 9f       	mul	r17, r28
 564:	c0 01       	movw	r24, r0
 566:	00 00       	nop
 568:	c5 01       	movw	r24, r10
 56a:	00 00       	nop
 56c:	07 00       	.word	0x0007	; ????
 56e:	0a e8       	ldi	r16, 0x8A	; 138
 570:	03 86       	std	Z+11, r0	; 0x0b
 572:	00 1c       	adc	r0, r0
 574:	9f 00       	.word	0x009f	; ????
 576:	00 00       	nop
 578:	00 00       	nop
 57a:	00 00       	nop
 57c:	00 6c       	ori	r16, 0xC0	; 192
 57e:	01 00       	.word	0x0001	; ????
 580:	00 72       	andi	r16, 0x20	; 32
 582:	01 00       	.word	0x0001	; ????
 584:	00 02       	muls	r16, r16
 586:	00 30       	cpi	r16, 0x00	; 0
 588:	9f 72       	andi	r25, 0x2F	; 47
 58a:	01 00       	.word	0x0001	; ????
 58c:	00 a0       	ldd	r0, Z+32	; 0x20
 58e:	01 00       	.word	0x0001	; ????
 590:	00 06       	cpc	r0, r16
 592:	00 62       	ori	r16, 0x20	; 32
 594:	93 01       	movw	r18, r6
 596:	63 93       	.word	0x9363	; ????
 598:	01 a4       	ldd	r0, Z+41	; 0x29
 59a:	01 00       	.word	0x0001	; ????
 59c:	00 c5       	rjmp	.+2560   	; 0xf9e <__data_load_end+0xb26>
 59e:	01 00       	.word	0x0001	; ????
 5a0:	00 06       	cpc	r0, r16
 5a2:	00 62       	ori	r16, 0x20	; 32
 5a4:	93 01       	movw	r18, r6
 5a6:	63 93       	.word	0x9363	; ????
 5a8:	01 00       	.word	0x0001	; ????
 5aa:	00 00       	nop
 5ac:	00 00       	nop
 5ae:	00 00       	nop
 5b0:	00 6e       	ori	r16, 0xE0	; 224
 5b2:	01 00       	.word	0x0001	; ????
 5b4:	00 b2       	in	r0, 0x10	; 16
 5b6:	01 00       	.word	0x0001	; ????
 5b8:	00 06       	cpc	r0, r16
 5ba:	00 64       	ori	r16, 0x40	; 64
 5bc:	93 01       	movw	r18, r6
 5be:	65 93       	las	Z, r22
 5c0:	01 b6       	in	r0, 0x31	; 49
 5c2:	01 00       	.word	0x0001	; ????
 5c4:	00 c5       	rjmp	.+2560   	; 0xfc6 <__data_load_end+0xb4e>
 5c6:	01 00       	.word	0x0001	; ????
 5c8:	00 06       	cpc	r0, r16
 5ca:	00 64       	ori	r16, 0x40	; 64
 5cc:	93 01       	movw	r18, r6
 5ce:	65 93       	las	Z, r22
 5d0:	01 00       	.word	0x0001	; ????
 5d2:	00 00       	nop
 5d4:	00 00       	nop
 5d6:	00 00       	nop
 5d8:	00 94       	com	r0
 5da:	01 00       	.word	0x0001	; ????
 5dc:	00 c5       	rjmp	.+2560   	; 0xfde <__data_load_end+0xb66>
 5de:	01 00       	.word	0x0001	; ????
 5e0:	00 0c       	add	r0, r0
 5e2:	00 68       	ori	r16, 0x80	; 128
 5e4:	93 01       	movw	r18, r6
 5e6:	69 93       	st	Y+, r22
 5e8:	01 6a       	ori	r16, 0xA1	; 161
 5ea:	93 01       	movw	r18, r6
 5ec:	6b 93       	.word	0x936b	; ????
 5ee:	01 00       	.word	0x0001	; ????
 5f0:	00 00       	nop
 5f2:	00 00       	nop
 5f4:	00 00       	nop
 5f6:	00 f8       	bld	r0, 0
 5f8:	01 00       	.word	0x0001	; ????
 5fa:	00 26       	eor	r0, r16
 5fc:	02 00       	.word	0x0002	; ????
 5fe:	00 06       	cpc	r0, r16
 600:	00 68       	ori	r16, 0x80	; 128
 602:	93 01       	movw	r18, r6
 604:	69 93       	st	Y+, r22
 606:	01 26       	eor	r0, r17
 608:	02 00       	.word	0x0002	; ????
 60a:	00 29       	or	r16, r0
 60c:	02 00       	.word	0x0002	; ????
 60e:	00 06       	cpc	r0, r16
 610:	00 66       	ori	r16, 0x60	; 96
 612:	93 01       	movw	r18, r6
 614:	69 93       	st	Y+, r22
 616:	01 00       	.word	0x0001	; ????
 618:	00 00       	nop
 61a:	00 00       	nop
 61c:	00 00       	nop
 61e:	00 f8       	bld	r0, 0
 620:	01 00       	.word	0x0001	; ????
 622:	00 04       	cpc	r0, r0
 624:	02 00       	.word	0x0002	; ????
 626:	00 02       	muls	r16, r16
 628:	00 30       	cpi	r16, 0x00	; 0
 62a:	9f 04       	cpc	r9, r15
 62c:	02 00       	.word	0x0002	; ????
 62e:	00 0c       	add	r0, r0
 630:	02 00       	.word	0x0002	; ????
 632:	00 03       	mulsu	r16, r16
 634:	00 84       	ldd	r0, Z+8	; 0x08
 636:	1e 9f       	mul	r17, r30
 638:	0c 02       	muls	r16, r28
 63a:	00 00       	nop
 63c:	14 02       	muls	r17, r20
 63e:	00 00       	nop
 640:	03 00       	.word	0x0003	; ????
 642:	84 1f       	adc	r24, r20
 644:	9f 14       	cp	r9, r15
 646:	02 00       	.word	0x0002	; ????
 648:	00 29       	or	r16, r0
 64a:	02 00       	.word	0x0002	; ????
 64c:	00 07       	cpc	r16, r16
 64e:	00 8e       	std	Z+24, r0	; 0x18
 650:	7c 94 01 23 	jmp	0x1c4602	; 0x1c4602 <__TEXT_REGION_LENGTH__+0x1a4602>
 654:	1f 9f       	mul	r17, r31
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
  64:	f6 00       	.word	0x00f6	; ????
  66:	00 00       	nop
  68:	f6 00       	.word	0x00f6	; ????
  6a:	00 00       	nop
  6c:	1a 01       	movw	r2, r20
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
  88:	1a 01       	movw	r2, r20
  8a:	00 00       	nop
  8c:	24 01       	movw	r4, r8
	...
  96:	00 00       	nop
  98:	24 01       	movw	r4, r8
  9a:	00 00       	nop
  9c:	f0 01       	movw	r30, r0
  9e:	00 00       	nop
  a0:	f0 01       	movw	r30, r0
  a2:	00 00       	nop
  a4:	2c 02       	muls	r18, r28
	...
