
/home/fanhc/wasm-aot/app/benchmark/wavelet.elf:     file format elf32-avr


Disassembly of section .data:

00800100 <__data_start>:
  800100:	72 49       	sbci	r23, 0x92	; 146
  800102:	10 3d       	cpi	r17, 0xD0	; 208
  800104:	d6 fb       	bst	r29, 6
  800106:	ae bd       	out	0x2e, r26	; 46
  800108:	54 40       	sbci	r21, 0x04	; 4
  80010a:	0a be       	out	0x3a, r0	; 58
  80010c:	10 75       	andi	r17, 0x50	; 80
  80010e:	eb 3e       	cpi	r30, 0xEB	; 235
  800110:	71 90       	ld	r7, Z+
  800112:	4e 3f       	cpi	r20, 0xFE	; 254
  800114:	cb 53       	subi	r28, 0x3B	; 59
  800116:	aa 3e       	cpi	r26, 0xEA	; 234
  800118:	cb 53       	subi	r28, 0x3B	; 59
  80011a:	aa be       	out	0x3a, r10	; 58
  80011c:	71 90       	ld	r7, Z+
  80011e:	4e 3f       	cpi	r20, 0xFE	; 254
  800120:	10 75       	andi	r17, 0x50	; 80
  800122:	eb be       	out	0x3b, r14	; 59
  800124:	54 40       	sbci	r21, 0x04	; 4
  800126:	0a be       	out	0x3a, r0	; 58
  800128:	d6 fb       	bst	r29, 6
  80012a:	ae 3d       	cpi	r26, 0xDE	; 222
  80012c:	72 49       	sbci	r23, 0x92	; 146
  80012e:	10 3d       	cpi	r17, 0xD0	; 208
  800130:	25 64       	ori	r18, 0x45	; 69
  800132:	0a 00       	.word	0x000a	; ????
  800134:	25 73       	andi	r18, 0x35	; 53
  800136:	0a 00       	.word	0x000a	; ????
  800138:	66 6c       	ori	r22, 0xC6	; 198
  80013a:	6f 61       	ori	r22, 0x1F	; 31
  80013c:	74 20       	and	r7, r4
  80013e:	73 69       	ori	r23, 0x93	; 147
  800140:	7a 65       	ori	r23, 0x5A	; 90
  800142:	3d 00       	.word	0x003d	; ????

Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 87 00 	jmp	0x10e	; 0x10e <__ctors_end>
       4:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
       8:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
       c:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      10:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      14:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      18:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      1c:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      20:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      24:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      28:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      2c:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      30:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      34:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      38:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      3c:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      40:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      44:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      48:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      4c:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      50:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      54:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      58:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      5c:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      60:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      64:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      68:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      6c:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      70:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      74:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      78:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      7c:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      80:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      84:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      88:	0c 94 a6 00 	jmp	0x14c	; 0x14c <__bad_interrupt>
      8c:	07 63       	ori	r16, 0x37	; 55
      8e:	42 36       	cpi	r20, 0x62	; 98
      90:	b7 9b       	sbis	0x16, 7	; 22
      92:	d8 a7       	std	Y+40, r29	; 0x28
      94:	1a 39       	cpi	r17, 0x9A	; 154
      96:	68 56       	subi	r22, 0x68	; 104
      98:	18 ae       	std	Y+56, r1	; 0x38
      9a:	ba ab       	std	Y+50, r27	; 0x32
      9c:	55 8c       	ldd	r5, Z+29	; 0x1d
      9e:	1d 3c       	cpi	r17, 0xCD	; 205
      a0:	b7 cc       	rjmp	.-1682   	; 0xfffffa10 <__eeprom_end+0xff7efa10>
      a2:	57 63       	ori	r21, 0x37	; 55
      a4:	bd 6d       	ori	r27, 0xDD	; 221
      a6:	ed fd       	.word	0xfded	; ????
      a8:	75 3e       	cpi	r23, 0xE5	; 229
      aa:	f6 17       	cp	r31, r22
      ac:	72 31       	cpi	r23, 0x12	; 18
      ae:	bf 00       	.word	0x00bf	; ????
      b0:	00 00       	nop
      b2:	80 3f       	cpi	r24, 0xF0	; 240
      b4:	08 00       	.word	0x0008	; ????
      b6:	00 00       	nop
      b8:	be 92       	st	-X, r11
      ba:	24 49       	sbci	r18, 0x94	; 148
      bc:	12 3e       	cpi	r17, 0xE2	; 226
      be:	ab aa       	std	Y+51, r10	; 0x33
      c0:	aa 2a       	or	r10, r26
      c2:	be cd       	rjmp	.-1156   	; 0xfffffc40 <__eeprom_end+0xff7efc40>
      c4:	cc cc       	rjmp	.-1640   	; 0xfffffa5e <__eeprom_end+0xff7efa5e>
      c6:	4c 3e       	cpi	r20, 0xEC	; 236
      c8:	00 00       	nop
      ca:	00 80       	ld	r0, Z
      cc:	be ab       	std	Y+54, r27	; 0x36
      ce:	aa aa       	std	Y+50, r10	; 0x32
      d0:	aa 3e       	cpi	r26, 0xEA	; 234
      d2:	00 00       	nop
      d4:	00 00       	nop
      d6:	bf 00       	.word	0x00bf	; ????
      d8:	00 00       	nop
      da:	80 3f       	cpi	r24, 0xF0	; 240
      dc:	00 00       	nop
      de:	00 00       	nop
      e0:	00 08       	sbc	r0, r0
      e2:	41 78       	andi	r20, 0x81	; 129
      e4:	d3 bb       	out	0x13, r29	; 19
      e6:	43 87       	std	Z+11, r20	; 0x0b
      e8:	d1 13       	cpse	r29, r17
      ea:	3d 19       	sub	r19, r13
      ec:	0e 3c       	cpi	r16, 0xCE	; 206
      ee:	c3 bd       	out	0x23, r28	; 35
      f0:	42 82       	std	Z+2, r4	; 0x02
      f2:	ad 2b       	or	r26, r29
      f4:	3e 68       	ori	r19, 0x8E	; 142
      f6:	ec 82       	std	Y+4, r14	; 0x04
      f8:	76 be       	out	0x36, r7	; 54
      fa:	d9 8f       	std	Y+25, r29	; 0x19
      fc:	e1 a9       	ldd	r30, Z+49	; 0x31
      fe:	3e 4c       	sbci	r19, 0xCE	; 206
     100:	80 ef       	ldi	r24, 0xF0	; 240
     102:	ff be       	out	0x3f, r15	; 63
     104:	01 c4       	rjmp	.+2050   	; 0x908 <__LOCK_REGION_LENGTH__+0x508>
     106:	ff 7f       	andi	r31, 0xFF	; 255
     108:	3f 00       	.word	0x003f	; ????
     10a:	00 00       	nop
	...

0000010e <__ctors_end>:
     10e:	11 24       	eor	r1, r1
     110:	1f be       	out	0x3f, r1	; 63
     112:	cf ef       	ldi	r28, 0xFF	; 255
     114:	d0 e1       	ldi	r29, 0x10	; 16
     116:	de bf       	out	0x3e, r29	; 62
     118:	cd bf       	out	0x3d, r28	; 61

0000011a <__do_copy_data>:
     11a:	11 e0       	ldi	r17, 0x01	; 1
     11c:	a0 e0       	ldi	r26, 0x00	; 0
     11e:	b1 e0       	ldi	r27, 0x01	; 1
     120:	ea ee       	ldi	r30, 0xEA	; 234
     122:	f8 e1       	ldi	r31, 0x18	; 24
     124:	00 e0       	ldi	r16, 0x00	; 0
     126:	0b bf       	out	0x3b, r16	; 59
     128:	02 c0       	rjmp	.+4      	; 0x12e <__do_copy_data+0x14>
     12a:	07 90       	elpm	r0, Z+
     12c:	0d 92       	st	X+, r0
     12e:	a4 34       	cpi	r26, 0x44	; 68
     130:	b1 07       	cpc	r27, r17
     132:	d9 f7       	brne	.-10     	; 0x12a <__do_copy_data+0x10>

00000134 <__do_clear_bss>:
     134:	21 e0       	ldi	r18, 0x01	; 1
     136:	a4 e4       	ldi	r26, 0x44	; 68
     138:	b1 e0       	ldi	r27, 0x01	; 1
     13a:	01 c0       	rjmp	.+2      	; 0x13e <.do_clear_bss_start>

0000013c <.do_clear_bss_loop>:
     13c:	1d 92       	st	X+, r1

0000013e <.do_clear_bss_start>:
     13e:	aa 3c       	cpi	r26, 0xCA	; 202
     140:	b2 07       	cpc	r27, r18
     142:	e1 f7       	brne	.-8      	; 0x13c <.do_clear_bss_loop>
     144:	0e 94 f6 00 	call	0x1ec	; 0x1ec <main>
     148:	0c 94 73 0c 	jmp	0x18e6	; 0x18e6 <_exit>

0000014c <__bad_interrupt>:
     14c:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

00000150 <avr_Print>:
     150:	fc 01       	movw	r30, r24
     152:	8a e0       	ldi	r24, 0x0A	; 10
     154:	2b e0       	ldi	r18, 0x0B	; 11
     156:	91 91       	ld	r25, Z+
     158:	99 23       	and	r25, r25
     15a:	51 f0       	breq	.+20     	; 0x170 <avr_Print+0x20>
     15c:	9a 30       	cpi	r25, 0x0A	; 10
     15e:	19 f4       	brne	.+6      	; 0x166 <avr_Print+0x16>
     160:	20 93 c4 01 	sts	0x01C4, r18	; 0x8001c4 <debugbuf1>
     164:	f8 cf       	rjmp	.-16     	; 0x156 <avr_Print+0x6>
     166:	90 93 c5 01 	sts	0x01C5, r25	; 0x8001c5 <debugbuf1+0x1>
     16a:	80 93 c4 01 	sts	0x01C4, r24	; 0x8001c4 <debugbuf1>
     16e:	f3 cf       	rjmp	.-26     	; 0x156 <avr_Print+0x6>
     170:	08 95       	ret

00000172 <avr_VPrint>:
     172:	9b 01       	movw	r18, r22
     174:	ac 01       	movw	r20, r24
     176:	60 e8       	ldi	r22, 0x80	; 128
     178:	70 e0       	ldi	r23, 0x00	; 0
     17a:	84 e4       	ldi	r24, 0x44	; 68
     17c:	91 e0       	ldi	r25, 0x01	; 1
     17e:	0e 94 80 09 	call	0x1300	; 0x1300 <vsnprintf>
     182:	84 e4       	ldi	r24, 0x44	; 68
     184:	91 e0       	ldi	r25, 0x01	; 1
     186:	0c 94 a8 00 	jmp	0x150	; 0x150 <avr_Print>

0000018a <avr_Printf>:
     18a:	cf 93       	push	r28
     18c:	df 93       	push	r29
     18e:	cd b7       	in	r28, 0x3d	; 61
     190:	de b7       	in	r29, 0x3e	; 62
     192:	be 01       	movw	r22, r28
     194:	6b 5f       	subi	r22, 0xFB	; 251
     196:	7f 4f       	sbci	r23, 0xFF	; 255
     198:	fb 01       	movw	r30, r22
     19a:	81 91       	ld	r24, Z+
     19c:	91 91       	ld	r25, Z+
     19e:	bf 01       	movw	r22, r30
     1a0:	0e 94 b9 00 	call	0x172	; 0x172 <avr_VPrint>
     1a4:	df 91       	pop	r29
     1a6:	cf 91       	pop	r28
     1a8:	08 95       	ret

000001aa <rtc_startBenchmarkMeasurement_Native>:
     1aa:	81 e0       	ldi	r24, 0x01	; 1
     1ac:	80 93 c9 01 	sts	0x01C9, r24	; 0x8001c9 <avroraTraceEnabledVariable>
     1b0:	08 95       	ret

000001b2 <rtc_stopBenchmarkMeasurement>:
     1b2:	10 92 c9 01 	sts	0x01C9, r1	; 0x8001c9 <avroraTraceEnabledVariable>
     1b6:	08 95       	ret

000001b8 <printInt>:
     1b8:	9f 93       	push	r25
     1ba:	8f 93       	push	r24
     1bc:	80 e3       	ldi	r24, 0x30	; 48
     1be:	91 e0       	ldi	r25, 0x01	; 1
     1c0:	9f 93       	push	r25
     1c2:	8f 93       	push	r24
     1c4:	0e 94 c5 00 	call	0x18a	; 0x18a <avr_Printf>
     1c8:	0f 90       	pop	r0
     1ca:	0f 90       	pop	r0
     1cc:	0f 90       	pop	r0
     1ce:	0f 90       	pop	r0
     1d0:	08 95       	ret

000001d2 <printStr>:
     1d2:	9f 93       	push	r25
     1d4:	8f 93       	push	r24
     1d6:	84 e3       	ldi	r24, 0x34	; 52
     1d8:	91 e0       	ldi	r25, 0x01	; 1
     1da:	9f 93       	push	r25
     1dc:	8f 93       	push	r24
     1de:	0e 94 c5 00 	call	0x18a	; 0x18a <avr_Printf>
     1e2:	0f 90       	pop	r0
     1e4:	0f 90       	pop	r0
     1e6:	0f 90       	pop	r0
     1e8:	0f 90       	pop	r0
     1ea:	08 95       	ret

000001ec <main>:
     1ec:	0e 94 fc 00 	call	0x1f8	; 0x1f8 <javax_rtcbench_RTCBenchmark_void_test_native>
     1f0:	98 95       	break
     1f2:	80 e0       	ldi	r24, 0x00	; 0
     1f4:	90 e0       	ldi	r25, 0x00	; 0
     1f6:	08 95       	ret

000001f8 <javax_rtcbench_RTCBenchmark_void_test_native>:
     1f8:	2f 92       	push	r2
     1fa:	3f 92       	push	r3
     1fc:	4f 92       	push	r4
     1fe:	5f 92       	push	r5
     200:	6f 92       	push	r6
     202:	7f 92       	push	r7
     204:	8f 92       	push	r8
     206:	9f 92       	push	r9
     208:	af 92       	push	r10
     20a:	bf 92       	push	r11
     20c:	cf 92       	push	r12
     20e:	df 92       	push	r13
     210:	ef 92       	push	r14
     212:	ff 92       	push	r15
     214:	0f 93       	push	r16
     216:	1f 93       	push	r17
     218:	cf 93       	push	r28
     21a:	df 93       	push	r29
     21c:	cd b7       	in	r28, 0x3d	; 61
     21e:	de b7       	in	r29, 0x3e	; 62
     220:	c0 53       	subi	r28, 0x30	; 48
     222:	da 40       	sbci	r29, 0x0A	; 10
     224:	0f b6       	in	r0, 0x3f	; 63
     226:	f8 94       	cli
     228:	de bf       	out	0x3e, r29	; 62
     22a:	0f be       	out	0x3f, r0	; 63
     22c:	cd bf       	out	0x3d, r28	; 61
     22e:	3e 01       	movw	r6, r28
     230:	2f ef       	ldi	r18, 0xFF	; 255
     232:	62 1a       	sub	r6, r18
     234:	26 ef       	ldi	r18, 0xF6	; 246
     236:	72 0a       	sbc	r7, r18
     238:	80 e0       	ldi	r24, 0x00	; 0
     23a:	91 e0       	ldi	r25, 0x01	; 1
     23c:	f3 01       	movw	r30, r6
     23e:	9c 01       	movw	r18, r24
     240:	11 92       	st	Z+, r1
     242:	21 50       	subi	r18, 0x01	; 1
     244:	30 40       	sbci	r19, 0x00	; 0
     246:	e1 f7       	brne	.-8      	; 0x240 <javax_rtcbench_RTCBenchmark_void_test_native+0x48>
     248:	2e 01       	movw	r4, r28
     24a:	3f ef       	ldi	r19, 0xFF	; 255
     24c:	43 1a       	sub	r4, r19
     24e:	37 ef       	ldi	r19, 0xF7	; 247
     250:	53 0a       	sbc	r5, r19
     252:	f2 01       	movw	r30, r4
     254:	9c 01       	movw	r18, r24
     256:	11 92       	st	Z+, r1
     258:	21 50       	subi	r18, 0x01	; 1
     25a:	30 40       	sbci	r19, 0x00	; 0
     25c:	e1 f7       	brne	.-8      	; 0x256 <javax_rtcbench_RTCBenchmark_void_test_native+0x5e>
     25e:	1e 01       	movw	r2, r28
     260:	3f ef       	ldi	r19, 0xFF	; 255
     262:	23 1a       	sub	r2, r19
     264:	38 ef       	ldi	r19, 0xF8	; 248
     266:	33 0a       	sbc	r3, r19
     268:	f1 01       	movw	r30, r2
     26a:	9c 01       	movw	r18, r24
     26c:	11 92       	st	Z+, r1
     26e:	21 50       	subi	r18, 0x01	; 1
     270:	30 40       	sbci	r19, 0x00	; 0
     272:	e1 f7       	brne	.-8      	; 0x26c <javax_rtcbench_RTCBenchmark_void_test_native+0x74>
     274:	ce 01       	movw	r24, r28
     276:	01 96       	adiw	r24, 0x01	; 1
     278:	4c 01       	movw	r8, r24
     27a:	80 e0       	ldi	r24, 0x00	; 0
     27c:	97 e0       	ldi	r25, 0x07	; 7
     27e:	f4 01       	movw	r30, r8
     280:	9c 01       	movw	r18, r24
     282:	11 92       	st	Z+, r1
     284:	21 50       	subi	r18, 0x01	; 1
     286:	30 40       	sbci	r19, 0x00	; 0
     288:	e1 f7       	brne	.-8      	; 0x282 <javax_rtcbench_RTCBenchmark_void_test_native+0x8a>
     28a:	88 e1       	ldi	r24, 0x18	; 24
     28c:	e0 e0       	ldi	r30, 0x00	; 0
     28e:	f1 e0       	ldi	r31, 0x01	; 1
     290:	de 01       	movw	r26, r28
     292:	a7 5e       	subi	r26, 0xE7	; 231
     294:	b5 4f       	sbci	r27, 0xF5	; 245
     296:	01 90       	ld	r0, Z+
     298:	0d 92       	st	X+, r0
     29a:	8a 95       	dec	r24
     29c:	e1 f7       	brne	.-8      	; 0x296 <javax_rtcbench_RTCBenchmark_void_test_native+0x9e>
     29e:	88 e1       	ldi	r24, 0x18	; 24
     2a0:	e8 e1       	ldi	r30, 0x18	; 24
     2a2:	f1 e0       	ldi	r31, 0x01	; 1
     2a4:	de 01       	movw	r26, r28
     2a6:	af 5f       	subi	r26, 0xFF	; 255
     2a8:	b5 4f       	sbci	r27, 0xF5	; 245
     2aa:	01 90       	ld	r0, Z+
     2ac:	0d 92       	st	X+, r0
     2ae:	8a 95       	dec	r24
     2b0:	e1 f7       	brne	.-8      	; 0x2aa <javax_rtcbench_RTCBenchmark_void_test_native+0xb2>
     2b2:	88 e3       	ldi	r24, 0x38	; 56
     2b4:	91 e0       	ldi	r25, 0x01	; 1
     2b6:	0e 94 e9 00 	call	0x1d2	; 0x1d2 <printStr>
     2ba:	84 e0       	ldi	r24, 0x04	; 4
     2bc:	90 e0       	ldi	r25, 0x00	; 0
     2be:	0e 94 dc 00 	call	0x1b8	; 0x1b8 <printInt>
     2c2:	0e 94 d5 00 	call	0x1aa	; 0x1aa <rtc_startBenchmarkMeasurement_Native>
     2c6:	86 e0       	ldi	r24, 0x06	; 6
     2c8:	a8 2e       	mov	r10, r24
     2ca:	b1 2c       	mov	r11, r1
     2cc:	96 e0       	ldi	r25, 0x06	; 6
     2ce:	c9 2e       	mov	r12, r25
     2d0:	d1 2c       	mov	r13, r1
     2d2:	20 e4       	ldi	r18, 0x40	; 64
     2d4:	e2 2e       	mov	r14, r18
     2d6:	f1 2c       	mov	r15, r1
     2d8:	8e 01       	movw	r16, r28
     2da:	0f 5f       	subi	r16, 0xFF	; 255
     2dc:	15 4f       	sbci	r17, 0xF5	; 245
     2de:	9e 01       	movw	r18, r28
     2e0:	27 5e       	subi	r18, 0xE7	; 231
     2e2:	35 4f       	sbci	r19, 0xF5	; 245
     2e4:	a2 01       	movw	r20, r4
     2e6:	b1 01       	movw	r22, r2
     2e8:	c3 01       	movw	r24, r6
     2ea:	0e 94 3f 05 	call	0xa7e	; 0xa7e <DWT1D>
     2ee:	0e 94 d9 00 	call	0x1b2	; 0x1b2 <rtc_stopBenchmarkMeasurement>
     2f2:	c0 5d       	subi	r28, 0xD0	; 208
     2f4:	d5 4f       	sbci	r29, 0xF5	; 245
     2f6:	0f b6       	in	r0, 0x3f	; 63
     2f8:	f8 94       	cli
     2fa:	de bf       	out	0x3e, r29	; 62
     2fc:	0f be       	out	0x3f, r0	; 63
     2fe:	cd bf       	out	0x3d, r28	; 61
     300:	df 91       	pop	r29
     302:	cf 91       	pop	r28
     304:	1f 91       	pop	r17
     306:	0f 91       	pop	r16
     308:	ff 90       	pop	r15
     30a:	ef 90       	pop	r14
     30c:	df 90       	pop	r13
     30e:	cf 90       	pop	r12
     310:	bf 90       	pop	r11
     312:	af 90       	pop	r10
     314:	9f 90       	pop	r9
     316:	8f 90       	pop	r8
     318:	7f 90       	pop	r7
     31a:	6f 90       	pop	r6
     31c:	5f 90       	pop	r5
     31e:	4f 90       	pop	r4
     320:	3f 90       	pop	r3
     322:	2f 90       	pop	r2
     324:	08 95       	ret

00000326 <Covlution>:
     326:	2f 92       	push	r2
     328:	3f 92       	push	r3
     32a:	4f 92       	push	r4
     32c:	5f 92       	push	r5
     32e:	6f 92       	push	r6
     330:	7f 92       	push	r7
     332:	8f 92       	push	r8
     334:	9f 92       	push	r9
     336:	af 92       	push	r10
     338:	bf 92       	push	r11
     33a:	cf 92       	push	r12
     33c:	df 92       	push	r13
     33e:	ef 92       	push	r14
     340:	ff 92       	push	r15
     342:	0f 93       	push	r16
     344:	1f 93       	push	r17
     346:	cf 93       	push	r28
     348:	df 93       	push	r29
     34a:	cd b7       	in	r28, 0x3d	; 61
     34c:	de b7       	in	r29, 0x3e	; 62
     34e:	a0 97       	sbiw	r28, 0x20	; 32
     350:	0f b6       	in	r0, 0x3f	; 63
     352:	f8 94       	cli
     354:	de bf       	out	0x3e, r29	; 62
     356:	0f be       	out	0x3f, r0	; 63
     358:	cd bf       	out	0x3d, r28	; 61
     35a:	2c 01       	movw	r4, r24
     35c:	7a 87       	std	Y+10, r23	; 0x0a
     35e:	69 87       	std	Y+9, r22	; 0x09
     360:	5c 87       	std	Y+12, r21	; 0x0c
     362:	4b 87       	std	Y+11, r20	; 0x0b
     364:	3c 83       	std	Y+4, r19	; 0x04
     366:	2b 83       	std	Y+3, r18	; 0x03
     368:	1e 87       	std	Y+14, r17	; 0x0e
     36a:	0d 87       	std	Y+13, r16	; 0x0d
     36c:	17 01       	movw	r2, r14
     36e:	38 87       	std	Y+8, r19	; 0x08
     370:	2f 83       	std	Y+7, r18	; 0x07
     372:	f9 01       	movw	r30, r18
     374:	80 e0       	ldi	r24, 0x00	; 0
     376:	90 e0       	ldi	r25, 0x00	; 0
     378:	2d 85       	ldd	r18, Y+13	; 0x0d
     37a:	3e 85       	ldd	r19, Y+14	; 0x0e
     37c:	82 17       	cp	r24, r18
     37e:	93 07       	cpc	r25, r19
     380:	34 f4       	brge	.+12     	; 0x38e <Covlution+0x68>
     382:	11 92       	st	Z+, r1
     384:	11 92       	st	Z+, r1
     386:	11 92       	st	Z+, r1
     388:	11 92       	st	Z+, r1
     38a:	01 96       	adiw	r24, 0x01	; 1
     38c:	f5 cf       	rjmp	.-22     	; 0x378 <Covlution+0x52>
     38e:	c1 01       	movw	r24, r2
     390:	37 fc       	sbrc	r3, 7
     392:	01 96       	adiw	r24, 0x01	; 1
     394:	fc 01       	movw	r30, r24
     396:	f5 95       	asr	r31
     398:	e7 95       	ror	r30
     39a:	fa 83       	std	Y+2, r31	; 0x02
     39c:	e9 83       	std	Y+1, r30	; 0x01
     39e:	31 01       	movw	r6, r2
     3a0:	37 fe       	sbrs	r3, 7
     3a2:	03 c0       	rjmp	.+6      	; 0x3aa <Covlution+0x84>
     3a4:	ff ef       	ldi	r31, 0xFF	; 255
     3a6:	6f 1a       	sub	r6, r31
     3a8:	7f 0a       	sbc	r7, r31
     3aa:	75 94       	asr	r7
     3ac:	67 94       	ror	r6
     3ae:	22 27       	eor	r18, r18
     3b0:	33 27       	eor	r19, r19
     3b2:	26 19       	sub	r18, r6
     3b4:	37 09       	sbc	r19, r7
     3b6:	3c 8b       	std	Y+20, r19	; 0x14
     3b8:	2b 8b       	std	Y+19, r18	; 0x13
     3ba:	8d 85       	ldd	r24, Y+13	; 0x0d
     3bc:	9e 85       	ldd	r25, Y+14	; 0x0e
     3be:	28 0f       	add	r18, r24
     3c0:	39 1f       	adc	r19, r25
     3c2:	3a 8b       	std	Y+18, r19	; 0x12
     3c4:	29 8b       	std	Y+17, r18	; 0x11
     3c6:	e9 81       	ldd	r30, Y+1	; 0x01
     3c8:	fa 81       	ldd	r31, Y+2	; 0x02
     3ca:	ee 0f       	add	r30, r30
     3cc:	ff 1f       	adc	r31, r31
     3ce:	ee 0f       	add	r30, r30
     3d0:	ff 1f       	adc	r31, r31
     3d2:	f8 8f       	std	Y+24, r31	; 0x18
     3d4:	ef 8b       	std	Y+23, r30	; 0x17
     3d6:	22 0f       	add	r18, r18
     3d8:	33 1f       	adc	r19, r19
     3da:	22 0f       	add	r18, r18
     3dc:	33 1f       	adc	r19, r19
     3de:	3e 8b       	std	Y+22, r19	; 0x16
     3e0:	2d 8b       	std	Y+21, r18	; 0x15
     3e2:	0b 81       	ldd	r16, Y+3	; 0x03
     3e4:	1c 81       	ldd	r17, Y+4	; 0x04
     3e6:	e1 2c       	mov	r14, r1
     3e8:	f1 2c       	mov	r15, r1
     3ea:	18 8a       	std	Y+16, r1	; 0x10
     3ec:	1f 86       	std	Y+15, r1	; 0x0f
     3ee:	ef 85       	ldd	r30, Y+15	; 0x0f
     3f0:	f8 89       	ldd	r31, Y+16	; 0x10
     3f2:	29 81       	ldd	r18, Y+1	; 0x01
     3f4:	3a 81       	ldd	r19, Y+2	; 0x02
     3f6:	e2 17       	cp	r30, r18
     3f8:	f3 07       	cpc	r31, r19
     3fa:	0c f0       	brlt	.+2      	; 0x3fe <Covlution+0xd8>
     3fc:	70 c0       	rjmp	.+224    	; 0x4de <__LOCK_REGION_LENGTH__+0xde>
     3fe:	a9 80       	ldd	r10, Y+1	; 0x01
     400:	ba 80       	ldd	r11, Y+2	; 0x02
     402:	2f 85       	ldd	r18, Y+15	; 0x0f
     404:	38 89       	ldd	r19, Y+16	; 0x10
     406:	a2 1a       	sub	r10, r18
     408:	b3 0a       	sbc	r11, r19
     40a:	42 01       	movw	r8, r4
     40c:	cf 88       	ldd	r12, Y+23	; 0x17
     40e:	d8 8c       	ldd	r13, Y+24	; 0x18
     410:	ce 18       	sub	r12, r14
     412:	df 08       	sbc	r13, r15
     414:	89 85       	ldd	r24, Y+9	; 0x09
     416:	9a 85       	ldd	r25, Y+10	; 0x0a
     418:	c8 0e       	add	r12, r24
     41a:	d9 1e       	adc	r13, r25
     41c:	a2 14       	cp	r10, r2
     41e:	b3 04       	cpc	r11, r3
     420:	04 f5       	brge	.+64     	; 0x462 <__LOCK_REGION_LENGTH__+0x62>
     422:	f4 01       	movw	r30, r8
     424:	61 91       	ld	r22, Z+
     426:	71 91       	ld	r23, Z+
     428:	81 91       	ld	r24, Z+
     42a:	91 91       	ld	r25, Z+
     42c:	4f 01       	movw	r8, r30
     42e:	f6 01       	movw	r30, r12
     430:	21 91       	ld	r18, Z+
     432:	31 91       	ld	r19, Z+
     434:	41 91       	ld	r20, Z+
     436:	51 91       	ld	r21, Z+
     438:	6f 01       	movw	r12, r30
     43a:	0e 94 8e 07 	call	0xf1c	; 0xf1c <__mulsf3>
     43e:	9b 01       	movw	r18, r22
     440:	ac 01       	movw	r20, r24
     442:	f8 01       	movw	r30, r16
     444:	60 81       	ld	r22, Z
     446:	71 81       	ldd	r23, Z+1	; 0x01
     448:	82 81       	ldd	r24, Z+2	; 0x02
     44a:	93 81       	ldd	r25, Z+3	; 0x03
     44c:	0e 94 f9 05 	call	0xbf2	; 0xbf2 <__addsf3>
     450:	f8 01       	movw	r30, r16
     452:	60 83       	st	Z, r22
     454:	71 83       	std	Z+1, r23	; 0x01
     456:	82 83       	std	Z+2, r24	; 0x02
     458:	93 83       	std	Z+3, r25	; 0x03
     45a:	ff ef       	ldi	r31, 0xFF	; 255
     45c:	af 1a       	sub	r10, r31
     45e:	bf 0a       	sbc	r11, r31
     460:	dd cf       	rjmp	.-70     	; 0x41c <__LOCK_REGION_LENGTH__+0x1c>
     462:	a9 88       	ldd	r10, Y+17	; 0x11
     464:	ba 88       	ldd	r11, Y+18	; 0x12
     466:	2f 85       	ldd	r18, Y+15	; 0x0f
     468:	38 89       	ldd	r19, Y+16	; 0x10
     46a:	a2 0e       	add	r10, r18
     46c:	b3 1e       	adc	r11, r19
     46e:	cd 88       	ldd	r12, Y+21	; 0x15
     470:	de 88       	ldd	r13, Y+22	; 0x16
     472:	ce 0c       	add	r12, r14
     474:	df 1c       	adc	r13, r15
     476:	c4 0c       	add	r12, r4
     478:	d5 1c       	adc	r13, r5
     47a:	89 84       	ldd	r8, Y+9	; 0x09
     47c:	9a 84       	ldd	r9, Y+10	; 0x0a
     47e:	2d 85       	ldd	r18, Y+13	; 0x0d
     480:	3e 85       	ldd	r19, Y+14	; 0x0e
     482:	a2 16       	cp	r10, r18
     484:	b3 06       	cpc	r11, r19
     486:	04 f5       	brge	.+64     	; 0x4c8 <__LOCK_REGION_LENGTH__+0xc8>
     488:	f6 01       	movw	r30, r12
     48a:	61 91       	ld	r22, Z+
     48c:	71 91       	ld	r23, Z+
     48e:	81 91       	ld	r24, Z+
     490:	91 91       	ld	r25, Z+
     492:	6f 01       	movw	r12, r30
     494:	f4 01       	movw	r30, r8
     496:	21 91       	ld	r18, Z+
     498:	31 91       	ld	r19, Z+
     49a:	41 91       	ld	r20, Z+
     49c:	51 91       	ld	r21, Z+
     49e:	4f 01       	movw	r8, r30
     4a0:	0e 94 8e 07 	call	0xf1c	; 0xf1c <__mulsf3>
     4a4:	9b 01       	movw	r18, r22
     4a6:	ac 01       	movw	r20, r24
     4a8:	f8 01       	movw	r30, r16
     4aa:	60 81       	ld	r22, Z
     4ac:	71 81       	ldd	r23, Z+1	; 0x01
     4ae:	82 81       	ldd	r24, Z+2	; 0x02
     4b0:	93 81       	ldd	r25, Z+3	; 0x03
     4b2:	0e 94 f9 05 	call	0xbf2	; 0xbf2 <__addsf3>
     4b6:	f8 01       	movw	r30, r16
     4b8:	60 83       	st	Z, r22
     4ba:	71 83       	std	Z+1, r23	; 0x01
     4bc:	82 83       	std	Z+2, r24	; 0x02
     4be:	93 83       	std	Z+3, r25	; 0x03
     4c0:	ff ef       	ldi	r31, 0xFF	; 255
     4c2:	af 1a       	sub	r10, r31
     4c4:	bf 0a       	sbc	r11, r31
     4c6:	db cf       	rjmp	.-74     	; 0x47e <__LOCK_REGION_LENGTH__+0x7e>
     4c8:	8f 85       	ldd	r24, Y+15	; 0x0f
     4ca:	98 89       	ldd	r25, Y+16	; 0x10
     4cc:	02 96       	adiw	r24, 0x02	; 2
     4ce:	98 8b       	std	Y+16, r25	; 0x10
     4d0:	8f 87       	std	Y+15, r24	; 0x0f
     4d2:	98 e0       	ldi	r25, 0x08	; 8
     4d4:	e9 0e       	add	r14, r25
     4d6:	f1 1c       	adc	r15, r1
     4d8:	08 5f       	subi	r16, 0xF8	; 248
     4da:	1f 4f       	sbci	r17, 0xFF	; 255
     4dc:	88 cf       	rjmp	.-240    	; 0x3ee <Covlution+0xc8>
     4de:	8f 01       	movw	r16, r30
     4e0:	00 0f       	add	r16, r16
     4e2:	11 1f       	adc	r17, r17
     4e4:	00 0f       	add	r16, r16
     4e6:	11 1f       	adc	r17, r17
     4e8:	8b 81       	ldd	r24, Y+3	; 0x03
     4ea:	9c 81       	ldd	r25, Y+4	; 0x04
     4ec:	08 0f       	add	r16, r24
     4ee:	19 1f       	adc	r17, r25
     4f0:	6b 88       	ldd	r6, Y+19	; 0x13
     4f2:	7c 88       	ldd	r7, Y+20	; 0x14
     4f4:	6e 0e       	add	r6, r30
     4f6:	7f 1e       	adc	r7, r31
     4f8:	66 0c       	add	r6, r6
     4fa:	77 1c       	adc	r7, r7
     4fc:	66 0c       	add	r6, r6
     4fe:	77 1c       	adc	r7, r7
     500:	c1 2c       	mov	r12, r1
     502:	d1 2c       	mov	r13, r1
     504:	ad 84       	ldd	r10, Y+13	; 0x0d
     506:	be 84       	ldd	r11, Y+14	; 0x0e
     508:	a2 18       	sub	r10, r2
     50a:	b3 08       	sbc	r11, r3
     50c:	2a 0d       	add	r18, r10
     50e:	3b 1d       	adc	r19, r11
     510:	3a 8f       	std	Y+26, r19	; 0x1a
     512:	29 8f       	std	Y+25, r18	; 0x19
     514:	8f 85       	ldd	r24, Y+15	; 0x0f
     516:	98 89       	ldd	r25, Y+16	; 0x10
     518:	e9 8d       	ldd	r30, Y+25	; 0x19
     51a:	fa 8d       	ldd	r31, Y+26	; 0x1a
     51c:	e8 17       	cp	r30, r24
     51e:	f9 07       	cpc	r31, r25
     520:	1c f5       	brge	.+70     	; 0x568 <__LOCK_REGION_LENGTH__+0x168>
     522:	88 0f       	add	r24, r24
     524:	99 1f       	adc	r25, r25
     526:	88 0f       	add	r24, r24
     528:	99 1f       	adc	r25, r25
     52a:	2b 81       	ldd	r18, Y+3	; 0x03
     52c:	3c 81       	ldd	r19, Y+4	; 0x04
     52e:	82 0f       	add	r24, r18
     530:	93 1f       	adc	r25, r19
     532:	98 a3       	std	Y+32, r25	; 0x20
     534:	8f 8f       	std	Y+31, r24	; 0x1f
     536:	c1 01       	movw	r24, r2
     538:	88 0f       	add	r24, r24
     53a:	99 1f       	adc	r25, r25
     53c:	88 0f       	add	r24, r24
     53e:	99 1f       	adc	r25, r25
     540:	9e 83       	std	Y+6, r25	; 0x06
     542:	8d 83       	std	Y+5, r24	; 0x05
     544:	f5 01       	movw	r30, r10
     546:	ee 0f       	add	r30, r30
     548:	ff 1f       	adc	r31, r31
     54a:	ee 0f       	add	r30, r30
     54c:	ff 1f       	adc	r31, r31
     54e:	f8 8b       	std	Y+16, r31	; 0x10
     550:	ef 87       	std	Y+15, r30	; 0x0f
     552:	61 2c       	mov	r6, r1
     554:	71 2c       	mov	r7, r1
     556:	01 e0       	ldi	r16, 0x01	; 1
     558:	10 e0       	ldi	r17, 0x00	; 0
     55a:	04 97       	sbiw	r24, 0x04	; 4
     55c:	9c 8f       	std	Y+28, r25	; 0x1c
     55e:	8b 8f       	std	Y+27, r24	; 0x1b
     560:	34 96       	adiw	r30, 0x04	; 4
     562:	fe 8f       	std	Y+30, r31	; 0x1e
     564:	ed 8f       	std	Y+29, r30	; 0x1d
     566:	46 c0       	rjmp	.+140    	; 0x5f4 <__LOCK_REGION_LENGTH__+0x1f4>
     568:	46 01       	movw	r8, r12
     56a:	86 0c       	add	r8, r6
     56c:	97 1c       	adc	r9, r7
     56e:	84 0c       	add	r8, r4
     570:	95 1c       	adc	r9, r5
     572:	29 85       	ldd	r18, Y+9	; 0x09
     574:	3a 85       	ldd	r19, Y+10	; 0x0a
     576:	3e 83       	std	Y+6, r19	; 0x06
     578:	2d 83       	std	Y+5, r18	; 0x05
     57a:	e1 2c       	mov	r14, r1
     57c:	f1 2c       	mov	r15, r1
     57e:	e2 14       	cp	r14, r2
     580:	f3 04       	cpc	r15, r3
     582:	14 f5       	brge	.+68     	; 0x5c8 <__LOCK_REGION_LENGTH__+0x1c8>
     584:	f4 01       	movw	r30, r8
     586:	61 91       	ld	r22, Z+
     588:	71 91       	ld	r23, Z+
     58a:	81 91       	ld	r24, Z+
     58c:	91 91       	ld	r25, Z+
     58e:	4f 01       	movw	r8, r30
     590:	ed 81       	ldd	r30, Y+5	; 0x05
     592:	fe 81       	ldd	r31, Y+6	; 0x06
     594:	21 91       	ld	r18, Z+
     596:	31 91       	ld	r19, Z+
     598:	41 91       	ld	r20, Z+
     59a:	51 91       	ld	r21, Z+
     59c:	fe 83       	std	Y+6, r31	; 0x06
     59e:	ed 83       	std	Y+5, r30	; 0x05
     5a0:	0e 94 8e 07 	call	0xf1c	; 0xf1c <__mulsf3>
     5a4:	9b 01       	movw	r18, r22
     5a6:	ac 01       	movw	r20, r24
     5a8:	f8 01       	movw	r30, r16
     5aa:	60 81       	ld	r22, Z
     5ac:	71 81       	ldd	r23, Z+1	; 0x01
     5ae:	82 81       	ldd	r24, Z+2	; 0x02
     5b0:	93 81       	ldd	r25, Z+3	; 0x03
     5b2:	0e 94 f9 05 	call	0xbf2	; 0xbf2 <__addsf3>
     5b6:	f8 01       	movw	r30, r16
     5b8:	60 83       	st	Z, r22
     5ba:	71 83       	std	Z+1, r23	; 0x01
     5bc:	82 83       	std	Z+2, r24	; 0x02
     5be:	93 83       	std	Z+3, r25	; 0x03
     5c0:	ff ef       	ldi	r31, 0xFF	; 255
     5c2:	ef 1a       	sub	r14, r31
     5c4:	ff 0a       	sbc	r15, r31
     5c6:	db cf       	rjmp	.-74     	; 0x57e <__LOCK_REGION_LENGTH__+0x17e>
     5c8:	2f 85       	ldd	r18, Y+15	; 0x0f
     5ca:	38 89       	ldd	r19, Y+16	; 0x10
     5cc:	2e 5f       	subi	r18, 0xFE	; 254
     5ce:	3f 4f       	sbci	r19, 0xFF	; 255
     5d0:	38 8b       	std	Y+16, r19	; 0x10
     5d2:	2f 87       	std	Y+15, r18	; 0x0f
     5d4:	38 e0       	ldi	r19, 0x08	; 8
     5d6:	c3 0e       	add	r12, r19
     5d8:	d1 1c       	adc	r13, r1
     5da:	08 5f       	subi	r16, 0xF8	; 248
     5dc:	1f 4f       	sbci	r17, 0xFF	; 255
     5de:	9a cf       	rjmp	.-204    	; 0x514 <__LOCK_REGION_LENGTH__+0x114>
     5e0:	0e 5f       	subi	r16, 0xFE	; 254
     5e2:	1f 4f       	sbci	r17, 0xFF	; 255
     5e4:	28 e0       	ldi	r18, 0x08	; 8
     5e6:	62 0e       	add	r6, r18
     5e8:	71 1c       	adc	r7, r1
     5ea:	8f 8d       	ldd	r24, Y+31	; 0x1f
     5ec:	98 a1       	ldd	r25, Y+32	; 0x20
     5ee:	08 96       	adiw	r24, 0x08	; 8
     5f0:	98 a3       	std	Y+32, r25	; 0x20
     5f2:	8f 8f       	std	Y+31, r24	; 0x1f
     5f4:	e9 81       	ldd	r30, Y+1	; 0x01
     5f6:	fa 81       	ldd	r31, Y+2	; 0x02
     5f8:	e0 17       	cp	r30, r16
     5fa:	f1 07       	cpc	r31, r17
     5fc:	0c f4       	brge	.+2      	; 0x600 <__LOCK_REGION_LENGTH__+0x200>
     5fe:	68 c0       	rjmp	.+208    	; 0x6d0 <__LOCK_REGION_LENGTH__+0x2d0>
     600:	42 01       	movw	r8, r4
     602:	ab 8c       	ldd	r10, Y+27	; 0x1b
     604:	bc 8c       	ldd	r11, Y+28	; 0x1c
     606:	a6 18       	sub	r10, r6
     608:	b7 08       	sbc	r11, r7
     60a:	c1 2c       	mov	r12, r1
     60c:	d1 2c       	mov	r13, r1
     60e:	e1 2c       	mov	r14, r1
     610:	f1 2c       	mov	r15, r1
     612:	f4 01       	movw	r30, r8
     614:	61 91       	ld	r22, Z+
     616:	71 91       	ld	r23, Z+
     618:	81 91       	ld	r24, Z+
     61a:	91 91       	ld	r25, Z+
     61c:	4f 01       	movw	r8, r30
     61e:	f6 01       	movw	r30, r12
     620:	ea 0d       	add	r30, r10
     622:	fb 1d       	adc	r31, r11
     624:	29 85       	ldd	r18, Y+9	; 0x09
     626:	3a 85       	ldd	r19, Y+10	; 0x0a
     628:	e2 0f       	add	r30, r18
     62a:	f3 1f       	adc	r31, r19
     62c:	20 81       	ld	r18, Z
     62e:	31 81       	ldd	r19, Z+1	; 0x01
     630:	42 81       	ldd	r20, Z+2	; 0x02
     632:	53 81       	ldd	r21, Z+3	; 0x03
     634:	0e 94 8e 07 	call	0xf1c	; 0xf1c <__mulsf3>
     638:	9b 01       	movw	r18, r22
     63a:	ac 01       	movw	r20, r24
     63c:	ef 8d       	ldd	r30, Y+31	; 0x1f
     63e:	f8 a1       	ldd	r31, Y+32	; 0x20
     640:	60 81       	ld	r22, Z
     642:	71 81       	ldd	r23, Z+1	; 0x01
     644:	82 81       	ldd	r24, Z+2	; 0x02
     646:	93 81       	ldd	r25, Z+3	; 0x03
     648:	0e 94 f9 05 	call	0xbf2	; 0xbf2 <__addsf3>
     64c:	ef 8d       	ldd	r30, Y+31	; 0x1f
     64e:	f8 a1       	ldd	r31, Y+32	; 0x20
     650:	60 83       	st	Z, r22
     652:	71 83       	std	Z+1, r23	; 0x01
     654:	82 83       	std	Z+2, r24	; 0x02
     656:	93 83       	std	Z+3, r25	; 0x03
     658:	ff ef       	ldi	r31, 0xFF	; 255
     65a:	ef 1a       	sub	r14, r31
     65c:	ff 0a       	sbc	r15, r31
     65e:	24 e0       	ldi	r18, 0x04	; 4
     660:	c2 1a       	sub	r12, r18
     662:	d1 08       	sbc	r13, r1
     664:	0e 15       	cp	r16, r14
     666:	1f 05       	cpc	r17, r15
     668:	a1 f6       	brne	.-88     	; 0x612 <__LOCK_REGION_LENGTH__+0x212>
     66a:	41 01       	movw	r8, r2
     66c:	80 1a       	sub	r8, r16
     66e:	91 0a       	sbc	r9, r17
     670:	a9 84       	ldd	r10, Y+9	; 0x09
     672:	ba 84       	ldd	r11, Y+10	; 0x0a
     674:	ed 8c       	ldd	r14, Y+29	; 0x1d
     676:	fe 8c       	ldd	r15, Y+30	; 0x1e
     678:	e6 0c       	add	r14, r6
     67a:	f7 1c       	adc	r15, r7
     67c:	e4 0c       	add	r14, r4
     67e:	f5 1c       	adc	r15, r5
     680:	c1 2c       	mov	r12, r1
     682:	d1 2c       	mov	r13, r1
     684:	c8 14       	cp	r12, r8
     686:	d9 04       	cpc	r13, r9
     688:	0c f0       	brlt	.+2      	; 0x68c <__LOCK_REGION_LENGTH__+0x28c>
     68a:	aa cf       	rjmp	.-172    	; 0x5e0 <__LOCK_REGION_LENGTH__+0x1e0>
     68c:	f5 01       	movw	r30, r10
     68e:	61 91       	ld	r22, Z+
     690:	71 91       	ld	r23, Z+
     692:	81 91       	ld	r24, Z+
     694:	91 91       	ld	r25, Z+
     696:	5f 01       	movw	r10, r30
     698:	f7 01       	movw	r30, r14
     69a:	21 91       	ld	r18, Z+
     69c:	31 91       	ld	r19, Z+
     69e:	41 91       	ld	r20, Z+
     6a0:	51 91       	ld	r21, Z+
     6a2:	7f 01       	movw	r14, r30
     6a4:	0e 94 8e 07 	call	0xf1c	; 0xf1c <__mulsf3>
     6a8:	9b 01       	movw	r18, r22
     6aa:	ac 01       	movw	r20, r24
     6ac:	ef 8d       	ldd	r30, Y+31	; 0x1f
     6ae:	f8 a1       	ldd	r31, Y+32	; 0x20
     6b0:	60 81       	ld	r22, Z
     6b2:	71 81       	ldd	r23, Z+1	; 0x01
     6b4:	82 81       	ldd	r24, Z+2	; 0x02
     6b6:	93 81       	ldd	r25, Z+3	; 0x03
     6b8:	0e 94 f9 05 	call	0xbf2	; 0xbf2 <__addsf3>
     6bc:	ef 8d       	ldd	r30, Y+31	; 0x1f
     6be:	f8 a1       	ldd	r31, Y+32	; 0x20
     6c0:	60 83       	st	Z, r22
     6c2:	71 83       	std	Z+1, r23	; 0x01
     6c4:	82 83       	std	Z+2, r24	; 0x02
     6c6:	93 83       	std	Z+3, r25	; 0x03
     6c8:	ff ef       	ldi	r31, 0xFF	; 255
     6ca:	cf 1a       	sub	r12, r31
     6cc:	df 0a       	sbc	r13, r31
     6ce:	da cf       	rjmp	.-76     	; 0x684 <__LOCK_REGION_LENGTH__+0x284>
     6d0:	e1 2c       	mov	r14, r1
     6d2:	f1 2c       	mov	r15, r1
     6d4:	00 e0       	ldi	r16, 0x00	; 0
     6d6:	10 e0       	ldi	r17, 0x00	; 0
     6d8:	f8 01       	movw	r30, r16
     6da:	31 96       	adiw	r30, 0x01	; 1
     6dc:	fa 87       	std	Y+10, r31	; 0x0a
     6de:	e9 87       	std	Y+9, r30	; 0x09
     6e0:	29 81       	ldd	r18, Y+1	; 0x01
     6e2:	3a 81       	ldd	r19, Y+2	; 0x02
     6e4:	02 17       	cp	r16, r18
     6e6:	13 07       	cpc	r17, r19
     6e8:	0c f0       	brlt	.+2      	; 0x6ec <__LOCK_REGION_LENGTH__+0x2ec>
     6ea:	78 c0       	rjmp	.+240    	; 0x7dc <__LOCK_REGION_LENGTH__+0x3dc>
     6ec:	c9 80       	ldd	r12, Y+1	; 0x01
     6ee:	da 80       	ldd	r13, Y+2	; 0x02
     6f0:	c0 1a       	sub	r12, r16
     6f2:	d1 0a       	sbc	r13, r17
     6f4:	52 01       	movw	r10, r4
     6f6:	2f 89       	ldd	r18, Y+23	; 0x17
     6f8:	38 8d       	ldd	r19, Y+24	; 0x18
     6fa:	2e 19       	sub	r18, r14
     6fc:	3f 09       	sbc	r19, r15
     6fe:	8b 85       	ldd	r24, Y+11	; 0x0b
     700:	9c 85       	ldd	r25, Y+12	; 0x0c
     702:	28 0f       	add	r18, r24
     704:	39 1f       	adc	r19, r25
     706:	3a 87       	std	Y+10, r19	; 0x0a
     708:	29 87       	std	Y+9, r18	; 0x09
     70a:	c2 14       	cp	r12, r2
     70c:	d3 04       	cpc	r13, r3
     70e:	24 f5       	brge	.+72     	; 0x758 <__LOCK_REGION_LENGTH__+0x358>
     710:	f5 01       	movw	r30, r10
     712:	61 91       	ld	r22, Z+
     714:	71 91       	ld	r23, Z+
     716:	81 91       	ld	r24, Z+
     718:	91 91       	ld	r25, Z+
     71a:	5f 01       	movw	r10, r30
     71c:	e9 85       	ldd	r30, Y+9	; 0x09
     71e:	fa 85       	ldd	r31, Y+10	; 0x0a
     720:	21 91       	ld	r18, Z+
     722:	31 91       	ld	r19, Z+
     724:	41 91       	ld	r20, Z+
     726:	51 91       	ld	r21, Z+
     728:	fa 87       	std	Y+10, r31	; 0x0a
     72a:	e9 87       	std	Y+9, r30	; 0x09
     72c:	0e 94 8e 07 	call	0xf1c	; 0xf1c <__mulsf3>
     730:	9b 01       	movw	r18, r22
     732:	ac 01       	movw	r20, r24
     734:	ef 81       	ldd	r30, Y+7	; 0x07
     736:	f8 85       	ldd	r31, Y+8	; 0x08
     738:	64 81       	ldd	r22, Z+4	; 0x04
     73a:	75 81       	ldd	r23, Z+5	; 0x05
     73c:	86 81       	ldd	r24, Z+6	; 0x06
     73e:	97 81       	ldd	r25, Z+7	; 0x07
     740:	0e 94 f9 05 	call	0xbf2	; 0xbf2 <__addsf3>
     744:	ef 81       	ldd	r30, Y+7	; 0x07
     746:	f8 85       	ldd	r31, Y+8	; 0x08
     748:	64 83       	std	Z+4, r22	; 0x04
     74a:	75 83       	std	Z+5, r23	; 0x05
     74c:	86 83       	std	Z+6, r24	; 0x06
     74e:	97 83       	std	Z+7, r25	; 0x07
     750:	ff ef       	ldi	r31, 0xFF	; 255
     752:	cf 1a       	sub	r12, r31
     754:	df 0a       	sbc	r13, r31
     756:	d9 cf       	rjmp	.-78     	; 0x70a <__LOCK_REGION_LENGTH__+0x30a>
     758:	c9 88       	ldd	r12, Y+17	; 0x11
     75a:	da 88       	ldd	r13, Y+18	; 0x12
     75c:	c0 0e       	add	r12, r16
     75e:	d1 1e       	adc	r13, r17
     760:	2d 89       	ldd	r18, Y+21	; 0x15
     762:	3e 89       	ldd	r19, Y+22	; 0x16
     764:	2e 0d       	add	r18, r14
     766:	3f 1d       	adc	r19, r15
     768:	24 0d       	add	r18, r4
     76a:	35 1d       	adc	r19, r5
     76c:	3a 87       	std	Y+10, r19	; 0x0a
     76e:	29 87       	std	Y+9, r18	; 0x09
     770:	ab 84       	ldd	r10, Y+11	; 0x0b
     772:	bc 84       	ldd	r11, Y+12	; 0x0c
     774:	2d 85       	ldd	r18, Y+13	; 0x0d
     776:	3e 85       	ldd	r19, Y+14	; 0x0e
     778:	c2 16       	cp	r12, r18
     77a:	d3 06       	cpc	r13, r19
     77c:	24 f5       	brge	.+72     	; 0x7c6 <__LOCK_REGION_LENGTH__+0x3c6>
     77e:	e9 85       	ldd	r30, Y+9	; 0x09
     780:	fa 85       	ldd	r31, Y+10	; 0x0a
     782:	61 91       	ld	r22, Z+
     784:	71 91       	ld	r23, Z+
     786:	81 91       	ld	r24, Z+
     788:	91 91       	ld	r25, Z+
     78a:	fa 87       	std	Y+10, r31	; 0x0a
     78c:	e9 87       	std	Y+9, r30	; 0x09
     78e:	f5 01       	movw	r30, r10
     790:	21 91       	ld	r18, Z+
     792:	31 91       	ld	r19, Z+
     794:	41 91       	ld	r20, Z+
     796:	51 91       	ld	r21, Z+
     798:	5f 01       	movw	r10, r30
     79a:	0e 94 8e 07 	call	0xf1c	; 0xf1c <__mulsf3>
     79e:	9b 01       	movw	r18, r22
     7a0:	ac 01       	movw	r20, r24
     7a2:	ef 81       	ldd	r30, Y+7	; 0x07
     7a4:	f8 85       	ldd	r31, Y+8	; 0x08
     7a6:	64 81       	ldd	r22, Z+4	; 0x04
     7a8:	75 81       	ldd	r23, Z+5	; 0x05
     7aa:	86 81       	ldd	r24, Z+6	; 0x06
     7ac:	97 81       	ldd	r25, Z+7	; 0x07
     7ae:	0e 94 f9 05 	call	0xbf2	; 0xbf2 <__addsf3>
     7b2:	ef 81       	ldd	r30, Y+7	; 0x07
     7b4:	f8 85       	ldd	r31, Y+8	; 0x08
     7b6:	64 83       	std	Z+4, r22	; 0x04
     7b8:	75 83       	std	Z+5, r23	; 0x05
     7ba:	86 83       	std	Z+6, r24	; 0x06
     7bc:	97 83       	std	Z+7, r25	; 0x07
     7be:	ff ef       	ldi	r31, 0xFF	; 255
     7c0:	cf 1a       	sub	r12, r31
     7c2:	df 0a       	sbc	r13, r31
     7c4:	d7 cf       	rjmp	.-82     	; 0x774 <__LOCK_REGION_LENGTH__+0x374>
     7c6:	0e 5f       	subi	r16, 0xFE	; 254
     7c8:	1f 4f       	sbci	r17, 0xFF	; 255
     7ca:	38 e0       	ldi	r19, 0x08	; 8
     7cc:	e3 0e       	add	r14, r19
     7ce:	f1 1c       	adc	r15, r1
     7d0:	8f 81       	ldd	r24, Y+7	; 0x07
     7d2:	98 85       	ldd	r25, Y+8	; 0x08
     7d4:	08 96       	adiw	r24, 0x08	; 8
     7d6:	98 87       	std	Y+8, r25	; 0x08
     7d8:	8f 83       	std	Y+7, r24	; 0x07
     7da:	7e cf       	rjmp	.-260    	; 0x6d8 <__LOCK_REGION_LENGTH__+0x2d8>
     7dc:	8f 01       	movw	r16, r30
     7de:	00 0f       	add	r16, r16
     7e0:	11 1f       	adc	r17, r17
     7e2:	00 0f       	add	r16, r16
     7e4:	11 1f       	adc	r17, r17
     7e6:	8b 81       	ldd	r24, Y+3	; 0x03
     7e8:	9c 81       	ldd	r25, Y+4	; 0x04
     7ea:	08 0f       	add	r16, r24
     7ec:	19 1f       	adc	r17, r25
     7ee:	6b 88       	ldd	r6, Y+19	; 0x13
     7f0:	7c 88       	ldd	r7, Y+20	; 0x14
     7f2:	6e 0e       	add	r6, r30
     7f4:	7f 1e       	adc	r7, r31
     7f6:	66 0c       	add	r6, r6
     7f8:	77 1c       	adc	r7, r7
     7fa:	66 0c       	add	r6, r6
     7fc:	77 1c       	adc	r7, r7
     7fe:	a1 2c       	mov	r10, r1
     800:	b1 2c       	mov	r11, r1
     802:	89 85       	ldd	r24, Y+9	; 0x09
     804:	9a 85       	ldd	r25, Y+10	; 0x0a
     806:	e9 8d       	ldd	r30, Y+25	; 0x19
     808:	fa 8d       	ldd	r31, Y+26	; 0x1a
     80a:	e8 17       	cp	r30, r24
     80c:	f9 07       	cpc	r31, r25
     80e:	cc f4       	brge	.+50     	; 0x842 <__LOCK_REGION_LENGTH__+0x442>
     810:	88 0f       	add	r24, r24
     812:	99 1f       	adc	r25, r25
     814:	88 0f       	add	r24, r24
     816:	99 1f       	adc	r25, r25
     818:	2b 81       	ldd	r18, Y+3	; 0x03
     81a:	3c 81       	ldd	r19, Y+4	; 0x04
     81c:	82 0f       	add	r24, r18
     81e:	93 1f       	adc	r25, r19
     820:	9c 83       	std	Y+4, r25	; 0x04
     822:	8b 83       	std	Y+3, r24	; 0x03
     824:	e1 2c       	mov	r14, r1
     826:	f1 2c       	mov	r15, r1
     828:	01 e0       	ldi	r16, 0x01	; 1
     82a:	10 e0       	ldi	r17, 0x00	; 0
     82c:	8d 81       	ldd	r24, Y+5	; 0x05
     82e:	9e 81       	ldd	r25, Y+6	; 0x06
     830:	04 97       	sbiw	r24, 0x04	; 4
     832:	9e 83       	std	Y+6, r25	; 0x06
     834:	8d 83       	std	Y+5, r24	; 0x05
     836:	ef 85       	ldd	r30, Y+15	; 0x0f
     838:	f8 89       	ldd	r31, Y+16	; 0x10
     83a:	34 96       	adiw	r30, 0x04	; 4
     83c:	f8 8b       	std	Y+16, r31	; 0x10
     83e:	ef 87       	std	Y+15, r30	; 0x0f
     840:	42 c0       	rjmp	.+132    	; 0x8c6 <__LOCK_REGION_LENGTH__+0x4c6>
     842:	73 01       	movw	r14, r6
     844:	ea 0c       	add	r14, r10
     846:	fb 1c       	adc	r15, r11
     848:	e4 0c       	add	r14, r4
     84a:	f5 1c       	adc	r15, r5
     84c:	8b 84       	ldd	r8, Y+11	; 0x0b
     84e:	9c 84       	ldd	r9, Y+12	; 0x0c
     850:	c1 2c       	mov	r12, r1
     852:	d1 2c       	mov	r13, r1
     854:	c2 14       	cp	r12, r2
     856:	d3 04       	cpc	r13, r3
     858:	04 f5       	brge	.+64     	; 0x89a <__LOCK_REGION_LENGTH__+0x49a>
     85a:	f7 01       	movw	r30, r14
     85c:	61 91       	ld	r22, Z+
     85e:	71 91       	ld	r23, Z+
     860:	81 91       	ld	r24, Z+
     862:	91 91       	ld	r25, Z+
     864:	7f 01       	movw	r14, r30
     866:	f4 01       	movw	r30, r8
     868:	21 91       	ld	r18, Z+
     86a:	31 91       	ld	r19, Z+
     86c:	41 91       	ld	r20, Z+
     86e:	51 91       	ld	r21, Z+
     870:	4f 01       	movw	r8, r30
     872:	0e 94 8e 07 	call	0xf1c	; 0xf1c <__mulsf3>
     876:	9b 01       	movw	r18, r22
     878:	ac 01       	movw	r20, r24
     87a:	f8 01       	movw	r30, r16
     87c:	60 81       	ld	r22, Z
     87e:	71 81       	ldd	r23, Z+1	; 0x01
     880:	82 81       	ldd	r24, Z+2	; 0x02
     882:	93 81       	ldd	r25, Z+3	; 0x03
     884:	0e 94 f9 05 	call	0xbf2	; 0xbf2 <__addsf3>
     888:	f8 01       	movw	r30, r16
     88a:	60 83       	st	Z, r22
     88c:	71 83       	std	Z+1, r23	; 0x01
     88e:	82 83       	std	Z+2, r24	; 0x02
     890:	93 83       	std	Z+3, r25	; 0x03
     892:	ff ef       	ldi	r31, 0xFF	; 255
     894:	cf 1a       	sub	r12, r31
     896:	df 0a       	sbc	r13, r31
     898:	dd cf       	rjmp	.-70     	; 0x854 <__LOCK_REGION_LENGTH__+0x454>
     89a:	29 85       	ldd	r18, Y+9	; 0x09
     89c:	3a 85       	ldd	r19, Y+10	; 0x0a
     89e:	2e 5f       	subi	r18, 0xFE	; 254
     8a0:	3f 4f       	sbci	r19, 0xFF	; 255
     8a2:	3a 87       	std	Y+10, r19	; 0x0a
     8a4:	29 87       	std	Y+9, r18	; 0x09
     8a6:	38 e0       	ldi	r19, 0x08	; 8
     8a8:	a3 0e       	add	r10, r19
     8aa:	b1 1c       	adc	r11, r1
     8ac:	08 5f       	subi	r16, 0xF8	; 248
     8ae:	1f 4f       	sbci	r17, 0xFF	; 255
     8b0:	a8 cf       	rjmp	.-176    	; 0x802 <__LOCK_REGION_LENGTH__+0x402>
     8b2:	0e 5f       	subi	r16, 0xFE	; 254
     8b4:	1f 4f       	sbci	r17, 0xFF	; 255
     8b6:	28 e0       	ldi	r18, 0x08	; 8
     8b8:	e2 0e       	add	r14, r18
     8ba:	f1 1c       	adc	r15, r1
     8bc:	8b 81       	ldd	r24, Y+3	; 0x03
     8be:	9c 81       	ldd	r25, Y+4	; 0x04
     8c0:	08 96       	adiw	r24, 0x08	; 8
     8c2:	9c 83       	std	Y+4, r25	; 0x04
     8c4:	8b 83       	std	Y+3, r24	; 0x03
     8c6:	e9 81       	ldd	r30, Y+1	; 0x01
     8c8:	fa 81       	ldd	r31, Y+2	; 0x02
     8ca:	e0 17       	cp	r30, r16
     8cc:	f1 07       	cpc	r31, r17
     8ce:	0c f4       	brge	.+2      	; 0x8d2 <__LOCK_REGION_LENGTH__+0x4d2>
     8d0:	68 c0       	rjmp	.+208    	; 0x9a2 <__LOCK_REGION_LENGTH__+0x5a2>
     8d2:	42 01       	movw	r8, r4
     8d4:	6d 80       	ldd	r6, Y+5	; 0x05
     8d6:	7e 80       	ldd	r7, Y+6	; 0x06
     8d8:	6e 18       	sub	r6, r14
     8da:	7f 08       	sbc	r7, r15
     8dc:	a1 2c       	mov	r10, r1
     8de:	b1 2c       	mov	r11, r1
     8e0:	c1 2c       	mov	r12, r1
     8e2:	d1 2c       	mov	r13, r1
     8e4:	f4 01       	movw	r30, r8
     8e6:	61 91       	ld	r22, Z+
     8e8:	71 91       	ld	r23, Z+
     8ea:	81 91       	ld	r24, Z+
     8ec:	91 91       	ld	r25, Z+
     8ee:	4f 01       	movw	r8, r30
     8f0:	f5 01       	movw	r30, r10
     8f2:	e6 0d       	add	r30, r6
     8f4:	f7 1d       	adc	r31, r7
     8f6:	2b 85       	ldd	r18, Y+11	; 0x0b
     8f8:	3c 85       	ldd	r19, Y+12	; 0x0c
     8fa:	e2 0f       	add	r30, r18
     8fc:	f3 1f       	adc	r31, r19
     8fe:	20 81       	ld	r18, Z
     900:	31 81       	ldd	r19, Z+1	; 0x01
     902:	42 81       	ldd	r20, Z+2	; 0x02
     904:	53 81       	ldd	r21, Z+3	; 0x03
     906:	0e 94 8e 07 	call	0xf1c	; 0xf1c <__mulsf3>
     90a:	9b 01       	movw	r18, r22
     90c:	ac 01       	movw	r20, r24
     90e:	eb 81       	ldd	r30, Y+3	; 0x03
     910:	fc 81       	ldd	r31, Y+4	; 0x04
     912:	60 81       	ld	r22, Z
     914:	71 81       	ldd	r23, Z+1	; 0x01
     916:	82 81       	ldd	r24, Z+2	; 0x02
     918:	93 81       	ldd	r25, Z+3	; 0x03
     91a:	0e 94 f9 05 	call	0xbf2	; 0xbf2 <__addsf3>
     91e:	eb 81       	ldd	r30, Y+3	; 0x03
     920:	fc 81       	ldd	r31, Y+4	; 0x04
     922:	60 83       	st	Z, r22
     924:	71 83       	std	Z+1, r23	; 0x01
     926:	82 83       	std	Z+2, r24	; 0x02
     928:	93 83       	std	Z+3, r25	; 0x03
     92a:	ff ef       	ldi	r31, 0xFF	; 255
     92c:	cf 1a       	sub	r12, r31
     92e:	df 0a       	sbc	r13, r31
     930:	24 e0       	ldi	r18, 0x04	; 4
     932:	a2 1a       	sub	r10, r18
     934:	b1 08       	sbc	r11, r1
     936:	0c 15       	cp	r16, r12
     938:	1d 05       	cpc	r17, r13
     93a:	a1 f6       	brne	.-88     	; 0x8e4 <__LOCK_REGION_LENGTH__+0x4e4>
     93c:	31 01       	movw	r6, r2
     93e:	60 1a       	sub	r6, r16
     940:	71 0a       	sbc	r7, r17
     942:	8b 84       	ldd	r8, Y+11	; 0x0b
     944:	9c 84       	ldd	r9, Y+12	; 0x0c
     946:	cf 84       	ldd	r12, Y+15	; 0x0f
     948:	d8 88       	ldd	r13, Y+16	; 0x10
     94a:	ce 0c       	add	r12, r14
     94c:	df 1c       	adc	r13, r15
     94e:	c4 0c       	add	r12, r4
     950:	d5 1c       	adc	r13, r5
     952:	a1 2c       	mov	r10, r1
     954:	b1 2c       	mov	r11, r1
     956:	a6 14       	cp	r10, r6
     958:	b7 04       	cpc	r11, r7
     95a:	0c f0       	brlt	.+2      	; 0x95e <__LOCK_REGION_LENGTH__+0x55e>
     95c:	aa cf       	rjmp	.-172    	; 0x8b2 <__LOCK_REGION_LENGTH__+0x4b2>
     95e:	f4 01       	movw	r30, r8
     960:	61 91       	ld	r22, Z+
     962:	71 91       	ld	r23, Z+
     964:	81 91       	ld	r24, Z+
     966:	91 91       	ld	r25, Z+
     968:	4f 01       	movw	r8, r30
     96a:	f6 01       	movw	r30, r12
     96c:	21 91       	ld	r18, Z+
     96e:	31 91       	ld	r19, Z+
     970:	41 91       	ld	r20, Z+
     972:	51 91       	ld	r21, Z+
     974:	6f 01       	movw	r12, r30
     976:	0e 94 8e 07 	call	0xf1c	; 0xf1c <__mulsf3>
     97a:	9b 01       	movw	r18, r22
     97c:	ac 01       	movw	r20, r24
     97e:	eb 81       	ldd	r30, Y+3	; 0x03
     980:	fc 81       	ldd	r31, Y+4	; 0x04
     982:	60 81       	ld	r22, Z
     984:	71 81       	ldd	r23, Z+1	; 0x01
     986:	82 81       	ldd	r24, Z+2	; 0x02
     988:	93 81       	ldd	r25, Z+3	; 0x03
     98a:	0e 94 f9 05 	call	0xbf2	; 0xbf2 <__addsf3>
     98e:	eb 81       	ldd	r30, Y+3	; 0x03
     990:	fc 81       	ldd	r31, Y+4	; 0x04
     992:	60 83       	st	Z, r22
     994:	71 83       	std	Z+1, r23	; 0x01
     996:	82 83       	std	Z+2, r24	; 0x02
     998:	93 83       	std	Z+3, r25	; 0x03
     99a:	ff ef       	ldi	r31, 0xFF	; 255
     99c:	af 1a       	sub	r10, r31
     99e:	bf 0a       	sbc	r11, r31
     9a0:	da cf       	rjmp	.-76     	; 0x956 <__LOCK_REGION_LENGTH__+0x556>
     9a2:	a0 96       	adiw	r28, 0x20	; 32
     9a4:	0f b6       	in	r0, 0x3f	; 63
     9a6:	f8 94       	cli
     9a8:	de bf       	out	0x3e, r29	; 62
     9aa:	0f be       	out	0x3f, r0	; 63
     9ac:	cd bf       	out	0x3d, r28	; 61
     9ae:	df 91       	pop	r29
     9b0:	cf 91       	pop	r28
     9b2:	1f 91       	pop	r17
     9b4:	0f 91       	pop	r16
     9b6:	ff 90       	pop	r15
     9b8:	ef 90       	pop	r14
     9ba:	df 90       	pop	r13
     9bc:	cf 90       	pop	r12
     9be:	bf 90       	pop	r11
     9c0:	af 90       	pop	r10
     9c2:	9f 90       	pop	r9
     9c4:	8f 90       	pop	r8
     9c6:	7f 90       	pop	r7
     9c8:	6f 90       	pop	r6
     9ca:	5f 90       	pop	r5
     9cc:	4f 90       	pop	r4
     9ce:	3f 90       	pop	r3
     9d0:	2f 90       	pop	r2
     9d2:	08 95       	ret

000009d4 <Sort>:
     9d4:	cf 92       	push	r12
     9d6:	df 92       	push	r13
     9d8:	ef 92       	push	r14
     9da:	ff 92       	push	r15
     9dc:	cf 93       	push	r28
     9de:	df 93       	push	r29
     9e0:	ec 01       	movw	r28, r24
     9e2:	a0 e0       	ldi	r26, 0x00	; 0
     9e4:	b0 e0       	ldi	r27, 0x00	; 0
     9e6:	a4 17       	cp	r26, r20
     9e8:	b5 07       	cpc	r27, r21
     9ea:	cc f4       	brge	.+50     	; 0xa1e <Sort+0x4a>
     9ec:	c8 80       	ld	r12, Y
     9ee:	d9 80       	ldd	r13, Y+1	; 0x01
     9f0:	ea 80       	ldd	r14, Y+2	; 0x02
     9f2:	fb 80       	ldd	r15, Y+3	; 0x03
     9f4:	9d 01       	movw	r18, r26
     9f6:	b7 ff       	sbrs	r27, 7
     9f8:	02 c0       	rjmp	.+4      	; 0x9fe <Sort+0x2a>
     9fa:	2f 5f       	subi	r18, 0xFF	; 255
     9fc:	3f 4f       	sbci	r19, 0xFF	; 255
     9fe:	f9 01       	movw	r30, r18
     a00:	f5 95       	asr	r31
     a02:	e7 95       	ror	r30
     a04:	ee 0f       	add	r30, r30
     a06:	ff 1f       	adc	r31, r31
     a08:	ee 0f       	add	r30, r30
     a0a:	ff 1f       	adc	r31, r31
     a0c:	e6 0f       	add	r30, r22
     a0e:	f7 1f       	adc	r31, r23
     a10:	c0 82       	st	Z, r12
     a12:	d1 82       	std	Z+1, r13	; 0x01
     a14:	e2 82       	std	Z+2, r14	; 0x02
     a16:	f3 82       	std	Z+3, r15	; 0x03
     a18:	12 96       	adiw	r26, 0x02	; 2
     a1a:	28 96       	adiw	r28, 0x08	; 8
     a1c:	e4 cf       	rjmp	.-56     	; 0x9e6 <Sort+0x12>
     a1e:	9a 01       	movw	r18, r20
     a20:	57 ff       	sbrs	r21, 7
     a22:	02 c0       	rjmp	.+4      	; 0xa28 <Sort+0x54>
     a24:	2f 5f       	subi	r18, 0xFF	; 255
     a26:	3f 4f       	sbci	r19, 0xFF	; 255
     a28:	e9 01       	movw	r28, r18
     a2a:	d5 95       	asr	r29
     a2c:	c7 95       	ror	r28
     a2e:	a1 e0       	ldi	r26, 0x01	; 1
     a30:	b0 e0       	ldi	r27, 0x00	; 0
     a32:	a4 17       	cp	r26, r20
     a34:	b5 07       	cpc	r27, r21
     a36:	e4 f4       	brge	.+56     	; 0xa70 <Sort+0x9c>
     a38:	fc 01       	movw	r30, r24
     a3a:	c4 80       	ldd	r12, Z+4	; 0x04
     a3c:	d5 80       	ldd	r13, Z+5	; 0x05
     a3e:	e6 80       	ldd	r14, Z+6	; 0x06
     a40:	f7 80       	ldd	r15, Z+7	; 0x07
     a42:	9d 01       	movw	r18, r26
     a44:	b7 ff       	sbrs	r27, 7
     a46:	02 c0       	rjmp	.+4      	; 0xa4c <Sort+0x78>
     a48:	2f 5f       	subi	r18, 0xFF	; 255
     a4a:	3f 4f       	sbci	r19, 0xFF	; 255
     a4c:	f9 01       	movw	r30, r18
     a4e:	f5 95       	asr	r31
     a50:	e7 95       	ror	r30
     a52:	ec 0f       	add	r30, r28
     a54:	fd 1f       	adc	r31, r29
     a56:	ee 0f       	add	r30, r30
     a58:	ff 1f       	adc	r31, r31
     a5a:	ee 0f       	add	r30, r30
     a5c:	ff 1f       	adc	r31, r31
     a5e:	e6 0f       	add	r30, r22
     a60:	f7 1f       	adc	r31, r23
     a62:	c0 82       	st	Z, r12
     a64:	d1 82       	std	Z+1, r13	; 0x01
     a66:	e2 82       	std	Z+2, r14	; 0x02
     a68:	f3 82       	std	Z+3, r15	; 0x03
     a6a:	12 96       	adiw	r26, 0x02	; 2
     a6c:	08 96       	adiw	r24, 0x08	; 8
     a6e:	e1 cf       	rjmp	.-62     	; 0xa32 <Sort+0x5e>
     a70:	df 91       	pop	r29
     a72:	cf 91       	pop	r28
     a74:	ff 90       	pop	r15
     a76:	ef 90       	pop	r14
     a78:	df 90       	pop	r13
     a7a:	cf 90       	pop	r12
     a7c:	08 95       	ret

00000a7e <DWT1D>:
     a7e:	2f 92       	push	r2
     a80:	3f 92       	push	r3
     a82:	4f 92       	push	r4
     a84:	5f 92       	push	r5
     a86:	6f 92       	push	r6
     a88:	7f 92       	push	r7
     a8a:	8f 92       	push	r8
     a8c:	9f 92       	push	r9
     a8e:	af 92       	push	r10
     a90:	bf 92       	push	r11
     a92:	cf 92       	push	r12
     a94:	df 92       	push	r13
     a96:	ef 92       	push	r14
     a98:	ff 92       	push	r15
     a9a:	0f 93       	push	r16
     a9c:	1f 93       	push	r17
     a9e:	cf 93       	push	r28
     aa0:	df 93       	push	r29
     aa2:	cd b7       	in	r28, 0x3d	; 61
     aa4:	de b7       	in	r29, 0x3e	; 62
     aa6:	2c 97       	sbiw	r28, 0x0c	; 12
     aa8:	0f b6       	in	r0, 0x3f	; 63
     aaa:	f8 94       	cli
     aac:	de bf       	out	0x3e, r29	; 62
     aae:	0f be       	out	0x3f, r0	; 63
     ab0:	cd bf       	out	0x3d, r28	; 61
     ab2:	36 2e       	mov	r3, r22
     ab4:	27 2e       	mov	r2, r23
     ab6:	5c 83       	std	Y+4, r21	; 0x04
     ab8:	4b 83       	std	Y+3, r20	; 0x03
     aba:	3e 83       	std	Y+6, r19	; 0x06
     abc:	2d 83       	std	Y+5, r18	; 0x05
     abe:	18 87       	std	Y+8, r17	; 0x08
     ac0:	0f 83       	std	Y+7, r16	; 0x07
     ac2:	37 01       	movw	r6, r14
     ac4:	da 86       	std	Y+10, r13	; 0x0a
     ac6:	c9 86       	std	Y+9, r12	; 0x09
     ac8:	bc 86       	std	Y+12, r11	; 0x0c
     aca:	ab 86       	std	Y+11, r10	; 0x0b
     acc:	e6 2f       	mov	r30, r22
     ace:	f7 2f       	mov	r31, r23
     ad0:	20 e0       	ldi	r18, 0x00	; 0
     ad2:	30 e0       	ldi	r19, 0x00	; 0
     ad4:	26 15       	cp	r18, r6
     ad6:	37 05       	cpc	r19, r7
     ad8:	6c f4       	brge	.+26     	; 0xaf4 <DWT1D+0x76>
     ada:	dc 01       	movw	r26, r24
     adc:	4d 91       	ld	r20, X+
     ade:	5d 91       	ld	r21, X+
     ae0:	6d 91       	ld	r22, X+
     ae2:	7d 91       	ld	r23, X+
     ae4:	cd 01       	movw	r24, r26
     ae6:	41 93       	st	Z+, r20
     ae8:	51 93       	st	Z+, r21
     aea:	61 93       	st	Z+, r22
     aec:	71 93       	st	Z+, r23
     aee:	2f 5f       	subi	r18, 0xFF	; 255
     af0:	3f 4f       	sbci	r19, 0xFF	; 255
     af2:	f0 cf       	rjmp	.-32     	; 0xad4 <DWT1D+0x56>
     af4:	24 01       	movw	r4, r8
     af6:	c1 2c       	mov	r12, r1
     af8:	d1 2c       	mov	r13, r1
     afa:	ab 85       	ldd	r26, Y+11	; 0x0b
     afc:	bc 85       	ldd	r27, Y+12	; 0x0c
     afe:	ca 16       	cp	r12, r26
     b00:	db 06       	cpc	r13, r27
     b02:	0c f0       	brlt	.+2      	; 0xb06 <DWT1D+0x88>
     b04:	5c c0       	rjmp	.+184    	; 0xbbe <DWT1D+0x140>
     b06:	e9 84       	ldd	r14, Y+9	; 0x09
     b08:	fa 84       	ldd	r15, Y+10	; 0x0a
     b0a:	83 01       	movw	r16, r6
     b0c:	2b 81       	ldd	r18, Y+3	; 0x03
     b0e:	3c 81       	ldd	r19, Y+4	; 0x04
     b10:	4f 81       	ldd	r20, Y+7	; 0x07
     b12:	58 85       	ldd	r21, Y+8	; 0x08
     b14:	6d 81       	ldd	r22, Y+5	; 0x05
     b16:	7e 81       	ldd	r23, Y+6	; 0x06
     b18:	83 2d       	mov	r24, r3
     b1a:	92 2d       	mov	r25, r2
     b1c:	0e 94 93 01 	call	0x326	; 0x326 <Covlution>
     b20:	a3 01       	movw	r20, r6
     b22:	63 2d       	mov	r22, r3
     b24:	72 2d       	mov	r23, r2
     b26:	8b 81       	ldd	r24, Y+3	; 0x03
     b28:	9c 81       	ldd	r25, Y+4	; 0x04
     b2a:	0e 94 ea 04 	call	0x9d4	; 0x9d4 <Sort>
     b2e:	b6 01       	movw	r22, r12
     b30:	0d 2c       	mov	r0, r13
     b32:	00 0c       	add	r0, r0
     b34:	88 0b       	sbc	r24, r24
     b36:	99 0b       	sbc	r25, r25
     b38:	0e 94 de 06 	call	0xdbc	; 0xdbc <__floatsisf>
     b3c:	9b 01       	movw	r18, r22
     b3e:	ac 01       	movw	r20, r24
     b40:	60 e0       	ldi	r22, 0x00	; 0
     b42:	70 e0       	ldi	r23, 0x00	; 0
     b44:	80 e0       	ldi	r24, 0x00	; 0
     b46:	90 e4       	ldi	r25, 0x40	; 64
     b48:	0e 94 fb 07 	call	0xff6	; 0xff6 <pow>
     b4c:	9b 01       	movw	r18, r22
     b4e:	ac 01       	movw	r20, r24
     b50:	60 e0       	ldi	r22, 0x00	; 0
     b52:	70 e0       	ldi	r23, 0x00	; 0
     b54:	80 e8       	ldi	r24, 0x80	; 128
     b56:	92 e4       	ldi	r25, 0x42	; 66
     b58:	0e 94 6a 06 	call	0xcd4	; 0xcd4 <__divsf3>
     b5c:	4b 01       	movw	r8, r22
     b5e:	5c 01       	movw	r10, r24
     b60:	72 01       	movw	r14, r4
     b62:	39 82       	std	Y+1, r3	; 0x01
     b64:	2a 82       	std	Y+2, r2	; 0x02
     b66:	00 e0       	ldi	r16, 0x00	; 0
     b68:	10 e0       	ldi	r17, 0x00	; 0
     b6a:	b8 01       	movw	r22, r16
     b6c:	01 2e       	mov	r0, r17
     b6e:	00 0c       	add	r0, r0
     b70:	88 0b       	sbc	r24, r24
     b72:	99 0b       	sbc	r25, r25
     b74:	0e 94 de 06 	call	0xdbc	; 0xdbc <__floatsisf>
     b78:	a5 01       	movw	r20, r10
     b7a:	94 01       	movw	r18, r8
     b7c:	0e 94 65 06 	call	0xcca	; 0xcca <__cmpsf2>
     b80:	87 ff       	sbrs	r24, 7
     b82:	11 c0       	rjmp	.+34     	; 0xba6 <DWT1D+0x128>
     b84:	e9 81       	ldd	r30, Y+1	; 0x01
     b86:	fa 81       	ldd	r31, Y+2	; 0x02
     b88:	81 91       	ld	r24, Z+
     b8a:	91 91       	ld	r25, Z+
     b8c:	a1 91       	ld	r26, Z+
     b8e:	b1 91       	ld	r27, Z+
     b90:	fa 83       	std	Y+2, r31	; 0x02
     b92:	e9 83       	std	Y+1, r30	; 0x01
     b94:	f7 01       	movw	r30, r14
     b96:	81 93       	st	Z+, r24
     b98:	91 93       	st	Z+, r25
     b9a:	a1 93       	st	Z+, r26
     b9c:	b1 93       	st	Z+, r27
     b9e:	7f 01       	movw	r14, r30
     ba0:	0f 5f       	subi	r16, 0xFF	; 255
     ba2:	1f 4f       	sbci	r17, 0xFF	; 255
     ba4:	e2 cf       	rjmp	.-60     	; 0xb6a <DWT1D+0xec>
     ba6:	77 fe       	sbrs	r7, 7
     ba8:	03 c0       	rjmp	.+6      	; 0xbb0 <DWT1D+0x132>
     baa:	ff ef       	ldi	r31, 0xFF	; 255
     bac:	6f 1a       	sub	r6, r31
     bae:	7f 0a       	sbc	r7, r31
     bb0:	75 94       	asr	r7
     bb2:	67 94       	ror	r6
     bb4:	8f ef       	ldi	r24, 0xFF	; 255
     bb6:	c8 1a       	sub	r12, r24
     bb8:	d8 0a       	sbc	r13, r24
     bba:	53 94       	inc	r5
     bbc:	9e cf       	rjmp	.-196    	; 0xafa <DWT1D+0x7c>
     bbe:	2c 96       	adiw	r28, 0x0c	; 12
     bc0:	0f b6       	in	r0, 0x3f	; 63
     bc2:	f8 94       	cli
     bc4:	de bf       	out	0x3e, r29	; 62
     bc6:	0f be       	out	0x3f, r0	; 63
     bc8:	cd bf       	out	0x3d, r28	; 61
     bca:	df 91       	pop	r29
     bcc:	cf 91       	pop	r28
     bce:	1f 91       	pop	r17
     bd0:	0f 91       	pop	r16
     bd2:	ff 90       	pop	r15
     bd4:	ef 90       	pop	r14
     bd6:	df 90       	pop	r13
     bd8:	cf 90       	pop	r12
     bda:	bf 90       	pop	r11
     bdc:	af 90       	pop	r10
     bde:	9f 90       	pop	r9
     be0:	8f 90       	pop	r8
     be2:	7f 90       	pop	r7
     be4:	6f 90       	pop	r6
     be6:	5f 90       	pop	r5
     be8:	4f 90       	pop	r4
     bea:	3f 90       	pop	r3
     bec:	2f 90       	pop	r2
     bee:	08 95       	ret

00000bf0 <__subsf3>:
     bf0:	50 58       	subi	r21, 0x80	; 128

00000bf2 <__addsf3>:
     bf2:	bb 27       	eor	r27, r27
     bf4:	aa 27       	eor	r26, r26
     bf6:	0e 94 10 06 	call	0xc20	; 0xc20 <__addsf3x>
     bfa:	0c 94 54 07 	jmp	0xea8	; 0xea8 <__fp_round>
     bfe:	0e 94 46 07 	call	0xe8c	; 0xe8c <__fp_pscA>
     c02:	38 f0       	brcs	.+14     	; 0xc12 <__addsf3+0x20>
     c04:	0e 94 4d 07 	call	0xe9a	; 0xe9a <__fp_pscB>
     c08:	20 f0       	brcs	.+8      	; 0xc12 <__addsf3+0x20>
     c0a:	39 f4       	brne	.+14     	; 0xc1a <__addsf3+0x28>
     c0c:	9f 3f       	cpi	r25, 0xFF	; 255
     c0e:	19 f4       	brne	.+6      	; 0xc16 <__addsf3+0x24>
     c10:	26 f4       	brtc	.+8      	; 0xc1a <__addsf3+0x28>
     c12:	0c 94 43 07 	jmp	0xe86	; 0xe86 <__fp_nan>
     c16:	0e f4       	brtc	.+2      	; 0xc1a <__addsf3+0x28>
     c18:	e0 95       	com	r30
     c1a:	e7 fb       	bst	r30, 7
     c1c:	0c 94 3d 07 	jmp	0xe7a	; 0xe7a <__fp_inf>

00000c20 <__addsf3x>:
     c20:	e9 2f       	mov	r30, r25
     c22:	0e 94 65 07 	call	0xeca	; 0xeca <__fp_split3>
     c26:	58 f3       	brcs	.-42     	; 0xbfe <__addsf3+0xc>
     c28:	ba 17       	cp	r27, r26
     c2a:	62 07       	cpc	r22, r18
     c2c:	73 07       	cpc	r23, r19
     c2e:	84 07       	cpc	r24, r20
     c30:	95 07       	cpc	r25, r21
     c32:	20 f0       	brcs	.+8      	; 0xc3c <__addsf3x+0x1c>
     c34:	79 f4       	brne	.+30     	; 0xc54 <__addsf3x+0x34>
     c36:	a6 f5       	brtc	.+104    	; 0xca0 <__addsf3x+0x80>
     c38:	0c 94 87 07 	jmp	0xf0e	; 0xf0e <__fp_zero>
     c3c:	0e f4       	brtc	.+2      	; 0xc40 <__addsf3x+0x20>
     c3e:	e0 95       	com	r30
     c40:	0b 2e       	mov	r0, r27
     c42:	ba 2f       	mov	r27, r26
     c44:	a0 2d       	mov	r26, r0
     c46:	0b 01       	movw	r0, r22
     c48:	b9 01       	movw	r22, r18
     c4a:	90 01       	movw	r18, r0
     c4c:	0c 01       	movw	r0, r24
     c4e:	ca 01       	movw	r24, r20
     c50:	a0 01       	movw	r20, r0
     c52:	11 24       	eor	r1, r1
     c54:	ff 27       	eor	r31, r31
     c56:	59 1b       	sub	r21, r25
     c58:	99 f0       	breq	.+38     	; 0xc80 <__addsf3x+0x60>
     c5a:	59 3f       	cpi	r21, 0xF9	; 249
     c5c:	50 f4       	brcc	.+20     	; 0xc72 <__addsf3x+0x52>
     c5e:	50 3e       	cpi	r21, 0xE0	; 224
     c60:	68 f1       	brcs	.+90     	; 0xcbc <__addsf3x+0x9c>
     c62:	1a 16       	cp	r1, r26
     c64:	f0 40       	sbci	r31, 0x00	; 0
     c66:	a2 2f       	mov	r26, r18
     c68:	23 2f       	mov	r18, r19
     c6a:	34 2f       	mov	r19, r20
     c6c:	44 27       	eor	r20, r20
     c6e:	58 5f       	subi	r21, 0xF8	; 248
     c70:	f3 cf       	rjmp	.-26     	; 0xc58 <__addsf3x+0x38>
     c72:	46 95       	lsr	r20
     c74:	37 95       	ror	r19
     c76:	27 95       	ror	r18
     c78:	a7 95       	ror	r26
     c7a:	f0 40       	sbci	r31, 0x00	; 0
     c7c:	53 95       	inc	r21
     c7e:	c9 f7       	brne	.-14     	; 0xc72 <__addsf3x+0x52>
     c80:	7e f4       	brtc	.+30     	; 0xca0 <__addsf3x+0x80>
     c82:	1f 16       	cp	r1, r31
     c84:	ba 0b       	sbc	r27, r26
     c86:	62 0b       	sbc	r22, r18
     c88:	73 0b       	sbc	r23, r19
     c8a:	84 0b       	sbc	r24, r20
     c8c:	ba f0       	brmi	.+46     	; 0xcbc <__addsf3x+0x9c>
     c8e:	91 50       	subi	r25, 0x01	; 1
     c90:	a1 f0       	breq	.+40     	; 0xcba <__addsf3x+0x9a>
     c92:	ff 0f       	add	r31, r31
     c94:	bb 1f       	adc	r27, r27
     c96:	66 1f       	adc	r22, r22
     c98:	77 1f       	adc	r23, r23
     c9a:	88 1f       	adc	r24, r24
     c9c:	c2 f7       	brpl	.-16     	; 0xc8e <__addsf3x+0x6e>
     c9e:	0e c0       	rjmp	.+28     	; 0xcbc <__addsf3x+0x9c>
     ca0:	ba 0f       	add	r27, r26
     ca2:	62 1f       	adc	r22, r18
     ca4:	73 1f       	adc	r23, r19
     ca6:	84 1f       	adc	r24, r20
     ca8:	48 f4       	brcc	.+18     	; 0xcbc <__addsf3x+0x9c>
     caa:	87 95       	ror	r24
     cac:	77 95       	ror	r23
     cae:	67 95       	ror	r22
     cb0:	b7 95       	ror	r27
     cb2:	f7 95       	ror	r31
     cb4:	9e 3f       	cpi	r25, 0xFE	; 254
     cb6:	08 f0       	brcs	.+2      	; 0xcba <__addsf3x+0x9a>
     cb8:	b0 cf       	rjmp	.-160    	; 0xc1a <__addsf3+0x28>
     cba:	93 95       	inc	r25
     cbc:	88 0f       	add	r24, r24
     cbe:	08 f0       	brcs	.+2      	; 0xcc2 <__addsf3x+0xa2>
     cc0:	99 27       	eor	r25, r25
     cc2:	ee 0f       	add	r30, r30
     cc4:	97 95       	ror	r25
     cc6:	87 95       	ror	r24
     cc8:	08 95       	ret

00000cca <__cmpsf2>:
     cca:	0e 94 19 07 	call	0xe32	; 0xe32 <__fp_cmp>
     cce:	08 f4       	brcc	.+2      	; 0xcd2 <__cmpsf2+0x8>
     cd0:	81 e0       	ldi	r24, 0x01	; 1
     cd2:	08 95       	ret

00000cd4 <__divsf3>:
     cd4:	0e 94 7e 06 	call	0xcfc	; 0xcfc <__divsf3x>
     cd8:	0c 94 54 07 	jmp	0xea8	; 0xea8 <__fp_round>
     cdc:	0e 94 4d 07 	call	0xe9a	; 0xe9a <__fp_pscB>
     ce0:	58 f0       	brcs	.+22     	; 0xcf8 <__divsf3+0x24>
     ce2:	0e 94 46 07 	call	0xe8c	; 0xe8c <__fp_pscA>
     ce6:	40 f0       	brcs	.+16     	; 0xcf8 <__divsf3+0x24>
     ce8:	29 f4       	brne	.+10     	; 0xcf4 <__divsf3+0x20>
     cea:	5f 3f       	cpi	r21, 0xFF	; 255
     cec:	29 f0       	breq	.+10     	; 0xcf8 <__divsf3+0x24>
     cee:	0c 94 3d 07 	jmp	0xe7a	; 0xe7a <__fp_inf>
     cf2:	51 11       	cpse	r21, r1
     cf4:	0c 94 88 07 	jmp	0xf10	; 0xf10 <__fp_szero>
     cf8:	0c 94 43 07 	jmp	0xe86	; 0xe86 <__fp_nan>

00000cfc <__divsf3x>:
     cfc:	0e 94 65 07 	call	0xeca	; 0xeca <__fp_split3>
     d00:	68 f3       	brcs	.-38     	; 0xcdc <__divsf3+0x8>

00000d02 <__divsf3_pse>:
     d02:	99 23       	and	r25, r25
     d04:	b1 f3       	breq	.-20     	; 0xcf2 <__divsf3+0x1e>
     d06:	55 23       	and	r21, r21
     d08:	91 f3       	breq	.-28     	; 0xcee <__divsf3+0x1a>
     d0a:	95 1b       	sub	r25, r21
     d0c:	55 0b       	sbc	r21, r21
     d0e:	bb 27       	eor	r27, r27
     d10:	aa 27       	eor	r26, r26
     d12:	62 17       	cp	r22, r18
     d14:	73 07       	cpc	r23, r19
     d16:	84 07       	cpc	r24, r20
     d18:	38 f0       	brcs	.+14     	; 0xd28 <__divsf3_pse+0x26>
     d1a:	9f 5f       	subi	r25, 0xFF	; 255
     d1c:	5f 4f       	sbci	r21, 0xFF	; 255
     d1e:	22 0f       	add	r18, r18
     d20:	33 1f       	adc	r19, r19
     d22:	44 1f       	adc	r20, r20
     d24:	aa 1f       	adc	r26, r26
     d26:	a9 f3       	breq	.-22     	; 0xd12 <__divsf3_pse+0x10>
     d28:	35 d0       	rcall	.+106    	; 0xd94 <__divsf3_pse+0x92>
     d2a:	0e 2e       	mov	r0, r30
     d2c:	3a f0       	brmi	.+14     	; 0xd3c <__divsf3_pse+0x3a>
     d2e:	e0 e8       	ldi	r30, 0x80	; 128
     d30:	32 d0       	rcall	.+100    	; 0xd96 <__divsf3_pse+0x94>
     d32:	91 50       	subi	r25, 0x01	; 1
     d34:	50 40       	sbci	r21, 0x00	; 0
     d36:	e6 95       	lsr	r30
     d38:	00 1c       	adc	r0, r0
     d3a:	ca f7       	brpl	.-14     	; 0xd2e <__divsf3_pse+0x2c>
     d3c:	2b d0       	rcall	.+86     	; 0xd94 <__divsf3_pse+0x92>
     d3e:	fe 2f       	mov	r31, r30
     d40:	29 d0       	rcall	.+82     	; 0xd94 <__divsf3_pse+0x92>
     d42:	66 0f       	add	r22, r22
     d44:	77 1f       	adc	r23, r23
     d46:	88 1f       	adc	r24, r24
     d48:	bb 1f       	adc	r27, r27
     d4a:	26 17       	cp	r18, r22
     d4c:	37 07       	cpc	r19, r23
     d4e:	48 07       	cpc	r20, r24
     d50:	ab 07       	cpc	r26, r27
     d52:	b0 e8       	ldi	r27, 0x80	; 128
     d54:	09 f0       	breq	.+2      	; 0xd58 <__divsf3_pse+0x56>
     d56:	bb 0b       	sbc	r27, r27
     d58:	80 2d       	mov	r24, r0
     d5a:	bf 01       	movw	r22, r30
     d5c:	ff 27       	eor	r31, r31
     d5e:	93 58       	subi	r25, 0x83	; 131
     d60:	5f 4f       	sbci	r21, 0xFF	; 255
     d62:	3a f0       	brmi	.+14     	; 0xd72 <__divsf3_pse+0x70>
     d64:	9e 3f       	cpi	r25, 0xFE	; 254
     d66:	51 05       	cpc	r21, r1
     d68:	78 f0       	brcs	.+30     	; 0xd88 <__divsf3_pse+0x86>
     d6a:	0c 94 3d 07 	jmp	0xe7a	; 0xe7a <__fp_inf>
     d6e:	0c 94 88 07 	jmp	0xf10	; 0xf10 <__fp_szero>
     d72:	5f 3f       	cpi	r21, 0xFF	; 255
     d74:	e4 f3       	brlt	.-8      	; 0xd6e <__divsf3_pse+0x6c>
     d76:	98 3e       	cpi	r25, 0xE8	; 232
     d78:	d4 f3       	brlt	.-12     	; 0xd6e <__divsf3_pse+0x6c>
     d7a:	86 95       	lsr	r24
     d7c:	77 95       	ror	r23
     d7e:	67 95       	ror	r22
     d80:	b7 95       	ror	r27
     d82:	f7 95       	ror	r31
     d84:	9f 5f       	subi	r25, 0xFF	; 255
     d86:	c9 f7       	brne	.-14     	; 0xd7a <__divsf3_pse+0x78>
     d88:	88 0f       	add	r24, r24
     d8a:	91 1d       	adc	r25, r1
     d8c:	96 95       	lsr	r25
     d8e:	87 95       	ror	r24
     d90:	97 f9       	bld	r25, 7
     d92:	08 95       	ret
     d94:	e1 e0       	ldi	r30, 0x01	; 1
     d96:	66 0f       	add	r22, r22
     d98:	77 1f       	adc	r23, r23
     d9a:	88 1f       	adc	r24, r24
     d9c:	bb 1f       	adc	r27, r27
     d9e:	62 17       	cp	r22, r18
     da0:	73 07       	cpc	r23, r19
     da2:	84 07       	cpc	r24, r20
     da4:	ba 07       	cpc	r27, r26
     da6:	20 f0       	brcs	.+8      	; 0xdb0 <__divsf3_pse+0xae>
     da8:	62 1b       	sub	r22, r18
     daa:	73 0b       	sbc	r23, r19
     dac:	84 0b       	sbc	r24, r20
     dae:	ba 0b       	sbc	r27, r26
     db0:	ee 1f       	adc	r30, r30
     db2:	88 f7       	brcc	.-30     	; 0xd96 <__divsf3_pse+0x94>
     db4:	e0 95       	com	r30
     db6:	08 95       	ret

00000db8 <__floatunsisf>:
     db8:	e8 94       	clt
     dba:	09 c0       	rjmp	.+18     	; 0xdce <__floatsisf+0x12>

00000dbc <__floatsisf>:
     dbc:	97 fb       	bst	r25, 7
     dbe:	3e f4       	brtc	.+14     	; 0xdce <__floatsisf+0x12>
     dc0:	90 95       	com	r25
     dc2:	80 95       	com	r24
     dc4:	70 95       	com	r23
     dc6:	61 95       	neg	r22
     dc8:	7f 4f       	sbci	r23, 0xFF	; 255
     dca:	8f 4f       	sbci	r24, 0xFF	; 255
     dcc:	9f 4f       	sbci	r25, 0xFF	; 255
     dce:	99 23       	and	r25, r25
     dd0:	a9 f0       	breq	.+42     	; 0xdfc <__floatsisf+0x40>
     dd2:	f9 2f       	mov	r31, r25
     dd4:	96 e9       	ldi	r25, 0x96	; 150
     dd6:	bb 27       	eor	r27, r27
     dd8:	93 95       	inc	r25
     dda:	f6 95       	lsr	r31
     ddc:	87 95       	ror	r24
     dde:	77 95       	ror	r23
     de0:	67 95       	ror	r22
     de2:	b7 95       	ror	r27
     de4:	f1 11       	cpse	r31, r1
     de6:	f8 cf       	rjmp	.-16     	; 0xdd8 <__floatsisf+0x1c>
     de8:	fa f4       	brpl	.+62     	; 0xe28 <__floatsisf+0x6c>
     dea:	bb 0f       	add	r27, r27
     dec:	11 f4       	brne	.+4      	; 0xdf2 <__floatsisf+0x36>
     dee:	60 ff       	sbrs	r22, 0
     df0:	1b c0       	rjmp	.+54     	; 0xe28 <__floatsisf+0x6c>
     df2:	6f 5f       	subi	r22, 0xFF	; 255
     df4:	7f 4f       	sbci	r23, 0xFF	; 255
     df6:	8f 4f       	sbci	r24, 0xFF	; 255
     df8:	9f 4f       	sbci	r25, 0xFF	; 255
     dfa:	16 c0       	rjmp	.+44     	; 0xe28 <__floatsisf+0x6c>
     dfc:	88 23       	and	r24, r24
     dfe:	11 f0       	breq	.+4      	; 0xe04 <__floatsisf+0x48>
     e00:	96 e9       	ldi	r25, 0x96	; 150
     e02:	11 c0       	rjmp	.+34     	; 0xe26 <__floatsisf+0x6a>
     e04:	77 23       	and	r23, r23
     e06:	21 f0       	breq	.+8      	; 0xe10 <__floatsisf+0x54>
     e08:	9e e8       	ldi	r25, 0x8E	; 142
     e0a:	87 2f       	mov	r24, r23
     e0c:	76 2f       	mov	r23, r22
     e0e:	05 c0       	rjmp	.+10     	; 0xe1a <__floatsisf+0x5e>
     e10:	66 23       	and	r22, r22
     e12:	71 f0       	breq	.+28     	; 0xe30 <__floatsisf+0x74>
     e14:	96 e8       	ldi	r25, 0x86	; 134
     e16:	86 2f       	mov	r24, r22
     e18:	70 e0       	ldi	r23, 0x00	; 0
     e1a:	60 e0       	ldi	r22, 0x00	; 0
     e1c:	2a f0       	brmi	.+10     	; 0xe28 <__floatsisf+0x6c>
     e1e:	9a 95       	dec	r25
     e20:	66 0f       	add	r22, r22
     e22:	77 1f       	adc	r23, r23
     e24:	88 1f       	adc	r24, r24
     e26:	da f7       	brpl	.-10     	; 0xe1e <__floatsisf+0x62>
     e28:	88 0f       	add	r24, r24
     e2a:	96 95       	lsr	r25
     e2c:	87 95       	ror	r24
     e2e:	97 f9       	bld	r25, 7
     e30:	08 95       	ret

00000e32 <__fp_cmp>:
     e32:	99 0f       	add	r25, r25
     e34:	00 08       	sbc	r0, r0
     e36:	55 0f       	add	r21, r21
     e38:	aa 0b       	sbc	r26, r26
     e3a:	e0 e8       	ldi	r30, 0x80	; 128
     e3c:	fe ef       	ldi	r31, 0xFE	; 254
     e3e:	16 16       	cp	r1, r22
     e40:	17 06       	cpc	r1, r23
     e42:	e8 07       	cpc	r30, r24
     e44:	f9 07       	cpc	r31, r25
     e46:	c0 f0       	brcs	.+48     	; 0xe78 <__fp_cmp+0x46>
     e48:	12 16       	cp	r1, r18
     e4a:	13 06       	cpc	r1, r19
     e4c:	e4 07       	cpc	r30, r20
     e4e:	f5 07       	cpc	r31, r21
     e50:	98 f0       	brcs	.+38     	; 0xe78 <__fp_cmp+0x46>
     e52:	62 1b       	sub	r22, r18
     e54:	73 0b       	sbc	r23, r19
     e56:	84 0b       	sbc	r24, r20
     e58:	95 0b       	sbc	r25, r21
     e5a:	39 f4       	brne	.+14     	; 0xe6a <__fp_cmp+0x38>
     e5c:	0a 26       	eor	r0, r26
     e5e:	61 f0       	breq	.+24     	; 0xe78 <__fp_cmp+0x46>
     e60:	23 2b       	or	r18, r19
     e62:	24 2b       	or	r18, r20
     e64:	25 2b       	or	r18, r21
     e66:	21 f4       	brne	.+8      	; 0xe70 <__fp_cmp+0x3e>
     e68:	08 95       	ret
     e6a:	0a 26       	eor	r0, r26
     e6c:	09 f4       	brne	.+2      	; 0xe70 <__fp_cmp+0x3e>
     e6e:	a1 40       	sbci	r26, 0x01	; 1
     e70:	a6 95       	lsr	r26
     e72:	8f ef       	ldi	r24, 0xFF	; 255
     e74:	81 1d       	adc	r24, r1
     e76:	81 1d       	adc	r24, r1
     e78:	08 95       	ret

00000e7a <__fp_inf>:
     e7a:	97 f9       	bld	r25, 7
     e7c:	9f 67       	ori	r25, 0x7F	; 127
     e7e:	80 e8       	ldi	r24, 0x80	; 128
     e80:	70 e0       	ldi	r23, 0x00	; 0
     e82:	60 e0       	ldi	r22, 0x00	; 0
     e84:	08 95       	ret

00000e86 <__fp_nan>:
     e86:	9f ef       	ldi	r25, 0xFF	; 255
     e88:	80 ec       	ldi	r24, 0xC0	; 192
     e8a:	08 95       	ret

00000e8c <__fp_pscA>:
     e8c:	00 24       	eor	r0, r0
     e8e:	0a 94       	dec	r0
     e90:	16 16       	cp	r1, r22
     e92:	17 06       	cpc	r1, r23
     e94:	18 06       	cpc	r1, r24
     e96:	09 06       	cpc	r0, r25
     e98:	08 95       	ret

00000e9a <__fp_pscB>:
     e9a:	00 24       	eor	r0, r0
     e9c:	0a 94       	dec	r0
     e9e:	12 16       	cp	r1, r18
     ea0:	13 06       	cpc	r1, r19
     ea2:	14 06       	cpc	r1, r20
     ea4:	05 06       	cpc	r0, r21
     ea6:	08 95       	ret

00000ea8 <__fp_round>:
     ea8:	09 2e       	mov	r0, r25
     eaa:	03 94       	inc	r0
     eac:	00 0c       	add	r0, r0
     eae:	11 f4       	brne	.+4      	; 0xeb4 <__fp_round+0xc>
     eb0:	88 23       	and	r24, r24
     eb2:	52 f0       	brmi	.+20     	; 0xec8 <__fp_round+0x20>
     eb4:	bb 0f       	add	r27, r27
     eb6:	40 f4       	brcc	.+16     	; 0xec8 <__fp_round+0x20>
     eb8:	bf 2b       	or	r27, r31
     eba:	11 f4       	brne	.+4      	; 0xec0 <__fp_round+0x18>
     ebc:	60 ff       	sbrs	r22, 0
     ebe:	04 c0       	rjmp	.+8      	; 0xec8 <__fp_round+0x20>
     ec0:	6f 5f       	subi	r22, 0xFF	; 255
     ec2:	7f 4f       	sbci	r23, 0xFF	; 255
     ec4:	8f 4f       	sbci	r24, 0xFF	; 255
     ec6:	9f 4f       	sbci	r25, 0xFF	; 255
     ec8:	08 95       	ret

00000eca <__fp_split3>:
     eca:	57 fd       	sbrc	r21, 7
     ecc:	90 58       	subi	r25, 0x80	; 128
     ece:	44 0f       	add	r20, r20
     ed0:	55 1f       	adc	r21, r21
     ed2:	59 f0       	breq	.+22     	; 0xeea <__fp_splitA+0x10>
     ed4:	5f 3f       	cpi	r21, 0xFF	; 255
     ed6:	71 f0       	breq	.+28     	; 0xef4 <__fp_splitA+0x1a>
     ed8:	47 95       	ror	r20

00000eda <__fp_splitA>:
     eda:	88 0f       	add	r24, r24
     edc:	97 fb       	bst	r25, 7
     ede:	99 1f       	adc	r25, r25
     ee0:	61 f0       	breq	.+24     	; 0xefa <__fp_splitA+0x20>
     ee2:	9f 3f       	cpi	r25, 0xFF	; 255
     ee4:	79 f0       	breq	.+30     	; 0xf04 <__fp_splitA+0x2a>
     ee6:	87 95       	ror	r24
     ee8:	08 95       	ret
     eea:	12 16       	cp	r1, r18
     eec:	13 06       	cpc	r1, r19
     eee:	14 06       	cpc	r1, r20
     ef0:	55 1f       	adc	r21, r21
     ef2:	f2 cf       	rjmp	.-28     	; 0xed8 <__fp_split3+0xe>
     ef4:	46 95       	lsr	r20
     ef6:	f1 df       	rcall	.-30     	; 0xeda <__fp_splitA>
     ef8:	08 c0       	rjmp	.+16     	; 0xf0a <__fp_splitA+0x30>
     efa:	16 16       	cp	r1, r22
     efc:	17 06       	cpc	r1, r23
     efe:	18 06       	cpc	r1, r24
     f00:	99 1f       	adc	r25, r25
     f02:	f1 cf       	rjmp	.-30     	; 0xee6 <__fp_splitA+0xc>
     f04:	86 95       	lsr	r24
     f06:	71 05       	cpc	r23, r1
     f08:	61 05       	cpc	r22, r1
     f0a:	08 94       	sec
     f0c:	08 95       	ret

00000f0e <__fp_zero>:
     f0e:	e8 94       	clt

00000f10 <__fp_szero>:
     f10:	bb 27       	eor	r27, r27
     f12:	66 27       	eor	r22, r22
     f14:	77 27       	eor	r23, r23
     f16:	cb 01       	movw	r24, r22
     f18:	97 f9       	bld	r25, 7
     f1a:	08 95       	ret

00000f1c <__mulsf3>:
     f1c:	0e 94 a1 07 	call	0xf42	; 0xf42 <__mulsf3x>
     f20:	0c 94 54 07 	jmp	0xea8	; 0xea8 <__fp_round>
     f24:	0e 94 46 07 	call	0xe8c	; 0xe8c <__fp_pscA>
     f28:	38 f0       	brcs	.+14     	; 0xf38 <__mulsf3+0x1c>
     f2a:	0e 94 4d 07 	call	0xe9a	; 0xe9a <__fp_pscB>
     f2e:	20 f0       	brcs	.+8      	; 0xf38 <__mulsf3+0x1c>
     f30:	95 23       	and	r25, r21
     f32:	11 f0       	breq	.+4      	; 0xf38 <__mulsf3+0x1c>
     f34:	0c 94 3d 07 	jmp	0xe7a	; 0xe7a <__fp_inf>
     f38:	0c 94 43 07 	jmp	0xe86	; 0xe86 <__fp_nan>
     f3c:	11 24       	eor	r1, r1
     f3e:	0c 94 88 07 	jmp	0xf10	; 0xf10 <__fp_szero>

00000f42 <__mulsf3x>:
     f42:	0e 94 65 07 	call	0xeca	; 0xeca <__fp_split3>
     f46:	70 f3       	brcs	.-36     	; 0xf24 <__mulsf3+0x8>

00000f48 <__mulsf3_pse>:
     f48:	95 9f       	mul	r25, r21
     f4a:	c1 f3       	breq	.-16     	; 0xf3c <__mulsf3+0x20>
     f4c:	95 0f       	add	r25, r21
     f4e:	50 e0       	ldi	r21, 0x00	; 0
     f50:	55 1f       	adc	r21, r21
     f52:	62 9f       	mul	r22, r18
     f54:	f0 01       	movw	r30, r0
     f56:	72 9f       	mul	r23, r18
     f58:	bb 27       	eor	r27, r27
     f5a:	f0 0d       	add	r31, r0
     f5c:	b1 1d       	adc	r27, r1
     f5e:	63 9f       	mul	r22, r19
     f60:	aa 27       	eor	r26, r26
     f62:	f0 0d       	add	r31, r0
     f64:	b1 1d       	adc	r27, r1
     f66:	aa 1f       	adc	r26, r26
     f68:	64 9f       	mul	r22, r20
     f6a:	66 27       	eor	r22, r22
     f6c:	b0 0d       	add	r27, r0
     f6e:	a1 1d       	adc	r26, r1
     f70:	66 1f       	adc	r22, r22
     f72:	82 9f       	mul	r24, r18
     f74:	22 27       	eor	r18, r18
     f76:	b0 0d       	add	r27, r0
     f78:	a1 1d       	adc	r26, r1
     f7a:	62 1f       	adc	r22, r18
     f7c:	73 9f       	mul	r23, r19
     f7e:	b0 0d       	add	r27, r0
     f80:	a1 1d       	adc	r26, r1
     f82:	62 1f       	adc	r22, r18
     f84:	83 9f       	mul	r24, r19
     f86:	a0 0d       	add	r26, r0
     f88:	61 1d       	adc	r22, r1
     f8a:	22 1f       	adc	r18, r18
     f8c:	74 9f       	mul	r23, r20
     f8e:	33 27       	eor	r19, r19
     f90:	a0 0d       	add	r26, r0
     f92:	61 1d       	adc	r22, r1
     f94:	23 1f       	adc	r18, r19
     f96:	84 9f       	mul	r24, r20
     f98:	60 0d       	add	r22, r0
     f9a:	21 1d       	adc	r18, r1
     f9c:	82 2f       	mov	r24, r18
     f9e:	76 2f       	mov	r23, r22
     fa0:	6a 2f       	mov	r22, r26
     fa2:	11 24       	eor	r1, r1
     fa4:	9f 57       	subi	r25, 0x7F	; 127
     fa6:	50 40       	sbci	r21, 0x00	; 0
     fa8:	9a f0       	brmi	.+38     	; 0xfd0 <__mulsf3_pse+0x88>
     faa:	f1 f0       	breq	.+60     	; 0xfe8 <__mulsf3_pse+0xa0>
     fac:	88 23       	and	r24, r24
     fae:	4a f0       	brmi	.+18     	; 0xfc2 <__mulsf3_pse+0x7a>
     fb0:	ee 0f       	add	r30, r30
     fb2:	ff 1f       	adc	r31, r31
     fb4:	bb 1f       	adc	r27, r27
     fb6:	66 1f       	adc	r22, r22
     fb8:	77 1f       	adc	r23, r23
     fba:	88 1f       	adc	r24, r24
     fbc:	91 50       	subi	r25, 0x01	; 1
     fbe:	50 40       	sbci	r21, 0x00	; 0
     fc0:	a9 f7       	brne	.-22     	; 0xfac <__mulsf3_pse+0x64>
     fc2:	9e 3f       	cpi	r25, 0xFE	; 254
     fc4:	51 05       	cpc	r21, r1
     fc6:	80 f0       	brcs	.+32     	; 0xfe8 <__mulsf3_pse+0xa0>
     fc8:	0c 94 3d 07 	jmp	0xe7a	; 0xe7a <__fp_inf>
     fcc:	0c 94 88 07 	jmp	0xf10	; 0xf10 <__fp_szero>
     fd0:	5f 3f       	cpi	r21, 0xFF	; 255
     fd2:	e4 f3       	brlt	.-8      	; 0xfcc <__mulsf3_pse+0x84>
     fd4:	98 3e       	cpi	r25, 0xE8	; 232
     fd6:	d4 f3       	brlt	.-12     	; 0xfcc <__mulsf3_pse+0x84>
     fd8:	86 95       	lsr	r24
     fda:	77 95       	ror	r23
     fdc:	67 95       	ror	r22
     fde:	b7 95       	ror	r27
     fe0:	f7 95       	ror	r31
     fe2:	e7 95       	ror	r30
     fe4:	9f 5f       	subi	r25, 0xFF	; 255
     fe6:	c1 f7       	brne	.-16     	; 0xfd8 <__mulsf3_pse+0x90>
     fe8:	fe 2b       	or	r31, r30
     fea:	88 0f       	add	r24, r24
     fec:	91 1d       	adc	r25, r1
     fee:	96 95       	lsr	r25
     ff0:	87 95       	ror	r24
     ff2:	97 f9       	bld	r25, 7
     ff4:	08 95       	ret

00000ff6 <pow>:
     ff6:	fa 01       	movw	r30, r20
     ff8:	ee 0f       	add	r30, r30
     ffa:	ff 1f       	adc	r31, r31
     ffc:	30 96       	adiw	r30, 0x00	; 0
     ffe:	21 05       	cpc	r18, r1
    1000:	31 05       	cpc	r19, r1
    1002:	a1 f1       	breq	.+104    	; 0x106c <pow+0x76>
    1004:	61 15       	cp	r22, r1
    1006:	71 05       	cpc	r23, r1
    1008:	61 f4       	brne	.+24     	; 0x1022 <pow+0x2c>
    100a:	80 38       	cpi	r24, 0x80	; 128
    100c:	bf e3       	ldi	r27, 0x3F	; 63
    100e:	9b 07       	cpc	r25, r27
    1010:	49 f1       	breq	.+82     	; 0x1064 <pow+0x6e>
    1012:	68 94       	set
    1014:	90 38       	cpi	r25, 0x80	; 128
    1016:	81 05       	cpc	r24, r1
    1018:	61 f0       	breq	.+24     	; 0x1032 <pow+0x3c>
    101a:	80 38       	cpi	r24, 0x80	; 128
    101c:	bf ef       	ldi	r27, 0xFF	; 255
    101e:	9b 07       	cpc	r25, r27
    1020:	41 f0       	breq	.+16     	; 0x1032 <pow+0x3c>
    1022:	99 23       	and	r25, r25
    1024:	4a f5       	brpl	.+82     	; 0x1078 <pow+0x82>
    1026:	ff 3f       	cpi	r31, 0xFF	; 255
    1028:	e1 05       	cpc	r30, r1
    102a:	31 05       	cpc	r19, r1
    102c:	21 05       	cpc	r18, r1
    102e:	19 f1       	breq	.+70     	; 0x1076 <pow+0x80>
    1030:	e8 94       	clt
    1032:	08 94       	sec
    1034:	e7 95       	ror	r30
    1036:	d9 01       	movw	r26, r18
    1038:	aa 23       	and	r26, r26
    103a:	29 f4       	brne	.+10     	; 0x1046 <pow+0x50>
    103c:	ab 2f       	mov	r26, r27
    103e:	be 2f       	mov	r27, r30
    1040:	f8 5f       	subi	r31, 0xF8	; 248
    1042:	d0 f3       	brcs	.-12     	; 0x1038 <pow+0x42>
    1044:	10 c0       	rjmp	.+32     	; 0x1066 <pow+0x70>
    1046:	ff 5f       	subi	r31, 0xFF	; 255
    1048:	70 f4       	brcc	.+28     	; 0x1066 <pow+0x70>
    104a:	a6 95       	lsr	r26
    104c:	e0 f7       	brcc	.-8      	; 0x1046 <pow+0x50>
    104e:	f7 39       	cpi	r31, 0x97	; 151
    1050:	50 f0       	brcs	.+20     	; 0x1066 <pow+0x70>
    1052:	19 f0       	breq	.+6      	; 0x105a <pow+0x64>
    1054:	ff 3a       	cpi	r31, 0xAF	; 175
    1056:	38 f4       	brcc	.+14     	; 0x1066 <pow+0x70>
    1058:	9f 77       	andi	r25, 0x7F	; 127
    105a:	9f 93       	push	r25
    105c:	0d d0       	rcall	.+26     	; 0x1078 <pow+0x82>
    105e:	0f 90       	pop	r0
    1060:	07 fc       	sbrc	r0, 7
    1062:	90 58       	subi	r25, 0x80	; 128
    1064:	08 95       	ret
    1066:	46 f0       	brts	.+16     	; 0x1078 <pow+0x82>
    1068:	0c 94 43 07 	jmp	0xe86	; 0xe86 <__fp_nan>
    106c:	60 e0       	ldi	r22, 0x00	; 0
    106e:	70 e0       	ldi	r23, 0x00	; 0
    1070:	80 e8       	ldi	r24, 0x80	; 128
    1072:	9f e3       	ldi	r25, 0x3F	; 63
    1074:	08 95       	ret
    1076:	4f e7       	ldi	r20, 0x7F	; 127
    1078:	9f 77       	andi	r25, 0x7F	; 127
    107a:	5f 93       	push	r21
    107c:	4f 93       	push	r20
    107e:	3f 93       	push	r19
    1080:	2f 93       	push	r18
    1082:	0e 94 f6 08 	call	0x11ec	; 0x11ec <log>
    1086:	2f 91       	pop	r18
    1088:	3f 91       	pop	r19
    108a:	4f 91       	pop	r20
    108c:	5f 91       	pop	r21
    108e:	0e 94 8e 07 	call	0xf1c	; 0xf1c <__mulsf3>
    1092:	0c 94 53 08 	jmp	0x10a6	; 0x10a6 <exp>
    1096:	29 f4       	brne	.+10     	; 0x10a2 <pow+0xac>
    1098:	16 f0       	brts	.+4      	; 0x109e <pow+0xa8>
    109a:	0c 94 3d 07 	jmp	0xe7a	; 0xe7a <__fp_inf>
    109e:	0c 94 87 07 	jmp	0xf0e	; 0xf0e <__fp_zero>
    10a2:	0c 94 43 07 	jmp	0xe86	; 0xe86 <__fp_nan>

000010a6 <exp>:
    10a6:	0e 94 6d 07 	call	0xeda	; 0xeda <__fp_splitA>
    10aa:	a8 f3       	brcs	.-22     	; 0x1096 <pow+0xa0>
    10ac:	96 38       	cpi	r25, 0x86	; 134
    10ae:	a0 f7       	brcc	.-24     	; 0x1098 <pow+0xa2>
    10b0:	07 f8       	bld	r0, 7
    10b2:	0f 92       	push	r0
    10b4:	e8 94       	clt
    10b6:	2b e3       	ldi	r18, 0x3B	; 59
    10b8:	3a ea       	ldi	r19, 0xAA	; 170
    10ba:	48 eb       	ldi	r20, 0xB8	; 184
    10bc:	5f e7       	ldi	r21, 0x7F	; 127
    10be:	0e 94 a4 07 	call	0xf48	; 0xf48 <__mulsf3_pse>
    10c2:	0f 92       	push	r0
    10c4:	0f 92       	push	r0
    10c6:	0f 92       	push	r0
    10c8:	4d b7       	in	r20, 0x3d	; 61
    10ca:	5e b7       	in	r21, 0x3e	; 62
    10cc:	0f 92       	push	r0
    10ce:	0e 94 3e 09 	call	0x127c	; 0x127c <modf>
    10d2:	ec e8       	ldi	r30, 0x8C	; 140
    10d4:	f0 e0       	ldi	r31, 0x00	; 0
    10d6:	0e 94 85 08 	call	0x110a	; 0x110a <__fp_powser>
    10da:	4f 91       	pop	r20
    10dc:	5f 91       	pop	r21
    10de:	ef 91       	pop	r30
    10e0:	ff 91       	pop	r31
    10e2:	e5 95       	asr	r30
    10e4:	ee 1f       	adc	r30, r30
    10e6:	ff 1f       	adc	r31, r31
    10e8:	49 f0       	breq	.+18     	; 0x10fc <exp+0x56>
    10ea:	fe 57       	subi	r31, 0x7E	; 126
    10ec:	e0 68       	ori	r30, 0x80	; 128
    10ee:	44 27       	eor	r20, r20
    10f0:	ee 0f       	add	r30, r30
    10f2:	44 1f       	adc	r20, r20
    10f4:	fa 95       	dec	r31
    10f6:	e1 f7       	brne	.-8      	; 0x10f0 <exp+0x4a>
    10f8:	41 95       	neg	r20
    10fa:	55 0b       	sbc	r21, r21
    10fc:	0e 94 b8 08 	call	0x1170	; 0x1170 <ldexp>
    1100:	0f 90       	pop	r0
    1102:	07 fe       	sbrs	r0, 7
    1104:	0c 94 ac 08 	jmp	0x1158	; 0x1158 <inverse>
    1108:	08 95       	ret

0000110a <__fp_powser>:
    110a:	df 93       	push	r29
    110c:	cf 93       	push	r28
    110e:	1f 93       	push	r17
    1110:	0f 93       	push	r16
    1112:	ff 92       	push	r15
    1114:	ef 92       	push	r14
    1116:	df 92       	push	r13
    1118:	7b 01       	movw	r14, r22
    111a:	8c 01       	movw	r16, r24
    111c:	68 94       	set
    111e:	06 c0       	rjmp	.+12     	; 0x112c <__fp_powser+0x22>
    1120:	da 2e       	mov	r13, r26
    1122:	ef 01       	movw	r28, r30
    1124:	0e 94 a1 07 	call	0xf42	; 0xf42 <__mulsf3x>
    1128:	fe 01       	movw	r30, r28
    112a:	e8 94       	clt
    112c:	a5 91       	lpm	r26, Z+
    112e:	25 91       	lpm	r18, Z+
    1130:	35 91       	lpm	r19, Z+
    1132:	45 91       	lpm	r20, Z+
    1134:	55 91       	lpm	r21, Z+
    1136:	a6 f3       	brts	.-24     	; 0x1120 <__fp_powser+0x16>
    1138:	ef 01       	movw	r28, r30
    113a:	0e 94 10 06 	call	0xc20	; 0xc20 <__addsf3x>
    113e:	fe 01       	movw	r30, r28
    1140:	97 01       	movw	r18, r14
    1142:	a8 01       	movw	r20, r16
    1144:	da 94       	dec	r13
    1146:	69 f7       	brne	.-38     	; 0x1122 <__fp_powser+0x18>
    1148:	df 90       	pop	r13
    114a:	ef 90       	pop	r14
    114c:	ff 90       	pop	r15
    114e:	0f 91       	pop	r16
    1150:	1f 91       	pop	r17
    1152:	cf 91       	pop	r28
    1154:	df 91       	pop	r29
    1156:	08 95       	ret

00001158 <inverse>:
    1158:	9b 01       	movw	r18, r22
    115a:	ac 01       	movw	r20, r24
    115c:	60 e0       	ldi	r22, 0x00	; 0
    115e:	70 e0       	ldi	r23, 0x00	; 0
    1160:	80 e8       	ldi	r24, 0x80	; 128
    1162:	9f e3       	ldi	r25, 0x3F	; 63
    1164:	0c 94 6a 06 	jmp	0xcd4	; 0xcd4 <__divsf3>
    1168:	0c 94 3d 07 	jmp	0xe7a	; 0xe7a <__fp_inf>
    116c:	0c 94 72 09 	jmp	0x12e4	; 0x12e4 <__fp_mpack>

00001170 <ldexp>:
    1170:	0e 94 6d 07 	call	0xeda	; 0xeda <__fp_splitA>
    1174:	d8 f3       	brcs	.-10     	; 0x116c <inverse+0x14>
    1176:	99 23       	and	r25, r25
    1178:	c9 f3       	breq	.-14     	; 0x116c <inverse+0x14>
    117a:	94 0f       	add	r25, r20
    117c:	51 1d       	adc	r21, r1
    117e:	a3 f3       	brvs	.-24     	; 0x1168 <inverse+0x10>
    1180:	91 50       	subi	r25, 0x01	; 1
    1182:	50 40       	sbci	r21, 0x00	; 0
    1184:	94 f0       	brlt	.+36     	; 0x11aa <ldexp+0x3a>
    1186:	59 f0       	breq	.+22     	; 0x119e <ldexp+0x2e>
    1188:	88 23       	and	r24, r24
    118a:	32 f0       	brmi	.+12     	; 0x1198 <ldexp+0x28>
    118c:	66 0f       	add	r22, r22
    118e:	77 1f       	adc	r23, r23
    1190:	88 1f       	adc	r24, r24
    1192:	91 50       	subi	r25, 0x01	; 1
    1194:	50 40       	sbci	r21, 0x00	; 0
    1196:	c1 f7       	brne	.-16     	; 0x1188 <ldexp+0x18>
    1198:	9e 3f       	cpi	r25, 0xFE	; 254
    119a:	51 05       	cpc	r21, r1
    119c:	2c f7       	brge	.-54     	; 0x1168 <inverse+0x10>
    119e:	88 0f       	add	r24, r24
    11a0:	91 1d       	adc	r25, r1
    11a2:	96 95       	lsr	r25
    11a4:	87 95       	ror	r24
    11a6:	97 f9       	bld	r25, 7
    11a8:	08 95       	ret
    11aa:	5f 3f       	cpi	r21, 0xFF	; 255
    11ac:	ac f0       	brlt	.+42     	; 0x11d8 <ldexp+0x68>
    11ae:	98 3e       	cpi	r25, 0xE8	; 232
    11b0:	9c f0       	brlt	.+38     	; 0x11d8 <ldexp+0x68>
    11b2:	bb 27       	eor	r27, r27
    11b4:	86 95       	lsr	r24
    11b6:	77 95       	ror	r23
    11b8:	67 95       	ror	r22
    11ba:	b7 95       	ror	r27
    11bc:	08 f4       	brcc	.+2      	; 0x11c0 <ldexp+0x50>
    11be:	b1 60       	ori	r27, 0x01	; 1
    11c0:	93 95       	inc	r25
    11c2:	c1 f7       	brne	.-16     	; 0x11b4 <ldexp+0x44>
    11c4:	bb 0f       	add	r27, r27
    11c6:	58 f7       	brcc	.-42     	; 0x119e <ldexp+0x2e>
    11c8:	11 f4       	brne	.+4      	; 0x11ce <ldexp+0x5e>
    11ca:	60 ff       	sbrs	r22, 0
    11cc:	e8 cf       	rjmp	.-48     	; 0x119e <ldexp+0x2e>
    11ce:	6f 5f       	subi	r22, 0xFF	; 255
    11d0:	7f 4f       	sbci	r23, 0xFF	; 255
    11d2:	8f 4f       	sbci	r24, 0xFF	; 255
    11d4:	9f 4f       	sbci	r25, 0xFF	; 255
    11d6:	e3 cf       	rjmp	.-58     	; 0x119e <ldexp+0x2e>
    11d8:	0c 94 88 07 	jmp	0xf10	; 0xf10 <__fp_szero>
    11dc:	16 f0       	brts	.+4      	; 0x11e2 <ldexp+0x72>
    11de:	0c 94 72 09 	jmp	0x12e4	; 0x12e4 <__fp_mpack>
    11e2:	0c 94 43 07 	jmp	0xe86	; 0xe86 <__fp_nan>
    11e6:	68 94       	set
    11e8:	0c 94 3d 07 	jmp	0xe7a	; 0xe7a <__fp_inf>

000011ec <log>:
    11ec:	0e 94 6d 07 	call	0xeda	; 0xeda <__fp_splitA>
    11f0:	a8 f3       	brcs	.-22     	; 0x11dc <ldexp+0x6c>
    11f2:	99 23       	and	r25, r25
    11f4:	c1 f3       	breq	.-16     	; 0x11e6 <ldexp+0x76>
    11f6:	ae f3       	brts	.-22     	; 0x11e2 <ldexp+0x72>
    11f8:	df 93       	push	r29
    11fa:	cf 93       	push	r28
    11fc:	1f 93       	push	r17
    11fe:	0f 93       	push	r16
    1200:	ff 92       	push	r15
    1202:	c9 2f       	mov	r28, r25
    1204:	dd 27       	eor	r29, r29
    1206:	88 23       	and	r24, r24
    1208:	2a f0       	brmi	.+10     	; 0x1214 <log+0x28>
    120a:	21 97       	sbiw	r28, 0x01	; 1
    120c:	66 0f       	add	r22, r22
    120e:	77 1f       	adc	r23, r23
    1210:	88 1f       	adc	r24, r24
    1212:	da f7       	brpl	.-10     	; 0x120a <log+0x1e>
    1214:	20 e0       	ldi	r18, 0x00	; 0
    1216:	30 e0       	ldi	r19, 0x00	; 0
    1218:	40 e8       	ldi	r20, 0x80	; 128
    121a:	5f eb       	ldi	r21, 0xBF	; 191
    121c:	9f e3       	ldi	r25, 0x3F	; 63
    121e:	88 39       	cpi	r24, 0x98	; 152
    1220:	20 f0       	brcs	.+8      	; 0x122a <log+0x3e>
    1222:	80 3e       	cpi	r24, 0xE0	; 224
    1224:	38 f0       	brcs	.+14     	; 0x1234 <log+0x48>
    1226:	21 96       	adiw	r28, 0x01	; 1
    1228:	8f 77       	andi	r24, 0x7F	; 127
    122a:	0e 94 f9 05 	call	0xbf2	; 0xbf2 <__addsf3>
    122e:	e4 eb       	ldi	r30, 0xB4	; 180
    1230:	f0 e0       	ldi	r31, 0x00	; 0
    1232:	04 c0       	rjmp	.+8      	; 0x123c <log+0x50>
    1234:	0e 94 f9 05 	call	0xbf2	; 0xbf2 <__addsf3>
    1238:	e1 ee       	ldi	r30, 0xE1	; 225
    123a:	f0 e0       	ldi	r31, 0x00	; 0
    123c:	0e 94 85 08 	call	0x110a	; 0x110a <__fp_powser>
    1240:	8b 01       	movw	r16, r22
    1242:	be 01       	movw	r22, r28
    1244:	ec 01       	movw	r28, r24
    1246:	fb 2e       	mov	r15, r27
    1248:	6f 57       	subi	r22, 0x7F	; 127
    124a:	71 09       	sbc	r23, r1
    124c:	75 95       	asr	r23
    124e:	77 1f       	adc	r23, r23
    1250:	88 0b       	sbc	r24, r24
    1252:	99 0b       	sbc	r25, r25
    1254:	0e 94 de 06 	call	0xdbc	; 0xdbc <__floatsisf>
    1258:	28 e1       	ldi	r18, 0x18	; 24
    125a:	32 e7       	ldi	r19, 0x72	; 114
    125c:	41 e3       	ldi	r20, 0x31	; 49
    125e:	5f e3       	ldi	r21, 0x3F	; 63
    1260:	0e 94 a1 07 	call	0xf42	; 0xf42 <__mulsf3x>
    1264:	af 2d       	mov	r26, r15
    1266:	98 01       	movw	r18, r16
    1268:	ae 01       	movw	r20, r28
    126a:	ff 90       	pop	r15
    126c:	0f 91       	pop	r16
    126e:	1f 91       	pop	r17
    1270:	cf 91       	pop	r28
    1272:	df 91       	pop	r29
    1274:	0e 94 10 06 	call	0xc20	; 0xc20 <__addsf3x>
    1278:	0c 94 54 07 	jmp	0xea8	; 0xea8 <__fp_round>

0000127c <modf>:
    127c:	fa 01       	movw	r30, r20
    127e:	dc 01       	movw	r26, r24
    1280:	aa 0f       	add	r26, r26
    1282:	bb 1f       	adc	r27, r27
    1284:	9b 01       	movw	r18, r22
    1286:	ac 01       	movw	r20, r24
    1288:	bf 57       	subi	r27, 0x7F	; 127
    128a:	28 f4       	brcc	.+10     	; 0x1296 <modf+0x1a>
    128c:	22 27       	eor	r18, r18
    128e:	33 27       	eor	r19, r19
    1290:	44 27       	eor	r20, r20
    1292:	50 78       	andi	r21, 0x80	; 128
    1294:	20 c0       	rjmp	.+64     	; 0x12d6 <modf+0x5a>
    1296:	b7 51       	subi	r27, 0x17	; 23
    1298:	90 f4       	brcc	.+36     	; 0x12be <modf+0x42>
    129a:	ab 2f       	mov	r26, r27
    129c:	00 24       	eor	r0, r0
    129e:	46 95       	lsr	r20
    12a0:	37 95       	ror	r19
    12a2:	27 95       	ror	r18
    12a4:	01 1c       	adc	r0, r1
    12a6:	a3 95       	inc	r26
    12a8:	d2 f3       	brmi	.-12     	; 0x129e <modf+0x22>
    12aa:	00 20       	and	r0, r0
    12ac:	71 f0       	breq	.+28     	; 0x12ca <modf+0x4e>
    12ae:	22 0f       	add	r18, r18
    12b0:	33 1f       	adc	r19, r19
    12b2:	44 1f       	adc	r20, r20
    12b4:	b3 95       	inc	r27
    12b6:	da f3       	brmi	.-10     	; 0x12ae <modf+0x32>
    12b8:	0e d0       	rcall	.+28     	; 0x12d6 <modf+0x5a>
    12ba:	0c 94 f8 05 	jmp	0xbf0	; 0xbf0 <__subsf3>
    12be:	61 30       	cpi	r22, 0x01	; 1
    12c0:	71 05       	cpc	r23, r1
    12c2:	a0 e8       	ldi	r26, 0x80	; 128
    12c4:	8a 07       	cpc	r24, r26
    12c6:	b9 46       	sbci	r27, 0x69	; 105
    12c8:	30 f4       	brcc	.+12     	; 0x12d6 <modf+0x5a>
    12ca:	9b 01       	movw	r18, r22
    12cc:	ac 01       	movw	r20, r24
    12ce:	66 27       	eor	r22, r22
    12d0:	77 27       	eor	r23, r23
    12d2:	88 27       	eor	r24, r24
    12d4:	90 78       	andi	r25, 0x80	; 128
    12d6:	30 96       	adiw	r30, 0x00	; 0
    12d8:	21 f0       	breq	.+8      	; 0x12e2 <modf+0x66>
    12da:	20 83       	st	Z, r18
    12dc:	31 83       	std	Z+1, r19	; 0x01
    12de:	42 83       	std	Z+2, r20	; 0x02
    12e0:	53 83       	std	Z+3, r21	; 0x03
    12e2:	08 95       	ret

000012e4 <__fp_mpack>:
    12e4:	9f 3f       	cpi	r25, 0xFF	; 255
    12e6:	31 f0       	breq	.+12     	; 0x12f4 <__fp_mpack_finite+0xc>

000012e8 <__fp_mpack_finite>:
    12e8:	91 50       	subi	r25, 0x01	; 1
    12ea:	20 f4       	brcc	.+8      	; 0x12f4 <__fp_mpack_finite+0xc>
    12ec:	87 95       	ror	r24
    12ee:	77 95       	ror	r23
    12f0:	67 95       	ror	r22
    12f2:	b7 95       	ror	r27
    12f4:	88 0f       	add	r24, r24
    12f6:	91 1d       	adc	r25, r1
    12f8:	96 95       	lsr	r25
    12fa:	87 95       	ror	r24
    12fc:	97 f9       	bld	r25, 7
    12fe:	08 95       	ret

00001300 <vsnprintf>:
    1300:	0f 93       	push	r16
    1302:	1f 93       	push	r17
    1304:	cf 93       	push	r28
    1306:	df 93       	push	r29
    1308:	cd b7       	in	r28, 0x3d	; 61
    130a:	de b7       	in	r29, 0x3e	; 62
    130c:	2e 97       	sbiw	r28, 0x0e	; 14
    130e:	0f b6       	in	r0, 0x3f	; 63
    1310:	f8 94       	cli
    1312:	de bf       	out	0x3e, r29	; 62
    1314:	0f be       	out	0x3f, r0	; 63
    1316:	cd bf       	out	0x3d, r28	; 61
    1318:	8c 01       	movw	r16, r24
    131a:	fa 01       	movw	r30, r20
    131c:	86 e0       	ldi	r24, 0x06	; 6
    131e:	8c 83       	std	Y+4, r24	; 0x04
    1320:	1a 83       	std	Y+2, r17	; 0x02
    1322:	09 83       	std	Y+1, r16	; 0x01
    1324:	77 ff       	sbrs	r23, 7
    1326:	02 c0       	rjmp	.+4      	; 0x132c <vsnprintf+0x2c>
    1328:	60 e0       	ldi	r22, 0x00	; 0
    132a:	70 e8       	ldi	r23, 0x80	; 128
    132c:	cb 01       	movw	r24, r22
    132e:	01 97       	sbiw	r24, 0x01	; 1
    1330:	9e 83       	std	Y+6, r25	; 0x06
    1332:	8d 83       	std	Y+5, r24	; 0x05
    1334:	a9 01       	movw	r20, r18
    1336:	bf 01       	movw	r22, r30
    1338:	ce 01       	movw	r24, r28
    133a:	01 96       	adiw	r24, 0x01	; 1
    133c:	0e 94 b9 09 	call	0x1372	; 0x1372 <vfprintf>
    1340:	4d 81       	ldd	r20, Y+5	; 0x05
    1342:	5e 81       	ldd	r21, Y+6	; 0x06
    1344:	57 fd       	sbrc	r21, 7
    1346:	0a c0       	rjmp	.+20     	; 0x135c <vsnprintf+0x5c>
    1348:	2f 81       	ldd	r18, Y+7	; 0x07
    134a:	38 85       	ldd	r19, Y+8	; 0x08
    134c:	42 17       	cp	r20, r18
    134e:	53 07       	cpc	r21, r19
    1350:	0c f4       	brge	.+2      	; 0x1354 <vsnprintf+0x54>
    1352:	9a 01       	movw	r18, r20
    1354:	f8 01       	movw	r30, r16
    1356:	e2 0f       	add	r30, r18
    1358:	f3 1f       	adc	r31, r19
    135a:	10 82       	st	Z, r1
    135c:	2e 96       	adiw	r28, 0x0e	; 14
    135e:	0f b6       	in	r0, 0x3f	; 63
    1360:	f8 94       	cli
    1362:	de bf       	out	0x3e, r29	; 62
    1364:	0f be       	out	0x3f, r0	; 63
    1366:	cd bf       	out	0x3d, r28	; 61
    1368:	df 91       	pop	r29
    136a:	cf 91       	pop	r28
    136c:	1f 91       	pop	r17
    136e:	0f 91       	pop	r16
    1370:	08 95       	ret

00001372 <vfprintf>:
    1372:	2f 92       	push	r2
    1374:	3f 92       	push	r3
    1376:	4f 92       	push	r4
    1378:	5f 92       	push	r5
    137a:	6f 92       	push	r6
    137c:	7f 92       	push	r7
    137e:	8f 92       	push	r8
    1380:	9f 92       	push	r9
    1382:	af 92       	push	r10
    1384:	bf 92       	push	r11
    1386:	cf 92       	push	r12
    1388:	df 92       	push	r13
    138a:	ef 92       	push	r14
    138c:	ff 92       	push	r15
    138e:	0f 93       	push	r16
    1390:	1f 93       	push	r17
    1392:	cf 93       	push	r28
    1394:	df 93       	push	r29
    1396:	cd b7       	in	r28, 0x3d	; 61
    1398:	de b7       	in	r29, 0x3e	; 62
    139a:	2b 97       	sbiw	r28, 0x0b	; 11
    139c:	0f b6       	in	r0, 0x3f	; 63
    139e:	f8 94       	cli
    13a0:	de bf       	out	0x3e, r29	; 62
    13a2:	0f be       	out	0x3f, r0	; 63
    13a4:	cd bf       	out	0x3d, r28	; 61
    13a6:	6c 01       	movw	r12, r24
    13a8:	7b 01       	movw	r14, r22
    13aa:	8a 01       	movw	r16, r20
    13ac:	fc 01       	movw	r30, r24
    13ae:	17 82       	std	Z+7, r1	; 0x07
    13b0:	16 82       	std	Z+6, r1	; 0x06
    13b2:	83 81       	ldd	r24, Z+3	; 0x03
    13b4:	81 ff       	sbrs	r24, 1
    13b6:	cc c1       	rjmp	.+920    	; 0x1750 <vfprintf+0x3de>
    13b8:	ce 01       	movw	r24, r28
    13ba:	01 96       	adiw	r24, 0x01	; 1
    13bc:	3c 01       	movw	r6, r24
    13be:	f6 01       	movw	r30, r12
    13c0:	93 81       	ldd	r25, Z+3	; 0x03
    13c2:	f7 01       	movw	r30, r14
    13c4:	93 fd       	sbrc	r25, 3
    13c6:	85 91       	lpm	r24, Z+
    13c8:	93 ff       	sbrs	r25, 3
    13ca:	81 91       	ld	r24, Z+
    13cc:	7f 01       	movw	r14, r30
    13ce:	88 23       	and	r24, r24
    13d0:	09 f4       	brne	.+2      	; 0x13d4 <vfprintf+0x62>
    13d2:	ba c1       	rjmp	.+884    	; 0x1748 <vfprintf+0x3d6>
    13d4:	85 32       	cpi	r24, 0x25	; 37
    13d6:	39 f4       	brne	.+14     	; 0x13e6 <vfprintf+0x74>
    13d8:	93 fd       	sbrc	r25, 3
    13da:	85 91       	lpm	r24, Z+
    13dc:	93 ff       	sbrs	r25, 3
    13de:	81 91       	ld	r24, Z+
    13e0:	7f 01       	movw	r14, r30
    13e2:	85 32       	cpi	r24, 0x25	; 37
    13e4:	29 f4       	brne	.+10     	; 0x13f0 <vfprintf+0x7e>
    13e6:	b6 01       	movw	r22, r12
    13e8:	90 e0       	ldi	r25, 0x00	; 0
    13ea:	0e 94 d9 0b 	call	0x17b2	; 0x17b2 <fputc>
    13ee:	e7 cf       	rjmp	.-50     	; 0x13be <vfprintf+0x4c>
    13f0:	91 2c       	mov	r9, r1
    13f2:	21 2c       	mov	r2, r1
    13f4:	31 2c       	mov	r3, r1
    13f6:	ff e1       	ldi	r31, 0x1F	; 31
    13f8:	f3 15       	cp	r31, r3
    13fa:	d8 f0       	brcs	.+54     	; 0x1432 <vfprintf+0xc0>
    13fc:	8b 32       	cpi	r24, 0x2B	; 43
    13fe:	79 f0       	breq	.+30     	; 0x141e <vfprintf+0xac>
    1400:	38 f4       	brcc	.+14     	; 0x1410 <vfprintf+0x9e>
    1402:	80 32       	cpi	r24, 0x20	; 32
    1404:	79 f0       	breq	.+30     	; 0x1424 <vfprintf+0xb2>
    1406:	83 32       	cpi	r24, 0x23	; 35
    1408:	a1 f4       	brne	.+40     	; 0x1432 <vfprintf+0xc0>
    140a:	23 2d       	mov	r18, r3
    140c:	20 61       	ori	r18, 0x10	; 16
    140e:	1d c0       	rjmp	.+58     	; 0x144a <vfprintf+0xd8>
    1410:	8d 32       	cpi	r24, 0x2D	; 45
    1412:	61 f0       	breq	.+24     	; 0x142c <vfprintf+0xba>
    1414:	80 33       	cpi	r24, 0x30	; 48
    1416:	69 f4       	brne	.+26     	; 0x1432 <vfprintf+0xc0>
    1418:	23 2d       	mov	r18, r3
    141a:	21 60       	ori	r18, 0x01	; 1
    141c:	16 c0       	rjmp	.+44     	; 0x144a <vfprintf+0xd8>
    141e:	83 2d       	mov	r24, r3
    1420:	82 60       	ori	r24, 0x02	; 2
    1422:	38 2e       	mov	r3, r24
    1424:	e3 2d       	mov	r30, r3
    1426:	e4 60       	ori	r30, 0x04	; 4
    1428:	3e 2e       	mov	r3, r30
    142a:	2a c0       	rjmp	.+84     	; 0x1480 <vfprintf+0x10e>
    142c:	f3 2d       	mov	r31, r3
    142e:	f8 60       	ori	r31, 0x08	; 8
    1430:	1d c0       	rjmp	.+58     	; 0x146c <vfprintf+0xfa>
    1432:	37 fc       	sbrc	r3, 7
    1434:	2d c0       	rjmp	.+90     	; 0x1490 <vfprintf+0x11e>
    1436:	20 ed       	ldi	r18, 0xD0	; 208
    1438:	28 0f       	add	r18, r24
    143a:	2a 30       	cpi	r18, 0x0A	; 10
    143c:	40 f0       	brcs	.+16     	; 0x144e <vfprintf+0xdc>
    143e:	8e 32       	cpi	r24, 0x2E	; 46
    1440:	b9 f4       	brne	.+46     	; 0x1470 <vfprintf+0xfe>
    1442:	36 fc       	sbrc	r3, 6
    1444:	81 c1       	rjmp	.+770    	; 0x1748 <vfprintf+0x3d6>
    1446:	23 2d       	mov	r18, r3
    1448:	20 64       	ori	r18, 0x40	; 64
    144a:	32 2e       	mov	r3, r18
    144c:	19 c0       	rjmp	.+50     	; 0x1480 <vfprintf+0x10e>
    144e:	36 fe       	sbrs	r3, 6
    1450:	06 c0       	rjmp	.+12     	; 0x145e <vfprintf+0xec>
    1452:	8a e0       	ldi	r24, 0x0A	; 10
    1454:	98 9e       	mul	r9, r24
    1456:	20 0d       	add	r18, r0
    1458:	11 24       	eor	r1, r1
    145a:	92 2e       	mov	r9, r18
    145c:	11 c0       	rjmp	.+34     	; 0x1480 <vfprintf+0x10e>
    145e:	ea e0       	ldi	r30, 0x0A	; 10
    1460:	2e 9e       	mul	r2, r30
    1462:	20 0d       	add	r18, r0
    1464:	11 24       	eor	r1, r1
    1466:	22 2e       	mov	r2, r18
    1468:	f3 2d       	mov	r31, r3
    146a:	f0 62       	ori	r31, 0x20	; 32
    146c:	3f 2e       	mov	r3, r31
    146e:	08 c0       	rjmp	.+16     	; 0x1480 <vfprintf+0x10e>
    1470:	8c 36       	cpi	r24, 0x6C	; 108
    1472:	21 f4       	brne	.+8      	; 0x147c <vfprintf+0x10a>
    1474:	83 2d       	mov	r24, r3
    1476:	80 68       	ori	r24, 0x80	; 128
    1478:	38 2e       	mov	r3, r24
    147a:	02 c0       	rjmp	.+4      	; 0x1480 <vfprintf+0x10e>
    147c:	88 36       	cpi	r24, 0x68	; 104
    147e:	41 f4       	brne	.+16     	; 0x1490 <vfprintf+0x11e>
    1480:	f7 01       	movw	r30, r14
    1482:	93 fd       	sbrc	r25, 3
    1484:	85 91       	lpm	r24, Z+
    1486:	93 ff       	sbrs	r25, 3
    1488:	81 91       	ld	r24, Z+
    148a:	7f 01       	movw	r14, r30
    148c:	81 11       	cpse	r24, r1
    148e:	b3 cf       	rjmp	.-154    	; 0x13f6 <vfprintf+0x84>
    1490:	98 2f       	mov	r25, r24
    1492:	9f 7d       	andi	r25, 0xDF	; 223
    1494:	95 54       	subi	r25, 0x45	; 69
    1496:	93 30       	cpi	r25, 0x03	; 3
    1498:	28 f4       	brcc	.+10     	; 0x14a4 <vfprintf+0x132>
    149a:	0c 5f       	subi	r16, 0xFC	; 252
    149c:	1f 4f       	sbci	r17, 0xFF	; 255
    149e:	9f e3       	ldi	r25, 0x3F	; 63
    14a0:	99 83       	std	Y+1, r25	; 0x01
    14a2:	0d c0       	rjmp	.+26     	; 0x14be <vfprintf+0x14c>
    14a4:	83 36       	cpi	r24, 0x63	; 99
    14a6:	31 f0       	breq	.+12     	; 0x14b4 <vfprintf+0x142>
    14a8:	83 37       	cpi	r24, 0x73	; 115
    14aa:	71 f0       	breq	.+28     	; 0x14c8 <vfprintf+0x156>
    14ac:	83 35       	cpi	r24, 0x53	; 83
    14ae:	09 f0       	breq	.+2      	; 0x14b2 <vfprintf+0x140>
    14b0:	59 c0       	rjmp	.+178    	; 0x1564 <vfprintf+0x1f2>
    14b2:	21 c0       	rjmp	.+66     	; 0x14f6 <vfprintf+0x184>
    14b4:	f8 01       	movw	r30, r16
    14b6:	80 81       	ld	r24, Z
    14b8:	89 83       	std	Y+1, r24	; 0x01
    14ba:	0e 5f       	subi	r16, 0xFE	; 254
    14bc:	1f 4f       	sbci	r17, 0xFF	; 255
    14be:	88 24       	eor	r8, r8
    14c0:	83 94       	inc	r8
    14c2:	91 2c       	mov	r9, r1
    14c4:	53 01       	movw	r10, r6
    14c6:	13 c0       	rjmp	.+38     	; 0x14ee <vfprintf+0x17c>
    14c8:	28 01       	movw	r4, r16
    14ca:	f2 e0       	ldi	r31, 0x02	; 2
    14cc:	4f 0e       	add	r4, r31
    14ce:	51 1c       	adc	r5, r1
    14d0:	f8 01       	movw	r30, r16
    14d2:	a0 80       	ld	r10, Z
    14d4:	b1 80       	ldd	r11, Z+1	; 0x01
    14d6:	36 fe       	sbrs	r3, 6
    14d8:	03 c0       	rjmp	.+6      	; 0x14e0 <vfprintf+0x16e>
    14da:	69 2d       	mov	r22, r9
    14dc:	70 e0       	ldi	r23, 0x00	; 0
    14de:	02 c0       	rjmp	.+4      	; 0x14e4 <vfprintf+0x172>
    14e0:	6f ef       	ldi	r22, 0xFF	; 255
    14e2:	7f ef       	ldi	r23, 0xFF	; 255
    14e4:	c5 01       	movw	r24, r10
    14e6:	0e 94 ce 0b 	call	0x179c	; 0x179c <strnlen>
    14ea:	4c 01       	movw	r8, r24
    14ec:	82 01       	movw	r16, r4
    14ee:	f3 2d       	mov	r31, r3
    14f0:	ff 77       	andi	r31, 0x7F	; 127
    14f2:	3f 2e       	mov	r3, r31
    14f4:	16 c0       	rjmp	.+44     	; 0x1522 <vfprintf+0x1b0>
    14f6:	28 01       	movw	r4, r16
    14f8:	22 e0       	ldi	r18, 0x02	; 2
    14fa:	42 0e       	add	r4, r18
    14fc:	51 1c       	adc	r5, r1
    14fe:	f8 01       	movw	r30, r16
    1500:	a0 80       	ld	r10, Z
    1502:	b1 80       	ldd	r11, Z+1	; 0x01
    1504:	36 fe       	sbrs	r3, 6
    1506:	03 c0       	rjmp	.+6      	; 0x150e <vfprintf+0x19c>
    1508:	69 2d       	mov	r22, r9
    150a:	70 e0       	ldi	r23, 0x00	; 0
    150c:	02 c0       	rjmp	.+4      	; 0x1512 <vfprintf+0x1a0>
    150e:	6f ef       	ldi	r22, 0xFF	; 255
    1510:	7f ef       	ldi	r23, 0xFF	; 255
    1512:	c5 01       	movw	r24, r10
    1514:	0e 94 c3 0b 	call	0x1786	; 0x1786 <strnlen_P>
    1518:	4c 01       	movw	r8, r24
    151a:	f3 2d       	mov	r31, r3
    151c:	f0 68       	ori	r31, 0x80	; 128
    151e:	3f 2e       	mov	r3, r31
    1520:	82 01       	movw	r16, r4
    1522:	33 fc       	sbrc	r3, 3
    1524:	1b c0       	rjmp	.+54     	; 0x155c <vfprintf+0x1ea>
    1526:	82 2d       	mov	r24, r2
    1528:	90 e0       	ldi	r25, 0x00	; 0
    152a:	88 16       	cp	r8, r24
    152c:	99 06       	cpc	r9, r25
    152e:	b0 f4       	brcc	.+44     	; 0x155c <vfprintf+0x1ea>
    1530:	b6 01       	movw	r22, r12
    1532:	80 e2       	ldi	r24, 0x20	; 32
    1534:	90 e0       	ldi	r25, 0x00	; 0
    1536:	0e 94 d9 0b 	call	0x17b2	; 0x17b2 <fputc>
    153a:	2a 94       	dec	r2
    153c:	f4 cf       	rjmp	.-24     	; 0x1526 <vfprintf+0x1b4>
    153e:	f5 01       	movw	r30, r10
    1540:	37 fc       	sbrc	r3, 7
    1542:	85 91       	lpm	r24, Z+
    1544:	37 fe       	sbrs	r3, 7
    1546:	81 91       	ld	r24, Z+
    1548:	5f 01       	movw	r10, r30
    154a:	b6 01       	movw	r22, r12
    154c:	90 e0       	ldi	r25, 0x00	; 0
    154e:	0e 94 d9 0b 	call	0x17b2	; 0x17b2 <fputc>
    1552:	21 10       	cpse	r2, r1
    1554:	2a 94       	dec	r2
    1556:	21 e0       	ldi	r18, 0x01	; 1
    1558:	82 1a       	sub	r8, r18
    155a:	91 08       	sbc	r9, r1
    155c:	81 14       	cp	r8, r1
    155e:	91 04       	cpc	r9, r1
    1560:	71 f7       	brne	.-36     	; 0x153e <vfprintf+0x1cc>
    1562:	e8 c0       	rjmp	.+464    	; 0x1734 <vfprintf+0x3c2>
    1564:	84 36       	cpi	r24, 0x64	; 100
    1566:	11 f0       	breq	.+4      	; 0x156c <vfprintf+0x1fa>
    1568:	89 36       	cpi	r24, 0x69	; 105
    156a:	41 f5       	brne	.+80     	; 0x15bc <vfprintf+0x24a>
    156c:	f8 01       	movw	r30, r16
    156e:	37 fe       	sbrs	r3, 7
    1570:	07 c0       	rjmp	.+14     	; 0x1580 <vfprintf+0x20e>
    1572:	60 81       	ld	r22, Z
    1574:	71 81       	ldd	r23, Z+1	; 0x01
    1576:	82 81       	ldd	r24, Z+2	; 0x02
    1578:	93 81       	ldd	r25, Z+3	; 0x03
    157a:	0c 5f       	subi	r16, 0xFC	; 252
    157c:	1f 4f       	sbci	r17, 0xFF	; 255
    157e:	08 c0       	rjmp	.+16     	; 0x1590 <vfprintf+0x21e>
    1580:	60 81       	ld	r22, Z
    1582:	71 81       	ldd	r23, Z+1	; 0x01
    1584:	07 2e       	mov	r0, r23
    1586:	00 0c       	add	r0, r0
    1588:	88 0b       	sbc	r24, r24
    158a:	99 0b       	sbc	r25, r25
    158c:	0e 5f       	subi	r16, 0xFE	; 254
    158e:	1f 4f       	sbci	r17, 0xFF	; 255
    1590:	f3 2d       	mov	r31, r3
    1592:	ff 76       	andi	r31, 0x6F	; 111
    1594:	3f 2e       	mov	r3, r31
    1596:	97 ff       	sbrs	r25, 7
    1598:	09 c0       	rjmp	.+18     	; 0x15ac <vfprintf+0x23a>
    159a:	90 95       	com	r25
    159c:	80 95       	com	r24
    159e:	70 95       	com	r23
    15a0:	61 95       	neg	r22
    15a2:	7f 4f       	sbci	r23, 0xFF	; 255
    15a4:	8f 4f       	sbci	r24, 0xFF	; 255
    15a6:	9f 4f       	sbci	r25, 0xFF	; 255
    15a8:	f0 68       	ori	r31, 0x80	; 128
    15aa:	3f 2e       	mov	r3, r31
    15ac:	2a e0       	ldi	r18, 0x0A	; 10
    15ae:	30 e0       	ldi	r19, 0x00	; 0
    15b0:	a3 01       	movw	r20, r6
    15b2:	0e 94 15 0c 	call	0x182a	; 0x182a <__ultoa_invert>
    15b6:	88 2e       	mov	r8, r24
    15b8:	86 18       	sub	r8, r6
    15ba:	45 c0       	rjmp	.+138    	; 0x1646 <vfprintf+0x2d4>
    15bc:	85 37       	cpi	r24, 0x75	; 117
    15be:	31 f4       	brne	.+12     	; 0x15cc <vfprintf+0x25a>
    15c0:	23 2d       	mov	r18, r3
    15c2:	2f 7e       	andi	r18, 0xEF	; 239
    15c4:	b2 2e       	mov	r11, r18
    15c6:	2a e0       	ldi	r18, 0x0A	; 10
    15c8:	30 e0       	ldi	r19, 0x00	; 0
    15ca:	25 c0       	rjmp	.+74     	; 0x1616 <vfprintf+0x2a4>
    15cc:	93 2d       	mov	r25, r3
    15ce:	99 7f       	andi	r25, 0xF9	; 249
    15d0:	b9 2e       	mov	r11, r25
    15d2:	8f 36       	cpi	r24, 0x6F	; 111
    15d4:	c1 f0       	breq	.+48     	; 0x1606 <vfprintf+0x294>
    15d6:	18 f4       	brcc	.+6      	; 0x15de <vfprintf+0x26c>
    15d8:	88 35       	cpi	r24, 0x58	; 88
    15da:	79 f0       	breq	.+30     	; 0x15fa <vfprintf+0x288>
    15dc:	b5 c0       	rjmp	.+362    	; 0x1748 <vfprintf+0x3d6>
    15de:	80 37       	cpi	r24, 0x70	; 112
    15e0:	19 f0       	breq	.+6      	; 0x15e8 <vfprintf+0x276>
    15e2:	88 37       	cpi	r24, 0x78	; 120
    15e4:	21 f0       	breq	.+8      	; 0x15ee <vfprintf+0x27c>
    15e6:	b0 c0       	rjmp	.+352    	; 0x1748 <vfprintf+0x3d6>
    15e8:	e9 2f       	mov	r30, r25
    15ea:	e0 61       	ori	r30, 0x10	; 16
    15ec:	be 2e       	mov	r11, r30
    15ee:	b4 fe       	sbrs	r11, 4
    15f0:	0d c0       	rjmp	.+26     	; 0x160c <vfprintf+0x29a>
    15f2:	fb 2d       	mov	r31, r11
    15f4:	f4 60       	ori	r31, 0x04	; 4
    15f6:	bf 2e       	mov	r11, r31
    15f8:	09 c0       	rjmp	.+18     	; 0x160c <vfprintf+0x29a>
    15fa:	34 fe       	sbrs	r3, 4
    15fc:	0a c0       	rjmp	.+20     	; 0x1612 <vfprintf+0x2a0>
    15fe:	29 2f       	mov	r18, r25
    1600:	26 60       	ori	r18, 0x06	; 6
    1602:	b2 2e       	mov	r11, r18
    1604:	06 c0       	rjmp	.+12     	; 0x1612 <vfprintf+0x2a0>
    1606:	28 e0       	ldi	r18, 0x08	; 8
    1608:	30 e0       	ldi	r19, 0x00	; 0
    160a:	05 c0       	rjmp	.+10     	; 0x1616 <vfprintf+0x2a4>
    160c:	20 e1       	ldi	r18, 0x10	; 16
    160e:	30 e0       	ldi	r19, 0x00	; 0
    1610:	02 c0       	rjmp	.+4      	; 0x1616 <vfprintf+0x2a4>
    1612:	20 e1       	ldi	r18, 0x10	; 16
    1614:	32 e0       	ldi	r19, 0x02	; 2
    1616:	f8 01       	movw	r30, r16
    1618:	b7 fe       	sbrs	r11, 7
    161a:	07 c0       	rjmp	.+14     	; 0x162a <vfprintf+0x2b8>
    161c:	60 81       	ld	r22, Z
    161e:	71 81       	ldd	r23, Z+1	; 0x01
    1620:	82 81       	ldd	r24, Z+2	; 0x02
    1622:	93 81       	ldd	r25, Z+3	; 0x03
    1624:	0c 5f       	subi	r16, 0xFC	; 252
    1626:	1f 4f       	sbci	r17, 0xFF	; 255
    1628:	06 c0       	rjmp	.+12     	; 0x1636 <vfprintf+0x2c4>
    162a:	60 81       	ld	r22, Z
    162c:	71 81       	ldd	r23, Z+1	; 0x01
    162e:	80 e0       	ldi	r24, 0x00	; 0
    1630:	90 e0       	ldi	r25, 0x00	; 0
    1632:	0e 5f       	subi	r16, 0xFE	; 254
    1634:	1f 4f       	sbci	r17, 0xFF	; 255
    1636:	a3 01       	movw	r20, r6
    1638:	0e 94 15 0c 	call	0x182a	; 0x182a <__ultoa_invert>
    163c:	88 2e       	mov	r8, r24
    163e:	86 18       	sub	r8, r6
    1640:	fb 2d       	mov	r31, r11
    1642:	ff 77       	andi	r31, 0x7F	; 127
    1644:	3f 2e       	mov	r3, r31
    1646:	36 fe       	sbrs	r3, 6
    1648:	0d c0       	rjmp	.+26     	; 0x1664 <vfprintf+0x2f2>
    164a:	23 2d       	mov	r18, r3
    164c:	2e 7f       	andi	r18, 0xFE	; 254
    164e:	a2 2e       	mov	r10, r18
    1650:	89 14       	cp	r8, r9
    1652:	58 f4       	brcc	.+22     	; 0x166a <vfprintf+0x2f8>
    1654:	34 fe       	sbrs	r3, 4
    1656:	0b c0       	rjmp	.+22     	; 0x166e <vfprintf+0x2fc>
    1658:	32 fc       	sbrc	r3, 2
    165a:	09 c0       	rjmp	.+18     	; 0x166e <vfprintf+0x2fc>
    165c:	83 2d       	mov	r24, r3
    165e:	8e 7e       	andi	r24, 0xEE	; 238
    1660:	a8 2e       	mov	r10, r24
    1662:	05 c0       	rjmp	.+10     	; 0x166e <vfprintf+0x2fc>
    1664:	b8 2c       	mov	r11, r8
    1666:	a3 2c       	mov	r10, r3
    1668:	03 c0       	rjmp	.+6      	; 0x1670 <vfprintf+0x2fe>
    166a:	b8 2c       	mov	r11, r8
    166c:	01 c0       	rjmp	.+2      	; 0x1670 <vfprintf+0x2fe>
    166e:	b9 2c       	mov	r11, r9
    1670:	a4 fe       	sbrs	r10, 4
    1672:	0f c0       	rjmp	.+30     	; 0x1692 <vfprintf+0x320>
    1674:	fe 01       	movw	r30, r28
    1676:	e8 0d       	add	r30, r8
    1678:	f1 1d       	adc	r31, r1
    167a:	80 81       	ld	r24, Z
    167c:	80 33       	cpi	r24, 0x30	; 48
    167e:	21 f4       	brne	.+8      	; 0x1688 <vfprintf+0x316>
    1680:	9a 2d       	mov	r25, r10
    1682:	99 7e       	andi	r25, 0xE9	; 233
    1684:	a9 2e       	mov	r10, r25
    1686:	09 c0       	rjmp	.+18     	; 0x169a <vfprintf+0x328>
    1688:	a2 fe       	sbrs	r10, 2
    168a:	06 c0       	rjmp	.+12     	; 0x1698 <vfprintf+0x326>
    168c:	b3 94       	inc	r11
    168e:	b3 94       	inc	r11
    1690:	04 c0       	rjmp	.+8      	; 0x169a <vfprintf+0x328>
    1692:	8a 2d       	mov	r24, r10
    1694:	86 78       	andi	r24, 0x86	; 134
    1696:	09 f0       	breq	.+2      	; 0x169a <vfprintf+0x328>
    1698:	b3 94       	inc	r11
    169a:	a3 fc       	sbrc	r10, 3
    169c:	11 c0       	rjmp	.+34     	; 0x16c0 <vfprintf+0x34e>
    169e:	a0 fe       	sbrs	r10, 0
    16a0:	06 c0       	rjmp	.+12     	; 0x16ae <vfprintf+0x33c>
    16a2:	b2 14       	cp	r11, r2
    16a4:	88 f4       	brcc	.+34     	; 0x16c8 <vfprintf+0x356>
    16a6:	28 0c       	add	r2, r8
    16a8:	92 2c       	mov	r9, r2
    16aa:	9b 18       	sub	r9, r11
    16ac:	0e c0       	rjmp	.+28     	; 0x16ca <vfprintf+0x358>
    16ae:	b2 14       	cp	r11, r2
    16b0:	60 f4       	brcc	.+24     	; 0x16ca <vfprintf+0x358>
    16b2:	b6 01       	movw	r22, r12
    16b4:	80 e2       	ldi	r24, 0x20	; 32
    16b6:	90 e0       	ldi	r25, 0x00	; 0
    16b8:	0e 94 d9 0b 	call	0x17b2	; 0x17b2 <fputc>
    16bc:	b3 94       	inc	r11
    16be:	f7 cf       	rjmp	.-18     	; 0x16ae <vfprintf+0x33c>
    16c0:	b2 14       	cp	r11, r2
    16c2:	18 f4       	brcc	.+6      	; 0x16ca <vfprintf+0x358>
    16c4:	2b 18       	sub	r2, r11
    16c6:	02 c0       	rjmp	.+4      	; 0x16cc <vfprintf+0x35a>
    16c8:	98 2c       	mov	r9, r8
    16ca:	21 2c       	mov	r2, r1
    16cc:	a4 fe       	sbrs	r10, 4
    16ce:	10 c0       	rjmp	.+32     	; 0x16f0 <vfprintf+0x37e>
    16d0:	b6 01       	movw	r22, r12
    16d2:	80 e3       	ldi	r24, 0x30	; 48
    16d4:	90 e0       	ldi	r25, 0x00	; 0
    16d6:	0e 94 d9 0b 	call	0x17b2	; 0x17b2 <fputc>
    16da:	a2 fe       	sbrs	r10, 2
    16dc:	17 c0       	rjmp	.+46     	; 0x170c <vfprintf+0x39a>
    16de:	a1 fc       	sbrc	r10, 1
    16e0:	03 c0       	rjmp	.+6      	; 0x16e8 <vfprintf+0x376>
    16e2:	88 e7       	ldi	r24, 0x78	; 120
    16e4:	90 e0       	ldi	r25, 0x00	; 0
    16e6:	02 c0       	rjmp	.+4      	; 0x16ec <vfprintf+0x37a>
    16e8:	88 e5       	ldi	r24, 0x58	; 88
    16ea:	90 e0       	ldi	r25, 0x00	; 0
    16ec:	b6 01       	movw	r22, r12
    16ee:	0c c0       	rjmp	.+24     	; 0x1708 <vfprintf+0x396>
    16f0:	8a 2d       	mov	r24, r10
    16f2:	86 78       	andi	r24, 0x86	; 134
    16f4:	59 f0       	breq	.+22     	; 0x170c <vfprintf+0x39a>
    16f6:	a1 fe       	sbrs	r10, 1
    16f8:	02 c0       	rjmp	.+4      	; 0x16fe <vfprintf+0x38c>
    16fa:	8b e2       	ldi	r24, 0x2B	; 43
    16fc:	01 c0       	rjmp	.+2      	; 0x1700 <vfprintf+0x38e>
    16fe:	80 e2       	ldi	r24, 0x20	; 32
    1700:	a7 fc       	sbrc	r10, 7
    1702:	8d e2       	ldi	r24, 0x2D	; 45
    1704:	b6 01       	movw	r22, r12
    1706:	90 e0       	ldi	r25, 0x00	; 0
    1708:	0e 94 d9 0b 	call	0x17b2	; 0x17b2 <fputc>
    170c:	89 14       	cp	r8, r9
    170e:	38 f4       	brcc	.+14     	; 0x171e <vfprintf+0x3ac>
    1710:	b6 01       	movw	r22, r12
    1712:	80 e3       	ldi	r24, 0x30	; 48
    1714:	90 e0       	ldi	r25, 0x00	; 0
    1716:	0e 94 d9 0b 	call	0x17b2	; 0x17b2 <fputc>
    171a:	9a 94       	dec	r9
    171c:	f7 cf       	rjmp	.-18     	; 0x170c <vfprintf+0x39a>
    171e:	8a 94       	dec	r8
    1720:	f3 01       	movw	r30, r6
    1722:	e8 0d       	add	r30, r8
    1724:	f1 1d       	adc	r31, r1
    1726:	80 81       	ld	r24, Z
    1728:	b6 01       	movw	r22, r12
    172a:	90 e0       	ldi	r25, 0x00	; 0
    172c:	0e 94 d9 0b 	call	0x17b2	; 0x17b2 <fputc>
    1730:	81 10       	cpse	r8, r1
    1732:	f5 cf       	rjmp	.-22     	; 0x171e <vfprintf+0x3ac>
    1734:	22 20       	and	r2, r2
    1736:	09 f4       	brne	.+2      	; 0x173a <vfprintf+0x3c8>
    1738:	42 ce       	rjmp	.-892    	; 0x13be <vfprintf+0x4c>
    173a:	b6 01       	movw	r22, r12
    173c:	80 e2       	ldi	r24, 0x20	; 32
    173e:	90 e0       	ldi	r25, 0x00	; 0
    1740:	0e 94 d9 0b 	call	0x17b2	; 0x17b2 <fputc>
    1744:	2a 94       	dec	r2
    1746:	f6 cf       	rjmp	.-20     	; 0x1734 <vfprintf+0x3c2>
    1748:	f6 01       	movw	r30, r12
    174a:	86 81       	ldd	r24, Z+6	; 0x06
    174c:	97 81       	ldd	r25, Z+7	; 0x07
    174e:	02 c0       	rjmp	.+4      	; 0x1754 <vfprintf+0x3e2>
    1750:	8f ef       	ldi	r24, 0xFF	; 255
    1752:	9f ef       	ldi	r25, 0xFF	; 255
    1754:	2b 96       	adiw	r28, 0x0b	; 11
    1756:	0f b6       	in	r0, 0x3f	; 63
    1758:	f8 94       	cli
    175a:	de bf       	out	0x3e, r29	; 62
    175c:	0f be       	out	0x3f, r0	; 63
    175e:	cd bf       	out	0x3d, r28	; 61
    1760:	df 91       	pop	r29
    1762:	cf 91       	pop	r28
    1764:	1f 91       	pop	r17
    1766:	0f 91       	pop	r16
    1768:	ff 90       	pop	r15
    176a:	ef 90       	pop	r14
    176c:	df 90       	pop	r13
    176e:	cf 90       	pop	r12
    1770:	bf 90       	pop	r11
    1772:	af 90       	pop	r10
    1774:	9f 90       	pop	r9
    1776:	8f 90       	pop	r8
    1778:	7f 90       	pop	r7
    177a:	6f 90       	pop	r6
    177c:	5f 90       	pop	r5
    177e:	4f 90       	pop	r4
    1780:	3f 90       	pop	r3
    1782:	2f 90       	pop	r2
    1784:	08 95       	ret

00001786 <strnlen_P>:
    1786:	fc 01       	movw	r30, r24
    1788:	05 90       	lpm	r0, Z+
    178a:	61 50       	subi	r22, 0x01	; 1
    178c:	70 40       	sbci	r23, 0x00	; 0
    178e:	01 10       	cpse	r0, r1
    1790:	d8 f7       	brcc	.-10     	; 0x1788 <strnlen_P+0x2>
    1792:	80 95       	com	r24
    1794:	90 95       	com	r25
    1796:	8e 0f       	add	r24, r30
    1798:	9f 1f       	adc	r25, r31
    179a:	08 95       	ret

0000179c <strnlen>:
    179c:	fc 01       	movw	r30, r24
    179e:	61 50       	subi	r22, 0x01	; 1
    17a0:	70 40       	sbci	r23, 0x00	; 0
    17a2:	01 90       	ld	r0, Z+
    17a4:	01 10       	cpse	r0, r1
    17a6:	d8 f7       	brcc	.-10     	; 0x179e <strnlen+0x2>
    17a8:	80 95       	com	r24
    17aa:	90 95       	com	r25
    17ac:	8e 0f       	add	r24, r30
    17ae:	9f 1f       	adc	r25, r31
    17b0:	08 95       	ret

000017b2 <fputc>:
    17b2:	0f 93       	push	r16
    17b4:	1f 93       	push	r17
    17b6:	cf 93       	push	r28
    17b8:	df 93       	push	r29
    17ba:	fb 01       	movw	r30, r22
    17bc:	23 81       	ldd	r18, Z+3	; 0x03
    17be:	21 fd       	sbrc	r18, 1
    17c0:	03 c0       	rjmp	.+6      	; 0x17c8 <fputc+0x16>
    17c2:	8f ef       	ldi	r24, 0xFF	; 255
    17c4:	9f ef       	ldi	r25, 0xFF	; 255
    17c6:	2c c0       	rjmp	.+88     	; 0x1820 <fputc+0x6e>
    17c8:	22 ff       	sbrs	r18, 2
    17ca:	16 c0       	rjmp	.+44     	; 0x17f8 <fputc+0x46>
    17cc:	46 81       	ldd	r20, Z+6	; 0x06
    17ce:	57 81       	ldd	r21, Z+7	; 0x07
    17d0:	24 81       	ldd	r18, Z+4	; 0x04
    17d2:	35 81       	ldd	r19, Z+5	; 0x05
    17d4:	42 17       	cp	r20, r18
    17d6:	53 07       	cpc	r21, r19
    17d8:	44 f4       	brge	.+16     	; 0x17ea <fputc+0x38>
    17da:	a0 81       	ld	r26, Z
    17dc:	b1 81       	ldd	r27, Z+1	; 0x01
    17de:	9d 01       	movw	r18, r26
    17e0:	2f 5f       	subi	r18, 0xFF	; 255
    17e2:	3f 4f       	sbci	r19, 0xFF	; 255
    17e4:	31 83       	std	Z+1, r19	; 0x01
    17e6:	20 83       	st	Z, r18
    17e8:	8c 93       	st	X, r24
    17ea:	26 81       	ldd	r18, Z+6	; 0x06
    17ec:	37 81       	ldd	r19, Z+7	; 0x07
    17ee:	2f 5f       	subi	r18, 0xFF	; 255
    17f0:	3f 4f       	sbci	r19, 0xFF	; 255
    17f2:	37 83       	std	Z+7, r19	; 0x07
    17f4:	26 83       	std	Z+6, r18	; 0x06
    17f6:	14 c0       	rjmp	.+40     	; 0x1820 <fputc+0x6e>
    17f8:	8b 01       	movw	r16, r22
    17fa:	ec 01       	movw	r28, r24
    17fc:	fb 01       	movw	r30, r22
    17fe:	00 84       	ldd	r0, Z+8	; 0x08
    1800:	f1 85       	ldd	r31, Z+9	; 0x09
    1802:	e0 2d       	mov	r30, r0
    1804:	09 95       	icall
    1806:	89 2b       	or	r24, r25
    1808:	e1 f6       	brne	.-72     	; 0x17c2 <fputc+0x10>
    180a:	d8 01       	movw	r26, r16
    180c:	16 96       	adiw	r26, 0x06	; 6
    180e:	8d 91       	ld	r24, X+
    1810:	9c 91       	ld	r25, X
    1812:	17 97       	sbiw	r26, 0x07	; 7
    1814:	01 96       	adiw	r24, 0x01	; 1
    1816:	17 96       	adiw	r26, 0x07	; 7
    1818:	9c 93       	st	X, r25
    181a:	8e 93       	st	-X, r24
    181c:	16 97       	sbiw	r26, 0x06	; 6
    181e:	ce 01       	movw	r24, r28
    1820:	df 91       	pop	r29
    1822:	cf 91       	pop	r28
    1824:	1f 91       	pop	r17
    1826:	0f 91       	pop	r16
    1828:	08 95       	ret

0000182a <__ultoa_invert>:
    182a:	fa 01       	movw	r30, r20
    182c:	aa 27       	eor	r26, r26
    182e:	28 30       	cpi	r18, 0x08	; 8
    1830:	51 f1       	breq	.+84     	; 0x1886 <__ultoa_invert+0x5c>
    1832:	20 31       	cpi	r18, 0x10	; 16
    1834:	81 f1       	breq	.+96     	; 0x1896 <__ultoa_invert+0x6c>
    1836:	e8 94       	clt
    1838:	6f 93       	push	r22
    183a:	6e 7f       	andi	r22, 0xFE	; 254
    183c:	6e 5f       	subi	r22, 0xFE	; 254
    183e:	7f 4f       	sbci	r23, 0xFF	; 255
    1840:	8f 4f       	sbci	r24, 0xFF	; 255
    1842:	9f 4f       	sbci	r25, 0xFF	; 255
    1844:	af 4f       	sbci	r26, 0xFF	; 255
    1846:	b1 e0       	ldi	r27, 0x01	; 1
    1848:	3e d0       	rcall	.+124    	; 0x18c6 <__ultoa_invert+0x9c>
    184a:	b4 e0       	ldi	r27, 0x04	; 4
    184c:	3c d0       	rcall	.+120    	; 0x18c6 <__ultoa_invert+0x9c>
    184e:	67 0f       	add	r22, r23
    1850:	78 1f       	adc	r23, r24
    1852:	89 1f       	adc	r24, r25
    1854:	9a 1f       	adc	r25, r26
    1856:	a1 1d       	adc	r26, r1
    1858:	68 0f       	add	r22, r24
    185a:	79 1f       	adc	r23, r25
    185c:	8a 1f       	adc	r24, r26
    185e:	91 1d       	adc	r25, r1
    1860:	a1 1d       	adc	r26, r1
    1862:	6a 0f       	add	r22, r26
    1864:	71 1d       	adc	r23, r1
    1866:	81 1d       	adc	r24, r1
    1868:	91 1d       	adc	r25, r1
    186a:	a1 1d       	adc	r26, r1
    186c:	20 d0       	rcall	.+64     	; 0x18ae <__ultoa_invert+0x84>
    186e:	09 f4       	brne	.+2      	; 0x1872 <__ultoa_invert+0x48>
    1870:	68 94       	set
    1872:	3f 91       	pop	r19
    1874:	2a e0       	ldi	r18, 0x0A	; 10
    1876:	26 9f       	mul	r18, r22
    1878:	11 24       	eor	r1, r1
    187a:	30 19       	sub	r19, r0
    187c:	30 5d       	subi	r19, 0xD0	; 208
    187e:	31 93       	st	Z+, r19
    1880:	de f6       	brtc	.-74     	; 0x1838 <__ultoa_invert+0xe>
    1882:	cf 01       	movw	r24, r30
    1884:	08 95       	ret
    1886:	46 2f       	mov	r20, r22
    1888:	47 70       	andi	r20, 0x07	; 7
    188a:	40 5d       	subi	r20, 0xD0	; 208
    188c:	41 93       	st	Z+, r20
    188e:	b3 e0       	ldi	r27, 0x03	; 3
    1890:	0f d0       	rcall	.+30     	; 0x18b0 <__ultoa_invert+0x86>
    1892:	c9 f7       	brne	.-14     	; 0x1886 <__ultoa_invert+0x5c>
    1894:	f6 cf       	rjmp	.-20     	; 0x1882 <__ultoa_invert+0x58>
    1896:	46 2f       	mov	r20, r22
    1898:	4f 70       	andi	r20, 0x0F	; 15
    189a:	40 5d       	subi	r20, 0xD0	; 208
    189c:	4a 33       	cpi	r20, 0x3A	; 58
    189e:	18 f0       	brcs	.+6      	; 0x18a6 <__ultoa_invert+0x7c>
    18a0:	49 5d       	subi	r20, 0xD9	; 217
    18a2:	31 fd       	sbrc	r19, 1
    18a4:	40 52       	subi	r20, 0x20	; 32
    18a6:	41 93       	st	Z+, r20
    18a8:	02 d0       	rcall	.+4      	; 0x18ae <__ultoa_invert+0x84>
    18aa:	a9 f7       	brne	.-22     	; 0x1896 <__ultoa_invert+0x6c>
    18ac:	ea cf       	rjmp	.-44     	; 0x1882 <__ultoa_invert+0x58>
    18ae:	b4 e0       	ldi	r27, 0x04	; 4
    18b0:	a6 95       	lsr	r26
    18b2:	97 95       	ror	r25
    18b4:	87 95       	ror	r24
    18b6:	77 95       	ror	r23
    18b8:	67 95       	ror	r22
    18ba:	ba 95       	dec	r27
    18bc:	c9 f7       	brne	.-14     	; 0x18b0 <__ultoa_invert+0x86>
    18be:	00 97       	sbiw	r24, 0x00	; 0
    18c0:	61 05       	cpc	r22, r1
    18c2:	71 05       	cpc	r23, r1
    18c4:	08 95       	ret
    18c6:	9b 01       	movw	r18, r22
    18c8:	ac 01       	movw	r20, r24
    18ca:	0a 2e       	mov	r0, r26
    18cc:	06 94       	lsr	r0
    18ce:	57 95       	ror	r21
    18d0:	47 95       	ror	r20
    18d2:	37 95       	ror	r19
    18d4:	27 95       	ror	r18
    18d6:	ba 95       	dec	r27
    18d8:	c9 f7       	brne	.-14     	; 0x18cc <__ultoa_invert+0xa2>
    18da:	62 0f       	add	r22, r18
    18dc:	73 1f       	adc	r23, r19
    18de:	84 1f       	adc	r24, r20
    18e0:	95 1f       	adc	r25, r21
    18e2:	a0 1d       	adc	r26, r0
    18e4:	08 95       	ret

000018e6 <_exit>:
    18e6:	f8 94       	cli

000018e8 <__stop_program>:
    18e8:	ff cf       	rjmp	.-2      	; 0x18e8 <__stop_program>

Disassembly of section .bss:

00800144 <__bss_start>:
	...

008001c4 <debugbuf1>:
  8001c4:	00 00       	nop
  8001c6:	00 00       	nop
	...

008001c9 <avroraTraceEnabledVariable>:
	...

Disassembly of section .comment:

00000000 <_end-0x8001ca>:
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
   c:	00 00       	nop
   e:	00 00       	nop
  10:	50 01       	movw	r10, r0
  12:	00 00       	nop
  14:	22 00       	.word	0x0022	; ????
  16:	00 00       	nop
  18:	72 01       	movw	r14, r4
  1a:	00 00       	nop
  1c:	18 00       	.word	0x0018	; ????
  1e:	00 00       	nop
  20:	8a 01       	movw	r16, r20
  22:	00 00       	nop
  24:	20 00       	.word	0x0020	; ????
  26:	00 00       	nop
  28:	aa 01       	movw	r20, r20
  2a:	00 00       	nop
  2c:	08 00       	.word	0x0008	; ????
  2e:	00 00       	nop
  30:	b2 01       	movw	r22, r4
  32:	00 00       	nop
  34:	06 00       	.word	0x0006	; ????
  36:	00 00       	nop
  38:	b8 01       	movw	r22, r16
  3a:	00 00       	nop
  3c:	1a 00       	.word	0x001a	; ????
  3e:	00 00       	nop
  40:	d2 01       	movw	r26, r4
  42:	00 00       	nop
  44:	1a 00       	.word	0x001a	; ????
  46:	00 00       	nop
  48:	ec 01       	movw	r28, r24
  4a:	00 00       	nop
  4c:	0c 00       	.word	0x000c	; ????
	...
  56:	00 00       	nop
  58:	1c 00       	.word	0x001c	; ????
  5a:	00 00       	nop
  5c:	02 00       	.word	0x0002	; ????
  5e:	53 0b       	sbc	r21, r19
  60:	00 00       	nop
  62:	04 00       	.word	0x0004	; ????
  64:	00 00       	nop
  66:	00 00       	nop
  68:	f8 01       	movw	r30, r16
  6a:	00 00       	nop
  6c:	2e 01       	movw	r4, r28
	...
  76:	00 00       	nop
  78:	2c 00       	.word	0x002c	; ????
  7a:	00 00       	nop
  7c:	02 00       	.word	0x0002	; ????
  7e:	e9 0d       	add	r30, r9
  80:	00 00       	nop
  82:	04 00       	.word	0x0004	; ????
  84:	00 00       	nop
  86:	00 00       	nop
  88:	26 03       	mulsu	r18, r22
  8a:	00 00       	nop
  8c:	ae 06       	cpc	r10, r30
  8e:	00 00       	nop
  90:	d4 09       	sbc	r29, r4
  92:	00 00       	nop
  94:	aa 00       	.word	0x00aa	; ????
  96:	00 00       	nop
  98:	7e 0a       	sbc	r7, r30
  9a:	00 00       	nop
  9c:	72 01       	movw	r14, r4
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
     780:	cf 03       	fmulsu	r20, r23
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
     7d2:	00 02       	muls	r16, r16
     7d4:	04 07       	cpc	r16, r20
     7d6:	82 03       	fmuls	r16, r18
     7d8:	00 00       	nop
     7da:	02 08       	sbc	r0, r2
     7dc:	05 e8       	ldi	r16, 0x85	; 133
     7de:	03 00       	.word	0x0003	; ????
     7e0:	00 02       	muls	r16, r16
     7e2:	08 07       	cpc	r16, r24
     7e4:	7d 03       	fmul	r23, r21
     7e6:	00 00       	nop
     7e8:	03 ff       	sbrs	r16, 3
     7ea:	02 00       	.word	0x0002	; ????
     7ec:	00 05       	cpc	r16, r0
     7ee:	28 73       	andi	r18, 0x38	; 56
     7f0:	00 00       	nop
     7f2:	00 05       	cpc	r16, r0
     7f4:	02 7d       	andi	r16, 0xD2	; 210
     7f6:	02 00       	.word	0x0002	; ????
     7f8:	00 03       	mulsu	r16, r16
     7fa:	06 03       	mulsu	r16, r22
     7fc:	00 00       	nop
     7fe:	05 62       	ori	r16, 0x25	; 37
     800:	68 00       	.word	0x0068	; ????
     802:	00 00       	nop
     804:	06 02       	muls	r16, r22
     806:	8a 00       	.word	0x008a	; ????
     808:	00 00       	nop
     80a:	02 01       	movw	r0, r4
     80c:	06 20       	and	r0, r6
     80e:	03 00       	.word	0x0003	; ????
     810:	00 07       	cpc	r16, r16
     812:	4e 03       	fmul	r20, r22
     814:	00 00       	nop
     816:	02 5c       	subi	r16, 0xC2	; 194
     818:	01 03       	mulsu	r16, r17
     81a:	a8 00       	.word	0x00a8	; ????
     81c:	00 00       	nop
     81e:	08 61       	ori	r16, 0x18	; 24
     820:	00 02       	muls	r16, r16
     822:	5c 2c       	mov	r5, r12
     824:	00 00       	nop
     826:	00 00       	nop
     828:	09 33       	cpi	r16, 0x39	; 57
     82a:	03 00       	.word	0x0003	; ????
     82c:	00 02       	muls	r16, r16
     82e:	65 03       	mulsu	r22, r21
     830:	07 d2       	rcall	.+1038   	; 0xc40 <__addsf3x+0x20>
     832:	03 00       	.word	0x0003	; ????
     834:	00 02       	muls	r16, r16
     836:	60 01       	movw	r12, r0
     838:	03 c7       	rjmp	.+3590   	; 0x1640 <vfprintf+0x2ce>
     83a:	00 00       	nop
     83c:	00 08       	sbc	r0, r0
     83e:	63 00       	.word	0x0063	; ????
     840:	02 60       	ori	r16, 0x02	; 2
     842:	8a 00       	.word	0x008a	; ????
     844:	00 00       	nop
     846:	00 09       	sbc	r16, r0
     848:	6b 03       	fmul	r22, r19
     84a:	00 00       	nop
     84c:	03 0d       	add	r16, r3
     84e:	03 09       	sbc	r16, r3
     850:	c7 02       	muls	r28, r23
     852:	00 00       	nop
     854:	03 12       	cpse	r0, r19
     856:	03 0a       	sbc	r0, r19
     858:	01 f5       	brne	.+64     	; 0x89a <__LOCK_REGION_LENGTH__+0x49a>
     85a:	02 00       	.word	0x0002	; ????
     85c:	00 01       	movw	r0, r0
     85e:	07 01       	movw	r0, r14
     860:	50 01       	movw	r10, r0
     862:	00 00       	nop
     864:	72 01       	movw	r14, r4
     866:	00 00       	nop
     868:	03 92       	.word	0x9203	; ????
     86a:	20 02       	muls	r18, r16
     86c:	01 6d       	ori	r16, 0xD1	; 209
     86e:	01 00       	.word	0x0001	; ????
     870:	00 0b       	sbc	r16, r16
     872:	73 74       	andi	r23, 0x43	; 67
     874:	72 00       	.word	0x0072	; ????
     876:	01 07       	cpc	r16, r17
     878:	84 00       	.word	0x0084	; ????
     87a:	00 00       	nop
     87c:	00 00       	nop
     87e:	00 00       	nop
     880:	0c 69       	ori	r16, 0x9C	; 156
     882:	00 01       	movw	r0, r0
     884:	09 3e       	cpi	r16, 0xE9	; 233
     886:	00 00       	nop
     888:	00 36       	cpi	r16, 0x60	; 96
     88a:	00 00       	nop
     88c:	00 0d       	add	r16, r0
     88e:	b0 00       	.word	0x00b0	; ????
     890:	00 00       	nop
     892:	52 01       	movw	r10, r4
     894:	00 00       	nop
     896:	00 00       	nop
     898:	00 00       	nop
     89a:	01 0e       	add	r0, r17
     89c:	43 01       	movw	r8, r6
     89e:	00 00       	nop
     8a0:	0e bd       	out	0x2e, r16	; 46
     8a2:	00 00       	nop
     8a4:	00 90 00 00 	lds	r0, 0x0000	; 0x800000 <__TEXT_REGION_LENGTH__+0x7e0000>
     8a8:	00 0f       	add	r16, r16
     8aa:	91 00       	.word	0x0091	; ????
     8ac:	00 00       	nop
     8ae:	52 01       	movw	r10, r4
     8b0:	00 00       	nop
     8b2:	18 00       	.word	0x0018	; ????
     8b4:	00 00       	nop
     8b6:	02 63       	ori	r16, 0x32	; 50
     8b8:	0e 9e       	mul	r0, r30
     8ba:	00 00       	nop
     8bc:	00 a3       	std	Z+32, r16	; 0x20
     8be:	00 00       	nop
     8c0:	00 00       	nop
     8c2:	00 0f       	add	r16, r16
     8c4:	a8 00       	.word	0x00a8	; ????
     8c6:	00 00       	nop
     8c8:	54 01       	movw	r10, r8
     8ca:	00 00       	nop
     8cc:	30 00       	.word	0x0030	; ????
     8ce:	00 00       	nop
     8d0:	01 0c       	add	r0, r1
     8d2:	0f 91       	pop	r16
     8d4:	00 00       	nop
     8d6:	00 54       	subi	r16, 0x40	; 64
     8d8:	01 00       	.word	0x0001	; ????
     8da:	00 30       	cpi	r16, 0x00	; 0
     8dc:	00 00       	nop
     8de:	00 02       	muls	r16, r16
     8e0:	67 0e       	add	r6, r23
     8e2:	9e 00       	.word	0x009e	; ????
     8e4:	00 00       	nop
     8e6:	b7 00       	.word	0x00b7	; ????
     8e8:	00 00       	nop
     8ea:	00 00       	nop
     8ec:	00 0a       	sbc	r0, r16
     8ee:	01 d2       	rcall	.+1026   	; 0xcf2 <__divsf3+0x1e>
     8f0:	04 00       	.word	0x0004	; ????
     8f2:	00 01       	movw	r0, r0
     8f4:	13 01       	movw	r2, r6
     8f6:	72 01       	movw	r14, r4
     8f8:	00 00       	nop
     8fa:	8a 01       	movw	r16, r20
     8fc:	00 00       	nop
     8fe:	03 92       	.word	0x9203	; ????
     900:	20 02       	muls	r18, r16
     902:	01 0f       	add	r16, r17
     904:	02 00       	.word	0x0002	; ????
     906:	00 10       	cpse	r0, r0
     908:	64 03       	mulsu	r22, r20
     90a:	00 00       	nop
     90c:	01 13       	cpse	r16, r17
     90e:	84 00       	.word	0x0084	; ????
     910:	00 00       	nop
     912:	cb 00       	.word	0x00cb	; ????
     914:	00 00       	nop
     916:	0b 61       	ori	r16, 0x1B	; 27
     918:	72 67       	ori	r23, 0x72	; 114
     91a:	00 01       	movw	r0, r0
     91c:	13 79       	andi	r17, 0x93	; 147
     91e:	00 00       	nop
     920:	00 01       	movw	r0, r0
     922:	01 00       	.word	0x0001	; ????
     924:	00 11       	cpse	r16, r0
     926:	2e 03       	fmul	r18, r22
     928:	00 00       	nop
     92a:	01 15       	cp	r16, r1
     92c:	0f 02       	muls	r16, r31
     92e:	00 00       	nop
     930:	05 03       	mulsu	r16, r21
     932:	44 01       	movw	r8, r8
     934:	80 00       	.word	0x0080	; ????
     936:	12 82       	std	Z+2, r1	; 0x02
     938:	01 00       	.word	0x0001	; ????
     93a:	00 b7       	in	r16, 0x30	; 48
     93c:	03 00       	.word	0x0003	; ????
     93e:	00 f5       	brcc	.+64     	; 0x980 <__LOCK_REGION_LENGTH__+0x580>
     940:	01 00       	.word	0x0001	; ????
     942:	00 13       	cpse	r16, r16
     944:	06 68       	ori	r16, 0x86	; 134
     946:	93 01       	movw	r18, r6
     948:	69 93       	st	Y+, r22
     94a:	01 05       	cpc	r16, r1
     94c:	03 44       	sbci	r16, 0x43	; 67
     94e:	01 80       	ldd	r0, Z+1	; 0x01
     950:	00 13       	cpse	r16, r16
     952:	06 66       	ori	r16, 0x66	; 102
     954:	93 01       	movw	r18, r6
     956:	67 93       	lat	Z, r22
     958:	01 02       	muls	r16, r17
     95a:	08 80       	ld	r0, Y
     95c:	13 06       	cpc	r1, r19
     95e:	64 93       	xch	Z, r22
     960:	01 65       	ori	r16, 0x51	; 81
     962:	93 01       	movw	r18, r6
     964:	03 f3       	brvs	.-64     	; 0x926 <__LOCK_REGION_LENGTH__+0x526>
     966:	01 68       	ori	r16, 0x81	; 129
     968:	13 06       	cpc	r1, r19
     96a:	62 93       	st	-Z, r22
     96c:	01 63       	ori	r16, 0x31	; 49
     96e:	93 01       	movw	r18, r6
     970:	03 f3       	brvs	.-64     	; 0x932 <__LOCK_REGION_LENGTH__+0x532>
     972:	01 66       	ori	r16, 0x61	; 97
     974:	00 14       	cp	r0, r0
     976:	8a 01       	movw	r16, r20
     978:	00 00       	nop
     97a:	01 d7       	rcall	.+3586   	; 0x177e <vfprintf+0x40c>
     97c:	00 00       	nop
     97e:	00 13       	cpse	r16, r16
     980:	06 68       	ori	r16, 0x86	; 134
     982:	93 01       	movw	r18, r6
     984:	69 93       	st	Y+, r22
     986:	01 05       	cpc	r16, r1
     988:	03 44       	sbci	r16, 0x43	; 67
     98a:	01 80       	ldd	r0, Z+1	; 0x01
     98c:	00 00       	nop
     98e:	00 15       	cp	r16, r0
     990:	8a 00       	.word	0x008a	; ????
     992:	00 00       	nop
     994:	1f 02       	muls	r17, r31
     996:	00 00       	nop
     998:	16 1f       	adc	r17, r22
     99a:	02 00       	.word	0x0002	; ????
     99c:	00 7f       	andi	r16, 0xF0	; 240
     99e:	00 02       	muls	r16, r16
     9a0:	02 07       	cpc	r16, r18
     9a2:	c9 03       	fmulsu	r20, r17
     9a4:	00 00       	nop
     9a6:	17 01       	movw	r2, r14
     9a8:	bc 02       	muls	r27, r28
     9aa:	00 00       	nop
     9ac:	01 1a       	sub	r0, r17
     9ae:	01 8a       	std	Z+17, r0	; 0x11
     9b0:	01 00       	.word	0x0001	; ????
     9b2:	00 aa       	std	Z+48, r0	; 0x30
     9b4:	01 00       	.word	0x0001	; ????
     9b6:	00 37       	cpi	r16, 0x70	; 112
     9b8:	01 00       	.word	0x0001	; ????
     9ba:	00 01       	movw	r0, r0
     9bc:	81 02       	muls	r24, r17
     9be:	00 00       	nop
     9c0:	18 64       	ori	r17, 0x48	; 72
     9c2:	03 00       	.word	0x0003	; ????
     9c4:	00 01       	movw	r0, r0
     9c6:	1a 84       	ldd	r1, Y+10	; 0x0a
     9c8:	00 00       	nop
     9ca:	00 02       	muls	r16, r16
     9cc:	91 01       	movw	r18, r2
     9ce:	19 0c       	add	r1, r9
     9d0:	61 72       	andi	r22, 0x21	; 33
     9d2:	67 00       	.word	0x0067	; ????
     9d4:	01 1c       	adc	r0, r1
     9d6:	79 00       	.word	0x0079	; ????
     9d8:	00 00       	nop
     9da:	72 01       	movw	r14, r4
     9dc:	00 00       	nop
     9de:	1a a4       	ldd	r1, Y+42	; 0x2a
     9e0:	01 00       	.word	0x0001	; ????
     9e2:	00 6d       	ori	r16, 0xD0	; 208
     9e4:	01 00       	.word	0x0001	; ????
     9e6:	00 13       	cpse	r16, r16
     9e8:	06 68       	ori	r16, 0x86	; 134
     9ea:	93 01       	movw	r18, r6
     9ec:	69 93       	st	Y+, r22
     9ee:	01 04       	cpc	r0, r1
     9f0:	91 01       	movw	r18, r2
     9f2:	94 02       	muls	r25, r20
     9f4:	13 06       	cpc	r1, r19
     9f6:	66 93       	lac	Z, r22
     9f8:	01 67       	ori	r16, 0x71	; 113
     9fa:	93 01       	movw	r18, r6
     9fc:	02 91       	ld	r16, -Z
     9fe:	03 00       	.word	0x0003	; ????
     a00:	00 1b       	sub	r16, r16
     a02:	01 f6       	brne	.-128    	; 0x984 <__LOCK_REGION_LENGTH__+0x584>
     a04:	03 00       	.word	0x0003	; ????
     a06:	00 01       	movw	r0, r0
     a08:	25 aa       	std	Z+53, r2	; 0x35
     a0a:	01 00       	.word	0x0001	; ????
     a0c:	00 b2       	in	r0, 0x10	; 16
     a0e:	01 00       	.word	0x0001	; ????
     a10:	00 03       	mulsu	r16, r16
     a12:	92 20       	and	r9, r2
     a14:	02 01       	movw	r0, r4
     a16:	aa 02       	muls	r26, r26
     a18:	00 00       	nop
     a1a:	1c c7       	rjmp	.+3640   	; 0x1854 <__ultoa_invert+0x2a>
     a1c:	00 00       	nop
     a1e:	00 aa       	std	Z+48, r0	; 0x30
     a20:	01 00       	.word	0x0001	; ????
     a22:	00 b2       	in	r0, 0x10	; 16
     a24:	01 00       	.word	0x0001	; ????
     a26:	00 01       	movw	r0, r0
     a28:	32 00       	.word	0x0032	; ????
     a2a:	1b 01       	movw	r2, r22
     a2c:	9f 02       	muls	r25, r31
     a2e:	00 00       	nop
     a30:	01 34       	cpi	r16, 0x41	; 65
     a32:	b2 01       	movw	r22, r4
     a34:	00 00       	nop
     a36:	b8 01       	movw	r22, r16
     a38:	00 00       	nop
     a3a:	03 92       	.word	0x9203	; ????
     a3c:	20 02       	muls	r18, r16
     a3e:	01 d3       	rcall	.+1538   	; 0x1042 <pow+0x4c>
     a40:	02 00       	.word	0x0002	; ????
     a42:	00 1c       	adc	r0, r0
     a44:	cf 00       	.word	0x00cf	; ????
     a46:	00 00       	nop
     a48:	b2 01       	movw	r22, r4
     a4a:	00 00       	nop
     a4c:	b8 01       	movw	r22, r16
     a4e:	00 00       	nop
     a50:	01 35       	cpi	r16, 0x51	; 81
     a52:	00 17       	cp	r16, r16
     a54:	01 0e       	add	r0, r17
     a56:	03 00       	.word	0x0003	; ????
     a58:	00 01       	movw	r0, r0
     a5a:	42 01       	movw	r8, r4
     a5c:	b8 01       	movw	r22, r16
     a5e:	00 00       	nop
     a60:	d2 01       	movw	r26, r4
     a62:	00 00       	nop
     a64:	97 01       	movw	r18, r14
     a66:	00 00       	nop
     a68:	01 06       	cpc	r0, r17
     a6a:	03 00       	.word	0x0003	; ????
     a6c:	00 10       	cpse	r0, r0
     a6e:	99 02       	muls	r25, r25
     a70:	00 00       	nop
     a72:	01 42       	sbci	r16, 0x21	; 33
     a74:	3e 00       	.word	0x003e	; ????
     a76:	00 00       	nop
     a78:	ed 01       	movw	r28, r26
     a7a:	00 00       	nop
     a7c:	1d c8       	rjmp	.-4038   	; 0xfffffab8 <__eeprom_end+0xff7efab8>
     a7e:	01 00       	.word	0x0001	; ????
     a80:	00 26       	eor	r0, r16
     a82:	02 00       	.word	0x0002	; ????
     a84:	00 00       	nop
     a86:	17 01       	movw	r2, r14
     a88:	25 03       	mulsu	r18, r21
     a8a:	00 00       	nop
     a8c:	01 46       	sbci	r16, 0x61	; 97
     a8e:	01 d2       	rcall	.+1026   	; 0xe92 <__fp_pscA+0x6>
     a90:	01 00       	.word	0x0001	; ????
     a92:	00 ec       	ldi	r16, 0xC0	; 192
     a94:	01 00       	.word	0x0001	; ????
     a96:	00 13       	cpse	r16, r16
     a98:	02 00       	.word	0x0002	; ????
     a9a:	00 01       	movw	r0, r0
     a9c:	39 03       	fmul	r19, r17
     a9e:	00 00       	nop
     aa0:	0b 73       	andi	r16, 0x3B	; 59
     aa2:	74 72       	andi	r23, 0x24	; 36
     aa4:	00 01       	movw	r0, r0
     aa6:	46 39       	cpi	r20, 0x96	; 150
     aa8:	03 00       	.word	0x0003	; ????
     aaa:	00 69       	ori	r16, 0x90	; 144
     aac:	02 00       	.word	0x0002	; ????
     aae:	00 1d       	adc	r16, r0
     ab0:	e2 01       	movw	r28, r4
     ab2:	00 00       	nop
     ab4:	26 02       	muls	r18, r22
     ab6:	00 00       	nop
     ab8:	00 06       	cpc	r0, r16
     aba:	02 2c       	mov	r0, r2
     abc:	00 00       	nop
     abe:	00 1e       	adc	r0, r16
     ac0:	01 49       	sbci	r16, 0x91	; 145
     ac2:	03 00       	.word	0x0003	; ????
     ac4:	00 01       	movw	r0, r0
     ac6:	4a 3e       	cpi	r20, 0xEA	; 234
     ac8:	00 00       	nop
     aca:	00 ec       	ldi	r16, 0xC0	; 192
     acc:	01 00       	.word	0x0001	; ????
     ace:	00 f8       	bld	r0, 0
     ad0:	01 00       	.word	0x0001	; ????
     ad2:	00 03       	mulsu	r16, r16
     ad4:	92 20       	and	r9, r2
     ad6:	02 01       	movw	r0, r4
     ad8:	79 03       	fmul	r23, r17
     ada:	00 00       	nop
     adc:	1f 01       	movw	r2, r30
     ade:	9c 03       	fmulsu	r17, r20
     ae0:	00 00       	nop
     ae2:	01 4b       	sbci	r16, 0xB1	; 177
     ae4:	3e 00       	.word	0x003e	; ????
     ae6:	00 00       	nop
     ae8:	01 6f       	ori	r16, 0xF1	; 241
     aea:	03 00       	.word	0x0003	; ????
     aec:	00 19       	sub	r16, r0
     aee:	00 1d       	adc	r16, r0
     af0:	f0 01       	movw	r30, r0
     af2:	00 00       	nop
     af4:	c5 03       	fmuls	r20, r21
     af6:	00 00       	nop
     af8:	00 15       	cp	r16, r0
     afa:	89 03       	fmulsu	r16, r17
     afc:	00 00       	nop
     afe:	89 03       	fmulsu	r16, r17
     b00:	00 00       	nop
     b02:	16 1f       	adc	r17, r22
     b04:	02 00       	.word	0x0002	; ????
     b06:	00 04       	cpc	r0, r0
     b08:	00 20       	and	r0, r0
     b0a:	2c 00       	.word	0x002c	; ????
     b0c:	00 00       	nop
     b0e:	21 1b       	sub	r18, r17
     b10:	04 00       	.word	0x0004	; ????
     b12:	00 02       	muls	r16, r16
     b14:	45 a0       	ldd	r4, Z+37	; 0x25
     b16:	03 00       	.word	0x0003	; ????
     b18:	00 01       	movw	r0, r0
     b1a:	05 03       	mulsu	r16, r21
     b1c:	c4 01       	movw	r24, r8
     b1e:	80 00       	.word	0x0080	; ????
     b20:	20 79       	andi	r18, 0x90	; 144
     b22:	03 00       	.word	0x0003	; ????
     b24:	00 21       	and	r16, r0
     b26:	da 02       	muls	r29, r26
     b28:	00 00       	nop
     b2a:	03 0b       	sbc	r16, r19
     b2c:	89 03       	fmulsu	r16, r17
     b2e:	00 00       	nop
     b30:	01 05       	cpc	r16, r1
     b32:	03 c9       	rjmp	.-3578   	; 0xfffffd3a <__eeprom_end+0xff7efd3a>
     b34:	01 80       	ldd	r0, Z+1	; 0x01
     b36:	00 22       	and	r0, r16
     b38:	01 01       	movw	r0, r2
     b3a:	8f 02       	muls	r24, r31
     b3c:	00 00       	nop
     b3e:	8f 02       	muls	r24, r31
     b40:	00 00       	nop
     b42:	06 cb       	rjmp	.-2548   	; 0x150 <avr_Print>
     b44:	02 23       	and	r16, r18
     b46:	01 01       	movw	r0, r2
     b48:	9c 03       	fmulsu	r17, r20
     b4a:	00 00       	nop
     b4c:	9c 03       	fmulsu	r17, r20
     b4e:	00 00       	nop
     b50:	01 4b       	sbci	r16, 0xB1	; 177
     b52:	00 92 02 00 	sts	0x0002, r0	; 0x800002 <__TEXT_REGION_LENGTH__+0x7e0002>
     b56:	00 02       	muls	r16, r16
     b58:	00 18       	sub	r0, r0
     b5a:	09 00       	.word	0x0009	; ????
     b5c:	00 04       	cpc	r0, r0
     b5e:	01 25       	eor	r16, r1
     b60:	04 00       	.word	0x0004	; ????
     b62:	00 0c       	add	r0, r0
     b64:	fa 04       	cpc	r15, r10
     b66:	00 00       	nop
     b68:	90 00       	.word	0x0090	; ????
	...
     b72:	00 00       	nop
     b74:	11 02       	muls	r17, r17
     b76:	00 00       	nop
     b78:	02 01       	movw	r0, r4
     b7a:	06 19       	sub	r16, r6
     b7c:	03 00       	.word	0x0003	; ????
     b7e:	00 02       	muls	r16, r16
     b80:	01 08       	sbc	r0, r1
     b82:	17 03       	mulsu	r17, r23
     b84:	00 00       	nop
     b86:	03 02       	muls	r16, r19
     b88:	05 69       	ori	r16, 0x95	; 149
     b8a:	6e 74       	andi	r22, 0x4E	; 78
     b8c:	00 02       	muls	r16, r16
     b8e:	02 07       	cpc	r16, r18
     b90:	87 03       	fmuls	r16, r23
     b92:	00 00       	nop
     b94:	02 04       	cpc	r0, r2
     b96:	05 ed       	ldi	r16, 0xD5	; 213
     b98:	03 00       	.word	0x0003	; ????
     b9a:	00 02       	muls	r16, r16
     b9c:	04 07       	cpc	r16, r20
     b9e:	82 03       	fmuls	r16, r18
     ba0:	00 00       	nop
     ba2:	02 08       	sbc	r0, r2
     ba4:	05 e8       	ldi	r16, 0x85	; 133
     ba6:	03 00       	.word	0x0003	; ????
     ba8:	00 02       	muls	r16, r16
     baa:	08 07       	cpc	r16, r24
     bac:	7d 03       	fmul	r23, r21
     bae:	00 00       	nop
     bb0:	02 01       	movw	r0, r4
     bb2:	06 20       	and	r0, r6
     bb4:	03 00       	.word	0x0003	; ????
     bb6:	00 04       	cpc	r0, r0
     bb8:	01 9c       	mul	r0, r1
     bba:	03 00       	.word	0x0003	; ????
     bbc:	00 01       	movw	r0, r0
     bbe:	08 f8       	.word	0xf808	; ????
     bc0:	01 00       	.word	0x0001	; ????
     bc2:	00 26       	eor	r0, r16
     bc4:	03 00       	.word	0x0003	; ????
     bc6:	00 8f       	std	Z+24, r16	; 0x18
     bc8:	02 00       	.word	0x0002	; ????
     bca:	00 01       	movw	r0, r0
     bcc:	06 02       	muls	r16, r22
     bce:	00 00       	nop
     bd0:	05 e3       	ldi	r16, 0x35	; 53
     bd2:	04 00       	.word	0x0004	; ????
     bd4:	00 01       	movw	r0, r0
     bd6:	0f 06       	cpc	r0, r31
     bd8:	02 00       	.word	0x0002	; ????
     bda:	00 03       	mulsu	r16, r16
     bdc:	8c 81       	ldd	r24, Y+4	; 0x04
     bde:	12 05       	cpc	r17, r2
     be0:	2e 03       	fmul	r18, r22
     be2:	00 00       	nop
     be4:	01 11       	cpse	r16, r1
     be6:	06 02       	muls	r16, r22
     be8:	00 00       	nop
     bea:	03 8c       	ldd	r0, Z+27	; 0x1b
     bec:	81 10       	cpse	r8, r1
     bee:	05 2f       	mov	r16, r21
     bf0:	05 00       	.word	0x0005	; ????
     bf2:	00 01       	movw	r0, r0
     bf4:	12 06       	cpc	r1, r18
     bf6:	02 00       	.word	0x0002	; ????
     bf8:	00 03       	mulsu	r16, r16
     bfa:	8c 81       	ldd	r24, Y+4	; 0x04
     bfc:	0e 06       	cpc	r0, r30
     bfe:	63 00       	.word	0x0063	; ????
     c00:	01 13       	cpse	r16, r17
     c02:	3f 02       	muls	r19, r31
     c04:	00 00       	nop
     c06:	02 8c       	ldd	r0, Z+26	; 0x1a
     c08:	01 07       	cpc	r16, r17
     c0a:	f3 04       	cpc	r15, r3
     c0c:	00 00       	nop
     c0e:	01 16       	cp	r0, r17
     c10:	33 00       	.word	0x0033	; ????
     c12:	00 00       	nop
     c14:	40 07       	cpc	r20, r16
     c16:	3b 05       	cpc	r19, r11
     c18:	00 00       	nop
     c1a:	01 17       	cp	r16, r17
     c1c:	33 00       	.word	0x0033	; ????
     c1e:	00 00       	nop
     c20:	06 07       	cpc	r16, r22
     c22:	50 05       	cpc	r21, r0
     c24:	00 00       	nop
     c26:	01 18       	sub	r0, r1
     c28:	33 00       	.word	0x0033	; ????
     c2a:	00 00       	nop
     c2c:	06 05       	cpc	r16, r6
     c2e:	e8 04       	cpc	r14, r8
     c30:	00 00       	nop
     c32:	01 1b       	sub	r16, r17
     c34:	44 02       	muls	r20, r20
     c36:	00 00       	nop
     c38:	03 8c       	ldd	r0, Z+27	; 0x1b
     c3a:	99 14       	cp	r9, r9
     c3c:	05 4b       	sbci	r16, 0xB5	; 181
     c3e:	05 00       	.word	0x0005	; ????
     c40:	00 01       	movw	r0, r0
     c42:	1c 44       	sbci	r17, 0x4C	; 76
     c44:	02 00       	.word	0x0002	; ????
     c46:	00 03       	mulsu	r16, r16
     c48:	8c 81       	ldd	r24, Y+4	; 0x04
     c4a:	14 08       	sbc	r1, r4
     c4c:	61 00       	.word	0x0061	; ????
     c4e:	01 24       	eor	r0, r1
     c50:	33 00       	.word	0x0033	; ????
     c52:	00 00       	nop
     c54:	03 09       	sbc	r16, r3
     c56:	01 25       	eor	r16, r1
     c58:	03 00       	.word	0x0003	; ????
     c5a:	00 01       	movw	r0, r0
     c5c:	25 33       	cpi	r18, 0x35	; 53
     c5e:	00 00       	nop
     c60:	00 01       	movw	r0, r0
     c62:	15 01       	movw	r2, r10
     c64:	00 00       	nop
     c66:	0a 00       	.word	0x000a	; ????
     c68:	09 01       	movw	r0, r18
     c6a:	0e 03       	fmul	r16, r22
     c6c:	00 00       	nop
     c6e:	01 25       	eor	r16, r1
     c70:	33 00       	.word	0x0033	; ????
     c72:	00 00       	nop
     c74:	01 28       	or	r0, r1
     c76:	01 00       	.word	0x0001	; ????
     c78:	00 0a       	sbc	r0, r16
     c7a:	00 09       	sbc	r16, r0
     c7c:	01 f6       	brne	.-128    	; 0xbfe <__addsf3+0xc>
     c7e:	03 00       	.word	0x0003	; ????
     c80:	00 01       	movw	r0, r0
     c82:	27 33       	cpi	r18, 0x37	; 55
     c84:	00 00       	nop
     c86:	00 01       	movw	r0, r0
     c88:	3b 01       	movw	r6, r22
     c8a:	00 00       	nop
     c8c:	0a 00       	.word	0x000a	; ????
     c8e:	09 01       	movw	r0, r18
     c90:	9f 02       	muls	r25, r31
     c92:	00 00       	nop
     c94:	01 2a       	or	r0, r17
     c96:	33 00       	.word	0x0033	; ????
     c98:	00 00       	nop
     c9a:	01 4e       	sbci	r16, 0xE1	; 225
     c9c:	01 00       	.word	0x0001	; ????
     c9e:	00 0a       	sbc	r0, r16
     ca0:	00 0b       	sbc	r16, r16
     ca2:	ba 02       	muls	r27, r26
     ca4:	00 00       	nop
     ca6:	54 02       	muls	r21, r20
     ca8:	00 00       	nop
     caa:	6a 01       	movw	r12, r20
     cac:	00 00       	nop
     cae:	0c 06       	cpc	r0, r28
     cb0:	68 93       	.word	0x9368	; ????
     cb2:	01 69       	ori	r16, 0x91	; 145
     cb4:	93 01       	movw	r18, r6
     cb6:	05 03       	mulsu	r16, r21
     cb8:	38 01       	movw	r6, r16
     cba:	80 00       	.word	0x0080	; ????
     cbc:	00 0b       	sbc	r16, r16
     cbe:	c2 02       	muls	r28, r18
     cc0:	00 00       	nop
     cc2:	61 02       	muls	r22, r17
     cc4:	00 00       	nop
     cc6:	82 01       	movw	r16, r4
     cc8:	00 00       	nop
     cca:	0c 06       	cpc	r0, r28
     ccc:	68 93       	.word	0x9368	; ????
     cce:	01 69       	ori	r16, 0x91	; 145
     cd0:	93 01       	movw	r18, r6
     cd2:	01 34       	cpi	r16, 0x41	; 65
     cd4:	00 0d       	add	r16, r0
     cd6:	c6 02       	muls	r28, r22
     cd8:	00 00       	nop
     cda:	6e 02       	muls	r22, r30
     cdc:	00 00       	nop
     cde:	0b ee       	ldi	r16, 0xEB	; 235
     ce0:	02 00       	.word	0x0002	; ????
     ce2:	00 7b       	andi	r16, 0xB0	; 176
     ce4:	02 00       	.word	0x0002	; ????
     ce6:	00 fc       	sbrc	r0, 0
     ce8:	01 00       	.word	0x0001	; ????
     cea:	00 0c       	add	r0, r0
     cec:	06 68       	ori	r16, 0x86	; 134
     cee:	93 01       	movw	r18, r6
     cf0:	69 93       	st	Y+, r22
     cf2:	01 02       	muls	r16, r17
     cf4:	76 00       	.word	0x0076	; ????
     cf6:	0c 06       	cpc	r0, r28
     cf8:	66 93       	lac	Z, r22
     cfa:	01 67       	ori	r16, 0x71	; 113
     cfc:	93 01       	movw	r18, r6
     cfe:	02 72       	andi	r16, 0x22	; 34
     d00:	00 0c       	add	r0, r0
     d02:	06 64       	ori	r16, 0x46	; 70
     d04:	93 01       	movw	r18, r6
     d06:	65 93       	las	Z, r22
     d08:	01 02       	muls	r16, r17
     d0a:	74 00       	.word	0x0074	; ????
     d0c:	0c 06       	cpc	r0, r28
     d0e:	62 93       	st	-Z, r22
     d10:	01 63       	ori	r16, 0x31	; 49
     d12:	93 01       	movw	r18, r6
     d14:	02 80       	ldd	r0, Z+2	; 0x02
     d16:	18 0c       	add	r1, r8
     d18:	06 60       	ori	r16, 0x06	; 6
     d1a:	93 01       	movw	r18, r6
     d1c:	61 93       	st	Z+, r22
     d1e:	01 02       	muls	r16, r17
     d20:	80 00       	.word	0x0080	; ????
     d22:	0c 06       	cpc	r0, r28
     d24:	5e 93       	st	-X, r21
     d26:	01 5f       	subi	r16, 0xF1	; 241
     d28:	93 01       	movw	r18, r6
     d2a:	02 7e       	andi	r16, 0xE2	; 226
     d2c:	00 0c       	add	r0, r0
     d2e:	06 5c       	subi	r16, 0xC6	; 198
     d30:	93 01       	movw	r18, r6
     d32:	5d 93       	st	X+, r21
     d34:	01 02       	muls	r16, r17
     d36:	7a 00       	.word	0x007a	; ????
     d38:	0c 06       	cpc	r0, r28
     d3a:	5a 93       	st	-Y, r21
     d3c:	01 5b       	subi	r16, 0xB1	; 177
     d3e:	93 01       	movw	r18, r6
     d40:	02 7a       	andi	r16, 0xA2	; 162
     d42:	00 0c       	add	r0, r0
     d44:	06 58       	subi	r16, 0x86	; 134
     d46:	93 01       	movw	r18, r6
     d48:	59 93       	st	Y+, r21
     d4a:	01 02       	muls	r16, r17
     d4c:	78 00       	.word	0x0078	; ????
     d4e:	00 0d       	add	r16, r0
     d50:	f2 02       	muls	r31, r18
     d52:	00 00       	nop
     d54:	88 02       	muls	r24, r24
     d56:	00 00       	nop
     d58:	00 0e       	add	r0, r16
     d5a:	1d 02       	muls	r17, r29
     d5c:	00 00       	nop
     d5e:	16 02       	muls	r17, r22
     d60:	00 00       	nop
     d62:	0f 16       	cp	r0, r31
     d64:	02 00       	.word	0x0002	; ????
     d66:	00 3f       	cpi	r16, 0xF0	; 240
     d68:	00 02       	muls	r16, r16
     d6a:	02 07       	cpc	r16, r18
     d6c:	c9 03       	fmulsu	r20, r17
     d6e:	00 00       	nop
     d70:	02 04       	cpc	r0, r2
     d72:	04 dd       	rcall	.-1528   	; 0x77c <__LOCK_REGION_LENGTH__+0x37c>
     d74:	04 00       	.word	0x0004	; ????
     d76:	00 0e       	add	r0, r16
     d78:	3a 02       	muls	r19, r26
     d7a:	00 00       	nop
     d7c:	3a 02       	muls	r19, r26
     d7e:	00 00       	nop
     d80:	0f 16       	cp	r0, r31
     d82:	02 00       	.word	0x0002	; ????
     d84:	00 06       	cpc	r0, r16
     d86:	0f 16       	cp	r0, r31
     d88:	02 00       	.word	0x0002	; ????
     d8a:	00 3f       	cpi	r16, 0xF0	; 240
     d8c:	00 10       	cpse	r0, r0
     d8e:	1d 02       	muls	r17, r29
     d90:	00 00       	nop
     d92:	10 24       	eor	r1, r0
     d94:	02 00       	.word	0x0002	; ????
     d96:	00 0e       	add	r0, r16
     d98:	1d 02       	muls	r17, r29
     d9a:	00 00       	nop
     d9c:	54 02       	muls	r21, r20
     d9e:	00 00       	nop
     da0:	0f 16       	cp	r0, r31
     da2:	02 00       	.word	0x0002	; ????
     da4:	00 05       	cpc	r16, r0
     da6:	00 11       	cpse	r16, r0
     da8:	01 01       	movw	r0, r2
     daa:	25 03       	mulsu	r18, r21
     dac:	00 00       	nop
     dae:	25 03       	mulsu	r18, r21
     db0:	00 00       	nop
     db2:	01 25       	eor	r16, r1
     db4:	11 01       	movw	r2, r2
     db6:	01 0e       	add	r0, r17
     db8:	03 00       	.word	0x0003	; ????
     dba:	00 0e       	add	r0, r16
     dbc:	03 00       	.word	0x0003	; ????
     dbe:	00 01       	movw	r0, r0
     dc0:	25 11       	cpse	r18, r5
     dc2:	01 01       	movw	r0, r2
     dc4:	f6 03       	fmuls	r23, r22
     dc6:	00 00       	nop
     dc8:	f6 03       	fmuls	r23, r22
     dca:	00 00       	nop
     dcc:	01 27       	eor	r16, r17
     dce:	11 01       	movw	r2, r2
     dd0:	01 ed       	ldi	r16, 0xD1	; 209
     dd2:	04 00       	.word	0x0004	; ????
     dd4:	00 ed       	ldi	r16, 0xD0	; 208
     dd6:	04 00       	.word	0x0004	; ????
     dd8:	00 02       	muls	r16, r16
     dda:	06 11       	cpse	r16, r6
     ddc:	01 01       	movw	r0, r2
     dde:	9f 02       	muls	r25, r31
     de0:	00 00       	nop
     de2:	9f 02       	muls	r25, r31
     de4:	00 00       	nop
     de6:	01 2a       	or	r0, r17
     de8:	00 00       	nop
     dea:	03 00       	.word	0x0003	; ????
     dec:	00 02       	muls	r16, r16
     dee:	00 fd       	sbrc	r16, 0
     df0:	09 00       	.word	0x0009	; ????
     df2:	00 04       	cpc	r0, r0
     df4:	01 25       	eor	r16, r1
     df6:	04 00       	.word	0x0004	; ????
     df8:	00 0c       	add	r0, r0
     dfa:	6b 05       	cpc	r22, r11
     dfc:	00 00       	nop
     dfe:	a0 00       	.word	0x00a0	; ????
	...
     e08:	00 00       	nop
     e0a:	c0 02       	muls	r28, r16
     e0c:	00 00       	nop
     e0e:	02 04       	cpc	r0, r2
     e10:	04 dd       	rcall	.-1528   	; 0x81a <__LOCK_REGION_LENGTH__+0x41a>
     e12:	04 00       	.word	0x0004	; ????
     e14:	00 02       	muls	r16, r16
     e16:	01 06       	cpc	r0, r17
     e18:	19 03       	fmul	r17, r17
     e1a:	00 00       	nop
     e1c:	02 01       	movw	r0, r4
     e1e:	08 17       	cp	r16, r24
     e20:	03 00       	.word	0x0003	; ????
     e22:	00 03       	mulsu	r16, r16
     e24:	02 05       	cpc	r16, r2
     e26:	69 6e       	ori	r22, 0xE9	; 233
     e28:	74 00       	.word	0x0074	; ????
     e2a:	02 02       	muls	r16, r18
     e2c:	07 87       	std	Z+15, r16	; 0x0f
     e2e:	03 00       	.word	0x0003	; ????
     e30:	00 02       	muls	r16, r16
     e32:	04 05       	cpc	r16, r4
     e34:	ed 03       	fmulsu	r22, r21
     e36:	00 00       	nop
     e38:	02 04       	cpc	r0, r2
     e3a:	07 82       	std	Z+7, r0	; 0x07
     e3c:	03 00       	.word	0x0003	; ????
     e3e:	00 02       	muls	r16, r16
     e40:	08 05       	cpc	r16, r8
     e42:	e8 03       	fmulsu	r22, r16
     e44:	00 00       	nop
     e46:	02 08       	sbc	r0, r2
     e48:	07 7d       	andi	r16, 0xD7	; 215
     e4a:	03 00       	.word	0x0003	; ????
     e4c:	00 02       	muls	r16, r16
     e4e:	01 06       	cpc	r0, r17
     e50:	20 03       	mulsu	r18, r16
     e52:	00 00       	nop
     e54:	04 01       	movw	r0, r8
     e56:	5b 05       	cpc	r21, r11
     e58:	00 00       	nop
     e5a:	01 17       	cp	r16, r17
     e5c:	01 26       	eor	r0, r17
     e5e:	03 00       	.word	0x0003	; ????
     e60:	00 d4       	rcall	.+2048   	; 0x1662 <vfprintf+0x2f0>
     e62:	09 00       	.word	0x0009	; ????
     e64:	00 a7       	std	Z+40, r16	; 0x28
     e66:	03 00       	.word	0x0003	; ????
     e68:	00 01       	movw	r0, r0
     e6a:	07 01       	movw	r0, r14
     e6c:	00 00       	nop
     e6e:	05 e3       	ldi	r16, 0x35	; 53
     e70:	04 00       	.word	0x0004	; ????
     e72:	00 01       	movw	r0, r0
     e74:	17 07       	cpc	r17, r23
     e76:	01 00       	.word	0x0001	; ????
     e78:	00 be       	out	0x30, r0	; 48
     e7a:	04 00       	.word	0x0004	; ????
     e7c:	00 05       	cpc	r16, r0
     e7e:	e8 04       	cpc	r14, r8
     e80:	00 00       	nop
     e82:	01 17       	cp	r16, r17
     e84:	07 01       	movw	r0, r14
     e86:	00 00       	nop
     e88:	f4 04       	cpc	r15, r4
     e8a:	00 00       	nop
     e8c:	05 4b       	sbci	r16, 0xB5	; 181
     e8e:	05 00       	.word	0x0005	; ????
     e90:	00 01       	movw	r0, r0
     e92:	17 07       	cpc	r17, r23
     e94:	01 00       	.word	0x0001	; ????
     e96:	00 26       	eor	r0, r16
     e98:	05 00       	.word	0x0005	; ????
     e9a:	00 06       	cpc	r0, r16
     e9c:	63 6f       	ori	r22, 0xF3	; 243
     e9e:	76 00       	.word	0x0076	; ????
     ea0:	01 17       	cp	r16, r17
     ea2:	07 01       	movw	r0, r14
     ea4:	00 00       	nop
     ea6:	4a 05       	cpc	r20, r10
     ea8:	00 00       	nop
     eaa:	05 f3       	brhs	.-64     	; 0xe6c <__fp_cmp+0x3a>
     eac:	04 00       	.word	0x0004	; ????
     eae:	00 01       	movw	r0, r0
     eb0:	17 3a       	cpi	r17, 0xA7	; 167
     eb2:	00 00       	nop
     eb4:	00 96       	adiw	r24, 0x00	; 0
     eb6:	05 00       	.word	0x0005	; ????
     eb8:	00 05       	cpc	r16, r0
     eba:	3b 05       	cpc	r19, r11
     ebc:	00 00       	nop
     ebe:	01 17       	cp	r16, r17
     ec0:	3a 00       	.word	0x003a	; ????
     ec2:	00 00       	nop
     ec4:	ba 05       	cpc	r27, r10
     ec6:	00 00       	nop
     ec8:	07 69       	ori	r16, 0x97	; 151
     eca:	00 01       	movw	r0, r0
     ecc:	1a 3a       	cpi	r17, 0xAA	; 170
     ece:	00 00       	nop
     ed0:	00 f0       	brcs	.+0      	; 0xed2 <__fp_split3+0x8>
     ed2:	05 00       	.word	0x0005	; ????
     ed4:	00 07       	cpc	r16, r16
     ed6:	6a 00       	.word	0x006a	; ????
     ed8:	01 1a       	sub	r0, r17
     eda:	3a 00       	.word	0x003a	; ????
     edc:	00 00       	nop
     ede:	c4 06       	cpc	r12, r20
     ee0:	00 00       	nop
     ee2:	07 6b       	ori	r16, 0xB7	; 183
     ee4:	00 01       	movw	r0, r0
     ee6:	1a 3a       	cpi	r17, 0xAA	; 170
     ee8:	00 00       	nop
     eea:	00 53       	subi	r16, 0x30	; 48
     eec:	07 00       	.word	0x0007	; ????
     eee:	00 00       	nop
     ef0:	08 02       	muls	r16, r24
     ef2:	25 00       	.word	0x0025	; ????
     ef4:	00 00       	nop
     ef6:	09 01       	movw	r0, r18
     ef8:	a3 05       	cpc	r26, r3
     efa:	00 00       	nop
     efc:	01 63       	ori	r16, 0x31	; 49
     efe:	01 d4       	rcall	.+2050   	; 0x1702 <vfprintf+0x390>
     f00:	09 00       	.word	0x0009	; ????
     f02:	00 7e       	andi	r16, 0xE0	; 224
     f04:	0a 00       	.word	0x000a	; ????
     f06:	00 07       	cpc	r16, r16
     f08:	08 00       	.word	0x0008	; ????
     f0a:	00 01       	movw	r0, r0
     f0c:	8d 01       	movw	r16, r26
     f0e:	00 00       	nop
     f10:	05 e3       	ldi	r16, 0x35	; 53
     f12:	04 00       	.word	0x0004	; ????
     f14:	00 01       	movw	r0, r0
     f16:	63 07       	cpc	r22, r19
     f18:	01 00       	.word	0x0001	; ????
     f1a:	00 6a       	ori	r16, 0xA0	; 160
     f1c:	08 00       	.word	0x0008	; ????
     f1e:	00 0a       	sbc	r0, r16
     f20:	56 05       	cpc	r21, r6
     f22:	00 00       	nop
     f24:	01 63       	ori	r16, 0x31	; 49
     f26:	07 01       	movw	r0, r14
     f28:	00 00       	nop
     f2a:	06 66       	ori	r16, 0x66	; 102
     f2c:	93 01       	movw	r18, r6
     f2e:	67 93       	lat	Z, r22
     f30:	01 05       	cpc	r16, r1
     f32:	f3 04       	cpc	r15, r3
     f34:	00 00       	nop
     f36:	01 63       	ori	r16, 0x31	; 49
     f38:	3a 00       	.word	0x003a	; ????
     f3a:	00 00       	nop
     f3c:	90 08       	sbc	r9, r0
     f3e:	00 00       	nop
     f40:	0b e0       	ldi	r16, 0x0B	; 11
     f42:	09 00       	.word	0x0009	; ????
     f44:	00 1e       	adc	r0, r16
     f46:	0a 00       	.word	0x000a	; ????
     f48:	00 72       	andi	r16, 0x20	; 32
     f4a:	01 00       	.word	0x0001	; ????
     f4c:	00 07       	cpc	r16, r16
     f4e:	69 00       	.word	0x0069	; ????
     f50:	01 65       	ori	r16, 0x51	; 81
     f52:	3a 00       	.word	0x003a	; ????
     f54:	00 00       	nop
     f56:	c8 08       	sbc	r12, r8
     f58:	00 00       	nop
     f5a:	00 0c       	add	r0, r0
     f5c:	1e 0a       	sbc	r1, r30
     f5e:	00 00       	nop
     f60:	70 0a       	sbc	r7, r16
     f62:	00 00       	nop
     f64:	0d 69       	ori	r16, 0x9D	; 157
     f66:	00 01       	movw	r0, r0
     f68:	68 3a       	cpi	r22, 0xA8	; 168
     f6a:	00 00       	nop
     f6c:	00 06       	cpc	r0, r16
     f6e:	6a 93       	st	-Y, r22
     f70:	01 6b       	ori	r16, 0xB1	; 177
     f72:	93 01       	movw	r18, r6
     f74:	00 00       	nop
     f76:	04 01       	movw	r0, r8
     f78:	ed 04       	cpc	r14, r13
     f7a:	00 00       	nop
     f7c:	01 80       	ldd	r0, Z+1	; 0x01
     f7e:	01 7e       	andi	r16, 0xE1	; 225
     f80:	0a 00       	.word	0x000a	; ????
     f82:	00 f0       	brcs	.+0      	; 0xf84 <__mulsf3_pse+0x3c>
     f84:	0b 00       	.word	0x000b	; ????
     f86:	00 ec       	ldi	r16, 0xC0	; 192
     f88:	08 00       	.word	0x0008	; ????
     f8a:	00 01       	movw	r0, r0
     f8c:	d8 02       	muls	r29, r24
     f8e:	00 00       	nop
     f90:	05 65       	ori	r16, 0x55	; 85
     f92:	05 00       	.word	0x0005	; ????
     f94:	00 01       	movw	r0, r0
     f96:	80 07       	cpc	r24, r16
     f98:	01 00       	.word	0x0001	; ????
     f9a:	00 03       	mulsu	r16, r16
     f9c:	0a 00       	.word	0x000a	; ????
     f9e:	00 05       	cpc	r16, r0
     fa0:	34 05       	cpc	r19, r4
     fa2:	00 00       	nop
     fa4:	01 80       	ldd	r0, Z+1	; 0x01
     fa6:	07 01       	movw	r0, r14
     fa8:	00 00       	nop
     faa:	29 0a       	sbc	r2, r25
     fac:	00 00       	nop
     fae:	05 2e       	mov	r0, r21
     fb0:	03 00       	.word	0x0003	; ????
     fb2:	00 01       	movw	r0, r0
     fb4:	80 07       	cpc	r24, r16
     fb6:	01 00       	.word	0x0001	; ????
     fb8:	00 4f       	sbci	r16, 0xF0	; 240
     fba:	0a 00       	.word	0x000a	; ????
     fbc:	00 05       	cpc	r16, r0
     fbe:	e8 04       	cpc	r14, r8
     fc0:	00 00       	nop
     fc2:	01 80       	ldd	r0, Z+1	; 0x01
     fc4:	07 01       	movw	r0, r14
     fc6:	00 00       	nop
     fc8:	73 0a       	sbc	r7, r19
     fca:	00 00       	nop
     fcc:	05 4b       	sbci	r16, 0xB5	; 181
     fce:	05 00       	.word	0x0005	; ????
     fd0:	00 01       	movw	r0, r0
     fd2:	81 07       	cpc	r24, r17
     fd4:	01 00       	.word	0x0001	; ????
     fd6:	00 97       	sbiw	r24, 0x00	; 0
     fd8:	0a 00       	.word	0x000a	; ????
     fda:	00 05       	cpc	r16, r0
     fdc:	f3 04       	cpc	r15, r3
     fde:	00 00       	nop
     fe0:	01 81       	ldd	r16, Z+1	; 0x01
     fe2:	3a 00       	.word	0x003a	; ????
     fe4:	00 00       	nop
     fe6:	bb 0a       	sbc	r11, r27
     fe8:	00 00       	nop
     fea:	05 3b       	cpi	r16, 0xB5	; 181
     fec:	05 00       	.word	0x0005	; ????
     fee:	00 01       	movw	r0, r0
     ff0:	81 3a       	cpi	r24, 0xA1	; 161
     ff2:	00 00       	nop
     ff4:	00 f3       	brcs	.-64     	; 0xfb6 <__mulsf3_pse+0x6e>
     ff6:	0a 00       	.word	0x000a	; ????
     ff8:	00 05       	cpc	r16, r0
     ffa:	50 05       	cpc	r21, r0
     ffc:	00 00       	nop
     ffe:	01 81       	ldd	r16, Z+1	; 0x01
    1000:	3a 00       	.word	0x003a	; ????
    1002:	00 00       	nop
    1004:	17 0b       	sbc	r17, r23
    1006:	00 00       	nop
    1008:	06 63       	ori	r16, 0x36	; 54
    100a:	00 01       	movw	r0, r0
    100c:	81 ef       	ldi	r24, 0xF1	; 241
    100e:	02 00       	.word	0x0002	; ????
    1010:	00 3b       	cpi	r16, 0xB0	; 176
    1012:	0b 00       	.word	0x000b	; ????
    1014:	00 07       	cpc	r16, r16
    1016:	69 00       	.word	0x0069	; ????
    1018:	01 83       	std	Z+1, r16	; 0x01
    101a:	3a 00       	.word	0x003a	; ????
    101c:	00 00       	nop
    101e:	61 0b       	sbc	r22, r17
    1020:	00 00       	nop
    1022:	07 6b       	ori	r16, 0xB7	; 183
    1024:	00 01       	movw	r0, r0
    1026:	83 3a       	cpi	r24, 0xA3	; 163
    1028:	00 00       	nop
    102a:	00 95       	com	r16
    102c:	0b 00       	.word	0x000b	; ????
    102e:	00 0e       	add	r0, r16
    1030:	20 0b       	sbc	r18, r16
    1032:	00 00       	nop
    1034:	6b 00       	.word	0x006b	; ????
    1036:	00 00       	nop
    1038:	91 02       	muls	r25, r17
    103a:	00 00       	nop
    103c:	0f 06       	cpc	r0, r31
    103e:	66 93       	lac	Z, r22
    1040:	01 67       	ori	r16, 0x71	; 113
    1042:	93 01       	movw	r18, r6
    1044:	04 91       	lpm	r16, Z
    1046:	65 94       	asr	r6
    1048:	02 0f       	add	r16, r18
    104a:	06 64       	ori	r16, 0x46	; 70
    104c:	93 01       	movw	r18, r6
    104e:	65 93       	las	Z, r22
    1050:	01 04       	cpc	r0, r1
    1052:	91 67       	ori	r25, 0x71	; 113
    1054:	94 02       	muls	r25, r20
    1056:	0f 06       	cpc	r0, r31
    1058:	62 93       	st	-Z, r22
    105a:	01 63       	ori	r16, 0x31	; 49
    105c:	93 01       	movw	r18, r6
    105e:	04 91       	lpm	r16, Z
    1060:	63 94       	inc	r6
    1062:	02 0f       	add	r16, r18
    1064:	06 60       	ori	r16, 0x06	; 6
    1066:	93 01       	movw	r18, r6
    1068:	61 93       	st	Z+, r22
    106a:	01 02       	muls	r16, r17
    106c:	76 00       	.word	0x0076	; ????
    106e:	0f 06       	cpc	r0, r31
    1070:	5e 93       	st	-X, r21
    1072:	01 5f       	subi	r16, 0xF1	; 241
    1074:	93 01       	movw	r18, r6
    1076:	02 7e       	andi	r16, 0xE2	; 226
    1078:	00 00       	nop
    107a:	0e 2e       	mov	r0, r30
    107c:	0b 00       	.word	0x000b	; ????
    107e:	00 0d       	add	r16, r0
    1080:	01 00       	.word	0x0001	; ????
    1082:	00 b7       	in	r16, 0x30	; 48
    1084:	02 00       	.word	0x0002	; ????
    1086:	00 0f       	add	r16, r16
    1088:	06 68       	ori	r16, 0x86	; 134
    108a:	93 01       	movw	r18, r6
    108c:	69 93       	st	Y+, r22
    108e:	01 04       	cpc	r0, r1
    1090:	91 63       	ori	r25, 0x31	; 49
    1092:	94 02       	muls	r25, r20
    1094:	0f 06       	cpc	r0, r31
    1096:	64 93       	xch	Z, r22
    1098:	01 65       	ori	r16, 0x51	; 81
    109a:	93 01       	movw	r18, r6
    109c:	02 76       	andi	r16, 0x62	; 98
    109e:	00 00       	nop
    10a0:	10 4c       	sbci	r17, 0xC0	; 192
    10a2:	0b 00       	.word	0x000b	; ????
    10a4:	00 f5       	brcc	.+64     	; 0x10e6 <exp+0x40>
    10a6:	02 00       	.word	0x0002	; ????
    10a8:	00 0f       	add	r16, r16
    10aa:	0c 66       	ori	r16, 0x6C	; 108
    10ac:	93 01       	movw	r18, r6
    10ae:	67 93       	lat	Z, r22
    10b0:	01 68       	ori	r16, 0x81	; 129
    10b2:	93 01       	movw	r18, r6
    10b4:	69 93       	st	Y+, r22
    10b6:	01 07       	cpc	r16, r17
    10b8:	f4 25       	eor	r31, r4
    10ba:	04 00       	.word	0x0004	; ????
    10bc:	00 00       	nop
    10be:	40 00       	.word	0x0040	; ????
    10c0:	00 11       	cpse	r16, r0
    10c2:	25 00       	.word	0x0025	; ????
    10c4:	00 00       	nop
    10c6:	e8 02       	muls	r30, r24
    10c8:	00 00       	nop
    10ca:	12 e8       	ldi	r17, 0x82	; 130
    10cc:	02 00       	.word	0x0002	; ????
    10ce:	00 3f       	cpi	r16, 0xF0	; 240
    10d0:	00 02       	muls	r16, r16
    10d2:	02 07       	cpc	r16, r18
    10d4:	c9 03       	fmulsu	r20, r17
    10d6:	00 00       	nop
    10d8:	08 02       	muls	r16, r24
    10da:	d8 02       	muls	r29, r24
    10dc:	00 00       	nop
    10de:	13 01       	movw	r2, r6
    10e0:	01 70       	andi	r16, 0x01	; 1
    10e2:	6f 77       	andi	r22, 0x7F	; 127
    10e4:	00 70       	andi	r16, 0x00	; 0
    10e6:	6f 77       	andi	r22, 0x7F	; 127
    10e8:	00 02       	muls	r16, r16
    10ea:	3d 01       	movw	r6, r26
	...

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
 936:	03 24       	eor	r0, r3
 938:	00 0b       	sbc	r16, r16
 93a:	0b 3e       	cpi	r16, 0xEB	; 235
 93c:	0b 03       	fmul	r16, r19
 93e:	08 00       	.word	0x0008	; ????
 940:	00 04       	cpc	r0, r0
 942:	2e 01       	movw	r4, r28
 944:	3f 0c       	add	r3, r15
 946:	03 0e       	add	r0, r19
 948:	3a 0b       	sbc	r19, r26
 94a:	3b 0b       	sbc	r19, r27
 94c:	11 01       	movw	r2, r2
 94e:	12 01       	movw	r2, r4
 950:	40 06       	cpc	r4, r16
 952:	97 42       	sbci	r25, 0x27	; 39
 954:	0c 01       	movw	r0, r24
 956:	13 00       	.word	0x0013	; ????
 958:	00 05       	cpc	r16, r0
 95a:	34 00       	.word	0x0034	; ????
 95c:	03 0e       	add	r0, r19
 95e:	3a 0b       	sbc	r19, r26
 960:	3b 0b       	sbc	r19, r27
 962:	49 13       	cpse	r20, r25
 964:	02 0a       	sbc	r0, r18
 966:	00 00       	nop
 968:	06 34       	cpi	r16, 0x46	; 70
 96a:	00 03       	mulsu	r16, r16
 96c:	08 3a       	cpi	r16, 0xA8	; 168
 96e:	0b 3b       	cpi	r16, 0xBB	; 187
 970:	0b 49       	sbci	r16, 0x9B	; 155
 972:	13 02       	muls	r17, r19
 974:	0a 00       	.word	0x000a	; ????
 976:	00 07       	cpc	r16, r16
 978:	34 00       	.word	0x0034	; ????
 97a:	03 0e       	add	r0, r19
 97c:	3a 0b       	sbc	r19, r26
 97e:	3b 0b       	sbc	r19, r27
 980:	49 13       	cpse	r20, r25
 982:	1c 0b       	sbc	r17, r28
 984:	00 00       	nop
 986:	08 34       	cpi	r16, 0x48	; 72
 988:	00 03       	mulsu	r16, r16
 98a:	08 3a       	cpi	r16, 0xA8	; 168
 98c:	0b 3b       	cpi	r16, 0xBB	; 187
 98e:	0b 49       	sbci	r16, 0x9B	; 155
 990:	13 1c       	adc	r1, r3
 992:	0b 00       	.word	0x000b	; ????
 994:	00 09       	sbc	r16, r0
 996:	2e 01       	movw	r4, r28
 998:	3f 0c       	add	r3, r15
 99a:	03 0e       	add	r0, r19
 99c:	3a 0b       	sbc	r19, r26
 99e:	3b 0b       	sbc	r19, r27
 9a0:	49 13       	cpse	r20, r25
 9a2:	3c 0c       	add	r3, r12
 9a4:	01 13       	cpse	r16, r17
 9a6:	00 00       	nop
 9a8:	0a 18       	sub	r0, r10
 9aa:	00 00       	nop
 9ac:	00 0b       	sbc	r16, r16
 9ae:	89 82       	std	Y+1, r8	; 0x01
 9b0:	01 01       	movw	r0, r2
 9b2:	11 01       	movw	r2, r2
 9b4:	31 13       	cpse	r19, r17
 9b6:	01 13       	cpse	r16, r17
 9b8:	00 00       	nop
 9ba:	0c 8a       	std	Y+20, r0	; 0x14
 9bc:	82 01       	movw	r16, r4
 9be:	00 02       	muls	r16, r16
 9c0:	0a 91       	ld	r16, -Y
 9c2:	42 0a       	sbc	r4, r18
 9c4:	00 00       	nop
 9c6:	0d 89       	ldd	r16, Y+21	; 0x15
 9c8:	82 01       	movw	r16, r4
 9ca:	00 11       	cpse	r16, r0
 9cc:	01 31       	cpi	r16, 0x11	; 17
 9ce:	13 00       	.word	0x0013	; ????
 9d0:	00 0e       	add	r0, r16
 9d2:	01 01       	movw	r0, r2
 9d4:	49 13       	cpse	r20, r25
 9d6:	01 13       	cpse	r16, r17
 9d8:	00 00       	nop
 9da:	0f 21       	and	r16, r15
 9dc:	00 49       	sbci	r16, 0x90	; 144
 9de:	13 2f       	mov	r17, r19
 9e0:	0b 00       	.word	0x000b	; ????
 9e2:	00 10       	cpse	r0, r0
 9e4:	35 00       	.word	0x0035	; ????
 9e6:	49 13       	cpse	r20, r25
 9e8:	00 00       	nop
 9ea:	11 2e       	mov	r1, r17
 9ec:	00 3f       	cpi	r16, 0xF0	; 240
 9ee:	0c 3c       	cpi	r16, 0xCC	; 204
 9f0:	0c 87       	std	Y+12, r16	; 0x0c
 9f2:	40 0e       	add	r4, r16
 9f4:	03 0e       	add	r0, r19
 9f6:	3a 0b       	sbc	r19, r26
 9f8:	3b 0b       	sbc	r19, r27
 9fa:	00 00       	nop
 9fc:	00 01       	movw	r0, r0
 9fe:	11 01       	movw	r2, r2
 a00:	25 0e       	add	r2, r21
 a02:	13 0b       	sbc	r17, r19
 a04:	03 0e       	add	r0, r19
 a06:	55 06       	cpc	r5, r21
 a08:	11 01       	movw	r2, r2
 a0a:	52 01       	movw	r10, r4
 a0c:	10 06       	cpc	r1, r16
 a0e:	00 00       	nop
 a10:	02 24       	eor	r0, r2
 a12:	00 0b       	sbc	r16, r16
 a14:	0b 3e       	cpi	r16, 0xEB	; 235
 a16:	0b 03       	fmul	r16, r19
 a18:	0e 00       	.word	0x000e	; ????
 a1a:	00 03       	mulsu	r16, r16
 a1c:	24 00       	.word	0x0024	; ????
 a1e:	0b 0b       	sbc	r16, r27
 a20:	3e 0b       	sbc	r19, r30
 a22:	03 08       	sbc	r0, r3
 a24:	00 00       	nop
 a26:	04 2e       	mov	r0, r20
 a28:	01 3f       	cpi	r16, 0xF1	; 241
 a2a:	0c 03       	fmul	r16, r20
 a2c:	0e 3a       	cpi	r16, 0xAE	; 174
 a2e:	0b 3b       	cpi	r16, 0xBB	; 187
 a30:	0b 27       	eor	r16, r27
 a32:	0c 11       	cpse	r16, r12
 a34:	01 12       	cpse	r0, r17
 a36:	01 40       	sbci	r16, 0x01	; 1
 a38:	06 96       	adiw	r24, 0x06	; 6
 a3a:	42 0c       	add	r4, r2
 a3c:	01 13       	cpse	r16, r17
 a3e:	00 00       	nop
 a40:	05 05       	cpc	r16, r5
 a42:	00 03       	mulsu	r16, r16
 a44:	0e 3a       	cpi	r16, 0xAE	; 174
 a46:	0b 3b       	cpi	r16, 0xBB	; 187
 a48:	0b 49       	sbci	r16, 0x9B	; 155
 a4a:	13 02       	muls	r17, r19
 a4c:	06 00       	.word	0x0006	; ????
 a4e:	00 06       	cpc	r0, r16
 a50:	05 00       	.word	0x0005	; ????
 a52:	03 08       	sbc	r0, r3
 a54:	3a 0b       	sbc	r19, r26
 a56:	3b 0b       	sbc	r19, r27
 a58:	49 13       	cpse	r20, r25
 a5a:	02 06       	cpc	r0, r18
 a5c:	00 00       	nop
 a5e:	07 34       	cpi	r16, 0x47	; 71
 a60:	00 03       	mulsu	r16, r16
 a62:	08 3a       	cpi	r16, 0xA8	; 168
 a64:	0b 3b       	cpi	r16, 0xBB	; 187
 a66:	0b 49       	sbci	r16, 0x9B	; 155
 a68:	13 02       	muls	r17, r19
 a6a:	06 00       	.word	0x0006	; ????
 a6c:	00 08       	sbc	r0, r0
 a6e:	0f 00       	.word	0x000f	; ????
 a70:	0b 0b       	sbc	r16, r27
 a72:	49 13       	cpse	r20, r25
 a74:	00 00       	nop
 a76:	09 2e       	mov	r0, r25
 a78:	01 3f       	cpi	r16, 0xF1	; 241
 a7a:	0c 03       	fmul	r16, r20
 a7c:	0e 3a       	cpi	r16, 0xAE	; 174
 a7e:	0b 3b       	cpi	r16, 0xBB	; 187
 a80:	0b 27       	eor	r16, r27
 a82:	0c 11       	cpse	r16, r12
 a84:	01 12       	cpse	r0, r17
 a86:	01 40       	sbci	r16, 0x01	; 1
 a88:	06 97       	sbiw	r24, 0x06	; 6
 a8a:	42 0c       	add	r4, r2
 a8c:	01 13       	cpse	r16, r17
 a8e:	00 00       	nop
 a90:	0a 05       	cpc	r16, r10
 a92:	00 03       	mulsu	r16, r16
 a94:	0e 3a       	cpi	r16, 0xAE	; 174
 a96:	0b 3b       	cpi	r16, 0xBB	; 187
 a98:	0b 49       	sbci	r16, 0x9B	; 155
 a9a:	13 02       	muls	r17, r19
 a9c:	0a 00       	.word	0x000a	; ????
 a9e:	00 0b       	sbc	r16, r16
 aa0:	0b 01       	movw	r0, r22
 aa2:	11 01       	movw	r2, r2
 aa4:	12 01       	movw	r2, r4
 aa6:	01 13       	cpse	r16, r17
 aa8:	00 00       	nop
 aaa:	0c 0b       	sbc	r16, r28
 aac:	01 11       	cpse	r16, r1
 aae:	01 12       	cpse	r0, r17
 ab0:	01 00       	.word	0x0001	; ????
 ab2:	00 0d       	add	r16, r0
 ab4:	34 00       	.word	0x0034	; ????
 ab6:	03 08       	sbc	r0, r3
 ab8:	3a 0b       	sbc	r19, r26
 aba:	3b 0b       	sbc	r19, r27
 abc:	49 13       	cpse	r20, r25
 abe:	02 0a       	sbc	r0, r18
 ac0:	00 00       	nop
 ac2:	0e 89       	ldd	r16, Y+22	; 0x16
 ac4:	82 01       	movw	r16, r4
 ac6:	01 11       	cpse	r16, r1
 ac8:	01 31       	cpi	r16, 0x11	; 17
 aca:	13 01       	movw	r2, r6
 acc:	13 00       	.word	0x0013	; ????
 ace:	00 0f       	add	r16, r16
 ad0:	8a 82       	std	Y+2, r8	; 0x02
 ad2:	01 00       	.word	0x0001	; ????
 ad4:	02 0a       	sbc	r0, r18
 ad6:	91 42       	sbci	r25, 0x21	; 33
 ad8:	0a 00       	.word	0x000a	; ????
 ada:	00 10       	cpse	r0, r0
 adc:	89 82       	std	Y+1, r8	; 0x01
 ade:	01 01       	movw	r0, r2
 ae0:	11 01       	movw	r2, r2
 ae2:	31 13       	cpse	r19, r17
 ae4:	00 00       	nop
 ae6:	11 01       	movw	r2, r2
 ae8:	01 49       	sbci	r16, 0x91	; 145
 aea:	13 01       	movw	r2, r6
 aec:	13 00       	.word	0x0013	; ????
 aee:	00 12       	cpse	r0, r16
 af0:	21 00       	.word	0x0021	; ????
 af2:	49 13       	cpse	r20, r25
 af4:	2f 0b       	sbc	r18, r31
 af6:	00 00       	nop
 af8:	13 2e       	mov	r1, r19
 afa:	00 3f       	cpi	r16, 0xF0	; 240
 afc:	0c 3c       	cpi	r16, 0xCC	; 204
 afe:	0c 87       	std	Y+12, r16	; 0x0c
 b00:	40 08       	sbc	r4, r0
 b02:	03 08       	sbc	r0, r3
 b04:	3a 0b       	sbc	r19, r26
 b06:	3b 05       	cpc	r19, r11
 b08:	00 00       	nop
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
 106:	02 50       	subi	r16, 0x02	; 2
 108:	01 00       	.word	0x0001	; ????
 10a:	00 16       	cp	r0, r16
 10c:	04 02       	muls	r16, r20
 10e:	03 d6       	rcall	.+3078   	; 0xd16 <__divsf3_pse+0x14>
 110:	00 09       	sbc	r16, r0
 112:	02 00       	.word	0x0002	; ????
 114:	01 04       	cpc	r0, r1
 116:	01 00       	.word	0x0001	; ????
 118:	02 04       	cpc	r0, r2
 11a:	01 03       	mulsu	r16, r17
 11c:	ac 7f       	andi	r26, 0xFC	; 252
 11e:	09 04       	cpc	r0, r9
 120:	00 01       	movw	r0, r0
 122:	03 01       	movw	r0, r6
 124:	09 06       	cpc	r0, r25
 126:	00 01       	movw	r0, r0
 128:	04 02       	muls	r16, r20
 12a:	03 d3       	rcall	.+1542   	; 0x732 <__LOCK_REGION_LENGTH__+0x332>
 12c:	00 09       	sbc	r16, r0
 12e:	04 00       	.word	0x0004	; ????
 130:	01 03       	mulsu	r16, r17
 132:	04 09       	sbc	r16, r4
 134:	06 00       	.word	0x0006	; ????
 136:	01 03       	mulsu	r16, r17
 138:	7c 09       	sbc	r23, r12
 13a:	04 00       	.word	0x0004	; ????
 13c:	01 04       	cpc	r0, r1
 13e:	01 03       	mulsu	r16, r17
 140:	b3 7f       	andi	r27, 0xF3	; 243
 142:	09 06       	cpc	r0, r25
 144:	00 01       	movw	r0, r0
 146:	09 02       	muls	r16, r25
 148:	00 00       	nop
 14a:	01 01       	movw	r0, r2
 14c:	00 05       	cpc	r16, r0
 14e:	02 72       	andi	r16, 0x22	; 34
 150:	01 00       	.word	0x0001	; ????
 152:	00 03       	mulsu	r16, r16
 154:	13 01       	movw	r2, r6
 156:	03 02       	muls	r16, r19
 158:	09 02       	muls	r16, r25
 15a:	00 01       	movw	r0, r0
 15c:	03 01       	movw	r0, r6
 15e:	09 0e       	add	r0, r25
 160:	00 01       	movw	r0, r0
 162:	09 08       	sbc	r0, r9
 164:	00 00       	nop
 166:	01 01       	movw	r0, r2
 168:	00 05       	cpc	r16, r0
 16a:	02 8a       	std	Z+18, r0	; 0x12
 16c:	01 00       	.word	0x0001	; ????
 16e:	00 03       	mulsu	r16, r16
 170:	1a 01       	movw	r2, r20
 172:	03 04       	cpc	r0, r3
 174:	09 16       	cp	r0, r25
 176:	00 01       	movw	r0, r0
 178:	03 02       	muls	r16, r19
 17a:	09 04       	cpc	r0, r9
 17c:	00 01       	movw	r0, r0
 17e:	09 06       	cpc	r0, r25
 180:	00 00       	nop
 182:	01 01       	movw	r0, r2
 184:	00 05       	cpc	r16, r0
 186:	02 aa       	std	Z+50, r0	; 0x32
 188:	01 00       	.word	0x0001	; ????
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
 19e:	02 b2       	in	r0, 0x12	; 18
 1a0:	01 00       	.word	0x0001	; ????
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
 1b6:	02 b8       	out	0x02, r0	; 2
 1b8:	01 00       	.word	0x0001	; ????
 1ba:	00 03       	mulsu	r16, r16
 1bc:	c1 00       	.word	0x00c1	; ????
 1be:	01 03       	mulsu	r16, r17
 1c0:	01 09       	sbc	r16, r1
 1c2:	00 00       	nop
 1c4:	01 03       	mulsu	r16, r17
 1c6:	01 09       	sbc	r16, r1
 1c8:	10 00       	.word	0x0010	; ????
 1ca:	01 09       	sbc	r16, r1
 1cc:	0a 00       	.word	0x000a	; ????
 1ce:	00 01       	movw	r0, r0
 1d0:	01 00       	.word	0x0001	; ????
 1d2:	05 02       	muls	r16, r21
 1d4:	d2 01       	movw	r26, r4
 1d6:	00 00       	nop
 1d8:	03 c5       	rjmp	.+2566   	; 0xbe0 <DWT1D+0x162>
 1da:	00 01       	movw	r0, r0
 1dc:	03 01       	movw	r0, r6
 1de:	09 00       	.word	0x0009	; ????
 1e0:	00 01       	movw	r0, r0
 1e2:	03 01       	movw	r0, r6
 1e4:	09 10       	cpse	r0, r9
 1e6:	00 01       	movw	r0, r0
 1e8:	09 0a       	sbc	r0, r25
 1ea:	00 00       	nop
 1ec:	01 01       	movw	r0, r2
 1ee:	00 05       	cpc	r16, r0
 1f0:	02 ec       	ldi	r16, 0xC2	; 194
 1f2:	01 00       	.word	0x0001	; ????
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
 210:	01 ab       	std	Z+49, r16	; 0x31
 212:	00 00       	nop
 214:	00 02       	muls	r16, r16
 216:	00 55       	subi	r16, 0x50	; 80
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
 24e:	2d 77       	andi	r18, 0x7D	; 125
 250:	61 76       	andi	r22, 0x61	; 97
 252:	65 6c       	ori	r22, 0xC5	; 197
 254:	65 74       	andi	r22, 0x45	; 69
 256:	00 00       	nop
 258:	6d 61       	ori	r22, 0x1D	; 29
 25a:	69 6e       	ori	r22, 0xE9	; 233
 25c:	2e 63       	ori	r18, 0x3E	; 62
 25e:	00 01       	movw	r0, r0
 260:	00 00       	nop
 262:	77 61       	ori	r23, 0x17	; 23
 264:	76 65       	ori	r23, 0x56	; 86
 266:	6c 65       	ori	r22, 0x5C	; 92
 268:	74 2e       	mov	r7, r20
 26a:	68 00       	.word	0x0068	; ????
 26c:	01 00       	.word	0x0001	; ????
 26e:	00 00       	nop
 270:	00 05       	cpc	r16, r0
 272:	02 f8       	bld	r0, 2
 274:	01 00       	.word	0x0001	; ????
 276:	00 17       	cp	r16, r16
 278:	03 06       	cpc	r0, r19
 27a:	09 36       	cpi	r16, 0x69	; 105
 27c:	00 01       	movw	r0, r0
 27e:	03 02       	muls	r16, r19
 280:	09 1a       	sub	r0, r25
 282:	00 01       	movw	r0, r0
 284:	03 01       	movw	r0, r6
 286:	09 16       	cp	r0, r25
 288:	00 01       	movw	r0, r0
 28a:	03 01       	movw	r0, r6
 28c:	09 16       	cp	r0, r25
 28e:	00 01       	movw	r0, r0
 290:	03 08       	sbc	r0, r3
 292:	09 16       	cp	r0, r25
 294:	00 01       	movw	r0, r0
 296:	03 01       	movw	r0, r6
 298:	09 14       	cp	r0, r9
 29a:	00 01       	movw	r0, r0
 29c:	03 09       	sbc	r16, r3
 29e:	09 14       	cp	r0, r9
 2a0:	00 01       	movw	r0, r0
 2a2:	03 02       	muls	r16, r19
 2a4:	09 10       	cpse	r0, r9
 2a6:	00 01       	movw	r0, r0
 2a8:	03 02       	muls	r16, r19
 2aa:	09 04       	cpc	r0, r9
 2ac:	00 01       	movw	r0, r0
 2ae:	03 01       	movw	r0, r6
 2b0:	09 28       	or	r0, r9
 2b2:	00 01       	movw	r0, r0
 2b4:	03 1f       	adc	r16, r19
 2b6:	09 04       	cpc	r0, r9
 2b8:	00 01       	movw	r0, r0
 2ba:	09 34       	cpi	r16, 0x49	; 73
 2bc:	00 00       	nop
 2be:	01 01       	movw	r0, r2
 2c0:	7c 03       	fmul	r23, r20
 2c2:	00 00       	nop
 2c4:	02 00       	.word	0x0002	; ????
 2c6:	6a 00       	.word	0x006a	; ????
 2c8:	00 00       	nop
 2ca:	02 01       	movw	r0, r4
 2cc:	fb 0e       	add	r15, r27
 2ce:	0a 00       	.word	0x000a	; ????
 2d0:	01 01       	movw	r0, r2
 2d2:	01 01       	movw	r0, r2
 2d4:	00 00       	nop
 2d6:	00 01       	movw	r0, r0
 2d8:	2f 68       	ori	r18, 0x8F	; 143
 2da:	6f 6d       	ori	r22, 0xDF	; 223
 2dc:	65 2f       	mov	r22, r21
 2de:	66 61       	ori	r22, 0x16	; 22
 2e0:	6e 68       	ori	r22, 0x8E	; 142
 2e2:	63 2f       	mov	r22, r19
 2e4:	77 61       	ori	r23, 0x17	; 23
 2e6:	73 6d       	ori	r23, 0xD3	; 211
 2e8:	2d 61       	ori	r18, 0x1D	; 29
 2ea:	6f 74       	andi	r22, 0x4F	; 79
 2ec:	2f 61       	ori	r18, 0x1F	; 31
 2ee:	70 70       	andi	r23, 0x00	; 0
 2f0:	2f 62       	ori	r18, 0x2F	; 47
 2f2:	65 6e       	ori	r22, 0xE5	; 229
 2f4:	63 68       	ori	r22, 0x83	; 131
 2f6:	6d 61       	ori	r22, 0x1D	; 29
 2f8:	72 6b       	ori	r23, 0xB2	; 178
 2fa:	2f 62       	ori	r18, 0x2F	; 47
 2fc:	6d 2d       	mov	r22, r13
 2fe:	77 61       	ori	r23, 0x17	; 23
 300:	76 65       	ori	r23, 0x56	; 86
 302:	6c 65       	ori	r22, 0x5C	; 92
 304:	74 00       	.word	0x0074	; ????
 306:	2f 75       	andi	r18, 0x5F	; 95
 308:	73 72       	andi	r23, 0x23	; 35
 30a:	2f 6c       	ori	r18, 0xCF	; 207
 30c:	69 62       	ori	r22, 0x29	; 41
 30e:	2f 61       	ori	r18, 0x1F	; 31
 310:	76 72       	andi	r23, 0x26	; 38
 312:	2f 69       	ori	r18, 0x9F	; 159
 314:	6e 63       	ori	r22, 0x3E	; 62
 316:	6c 75       	andi	r22, 0x5C	; 92
 318:	64 65       	ori	r22, 0x54	; 84
 31a:	00 00       	nop
 31c:	77 61       	ori	r23, 0x17	; 23
 31e:	76 65       	ori	r23, 0x56	; 86
 320:	6c 65       	ori	r22, 0x5C	; 92
 322:	74 2e       	mov	r7, r20
 324:	63 00       	.word	0x0063	; ????
 326:	01 00       	.word	0x0001	; ????
 328:	00 6d       	ori	r16, 0xD0	; 208
 32a:	61 74       	andi	r22, 0x41	; 65
 32c:	68 2e       	mov	r6, r24
 32e:	68 00       	.word	0x0068	; ????
 330:	02 00       	.word	0x0002	; ????
 332:	00 00       	nop
 334:	00 05       	cpc	r16, r0
 336:	02 26       	eor	r0, r18
 338:	03 00       	.word	0x0003	; ????
 33a:	00 03       	mulsu	r16, r16
 33c:	18 01       	movw	r2, r16
 33e:	03 03       	mulsu	r16, r19
 340:	09 4c       	sbci	r16, 0xC9	; 201
 342:	00 01       	movw	r0, r0
 344:	00 02       	muls	r16, r16
 346:	04 01       	movw	r0, r8
 348:	06 03       	mulsu	r16, r22
 34a:	00 09       	sbc	r16, r0
 34c:	06 00       	.word	0x0006	; ????
 34e:	01 00       	.word	0x0001	; ????
 350:	02 04       	cpc	r0, r2
 352:	03 06       	cpc	r0, r19
 354:	03 01       	movw	r0, r6
 356:	09 0a       	sbc	r0, r25
 358:	00 01       	movw	r0, r0
 35a:	00 02       	muls	r16, r16
 35c:	04 03       	mulsu	r16, r20
 35e:	03 7f       	andi	r16, 0xF3	; 243
 360:	09 08       	sbc	r0, r9
 362:	00 01       	movw	r0, r0
 364:	03 08       	sbc	r0, r3
 366:	09 04       	cpc	r0, r9
 368:	00 01       	movw	r0, r0
 36a:	03 05       	cpc	r16, r3
 36c:	09 2c       	mov	r0, r9
 36e:	00 01       	movw	r0, r0
 370:	00 02       	muls	r16, r16
 372:	04 01       	movw	r0, r8
 374:	03 7b       	andi	r16, 0xB3	; 179
 376:	09 34       	cpi	r16, 0x49	; 73
 378:	00 01       	movw	r0, r0
 37a:	00 02       	muls	r16, r16
 37c:	04 01       	movw	r0, r8
 37e:	03 02       	muls	r16, r19
 380:	09 2e       	mov	r0, r25
 382:	00 01       	movw	r0, r0
 384:	00 02       	muls	r16, r16
 386:	04 03       	mulsu	r16, r20
 388:	03 01       	movw	r0, r6
 38a:	09 06       	cpc	r0, r25
 38c:	00 01       	movw	r0, r0
 38e:	00 02       	muls	r16, r16
 390:	04 03       	mulsu	r16, r20
 392:	03 7f       	andi	r16, 0xF3	; 243
 394:	09 38       	cpi	r16, 0x89	; 137
 396:	00 01       	movw	r0, r0
 398:	00 02       	muls	r16, r16
 39a:	04 01       	movw	r0, r8
 39c:	03 03       	mulsu	r16, r19
 39e:	09 24       	eor	r0, r9
 3a0:	00 01       	movw	r0, r0
 3a2:	00 02       	muls	r16, r16
 3a4:	04 03       	mulsu	r16, r20
 3a6:	03 01       	movw	r0, r6
 3a8:	09 0a       	sbc	r0, r25
 3aa:	00 01       	movw	r0, r0
 3ac:	00 02       	muls	r16, r16
 3ae:	04 03       	mulsu	r16, r20
 3b0:	03 7f       	andi	r16, 0xF3	; 243
 3b2:	09 38       	cpi	r16, 0x89	; 137
 3b4:	00 01       	movw	r0, r0
 3b6:	00 02       	muls	r16, r16
 3b8:	04 02       	muls	r16, r20
 3ba:	03 7b       	andi	r16, 0xB3	; 179
 3bc:	09 08       	sbc	r0, r9
 3be:	00 01       	movw	r0, r0
 3c0:	06 03       	mulsu	r16, r22
 3c2:	00 09       	sbc	r16, r0
 3c4:	38 00       	.word	0x0038	; ????
 3c6:	01 06       	cpc	r0, r17
 3c8:	03 0a       	sbc	r0, r19
 3ca:	09 04       	cpc	r0, r9
 3cc:	00 01       	movw	r0, r0
 3ce:	00 02       	muls	r16, r16
 3d0:	04 01       	movw	r0, r8
 3d2:	06 03       	mulsu	r16, r22
 3d4:	00 09       	sbc	r16, r0
 3d6:	10 00       	.word	0x0010	; ????
 3d8:	01 03       	mulsu	r16, r17
 3da:	00 09       	sbc	r16, r0
 3dc:	3e 00       	.word	0x003e	; ????
 3de:	01 00       	.word	0x0001	; ????
 3e0:	02 04       	cpc	r0, r2
 3e2:	01 06       	cpc	r0, r17
 3e4:	03 02       	muls	r16, r19
 3e6:	09 2c       	mov	r0, r9
 3e8:	00 01       	movw	r0, r0
 3ea:	00 02       	muls	r16, r16
 3ec:	04 03       	mulsu	r16, r20
 3ee:	03 01       	movw	r0, r6
 3f0:	09 06       	cpc	r0, r25
 3f2:	00 01       	movw	r0, r0
 3f4:	00 02       	muls	r16, r16
 3f6:	04 03       	mulsu	r16, r20
 3f8:	03 7f       	andi	r16, 0xF3	; 243
 3fa:	09 3c       	cpi	r16, 0xC9	; 201
 3fc:	00 01       	movw	r0, r0
 3fe:	03 7e       	andi	r16, 0xE3	; 227
 400:	09 08       	sbc	r0, r9
 402:	00 01       	movw	r0, r0
 404:	00 02       	muls	r16, r16
 406:	04 02       	muls	r16, r20
 408:	03 07       	cpc	r16, r19
 40a:	09 18       	sub	r0, r9
 40c:	00 01       	movw	r0, r0
 40e:	00 02       	muls	r16, r16
 410:	04 01       	movw	r0, r8
 412:	06 03       	mulsu	r16, r22
 414:	00 09       	sbc	r16, r0
 416:	14 00       	.word	0x0014	; ????
 418:	01 03       	mulsu	r16, r17
 41a:	00 09       	sbc	r16, r0
 41c:	16 00       	.word	0x0016	; ????
 41e:	01 00       	.word	0x0001	; ????
 420:	02 04       	cpc	r0, r2
 422:	03 06       	cpc	r0, r19
 424:	03 03       	mulsu	r16, r19
 426:	09 08       	sbc	r0, r9
 428:	00 01       	movw	r0, r0
 42a:	00 02       	muls	r16, r16
 42c:	04 03       	mulsu	r16, r20
 42e:	03 7f       	andi	r16, 0xF3	; 243
 430:	09 46       	sbci	r16, 0x69	; 105
 432:	00 01       	movw	r0, r0
 434:	06 03       	mulsu	r16, r22
 436:	00 09       	sbc	r16, r0
 438:	28 00       	.word	0x0028	; ????
 43a:	01 00       	.word	0x0001	; ????
 43c:	02 04       	cpc	r0, r2
 43e:	01 06       	cpc	r0, r17
 440:	03 03       	mulsu	r16, r19
 442:	09 04       	cpc	r0, r9
 444:	00 01       	movw	r0, r0
 446:	00 02       	muls	r16, r16
 448:	04 03       	mulsu	r16, r20
 44a:	03 01       	movw	r0, r6
 44c:	09 08       	sbc	r0, r9
 44e:	00 01       	movw	r0, r0
 450:	00 02       	muls	r16, r16
 452:	04 03       	mulsu	r16, r20
 454:	03 7f       	andi	r16, 0xF3	; 243
 456:	09 3c       	cpi	r16, 0xC9	; 201
 458:	00 01       	movw	r0, r0
 45a:	00 02       	muls	r16, r16
 45c:	04 01       	movw	r0, r8
 45e:	03 09       	sbc	r16, r3
 460:	09 18       	sub	r0, r9
 462:	00 01       	movw	r0, r0
 464:	00 02       	muls	r16, r16
 466:	04 01       	movw	r0, r8
 468:	03 02       	muls	r16, r19
 46a:	09 2a       	or	r0, r25
 46c:	00 01       	movw	r0, r0
 46e:	00 02       	muls	r16, r16
 470:	04 03       	mulsu	r16, r20
 472:	03 01       	movw	r0, r6
 474:	09 06       	cpc	r0, r25
 476:	00 01       	movw	r0, r0
 478:	00 02       	muls	r16, r16
 47a:	04 03       	mulsu	r16, r20
 47c:	03 7f       	andi	r16, 0xF3	; 243
 47e:	09 40       	sbci	r16, 0x09	; 9
 480:	00 01       	movw	r0, r0
 482:	00 02       	muls	r16, r16
 484:	04 01       	movw	r0, r8
 486:	03 03       	mulsu	r16, r19
 488:	09 24       	eor	r0, r9
 48a:	00 01       	movw	r0, r0
 48c:	00 02       	muls	r16, r16
 48e:	04 03       	mulsu	r16, r20
 490:	03 01       	movw	r0, r6
 492:	09 0a       	sbc	r0, r25
 494:	00 01       	movw	r0, r0
 496:	00 02       	muls	r16, r16
 498:	04 03       	mulsu	r16, r20
 49a:	03 7f       	andi	r16, 0xF3	; 243
 49c:	09 40       	sbci	r16, 0x09	; 9
 49e:	00 01       	movw	r0, r0
 4a0:	00 02       	muls	r16, r16
 4a2:	04 02       	muls	r16, r20
 4a4:	03 7b       	andi	r16, 0xB3	; 179
 4a6:	09 08       	sbc	r0, r9
 4a8:	00 01       	movw	r0, r0
 4aa:	06 03       	mulsu	r16, r22
 4ac:	00 09       	sbc	r16, r0
 4ae:	38 00       	.word	0x0038	; ????
 4b0:	01 00       	.word	0x0001	; ????
 4b2:	02 04       	cpc	r0, r2
 4b4:	01 06       	cpc	r0, r17
 4b6:	03 0a       	sbc	r0, r19
 4b8:	09 04       	cpc	r0, r9
 4ba:	00 01       	movw	r0, r0
 4bc:	06 03       	mulsu	r16, r22
 4be:	00 09       	sbc	r16, r0
 4c0:	22 00       	.word	0x0022	; ????
 4c2:	01 00       	.word	0x0001	; ????
 4c4:	02 04       	cpc	r0, r2
 4c6:	01 06       	cpc	r0, r17
 4c8:	03 02       	muls	r16, r19
 4ca:	09 30       	cpi	r16, 0x09	; 9
 4cc:	00 01       	movw	r0, r0
 4ce:	00 02       	muls	r16, r16
 4d0:	04 03       	mulsu	r16, r20
 4d2:	03 01       	movw	r0, r6
 4d4:	09 06       	cpc	r0, r25
 4d6:	00 01       	movw	r0, r0
 4d8:	00 02       	muls	r16, r16
 4da:	04 03       	mulsu	r16, r20
 4dc:	03 7f       	andi	r16, 0xF3	; 243
 4de:	09 38       	cpi	r16, 0x89	; 137
 4e0:	00 01       	movw	r0, r0
 4e2:	03 7e       	andi	r16, 0xE3	; 227
 4e4:	09 08       	sbc	r0, r9
 4e6:	00 01       	movw	r0, r0
 4e8:	00 02       	muls	r16, r16
 4ea:	04 02       	muls	r16, r20
 4ec:	03 07       	cpc	r16, r19
 4ee:	09 18       	sub	r0, r9
 4f0:	00 01       	movw	r0, r0
 4f2:	00 02       	muls	r16, r16
 4f4:	04 01       	movw	r0, r8
 4f6:	06 03       	mulsu	r16, r22
 4f8:	00 09       	sbc	r16, r0
 4fa:	14 00       	.word	0x0014	; ????
 4fc:	01 03       	mulsu	r16, r17
 4fe:	00 09       	sbc	r16, r0
 500:	16 00       	.word	0x0016	; ????
 502:	01 00       	.word	0x0001	; ????
 504:	02 04       	cpc	r0, r2
 506:	03 06       	cpc	r0, r19
 508:	03 03       	mulsu	r16, r19
 50a:	09 08       	sbc	r0, r9
 50c:	00 01       	movw	r0, r0
 50e:	00 02       	muls	r16, r16
 510:	04 03       	mulsu	r16, r20
 512:	03 7f       	andi	r16, 0xF3	; 243
 514:	09 46       	sbci	r16, 0x69	; 105
 516:	00 01       	movw	r0, r0
 518:	06 03       	mulsu	r16, r22
 51a:	00 09       	sbc	r16, r0
 51c:	28 00       	.word	0x0028	; ????
 51e:	01 00       	.word	0x0001	; ????
 520:	02 04       	cpc	r0, r2
 522:	01 06       	cpc	r0, r17
 524:	03 03       	mulsu	r16, r19
 526:	09 04       	cpc	r0, r9
 528:	00 01       	movw	r0, r0
 52a:	00 02       	muls	r16, r16
 52c:	04 03       	mulsu	r16, r20
 52e:	03 01       	movw	r0, r6
 530:	09 08       	sbc	r0, r9
 532:	00 01       	movw	r0, r0
 534:	00 02       	muls	r16, r16
 536:	04 03       	mulsu	r16, r20
 538:	03 7f       	andi	r16, 0xF3	; 243
 53a:	09 3c       	cpi	r16, 0xC9	; 201
 53c:	00 01       	movw	r0, r0
 53e:	03 03       	mulsu	r16, r19
 540:	09 08       	sbc	r0, r9
 542:	00 01       	movw	r0, r0
 544:	09 32       	cpi	r16, 0x29	; 41
 546:	00 00       	nop
 548:	01 01       	movw	r0, r2
 54a:	00 05       	cpc	r16, r0
 54c:	02 d4       	rcall	.+2052   	; 0xd52 <__divsf3_pse+0x50>
 54e:	09 00       	.word	0x0009	; ????
 550:	00 03       	mulsu	r16, r16
 552:	e3 00       	.word	0x00e3	; ????
 554:	01 03       	mulsu	r16, r17
 556:	01 09       	sbc	r16, r1
 558:	0c 00       	.word	0x000c	; ????
 55a:	01 00       	.word	0x0001	; ????
 55c:	02 04       	cpc	r0, r2
 55e:	01 06       	cpc	r0, r17
 560:	03 00       	.word	0x0003	; ????
 562:	09 06       	cpc	r0, r25
 564:	00 01       	movw	r0, r0
 566:	00 02       	muls	r16, r16
 568:	04 03       	mulsu	r16, r20
 56a:	06 03       	mulsu	r16, r22
 56c:	01 09       	sbc	r16, r1
 56e:	06 00       	.word	0x0006	; ????
 570:	01 00       	.word	0x0001	; ????
 572:	02 04       	cpc	r0, r2
 574:	03 03       	mulsu	r16, r19
 576:	7f 09       	sbc	r23, r15
 578:	2c 00       	.word	0x002c	; ????
 57a:	01 03       	mulsu	r16, r17
 57c:	04 09       	sbc	r16, r4
 57e:	06 00       	.word	0x0006	; ????
 580:	01 00       	.word	0x0001	; ????
 582:	02 04       	cpc	r0, r2
 584:	01 03       	mulsu	r16, r17
 586:	7f 09       	sbc	r23, r15
 588:	14 00       	.word	0x0014	; ????
 58a:	01 00       	.word	0x0001	; ????
 58c:	02 04       	cpc	r0, r2
 58e:	03 03       	mulsu	r16, r19
 590:	01 09       	sbc	r16, r1
 592:	06 00       	.word	0x0006	; ????
 594:	01 00       	.word	0x0001	; ????
 596:	02 04       	cpc	r0, r2
 598:	03 03       	mulsu	r16, r19
 59a:	7f 09       	sbc	r23, r15
 59c:	32 00       	.word	0x0032	; ????
 59e:	01 03       	mulsu	r16, r17
 5a0:	02 09       	sbc	r16, r2
 5a2:	06 00       	.word	0x0006	; ????
 5a4:	01 09       	sbc	r16, r1
 5a6:	0e 00       	.word	0x000e	; ????
 5a8:	00 01       	movw	r0, r0
 5aa:	01 00       	.word	0x0001	; ????
 5ac:	05 02       	muls	r16, r21
 5ae:	7e 0a       	sbc	r7, r30
 5b0:	00 00       	nop
 5b2:	03 81       	ldd	r16, Z+3	; 0x03
 5b4:	01 01       	movw	r0, r2
 5b6:	03 03       	mulsu	r16, r19
 5b8:	09 4e       	sbci	r16, 0xE9	; 233
 5ba:	00 01       	movw	r0, r0
 5bc:	00 02       	muls	r16, r16
 5be:	04 01       	movw	r0, r8
 5c0:	06 03       	mulsu	r16, r22
 5c2:	00 09       	sbc	r16, r0
 5c4:	08 00       	.word	0x0008	; ????
 5c6:	01 00       	.word	0x0001	; ????
 5c8:	02 04       	cpc	r0, r2
 5ca:	03 06       	cpc	r0, r19
 5cc:	03 01       	movw	r0, r6
 5ce:	09 06       	cpc	r0, r25
 5d0:	00 01       	movw	r0, r0
 5d2:	00 02       	muls	r16, r16
 5d4:	04 03       	mulsu	r16, r20
 5d6:	03 7f       	andi	r16, 0xF3	; 243
 5d8:	09 14       	cp	r0, r9
 5da:	00 01       	movw	r0, r0
 5dc:	06 03       	mulsu	r16, r22
 5de:	00 09       	sbc	r16, r0
 5e0:	08 00       	.word	0x0008	; ????
 5e2:	01 00       	.word	0x0001	; ????
 5e4:	02 04       	cpc	r0, r2
 5e6:	01 06       	cpc	r0, r17
 5e8:	03 03       	mulsu	r16, r19
 5ea:	09 04       	cpc	r0, r9
 5ec:	00 01       	movw	r0, r0
 5ee:	03 02       	muls	r16, r19
 5f0:	09 0c       	add	r0, r9
 5f2:	00 01       	movw	r0, r0
 5f4:	03 01       	movw	r0, r6
 5f6:	09 1a       	sub	r0, r25
 5f8:	00 01       	movw	r0, r0
 5fa:	03 02       	muls	r16, r19
 5fc:	09 0e       	add	r0, r25
 5fe:	00 01       	movw	r0, r0
 600:	00 02       	muls	r16, r16
 602:	04 01       	movw	r0, r8
 604:	06 03       	mulsu	r16, r22
 606:	00 09       	sbc	r16, r0
 608:	3c 00       	.word	0x003c	; ????
 60a:	01 00       	.word	0x0001	; ????
 60c:	02 04       	cpc	r0, r2
 60e:	03 06       	cpc	r0, r19
 610:	03 02       	muls	r16, r19
 612:	09 1a       	sub	r0, r25
 614:	00 01       	movw	r0, r0
 616:	00 02       	muls	r16, r16
 618:	04 03       	mulsu	r16, r20
 61a:	03 7e       	andi	r16, 0xE3	; 227
 61c:	09 1c       	adc	r0, r9
 61e:	00 01       	movw	r0, r0
 620:	00 02       	muls	r16, r16
 622:	04 02       	muls	r16, r20
 624:	03 04       	cpc	r0, r3
 626:	09 06       	cpc	r0, r25
 628:	00 01       	movw	r0, r0
 62a:	00 02       	muls	r16, r16
 62c:	04 02       	muls	r16, r20
 62e:	03 77       	andi	r16, 0x73	; 115
 630:	09 0e       	add	r0, r25
 632:	00 01       	movw	r0, r0
 634:	03 0b       	sbc	r16, r19
 636:	09 0a       	sbc	r0, r25
 638:	00 01       	movw	r0, r0
 63a:	09 32       	cpi	r16, 0x29	; 41
 63c:	00 00       	nop
 63e:	01 01       	movw	r0, r2

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
  16:	00 00       	nop
  18:	00 00       	nop
  1a:	00 00       	nop
  1c:	50 01       	movw	r10, r0
  1e:	00 00       	nop
  20:	22 00       	.word	0x0022	; ????
  22:	00 00       	nop
  24:	0c 00       	.word	0x000c	; ????
  26:	00 00       	nop
  28:	00 00       	nop
  2a:	00 00       	nop
  2c:	72 01       	movw	r14, r4
  2e:	00 00       	nop
  30:	18 00       	.word	0x0018	; ????
  32:	00 00       	nop
  34:	1c 00       	.word	0x001c	; ????
  36:	00 00       	nop
  38:	00 00       	nop
  3a:	00 00       	nop
  3c:	8a 01       	movw	r16, r20
  3e:	00 00       	nop
  40:	20 00       	.word	0x0020	; ????
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
  5c:	aa 01       	movw	r20, r20
  5e:	00 00       	nop
  60:	08 00       	.word	0x0008	; ????
  62:	00 00       	nop
  64:	0c 00       	.word	0x000c	; ????
  66:	00 00       	nop
  68:	00 00       	nop
  6a:	00 00       	nop
  6c:	b2 01       	movw	r22, r4
  6e:	00 00       	nop
  70:	06 00       	.word	0x0006	; ????
  72:	00 00       	nop
  74:	1c 00       	.word	0x001c	; ????
  76:	00 00       	nop
  78:	00 00       	nop
  7a:	00 00       	nop
  7c:	b8 01       	movw	r22, r16
  7e:	00 00       	nop
  80:	1a 00       	.word	0x001a	; ????
  82:	00 00       	nop
  84:	41 0e       	add	r4, r17
  86:	03 41       	sbci	r16, 0x13	; 19
  88:	0e 04       	cpc	r0, r14
  8a:	43 0e       	add	r4, r19
  8c:	05 41       	sbci	r16, 0x15	; 21
  8e:	0e 06       	cpc	r0, r30
  90:	46 0e       	add	r4, r22
  92:	02 00       	.word	0x0002	; ????
  94:	1c 00       	.word	0x001c	; ????
  96:	00 00       	nop
  98:	00 00       	nop
  9a:	00 00       	nop
  9c:	d2 01       	movw	r26, r4
  9e:	00 00       	nop
  a0:	1a 00       	.word	0x001a	; ????
  a2:	00 00       	nop
  a4:	41 0e       	add	r4, r17
  a6:	03 41       	sbci	r16, 0x13	; 19
  a8:	0e 04       	cpc	r0, r14
  aa:	43 0e       	add	r4, r19
  ac:	05 41       	sbci	r16, 0x15	; 21
  ae:	0e 06       	cpc	r0, r30
  b0:	46 0e       	add	r4, r22
  b2:	02 00       	.word	0x0002	; ????
  b4:	0c 00       	.word	0x000c	; ????
  b6:	00 00       	nop
  b8:	00 00       	nop
  ba:	00 00       	nop
  bc:	ec 01       	movw	r28, r24
  be:	00 00       	nop
  c0:	0c 00       	.word	0x000c	; ????
  c2:	00 00       	nop
  c4:	10 00       	.word	0x0010	; ????
  c6:	00 00       	nop
  c8:	ff ff       	.word	0xffff	; ????
  ca:	ff ff       	.word	0xffff	; ????
  cc:	01 00       	.word	0x0001	; ????
  ce:	02 7f       	andi	r16, 0xF2	; 242
  d0:	24 0c       	add	r2, r4
  d2:	20 02       	muls	r18, r16
  d4:	a4 01       	movw	r20, r8
  d6:	00 00       	nop
  d8:	70 00       	.word	0x0070	; ????
  da:	00 00       	nop
  dc:	c4 00       	.word	0x00c4	; ????
  de:	00 00       	nop
  e0:	f8 01       	movw	r30, r16
  e2:	00 00       	nop
  e4:	2e 01       	movw	r4, r28
  e6:	00 00       	nop
  e8:	41 0e       	add	r4, r17
  ea:	03 82       	std	Z+3, r0	; 0x03
  ec:	02 41       	sbci	r16, 0x12	; 18
  ee:	0e 04       	cpc	r0, r14
  f0:	83 03       	fmuls	r16, r19
  f2:	41 0e       	add	r4, r17
  f4:	05 84       	ldd	r0, Z+13	; 0x0d
  f6:	04 41       	sbci	r16, 0x14	; 20
  f8:	0e 06       	cpc	r0, r30
  fa:	85 05       	cpc	r24, r5
  fc:	41 0e       	add	r4, r17
  fe:	07 86       	std	Z+15, r0	; 0x0f
 100:	06 41       	sbci	r16, 0x16	; 22
 102:	0e 08       	sbc	r0, r14
 104:	87 07       	cpc	r24, r23
 106:	41 0e       	add	r4, r17
 108:	09 88       	ldd	r0, Y+17	; 0x11
 10a:	08 41       	sbci	r16, 0x18	; 24
 10c:	0e 0a       	sbc	r0, r30
 10e:	89 09       	sbc	r24, r9
 110:	41 0e       	add	r4, r17
 112:	0b 8a       	std	Y+19, r0	; 0x13
 114:	0a 41       	sbci	r16, 0x1A	; 26
 116:	0e 0c       	add	r0, r14
 118:	8b 0b       	sbc	r24, r27
 11a:	41 0e       	add	r4, r17
 11c:	0d 8c       	ldd	r0, Y+29	; 0x1d
 11e:	0c 41       	sbci	r16, 0x1C	; 28
 120:	0e 0e       	add	r0, r30
 122:	8d 0d       	add	r24, r13
 124:	41 0e       	add	r4, r17
 126:	0f 8e       	std	Y+31, r0	; 0x1f
 128:	0e 41       	sbci	r16, 0x1E	; 30
 12a:	0e 10       	cpse	r0, r14
 12c:	8f 0f       	add	r24, r31
 12e:	41 0e       	add	r4, r17
 130:	11 90       	ld	r1, Z+
 132:	10 41       	sbci	r17, 0x10	; 16
 134:	0e 12       	cpse	r0, r30
 136:	91 11       	cpse	r25, r1
 138:	41 0e       	add	r4, r17
 13a:	13 9c       	mul	r1, r3
 13c:	12 41       	sbci	r17, 0x12	; 18
 13e:	0e 14       	cp	r0, r14
 140:	9d 13       	cpse	r25, r29
 142:	42 0d       	add	r20, r2
 144:	1c 42       	sbci	r17, 0x2C	; 44
 146:	0e c4       	rjmp	.+2076   	; 0x964 <__LOCK_REGION_LENGTH__+0x564>
 148:	14 00       	.word	0x0014	; ????
 14a:	00 00       	nop
 14c:	10 00       	.word	0x0010	; ????
 14e:	00 00       	nop
 150:	ff ff       	.word	0xffff	; ????
 152:	ff ff       	.word	0xffff	; ????
 154:	01 00       	.word	0x0001	; ????
 156:	02 7f       	andi	r16, 0xF2	; 242
 158:	24 0c       	add	r2, r4
 15a:	20 02       	muls	r18, r16
 15c:	a4 01       	movw	r20, r8
 15e:	00 00       	nop
 160:	6c 00       	.word	0x006c	; ????
 162:	00 00       	nop
 164:	4c 01       	movw	r8, r24
 166:	00 00       	nop
 168:	26 03       	mulsu	r18, r22
 16a:	00 00       	nop
 16c:	ae 06       	cpc	r10, r30
 16e:	00 00       	nop
 170:	41 0e       	add	r4, r17
 172:	03 82       	std	Z+3, r0	; 0x03
 174:	02 41       	sbci	r16, 0x12	; 18
 176:	0e 04       	cpc	r0, r14
 178:	83 03       	fmuls	r16, r19
 17a:	41 0e       	add	r4, r17
 17c:	05 84       	ldd	r0, Z+13	; 0x0d
 17e:	04 41       	sbci	r16, 0x14	; 20
 180:	0e 06       	cpc	r0, r30
 182:	85 05       	cpc	r24, r5
 184:	41 0e       	add	r4, r17
 186:	07 86       	std	Z+15, r0	; 0x0f
 188:	06 41       	sbci	r16, 0x16	; 22
 18a:	0e 08       	sbc	r0, r14
 18c:	87 07       	cpc	r24, r23
 18e:	41 0e       	add	r4, r17
 190:	09 88       	ldd	r0, Y+17	; 0x11
 192:	08 41       	sbci	r16, 0x18	; 24
 194:	0e 0a       	sbc	r0, r30
 196:	89 09       	sbc	r24, r9
 198:	41 0e       	add	r4, r17
 19a:	0b 8a       	std	Y+19, r0	; 0x13
 19c:	0a 41       	sbci	r16, 0x1A	; 26
 19e:	0e 0c       	add	r0, r14
 1a0:	8b 0b       	sbc	r24, r27
 1a2:	41 0e       	add	r4, r17
 1a4:	0d 8c       	ldd	r0, Y+29	; 0x1d
 1a6:	0c 41       	sbci	r16, 0x1C	; 28
 1a8:	0e 0e       	add	r0, r30
 1aa:	8d 0d       	add	r24, r13
 1ac:	41 0e       	add	r4, r17
 1ae:	0f 8e       	std	Y+31, r0	; 0x1f
 1b0:	0e 41       	sbci	r16, 0x1E	; 30
 1b2:	0e 10       	cpse	r0, r14
 1b4:	8f 0f       	add	r24, r31
 1b6:	41 0e       	add	r4, r17
 1b8:	11 90       	ld	r1, Z+
 1ba:	10 41       	sbci	r17, 0x10	; 16
 1bc:	0e 12       	cpse	r0, r30
 1be:	91 11       	cpse	r25, r1
 1c0:	41 0e       	add	r4, r17
 1c2:	13 9c       	mul	r1, r3
 1c4:	12 41       	sbci	r17, 0x12	; 18
 1c6:	0e 14       	cp	r0, r14
 1c8:	9d 13       	cpse	r25, r29
 1ca:	42 0d       	add	r20, r2
 1cc:	1c 41       	sbci	r17, 0x1C	; 28
 1ce:	0e 34       	cpi	r16, 0x4E	; 78
 1d0:	2c 00       	.word	0x002c	; ????
 1d2:	00 00       	nop
 1d4:	4c 01       	movw	r8, r24
 1d6:	00 00       	nop
 1d8:	d4 09       	sbc	r29, r4
 1da:	00 00       	nop
 1dc:	aa 00       	.word	0x00aa	; ????
 1de:	00 00       	nop
 1e0:	41 0e       	add	r4, r17
 1e2:	03 8c       	ldd	r0, Z+27	; 0x1b
 1e4:	02 41       	sbci	r16, 0x12	; 18
 1e6:	0e 04       	cpc	r0, r14
 1e8:	8d 03       	fmulsu	r16, r21
 1ea:	41 0e       	add	r4, r17
 1ec:	05 8e       	std	Z+29, r0	; 0x1d
 1ee:	04 41       	sbci	r16, 0x14	; 20
 1f0:	0e 06       	cpc	r0, r30
 1f2:	8f 05       	cpc	r24, r15
 1f4:	41 0e       	add	r4, r17
 1f6:	07 9c       	mul	r0, r7
 1f8:	06 41       	sbci	r16, 0x16	; 22
 1fa:	0e 08       	sbc	r0, r14
 1fc:	9d 07       	cpc	r25, r29
 1fe:	00 00       	nop
 200:	6c 00       	.word	0x006c	; ????
 202:	00 00       	nop
 204:	4c 01       	movw	r8, r24
 206:	00 00       	nop
 208:	7e 0a       	sbc	r7, r30
 20a:	00 00       	nop
 20c:	72 01       	movw	r14, r4
 20e:	00 00       	nop
 210:	41 0e       	add	r4, r17
 212:	03 82       	std	Z+3, r0	; 0x03
 214:	02 41       	sbci	r16, 0x12	; 18
 216:	0e 04       	cpc	r0, r14
 218:	83 03       	fmuls	r16, r19
 21a:	41 0e       	add	r4, r17
 21c:	05 84       	ldd	r0, Z+13	; 0x0d
 21e:	04 41       	sbci	r16, 0x14	; 20
 220:	0e 06       	cpc	r0, r30
 222:	85 05       	cpc	r24, r5
 224:	41 0e       	add	r4, r17
 226:	07 86       	std	Z+15, r0	; 0x0f
 228:	06 41       	sbci	r16, 0x16	; 22
 22a:	0e 08       	sbc	r0, r14
 22c:	87 07       	cpc	r24, r23
 22e:	41 0e       	add	r4, r17
 230:	09 88       	ldd	r0, Y+17	; 0x11
 232:	08 41       	sbci	r16, 0x18	; 24
 234:	0e 0a       	sbc	r0, r30
 236:	89 09       	sbc	r24, r9
 238:	41 0e       	add	r4, r17
 23a:	0b 8a       	std	Y+19, r0	; 0x13
 23c:	0a 41       	sbci	r16, 0x1A	; 26
 23e:	0e 0c       	add	r0, r14
 240:	8b 0b       	sbc	r24, r27
 242:	41 0e       	add	r4, r17
 244:	0d 8c       	ldd	r0, Y+29	; 0x1d
 246:	0c 41       	sbci	r16, 0x1C	; 28
 248:	0e 0e       	add	r0, r30
 24a:	8d 0d       	add	r24, r13
 24c:	41 0e       	add	r4, r17
 24e:	0f 8e       	std	Y+31, r0	; 0x1f
 250:	0e 41       	sbci	r16, 0x1E	; 30
 252:	0e 10       	cpse	r0, r14
 254:	8f 0f       	add	r24, r31
 256:	41 0e       	add	r4, r17
 258:	11 90       	ld	r1, Z+
 25a:	10 41       	sbci	r17, 0x10	; 16
 25c:	0e 12       	cpse	r0, r30
 25e:	91 11       	cpse	r25, r1
 260:	41 0e       	add	r4, r17
 262:	13 9c       	mul	r1, r3
 264:	12 41       	sbci	r17, 0x12	; 18
 266:	0e 14       	cp	r0, r14
 268:	9d 13       	cpse	r25, r29
 26a:	42 0d       	add	r20, r2
 26c:	1c 41       	sbci	r17, 0x1C	; 28
 26e:	0e 20       	and	r0, r14

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
 4d2:	61 76       	andi	r22, 0x61	; 97
 4d4:	72 5f       	subi	r23, 0xF2	; 242
 4d6:	56 50       	subi	r21, 0x06	; 6
 4d8:	72 69       	ori	r23, 0x92	; 146
 4da:	6e 74       	andi	r22, 0x4E	; 78
 4dc:	00 66       	ori	r16, 0x60	; 96
 4de:	6c 6f       	ori	r22, 0xFC	; 252
 4e0:	61 74       	andi	r22, 0x41	; 65
 4e2:	00 64       	ori	r16, 0x40	; 64
 4e4:	61 74       	andi	r22, 0x41	; 65
 4e6:	61 00       	.word	0x0061	; ????
 4e8:	4c 6f       	ori	r20, 0xFC	; 252
 4ea:	5f 44       	sbci	r21, 0x4F	; 79
 4ec:	00 44       	sbci	r16, 0x40	; 64
 4ee:	57 54       	subi	r21, 0x47	; 71
 4f0:	31 44       	sbci	r19, 0x41	; 65
 4f2:	00 73       	andi	r16, 0x30	; 48
 4f4:	69 67       	ori	r22, 0x79	; 121
 4f6:	4c 65       	ori	r20, 0x5C	; 92
 4f8:	6e 00       	.word	0x006e	; ????
 4fa:	2f 68       	ori	r18, 0x8F	; 143
 4fc:	6f 6d       	ori	r22, 0xDF	; 223
 4fe:	65 2f       	mov	r22, r21
 500:	66 61       	ori	r22, 0x16	; 22
 502:	6e 68       	ori	r22, 0x8E	; 142
 504:	63 2f       	mov	r22, r19
 506:	77 61       	ori	r23, 0x17	; 23
 508:	73 6d       	ori	r23, 0xD3	; 211
 50a:	2d 61       	ori	r18, 0x1D	; 29
 50c:	6f 74       	andi	r22, 0x4F	; 79
 50e:	2f 61       	ori	r18, 0x1F	; 31
 510:	70 70       	andi	r23, 0x00	; 0
 512:	2f 62       	ori	r18, 0x2F	; 47
 514:	65 6e       	ori	r22, 0xE5	; 229
 516:	63 68       	ori	r22, 0x83	; 131
 518:	6d 61       	ori	r22, 0x1D	; 29
 51a:	72 6b       	ori	r23, 0xB2	; 178
 51c:	2f 62       	ori	r18, 0x2F	; 47
 51e:	6d 2d       	mov	r22, r13
 520:	77 61       	ori	r23, 0x17	; 23
 522:	76 65       	ori	r23, 0x56	; 86
 524:	6c 65       	ori	r22, 0x5C	; 92
 526:	74 2f       	mov	r23, r20
 528:	6d 61       	ori	r22, 0x1D	; 29
 52a:	69 6e       	ori	r22, 0xE9	; 233
 52c:	2e 63       	ori	r18, 0x3E	; 62
 52e:	00 64       	ori	r16, 0x40	; 64
 530:	61 74       	andi	r22, 0x41	; 65
 532:	61 5f       	subi	r22, 0xF1	; 241
 534:	6f 75       	andi	r22, 0x5F	; 95
 536:	74 70       	andi	r23, 0x04	; 4
 538:	75 74       	andi	r23, 0x45	; 69
 53a:	00 77       	andi	r16, 0x70	; 112
 53c:	61 76       	andi	r22, 0x61	; 97
 53e:	65 6c       	ori	r22, 0xC5	; 197
 540:	65 74       	andi	r22, 0x45	; 69
 542:	42 61       	ori	r20, 0x12	; 18
 544:	73 69       	ori	r23, 0x93	; 147
 546:	73 4c       	sbci	r23, 0xC3	; 195
 548:	65 6e       	ori	r22, 0xE5	; 229
 54a:	00 48       	sbci	r16, 0x80	; 128
 54c:	69 5f       	subi	r22, 0xF9	; 249
 54e:	44 00       	.word	0x0044	; ????
 550:	6e 53       	subi	r22, 0x3E	; 62
 552:	74 65       	ori	r23, 0x54	; 84
 554:	70 00       	.word	0x0070	; ????
 556:	73 6f       	ori	r23, 0xF3	; 243
 558:	72 74       	andi	r23, 0x42	; 66
 55a:	00 43       	sbci	r16, 0x30	; 48
 55c:	6f 76       	andi	r22, 0x6F	; 111
 55e:	6c 75       	andi	r22, 0x5C	; 92
 560:	74 69       	ori	r23, 0x94	; 148
 562:	6f 6e       	ori	r22, 0xEF	; 239
 564:	00 69       	ori	r16, 0x90	; 144
 566:	6e 70       	andi	r22, 0x0E	; 14
 568:	75 74       	andi	r23, 0x45	; 69
 56a:	00 2f       	mov	r16, r16
 56c:	68 6f       	ori	r22, 0xF8	; 248
 56e:	6d 65       	ori	r22, 0x5D	; 93
 570:	2f 66       	ori	r18, 0x6F	; 111
 572:	61 6e       	ori	r22, 0xE1	; 225
 574:	68 63       	ori	r22, 0x38	; 56
 576:	2f 77       	andi	r18, 0x7F	; 127
 578:	61 73       	andi	r22, 0x31	; 49
 57a:	6d 2d       	mov	r22, r13
 57c:	61 6f       	ori	r22, 0xF1	; 241
 57e:	74 2f       	mov	r23, r20
 580:	61 70       	andi	r22, 0x01	; 1
 582:	70 2f       	mov	r23, r16
 584:	62 65       	ori	r22, 0x52	; 82
 586:	6e 63       	ori	r22, 0x3E	; 62
 588:	68 6d       	ori	r22, 0xD8	; 216
 58a:	61 72       	andi	r22, 0x21	; 33
 58c:	6b 2f       	mov	r22, r27
 58e:	62 6d       	ori	r22, 0xD2	; 210
 590:	2d 77       	andi	r18, 0x7D	; 125
 592:	61 76       	andi	r22, 0x61	; 97
 594:	65 6c       	ori	r22, 0xC5	; 197
 596:	65 74       	andi	r22, 0x45	; 69
 598:	2f 77       	andi	r18, 0x7F	; 127
 59a:	61 76       	andi	r22, 0x61	; 97
 59c:	65 6c       	ori	r22, 0xC5	; 197
 59e:	65 74       	andi	r22, 0x45	; 69
 5a0:	2e 63       	ori	r18, 0x3E	; 62
 5a2:	00 53       	subi	r16, 0x30	; 48
 5a4:	6f 72       	andi	r22, 0x2F	; 47
 5a6:	74 00       	.word	0x0074	; ????

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	50 01       	movw	r10, r0
   2:	00 00       	nop
   4:	54 01       	movw	r10, r8
   6:	00 00       	nop
   8:	06 00       	.word	0x0006	; ????
   a:	68 93       	.word	0x9368	; ????
   c:	01 69       	ori	r16, 0x91	; 145
   e:	93 01       	movw	r18, r6
  10:	54 01       	movw	r10, r8
  12:	00 00       	nop
  14:	56 01       	movw	r10, r12
  16:	00 00       	nop
  18:	06 00       	.word	0x0006	; ????
  1a:	6e 93       	st	-X, r22
  1c:	01 6f       	ori	r16, 0xF1	; 241
  1e:	93 01       	movw	r18, r6
  20:	56 01       	movw	r10, r12
  22:	00 00       	nop
  24:	72 01       	movw	r14, r4
  26:	00 00       	nop
  28:	04 00       	.word	0x0004	; ????
  2a:	f3 01       	movw	r30, r6
  2c:	68 9f       	mul	r22, r24
	...
  36:	52 01       	movw	r10, r4
  38:	00 00       	nop
  3a:	56 01       	movw	r10, r12
  3c:	00 00       	nop
  3e:	02 00       	.word	0x0002	; ????
  40:	30 9f       	mul	r19, r16
  42:	56 01       	movw	r10, r12
  44:	00 00       	nop
  46:	58 01       	movw	r10, r16
  48:	00 00       	nop
  4a:	07 00       	.word	0x0007	; ????
  4c:	8e 00       	.word	0x008e	; ????
  4e:	f3 01       	movw	r30, r6
  50:	68 1c       	adc	r6, r8
  52:	9f 58       	subi	r25, 0x8F	; 143
  54:	01 00       	.word	0x0001	; ????
  56:	00 6e       	ori	r16, 0xE0	; 224
  58:	01 00       	.word	0x0001	; ????
  5a:	00 08       	sbc	r0, r0
  5c:	00 f3       	brcs	.-64     	; 0x1e <__FUSE_REGION_LENGTH__+0x1b>
  5e:	01 68       	ori	r16, 0x81	; 129
  60:	20 8e       	std	Z+24, r2	; 0x18
  62:	00 22       	and	r0, r16
  64:	9f 6e       	ori	r25, 0xEF	; 239
  66:	01 00       	.word	0x0001	; ????
  68:	00 70       	andi	r16, 0x00	; 0
  6a:	01 00       	.word	0x0001	; ????
  6c:	00 07       	cpc	r16, r16
  6e:	00 8e       	std	Z+24, r0	; 0x18
  70:	00 f3       	brcs	.-64     	; 0x32 <__FUSE_REGION_LENGTH__+0x2f>
  72:	01 68       	ori	r16, 0x81	; 129
  74:	1c 9f       	mul	r17, r28
  76:	70 01       	movw	r14, r0
  78:	00 00       	nop
  7a:	72 01       	movw	r14, r4
  7c:	00 00       	nop
  7e:	08 00       	.word	0x0008	; ????
  80:	f3 01       	movw	r30, r6
  82:	68 20       	and	r6, r8
  84:	8e 00       	.word	0x008e	; ????
  86:	22 9f       	mul	r18, r18
	...
  90:	66 01       	movw	r12, r12
  92:	00 00       	nop
  94:	70 01       	movw	r14, r0
  96:	00 00       	nop
  98:	01 00       	.word	0x0001	; ????
  9a:	69 00       	.word	0x0069	; ????
  9c:	00 00       	nop
  9e:	00 00       	nop
  a0:	00 00       	nop
  a2:	00 6a       	ori	r16, 0xA0	; 160
  a4:	01 00       	.word	0x0001	; ????
  a6:	00 6e       	ori	r16, 0xE0	; 224
  a8:	01 00       	.word	0x0001	; ????
  aa:	00 02       	muls	r16, r16
  ac:	00 3a       	cpi	r16, 0xA0	; 160
  ae:	9f 00       	.word	0x009f	; ????
  b0:	00 00       	nop
  b2:	00 00       	nop
  b4:	00 00       	nop
  b6:	00 60       	ori	r16, 0x00	; 0
  b8:	01 00       	.word	0x0001	; ????
  ba:	00 64       	ori	r16, 0x40	; 64
  bc:	01 00       	.word	0x0001	; ????
  be:	00 02       	muls	r16, r16
  c0:	00 3b       	cpi	r16, 0xB0	; 176
  c2:	9f 00       	.word	0x009f	; ????
  c4:	00 00       	nop
  c6:	00 00       	nop
  c8:	00 00       	nop
  ca:	00 72       	andi	r16, 0x20	; 32
  cc:	01 00       	.word	0x0001	; ????
  ce:	00 7e       	andi	r16, 0xE0	; 224
  d0:	01 00       	.word	0x0001	; ????
  d2:	00 06       	cpc	r0, r16
  d4:	00 68       	ori	r16, 0x80	; 128
  d6:	93 01       	movw	r18, r6
  d8:	69 93       	st	Y+, r22
  da:	01 7e       	andi	r16, 0xE1	; 225
  dc:	01 00       	.word	0x0001	; ????
  de:	00 81       	ld	r16, Z
  e0:	01 00       	.word	0x0001	; ????
  e2:	00 06       	cpc	r0, r16
  e4:	00 64       	ori	r16, 0x40	; 64
  e6:	93 01       	movw	r18, r6
  e8:	65 93       	las	Z, r22
  ea:	01 81       	ldd	r16, Z+1	; 0x01
  ec:	01 00       	.word	0x0001	; ????
  ee:	00 8a       	std	Z+16, r0	; 0x10
  f0:	01 00       	.word	0x0001	; ????
  f2:	00 04       	cpc	r0, r0
  f4:	00 f3       	brcs	.-64     	; 0xb6 <__SREG__+0x77>
  f6:	01 68       	ori	r16, 0x81	; 129
  f8:	9f 00       	.word	0x009f	; ????
  fa:	00 00       	nop
  fc:	00 00       	nop
  fe:	00 00       	nop
 100:	00 72       	andi	r16, 0x20	; 32
 102:	01 00       	.word	0x0001	; ????
 104:	00 7a       	andi	r16, 0xA0	; 160
 106:	01 00       	.word	0x0001	; ????
 108:	00 06       	cpc	r0, r16
 10a:	00 66       	ori	r16, 0x60	; 96
 10c:	93 01       	movw	r18, r6
 10e:	67 93       	lat	Z, r22
 110:	01 7a       	andi	r16, 0xA1	; 161
 112:	01 00       	.word	0x0001	; ????
 114:	00 81       	ld	r16, Z
 116:	01 00       	.word	0x0001	; ????
 118:	00 06       	cpc	r0, r16
 11a:	00 62       	ori	r16, 0x20	; 32
 11c:	93 01       	movw	r18, r6
 11e:	63 93       	.word	0x9363	; ????
 120:	01 81       	ldd	r16, Z+1	; 0x01
 122:	01 00       	.word	0x0001	; ????
 124:	00 8a       	std	Z+16, r0	; 0x10
 126:	01 00       	.word	0x0001	; ????
 128:	00 04       	cpc	r0, r0
 12a:	00 f3       	brcs	.-64     	; 0xec <__SREG__+0xad>
 12c:	01 66       	ori	r16, 0x61	; 97
 12e:	9f 00       	.word	0x009f	; ????
 130:	00 00       	nop
 132:	00 00       	nop
 134:	00 00       	nop
 136:	00 8a       	std	Z+16, r0	; 0x10
 138:	01 00       	.word	0x0001	; ????
 13a:	00 8c       	ldd	r0, Z+24	; 0x18
 13c:	01 00       	.word	0x0001	; ????
 13e:	00 03       	mulsu	r16, r16
 140:	00 92 20 02 	sts	0x0220, r0	; 0x800220 <__bss_end+0x56>
 144:	8c 01       	movw	r16, r24
 146:	00 00       	nop
 148:	8e 01       	movw	r16, r28
 14a:	00 00       	nop
 14c:	03 00       	.word	0x0003	; ????
 14e:	92 20       	and	r9, r2
 150:	03 8e       	std	Z+27, r0	; 0x1b
 152:	01 00       	.word	0x0001	; ????
 154:	00 92 01 00 	sts	0x0001, r0	; 0x800001 <__TEXT_REGION_LENGTH__+0x7e0001>
 158:	00 03       	mulsu	r16, r16
 15a:	00 92 20 04 	sts	0x0420, r0	; 0x800420 <__bss_end+0x256>
 15e:	92 01       	movw	r18, r4
 160:	00 00       	nop
 162:	aa 01       	movw	r20, r20
 164:	00 00       	nop
 166:	02 00       	.word	0x0002	; ????
 168:	8c 04       	cpc	r8, r12
	...
 172:	a0 01       	movw	r20, r0
 174:	00 00       	nop
 176:	a3 01       	movw	r20, r6
 178:	00 00       	nop
 17a:	06 00       	.word	0x0006	; ????
 17c:	66 93       	lac	Z, r22
 17e:	01 67       	ori	r16, 0x71	; 113
 180:	93 01       	movw	r18, r6
 182:	a3 01       	movw	r20, r6
 184:	00 00       	nop
 186:	a4 01       	movw	r20, r8
 188:	00 00       	nop
 18a:	03 00       	.word	0x0003	; ????
 18c:	91 03       	fmuls	r17, r17
 18e:	9f 00       	.word	0x009f	; ????
 190:	00 00       	nop
 192:	00 00       	nop
 194:	00 00       	nop
 196:	00 b8       	out	0x00, r0	; 0
 198:	01 00       	.word	0x0001	; ????
 19a:	00 ba       	out	0x10, r0	; 16
 19c:	01 00       	.word	0x0001	; ????
 19e:	00 03       	mulsu	r16, r16
 1a0:	00 92 20 02 	sts	0x0220, r0	; 0x800220 <__bss_end+0x56>
 1a4:	ba 01       	movw	r22, r20
 1a6:	00 00       	nop
 1a8:	bc 01       	movw	r22, r24
 1aa:	00 00       	nop
 1ac:	03 00       	.word	0x0003	; ????
 1ae:	92 20       	and	r9, r2
 1b0:	03 bc       	out	0x23, r0	; 35
 1b2:	01 00       	.word	0x0001	; ????
 1b4:	00 c2       	rjmp	.+1024   	; 0x5b6 <__LOCK_REGION_LENGTH__+0x1b6>
 1b6:	01 00       	.word	0x0001	; ????
 1b8:	00 03       	mulsu	r16, r16
 1ba:	00 92 20 04 	sts	0x0420, r0	; 0x800420 <__bss_end+0x256>
 1be:	c2 01       	movw	r24, r4
 1c0:	00 00       	nop
 1c2:	c4 01       	movw	r24, r8
 1c4:	00 00       	nop
 1c6:	03 00       	.word	0x0003	; ????
 1c8:	92 20       	and	r9, r2
 1ca:	05 c4       	rjmp	.+2058   	; 0x9d6 <Sort+0x2>
 1cc:	01 00       	.word	0x0001	; ????
 1ce:	00 d0       	rcall	.+0      	; 0x1d0 <printInt+0x18>
 1d0:	01 00       	.word	0x0001	; ????
 1d2:	00 03       	mulsu	r16, r16
 1d4:	00 92 20 06 	sts	0x0620, r0	; 0x800620 <__bss_end+0x456>
 1d8:	d0 01       	movw	r26, r0
 1da:	00 00       	nop
 1dc:	d2 01       	movw	r26, r4
 1de:	00 00       	nop
 1e0:	03 00       	.word	0x0003	; ????
 1e2:	92 20       	and	r9, r2
 1e4:	02 00       	.word	0x0002	; ????
 1e6:	00 00       	nop
 1e8:	00 00       	nop
 1ea:	00 00       	nop
 1ec:	00 b8       	out	0x00, r0	; 0
 1ee:	01 00       	.word	0x0001	; ????
 1f0:	00 c0       	rjmp	.+0      	; 0x1f2 <main+0x6>
 1f2:	01 00       	.word	0x0001	; ????
 1f4:	00 06       	cpc	r0, r16
 1f6:	00 68       	ori	r16, 0x80	; 128
 1f8:	93 01       	movw	r18, r6
 1fa:	69 93       	st	Y+, r22
 1fc:	01 c0       	rjmp	.+2      	; 0x200 <javax_rtcbench_RTCBenchmark_void_test_native+0x8>
 1fe:	01 00       	.word	0x0001	; ????
 200:	00 d2       	rcall	.+1024   	; 0x602 <__LOCK_REGION_LENGTH__+0x202>
 202:	01 00       	.word	0x0001	; ????
 204:	00 04       	cpc	r0, r0
 206:	00 f3       	brcs	.-64     	; 0x1c8 <printInt+0x10>
 208:	01 68       	ori	r16, 0x81	; 129
 20a:	9f 00       	.word	0x009f	; ????
 20c:	00 00       	nop
 20e:	00 00       	nop
 210:	00 00       	nop
 212:	00 d2       	rcall	.+1024   	; 0x614 <__LOCK_REGION_LENGTH__+0x214>
 214:	01 00       	.word	0x0001	; ????
 216:	00 d4       	rcall	.+2048   	; 0xa18 <Sort+0x44>
 218:	01 00       	.word	0x0001	; ????
 21a:	00 03       	mulsu	r16, r16
 21c:	00 92 20 02 	sts	0x0220, r0	; 0x800220 <__bss_end+0x56>
 220:	d4 01       	movw	r26, r8
 222:	00 00       	nop
 224:	d6 01       	movw	r26, r12
 226:	00 00       	nop
 228:	03 00       	.word	0x0003	; ????
 22a:	92 20       	and	r9, r2
 22c:	03 d6       	rcall	.+3078   	; 0xe34 <__fp_cmp+0x2>
 22e:	01 00       	.word	0x0001	; ????
 230:	00 dc       	rcall	.-2048   	; 0xfffffa32 <__eeprom_end+0xff7efa32>
 232:	01 00       	.word	0x0001	; ????
 234:	00 03       	mulsu	r16, r16
 236:	00 92 20 04 	sts	0x0420, r0	; 0x800420 <__bss_end+0x256>
 23a:	dc 01       	movw	r26, r24
 23c:	00 00       	nop
 23e:	de 01       	movw	r26, r28
 240:	00 00       	nop
 242:	03 00       	.word	0x0003	; ????
 244:	92 20       	and	r9, r2
 246:	05 de       	rcall	.-1014   	; 0xfffffe52 <__eeprom_end+0xff7efe52>
 248:	01 00       	.word	0x0001	; ????
 24a:	00 ea       	ldi	r16, 0xA0	; 160
 24c:	01 00       	.word	0x0001	; ????
 24e:	00 03       	mulsu	r16, r16
 250:	00 92 20 06 	sts	0x0620, r0	; 0x800620 <__bss_end+0x456>
 254:	ea 01       	movw	r28, r20
 256:	00 00       	nop
 258:	ec 01       	movw	r28, r24
 25a:	00 00       	nop
 25c:	03 00       	.word	0x0003	; ????
 25e:	92 20       	and	r9, r2
 260:	02 00       	.word	0x0002	; ????
 262:	00 00       	nop
 264:	00 00       	nop
 266:	00 00       	nop
 268:	00 d2       	rcall	.+1024   	; 0x66a <__LOCK_REGION_LENGTH__+0x26a>
 26a:	01 00       	.word	0x0001	; ????
 26c:	00 da       	rcall	.-3072   	; 0xfffff66e <__eeprom_end+0xff7ef66e>
 26e:	01 00       	.word	0x0001	; ????
 270:	00 06       	cpc	r0, r16
 272:	00 68       	ori	r16, 0x80	; 128
 274:	93 01       	movw	r18, r6
 276:	69 93       	st	Y+, r22
 278:	01 da       	rcall	.-3070   	; 0xfffff67c <__eeprom_end+0xff7ef67c>
 27a:	01 00       	.word	0x0001	; ????
 27c:	00 ec       	ldi	r16, 0xC0	; 192
 27e:	01 00       	.word	0x0001	; ????
 280:	00 04       	cpc	r0, r0
 282:	00 f3       	brcs	.-64     	; 0x244 <javax_rtcbench_RTCBenchmark_void_test_native+0x4c>
 284:	01 68       	ori	r16, 0x81	; 129
 286:	9f 00       	.word	0x009f	; ????
 288:	00 00       	nop
 28a:	00 00       	nop
 28c:	00 00       	nop
 28e:	00 f8       	bld	r0, 0
 290:	01 00       	.word	0x0001	; ????
 292:	00 fa       	bst	r0, 0
 294:	01 00       	.word	0x0001	; ????
 296:	00 03       	mulsu	r16, r16
 298:	00 92 20 02 	sts	0x0220, r0	; 0x800220 <__bss_end+0x56>
 29c:	fa 01       	movw	r30, r20
 29e:	00 00       	nop
 2a0:	fc 01       	movw	r30, r24
 2a2:	00 00       	nop
 2a4:	03 00       	.word	0x0003	; ????
 2a6:	92 20       	and	r9, r2
 2a8:	03 fc       	sbrc	r0, 3
 2aa:	01 00       	.word	0x0001	; ????
 2ac:	00 fe       	sbrs	r0, 0
 2ae:	01 00       	.word	0x0001	; ????
 2b0:	00 03       	mulsu	r16, r16
 2b2:	00 92 20 04 	sts	0x0420, r0	; 0x800420 <__bss_end+0x256>
 2b6:	fe 01       	movw	r30, r28
 2b8:	00 00       	nop
 2ba:	00 02       	muls	r16, r16
 2bc:	00 00       	nop
 2be:	03 00       	.word	0x0003	; ????
 2c0:	92 20       	and	r9, r2
 2c2:	05 00       	.word	0x0005	; ????
 2c4:	02 00       	.word	0x0002	; ????
 2c6:	00 02       	muls	r16, r16
 2c8:	02 00       	.word	0x0002	; ????
 2ca:	00 03       	mulsu	r16, r16
 2cc:	00 92 20 06 	sts	0x0620, r0	; 0x800620 <__bss_end+0x456>
 2d0:	02 02       	muls	r16, r18
 2d2:	00 00       	nop
 2d4:	04 02       	muls	r16, r20
 2d6:	00 00       	nop
 2d8:	03 00       	.word	0x0003	; ????
 2da:	92 20       	and	r9, r2
 2dc:	07 04       	cpc	r0, r7
 2de:	02 00       	.word	0x0002	; ????
 2e0:	00 06       	cpc	r0, r16
 2e2:	02 00       	.word	0x0002	; ????
 2e4:	00 03       	mulsu	r16, r16
 2e6:	00 92 20 08 	sts	0x0820, r0	; 0x800820 <__bss_end+0x656>
 2ea:	06 02       	muls	r16, r22
 2ec:	00 00       	nop
 2ee:	08 02       	muls	r16, r24
 2f0:	00 00       	nop
 2f2:	03 00       	.word	0x0003	; ????
 2f4:	92 20       	and	r9, r2
 2f6:	09 08       	sbc	r0, r9
 2f8:	02 00       	.word	0x0002	; ????
 2fa:	00 0a       	sbc	r0, r16
 2fc:	02 00       	.word	0x0002	; ????
 2fe:	00 03       	mulsu	r16, r16
 300:	00 92 20 0a 	sts	0x0A20, r0	; 0x800a20 <__bss_end+0x856>
 304:	0a 02       	muls	r16, r26
 306:	00 00       	nop
 308:	0c 02       	muls	r16, r28
 30a:	00 00       	nop
 30c:	03 00       	.word	0x0003	; ????
 30e:	92 20       	and	r9, r2
 310:	0b 0c       	add	r0, r11
 312:	02 00       	.word	0x0002	; ????
 314:	00 0e       	add	r0, r16
 316:	02 00       	.word	0x0002	; ????
 318:	00 03       	mulsu	r16, r16
 31a:	00 92 20 0c 	sts	0x0C20, r0	; 0x800c20 <__bss_end+0xa56>
 31e:	0e 02       	muls	r16, r30
 320:	00 00       	nop
 322:	10 02       	muls	r17, r16
 324:	00 00       	nop
 326:	03 00       	.word	0x0003	; ????
 328:	92 20       	and	r9, r2
 32a:	0d 10       	cpse	r0, r13
 32c:	02 00       	.word	0x0002	; ????
 32e:	00 12       	cpse	r0, r16
 330:	02 00       	.word	0x0002	; ????
 332:	00 03       	mulsu	r16, r16
 334:	00 92 20 0e 	sts	0x0E20, r0	; 0x800e20 <__bss_end+0xc56>
 338:	12 02       	muls	r17, r18
 33a:	00 00       	nop
 33c:	14 02       	muls	r17, r20
 33e:	00 00       	nop
 340:	03 00       	.word	0x0003	; ????
 342:	92 20       	and	r9, r2
 344:	0f 14       	cp	r0, r15
 346:	02 00       	.word	0x0002	; ????
 348:	00 16       	cp	r0, r16
 34a:	02 00       	.word	0x0002	; ????
 34c:	00 03       	mulsu	r16, r16
 34e:	00 92 20 10 	sts	0x1020, r0	; 0x801020 <__bss_end+0xe56>
 352:	16 02       	muls	r17, r22
 354:	00 00       	nop
 356:	18 02       	muls	r17, r24
 358:	00 00       	nop
 35a:	03 00       	.word	0x0003	; ????
 35c:	92 20       	and	r9, r2
 35e:	11 18       	sub	r1, r1
 360:	02 00       	.word	0x0002	; ????
 362:	00 1a       	sub	r0, r16
 364:	02 00       	.word	0x0002	; ????
 366:	00 03       	mulsu	r16, r16
 368:	00 92 20 12 	sts	0x1220, r0	; 0x801220 <__bss_end+0x1056>
 36c:	1a 02       	muls	r17, r26
 36e:	00 00       	nop
 370:	1c 02       	muls	r17, r28
 372:	00 00       	nop
 374:	03 00       	.word	0x0003	; ????
 376:	92 20       	and	r9, r2
 378:	13 1c       	adc	r1, r3
 37a:	02 00       	.word	0x0002	; ????
 37c:	00 20       	and	r0, r0
 37e:	02 00       	.word	0x0002	; ????
 380:	00 03       	mulsu	r16, r16
 382:	00 92 20 14 	sts	0x1420, r0	; 0x801420 <__bss_end+0x1256>
 386:	20 02       	muls	r18, r16
 388:	00 00       	nop
 38a:	24 02       	muls	r18, r20
 38c:	00 00       	nop
 38e:	02 00       	.word	0x0002	; ????
 390:	8c 14       	cp	r8, r12
 392:	24 02       	muls	r18, r20
 394:	00 00       	nop
 396:	26 03       	mulsu	r18, r22
 398:	00 00       	nop
 39a:	03 00       	.word	0x0003	; ????
 39c:	8c c4       	rjmp	.+2328   	; 0xcb6 <__addsf3x+0x96>
 39e:	14 00       	.word	0x0014	; ????
 3a0:	00 00       	nop
 3a2:	00 00       	nop
 3a4:	00 00       	nop
 3a6:	00 26       	eor	r0, r16
 3a8:	03 00       	.word	0x0003	; ????
 3aa:	00 28       	or	r0, r0
 3ac:	03 00       	.word	0x0003	; ????
 3ae:	00 03       	mulsu	r16, r16
 3b0:	00 92 20 02 	sts	0x0220, r0	; 0x800220 <__bss_end+0x56>
 3b4:	28 03       	fmul	r18, r16
 3b6:	00 00       	nop
 3b8:	2a 03       	fmul	r18, r18
 3ba:	00 00       	nop
 3bc:	03 00       	.word	0x0003	; ????
 3be:	92 20       	and	r9, r2
 3c0:	03 2a       	or	r0, r19
 3c2:	03 00       	.word	0x0003	; ????
 3c4:	00 2c       	mov	r0, r0
 3c6:	03 00       	.word	0x0003	; ????
 3c8:	00 03       	mulsu	r16, r16
 3ca:	00 92 20 04 	sts	0x0420, r0	; 0x800420 <__bss_end+0x256>
 3ce:	2c 03       	fmul	r18, r20
 3d0:	00 00       	nop
 3d2:	2e 03       	fmul	r18, r22
 3d4:	00 00       	nop
 3d6:	03 00       	.word	0x0003	; ????
 3d8:	92 20       	and	r9, r2
 3da:	05 2e       	mov	r0, r21
 3dc:	03 00       	.word	0x0003	; ????
 3de:	00 30       	cpi	r16, 0x00	; 0
 3e0:	03 00       	.word	0x0003	; ????
 3e2:	00 03       	mulsu	r16, r16
 3e4:	00 92 20 06 	sts	0x0620, r0	; 0x800620 <__bss_end+0x456>
 3e8:	30 03       	mulsu	r19, r16
 3ea:	00 00       	nop
 3ec:	32 03       	mulsu	r19, r18
 3ee:	00 00       	nop
 3f0:	03 00       	.word	0x0003	; ????
 3f2:	92 20       	and	r9, r2
 3f4:	07 32       	cpi	r16, 0x27	; 39
 3f6:	03 00       	.word	0x0003	; ????
 3f8:	00 34       	cpi	r16, 0x40	; 64
 3fa:	03 00       	.word	0x0003	; ????
 3fc:	00 03       	mulsu	r16, r16
 3fe:	00 92 20 08 	sts	0x0820, r0	; 0x800820 <__bss_end+0x656>
 402:	34 03       	mulsu	r19, r20
 404:	00 00       	nop
 406:	36 03       	mulsu	r19, r22
 408:	00 00       	nop
 40a:	03 00       	.word	0x0003	; ????
 40c:	92 20       	and	r9, r2
 40e:	09 36       	cpi	r16, 0x69	; 105
 410:	03 00       	.word	0x0003	; ????
 412:	00 38       	cpi	r16, 0x80	; 128
 414:	03 00       	.word	0x0003	; ????
 416:	00 03       	mulsu	r16, r16
 418:	00 92 20 0a 	sts	0x0A20, r0	; 0x800a20 <__bss_end+0x856>
 41c:	38 03       	fmul	r19, r16
 41e:	00 00       	nop
 420:	3a 03       	fmul	r19, r18
 422:	00 00       	nop
 424:	03 00       	.word	0x0003	; ????
 426:	92 20       	and	r9, r2
 428:	0b 3a       	cpi	r16, 0xAB	; 171
 42a:	03 00       	.word	0x0003	; ????
 42c:	00 3c       	cpi	r16, 0xC0	; 192
 42e:	03 00       	.word	0x0003	; ????
 430:	00 03       	mulsu	r16, r16
 432:	00 92 20 0c 	sts	0x0C20, r0	; 0x800c20 <__bss_end+0xa56>
 436:	3c 03       	fmul	r19, r20
 438:	00 00       	nop
 43a:	3e 03       	fmul	r19, r22
 43c:	00 00       	nop
 43e:	03 00       	.word	0x0003	; ????
 440:	92 20       	and	r9, r2
 442:	0d 3e       	cpi	r16, 0xED	; 237
 444:	03 00       	.word	0x0003	; ????
 446:	00 40       	sbci	r16, 0x00	; 0
 448:	03 00       	.word	0x0003	; ????
 44a:	00 03       	mulsu	r16, r16
 44c:	00 92 20 0e 	sts	0x0E20, r0	; 0x800e20 <__bss_end+0xc56>
 450:	40 03       	mulsu	r20, r16
 452:	00 00       	nop
 454:	42 03       	mulsu	r20, r18
 456:	00 00       	nop
 458:	03 00       	.word	0x0003	; ????
 45a:	92 20       	and	r9, r2
 45c:	0f 42       	sbci	r16, 0x2F	; 47
 45e:	03 00       	.word	0x0003	; ????
 460:	00 44       	sbci	r16, 0x40	; 64
 462:	03 00       	.word	0x0003	; ????
 464:	00 03       	mulsu	r16, r16
 466:	00 92 20 10 	sts	0x1020, r0	; 0x801020 <__bss_end+0xe56>
 46a:	44 03       	mulsu	r20, r20
 46c:	00 00       	nop
 46e:	46 03       	mulsu	r20, r22
 470:	00 00       	nop
 472:	03 00       	.word	0x0003	; ????
 474:	92 20       	and	r9, r2
 476:	11 46       	sbci	r17, 0x61	; 97
 478:	03 00       	.word	0x0003	; ????
 47a:	00 48       	sbci	r16, 0x80	; 128
 47c:	03 00       	.word	0x0003	; ????
 47e:	00 03       	mulsu	r16, r16
 480:	00 92 20 12 	sts	0x1220, r0	; 0x801220 <__bss_end+0x1056>
 484:	48 03       	fmul	r20, r16
 486:	00 00       	nop
 488:	4a 03       	fmul	r20, r18
 48a:	00 00       	nop
 48c:	03 00       	.word	0x0003	; ????
 48e:	92 20       	and	r9, r2
 490:	13 4a       	sbci	r17, 0xA3	; 163
 492:	03 00       	.word	0x0003	; ????
 494:	00 4e       	sbci	r16, 0xE0	; 224
 496:	03 00       	.word	0x0003	; ????
 498:	00 03       	mulsu	r16, r16
 49a:	00 92 20 14 	sts	0x1420, r0	; 0x801420 <__bss_end+0x1256>
 49e:	4e 03       	fmul	r20, r22
 4a0:	00 00       	nop
 4a2:	50 03       	mulsu	r21, r16
 4a4:	00 00       	nop
 4a6:	02 00       	.word	0x0002	; ????
 4a8:	8c 14       	cp	r8, r12
 4aa:	50 03       	mulsu	r21, r16
 4ac:	00 00       	nop
 4ae:	d4 09       	sbc	r29, r4
 4b0:	00 00       	nop
 4b2:	02 00       	.word	0x0002	; ????
 4b4:	8c 34       	cpi	r24, 0x4C	; 76
	...
 4be:	26 03       	mulsu	r18, r22
 4c0:	00 00       	nop
 4c2:	78 03       	fmul	r23, r16
 4c4:	00 00       	nop
 4c6:	06 00       	.word	0x0006	; ????
 4c8:	68 93       	.word	0x9368	; ????
 4ca:	01 69       	ori	r16, 0x91	; 145
 4cc:	93 01       	movw	r18, r6
 4ce:	78 03       	fmul	r23, r16
 4d0:	00 00       	nop
 4d2:	ce 09       	sbc	r28, r14
 4d4:	00 00       	nop
 4d6:	06 00       	.word	0x0006	; ????
 4d8:	54 93       	xch	Z, r21
 4da:	01 55       	subi	r16, 0x51	; 81
 4dc:	93 01       	movw	r18, r6
 4de:	ce 09       	sbc	r28, r14
 4e0:	00 00       	nop
 4e2:	d4 09       	sbc	r29, r4
 4e4:	00 00       	nop
 4e6:	04 00       	.word	0x0004	; ????
 4e8:	f3 01       	movw	r30, r6
 4ea:	68 9f       	mul	r22, r24
	...
 4f4:	26 03       	mulsu	r18, r22
 4f6:	00 00       	nop
 4f8:	ee 03       	fmulsu	r22, r22
 4fa:	00 00       	nop
 4fc:	06 00       	.word	0x0006	; ????
 4fe:	66 93       	lac	Z, r22
 500:	01 67       	ori	r16, 0x71	; 113
 502:	93 01       	movw	r18, r6
 504:	ee 03       	fmulsu	r22, r22
 506:	00 00       	nop
 508:	d8 06       	cpc	r13, r24
 50a:	00 00       	nop
 50c:	02 00       	.word	0x0002	; ????
 50e:	91 55       	subi	r25, 0x51	; 81
 510:	d8 06       	cpc	r13, r24
 512:	00 00       	nop
 514:	d4 09       	sbc	r29, r4
 516:	00 00       	nop
 518:	04 00       	.word	0x0004	; ????
 51a:	f3 01       	movw	r30, r6
 51c:	66 9f       	mul	r22, r22
	...
 526:	26 03       	mulsu	r18, r22
 528:	00 00       	nop
 52a:	ee 03       	fmulsu	r22, r22
 52c:	00 00       	nop
 52e:	06 00       	.word	0x0006	; ????
 530:	64 93       	xch	Z, r22
 532:	01 65       	ori	r16, 0x51	; 81
 534:	93 01       	movw	r18, r6
 536:	ee 03       	fmulsu	r22, r22
 538:	00 00       	nop
 53a:	d4 09       	sbc	r29, r4
 53c:	00 00       	nop
 53e:	02 00       	.word	0x0002	; ????
 540:	91 57       	subi	r25, 0x71	; 113
	...
 54a:	26 03       	mulsu	r18, r22
 54c:	00 00       	nop
 54e:	78 03       	fmul	r23, r16
 550:	00 00       	nop
 552:	06 00       	.word	0x0006	; ????
 554:	62 93       	st	-Z, r22
 556:	01 63       	ori	r16, 0x31	; 49
 558:	93 01       	movw	r18, r6
 55a:	78 03       	fmul	r23, r16
 55c:	00 00       	nop
 55e:	24 08       	sbc	r2, r4
 560:	00 00       	nop
 562:	02 00       	.word	0x0002	; ????
 564:	91 4f       	sbci	r25, 0xF1	; 241
 566:	24 08       	sbc	r2, r4
 568:	00 00       	nop
 56a:	42 08       	sbc	r4, r2
 56c:	00 00       	nop
 56e:	04 00       	.word	0x0004	; ????
 570:	f3 01       	movw	r30, r6
 572:	62 9f       	mul	r22, r18
 574:	42 08       	sbc	r4, r2
 576:	00 00       	nop
 578:	b2 08       	sbc	r11, r2
 57a:	00 00       	nop
 57c:	02 00       	.word	0x0002	; ????
 57e:	91 4f       	sbci	r25, 0xF1	; 241
 580:	b2 08       	sbc	r11, r2
 582:	00 00       	nop
 584:	d4 09       	sbc	r29, r4
 586:	00 00       	nop
 588:	04 00       	.word	0x0004	; ????
 58a:	f3 01       	movw	r30, r6
 58c:	62 9f       	mul	r22, r18
	...
 596:	26 03       	mulsu	r18, r22
 598:	00 00       	nop
 59a:	d2 03       	fmuls	r21, r18
 59c:	00 00       	nop
 59e:	06 00       	.word	0x0006	; ????
 5a0:	60 93 01 61 	sts	0x6101, r22	; 0x806101 <__bss_end+0x5f37>
 5a4:	93 01       	movw	r18, r6
 5a6:	d2 03       	fmuls	r21, r18
 5a8:	00 00       	nop
 5aa:	d4 09       	sbc	r29, r4
 5ac:	00 00       	nop
 5ae:	02 00       	.word	0x0002	; ????
 5b0:	91 59       	subi	r25, 0x91	; 145
	...
 5ba:	26 03       	mulsu	r18, r22
 5bc:	00 00       	nop
 5be:	92 03       	fmuls	r17, r18
 5c0:	00 00       	nop
 5c2:	06 00       	.word	0x0006	; ????
 5c4:	5e 93       	st	-X, r21
 5c6:	01 5f       	subi	r16, 0xF1	; 241
 5c8:	93 01       	movw	r18, r6
 5ca:	92 03       	fmuls	r17, r18
 5cc:	00 00       	nop
 5ce:	d2 09       	sbc	r29, r2
 5d0:	00 00       	nop
 5d2:	06 00       	.word	0x0006	; ????
 5d4:	52 93       	st	-Z, r21
 5d6:	01 53       	subi	r16, 0x31	; 49
 5d8:	93 01       	movw	r18, r6
 5da:	d2 09       	sbc	r29, r2
 5dc:	00 00       	nop
 5de:	d4 09       	sbc	r29, r4
 5e0:	00 00       	nop
 5e2:	04 00       	.word	0x0004	; ????
 5e4:	f3 01       	movw	r30, r6
 5e6:	5e 9f       	mul	r21, r30
	...
 5f0:	6e 03       	fmul	r22, r22
 5f2:	00 00       	nop
 5f4:	78 03       	fmul	r23, r16
 5f6:	00 00       	nop
 5f8:	02 00       	.word	0x0002	; ????
 5fa:	30 9f       	mul	r19, r16
 5fc:	78 03       	fmul	r23, r16
 5fe:	00 00       	nop
 600:	90 03       	fmuls	r17, r16
 602:	00 00       	nop
 604:	06 00       	.word	0x0006	; ????
 606:	68 93       	.word	0x9368	; ????
 608:	01 69       	ori	r16, 0x91	; 145
 60a:	93 01       	movw	r18, r6
 60c:	c8 04       	cpc	r12, r8
 60e:	00 00       	nop
 610:	ce 04       	cpc	r12, r14
 612:	00 00       	nop
 614:	07 00       	.word	0x0007	; ????
 616:	91 5b       	subi	r25, 0xB1	; 177
 618:	94 02       	muls	r25, r20
 61a:	23 02       	muls	r18, r19
 61c:	9f ce       	rjmp	.-706    	; 0x35c <Covlution+0x36>
 61e:	04 00       	.word	0x0004	; ????
 620:	00 de       	rcall	.-1024   	; 0x222 <javax_rtcbench_RTCBenchmark_void_test_native+0x2a>
 622:	04 00       	.word	0x0004	; ????
 624:	00 06       	cpc	r0, r16
 626:	00 68       	ori	r16, 0x80	; 128
 628:	93 01       	movw	r18, r6
 62a:	69 93       	st	Y+, r22
 62c:	01 c8       	rjmp	.-4094   	; 0xfffff630 <__eeprom_end+0xff7ef630>
 62e:	05 00       	.word	0x0005	; ????
 630:	00 d0       	rcall	.+0      	; 0x632 <__LOCK_REGION_LENGTH__+0x232>
 632:	05 00       	.word	0x0005	; ????
 634:	00 07       	cpc	r16, r16
 636:	00 91 5b 94 	lds	r16, 0x945B	; 0x80945b <__bss_end+0x9291>
 63a:	02 23       	and	r16, r18
 63c:	02 9f       	mul	r16, r18
 63e:	d0 05       	cpc	r29, r0
 640:	00 00       	nop
 642:	e0 05       	cpc	r30, r0
 644:	00 00       	nop
 646:	06 00       	.word	0x0006	; ????
 648:	62 93       	st	-Z, r22
 64a:	01 63       	ori	r16, 0x31	; 49
 64c:	93 01       	movw	r18, r6
 64e:	e0 06       	cpc	r14, r16
 650:	00 00       	nop
 652:	0a 07       	cpc	r16, r26
 654:	00 00       	nop
 656:	06 00       	.word	0x0006	; ????
 658:	6e 93       	st	-X, r22
 65a:	01 6f       	ori	r16, 0xF1	; 241
 65c:	93 01       	movw	r18, r6
 65e:	0a 07       	cpc	r16, r26
 660:	00 00       	nop
 662:	dc 07       	cpc	r29, r28
 664:	00 00       	nop
 666:	03 00       	.word	0x0003	; ????
 668:	80 01       	movw	r16, r0
 66a:	9f dc       	rcall	.-1730   	; 0xffffffaa <__eeprom_end+0xff7effaa>
 66c:	07 00       	.word	0x0007	; ????
 66e:	00 02       	muls	r16, r16
 670:	08 00       	.word	0x0008	; ????
 672:	00 06       	cpc	r0, r16
 674:	00 6e       	ori	r16, 0xE0	; 224
 676:	93 01       	movw	r18, r6
 678:	6f 93       	push	r22
 67a:	01 02       	muls	r16, r17
 67c:	08 00       	.word	0x0008	; ????
 67e:	00 9a       	sbi	0x00, 0	; 0
 680:	08 00       	.word	0x0008	; ????
 682:	00 02       	muls	r16, r16
 684:	00 91 55 9a 	lds	r16, 0x9A55	; 0x809a55 <__bss_end+0x988b>
 688:	08 00       	.word	0x0008	; ????
 68a:	00 a2       	std	Z+32, r0	; 0x20
 68c:	08 00       	.word	0x0008	; ????
 68e:	00 07       	cpc	r16, r16
 690:	00 91 55 94 	lds	r16, 0x9455	; 0x809455 <__bss_end+0x928b>
 694:	02 23       	and	r16, r18
 696:	02 9f       	mul	r16, r18
 698:	a2 08       	sbc	r10, r2
 69a:	00 00       	nop
 69c:	b2 08       	sbc	r11, r2
 69e:	00 00       	nop
 6a0:	06 00       	.word	0x0006	; ????
 6a2:	62 93       	st	-Z, r22
 6a4:	01 63       	ori	r16, 0x31	; 49
 6a6:	93 01       	movw	r18, r6
 6a8:	b2 08       	sbc	r11, r2
 6aa:	00 00       	nop
 6ac:	b6 09       	sbc	r27, r6
 6ae:	00 00       	nop
 6b0:	0a 00       	.word	0x000a	; ????
 6b2:	91 55       	subi	r25, 0x51	; 81
 6b4:	94 02       	muls	r25, r20
 6b6:	80 00       	.word	0x0080	; ????
 6b8:	22 31       	cpi	r18, 0x12	; 18
 6ba:	1c 9f       	mul	r17, r28
	...
 6c4:	6e 03       	fmul	r22, r22
 6c6:	00 00       	nop
 6c8:	ee 03       	fmulsu	r22, r22
 6ca:	00 00       	nop
 6cc:	02 00       	.word	0x0002	; ????
 6ce:	30 9f       	mul	r19, r16
 6d0:	c8 04       	cpc	r12, r8
 6d2:	00 00       	nop
 6d4:	ce 04       	cpc	r12, r14
 6d6:	00 00       	nop
 6d8:	07 00       	.word	0x0007	; ????
 6da:	91 5b       	subi	r25, 0xB1	; 177
 6dc:	94 02       	muls	r25, r20
 6de:	23 04       	cpc	r2, r3
 6e0:	9f ce       	rjmp	.-706    	; 0x420 <__LOCK_REGION_LENGTH__+0x20>
 6e2:	04 00       	.word	0x0004	; ????
 6e4:	00 de       	rcall	.-1024   	; 0x2e6 <javax_rtcbench_RTCBenchmark_void_test_native+0xee>
 6e6:	04 00       	.word	0x0004	; ????
 6e8:	00 03       	mulsu	r16, r16
 6ea:	00 88       	ldd	r0, Z+16	; 0x10
 6ec:	02 9f       	mul	r16, r18
 6ee:	7e 05       	cpc	r23, r14
 6f0:	00 00       	nop
 6f2:	e0 05       	cpc	r30, r0
 6f4:	00 00       	nop
 6f6:	06 00       	.word	0x0006	; ????
 6f8:	5e 93       	st	-X, r21
 6fa:	01 5f       	subi	r16, 0xF1	; 241
 6fc:	93 01       	movw	r18, r6
 6fe:	e0 05       	cpc	r30, r0
 700:	00 00       	nop
 702:	d8 06       	cpc	r13, r24
 704:	00 00       	nop
 706:	06 00       	.word	0x0006	; ????
 708:	60 93 01 61 	sts	0x6101, r22	; 0x806101 <__bss_end+0x5f37>
 70c:	93 01       	movw	r18, r6
 70e:	e0 06       	cpc	r14, r16
 710:	00 00       	nop
 712:	de 07       	cpc	r29, r30
 714:	00 00       	nop
 716:	06 00       	.word	0x0006	; ????
 718:	60 93 01 61 	sts	0x6101, r22	; 0x806101 <__bss_end+0x5f37>
 71c:	93 01       	movw	r18, r6
 71e:	de 07       	cpc	r29, r30
 720:	00 00       	nop
 722:	02 08       	sbc	r0, r2
 724:	00 00       	nop
 726:	03 00       	.word	0x0003	; ????
 728:	8e 7f       	andi	r24, 0xFE	; 254
 72a:	9f 54       	subi	r25, 0x4F	; 79
 72c:	08 00       	.word	0x0008	; ????
 72e:	00 b2       	in	r0, 0x10	; 16
 730:	08 00       	.word	0x0008	; ????
 732:	00 06       	cpc	r0, r16
 734:	00 5c       	subi	r16, 0xC0	; 192
 736:	93 01       	movw	r18, r6
 738:	5d 93       	st	X+, r21
 73a:	01 b2       	in	r0, 0x11	; 17
 73c:	08 00       	.word	0x0008	; ????
 73e:	00 b6       	in	r0, 0x30	; 48
 740:	09 00       	.word	0x0009	; ????
 742:	00 06       	cpc	r0, r16
 744:	00 60       	ori	r16, 0x00	; 0
 746:	93 01       	movw	r18, r6
 748:	61 93       	st	Z+, r22
 74a:	01 00       	.word	0x0001	; ????
 74c:	00 00       	nop
 74e:	00 00       	nop
 750:	00 00       	nop
 752:	00 6e       	ori	r16, 0xE0	; 224
 754:	03 00       	.word	0x0003	; ????
 756:	00 ee       	ldi	r16, 0xE0	; 224
 758:	03 00       	.word	0x0003	; ????
 75a:	00 02       	muls	r16, r16
 75c:	00 30       	cpi	r16, 0x00	; 0
 75e:	9f 0a       	sbc	r9, r31
 760:	04 00       	.word	0x0004	; ????
 762:	00 66       	ori	r16, 0x60	; 96
 764:	04 00       	.word	0x0004	; ????
 766:	00 06       	cpc	r0, r16
 768:	00 5a       	subi	r16, 0xA0	; 160
 76a:	93 01       	movw	r18, r6
 76c:	5b 93       	.word	0x935b	; ????
 76e:	01 6e       	ori	r16, 0xE1	; 225
 770:	04 00       	.word	0x0004	; ????
 772:	00 de       	rcall	.-1024   	; 0x374 <Covlution+0x4e>
 774:	04 00       	.word	0x0004	; ????
 776:	00 06       	cpc	r0, r16
 778:	00 5a       	subi	r16, 0xA0	; 160
 77a:	93 01       	movw	r18, r6
 77c:	5b 93       	.word	0x935b	; ????
 77e:	01 e0       	ldi	r16, 0x01	; 1
 780:	05 00       	.word	0x0005	; ????
 782:	00 f4       	brcc	.+0      	; 0x784 <__LOCK_REGION_LENGTH__+0x384>
 784:	05 00       	.word	0x0005	; ????
 786:	00 06       	cpc	r0, r16
 788:	00 5c       	subi	r16, 0xC0	; 192
 78a:	93 01       	movw	r18, r6
 78c:	5d 93       	st	X+, r21
 78e:	01 12       	cpse	r0, r17
 790:	06 00       	.word	0x0006	; ????
 792:	00 78       	andi	r16, 0x80	; 128
 794:	06 00       	.word	0x0006	; ????
 796:	00 06       	cpc	r0, r16
 798:	00 5e       	subi	r16, 0xE0	; 224
 79a:	93 01       	movw	r18, r6
 79c:	5f 93       	push	r21
 79e:	01 84       	ldd	r0, Z+9	; 0x09
 7a0:	06 00       	.word	0x0006	; ????
 7a2:	00 d0       	rcall	.+0      	; 0x7a4 <__LOCK_REGION_LENGTH__+0x3a4>
 7a4:	06 00       	.word	0x0006	; ????
 7a6:	00 06       	cpc	r0, r16
 7a8:	00 5c       	subi	r16, 0xC0	; 192
 7aa:	93 01       	movw	r18, r6
 7ac:	5d 93       	st	X+, r21
 7ae:	01 f4       	brne	.+0      	; 0x7b0 <__LOCK_REGION_LENGTH__+0x3b0>
 7b0:	06 00       	.word	0x0006	; ????
 7b2:	00 5c       	subi	r16, 0xC0	; 192
 7b4:	07 00       	.word	0x0007	; ????
 7b6:	00 06       	cpc	r0, r16
 7b8:	00 5c       	subi	r16, 0xC0	; 192
 7ba:	93 01       	movw	r18, r6
 7bc:	5d 93       	st	X+, r21
 7be:	01 60       	ori	r16, 0x01	; 1
 7c0:	07 00       	.word	0x0007	; ????
 7c2:	00 dc       	rcall	.-2048   	; 0xffffffc4 <__eeprom_end+0xff7effc4>
 7c4:	07 00       	.word	0x0007	; ????
 7c6:	00 06       	cpc	r0, r16
 7c8:	00 5c       	subi	r16, 0xC0	; 192
 7ca:	93 01       	movw	r18, r6
 7cc:	5d 93       	st	X+, r21
 7ce:	01 b2       	in	r0, 0x11	; 17
 7d0:	08 00       	.word	0x0008	; ????
 7d2:	00 c6       	rjmp	.+3072   	; 0x13d4 <vfprintf+0x62>
 7d4:	08 00       	.word	0x0008	; ????
 7d6:	00 06       	cpc	r0, r16
 7d8:	00 5a       	subi	r16, 0xA0	; 160
 7da:	93 01       	movw	r18, r6
 7dc:	5b 93       	.word	0x935b	; ????
 7de:	01 e4       	ldi	r16, 0x41	; 65
 7e0:	08 00       	.word	0x0008	; ????
 7e2:	00 4a       	sbci	r16, 0xA0	; 160
 7e4:	09 00       	.word	0x0009	; ????
 7e6:	00 06       	cpc	r0, r16
 7e8:	00 5c       	subi	r16, 0xC0	; 192
 7ea:	93 01       	movw	r18, r6
 7ec:	5d 93       	st	X+, r21
 7ee:	01 56       	subi	r16, 0x61	; 97
 7f0:	09 00       	.word	0x0009	; ????
 7f2:	00 a2       	std	Z+32, r0	; 0x20
 7f4:	09 00       	.word	0x0009	; ????
 7f6:	00 06       	cpc	r0, r16
 7f8:	00 5a       	subi	r16, 0xA0	; 160
 7fa:	93 01       	movw	r18, r6
 7fc:	5b 93       	.word	0x935b	; ????
 7fe:	01 00       	.word	0x0001	; ????
 800:	00 00       	nop
 802:	00 00       	nop
 804:	00 00       	nop
 806:	00 d4       	rcall	.+2048   	; 0x1008 <pow+0x12>
 808:	09 00       	.word	0x0009	; ????
 80a:	00 d6       	rcall	.+3072   	; 0x140c <vfprintf+0x9a>
 80c:	09 00       	.word	0x0009	; ????
 80e:	00 03       	mulsu	r16, r16
 810:	00 92 20 02 	sts	0x0220, r0	; 0x800220 <__bss_end+0x56>
 814:	d6 09       	sbc	r29, r6
 816:	00 00       	nop
 818:	d8 09       	sbc	r29, r8
 81a:	00 00       	nop
 81c:	03 00       	.word	0x0003	; ????
 81e:	92 20       	and	r9, r2
 820:	03 d8       	rcall	.-4090   	; 0xfffff828 <__eeprom_end+0xff7ef828>
 822:	09 00       	.word	0x0009	; ????
 824:	00 da       	rcall	.-3072   	; 0xfffffc26 <__eeprom_end+0xff7efc26>
 826:	09 00       	.word	0x0009	; ????
 828:	00 03       	mulsu	r16, r16
 82a:	00 92 20 04 	sts	0x0420, r0	; 0x800420 <__bss_end+0x256>
 82e:	da 09       	sbc	r29, r10
 830:	00 00       	nop
 832:	dc 09       	sbc	r29, r12
 834:	00 00       	nop
 836:	03 00       	.word	0x0003	; ????
 838:	92 20       	and	r9, r2
 83a:	05 dc       	rcall	.-2038   	; 0x46 <__SREG__+0x7>
 83c:	09 00       	.word	0x0009	; ????
 83e:	00 de       	rcall	.-1024   	; 0x440 <__LOCK_REGION_LENGTH__+0x40>
 840:	09 00       	.word	0x0009	; ????
 842:	00 03       	mulsu	r16, r16
 844:	00 92 20 06 	sts	0x0620, r0	; 0x800620 <__bss_end+0x456>
 848:	de 09       	sbc	r29, r14
 84a:	00 00       	nop
 84c:	e0 09       	sbc	r30, r0
 84e:	00 00       	nop
 850:	03 00       	.word	0x0003	; ????
 852:	92 20       	and	r9, r2
 854:	07 e0       	ldi	r16, 0x07	; 7
 856:	09 00       	.word	0x0009	; ????
 858:	00 7e       	andi	r16, 0xE0	; 224
 85a:	0a 00       	.word	0x000a	; ????
 85c:	00 03       	mulsu	r16, r16
 85e:	00 92 20 08 	sts	0x0820, r0	; 0x800820 <__bss_end+0x656>
	...
 86a:	d4 09       	sbc	r29, r4
 86c:	00 00       	nop
 86e:	32 0a       	sbc	r3, r18
 870:	00 00       	nop
 872:	06 00       	.word	0x0006	; ????
 874:	68 93       	.word	0x9368	; ????
 876:	01 69       	ori	r16, 0x91	; 145
 878:	93 01       	movw	r18, r6
 87a:	32 0a       	sbc	r3, r18
 87c:	00 00       	nop
 87e:	7e 0a       	sbc	r7, r30
 880:	00 00       	nop
 882:	04 00       	.word	0x0004	; ????
 884:	f3 01       	movw	r30, r6
 886:	68 9f       	mul	r22, r24
	...
 890:	d4 09       	sbc	r29, r4
 892:	00 00       	nop
 894:	24 0a       	sbc	r2, r20
 896:	00 00       	nop
 898:	06 00       	.word	0x0006	; ????
 89a:	64 93       	xch	Z, r22
 89c:	01 65       	ori	r16, 0x51	; 81
 89e:	93 01       	movw	r18, r6
 8a0:	24 0a       	sbc	r2, r20
 8a2:	00 00       	nop
 8a4:	28 0a       	sbc	r2, r24
 8a6:	00 00       	nop
 8a8:	06 00       	.word	0x0006	; ????
 8aa:	62 93       	st	-Z, r22
 8ac:	01 63       	ori	r16, 0x31	; 49
 8ae:	93 01       	movw	r18, r6
 8b0:	28 0a       	sbc	r2, r24
 8b2:	00 00       	nop
 8b4:	7e 0a       	sbc	r7, r30
 8b6:	00 00       	nop
 8b8:	06 00       	.word	0x0006	; ????
 8ba:	64 93       	xch	Z, r22
 8bc:	01 65       	ori	r16, 0x51	; 81
 8be:	93 01       	movw	r18, r6
	...
 8c8:	e0 09       	sbc	r30, r0
 8ca:	00 00       	nop
 8cc:	e6 09       	sbc	r30, r6
 8ce:	00 00       	nop
 8d0:	02 00       	.word	0x0002	; ????
 8d2:	30 9f       	mul	r19, r16
 8d4:	e6 09       	sbc	r30, r6
 8d6:	00 00       	nop
 8d8:	32 0a       	sbc	r3, r18
 8da:	00 00       	nop
 8dc:	06 00       	.word	0x0006	; ????
 8de:	6a 93       	st	-Y, r22
 8e0:	01 6b       	ori	r16, 0xB1	; 177
 8e2:	93 01       	movw	r18, r6
	...
 8ec:	7e 0a       	sbc	r7, r30
 8ee:	00 00       	nop
 8f0:	80 0a       	sbc	r8, r16
 8f2:	00 00       	nop
 8f4:	03 00       	.word	0x0003	; ????
 8f6:	92 20       	and	r9, r2
 8f8:	02 80       	ldd	r0, Z+2	; 0x02
 8fa:	0a 00       	.word	0x000a	; ????
 8fc:	00 82       	st	Z, r0
 8fe:	0a 00       	.word	0x000a	; ????
 900:	00 03       	mulsu	r16, r16
 902:	00 92 20 03 	sts	0x0320, r0	; 0x800320 <__bss_end+0x156>
 906:	82 0a       	sbc	r8, r18
 908:	00 00       	nop
 90a:	84 0a       	sbc	r8, r20
 90c:	00 00       	nop
 90e:	03 00       	.word	0x0003	; ????
 910:	92 20       	and	r9, r2
 912:	04 84       	ldd	r0, Z+12	; 0x0c
 914:	0a 00       	.word	0x000a	; ????
 916:	00 86       	std	Z+8, r0	; 0x08
 918:	0a 00       	.word	0x000a	; ????
 91a:	00 03       	mulsu	r16, r16
 91c:	00 92 20 05 	sts	0x0520, r0	; 0x800520 <__bss_end+0x356>
 920:	86 0a       	sbc	r8, r22
 922:	00 00       	nop
 924:	88 0a       	sbc	r8, r24
 926:	00 00       	nop
 928:	03 00       	.word	0x0003	; ????
 92a:	92 20       	and	r9, r2
 92c:	06 88       	ldd	r0, Z+22	; 0x16
 92e:	0a 00       	.word	0x000a	; ????
 930:	00 8a       	std	Z+16, r0	; 0x10
 932:	0a 00       	.word	0x000a	; ????
 934:	00 03       	mulsu	r16, r16
 936:	00 92 20 07 	sts	0x0720, r0	; 0x800720 <__bss_end+0x556>
 93a:	8a 0a       	sbc	r8, r26
 93c:	00 00       	nop
 93e:	8c 0a       	sbc	r8, r28
 940:	00 00       	nop
 942:	03 00       	.word	0x0003	; ????
 944:	92 20       	and	r9, r2
 946:	08 8c       	ldd	r0, Y+24	; 0x18
 948:	0a 00       	.word	0x000a	; ????
 94a:	00 8e       	std	Z+24, r0	; 0x18
 94c:	0a 00       	.word	0x000a	; ????
 94e:	00 03       	mulsu	r16, r16
 950:	00 92 20 09 	sts	0x0920, r0	; 0x800920 <__bss_end+0x756>
 954:	8e 0a       	sbc	r8, r30
 956:	00 00       	nop
 958:	90 0a       	sbc	r9, r16
 95a:	00 00       	nop
 95c:	03 00       	.word	0x0003	; ????
 95e:	92 20       	and	r9, r2
 960:	0a 90       	ld	r0, -Y
 962:	0a 00       	.word	0x000a	; ????
 964:	00 92 0a 00 	sts	0x000A, r0	; 0x80000a <__TEXT_REGION_LENGTH__+0x7e000a>
 968:	00 03       	mulsu	r16, r16
 96a:	00 92 20 0b 	sts	0x0B20, r0	; 0x800b20 <__bss_end+0x956>
 96e:	92 0a       	sbc	r9, r18
 970:	00 00       	nop
 972:	94 0a       	sbc	r9, r20
 974:	00 00       	nop
 976:	03 00       	.word	0x0003	; ????
 978:	92 20       	and	r9, r2
 97a:	0c 94 0a 00 	jmp	0x14	; 0x14 <__FUSE_REGION_LENGTH__+0x11>
 97e:	00 96       	adiw	r24, 0x00	; 0
 980:	0a 00       	.word	0x000a	; ????
 982:	00 03       	mulsu	r16, r16
 984:	00 92 20 0d 	sts	0x0D20, r0	; 0x800d20 <__bss_end+0xb56>
 988:	96 0a       	sbc	r9, r22
 98a:	00 00       	nop
 98c:	98 0a       	sbc	r9, r24
 98e:	00 00       	nop
 990:	03 00       	.word	0x0003	; ????
 992:	92 20       	and	r9, r2
 994:	0e 98       	cbi	0x01, 6	; 1
 996:	0a 00       	.word	0x000a	; ????
 998:	00 9a       	sbi	0x00, 0	; 0
 99a:	0a 00       	.word	0x000a	; ????
 99c:	00 03       	mulsu	r16, r16
 99e:	00 92 20 0f 	sts	0x0F20, r0	; 0x800f20 <__bss_end+0xd56>
 9a2:	9a 0a       	sbc	r9, r26
 9a4:	00 00       	nop
 9a6:	9c 0a       	sbc	r9, r28
 9a8:	00 00       	nop
 9aa:	03 00       	.word	0x0003	; ????
 9ac:	92 20       	and	r9, r2
 9ae:	10 9c       	mul	r1, r0
 9b0:	0a 00       	.word	0x000a	; ????
 9b2:	00 9e       	mul	r0, r16
 9b4:	0a 00       	.word	0x000a	; ????
 9b6:	00 03       	mulsu	r16, r16
 9b8:	00 92 20 11 	sts	0x1120, r0	; 0x801120 <__bss_end+0xf56>
 9bc:	9e 0a       	sbc	r9, r30
 9be:	00 00       	nop
 9c0:	a0 0a       	sbc	r10, r16
 9c2:	00 00       	nop
 9c4:	03 00       	.word	0x0003	; ????
 9c6:	92 20       	and	r9, r2
 9c8:	12 a0       	ldd	r1, Z+34	; 0x22
 9ca:	0a 00       	.word	0x000a	; ????
 9cc:	00 a2       	std	Z+32, r0	; 0x20
 9ce:	0a 00       	.word	0x000a	; ????
 9d0:	00 03       	mulsu	r16, r16
 9d2:	00 92 20 13 	sts	0x1320, r0	; 0x801320 <__bss_end+0x1156>
 9d6:	a2 0a       	sbc	r10, r18
 9d8:	00 00       	nop
 9da:	a6 0a       	sbc	r10, r22
 9dc:	00 00       	nop
 9de:	03 00       	.word	0x0003	; ????
 9e0:	92 20       	and	r9, r2
 9e2:	14 a6       	std	Z+44, r1	; 0x2c
 9e4:	0a 00       	.word	0x000a	; ????
 9e6:	00 a8       	ldd	r0, Z+48	; 0x30
 9e8:	0a 00       	.word	0x000a	; ????
 9ea:	00 02       	muls	r16, r16
 9ec:	00 8c       	ldd	r0, Z+24	; 0x18
 9ee:	14 a8       	ldd	r1, Z+52	; 0x34
 9f0:	0a 00       	.word	0x000a	; ????
 9f2:	00 f0       	brcs	.+0      	; 0x9f4 <Sort+0x20>
 9f4:	0b 00       	.word	0x000b	; ????
 9f6:	00 02       	muls	r16, r16
 9f8:	00 8c       	ldd	r0, Z+24	; 0x18
 9fa:	20 00       	.word	0x0020	; ????
 9fc:	00 00       	nop
 9fe:	00 00       	nop
 a00:	00 00       	nop
 a02:	00 7e       	andi	r16, 0xE0	; 224
 a04:	0a 00       	.word	0x000a	; ????
 a06:	00 d4       	rcall	.+2048   	; 0x1208 <log+0x1c>
 a08:	0a 00       	.word	0x000a	; ????
 a0a:	00 06       	cpc	r0, r16
 a0c:	00 68       	ori	r16, 0x80	; 128
 a0e:	93 01       	movw	r18, r6
 a10:	69 93       	st	Y+, r22
 a12:	01 d4       	rcall	.+2050   	; 0x1216 <log+0x2a>
 a14:	0a 00       	.word	0x000a	; ????
 a16:	00 f0       	brcs	.+0      	; 0xa18 <Sort+0x44>
 a18:	0b 00       	.word	0x000b	; ????
 a1a:	00 04       	cpc	r0, r0
 a1c:	00 f3       	brcs	.-64     	; 0x9de <Sort+0xa>
 a1e:	01 68       	ori	r16, 0x81	; 129
 a20:	9f 00       	.word	0x009f	; ????
 a22:	00 00       	nop
 a24:	00 00       	nop
 a26:	00 00       	nop
 a28:	00 7e       	andi	r16, 0xE0	; 224
 a2a:	0a 00       	.word	0x000a	; ????
 a2c:	00 fa       	bst	r0, 0
 a2e:	0a 00       	.word	0x000a	; ????
 a30:	00 06       	cpc	r0, r16
 a32:	00 66       	ori	r16, 0x60	; 96
 a34:	93 01       	movw	r18, r6
 a36:	67 93       	lat	Z, r22
 a38:	01 fa       	bst	r0, 1
 a3a:	0a 00       	.word	0x000a	; ????
 a3c:	00 f0       	brcs	.+0      	; 0xa3e <Sort+0x6a>
 a3e:	0b 00       	.word	0x000b	; ????
 a40:	00 04       	cpc	r0, r0
 a42:	00 f3       	brcs	.-64     	; 0xa04 <Sort+0x30>
 a44:	01 66       	ori	r16, 0x61	; 97
 a46:	9f 00       	.word	0x009f	; ????
 a48:	00 00       	nop
 a4a:	00 00       	nop
 a4c:	00 00       	nop
 a4e:	00 7e       	andi	r16, 0xE0	; 224
 a50:	0a 00       	.word	0x000a	; ????
 a52:	00 d4       	rcall	.+2048   	; 0x1254 <log+0x68>
 a54:	0a 00       	.word	0x000a	; ????
 a56:	00 06       	cpc	r0, r16
 a58:	00 64       	ori	r16, 0x40	; 64
 a5a:	93 01       	movw	r18, r6
 a5c:	65 93       	las	Z, r22
 a5e:	01 d4       	rcall	.+2050   	; 0x1262 <log+0x76>
 a60:	0a 00       	.word	0x000a	; ????
 a62:	00 f0       	brcs	.+0      	; 0xa64 <Sort+0x90>
 a64:	0b 00       	.word	0x000b	; ????
 a66:	00 02       	muls	r16, r16
 a68:	00 91 63 00 	lds	r16, 0x0063	; 0x800063 <__TEXT_REGION_LENGTH__+0x7e0063>
 a6c:	00 00       	nop
 a6e:	00 00       	nop
 a70:	00 00       	nop
 a72:	00 7e       	andi	r16, 0xE0	; 224
 a74:	0a 00       	.word	0x000a	; ????
 a76:	00 d4       	rcall	.+2048   	; 0x1278 <log+0x8c>
 a78:	0a 00       	.word	0x000a	; ????
 a7a:	00 06       	cpc	r0, r16
 a7c:	00 62       	ori	r16, 0x20	; 32
 a7e:	93 01       	movw	r18, r6
 a80:	63 93       	.word	0x9363	; ????
 a82:	01 d4       	rcall	.+2050   	; 0x1286 <modf+0xa>
 a84:	0a 00       	.word	0x000a	; ????
 a86:	00 f0       	brcs	.+0      	; 0xa88 <DWT1D+0xa>
 a88:	0b 00       	.word	0x000b	; ????
 a8a:	00 02       	muls	r16, r16
 a8c:	00 91 65 00 	lds	r16, 0x0065	; 0x800065 <__TEXT_REGION_LENGTH__+0x7e0065>
 a90:	00 00       	nop
 a92:	00 00       	nop
 a94:	00 00       	nop
 a96:	00 7e       	andi	r16, 0xE0	; 224
 a98:	0a 00       	.word	0x000a	; ????
 a9a:	00 fa       	bst	r0, 0
 a9c:	0a 00       	.word	0x000a	; ????
 a9e:	00 06       	cpc	r0, r16
 aa0:	00 60       	ori	r16, 0x00	; 0
 aa2:	93 01       	movw	r18, r6
 aa4:	61 93       	st	Z+, r22
 aa6:	01 fa       	bst	r0, 1
 aa8:	0a 00       	.word	0x000a	; ????
 aaa:	00 f0       	brcs	.+0      	; 0xaac <DWT1D+0x2e>
 aac:	0b 00       	.word	0x000b	; ????
 aae:	00 02       	muls	r16, r16
 ab0:	00 91 67 00 	lds	r16, 0x0067	; 0x800067 <__TEXT_REGION_LENGTH__+0x7e0067>
 ab4:	00 00       	nop
 ab6:	00 00       	nop
 ab8:	00 00       	nop
 aba:	00 7e       	andi	r16, 0xE0	; 224
 abc:	0a 00       	.word	0x000a	; ????
 abe:	00 fa       	bst	r0, 0
 ac0:	0a 00       	.word	0x000a	; ????
 ac2:	00 06       	cpc	r0, r16
 ac4:	00 5e       	subi	r16, 0xE0	; 224
 ac6:	93 01       	movw	r18, r6
 ac8:	5f 93       	push	r21
 aca:	01 fa       	bst	r0, 1
 acc:	0a 00       	.word	0x000a	; ????
 ace:	00 b0       	in	r0, 0x00	; 0
 ad0:	0b 00       	.word	0x000b	; ????
 ad2:	00 06       	cpc	r0, r16
 ad4:	00 56       	subi	r16, 0x60	; 96
 ad6:	93 01       	movw	r18, r6
 ad8:	57 93       	lat	Z, r21
 ada:	01 b4       	in	r0, 0x21	; 33
 adc:	0b 00       	.word	0x000b	; ????
 ade:	00 e6       	ldi	r16, 0x60	; 96
 ae0:	0b 00       	.word	0x000b	; ????
 ae2:	00 06       	cpc	r0, r16
 ae4:	00 56       	subi	r16, 0x60	; 96
 ae6:	93 01       	movw	r18, r6
 ae8:	57 93       	lat	Z, r21
 aea:	01 00       	.word	0x0001	; ????
 aec:	00 00       	nop
 aee:	00 00       	nop
 af0:	00 00       	nop
 af2:	00 7e       	andi	r16, 0xE0	; 224
 af4:	0a 00       	.word	0x000a	; ????
 af6:	00 fa       	bst	r0, 0
 af8:	0a 00       	.word	0x000a	; ????
 afa:	00 06       	cpc	r0, r16
 afc:	00 5c       	subi	r16, 0xC0	; 192
 afe:	93 01       	movw	r18, r6
 b00:	5d 93       	st	X+, r21
 b02:	01 fa       	bst	r0, 1
 b04:	0a 00       	.word	0x000a	; ????
 b06:	00 f0       	brcs	.+0      	; 0xb08 <DWT1D+0x8a>
 b08:	0b 00       	.word	0x000b	; ????
 b0a:	00 02       	muls	r16, r16
 b0c:	00 91 69 00 	lds	r16, 0x0069	; 0x800069 <__TEXT_REGION_LENGTH__+0x7e0069>
 b10:	00 00       	nop
 b12:	00 00       	nop
 b14:	00 00       	nop
 b16:	00 7e       	andi	r16, 0xE0	; 224
 b18:	0a 00       	.word	0x000a	; ????
 b1a:	00 de       	rcall	.-1024   	; 0x71c <__LOCK_REGION_LENGTH__+0x31c>
 b1c:	0b 00       	.word	0x000b	; ????
 b1e:	00 06       	cpc	r0, r16
 b20:	00 5a       	subi	r16, 0xA0	; 160
 b22:	93 01       	movw	r18, r6
 b24:	5b 93       	.word	0x935b	; ????
 b26:	01 de       	rcall	.-1022   	; 0x72a <__LOCK_REGION_LENGTH__+0x32a>
 b28:	0b 00       	.word	0x000b	; ????
 b2a:	00 f0       	brcs	.+0      	; 0xb2c <DWT1D+0xae>
 b2c:	0b 00       	.word	0x000b	; ????
 b2e:	00 02       	muls	r16, r16
 b30:	00 91 6b 00 	lds	r16, 0x006B	; 0x80006b <__TEXT_REGION_LENGTH__+0x7e006b>
 b34:	00 00       	nop
 b36:	00 00       	nop
 b38:	00 00       	nop
 b3a:	00 7e       	andi	r16, 0xE0	; 224
 b3c:	0a 00       	.word	0x000a	; ????
 b3e:	00 fa       	bst	r0, 0
 b40:	0a 00       	.word	0x000a	; ????
 b42:	00 06       	cpc	r0, r16
 b44:	00 58       	subi	r16, 0x80	; 128
 b46:	93 01       	movw	r18, r6
 b48:	59 93       	st	Y+, r21
 b4a:	01 fa       	bst	r0, 1
 b4c:	0a 00       	.word	0x000a	; ????
 b4e:	00 f0       	brcs	.+0      	; 0xb50 <DWT1D+0xd2>
 b50:	0b 00       	.word	0x000b	; ????
 b52:	00 04       	cpc	r0, r0
 b54:	00 f3       	brcs	.-64     	; 0xb16 <DWT1D+0x98>
 b56:	01 58       	subi	r16, 0x81	; 129
 b58:	9f 00       	.word	0x009f	; ????
 b5a:	00 00       	nop
 b5c:	00 00       	nop
 b5e:	00 00       	nop
 b60:	00 cc       	rjmp	.-2048   	; 0x362 <Covlution+0x3c>
 b62:	0a 00       	.word	0x000a	; ????
 b64:	00 d4       	rcall	.+2048   	; 0x1366 <vsnprintf+0x66>
 b66:	0a 00       	.word	0x000a	; ????
 b68:	00 02       	muls	r16, r16
 b6a:	00 30       	cpi	r16, 0x00	; 0
 b6c:	9f d4       	rcall	.+2366   	; 0x14ac <vfprintf+0x13a>
 b6e:	0a 00       	.word	0x000a	; ????
 b70:	00 fa       	bst	r0, 0
 b72:	0a 00       	.word	0x000a	; ????
 b74:	00 06       	cpc	r0, r16
 b76:	00 62       	ori	r16, 0x20	; 32
 b78:	93 01       	movw	r18, r6
 b7a:	63 93       	.word	0x9363	; ????
 b7c:	01 fa       	bst	r0, 1
 b7e:	0a 00       	.word	0x000a	; ????
 b80:	00 da       	rcall	.-3072   	; 0xffffff82 <__eeprom_end+0xff7eff82>
 b82:	0b 00       	.word	0x000b	; ????
 b84:	00 06       	cpc	r0, r16
 b86:	00 5c       	subi	r16, 0xC0	; 192
 b88:	93 01       	movw	r18, r6
 b8a:	5d 93       	st	X+, r21
 b8c:	01 00       	.word	0x0001	; ????
 b8e:	00 00       	nop
 b90:	00 00       	nop
 b92:	00 00       	nop
 b94:	00 cc       	rjmp	.-2048   	; 0x396 <Covlution+0x70>
 b96:	0a 00       	.word	0x000a	; ????
 b98:	00 fa       	bst	r0, 0
 b9a:	0a 00       	.word	0x000a	; ????
 b9c:	00 02       	muls	r16, r16
 b9e:	00 30       	cpi	r16, 0x00	; 0
 ba0:	9f 2e       	mov	r9, r31
 ba2:	0b 00       	.word	0x000b	; ????
 ba4:	00 6a       	ori	r16, 0xA0	; 160
 ba6:	0b 00       	.word	0x000b	; ????
 ba8:	00 02       	muls	r16, r16
 baa:	00 30       	cpi	r16, 0x00	; 0
 bac:	9f 6a       	ori	r25, 0xAF	; 175
 bae:	0b 00       	.word	0x000b	; ????
 bb0:	00 be       	out	0x30, r0	; 48
 bb2:	0b 00       	.word	0x000b	; ????
 bb4:	00 06       	cpc	r0, r16
 bb6:	00 60       	ori	r16, 0x00	; 0
 bb8:	93 01       	movw	r18, r6
 bba:	61 93       	st	Z+, r22
 bbc:	01 00       	.word	0x0001	; ????
 bbe:	00 00       	nop
 bc0:	00 00       	nop
 bc2:	00 00       	nop
	...

Disassembly of section .debug_ranges:

00000000 <.debug_ranges>:
   0:	52 01       	movw	r10, r4
   2:	00 00       	nop
   4:	54 01       	movw	r10, r8
   6:	00 00       	nop
   8:	66 01       	movw	r12, r12
   a:	00 00       	nop
   c:	70 01       	movw	r14, r0
	...
  16:	00 00       	nop
  18:	52 01       	movw	r10, r4
  1a:	00 00       	nop
  1c:	54 01       	movw	r10, r8
  1e:	00 00       	nop
  20:	6a 01       	movw	r12, r20
  22:	00 00       	nop
  24:	70 01       	movw	r14, r0
	...
  2e:	00 00       	nop
  30:	54 01       	movw	r10, r8
  32:	00 00       	nop
  34:	56 01       	movw	r10, r12
  36:	00 00       	nop
  38:	60 01       	movw	r12, r0
  3a:	00 00       	nop
  3c:	66 01       	movw	r12, r12
	...
  46:	00 00       	nop
  48:	50 01       	movw	r10, r0
  4a:	00 00       	nop
  4c:	72 01       	movw	r14, r4
  4e:	00 00       	nop
  50:	72 01       	movw	r14, r4
  52:	00 00       	nop
  54:	8a 01       	movw	r16, r20
  56:	00 00       	nop
  58:	8a 01       	movw	r16, r20
  5a:	00 00       	nop
  5c:	aa 01       	movw	r20, r20
  5e:	00 00       	nop
  60:	aa 01       	movw	r20, r20
  62:	00 00       	nop
  64:	b2 01       	movw	r22, r4
  66:	00 00       	nop
  68:	b2 01       	movw	r22, r4
  6a:	00 00       	nop
  6c:	b8 01       	movw	r22, r16
  6e:	00 00       	nop
  70:	b8 01       	movw	r22, r16
  72:	00 00       	nop
  74:	d2 01       	movw	r26, r4
  76:	00 00       	nop
  78:	d2 01       	movw	r26, r4
  7a:	00 00       	nop
  7c:	ec 01       	movw	r28, r24
  7e:	00 00       	nop
  80:	ec 01       	movw	r28, r24
  82:	00 00       	nop
  84:	f8 01       	movw	r30, r16
	...
  8e:	00 00       	nop
  90:	f8 01       	movw	r30, r16
  92:	00 00       	nop
  94:	26 03       	mulsu	r18, r22
	...
  9e:	00 00       	nop
  a0:	26 03       	mulsu	r18, r22
  a2:	00 00       	nop
  a4:	d4 09       	sbc	r29, r4
  a6:	00 00       	nop
  a8:	d4 09       	sbc	r29, r4
  aa:	00 00       	nop
  ac:	7e 0a       	sbc	r7, r30
  ae:	00 00       	nop
  b0:	7e 0a       	sbc	r7, r30
  b2:	00 00       	nop
  b4:	f0 0b       	sbc	r31, r16
	...
