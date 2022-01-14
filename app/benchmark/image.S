
/home/fanhc/wasm-aot/app/benchmark/image.elf:     file format elf32-avr


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
  9e:	e8 e0       	ldi	r30, 0x08	; 8
  a0:	f2 e0       	ldi	r31, 0x02	; 2
  a2:	00 e0       	ldi	r16, 0x00	; 0
  a4:	0b bf       	out	0x3b, r16	; 59
  a6:	02 c0       	rjmp	.+4      	; 0xac <__do_copy_data+0x14>
  a8:	07 90       	elpm	r0, Z+
  aa:	0d 92       	st	X+, r0
  ac:	a0 30       	cpi	r26, 0x00	; 0
  ae:	b1 07       	cpc	r27, r17
  b0:	d9 f7       	brne	.-10     	; 0xa8 <__do_copy_data+0x10>

000000b2 <__do_clear_bss>:
  b2:	2e e1       	ldi	r18, 0x1E	; 30
  b4:	a0 e0       	ldi	r26, 0x00	; 0
  b6:	b1 e0       	ldi	r27, 0x01	; 1
  b8:	01 c0       	rjmp	.+2      	; 0xbc <.do_clear_bss_start>

000000ba <.do_clear_bss_loop>:
  ba:	1d 92       	st	X+, r1

000000bc <.do_clear_bss_start>:
  bc:	a2 35       	cpi	r26, 0x52	; 82
  be:	b2 07       	cpc	r27, r18
  c0:	e1 f7       	brne	.-8      	; 0xba <.do_clear_bss_loop>
  c2:	0e 94 6e 00 	call	0xdc	; 0xdc <main>
  c6:	0c 94 02 01 	jmp	0x204	; 0x204 <_exit>

000000ca <__bad_interrupt>:
  ca:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000ce <rtc_startBenchmarkMeasurement_Native>:
  ce:	81 e0       	ldi	r24, 0x01	; 1
  d0:	80 93 05 01 	sts	0x0105, r24	; 0x800105 <avroraTraceEnabledVariable>
  d4:	08 95       	ret

000000d6 <rtc_stopBenchmarkMeasurement>:
  d6:	10 92 05 01 	sts	0x0105, r1	; 0x800105 <avroraTraceEnabledVariable>
  da:	08 95       	ret

000000dc <main>:
  dc:	0e 94 74 00 	call	0xe8	; 0xe8 <javax_rtcbench_RTCBenchmark_void_test_native>
  e0:	98 95       	break
  e2:	80 e0       	ldi	r24, 0x00	; 0
  e4:	90 e0       	ldi	r25, 0x00	; 0
  e6:	08 95       	ret

000000e8 <javax_rtcbench_RTCBenchmark_void_test_native>:
  e8:	6f 92       	push	r6
  ea:	7f 92       	push	r7
  ec:	8f 92       	push	r8
  ee:	9f 92       	push	r9
  f0:	af 92       	push	r10
  f2:	bf 92       	push	r11
  f4:	cf 92       	push	r12
  f6:	df 92       	push	r13
  f8:	ef 92       	push	r14
  fa:	ff 92       	push	r15
  fc:	0f 93       	push	r16
  fe:	1f 93       	push	r17
 100:	cf 93       	push	r28
 102:	df 93       	push	r29
 104:	1f 92       	push	r1
 106:	cd b7       	in	r28, 0x3d	; 61
 108:	de b7       	in	r29, 0x3e	; 62
 10a:	0e 94 67 00 	call	0xce	; 0xce <rtc_startBenchmarkMeasurement_Native>
 10e:	20 e0       	ldi	r18, 0x00	; 0
 110:	30 e0       	ldi	r19, 0x00	; 0
 112:	8a e0       	ldi	r24, 0x0A	; 10
 114:	88 2e       	mov	r8, r24
 116:	91 2c       	mov	r9, r1
 118:	94 e6       	ldi	r25, 0x64	; 100
 11a:	a9 2e       	mov	r10, r25
 11c:	b1 2c       	mov	r11, r1
 11e:	a9 01       	movw	r20, r18
 120:	42 57       	subi	r20, 0x72	; 114
 122:	5b 4e       	sbci	r21, 0xEB	; 235
 124:	6a 01       	movw	r12, r20
 126:	c9 01       	movw	r24, r18
 128:	86 53       	subi	r24, 0x36	; 54
 12a:	95 4f       	sbci	r25, 0xF5	; 245
 12c:	7c 01       	movw	r14, r24
 12e:	89 01       	movw	r16, r18
 130:	0a 5f       	subi	r16, 0xFA	; 250
 132:	1e 4f       	sbci	r17, 0xFE	; 254
 134:	e0 e0       	ldi	r30, 0x00	; 0
 136:	f0 e0       	ldi	r31, 0x00	; 0
 138:	d6 01       	movw	r26, r12
 13a:	8d 91       	ld	r24, X+
 13c:	6d 01       	movw	r12, r26
 13e:	d7 01       	movw	r26, r14
 140:	6d 90       	ld	r6, X+
 142:	7d 01       	movw	r14, r26
 144:	d8 01       	movw	r26, r16
 146:	7d 90       	ld	r7, X+
 148:	8d 01       	movw	r16, r26
 14a:	b3 e0       	ldi	r27, 0x03	; 3
 14c:	8b 9f       	mul	r24, r27
 14e:	c0 01       	movw	r24, r0
 150:	11 24       	eor	r1, r1
 152:	b4 01       	movw	r22, r8
 154:	0e 94 da 00 	call	0x1b4	; 0x1b4 <__divmodhi4>
 158:	46 2f       	mov	r20, r22
 15a:	5b e3       	ldi	r21, 0x3B	; 59
 15c:	65 9e       	mul	r6, r21
 15e:	c0 01       	movw	r24, r0
 160:	11 24       	eor	r1, r1
 162:	b5 01       	movw	r22, r10
 164:	0e 94 da 00 	call	0x1b4	; 0x1b4 <__divmodhi4>
 168:	46 0f       	add	r20, r22
 16a:	ab e0       	ldi	r26, 0x0B	; 11
 16c:	7a 9e       	mul	r7, r26
 16e:	c0 01       	movw	r24, r0
 170:	11 24       	eor	r1, r1
 172:	b5 01       	movw	r22, r10
 174:	0e 94 da 00 	call	0x1b4	; 0x1b4 <__divmodhi4>
 178:	64 0f       	add	r22, r20
 17a:	69 83       	std	Y+1, r22	; 0x01
 17c:	31 96       	adiw	r30, 0x01	; 1
 17e:	e2 33       	cpi	r30, 0x32	; 50
 180:	f1 05       	cpc	r31, r1
 182:	d1 f6       	brne	.-76     	; 0x138 <javax_rtcbench_RTCBenchmark_void_test_native+0x50>
 184:	2e 5c       	subi	r18, 0xCE	; 206
 186:	3f 4f       	sbci	r19, 0xFF	; 255
 188:	24 3c       	cpi	r18, 0xC4	; 196
 18a:	b9 e0       	ldi	r27, 0x09	; 9
 18c:	3b 07       	cpc	r19, r27
 18e:	39 f6       	brne	.-114    	; 0x11e <javax_rtcbench_RTCBenchmark_void_test_native+0x36>
 190:	0e 94 6b 00 	call	0xd6	; 0xd6 <rtc_stopBenchmarkMeasurement>
 194:	0f 90       	pop	r0
 196:	df 91       	pop	r29
 198:	cf 91       	pop	r28
 19a:	1f 91       	pop	r17
 19c:	0f 91       	pop	r16
 19e:	ff 90       	pop	r15
 1a0:	ef 90       	pop	r14
 1a2:	df 90       	pop	r13
 1a4:	cf 90       	pop	r12
 1a6:	bf 90       	pop	r11
 1a8:	af 90       	pop	r10
 1aa:	9f 90       	pop	r9
 1ac:	8f 90       	pop	r8
 1ae:	7f 90       	pop	r7
 1b0:	6f 90       	pop	r6
 1b2:	08 95       	ret

000001b4 <__divmodhi4>:
 1b4:	97 fb       	bst	r25, 7
 1b6:	07 2e       	mov	r0, r23
 1b8:	16 f4       	brtc	.+4      	; 0x1be <__divmodhi4+0xa>
 1ba:	00 94       	com	r0
 1bc:	07 d0       	rcall	.+14     	; 0x1cc <__divmodhi4_neg1>
 1be:	77 fd       	sbrc	r23, 7
 1c0:	09 d0       	rcall	.+18     	; 0x1d4 <__divmodhi4_neg2>
 1c2:	0e 94 ee 00 	call	0x1dc	; 0x1dc <__udivmodhi4>
 1c6:	07 fc       	sbrc	r0, 7
 1c8:	05 d0       	rcall	.+10     	; 0x1d4 <__divmodhi4_neg2>
 1ca:	3e f4       	brtc	.+14     	; 0x1da <__divmodhi4_exit>

000001cc <__divmodhi4_neg1>:
 1cc:	90 95       	com	r25
 1ce:	81 95       	neg	r24
 1d0:	9f 4f       	sbci	r25, 0xFF	; 255
 1d2:	08 95       	ret

000001d4 <__divmodhi4_neg2>:
 1d4:	70 95       	com	r23
 1d6:	61 95       	neg	r22
 1d8:	7f 4f       	sbci	r23, 0xFF	; 255

000001da <__divmodhi4_exit>:
 1da:	08 95       	ret

000001dc <__udivmodhi4>:
 1dc:	aa 1b       	sub	r26, r26
 1de:	bb 1b       	sub	r27, r27
 1e0:	51 e1       	ldi	r21, 0x11	; 17
 1e2:	07 c0       	rjmp	.+14     	; 0x1f2 <__udivmodhi4_ep>

000001e4 <__udivmodhi4_loop>:
 1e4:	aa 1f       	adc	r26, r26
 1e6:	bb 1f       	adc	r27, r27
 1e8:	a6 17       	cp	r26, r22
 1ea:	b7 07       	cpc	r27, r23
 1ec:	10 f0       	brcs	.+4      	; 0x1f2 <__udivmodhi4_ep>
 1ee:	a6 1b       	sub	r26, r22
 1f0:	b7 0b       	sbc	r27, r23

000001f2 <__udivmodhi4_ep>:
 1f2:	88 1f       	adc	r24, r24
 1f4:	99 1f       	adc	r25, r25
 1f6:	5a 95       	dec	r21
 1f8:	a9 f7       	brne	.-22     	; 0x1e4 <__udivmodhi4_loop>
 1fa:	80 95       	com	r24
 1fc:	90 95       	com	r25
 1fe:	bc 01       	movw	r22, r24
 200:	cd 01       	movw	r24, r26
 202:	08 95       	ret

00000204 <_exit>:
 204:	f8 94       	cli

00000206 <__stop_program>:
 206:	ff cf       	rjmp	.-2      	; 0x206 <__stop_program>

Disassembly of section .bss:

00800100 <__bss_start>:
  800100:	00 00       	nop
  800102:	00 00       	nop
	...

00800105 <avroraTraceEnabledVariable>:
	...

00800106 <B>:
	...

00800aca <G>:
	...

0080148e <R>:
	...

Disassembly of section .comment:

00000000 <_end-0x801e52>:
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
   0:	54 00       	.word	0x0054	; ????
   2:	00 00       	nop
   4:	02 00       	.word	0x0002	; ????
   6:	80 07       	cpc	r24, r16
   8:	00 00       	nop
   a:	04 00       	.word	0x0004	; ????
	...
  28:	ce 00       	.word	0x00ce	; ????
  2a:	00 00       	nop
  2c:	08 00       	.word	0x0008	; ????
  2e:	00 00       	nop
  30:	d6 00       	.word	0x00d6	; ????
  32:	00 00       	nop
  34:	06 00       	.word	0x0006	; ????
	...
  46:	00 00       	nop
  48:	dc 00       	.word	0x00dc	; ????
  4a:	00 00       	nop
  4c:	0c 00       	.word	0x000c	; ????
	...
  56:	00 00       	nop
  58:	1c 00       	.word	0x001c	; ????
  5a:	00 00       	nop
  5c:	02 00       	.word	0x0002	; ????
  5e:	5e 0b       	sbc	r21, r30
  60:	00 00       	nop
  62:	04 00       	.word	0x0004	; ????
  64:	00 00       	nop
  66:	00 00       	nop
  68:	e8 00       	.word	0x00e8	; ????
  6a:	00 00       	nop
  6c:	cc 00       	.word	0x00cc	; ????
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
 780:	da 03       	fmulsu	r21, r18
 782:	00 00       	nop
 784:	02 00       	.word	0x0002	; ????
 786:	18 07       	cpc	r17, r24
 788:	00 00       	nop
 78a:	04 01       	movw	r0, r8
 78c:	25 04       	cpc	r2, r5
 78e:	00 00       	nop
 790:	0c a3       	std	Y+36, r16	; 0x24
 792:	04 00       	.word	0x0004	; ????
 794:	00 48       	sbci	r16, 0x80	; 128
	...
 79e:	00 00       	nop
 7a0:	00 1a       	sub	r0, r16
 7a2:	00 00       	nop
 7a4:	00 02       	muls	r16, r16
 7a6:	01 06       	cpc	r0, r17
 7a8:	19 03       	fmul	r17, r17
 7aa:	00 00       	nop
 7ac:	03 94       	inc	r0
 7ae:	03 00       	.word	0x0003	; ????
 7b0:	00 04       	cpc	r0, r0
 7b2:	7e 37       	cpi	r23, 0x7E	; 126
 7b4:	00 00       	nop
 7b6:	00 02       	muls	r16, r16
 7b8:	01 08       	sbc	r0, r1
 7ba:	17 03       	mulsu	r17, r23
 7bc:	00 00       	nop
 7be:	04 02       	muls	r16, r20
 7c0:	05 69       	ori	r16, 0x95	; 149
 7c2:	6e 74       	andi	r22, 0x4E	; 78
 7c4:	00 02       	muls	r16, r16
 7c6:	02 07       	cpc	r16, r18
 7c8:	87 03       	fmuls	r16, r23
 7ca:	00 00       	nop
 7cc:	02 04       	cpc	r0, r2
 7ce:	05 ed       	ldi	r16, 0xD5	; 213
 7d0:	03 00       	.word	0x0003	; ????
 7d2:	00 03       	mulsu	r16, r16
 7d4:	d2 04       	cpc	r13, r2
 7d6:	00 00       	nop
 7d8:	04 82       	std	Z+4, r0	; 0x04
 7da:	5e 00       	.word	0x005e	; ????
 7dc:	00 00       	nop
 7de:	02 04       	cpc	r0, r2
 7e0:	07 82       	std	Z+7, r0	; 0x07
 7e2:	03 00       	.word	0x0003	; ????
 7e4:	00 02       	muls	r16, r16
 7e6:	08 05       	cpc	r16, r8
 7e8:	e8 03       	fmulsu	r22, r16
 7ea:	00 00       	nop
 7ec:	02 08       	sbc	r0, r2
 7ee:	07 7d       	andi	r16, 0xD7	; 215
 7f0:	03 00       	.word	0x0003	; ????
 7f2:	00 03       	mulsu	r16, r16
 7f4:	ff 02       	muls	r31, r31
 7f6:	00 00       	nop
 7f8:	05 28       	or	r0, r5
 7fa:	7e 00       	.word	0x007e	; ????
 7fc:	00 00       	nop
 7fe:	05 02       	muls	r16, r21
 800:	7d 02       	muls	r23, r29
 802:	00 00       	nop
 804:	03 06       	cpc	r0, r19
 806:	03 00       	.word	0x0003	; ????
 808:	00 05       	cpc	r16, r0
 80a:	62 73       	andi	r22, 0x32	; 50
 80c:	00 00       	nop
 80e:	00 06       	cpc	r0, r16
 810:	02 95       	swap	r16
 812:	00 00       	nop
 814:	00 02       	muls	r16, r16
 816:	01 06       	cpc	r0, r17
 818:	20 03       	mulsu	r18, r16
 81a:	00 00       	nop
 81c:	07 4e       	sbci	r16, 0xE7	; 231
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
 834:	33 03       	mulsu	r19, r19
 836:	00 00       	nop
 838:	02 65       	ori	r16, 0x52	; 82
 83a:	03 07       	cpc	r16, r19
 83c:	d2 03       	fmuls	r21, r18
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
 852:	09 6b       	ori	r16, 0xB9	; 185
 854:	03 00       	.word	0x0003	; ????
 856:	00 03       	mulsu	r16, r16
 858:	0d 03       	fmul	r16, r21
 85a:	09 c7       	rjmp	.+3602   	; 0x166e <__stack+0x56f>
 85c:	02 00       	.word	0x0002	; ????
 85e:	00 03       	mulsu	r16, r16
 860:	12 03       	mulsu	r17, r18
 862:	0a 01       	movw	r0, r20
 864:	f5 02       	muls	r31, r21
 866:	00 00       	nop
 868:	01 07       	cpc	r16, r17
 86a:	01 00       	.word	0x0001	; ????
 86c:	00 00       	nop
 86e:	00 00       	nop
 870:	00 00       	nop
 872:	00 03       	mulsu	r16, r16
 874:	92 20       	and	r9, r2
 876:	02 01       	movw	r0, r4
 878:	78 01       	movw	r14, r16
 87a:	00 00       	nop
 87c:	0b 73       	andi	r16, 0x3B	; 59
 87e:	74 72       	andi	r23, 0x24	; 36
 880:	00 01       	movw	r0, r0
 882:	07 8f       	std	Z+31, r16	; 0x1f
 884:	00 00       	nop
 886:	00 00       	nop
 888:	00 00       	nop
 88a:	00 0c       	add	r0, r0
 88c:	69 00       	.word	0x0069	; ????
 88e:	01 09       	sbc	r16, r1
 890:	3e 00       	.word	0x003e	; ????
 892:	00 00       	nop
 894:	36 00       	.word	0x0036	; ????
 896:	00 00       	nop
 898:	0d bb       	out	0x1d, r16	; 29
	...
 8a2:	00 00       	nop
 8a4:	00 01       	movw	r0, r0
 8a6:	0e 4e       	sbci	r16, 0xEE	; 238
 8a8:	01 00       	.word	0x0001	; ????
 8aa:	00 0e       	add	r0, r16
 8ac:	c8 00       	.word	0x00c8	; ????
 8ae:	00 00       	nop
 8b0:	90 00       	.word	0x0090	; ????
 8b2:	00 00       	nop
 8b4:	0f 9c       	mul	r0, r15
 8b6:	00 00       	nop
 8b8:	00 00       	nop
 8ba:	00 00       	nop
 8bc:	00 18       	sub	r0, r0
 8be:	00 00       	nop
 8c0:	00 02       	muls	r16, r16
 8c2:	63 0e       	add	r6, r19
 8c4:	a9 00       	.word	0x00a9	; ????
 8c6:	00 00       	nop
 8c8:	a3 00       	.word	0x00a3	; ????
 8ca:	00 00       	nop
 8cc:	00 00       	nop
 8ce:	0f b3       	in	r16, 0x1f	; 31
 8d0:	00 00       	nop
 8d2:	00 00       	nop
 8d4:	00 00       	nop
 8d6:	00 30       	cpi	r16, 0x00	; 0
 8d8:	00 00       	nop
 8da:	00 01       	movw	r0, r0
 8dc:	0c 0f       	add	r16, r28
 8de:	9c 00       	.word	0x009c	; ????
 8e0:	00 00       	nop
 8e2:	00 00       	nop
 8e4:	00 00       	nop
 8e6:	30 00       	.word	0x0030	; ????
 8e8:	00 00       	nop
 8ea:	02 67       	ori	r16, 0x72	; 114
 8ec:	0e a9       	ldd	r16, Y+54	; 0x36
 8ee:	00 00       	nop
 8f0:	00 b7       	in	r16, 0x30	; 48
 8f2:	00 00       	nop
 8f4:	00 00       	nop
 8f6:	00 00       	nop
 8f8:	0a 01       	movw	r0, r20
 8fa:	db 04       	cpc	r13, r11
 8fc:	00 00       	nop
 8fe:	01 13       	cpse	r16, r17
 900:	01 00       	.word	0x0001	; ????
 902:	00 00       	nop
 904:	00 00       	nop
 906:	00 00       	nop
 908:	00 03       	mulsu	r16, r16
 90a:	92 20       	and	r9, r2
 90c:	02 01       	movw	r0, r4
 90e:	1a 02       	muls	r17, r26
 910:	00 00       	nop
 912:	10 64       	ori	r17, 0x40	; 64
 914:	03 00       	.word	0x0003	; ????
 916:	00 01       	movw	r0, r0
 918:	13 8f       	std	Z+27, r17	; 0x1b
 91a:	00 00       	nop
 91c:	00 cb       	rjmp	.-2560   	; 0xffffff1e <__eeprom_end+0xff7eff1e>
 91e:	00 00       	nop
 920:	00 0b       	sbc	r16, r16
 922:	61 72       	andi	r22, 0x21	; 33
 924:	67 00       	.word	0x0067	; ????
 926:	01 13       	cpse	r16, r17
 928:	84 00       	.word	0x0084	; ????
 92a:	00 00       	nop
 92c:	01 01       	movw	r0, r2
 92e:	00 00       	nop
 930:	11 2e       	mov	r1, r17
 932:	03 00       	.word	0x0003	; ????
 934:	00 01       	movw	r0, r0
 936:	15 1a       	sub	r1, r21
 938:	02 00       	.word	0x0002	; ????
 93a:	00 05       	cpc	r16, r0
 93c:	03 00       	.word	0x0003	; ????
 93e:	00 00       	nop
 940:	00 12       	cpse	r0, r16
 942:	00 00       	nop
 944:	00 00       	nop
 946:	c2 03       	fmuls	r20, r18
 948:	00 00       	nop
 94a:	00 02       	muls	r16, r16
 94c:	00 00       	nop
 94e:	13 06       	cpc	r1, r19
 950:	68 93       	.word	0x9368	; ????
 952:	01 69       	ori	r16, 0x91	; 145
 954:	93 01       	movw	r18, r6
 956:	05 03       	mulsu	r16, r21
 958:	00 00       	nop
 95a:	00 00       	nop
 95c:	13 06       	cpc	r1, r19
 95e:	66 93       	lac	Z, r22
 960:	01 67       	ori	r16, 0x71	; 113
 962:	93 01       	movw	r18, r6
 964:	02 08       	sbc	r0, r2
 966:	80 13       	cpse	r24, r16
 968:	06 64       	ori	r16, 0x46	; 70
 96a:	93 01       	movw	r18, r6
 96c:	65 93       	las	Z, r22
 96e:	01 03       	mulsu	r16, r17
 970:	f3 01       	movw	r30, r6
 972:	68 13       	cpse	r22, r24
 974:	06 62       	ori	r16, 0x26	; 38
 976:	93 01       	movw	r18, r6
 978:	63 93       	.word	0x9363	; ????
 97a:	01 03       	mulsu	r16, r17
 97c:	f3 01       	movw	r30, r6
 97e:	66 00       	.word	0x0066	; ????
 980:	14 00       	.word	0x0014	; ????
 982:	00 00       	nop
 984:	00 01       	movw	r0, r0
 986:	e2 00       	.word	0x00e2	; ????
 988:	00 00       	nop
 98a:	13 06       	cpc	r1, r19
 98c:	68 93       	.word	0x9368	; ????
 98e:	01 69       	ori	r16, 0x91	; 145
 990:	93 01       	movw	r18, r6
 992:	05 03       	mulsu	r16, r21
 994:	00 00       	nop
 996:	00 00       	nop
 998:	00 00       	nop
 99a:	15 95       	asr	r17
 99c:	00 00       	nop
 99e:	00 2a       	or	r0, r16
 9a0:	02 00       	.word	0x0002	; ????
 9a2:	00 16       	cp	r0, r16
 9a4:	2a 02       	muls	r18, r26
 9a6:	00 00       	nop
 9a8:	7f 00       	.word	0x007f	; ????
 9aa:	02 02       	muls	r16, r18
 9ac:	07 c9       	rjmp	.-3570   	; 0xfffffbbc <__eeprom_end+0xff7efbbc>
 9ae:	03 00       	.word	0x0003	; ????
 9b0:	00 17       	cp	r16, r16
 9b2:	01 bc       	out	0x21, r0	; 33
 9b4:	02 00       	.word	0x0002	; ????
 9b6:	00 01       	movw	r0, r0
 9b8:	1a 01       	movw	r2, r20
	...
 9c2:	37 01       	movw	r6, r14
 9c4:	00 00       	nop
 9c6:	01 8c       	ldd	r0, Z+25	; 0x19
 9c8:	02 00       	.word	0x0002	; ????
 9ca:	00 18       	sub	r0, r0
 9cc:	64 03       	mulsu	r22, r20
 9ce:	00 00       	nop
 9d0:	01 1a       	sub	r0, r17
 9d2:	8f 00       	.word	0x008f	; ????
 9d4:	00 00       	nop
 9d6:	02 91       	ld	r16, -Z
 9d8:	01 19       	sub	r16, r1
 9da:	0c 61       	ori	r16, 0x1C	; 28
 9dc:	72 67       	ori	r23, 0x72	; 114
 9de:	00 01       	movw	r0, r0
 9e0:	1c 84       	ldd	r1, Y+12	; 0x0c
 9e2:	00 00       	nop
 9e4:	00 72       	andi	r16, 0x20	; 32
 9e6:	01 00       	.word	0x0001	; ????
 9e8:	00 1a       	sub	r0, r16
 9ea:	00 00       	nop
 9ec:	00 00       	nop
 9ee:	78 01       	movw	r14, r16
 9f0:	00 00       	nop
 9f2:	13 06       	cpc	r1, r19
 9f4:	68 93       	.word	0x9368	; ????
 9f6:	01 69       	ori	r16, 0x91	; 145
 9f8:	93 01       	movw	r18, r6
 9fa:	04 91       	lpm	r16, Z
 9fc:	01 94       	neg	r0
 9fe:	02 13       	cpse	r16, r18
 a00:	06 66       	ori	r16, 0x66	; 102
 a02:	93 01       	movw	r18, r6
 a04:	67 93       	lat	Z, r22
 a06:	01 02       	muls	r16, r17
 a08:	91 03       	fmuls	r17, r17
 a0a:	00 00       	nop
 a0c:	1b 01       	movw	r2, r22
 a0e:	f6 03       	fmuls	r23, r22
 a10:	00 00       	nop
 a12:	01 25       	eor	r16, r1
 a14:	ce 00       	.word	0x00ce	; ????
 a16:	00 00       	nop
 a18:	d6 00       	.word	0x00d6	; ????
 a1a:	00 00       	nop
 a1c:	03 92       	.word	0x9203	; ????
 a1e:	20 02       	muls	r18, r16
 a20:	01 b5       	in	r16, 0x21	; 33
 a22:	02 00       	.word	0x0002	; ????
 a24:	00 1c       	adc	r0, r0
 a26:	d2 00       	.word	0x00d2	; ????
 a28:	00 00       	nop
 a2a:	ce 00       	.word	0x00ce	; ????
 a2c:	00 00       	nop
 a2e:	d6 00       	.word	0x00d6	; ????
 a30:	00 00       	nop
 a32:	01 32       	cpi	r16, 0x21	; 33
 a34:	00 1b       	sub	r16, r16
 a36:	01 9f       	mul	r16, r17
 a38:	02 00       	.word	0x0002	; ????
 a3a:	00 01       	movw	r0, r0
 a3c:	34 d6       	rcall	.+3176   	; 0x16a6 <__stack+0x5a7>
 a3e:	00 00       	nop
 a40:	00 dc       	rcall	.-2048   	; 0x242 <__data_load_end+0x3a>
 a42:	00 00       	nop
 a44:	00 03       	mulsu	r16, r16
 a46:	92 20       	and	r9, r2
 a48:	02 01       	movw	r0, r4
 a4a:	de 02       	muls	r29, r30
 a4c:	00 00       	nop
 a4e:	1c da       	rcall	.-3016   	; 0xfffffe88 <__eeprom_end+0xff7efe88>
 a50:	00 00       	nop
 a52:	00 d6       	rcall	.+3072   	; 0x1654 <__stack+0x555>
 a54:	00 00       	nop
 a56:	00 dc       	rcall	.-2048   	; 0x258 <__data_load_end+0x50>
 a58:	00 00       	nop
 a5a:	00 01       	movw	r0, r0
 a5c:	35 00       	.word	0x0035	; ????
 a5e:	17 01       	movw	r2, r14
 a60:	0e 03       	fmul	r16, r22
 a62:	00 00       	nop
 a64:	01 42       	sbci	r16, 0x21	; 33
 a66:	01 00       	.word	0x0001	; ????
 a68:	00 00       	nop
 a6a:	00 00       	nop
 a6c:	00 00       	nop
 a6e:	00 97       	sbiw	r24, 0x00	; 0
 a70:	01 00       	.word	0x0001	; ????
 a72:	00 01       	movw	r0, r0
 a74:	11 03       	mulsu	r17, r17
 a76:	00 00       	nop
 a78:	10 99       	sbic	0x02, 0	; 2
 a7a:	02 00       	.word	0x0002	; ????
 a7c:	00 01       	movw	r0, r0
 a7e:	42 53       	subi	r20, 0x32	; 50
 a80:	00 00       	nop
 a82:	00 07       	cpc	r16, r16
 a84:	02 00       	.word	0x0002	; ????
 a86:	00 1d       	adc	r16, r0
 a88:	00 00       	nop
 a8a:	00 00       	nop
 a8c:	31 02       	muls	r19, r17
 a8e:	00 00       	nop
 a90:	00 17       	cp	r16, r16
 a92:	01 25       	eor	r16, r1
 a94:	03 00       	.word	0x0003	; ????
 a96:	00 01       	movw	r0, r0
 a98:	46 01       	movw	r8, r12
	...
 aa2:	33 02       	muls	r19, r19
 aa4:	00 00       	nop
 aa6:	01 44       	sbci	r16, 0x41	; 65
 aa8:	03 00       	.word	0x0003	; ????
 aaa:	00 0b       	sbc	r16, r16
 aac:	73 74       	andi	r23, 0x43	; 67
 aae:	72 00       	.word	0x0072	; ????
 ab0:	01 46       	sbci	r16, 0x61	; 97
 ab2:	44 03       	mulsu	r20, r20
 ab4:	00 00       	nop
 ab6:	89 02       	muls	r24, r25
 ab8:	00 00       	nop
 aba:	1d 00       	.word	0x001d	; ????
 abc:	00 00       	nop
 abe:	00 31       	cpi	r16, 0x10	; 16
 ac0:	02 00       	.word	0x0002	; ????
 ac2:	00 00       	nop
 ac4:	06 02       	muls	r16, r22
 ac6:	2c 00       	.word	0x002c	; ????
 ac8:	00 00       	nop
 aca:	1e 01       	movw	r2, r28
 acc:	49 03       	fmul	r20, r17
 ace:	00 00       	nop
 ad0:	01 4a       	sbci	r16, 0xA1	; 161
 ad2:	3e 00       	.word	0x003e	; ????
 ad4:	00 00       	nop
 ad6:	dc 00       	.word	0x00dc	; ????
 ad8:	00 00       	nop
 ada:	e8 00       	.word	0x00e8	; ????
 adc:	00 00       	nop
 ade:	03 92       	.word	0x9203	; ????
 ae0:	20 02       	muls	r18, r16
 ae2:	01 84       	ldd	r0, Z+9	; 0x09
 ae4:	03 00       	.word	0x0003	; ????
 ae6:	00 1f       	adc	r16, r16
 ae8:	01 9c       	mul	r0, r1
 aea:	03 00       	.word	0x0003	; ????
 aec:	00 01       	movw	r0, r0
 aee:	4b 3e       	cpi	r20, 0xEB	; 235
 af0:	00 00       	nop
 af2:	00 01       	movw	r0, r0
 af4:	7a 03       	fmul	r23, r18
 af6:	00 00       	nop
 af8:	19 00       	.word	0x0019	; ????
 afa:	1d e0       	ldi	r17, 0x0D	; 13
 afc:	00 00       	nop
 afe:	00 d0       	rcall	.+0      	; 0xb00 <__LOCK_REGION_LENGTH__+0x700>
 b00:	03 00       	.word	0x0003	; ????
 b02:	00 00       	nop
 b04:	15 94       	asr	r1
 b06:	03 00       	.word	0x0003	; ????
 b08:	00 94       	com	r0
 b0a:	03 00       	.word	0x0003	; ????
 b0c:	00 16       	cp	r0, r16
 b0e:	2a 02       	muls	r18, r26
 b10:	00 00       	nop
 b12:	04 00       	.word	0x0004	; ????
 b14:	20 2c       	mov	r2, r0
 b16:	00 00       	nop
 b18:	00 21       	and	r16, r0
 b1a:	1b 04       	cpc	r1, r11
 b1c:	00 00       	nop
 b1e:	02 45       	sbci	r16, 0x52	; 82
 b20:	ab 03       	fmulsu	r18, r19
 b22:	00 00       	nop
 b24:	01 05       	cpc	r16, r1
 b26:	03 00       	.word	0x0003	; ????
 b28:	01 80       	ldd	r0, Z+1	; 0x01
 b2a:	00 20       	and	r0, r0
 b2c:	84 03       	fmuls	r16, r20
 b2e:	00 00       	nop
 b30:	21 da       	rcall	.-3006   	; 0xffffff74 <__eeprom_end+0xff7eff74>
 b32:	02 00       	.word	0x0002	; ????
 b34:	00 03       	mulsu	r16, r16
 b36:	0b 94       	des	0
 b38:	03 00       	.word	0x0003	; ????
 b3a:	00 01       	movw	r0, r0
 b3c:	05 03       	mulsu	r16, r21
 b3e:	05 01       	movw	r0, r10
 b40:	80 00       	.word	0x0080	; ????
 b42:	22 01       	movw	r4, r4
 b44:	01 8f       	std	Z+25, r16	; 0x19
 b46:	02 00       	.word	0x0002	; ????
 b48:	00 8f       	std	Z+24, r16	; 0x18
 b4a:	02 00       	.word	0x0002	; ????
 b4c:	00 06       	cpc	r0, r16
 b4e:	cb 02       	muls	r28, r27
 b50:	23 01       	movw	r4, r6
 b52:	01 9c       	mul	r0, r1
 b54:	03 00       	.word	0x0003	; ????
 b56:	00 9c       	mul	r0, r0
 b58:	03 00       	.word	0x0003	; ????
 b5a:	00 01       	movw	r0, r0
 b5c:	4b 00       	.word	0x004b	; ????
 b5e:	70 01       	movw	r14, r0
 b60:	00 00       	nop
 b62:	02 00       	.word	0x0002	; ????
 b64:	18 09       	sbc	r17, r8
 b66:	00 00       	nop
 b68:	04 01       	movw	r0, r8
 b6a:	25 04       	cpc	r2, r5
 b6c:	00 00       	nop
 b6e:	0c e6       	ldi	r16, 0x6C	; 108
 b70:	04 00       	.word	0x0004	; ????
 b72:	00 c0       	rjmp	.+0      	; 0xb74 <__LOCK_REGION_LENGTH__+0x774>
	...
 b7c:	00 00       	nop
 b7e:	00 11       	cpse	r16, r0
 b80:	02 00       	.word	0x0002	; ????
 b82:	00 02       	muls	r16, r16
 b84:	01 06       	cpc	r0, r17
 b86:	19 03       	fmul	r17, r17
 b88:	00 00       	nop
 b8a:	03 94       	inc	r0
 b8c:	03 00       	.word	0x0003	; ????
 b8e:	00 03       	mulsu	r16, r16
 b90:	7e 37       	cpi	r23, 0x7E	; 126
 b92:	00 00       	nop
 b94:	00 02       	muls	r16, r16
 b96:	01 08       	sbc	r0, r1
 b98:	17 03       	mulsu	r17, r23
 b9a:	00 00       	nop
 b9c:	04 02       	muls	r16, r20
 b9e:	05 69       	ori	r16, 0x95	; 149
 ba0:	6e 74       	andi	r22, 0x4E	; 78
 ba2:	00 02       	muls	r16, r16
 ba4:	02 07       	cpc	r16, r18
 ba6:	87 03       	fmuls	r16, r23
 ba8:	00 00       	nop
 baa:	02 04       	cpc	r0, r2
 bac:	05 ed       	ldi	r16, 0xD5	; 213
 bae:	03 00       	.word	0x0003	; ????
 bb0:	00 02       	muls	r16, r16
 bb2:	04 07       	cpc	r16, r20
 bb4:	82 03       	fmuls	r16, r18
 bb6:	00 00       	nop
 bb8:	02 08       	sbc	r0, r2
 bba:	05 e8       	ldi	r16, 0x85	; 133
 bbc:	03 00       	.word	0x0003	; ????
 bbe:	00 02       	muls	r16, r16
 bc0:	08 07       	cpc	r16, r24
 bc2:	7d 03       	fmul	r23, r21
 bc4:	00 00       	nop
 bc6:	05 01       	movw	r0, r10
 bc8:	9c 03       	fmulsu	r17, r20
 bca:	00 00       	nop
 bcc:	01 0c       	add	r0, r1
 bce:	e8 00       	.word	0x00e8	; ????
 bd0:	00 00       	nop
 bd2:	b4 01       	movw	r22, r8
 bd4:	00 00       	nop
 bd6:	af 02       	muls	r26, r31
 bd8:	00 00       	nop
 bda:	01 cc       	rjmp	.-2046   	; 0x3de <__data_load_end+0x1d6>
 bdc:	00 00       	nop
 bde:	00 06       	cpc	r0, r16
 be0:	19 05       	cpc	r17, r9
 be2:	00 00       	nop
 be4:	01 15       	cp	r16, r1
 be6:	cc 00       	.word	0x00cc	; ????
 be8:	00 00       	nop
 bea:	02 8c       	ldd	r0, Z+26	; 0x1a
 bec:	01 07       	cpc	r16, r17
 bee:	90 00       	.word	0x0090	; ????
 bf0:	00 00       	nop
 bf2:	b9 00       	.word	0x00b9	; ????
 bf4:	00 00       	nop
 bf6:	08 69       	ori	r16, 0x98	; 152
 bf8:	00 01       	movw	r0, r0
 bfa:	19 3e       	cpi	r17, 0xE9	; 233
 bfc:	00 00       	nop
 bfe:	00 93 03 00 	sts	0x0003, r16	; 0x800003 <__TEXT_REGION_LENGTH__+0x7e0003>
 c02:	00 09       	sbc	r16, r0
 c04:	a8 00       	.word	0x00a8	; ????
 c06:	00 00       	nop
 c08:	08 6a       	ori	r16, 0xA8	; 168
 c0a:	00 01       	movw	r0, r0
 c0c:	1a 3e       	cpi	r17, 0xEA	; 234
 c0e:	00 00       	nop
 c10:	00 a7       	std	Z+40, r16	; 0x28
 c12:	03 00       	.word	0x0003	; ????
 c14:	00 00       	nop
 c16:	00 0a       	sbc	r0, r16
 c18:	0e 01       	movw	r0, r28
 c1a:	00 00       	nop
 c1c:	59 01       	movw	r10, r18
 c1e:	00 00       	nop
 c20:	0a 94       	dec	r0
 c22:	01 00       	.word	0x0001	; ????
 c24:	00 66       	ori	r16, 0x60	; 96
 c26:	01 00       	.word	0x0001	; ????
 c28:	00 00       	nop
 c2a:	0b 37       	cpi	r16, 0x7B	; 123
 c2c:	00 00       	nop
 c2e:	00 0c       	add	r0, r0
 c30:	e8 00       	.word	0x00e8	; ????
 c32:	00 00       	nop
 c34:	e1 00       	.word	0x00e1	; ????
 c36:	00 00       	nop
 c38:	0d e1       	ldi	r16, 0x1D	; 29
 c3a:	00 00       	nop
 c3c:	00 04       	cpc	r0, r0
 c3e:	00 02       	muls	r16, r16
 c40:	02 07       	cpc	r16, r18
 c42:	c9 03       	fmulsu	r20, r17
 c44:	00 00       	nop
 c46:	0b 2c       	mov	r0, r11
 c48:	00 00       	nop
 c4a:	00 0e       	add	r0, r16
 c4c:	1b 04       	cpc	r1, r11
 c4e:	00 00       	nop
 c50:	04 45       	sbci	r16, 0x54	; 84
 c52:	ff 00       	.word	0x00ff	; ????
 c54:	00 00       	nop
 c56:	01 05       	cpc	r16, r1
 c58:	03 00       	.word	0x0003	; ????
 c5a:	01 80       	ldd	r0, Z+1	; 0x01
 c5c:	00 0b       	sbc	r16, r16
 c5e:	d1 00       	.word	0x00d1	; ????
 c60:	00 00       	nop
 c62:	0c 15       	cp	r16, r12
 c64:	01 00       	.word	0x0001	; ????
 c66:	00 15       	cp	r16, r0
 c68:	01 00       	.word	0x0001	; ????
 c6a:	00 0f       	add	r16, r16
 c6c:	e1 00       	.word	0x00e1	; ????
 c6e:	00 00       	nop
 c70:	c3 09       	sbc	r28, r3
 c72:	00 10       	cpse	r0, r0
 c74:	37 00       	.word	0x0037	; ????
 c76:	00 00       	nop
 c78:	11 52       	subi	r17, 0x21	; 33
 c7a:	00 01       	movw	r0, r0
 c7c:	07 2a       	or	r0, r23
 c7e:	01 00       	.word	0x0001	; ????
 c80:	00 01       	movw	r0, r0
 c82:	05 03       	mulsu	r16, r21
 c84:	8e 14       	cp	r8, r14
 c86:	80 00       	.word	0x0080	; ????
 c88:	10 04       	cpc	r1, r0
 c8a:	01 00       	.word	0x0001	; ????
 c8c:	00 11       	cpse	r16, r0
 c8e:	47 00       	.word	0x0047	; ????
 c90:	01 07       	cpc	r16, r17
 c92:	3f 01       	movw	r6, r30
 c94:	00 00       	nop
 c96:	01 05       	cpc	r16, r1
 c98:	03 ca       	rjmp	.-3066   	; 0xa0 <__do_copy_data+0x8>
 c9a:	0a 80       	ldd	r0, Y+2	; 0x02
 c9c:	00 10       	cpse	r0, r0
 c9e:	04 01       	movw	r0, r8
 ca0:	00 00       	nop
 ca2:	11 42       	sbci	r17, 0x21	; 33
 ca4:	00 01       	movw	r0, r0
 ca6:	07 54       	subi	r16, 0x47	; 71
 ca8:	01 00       	.word	0x0001	; ????
 caa:	00 01       	movw	r0, r0
 cac:	05 03       	mulsu	r16, r21
 cae:	06 01       	movw	r0, r12
 cb0:	80 00       	.word	0x0080	; ????
 cb2:	10 04       	cpc	r1, r0
 cb4:	01 00       	.word	0x0001	; ????
 cb6:	00 12       	cpse	r0, r16
 cb8:	01 01       	movw	r0, r2
 cba:	f6 03       	fmuls	r23, r22
 cbc:	00 00       	nop
 cbe:	f6 03       	fmuls	r23, r22
 cc0:	00 00       	nop
 cc2:	02 1e       	adc	r0, r18
 cc4:	12 01       	movw	r2, r4
 cc6:	01 9f       	mul	r16, r17
 cc8:	02 00       	.word	0x0002	; ????
 cca:	00 9f       	mul	r16, r16
 ccc:	02 00       	.word	0x0002	; ????
 cce:	00 02       	muls	r16, r16
 cd0:	1f 00       	.word	0x001f	; ????

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
 896:	00 31       	cpi	r16, 0x10	; 16
 898:	13 11       	cpse	r17, r3
 89a:	01 12       	cpse	r0, r17
 89c:	01 58       	subi	r16, 0x81	; 129
 89e:	0b 59       	subi	r16, 0x9B	; 155
 8a0:	0b 00       	.word	0x000b	; ????
 8a2:	00 1d       	adc	r16, r0
 8a4:	89 82       	std	Y+1, r8	; 0x01
 8a6:	01 00       	.word	0x0001	; ????
 8a8:	11 01       	movw	r2, r2
 8aa:	31 13       	cpse	r19, r17
 8ac:	00 00       	nop
 8ae:	1e 2e       	mov	r1, r30
 8b0:	01 3f       	cpi	r16, 0xF1	; 241
 8b2:	0c 03       	fmul	r16, r20
 8b4:	0e 3a       	cpi	r16, 0xAE	; 174
 8b6:	0b 3b       	cpi	r16, 0xBB	; 187
 8b8:	0b 49       	sbci	r16, 0x9B	; 155
 8ba:	13 11       	cpse	r17, r3
 8bc:	01 12       	cpse	r0, r17
 8be:	01 40       	sbci	r16, 0x01	; 1
 8c0:	0a 97       	sbiw	r24, 0x0a	; 10
 8c2:	42 0c       	add	r4, r2
 8c4:	01 13       	cpse	r16, r17
 8c6:	00 00       	nop
 8c8:	1f 2e       	mov	r1, r31
 8ca:	01 3f       	cpi	r16, 0xF1	; 241
 8cc:	0c 03       	fmul	r16, r20
 8ce:	0e 3a       	cpi	r16, 0xAE	; 174
 8d0:	0b 3b       	cpi	r16, 0xBB	; 187
 8d2:	0b 49       	sbci	r16, 0x9B	; 155
 8d4:	13 3c       	cpi	r17, 0xC3	; 195
 8d6:	0c 01       	movw	r0, r24
 8d8:	13 00       	.word	0x0013	; ????
 8da:	00 20       	and	r0, r0
 8dc:	35 00       	.word	0x0035	; ????
 8de:	49 13       	cpse	r20, r25
 8e0:	00 00       	nop
 8e2:	21 34       	cpi	r18, 0x41	; 65
 8e4:	00 03       	mulsu	r16, r16
 8e6:	0e 3a       	cpi	r16, 0xAE	; 174
 8e8:	0b 3b       	cpi	r16, 0xBB	; 187
 8ea:	0b 49       	sbci	r16, 0x9B	; 155
 8ec:	13 3f       	cpi	r17, 0xF3	; 243
 8ee:	0c 02       	muls	r16, r28
 8f0:	0a 00       	.word	0x000a	; ????
 8f2:	00 22       	and	r0, r16
 8f4:	2e 00       	.word	0x002e	; ????
 8f6:	3f 0c       	add	r3, r15
 8f8:	3c 0c       	add	r3, r12
 8fa:	87 40       	sbci	r24, 0x07	; 7
 8fc:	0e 03       	fmul	r16, r22
 8fe:	0e 3a       	cpi	r16, 0xAE	; 174
 900:	0b 3b       	cpi	r16, 0xBB	; 187
 902:	05 00       	.word	0x0005	; ????
 904:	00 23       	and	r16, r16
 906:	2e 00       	.word	0x002e	; ????
 908:	3f 0c       	add	r3, r15
 90a:	3c 0c       	add	r3, r12
 90c:	87 40       	sbci	r24, 0x07	; 7
 90e:	0e 03       	fmul	r16, r22
 910:	0e 3a       	cpi	r16, 0xAE	; 174
 912:	0b 3b       	cpi	r16, 0xBB	; 187
 914:	0b 00       	.word	0x000b	; ????
 916:	00 00       	nop
 918:	01 11       	cpse	r16, r1
 91a:	01 25       	eor	r16, r1
 91c:	0e 13       	cpse	r16, r30
 91e:	0b 03       	fmul	r16, r19
 920:	0e 55       	subi	r16, 0x5E	; 94
 922:	06 11       	cpse	r16, r6
 924:	01 52       	subi	r16, 0x21	; 33
 926:	01 10       	cpse	r0, r1
 928:	06 00       	.word	0x0006	; ????
 92a:	00 02       	muls	r16, r16
 92c:	24 00       	.word	0x0024	; ????
 92e:	0b 0b       	sbc	r16, r27
 930:	3e 0b       	sbc	r19, r30
 932:	03 0e       	add	r0, r19
 934:	00 00       	nop
 936:	03 16       	cp	r0, r19
 938:	00 03       	mulsu	r16, r16
 93a:	0e 3a       	cpi	r16, 0xAE	; 174
 93c:	0b 3b       	cpi	r16, 0xBB	; 187
 93e:	0b 49       	sbci	r16, 0x9B	; 155
 940:	13 00       	.word	0x0013	; ????
 942:	00 04       	cpc	r0, r0
 944:	24 00       	.word	0x0024	; ????
 946:	0b 0b       	sbc	r16, r27
 948:	3e 0b       	sbc	r19, r30
 94a:	03 08       	sbc	r0, r3
 94c:	00 00       	nop
 94e:	05 2e       	mov	r0, r21
 950:	01 3f       	cpi	r16, 0xF1	; 241
 952:	0c 03       	fmul	r16, r20
 954:	0e 3a       	cpi	r16, 0xAE	; 174
 956:	0b 3b       	cpi	r16, 0xBB	; 187
 958:	0b 11       	cpse	r16, r11
 95a:	01 12       	cpse	r0, r17
 95c:	01 40       	sbci	r16, 0x01	; 1
 95e:	06 97       	sbiw	r24, 0x06	; 6
 960:	42 0c       	add	r4, r2
 962:	01 13       	cpse	r16, r17
 964:	00 00       	nop
 966:	06 34       	cpi	r16, 0x46	; 70
 968:	00 03       	mulsu	r16, r16
 96a:	0e 3a       	cpi	r16, 0xAE	; 174
 96c:	0b 3b       	cpi	r16, 0xBB	; 187
 96e:	0b 49       	sbci	r16, 0x9B	; 155
 970:	13 02       	muls	r17, r19
 972:	0a 00       	.word	0x000a	; ????
 974:	00 07       	cpc	r16, r16
 976:	0b 01       	movw	r0, r22
 978:	55 06       	cpc	r5, r21
 97a:	01 13       	cpse	r16, r17
 97c:	00 00       	nop
 97e:	08 34       	cpi	r16, 0x48	; 72
 980:	00 03       	mulsu	r16, r16
 982:	08 3a       	cpi	r16, 0xA8	; 168
 984:	0b 3b       	cpi	r16, 0xBB	; 187
 986:	0b 49       	sbci	r16, 0x9B	; 155
 988:	13 02       	muls	r17, r19
 98a:	06 00       	.word	0x0006	; ????
 98c:	00 09       	sbc	r16, r0
 98e:	0b 01       	movw	r0, r22
 990:	55 06       	cpc	r5, r21
 992:	00 00       	nop
 994:	0a 89       	ldd	r16, Y+18	; 0x12
 996:	82 01       	movw	r16, r4
 998:	00 11       	cpse	r16, r0
 99a:	01 31       	cpi	r16, 0x11	; 17
 99c:	13 00       	.word	0x0013	; ????
 99e:	00 0b       	sbc	r16, r16
 9a0:	35 00       	.word	0x0035	; ????
 9a2:	49 13       	cpse	r20, r25
 9a4:	00 00       	nop
 9a6:	0c 01       	movw	r0, r24
 9a8:	01 49       	sbci	r16, 0x91	; 145
 9aa:	13 01       	movw	r2, r6
 9ac:	13 00       	.word	0x0013	; ????
 9ae:	00 0d       	add	r16, r0
 9b0:	21 00       	.word	0x0021	; ????
 9b2:	49 13       	cpse	r20, r25
 9b4:	2f 0b       	sbc	r18, r31
 9b6:	00 00       	nop
 9b8:	0e 34       	cpi	r16, 0x4E	; 78
 9ba:	00 03       	mulsu	r16, r16
 9bc:	0e 3a       	cpi	r16, 0xAE	; 174
 9be:	0b 3b       	cpi	r16, 0xBB	; 187
 9c0:	0b 49       	sbci	r16, 0x9B	; 155
 9c2:	13 3f       	cpi	r17, 0xF3	; 243
 9c4:	0c 02       	muls	r16, r28
 9c6:	0a 00       	.word	0x000a	; ????
 9c8:	00 0f       	add	r16, r16
 9ca:	21 00       	.word	0x0021	; ????
 9cc:	49 13       	cpse	r20, r25
 9ce:	2f 05       	cpc	r18, r15
 9d0:	00 00       	nop
 9d2:	10 26       	eor	r1, r16
 9d4:	00 49       	sbci	r16, 0x90	; 144
 9d6:	13 00       	.word	0x0013	; ????
 9d8:	00 11       	cpse	r16, r0
 9da:	34 00       	.word	0x0034	; ????
 9dc:	03 08       	sbc	r0, r3
 9de:	3a 0b       	sbc	r19, r26
 9e0:	3b 0b       	sbc	r19, r27
 9e2:	49 13       	cpse	r20, r25
 9e4:	3f 0c       	add	r3, r15
 9e6:	02 0a       	sbc	r0, r18
 9e8:	00 00       	nop
 9ea:	12 2e       	mov	r1, r18
 9ec:	00 3f       	cpi	r16, 0xF0	; 240
 9ee:	0c 3c       	cpi	r16, 0xCC	; 204
 9f0:	0c 87       	std	Y+12, r16	; 0x0c
 9f2:	40 0e       	add	r4, r16
 9f4:	03 0e       	add	r0, r19
 9f6:	3a 0b       	sbc	r19, r26
 9f8:	3b 0b       	sbc	r19, r27
 9fa:	00 00       	nop
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
  1a:	f3 01       	movw	r30, r6
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
 10e:	03 d6       	rcall	.+3078   	; 0xd16 <__LOCK_REGION_LENGTH__+0x916>
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
 12a:	03 d3       	rcall	.+1542   	; 0x732 <__LOCK_REGION_LENGTH__+0x332>
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
 18e:	04 03       	mulsu	r16, r20
 190:	03 6a       	ori	r16, 0xA3	; 163
 192:	09 00       	.word	0x0009	; ????
 194:	00 01       	movw	r0, r0
 196:	09 08       	sbc	r0, r9
 198:	00 00       	nop
 19a:	01 01       	movw	r0, r2
 19c:	00 05       	cpc	r16, r0
 19e:	02 d6       	rcall	.+3076   	; 0xda4 <__LOCK_REGION_LENGTH__+0x9a4>
 1a0:	00 00       	nop
 1a2:	00 03       	mulsu	r16, r16
 1a4:	33 01       	movw	r6, r6
 1a6:	04 03       	mulsu	r16, r20
 1a8:	03 60       	ori	r16, 0x03	; 3
 1aa:	09 00       	.word	0x0009	; ????
 1ac:	00 01       	movw	r0, r0
 1ae:	09 06       	cpc	r0, r25
 1b0:	00 00       	nop
 1b2:	01 01       	movw	r0, r2
 1b4:	00 05       	cpc	r16, r0
 1b6:	02 00       	.word	0x0002	; ????
 1b8:	00 00       	nop
 1ba:	00 03       	mulsu	r16, r16
 1bc:	c1 00       	.word	0x00c1	; ????
 1be:	01 03       	mulsu	r16, r17
 1c0:	01 09       	sbc	r16, r1
 1c2:	00 00       	nop
 1c4:	01 03       	mulsu	r16, r17
 1c6:	01 09       	sbc	r16, r1
 1c8:	00 00       	nop
 1ca:	01 09       	sbc	r16, r1
 1cc:	00 00       	nop
 1ce:	00 01       	movw	r0, r0
 1d0:	01 00       	.word	0x0001	; ????
 1d2:	05 02       	muls	r16, r21
 1d4:	00 00       	nop
 1d6:	00 00       	nop
 1d8:	03 c5       	rjmp	.+2566   	; 0xbe0 <__LOCK_REGION_LENGTH__+0x7e0>
 1da:	00 01       	movw	r0, r0
 1dc:	03 01       	movw	r0, r6
 1de:	09 00       	.word	0x0009	; ????
 1e0:	00 01       	movw	r0, r0
 1e2:	03 01       	movw	r0, r6
 1e4:	09 00       	.word	0x0009	; ????
 1e6:	00 01       	movw	r0, r0
 1e8:	09 00       	.word	0x0009	; ????
 1ea:	00 00       	nop
 1ec:	01 01       	movw	r0, r2
 1ee:	00 05       	cpc	r16, r0
 1f0:	02 dc       	rcall	.-2044   	; 0xfffff9f6 <__eeprom_end+0xff7ef9f6>
 1f2:	00 00       	nop
 1f4:	00 03       	mulsu	r16, r16
 1f6:	c9 00       	.word	0x00c9	; ????
 1f8:	01 03       	mulsu	r16, r17
 1fa:	01 09       	sbc	r16, r1
 1fc:	00 00       	nop
 1fe:	01 03       	mulsu	r16, r17
 200:	01 09       	sbc	r16, r1
 202:	04 00       	.word	0x0004	; ????
 204:	01 03       	mulsu	r16, r17
 206:	01 09       	sbc	r16, r1
 208:	02 00       	.word	0x0002	; ????
 20a:	01 09       	sbc	r16, r1
 20c:	06 00       	.word	0x0006	; ????
 20e:	00 01       	movw	r0, r0
 210:	01 fe       	sbrs	r0, 1
 212:	00 00       	nop
 214:	00 02       	muls	r16, r16
 216:	00 ac       	ldd	r0, Z+56	; 0x38
 218:	00 00       	nop
 21a:	00 02       	muls	r16, r16
 21c:	01 fb       	bst	r16, 1
 21e:	0e 0a       	sbc	r0, r30
 220:	00 01       	movw	r0, r0
 222:	01 01       	movw	r0, r2
 224:	01 00       	.word	0x0001	; ????
 226:	00 00       	nop
 228:	01 2f       	mov	r16, r17
 22a:	68 6f       	ori	r22, 0xF8	; 248
 22c:	6d 65       	ori	r22, 0x5D	; 93
 22e:	2f 66       	ori	r18, 0x6F	; 111
 230:	61 6e       	ori	r22, 0xE1	; 225
 232:	68 63       	ori	r22, 0x38	; 56
 234:	2f 77       	andi	r18, 0x7F	; 127
 236:	61 73       	andi	r22, 0x31	; 49
 238:	6d 2d       	mov	r22, r13
 23a:	61 6f       	ori	r22, 0xF1	; 241
 23c:	74 2f       	mov	r23, r20
 23e:	61 70       	andi	r22, 0x01	; 1
 240:	70 2f       	mov	r23, r16
 242:	62 65       	ori	r22, 0x52	; 82
 244:	6e 63       	ori	r22, 0x3E	; 62
 246:	68 6d       	ori	r22, 0xD8	; 216
 248:	61 72       	andi	r22, 0x21	; 33
 24a:	6b 2f       	mov	r22, r27
 24c:	62 6d       	ori	r22, 0xD2	; 210
 24e:	2d 69       	ori	r18, 0x9D	; 157
 250:	6d 61       	ori	r22, 0x1D	; 29
 252:	67 65       	ori	r22, 0x57	; 87
 254:	00 2f       	mov	r16, r16
 256:	68 6f       	ori	r22, 0xF8	; 248
 258:	6d 65       	ori	r22, 0x5D	; 93
 25a:	2f 66       	ori	r18, 0x6F	; 111
 25c:	61 6e       	ori	r22, 0xE1	; 225
 25e:	68 63       	ori	r22, 0x38	; 56
 260:	2f 77       	andi	r18, 0x7F	; 127
 262:	61 73       	andi	r22, 0x31	; 49
 264:	6d 2d       	mov	r22, r13
 266:	61 6f       	ori	r22, 0xF1	; 241
 268:	74 2f       	mov	r23, r20
 26a:	61 70       	andi	r22, 0x01	; 1
 26c:	70 2f       	mov	r23, r16
 26e:	62 65       	ori	r22, 0x52	; 82
 270:	6e 63       	ori	r22, 0x3E	; 62
 272:	68 6d       	ori	r22, 0xD8	; 216
 274:	61 72       	andi	r22, 0x21	; 33
 276:	6b 2f       	mov	r22, r27
 278:	2e 00       	.word	0x002e	; ????
 27a:	2f 75       	andi	r18, 0x5F	; 95
 27c:	73 72       	andi	r23, 0x23	; 35
 27e:	2f 6c       	ori	r18, 0xCF	; 207
 280:	69 62       	ori	r22, 0x29	; 41
 282:	2f 61       	ori	r18, 0x1F	; 31
 284:	76 72       	andi	r23, 0x26	; 38
 286:	2f 69       	ori	r18, 0x9F	; 159
 288:	6e 63       	ori	r22, 0x3E	; 62
 28a:	6c 75       	andi	r22, 0x5C	; 92
 28c:	64 65       	ori	r22, 0x54	; 84
 28e:	00 00       	nop
 290:	6d 61       	ori	r22, 0x1D	; 29
 292:	69 6e       	ori	r22, 0xE9	; 233
 294:	2e 63       	ori	r18, 0x3E	; 62
 296:	00 01       	movw	r0, r0
 298:	00 00       	nop
 29a:	62 65       	ori	r22, 0x52	; 82
 29c:	6e 63       	ori	r22, 0x3E	; 62
 29e:	68 6d       	ori	r22, 0xD8	; 216
 2a0:	61 72       	andi	r22, 0x21	; 33
 2a2:	6b 2e       	mov	r6, r27
 2a4:	68 00       	.word	0x0068	; ????
 2a6:	02 00       	.word	0x0002	; ????
 2a8:	00 73       	andi	r16, 0x30	; 48
 2aa:	74 64       	ori	r23, 0x44	; 68
 2ac:	69 6e       	ori	r22, 0xE9	; 233
 2ae:	74 2e       	mov	r7, r20
 2b0:	68 00       	.word	0x0068	; ????
 2b2:	03 00       	.word	0x0003	; ????
 2b4:	00 41       	sbci	r16, 0x10	; 16
 2b6:	76 72       	andi	r23, 0x26	; 38
 2b8:	6f 72       	andi	r22, 0x2F	; 47
 2ba:	61 50       	subi	r22, 0x01	; 1
 2bc:	72 69       	ori	r23, 0x92	; 146
 2be:	6e 74       	andi	r22, 0x4E	; 78
 2c0:	2e 68       	ori	r18, 0x8E	; 142
 2c2:	00 02       	muls	r16, r16
 2c4:	00 00       	nop
 2c6:	00 00       	nop
 2c8:	05 02       	muls	r16, r21
 2ca:	e8 00       	.word	0x00e8	; ????
 2cc:	00 00       	nop
 2ce:	03 0c       	add	r0, r3
 2d0:	01 03       	mulsu	r16, r17
 2d2:	0a 09       	sbc	r16, r10
 2d4:	22 00       	.word	0x0022	; ????
 2d6:	01 03       	mulsu	r16, r17
 2d8:	04 09       	sbc	r16, r4
 2da:	08 00       	.word	0x0008	; ????
 2dc:	01 03       	mulsu	r16, r17
 2de:	72 09       	sbc	r23, r2
 2e0:	22 00       	.word	0x0022	; ????
 2e2:	01 00       	.word	0x0001	; ????
 2e4:	02 04       	cpc	r0, r2
 2e6:	03 03       	mulsu	r16, r19
 2e8:	0e 09       	sbc	r16, r14
 2ea:	04 00       	.word	0x0004	; ????
 2ec:	01 00       	.word	0x0001	; ????
 2ee:	02 04       	cpc	r0, r2
 2f0:	03 03       	mulsu	r16, r19
 2f2:	7f 09       	sbc	r23, r15
 2f4:	44 00       	.word	0x0044	; ????
 2f6:	01 00       	.word	0x0001	; ????
 2f8:	02 04       	cpc	r0, r2
 2fa:	02 03       	mulsu	r16, r18
 2fc:	7f 09       	sbc	r23, r15
 2fe:	0c 00       	.word	0x000c	; ????
 300:	01 03       	mulsu	r16, r17
 302:	06 09       	sbc	r16, r6
 304:	08 00       	.word	0x0008	; ????
 306:	01 03       	mulsu	r16, r17
 308:	01 09       	sbc	r16, r1
 30a:	04 00       	.word	0x0004	; ????
 30c:	01 09       	sbc	r16, r1
 30e:	20 00       	.word	0x0020	; ????
 310:	00 01       	movw	r0, r0
 312:	01 00       	Address 0x0000000000000312 is out of bounds.
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
  60:	08 00       	.word	0x0008	; ????
  62:	00 00       	nop
  64:	0c 00       	.word	0x000c	; ????
  66:	00 00       	nop
  68:	00 00       	nop
  6a:	00 00       	nop
  6c:	d6 00       	.word	0x00d6	; ????
  6e:	00 00       	nop
  70:	06 00       	.word	0x0006	; ????
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
  9c:	1c 00       	.word	0x001c	; ????
	...
  aa:	00 00       	nop
  ac:	41 0e       	add	r4, r17
  ae:	03 41       	sbci	r16, 0x13	; 19
  b0:	0e 04       	cpc	r0, r14
  b2:	43 0e       	add	r4, r19
  b4:	05 41       	sbci	r16, 0x15	; 21
  b6:	0e 06       	cpc	r0, r30
  b8:	46 0e       	add	r4, r22
  ba:	02 00       	.word	0x0002	; ????
  bc:	0c 00       	.word	0x000c	; ????
  be:	00 00       	nop
  c0:	00 00       	nop
  c2:	00 00       	nop
  c4:	dc 00       	.word	0x00dc	; ????
  c6:	00 00       	nop
  c8:	0c 00       	.word	0x000c	; ????
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
  e0:	58 00       	.word	0x0058	; ????
  e2:	00 00       	nop
  e4:	cc 00       	.word	0x00cc	; ????
  e6:	00 00       	nop
  e8:	e8 00       	.word	0x00e8	; ????
  ea:	00 00       	nop
  ec:	cc 00       	.word	0x00cc	; ????
  ee:	00 00       	nop
  f0:	41 0e       	add	r4, r17
  f2:	03 86       	std	Z+11, r0	; 0x0b
  f4:	02 41       	sbci	r16, 0x12	; 18
  f6:	0e 04       	cpc	r0, r14
  f8:	87 03       	fmuls	r16, r23
  fa:	41 0e       	add	r4, r17
  fc:	05 88       	ldd	r0, Z+21	; 0x15
  fe:	04 41       	sbci	r16, 0x14	; 20
 100:	0e 06       	cpc	r0, r30
 102:	89 05       	cpc	r24, r9
 104:	41 0e       	add	r4, r17
 106:	07 8a       	std	Z+23, r0	; 0x17
 108:	06 41       	sbci	r16, 0x16	; 22
 10a:	0e 08       	sbc	r0, r14
 10c:	8b 07       	cpc	r24, r27
 10e:	41 0e       	add	r4, r17
 110:	09 8c       	ldd	r0, Y+25	; 0x19
 112:	08 41       	sbci	r16, 0x18	; 24
 114:	0e 0a       	sbc	r0, r30
 116:	8d 09       	sbc	r24, r13
 118:	41 0e       	add	r4, r17
 11a:	0b 8e       	std	Y+27, r0	; 0x1b
 11c:	0a 41       	sbci	r16, 0x1A	; 26
 11e:	0e 0c       	add	r0, r14
 120:	8f 0b       	sbc	r24, r31
 122:	41 0e       	add	r4, r17
 124:	0d 90       	ld	r0, X+
 126:	0c 41       	sbci	r16, 0x1C	; 28
 128:	0e 0e       	add	r0, r30
 12a:	91 0d       	add	r25, r1
 12c:	41 0e       	add	r4, r17
 12e:	0f 9c       	mul	r0, r15
 130:	0e 41       	sbci	r16, 0x1E	; 30
 132:	0e 10       	cpse	r0, r14
 134:	9d 0f       	add	r25, r29
 136:	41 0e       	add	r4, r17
 138:	11 42       	sbci	r17, 0x21	; 33
 13a:	0d 1c       	adc	r0, r13

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
 30e:	70 72       	andi	r23, 0x20	; 32
 310:	69 6e       	ori	r22, 0xE9	; 233
 312:	74 49       	sbci	r23, 0x94	; 148
 314:	6e 74       	andi	r22, 0x4E	; 78
 316:	00 75       	andi	r16, 0x50	; 80
 318:	6e 73       	andi	r22, 0x3E	; 62
 31a:	69 67       	ori	r22, 0x79	; 121
 31c:	6e 65       	ori	r22, 0x5E	; 94
 31e:	64 20       	and	r6, r4
 320:	63 68       	ori	r22, 0x83	; 131
 322:	61 72       	andi	r22, 0x21	; 33
 324:	00 70       	andi	r16, 0x00	; 0
 326:	72 69       	ori	r23, 0x92	; 146
 328:	6e 74       	andi	r22, 0x4E	; 78
 32a:	53 74       	andi	r21, 0x43	; 67
 32c:	72 00       	.word	0x0072	; ????
 32e:	74 65       	ori	r23, 0x54	; 84
 330:	6d 70       	andi	r22, 0x0D	; 13
 332:	00 61       	ori	r16, 0x10	; 16
 334:	76 72       	andi	r23, 0x26	; 38
 336:	6f 72       	andi	r22, 0x2F	; 47
 338:	61 50       	subi	r22, 0x01	; 1
 33a:	72 69       	ori	r23, 0x92	; 146
 33c:	6e 74       	andi	r22, 0x4E	; 78
 33e:	43 68       	ori	r20, 0x83	; 131
 340:	61 72       	andi	r22, 0x21	; 33
 342:	42 75       	andi	r20, 0x52	; 82
 344:	66 66       	ori	r22, 0x66	; 102
 346:	65 72       	andi	r22, 0x25	; 37
 348:	00 6d       	ori	r16, 0xD0	; 208
 34a:	61 69       	ori	r22, 0x91	; 145
 34c:	6e 00       	.word	0x006e	; ????
 34e:	61 76       	andi	r22, 0x61	; 97
 350:	72 6f       	ori	r23, 0xF2	; 242
 352:	72 61       	ori	r23, 0x12	; 18
 354:	50 72       	andi	r21, 0x20	; 32
 356:	69 6e       	ori	r22, 0xE9	; 233
 358:	74 53       	subi	r23, 0x34	; 52
 35a:	65 74       	andi	r22, 0x45	; 69
 35c:	56 61       	ori	r21, 0x16	; 22
 35e:	72 54       	subi	r23, 0x42	; 66
 360:	79 70       	andi	r23, 0x09	; 9
 362:	65 00       	.word	0x0065	; ????
 364:	66 6f       	ori	r22, 0xF6	; 246
 366:	72 6d       	ori	r23, 0xD2	; 210
 368:	61 74       	andi	r22, 0x41	; 65
 36a:	00 61       	ori	r16, 0x10	; 16
 36c:	76 72       	andi	r23, 0x26	; 38
 36e:	6f 72       	andi	r22, 0x2F	; 47
 370:	61 54       	subi	r22, 0x41	; 65
 372:	72 61       	ori	r23, 0x12	; 18
 374:	63 65       	ori	r22, 0x53	; 83
 376:	45 6e       	ori	r20, 0xE5	; 229
 378:	61 62       	ori	r22, 0x21	; 33
 37a:	6c 65       	ori	r22, 0x5C	; 92
 37c:	00 6c       	ori	r16, 0xC0	; 192
 37e:	6f 6e       	ori	r22, 0xEF	; 239
 380:	67 20       	and	r6, r7
 382:	6c 6f       	ori	r22, 0xFC	; 252
 384:	6e 67       	ori	r22, 0x7E	; 126
 386:	20 75       	andi	r18, 0x50	; 80
 388:	6e 73       	andi	r22, 0x3E	; 62
 38a:	69 67       	ori	r22, 0x79	; 121
 38c:	6e 65       	ori	r22, 0x5E	; 94
 38e:	64 20       	and	r6, r4
 390:	69 6e       	ori	r22, 0xE9	; 233
 392:	74 00       	.word	0x0074	; ????
 394:	75 69       	ori	r23, 0x95	; 149
 396:	6e 74       	andi	r22, 0x4E	; 78
 398:	38 5f       	subi	r19, 0xF8	; 248
 39a:	74 00       	.word	0x0074	; ????
 39c:	6a 61       	ori	r22, 0x1A	; 26
 39e:	76 61       	ori	r23, 0x16	; 22
 3a0:	78 5f       	subi	r23, 0xF8	; 248
 3a2:	72 74       	andi	r23, 0x42	; 66
 3a4:	63 62       	ori	r22, 0x23	; 35
 3a6:	65 6e       	ori	r22, 0xE5	; 229
 3a8:	63 68       	ori	r22, 0x83	; 131
 3aa:	5f 52       	subi	r21, 0x2F	; 47
 3ac:	54 43       	sbci	r21, 0x34	; 52
 3ae:	42 65       	ori	r20, 0x52	; 82
 3b0:	6e 63       	ori	r22, 0x3E	; 62
 3b2:	68 6d       	ori	r22, 0xD8	; 216
 3b4:	61 72       	andi	r22, 0x21	; 33
 3b6:	6b 5f       	subi	r22, 0xFB	; 251
 3b8:	76 6f       	ori	r23, 0xF6	; 246
 3ba:	69 64       	ori	r22, 0x49	; 73
 3bc:	5f 74       	andi	r21, 0x4F	; 79
 3be:	65 73       	andi	r22, 0x35	; 53
 3c0:	74 5f       	subi	r23, 0xF4	; 244
 3c2:	6e 61       	ori	r22, 0x1E	; 30
 3c4:	74 69       	ori	r23, 0x94	; 148
 3c6:	76 65       	ori	r23, 0x56	; 86
 3c8:	00 73       	andi	r16, 0x30	; 48
 3ca:	69 7a       	andi	r22, 0xA9	; 169
 3cc:	65 74       	andi	r22, 0x45	; 69
 3ce:	79 70       	andi	r23, 0x09	; 9
 3d0:	65 00       	.word	0x0065	; ????
 3d2:	61 76       	andi	r22, 0x61	; 97
 3d4:	72 6f       	ori	r23, 0xF2	; 242
 3d6:	72 61       	ori	r23, 0x12	; 18
 3d8:	57 72       	andi	r21, 0x27	; 39
 3da:	69 74       	andi	r22, 0x49	; 73
 3dc:	65 43       	sbci	r22, 0x35	; 53
 3de:	68 61       	ori	r22, 0x18	; 24
 3e0:	72 42       	sbci	r23, 0x22	; 34
 3e2:	75 66       	ori	r23, 0x65	; 101
 3e4:	66 65       	ori	r22, 0x56	; 86
 3e6:	72 00       	.word	0x0072	; ????
 3e8:	6c 6f       	ori	r22, 0xFC	; 252
 3ea:	6e 67       	ori	r22, 0x7E	; 126
 3ec:	20 6c       	ori	r18, 0xC0	; 192
 3ee:	6f 6e       	ori	r22, 0xEF	; 239
 3f0:	67 20       	and	r6, r7
 3f2:	69 6e       	ori	r22, 0xE9	; 233
 3f4:	74 00       	.word	0x0074	; ????
 3f6:	72 74       	andi	r23, 0x42	; 66
 3f8:	63 5f       	subi	r22, 0xF3	; 243
 3fa:	73 74       	andi	r23, 0x43	; 67
 3fc:	61 72       	andi	r22, 0x21	; 33
 3fe:	74 42       	sbci	r23, 0x24	; 36
 400:	65 6e       	ori	r22, 0xE5	; 229
 402:	63 68       	ori	r22, 0x83	; 131
 404:	6d 61       	ori	r22, 0x1D	; 29
 406:	72 6b       	ori	r23, 0xB2	; 178
 408:	4d 65       	ori	r20, 0x5D	; 93
 40a:	61 73       	andi	r22, 0x31	; 49
 40c:	75 72       	andi	r23, 0x25	; 37
 40e:	65 6d       	ori	r22, 0xD5	; 213
 410:	65 6e       	ori	r22, 0xE5	; 229
 412:	74 5f       	subi	r23, 0xF4	; 244
 414:	4e 61       	ori	r20, 0x1E	; 30
 416:	74 69       	ori	r23, 0x94	; 148
 418:	76 65       	ori	r23, 0x56	; 86
 41a:	00 64       	ori	r16, 0x40	; 64
 41c:	65 62       	ori	r22, 0x25	; 37
 41e:	75 67       	ori	r23, 0x75	; 117
 420:	62 75       	andi	r22, 0x52	; 82
 422:	66 31       	cpi	r22, 0x16	; 22
 424:	00 47       	sbci	r16, 0x70	; 112
 426:	4e 55       	subi	r20, 0x5E	; 94
 428:	20 43       	sbci	r18, 0x30	; 48
 42a:	39 39       	cpi	r19, 0x99	; 153
 42c:	20 35       	cpi	r18, 0x50	; 80
 42e:	2e 34       	cpi	r18, 0x4E	; 78
 430:	2e 30       	cpi	r18, 0x0E	; 14
 432:	20 2d       	mov	r18, r0
 434:	6d 6e       	ori	r22, 0xED	; 237
 436:	2d 66       	ori	r18, 0x6D	; 109
 438:	6c 61       	ori	r22, 0x1C	; 28
 43a:	73 68       	ori	r23, 0x83	; 131
 43c:	3d 32       	cpi	r19, 0x2D	; 45
 43e:	20 2d       	mov	r18, r0
 440:	6d 6e       	ori	r22, 0xED	; 237
 442:	6f 2d       	mov	r22, r15
 444:	73 6b       	ori	r23, 0xB3	; 179
 446:	69 70       	andi	r22, 0x09	; 9
 448:	2d 62       	ori	r18, 0x2D	; 45
 44a:	75 67       	ori	r23, 0x75	; 117
 44c:	20 2d       	mov	r18, r0
 44e:	6d 6d       	ori	r22, 0xDD	; 221
 450:	63 75       	andi	r22, 0x53	; 83
 452:	3d 61       	ori	r19, 0x1D	; 29
 454:	76 72       	andi	r23, 0x26	; 38
 456:	35 31       	cpi	r19, 0x15	; 21
 458:	20 2d       	mov	r18, r0
 45a:	67 67       	ori	r22, 0x77	; 119
 45c:	64 62       	ori	r22, 0x24	; 36
 45e:	20 2d       	mov	r18, r0
 460:	4f 73       	andi	r20, 0x3F	; 63
 462:	20 2d       	mov	r18, r0
 464:	73 74       	andi	r23, 0x43	; 67
 466:	64 3d       	cpi	r22, 0xD4	; 212
 468:	67 6e       	ori	r22, 0xE7	; 231
 46a:	75 39       	cpi	r23, 0x95	; 149
 46c:	39 20       	and	r3, r9
 46e:	2d 66       	ori	r18, 0x6D	; 109
 470:	69 6e       	ori	r22, 0xE9	; 233
 472:	6c 69       	ori	r22, 0x9C	; 156
 474:	6e 65       	ori	r22, 0x5E	; 94
 476:	2d 6c       	ori	r18, 0xCD	; 205
 478:	69 6d       	ori	r22, 0xD9	; 217
 47a:	69 74       	andi	r22, 0x49	; 73
 47c:	3d 30       	cpi	r19, 0x0D	; 13
 47e:	20 2d       	mov	r18, r0
 480:	66 64       	ori	r22, 0x46	; 70
 482:	61 74       	andi	r22, 0x41	; 65
 484:	61 2d       	mov	r22, r1
 486:	73 65       	ori	r23, 0x53	; 83
 488:	63 74       	andi	r22, 0x43	; 67
 48a:	69 6f       	ori	r22, 0xF9	; 249
 48c:	6e 73       	andi	r22, 0x3E	; 62
 48e:	20 2d       	mov	r18, r0
 490:	66 66       	ori	r22, 0x66	; 102
 492:	75 6e       	ori	r23, 0xE5	; 229
 494:	63 74       	andi	r22, 0x43	; 67
 496:	69 6f       	ori	r22, 0xF9	; 249
 498:	6e 2d       	mov	r22, r14
 49a:	73 65       	ori	r23, 0x53	; 83
 49c:	63 74       	andi	r22, 0x43	; 67
 49e:	69 6f       	ori	r22, 0xF9	; 249
 4a0:	6e 73       	andi	r22, 0x3E	; 62
 4a2:	00 2f       	mov	r16, r16
 4a4:	68 6f       	ori	r22, 0xF8	; 248
 4a6:	6d 65       	ori	r22, 0x5D	; 93
 4a8:	2f 66       	ori	r18, 0x6F	; 111
 4aa:	61 6e       	ori	r22, 0xE1	; 225
 4ac:	68 63       	ori	r22, 0x38	; 56
 4ae:	2f 77       	andi	r18, 0x7F	; 127
 4b0:	61 73       	andi	r22, 0x31	; 49
 4b2:	6d 2d       	mov	r22, r13
 4b4:	61 6f       	ori	r22, 0xF1	; 241
 4b6:	74 2f       	mov	r23, r20
 4b8:	61 70       	andi	r22, 0x01	; 1
 4ba:	70 2f       	mov	r23, r16
 4bc:	62 65       	ori	r22, 0x52	; 82
 4be:	6e 63       	ori	r22, 0x3E	; 62
 4c0:	68 6d       	ori	r22, 0xD8	; 216
 4c2:	61 72       	andi	r22, 0x21	; 33
 4c4:	6b 2f       	mov	r22, r27
 4c6:	62 65       	ori	r22, 0x52	; 82
 4c8:	6e 63       	ori	r22, 0x3E	; 62
 4ca:	68 6d       	ori	r22, 0xD8	; 216
 4cc:	61 72       	andi	r22, 0x21	; 33
 4ce:	6b 2e       	mov	r6, r27
 4d0:	63 00       	.word	0x0063	; ????
 4d2:	75 69       	ori	r23, 0x95	; 149
 4d4:	6e 74       	andi	r22, 0x4E	; 78
 4d6:	33 32       	cpi	r19, 0x23	; 35
 4d8:	5f 74       	andi	r21, 0x4F	; 79
 4da:	00 61       	ori	r16, 0x10	; 16
 4dc:	76 72       	andi	r23, 0x26	; 38
 4de:	5f 56       	subi	r21, 0x6F	; 111
 4e0:	50 72       	andi	r21, 0x20	; 32
 4e2:	69 6e       	ori	r22, 0xE9	; 233
 4e4:	74 00       	.word	0x0074	; ????
 4e6:	2f 68       	ori	r18, 0x8F	; 143
 4e8:	6f 6d       	ori	r22, 0xDF	; 223
 4ea:	65 2f       	mov	r22, r21
 4ec:	66 61       	ori	r22, 0x16	; 22
 4ee:	6e 68       	ori	r22, 0x8E	; 142
 4f0:	63 2f       	mov	r22, r19
 4f2:	77 61       	ori	r23, 0x17	; 23
 4f4:	73 6d       	ori	r23, 0xD3	; 211
 4f6:	2d 61       	ori	r18, 0x1D	; 29
 4f8:	6f 74       	andi	r22, 0x4F	; 79
 4fa:	2f 61       	ori	r18, 0x1F	; 31
 4fc:	70 70       	andi	r23, 0x00	; 0
 4fe:	2f 62       	ori	r18, 0x2F	; 47
 500:	65 6e       	ori	r22, 0xE5	; 229
 502:	63 68       	ori	r22, 0x83	; 131
 504:	6d 61       	ori	r22, 0x1D	; 29
 506:	72 6b       	ori	r23, 0xB2	; 178
 508:	2f 62       	ori	r18, 0x2F	; 47
 50a:	6d 2d       	mov	r22, r13
 50c:	69 6d       	ori	r22, 0xD9	; 217
 50e:	61 67       	ori	r22, 0x71	; 113
 510:	65 2f       	mov	r22, r21
 512:	6d 61       	ori	r22, 0x1D	; 29
 514:	69 6e       	ori	r22, 0xE9	; 233
 516:	2e 63       	ori	r18, 0x3E	; 62
 518:	00 72       	andi	r16, 0x20	; 32
 51a:	65 73       	andi	r22, 0x35	; 53
 51c:	75 6c       	ori	r23, 0xC5	; 197
 51e:	74 00       	.word	0x0074	; ????

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
 12a:	00 f3       	brcs	.-64     	; 0xec <javax_rtcbench_RTCBenchmark_void_test_native+0x4>
 12c:	01 66       	ori	r16, 0x61	; 97
 12e:	9f 00       	.word	0x009f	; ????
	...
 13c:	00 00       	nop
 13e:	00 03       	mulsu	r16, r16
 140:	00 92 20 02 	sts	0x0220, r0	; 0x800220 <B+0x11a>
	...
 14c:	03 00       	.word	0x0003	; ????
 14e:	92 20       	and	r9, r2
 150:	03 00       	.word	0x0003	; ????
 152:	00 00       	nop
 154:	00 00       	nop
 156:	00 00       	nop
 158:	00 03       	mulsu	r16, r16
 15a:	00 92 20 04 	sts	0x0420, r0	; 0x800420 <B+0x31a>
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
	...
 19c:	00 00       	nop
 19e:	00 03       	mulsu	r16, r16
 1a0:	00 92 20 02 	sts	0x0220, r0	; 0x800220 <B+0x11a>
	...
 1ac:	03 00       	.word	0x0003	; ????
 1ae:	92 20       	and	r9, r2
 1b0:	03 00       	.word	0x0003	; ????
 1b2:	00 00       	nop
 1b4:	00 00       	nop
 1b6:	00 00       	nop
 1b8:	00 03       	mulsu	r16, r16
 1ba:	00 92 20 04 	sts	0x0420, r0	; 0x800420 <B+0x31a>
	...
 1c6:	03 00       	.word	0x0003	; ????
 1c8:	92 20       	and	r9, r2
 1ca:	05 00       	.word	0x0005	; ????
 1cc:	00 00       	nop
 1ce:	00 00       	nop
 1d0:	00 00       	nop
 1d2:	00 03       	mulsu	r16, r16
 1d4:	00 92 20 06 	sts	0x0620, r0	; 0x800620 <B+0x51a>
	...
 1e0:	03 00       	.word	0x0003	; ????
 1e2:	92 20       	and	r9, r2
 1e4:	07 00       	.word	0x0007	; ????
 1e6:	00 00       	nop
 1e8:	00 00       	nop
 1ea:	00 00       	nop
 1ec:	00 03       	mulsu	r16, r16
 1ee:	00 92 20 08 	sts	0x0820, r0	; 0x800820 <B+0x71a>
	...
 1fa:	03 00       	.word	0x0003	; ????
 1fc:	92 20       	and	r9, r2
 1fe:	02 00       	.word	0x0002	; ????
	...
 20c:	00 00       	nop
 20e:	00 0c       	add	r0, r0
 210:	00 66       	ori	r16, 0x60	; 96
 212:	93 01       	movw	r18, r6
 214:	67 93       	lat	Z, r22
 216:	01 68       	ori	r16, 0x81	; 129
 218:	93 01       	movw	r18, r6
 21a:	69 93       	st	Y+, r22
 21c:	01 00       	.word	0x0001	; ????
 21e:	00 00       	nop
 220:	00 00       	nop
 222:	00 00       	nop
 224:	00 04       	cpc	r0, r0
 226:	00 f3       	brcs	.-64     	; 0x1e8 <__udivmodhi4_loop+0x4>
 228:	01 66       	ori	r16, 0x61	; 97
 22a:	9f 00       	.word	0x009f	; ????
	...
 238:	00 00       	nop
 23a:	00 03       	mulsu	r16, r16
 23c:	00 92 20 02 	sts	0x0220, r0	; 0x800220 <B+0x11a>
	...
 248:	03 00       	.word	0x0003	; ????
 24a:	92 20       	and	r9, r2
 24c:	03 00       	.word	0x0003	; ????
 24e:	00 00       	nop
 250:	00 00       	nop
 252:	00 00       	nop
 254:	00 03       	mulsu	r16, r16
 256:	00 92 20 04 	sts	0x0420, r0	; 0x800420 <B+0x31a>
	...
 262:	03 00       	.word	0x0003	; ????
 264:	92 20       	and	r9, r2
 266:	05 00       	.word	0x0005	; ????
 268:	00 00       	nop
 26a:	00 00       	nop
 26c:	00 00       	nop
 26e:	00 03       	mulsu	r16, r16
 270:	00 92 20 06 	sts	0x0620, r0	; 0x800620 <B+0x51a>
	...
 27c:	03 00       	.word	0x0003	; ????
 27e:	92 20       	and	r9, r2
 280:	02 00       	.word	0x0002	; ????
	...
 28e:	00 00       	nop
 290:	00 06       	cpc	r0, r16
 292:	00 68       	ori	r16, 0x80	; 128
 294:	93 01       	movw	r18, r6
 296:	69 93       	st	Y+, r22
 298:	01 00       	.word	0x0001	; ????
 29a:	00 00       	nop
 29c:	00 00       	nop
 29e:	00 00       	nop
 2a0:	00 04       	cpc	r0, r0
 2a2:	00 f3       	brcs	.-64     	; 0x264 <__data_load_end+0x5c>
 2a4:	01 68       	ori	r16, 0x81	; 129
 2a6:	9f 00       	.word	0x009f	; ????
 2a8:	00 00       	nop
 2aa:	00 00       	nop
 2ac:	00 00       	nop
 2ae:	00 e8       	ldi	r16, 0x80	; 128
 2b0:	00 00       	nop
 2b2:	00 ea       	ldi	r16, 0xA0	; 160
 2b4:	00 00       	nop
 2b6:	00 03       	mulsu	r16, r16
 2b8:	00 92 20 02 	sts	0x0220, r0	; 0x800220 <B+0x11a>
 2bc:	ea 00       	.word	0x00ea	; ????
 2be:	00 00       	nop
 2c0:	ec 00       	.word	0x00ec	; ????
 2c2:	00 00       	nop
 2c4:	03 00       	.word	0x0003	; ????
 2c6:	92 20       	and	r9, r2
 2c8:	03 ec       	ldi	r16, 0xC3	; 195
 2ca:	00 00       	nop
 2cc:	00 ee       	ldi	r16, 0xE0	; 224
 2ce:	00 00       	nop
 2d0:	00 03       	mulsu	r16, r16
 2d2:	00 92 20 04 	sts	0x0420, r0	; 0x800420 <B+0x31a>
 2d6:	ee 00       	.word	0x00ee	; ????
 2d8:	00 00       	nop
 2da:	f0 00       	.word	0x00f0	; ????
 2dc:	00 00       	nop
 2de:	03 00       	.word	0x0003	; ????
 2e0:	92 20       	and	r9, r2
 2e2:	05 f0       	brhs	.+0      	; 0x2e4 <__data_load_end+0xdc>
 2e4:	00 00       	nop
 2e6:	00 f2       	brcs	.-128    	; 0x268 <__data_load_end+0x60>
 2e8:	00 00       	nop
 2ea:	00 03       	mulsu	r16, r16
 2ec:	00 92 20 06 	sts	0x0620, r0	; 0x800620 <B+0x51a>
 2f0:	f2 00       	.word	0x00f2	; ????
 2f2:	00 00       	nop
 2f4:	f4 00       	.word	0x00f4	; ????
 2f6:	00 00       	nop
 2f8:	03 00       	.word	0x0003	; ????
 2fa:	92 20       	and	r9, r2
 2fc:	07 f4       	brid	.+0      	; 0x2fe <__data_load_end+0xf6>
 2fe:	00 00       	nop
 300:	00 f6       	brcc	.-128    	; 0x282 <__data_load_end+0x7a>
 302:	00 00       	nop
 304:	00 03       	mulsu	r16, r16
 306:	00 92 20 08 	sts	0x0820, r0	; 0x800820 <B+0x71a>
 30a:	f6 00       	.word	0x00f6	; ????
 30c:	00 00       	nop
 30e:	f8 00       	.word	0x00f8	; ????
 310:	00 00       	nop
 312:	03 00       	.word	0x0003	; ????
 314:	92 20       	and	r9, r2
 316:	09 f8       	.word	0xf809	; ????
 318:	00 00       	nop
 31a:	00 fa       	bst	r0, 0
 31c:	00 00       	nop
 31e:	00 03       	mulsu	r16, r16
 320:	00 92 20 0a 	sts	0x0A20, r0	; 0x800a20 <B+0x91a>
 324:	fa 00       	.word	0x00fa	; ????
 326:	00 00       	nop
 328:	fc 00       	.word	0x00fc	; ????
 32a:	00 00       	nop
 32c:	03 00       	.word	0x0003	; ????
 32e:	92 20       	and	r9, r2
 330:	0b fc       	.word	0xfc0b	; ????
 332:	00 00       	nop
 334:	00 fe       	sbrs	r0, 0
 336:	00 00       	nop
 338:	00 03       	mulsu	r16, r16
 33a:	00 92 20 0c 	sts	0x0C20, r0	; 0x800c20 <G+0x156>
 33e:	fe 00       	.word	0x00fe	; ????
 340:	00 00       	nop
 342:	00 01       	movw	r0, r0
 344:	00 00       	nop
 346:	03 00       	.word	0x0003	; ????
 348:	92 20       	and	r9, r2
 34a:	0d 00       	.word	0x000d	; ????
 34c:	01 00       	.word	0x0001	; ????
 34e:	00 02       	muls	r16, r16
 350:	01 00       	.word	0x0001	; ????
 352:	00 03       	mulsu	r16, r16
 354:	00 92 20 0e 	sts	0x0E20, r0	; 0x800e20 <G+0x356>
 358:	02 01       	movw	r0, r4
 35a:	00 00       	nop
 35c:	04 01       	movw	r0, r8
 35e:	00 00       	nop
 360:	03 00       	.word	0x0003	; ????
 362:	92 20       	and	r9, r2
 364:	0f 04       	cpc	r0, r15
 366:	01 00       	.word	0x0001	; ????
 368:	00 06       	cpc	r0, r16
 36a:	01 00       	.word	0x0001	; ????
 36c:	00 03       	mulsu	r16, r16
 36e:	00 92 20 10 	sts	0x1020, r0	; 0x801020 <G+0x556>
 372:	06 01       	movw	r0, r12
 374:	00 00       	nop
 376:	0a 01       	movw	r0, r20
 378:	00 00       	nop
 37a:	03 00       	.word	0x0003	; ????
 37c:	92 20       	and	r9, r2
 37e:	11 0a       	sbc	r1, r17
 380:	01 00       	.word	0x0001	; ????
 382:	00 b4       	in	r0, 0x20	; 32
 384:	01 00       	.word	0x0001	; ????
 386:	00 02       	muls	r16, r16
 388:	00 8c       	ldd	r0, Z+24	; 0x18
 38a:	11 00       	.word	0x0011	; ????
 38c:	00 00       	nop
 38e:	00 00       	nop
 390:	00 00       	nop
 392:	00 0e       	add	r0, r16
 394:	01 00       	.word	0x0001	; ????
 396:	00 1e       	adc	r0, r16
 398:	01 00       	.word	0x0001	; ????
 39a:	00 02       	muls	r16, r16
 39c:	00 30       	cpi	r16, 0x00	; 0
 39e:	9f 00       	.word	0x009f	; ????
 3a0:	00 00       	nop
 3a2:	00 00       	nop
 3a4:	00 00       	nop
 3a6:	00 1e       	adc	r0, r16
 3a8:	01 00       	.word	0x0001	; ????
 3aa:	00 38       	cpi	r16, 0x80	; 128
 3ac:	01 00       	.word	0x0001	; ????
 3ae:	00 02       	muls	r16, r16
 3b0:	00 30       	cpi	r16, 0x00	; 0
 3b2:	9f 38       	cpi	r25, 0x8F	; 143
 3b4:	01 00       	.word	0x0001	; ????
 3b6:	00 93 01 00 	sts	0x0001, r16	; 0x800001 <__TEXT_REGION_LENGTH__+0x7e0001>
 3ba:	00 06       	cpc	r0, r16
 3bc:	00 6e       	ori	r16, 0xE0	; 224
 3be:	93 01       	movw	r18, r6
 3c0:	6f 93       	push	r22
 3c2:	01 00       	.word	0x0001	; ????
 3c4:	00 00       	nop
 3c6:	00 00       	nop
 3c8:	00 00       	nop
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
  64:	d6 00       	.word	0x00d6	; ????
  66:	00 00       	nop
  68:	d6 00       	.word	0x00d6	; ????
  6a:	00 00       	nop
  6c:	dc 00       	.word	0x00dc	; ????
  6e:	00 00       	nop
  70:	01 00       	.word	0x0001	; ????
  72:	00 00       	nop
  74:	01 00       	.word	0x0001	; ????
  76:	00 00       	nop
  78:	01 00       	.word	0x0001	; ????
  7a:	00 00       	nop
  7c:	01 00       	.word	0x0001	; ????
  7e:	00 00       	nop
  80:	dc 00       	.word	0x00dc	; ????
  82:	00 00       	nop
  84:	e8 00       	.word	0x00e8	; ????
	...
  8e:	00 00       	nop
  90:	12 01       	movw	r2, r4
  92:	00 00       	nop
  94:	34 01       	movw	r6, r8
  96:	00 00       	nop
  98:	38 01       	movw	r6, r16
  9a:	00 00       	nop
  9c:	90 01       	movw	r18, r0
	...
  a6:	00 00       	nop
  a8:	12 01       	movw	r2, r4
  aa:	00 00       	nop
  ac:	34 01       	movw	r6, r8
  ae:	00 00       	nop
  b0:	38 01       	movw	r6, r16
  b2:	00 00       	nop
  b4:	88 01       	movw	r16, r16
	...
  be:	00 00       	nop
  c0:	e8 00       	.word	0x00e8	; ????
  c2:	00 00       	nop
  c4:	b4 01       	movw	r22, r8
	...
