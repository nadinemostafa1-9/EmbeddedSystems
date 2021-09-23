
Alarm.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <StartAlarm>:
   0:	b580      	push	{r7, lr}
   2:	af00      	add	r7, sp, #0
   4:	2001      	movs	r0, #1
   6:	f7ff fffe 	bl	0 <Set_Alarm_actuator>
   a:	bf00      	nop
   c:	bd80      	pop	{r7, pc}

0000000e <StopAlarm>:
   e:	b580      	push	{r7, lr}
  10:	af00      	add	r7, sp, #0
  12:	2000      	movs	r0, #0
  14:	f7ff fffe 	bl	0 <Set_Alarm_actuator>
  18:	bf00      	nop
  1a:	bd80      	pop	{r7, pc}

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	0000099b 	muleq	r0, fp, r9
   4:	00000002 	andeq	r0, r0, r2
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	00000025 	andeq	r0, r0, r5, lsr #32
  10:	0004940c 	andeq	r9, r4, ip, lsl #8
  14:	00028e00 	andeq	r8, r2, r0, lsl #28
  18:	00000000 	andeq	r0, r0, r0
  1c:	00001c00 	andeq	r1, r0, r0, lsl #24
  20:	00000000 	andeq	r0, r0, r0
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	00000107 	andeq	r0, r0, r7, lsl #2
  2c:	1d080102 	stfnes	f0, [r8, #-8]
  30:	02000003 	andeq	r0, r0, #3
  34:	03390502 	teqeq	r9, #8388608	; 0x800000
  38:	02020000 	andeq	r0, r2, #0
  3c:	00023607 	andeq	r3, r2, r7, lsl #12
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	0000014c 	andeq	r0, r0, ip, asr #2
  48:	17070402 	strne	r0, [r7, -r2, lsl #8]
  4c:	02000002 	andeq	r0, r0, #2
  50:	00f90508 	rscseq	r0, r9, r8, lsl #10
  54:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  58:	0000b607 	andeq	fp, r0, r7, lsl #12
  5c:	05040300 	streq	r0, [r4, #-768]	; 0xfffffd00
  60:	00746e69 	rsbseq	r6, r4, r9, ror #28
  64:	f3070402 	vshl.u8	d0, d2, d7
  68:	02000001 	andeq	r0, r0, #1
  6c:	02c50408 	sbceq	r0, r5, #8, 8	; 0x8000000
  70:	04040000 	streq	r0, [r4], #-0
  74:	00027905 	andeq	r7, r2, r5, lsl #18
  78:	7f220200 	svcvc	0x00220200
  7c:	06000000 	streq	r0, [r0], -r0
  80:	00008504 	andeq	r8, r0, r4, lsl #10
  84:	03ef0700 	mvneq	r0, #0, 14
  88:	05010000 	streq	r0, [r1, #-0]
  8c:	000002fe 	strdeq	r0, [r0], -lr
  90:	00412c03 	subeq	r2, r1, r3, lsl #24
  94:	1b050000 	blne	140008 <StopAlarm+0x13fffa>
  98:	03000004 	movweq	r0, #4
  9c:	00004172 	andeq	r4, r0, r2, ror r1
  a0:	02810800 	addeq	r0, r1, #0, 16
  a4:	65040000 	strvs	r0, [r4, #-0]
  a8:	00006401 	andeq	r6, r0, r1, lsl #8
  ac:	03040900 	movweq	r0, #18688	; 0x4900
  b0:	0000cca6 	andeq	ip, r0, r6, lsr #25
  b4:	02730a00 	rsbseq	r0, r3, #0, 20
  b8:	a8030000 	stmdage	r3, {}	; <UNPREDICTABLE>
  bc:	000000a1 	andeq	r0, r0, r1, lsr #1
  c0:	0002000a 	andeq	r0, r2, sl
  c4:	cca90300 	stcgt	3, cr0, [r9]
  c8:	00000000 	andeq	r0, r0, r0
  cc:	00002c0b 	andeq	r2, r0, fp, lsl #24
  d0:	0000dc00 	andeq	sp, r0, r0, lsl #24
  d4:	00640c00 	rsbeq	r0, r4, r0, lsl #24
  d8:	00030000 	andeq	r0, r3, r0
  dc:	a303080d 	movwge	r0, #14349	; 0x380d
  e0:	00000101 	andeq	r0, r0, r1, lsl #2
  e4:	0003e70e 	andeq	lr, r3, lr, lsl #14
  e8:	5da50300 	stcpl	3, cr0, [r5]
  ec:	02000000 	andeq	r0, r0, #0
  f0:	f60e0023 			; <UNDEFINED> instruction: 0xf60e0023
  f4:	03000003 	movweq	r0, #3
  f8:	0000adaa 	andeq	sl, r0, sl, lsr #27
  fc:	04230200 	strteq	r0, [r3], #-512	; 0xfffffe00
 100:	03690500 	cmneq	r9, #0, 10
 104:	ab030000 	blge	c010c <StopAlarm+0xc00fe>
 108:	000000dc 	ldrdeq	r0, [r0], -ip
 10c:	0001b605 	andeq	fp, r1, r5, lsl #12
 110:	74af0300 	strtvc	r0, [pc], #768	; 118 <.debug_info+0x118>
 114:	05000000 	streq	r0, [r0, #-0]
 118:	0000045f 	andeq	r0, r0, pc, asr r4
 11c:	00481605 	subeq	r1, r8, r5, lsl #12
 120:	c70f0000 	strgt	r0, [pc, -r0]
 124:	18000001 	stmdane	r0, {r0}
 128:	01812f05 	orreq	r2, r1, r5, lsl #30
 12c:	3e0e0000 	cdpcc	0, 0, cr0, cr14, cr0, {0}
 130:	05000004 	streq	r0, [r0, #-4]
 134:	00018131 	andeq	r8, r1, r1, lsr r1
 138:	00230200 	eoreq	r0, r3, r0, lsl #4
 13c:	006b5f10 	rsbeq	r5, fp, r0, lsl pc
 140:	005d3205 	subseq	r3, sp, r5, lsl #4
 144:	23020000 	movwcs	r0, #8192	; 0x2000
 148:	03d20e04 	bicseq	r0, r2, #4, 28	; 0x40
 14c:	32050000 	andcc	r0, r5, #0
 150:	0000005d 	andeq	r0, r0, sp, asr r0
 154:	0e082302 	cdpeq	3, 0, cr2, cr8, cr2, {0}
 158:	000001b0 			; <UNDEFINED> instruction: 0x000001b0
 15c:	005d3205 	subseq	r3, sp, r5, lsl #4
 160:	23020000 	movwcs	r0, #8192	; 0x2000
 164:	049c0e0c 	ldreq	r0, [ip], #3596	; 0xe0c
 168:	32050000 	andcc	r0, r5, #0
 16c:	0000005d 	andeq	r0, r0, sp, asr r0
 170:	10102302 	andsne	r2, r0, r2, lsl #6
 174:	0500785f 	streq	r7, [r0, #-2143]	; 0xfffff7a1
 178:	00018733 	andeq	r8, r1, r3, lsr r7
 17c:	14230200 	strtne	r0, [r3], #-512	; 0xfffffe00
 180:	22040600 	andcs	r0, r4, #0, 12
 184:	0b000001 	bleq	190 <.debug_info+0x190>
 188:	00000117 	andeq	r0, r0, r7, lsl r1
 18c:	00000197 	muleq	r0, r7, r1
 190:	0000640c 	andeq	r6, r0, ip, lsl #8
 194:	0f000000 	svceq	0x00000000
 198:	000001ee 	andeq	r0, r0, lr, ror #3
 19c:	22370524 	eorscs	r0, r7, #36, 10	; 0x9000000
 1a0:	0e000002 	cdpeq	0, 0, cr0, cr0, cr2, {0}
 1a4:	000000f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 1a8:	005d3905 	subseq	r3, sp, r5, lsl #18
 1ac:	23020000 	movwcs	r0, #8192	; 0x2000
 1b0:	042f0e00 	strteq	r0, [pc], #-3584	; 8 <.debug_info+0x8>
 1b4:	3a050000 	bcc	1401bc <StopAlarm+0x1401ae>
 1b8:	0000005d 	andeq	r0, r0, sp, asr r0
 1bc:	0e042302 	cdpeq	3, 0, cr2, cr4, cr2, {0}
 1c0:	0000011f 	andeq	r0, r0, pc, lsl r1
 1c4:	005d3b05 	subseq	r3, sp, r5, lsl #22
 1c8:	23020000 	movwcs	r0, #8192	; 0x2000
 1cc:	05150e08 	ldreq	r0, [r5, #-3592]	; 0xfffff1f8
 1d0:	3c050000 	stccc	0, cr0, [r5], {-0}
 1d4:	0000005d 	andeq	r0, r0, sp, asr r0
 1d8:	0e0c2302 	cdpeq	3, 0, cr2, cr12, cr2, {0}
 1dc:	000002e2 	andeq	r0, r0, r2, ror #5
 1e0:	005d3d05 	subseq	r3, sp, r5, lsl #26
 1e4:	23020000 	movwcs	r0, #8192	; 0x2000
 1e8:	02bb0e10 	adcseq	r0, fp, #16, 28	; 0x100
 1ec:	3e050000 	cdpcc	0, 0, cr0, cr5, cr0, {0}
 1f0:	0000005d 	andeq	r0, r0, sp, asr r0
 1f4:	0e142302 	cdpeq	3, 1, cr2, cr4, cr2, {0}
 1f8:	000004a1 	andeq	r0, r0, r1, lsr #9
 1fc:	005d3f05 	subseq	r3, sp, r5, lsl #30
 200:	23020000 	movwcs	r0, #8192	; 0x2000
 204:	03430e18 	movteq	r0, #15896	; 0x3e18
 208:	40050000 	andmi	r0, r5, r0
 20c:	0000005d 	andeq	r0, r0, sp, asr r0
 210:	0e1c2302 	cdpeq	3, 1, cr2, cr12, cr2, {0}
 214:	000004dc 	ldrdeq	r0, [r0], -ip
 218:	005d4105 	subseq	r4, sp, r5, lsl #2
 21c:	23020000 	movwcs	r0, #8192	; 0x2000
 220:	2e110020 	cdpcs	0, 1, cr0, cr1, cr0, {1}
 224:	08000001 	stmdaeq	r0, {r0}
 228:	6b4a0501 	blvs	1281634 <StopAlarm+0x1281626>
 22c:	0e000002 	cdpeq	0, 0, cr0, cr0, cr2, {0}
 230:	000001a3 	andeq	r0, r0, r3, lsr #3
 234:	026b4b05 	rsbeq	r4, fp, #5120	; 0x1400
 238:	23020000 	movwcs	r0, #8192	; 0x2000
 23c:	00000e00 	andeq	r0, r0, r0, lsl #28
 240:	4c050000 	stcmi	0, cr0, [r5], {-0}
 244:	0000026b 	andeq	r0, r0, fp, ror #4
 248:	01802303 	orreq	r2, r0, r3, lsl #6
 24c:	0004510e 	andeq	r5, r4, lr, lsl #2
 250:	174e0500 	strbne	r0, [lr, -r0, lsl #10]
 254:	03000001 	movweq	r0, #1
 258:	0e028023 	cdpeq	0, 0, cr8, cr2, cr3, {1}
 25c:	0000015c 	andeq	r0, r0, ip, asr r1
 260:	01175105 	tsteq	r7, r5, lsl #2
 264:	23030000 	movwcs	r0, #12288	; 0x3000
 268:	0b000284 	bleq	c80 <StopAlarm+0xc72>
 26c:	00000072 	andeq	r0, r0, r2, ror r0
 270:	0000027b 	andeq	r0, r0, fp, ror r2
 274:	0000640c 	andeq	r6, r0, ip, lsl #8
 278:	11001f00 	tstne	r0, r0, lsl #30
 27c:	000002eb 	andeq	r0, r0, fp, ror #5
 280:	5d050190 	stfpls	f0, [r5, #-576]	; 0xfffffdc0
 284:	000002c2 	andeq	r0, r0, r2, asr #5
 288:	00043e0e 	andeq	r3, r4, lr, lsl #28
 28c:	c25e0500 	subsgt	r0, lr, #0, 10
 290:	02000002 	andeq	r0, r0, #2
 294:	a20e0023 	andge	r0, lr, #35	; 0x23
 298:	05000003 	streq	r0, [r0, #-3]
 29c:	00005d5f 	andeq	r5, r0, pc, asr sp
 2a0:	04230200 	strteq	r0, [r3], #-512	; 0xfffffe00
 2a4:	0001ab0e 	andeq	sl, r1, lr, lsl #22
 2a8:	c8610500 	stmdagt	r1!, {r8, sl}^
 2ac:	02000002 	andeq	r0, r0, #2
 2b0:	2e0e0823 	cdpcs	8, 0, cr0, cr14, cr3, {1}
 2b4:	05000001 	streq	r0, [r0, #-1]
 2b8:	00022262 	andeq	r2, r2, r2, ror #4
 2bc:	88230300 	stmdahi	r3!, {r8, r9}
 2c0:	04060001 	streq	r0, [r6], #-1
 2c4:	0000027b 	andeq	r0, r0, fp, ror r2
 2c8:	0002d80b 	andeq	sp, r2, fp, lsl #16
 2cc:	0002d800 	andeq	sp, r2, r0, lsl #16
 2d0:	00640c00 	rsbeq	r0, r4, r0, lsl #24
 2d4:	001f0000 	andseq	r0, pc, r0
 2d8:	02de0406 	sbcseq	r0, lr, #100663296	; 0x6000000
 2dc:	01120000 	tsteq	r2, r0
 2e0:	00034d0f 	andeq	r4, r3, pc, lsl #26
 2e4:	75050800 	strvc	r0, [r5, #-2048]	; 0xfffff800
 2e8:	00000309 	andeq	r0, r0, r9, lsl #6
 2ec:	0001190e 	andeq	r1, r1, lr, lsl #18
 2f0:	09760500 	ldmdbeq	r6!, {r8, sl}^
 2f4:	02000003 	andeq	r0, r0, #3
 2f8:	0c0e0023 	stceq	0, cr0, [lr], {35}	; 0x23
 2fc:	05000000 	streq	r0, [r0, #-0]
 300:	00005d77 	andeq	r5, r0, r7, ror sp
 304:	04230200 	strteq	r0, [r3], #-512	; 0xfffffe00
 308:	2c040600 	stccs	6, cr0, [r4], {-0}
 30c:	0f000000 	svceq	0x00000000
 310:	00000374 	andeq	r0, r0, r4, ror r3
 314:	69b50568 	ldmibvs	r5!, {r3, r5, r6, r8, sl}
 318:	10000004 	andne	r0, r0, r4
 31c:	0500705f 	streq	r7, [r0, #-95]	; 0xffffffa1
 320:	000309b6 			; <UNDEFINED> instruction: 0x000309b6
 324:	00230200 	eoreq	r0, r3, r0, lsl #4
 328:	00725f10 	rsbseq	r5, r2, r0, lsl pc
 32c:	005db705 	subseq	fp, sp, r5, lsl #14
 330:	23020000 	movwcs	r0, #8192	; 0x2000
 334:	775f1004 	ldrbvc	r1, [pc, -r4]
 338:	5db80500 	cfldr32pl	mvfx0, [r8]
 33c:	02000000 	andeq	r0, r0, #0
 340:	550e0823 	strpl	r0, [lr, #-2083]	; 0xfffff7dd
 344:	05000001 	streq	r0, [r0, #-1]
 348:	000033b9 			; <UNDEFINED> instruction: 0x000033b9
 34c:	0c230200 	sfmeq	f0, 4, [r3], #-0
 350:	0002290e 	andeq	r2, r2, lr, lsl #18
 354:	33ba0500 			; <UNDEFINED> instruction: 0x33ba0500
 358:	02000000 	andeq	r0, r0, #0
 35c:	5f100e23 	svcpl	0x00100e23
 360:	05006662 	streq	r6, [r0, #-1634]	; 0xfffff99e
 364:	0002e0bb 	strheq	lr, [r2], -fp
 368:	10230200 	eorne	r0, r3, r0, lsl #4
 36c:	0000cd0e 	andeq	ip, r0, lr, lsl #26
 370:	5dbc0500 	cfldr32pl	mvfx0, [ip]
 374:	02000000 	andeq	r0, r0, #0
 378:	3c0e1823 	stccc	8, cr1, [lr], {35}	; 0x23
 37c:	05000001 	streq	r0, [r0, #-1]
 380:	000072c3 	andeq	r7, r0, r3, asr #5
 384:	1c230200 	sfmne	f0, 4, [r3], #-0
 388:	0001de0e 	andeq	sp, r1, lr, lsl #28
 38c:	03c50500 	biceq	r0, r5, #0, 10
 390:	02000006 	andeq	r0, r0, #6
 394:	b40e2023 	strlt	r2, [lr], #-35	; 0xffffffdd
 398:	05000002 	streq	r0, [r0, #-2]
 39c:	00062ec7 	andeq	r2, r6, r7, asr #29
 3a0:	24230200 	strtcs	r0, [r3], #-512	; 0xfffffe00
 3a4:	0003fe0e 	andeq	pc, r3, lr, lsl #28
 3a8:	53ca0500 	bicpl	r0, sl, #0, 10
 3ac:	02000006 	andeq	r0, r0, #6
 3b0:	f60e2823 			; <UNDEFINED> instruction: 0xf60e2823
 3b4:	05000004 	streq	r0, [r0, #-4]
 3b8:	00066ecb 	andeq	r6, r6, fp, asr #29
 3bc:	2c230200 	sfmcs	f0, 4, [r3], #-0
 3c0:	62755f10 	rsbsvs	r5, r5, #16, 30	; 0x40
 3c4:	e0ce0500 	sbc	r0, lr, r0, lsl #10
 3c8:	02000002 	andeq	r0, r0, #2
 3cc:	5f103023 	svcpl	0x00103023
 3d0:	05007075 	streq	r7, [r0, #-117]	; 0xffffff8b
 3d4:	000309cf 	andeq	r0, r3, pc, asr #19
 3d8:	38230200 	stmdacc	r3!, {r9}
 3dc:	72755f10 	rsbsvc	r5, r5, #16, 30	; 0x40
 3e0:	5dd00500 	cfldr64pl	mvdx0, [r0]
 3e4:	02000000 	andeq	r0, r0, #0
 3e8:	130e3c23 	movwne	r3, #60451	; 0xec23
 3ec:	05000001 	streq	r0, [r0, #-1]
 3f0:	000674d3 	ldrdeq	r7, [r6], -r3
 3f4:	40230200 	eormi	r0, r3, r0, lsl #4
 3f8:	0004ce0e 	andeq	ip, r4, lr, lsl #28
 3fc:	84d40500 	ldrbhi	r0, [r4], #1280	; 0x500
 400:	02000006 	andeq	r0, r0, #6
 404:	5f104323 	svcpl	0x00104323
 408:	0500626c 	streq	r6, [r0, #-620]	; 0xfffffd94
 40c:	0002e0d7 	ldrdeq	lr, [r2], -r7
 410:	44230200 	strtmi	r0, [r3], #-512	; 0xfffffe00
 414:	00016b0e 	andeq	r6, r1, lr, lsl #22
 418:	5dda0500 	cfldr64pl	mvdx0, [sl]
 41c:	02000000 	andeq	r0, r0, #0
 420:	7c0e4c23 	stcvc	12, cr4, [lr], {35}	; 0x23
 424:	05000001 	streq	r0, [r0, #-1]
 428:	00008bdb 	ldrdeq	r8, [r0], -fp
 42c:	50230200 	eorpl	r0, r3, r0, lsl #4
 430:	0000900e 	andeq	r9, r0, lr
 434:	88de0500 	ldmhi	lr, {r8, sl}^
 438:	02000004 	andeq	r0, r0, #4
 43c:	880e5423 	stmdahi	lr, {r0, r1, r5, sl, ip, lr}
 440:	05000002 	streq	r0, [r0, #-2]
 444:	00010ce2 	andeq	r0, r1, r2, ror #25
 448:	58230200 	stmdapl	r3!, {r9}
 44c:	00037c0e 	andeq	r7, r3, lr, lsl #24
 450:	01e40500 	mvneq	r0, r0, lsl #10
 454:	02000001 	andeq	r0, r0, #1
 458:	540e5c23 	strpl	r5, [lr], #-3107	; 0xfffff3dd
 45c:	05000003 	streq	r0, [r0, #-3]
 460:	00005de5 	andeq	r5, r0, r5, ror #27
 464:	64230200 	strtvs	r0, [r3], #-512	; 0xfffffe00
 468:	5d011300 	stcpl	3, cr1, [r1, #-0]
 46c:	88000000 	stmdahi	r0, {}	; <UNPREDICTABLE>
 470:	14000004 	strne	r0, [r0], #-4
 474:	00000488 	andeq	r0, r0, r8, lsl #9
 478:	00007214 	andeq	r7, r0, r4, lsl r2
 47c:	05f11400 	ldrbeq	r1, [r1, #1024]!	; 0x400
 480:	5d140000 	ldcpl	0, cr0, [r4, #-0]
 484:	00000000 	andeq	r0, r0, r0
 488:	04930406 	ldreq	r0, [r3], #1030	; 0x406
 48c:	88150000 	ldmdahi	r5, {}	; <UNPREDICTABLE>
 490:	16000004 	strne	r0, [r0], -r4
 494:	000003da 	ldrdeq	r0, [r0], -sl
 498:	60050428 	andvs	r0, r5, r8, lsr #8
 49c:	0005f102 	andeq	pc, r5, r2, lsl #2
 4a0:	04231700 	strteq	r1, [r3], #-1792	; 0xfffff900
 4a4:	62050000 	andvs	r0, r5, #0
 4a8:	00005d02 	andeq	r5, r0, r2, lsl #26
 4ac:	00230200 	eoreq	r0, r3, r0, lsl #4
 4b0:	00016417 	andeq	r6, r1, r7, lsl r4
 4b4:	02670500 	rsbeq	r0, r7, #0, 10
 4b8:	000006e1 	andeq	r0, r0, r1, ror #13
 4bc:	17042302 	strne	r2, [r4, -r2, lsl #6]
 4c0:	00000207 	andeq	r0, r0, r7, lsl #4
 4c4:	e1026705 	tst	r2, r5, lsl #14
 4c8:	02000006 	andeq	r0, r0, #6
 4cc:	bf170823 	svclt	0x00170823
 4d0:	05000001 	streq	r0, [r0, #-1]
 4d4:	06e10267 	strbteq	r0, [r1], r7, ror #4
 4d8:	23020000 	movwcs	r0, #8192	; 0x2000
 4dc:	039d170c 	orrseq	r1, sp, #12, 14	; 0x300000
 4e0:	69050000 	stmdbvs	r5, {}	; <UNPREDICTABLE>
 4e4:	00005d02 	andeq	r5, r0, r2, lsl #26
 4e8:	10230200 	eorne	r0, r3, r0, lsl #4
 4ec:	00001a17 	andeq	r1, r0, r7, lsl sl
 4f0:	026a0500 	rsbeq	r0, sl, #0, 10
 4f4:	000008fc 	strdeq	r0, [r0], -ip
 4f8:	17142302 	ldrne	r2, [r4, -r2, lsl #6]
 4fc:	000003b9 			; <UNDEFINED> instruction: 0x000003b9
 500:	5d026d05 	stcpl	13, cr6, [r2, #-20]	; 0xffffffec
 504:	02000000 	andeq	r0, r0, #0
 508:	a7173023 	ldrge	r3, [r7, -r3, lsr #32]
 50c:	05000003 	streq	r0, [r0, #-3]
 510:	0912026e 	ldmdbeq	r2, {r1, r2, r3, r5, r6, r9}
 514:	23020000 	movwcs	r0, #8192	; 0x2000
 518:	02f31734 	rscseq	r1, r3, #52, 14	; 0xd00000
 51c:	70050000 	andvc	r0, r5, r0
 520:	00005d02 	andeq	r5, r0, r2, lsl #26
 524:	38230200 	stmdacc	r3!, {r9}
 528:	0003af17 	andeq	sl, r3, r7, lsl pc
 52c:	02720500 	rsbseq	r0, r2, #0, 10
 530:	00000924 	andeq	r0, r0, r4, lsr #18
 534:	173c2302 	ldrne	r2, [ip, -r2, lsl #6]!
 538:	0000026b 	andeq	r0, r0, fp, ror #4
 53c:	81027505 	tsthi	r2, r5, lsl #10
 540:	02000001 	andeq	r0, r0, #1
 544:	e4174023 	ldr	r4, [r7], #-35	; 0xffffffdd
 548:	05000001 	streq	r0, [r0, #-1]
 54c:	005d0276 	subseq	r0, sp, r6, ror r2
 550:	23020000 	movwcs	r0, #8192	; 0x2000
 554:	05101744 	ldreq	r1, [r0, #-1860]	; 0xfffff8bc
 558:	77050000 	strvc	r0, [r5, -r0]
 55c:	00018102 	andeq	r8, r1, r2, lsl #2
 560:	48230200 	stmdami	r3!, {r9}
 564:	00030517 	andeq	r0, r3, r7, lsl r5
 568:	02780500 	rsbseq	r0, r8, #0, 10
 56c:	0000092a 	andeq	r0, r0, sl, lsr #18
 570:	174c2302 	strbne	r2, [ip, -r2, lsl #6]
 574:	0000020f 	andeq	r0, r0, pc, lsl #4
 578:	5d027b05 	vstrpl	d7, [r2, #-20]	; 0xffffffec
 57c:	02000000 	andeq	r0, r0, #0
 580:	74175023 	ldrvc	r5, [r7], #-35	; 0xffffffdd
 584:	05000001 	streq	r0, [r0, #-1]
 588:	05f1027c 	ldrbeq	r0, [r1, #636]!	; 0x27c
 58c:	23020000 	movwcs	r0, #8192	; 0x2000
 590:	032b1754 			; <UNDEFINED> instruction: 0x032b1754
 594:	9f050000 	svcls	0x00050000
 598:	0008da02 	andeq	sp, r8, r2, lsl #20
 59c:	58230200 	stmdapl	r3!, {r9}
 5a0:	0002eb17 	andeq	lr, r2, r7, lsl fp
 5a4:	02a30500 	adceq	r0, r3, #0, 10
 5a8:	000002c2 	andeq	r0, r0, r2, asr #5
 5ac:	02c82303 	sbceq	r2, r8, #201326592	; 0xc000000
 5b0:	00024917 	andeq	r4, r2, r7, lsl r9
 5b4:	02a40500 	adceq	r0, r4, #0, 10
 5b8:	0000027b 	andeq	r0, r0, fp, ror r2
 5bc:	02cc2303 	sbceq	r2, ip, #201326592	; 0xc000000
 5c0:	0004c417 	andeq	ip, r4, r7, lsl r4
 5c4:	02a80500 	adceq	r0, r8, #0, 10
 5c8:	0000093c 	andeq	r0, r0, ip, lsr r9
 5cc:	05dc2303 	ldrbeq	r2, [ip, #771]	; 0x303
 5d0:	00014417 	andeq	r4, r1, r7, lsl r4
 5d4:	02ad0500 	adceq	r0, sp, #0, 10
 5d8:	000006a0 	andeq	r0, r0, r0, lsr #13
 5dc:	05e02303 	strbeq	r2, [r0, #771]!	; 0x303
 5e0:	00012917 	andeq	r2, r1, r7, lsl r9
 5e4:	02af0500 	adceq	r0, pc, #0, 10
 5e8:	00000948 	andeq	r0, r0, r8, asr #18
 5ec:	05ec2303 	strbeq	r2, [ip, #771]!	; 0x303
 5f0:	f7040600 			; <UNDEFINED> instruction: 0xf7040600
 5f4:	02000005 	andeq	r0, r0, #5
 5f8:	042a0801 	strteq	r0, [sl], #-2049	; 0xfffff7ff
 5fc:	f7150000 			; <UNDEFINED> instruction: 0xf7150000
 600:	06000005 	streq	r0, [r0], -r5
 604:	00046904 	andeq	r6, r4, r4, lsl #18
 608:	5d011300 	stcpl	3, cr1, [r1, #-0]
 60c:	28000000 	stmdacs	r0, {}	; <UNPREDICTABLE>
 610:	14000006 	strne	r0, [r0], #-6
 614:	00000488 	andeq	r0, r0, r8, lsl #9
 618:	00007214 	andeq	r7, r0, r4, lsl r2
 61c:	06281400 	strteq	r1, [r8], -r0, lsl #8
 620:	5d140000 	ldcpl	0, cr0, [r4, #-0]
 624:	00000000 	andeq	r0, r0, r0
 628:	05fe0406 	ldrbeq	r0, [lr, #1030]!	; 0x406
 62c:	04060000 	streq	r0, [r6], #-0
 630:	00000609 	andeq	r0, r0, r9, lsl #12
 634:	00960113 	addseq	r0, r6, r3, lsl r1
 638:	06530000 	ldrbeq	r0, [r3], -r0
 63c:	88140000 	ldmdahi	r4, {}	; <UNPREDICTABLE>
 640:	14000004 	strne	r0, [r0], #-4
 644:	00000072 	andeq	r0, r0, r2, ror r0
 648:	00009614 	andeq	r9, r0, r4, lsl r6
 64c:	005d1400 	subseq	r1, sp, r0, lsl #8
 650:	06000000 	streq	r0, [r0], -r0
 654:	00063404 	andeq	r3, r6, r4, lsl #8
 658:	5d011300 	stcpl	3, cr1, [r1, #-0]
 65c:	6e000000 	cdpvs	0, 0, cr0, cr0, cr0, {0}
 660:	14000006 	strne	r0, [r0], #-6
 664:	00000488 	andeq	r0, r0, r8, lsl #9
 668:	00007214 	andeq	r7, r0, r4, lsl r2
 66c:	04060000 	streq	r0, [r6], #-0
 670:	00000659 	andeq	r0, r0, r9, asr r6
 674:	00002c0b 	andeq	r2, r0, fp, lsl #24
 678:	00068400 	andeq	r8, r6, r0, lsl #8
 67c:	00640c00 	rsbeq	r0, r4, r0, lsl #24
 680:	00020000 	andeq	r0, r2, r0
 684:	00002c0b 	andeq	r2, r0, fp, lsl #24
 688:	00069400 	andeq	r9, r6, r0, lsl #8
 68c:	00640c00 	rsbeq	r0, r4, r0, lsl #24
 690:	00000000 	andeq	r0, r0, r0
 694:	00036208 	andeq	r6, r3, r8, lsl #4
 698:	011f0500 	tsteq	pc, r0, lsl #10
 69c:	0000030f 	andeq	r0, r0, pc, lsl #6
 6a0:	0004ab18 	andeq	sl, r4, r8, lsl fp
 6a4:	23050c00 	movwcs	r0, #23552	; 0x5c00
 6a8:	0006db01 	andeq	sp, r6, r1, lsl #22
 6ac:	043e1700 	ldrteq	r1, [lr], #-1792	; 0xfffff900
 6b0:	25050000 	strcs	r0, [r5, #-0]
 6b4:	0006db01 	andeq	sp, r6, r1, lsl #22
 6b8:	00230200 	eoreq	r0, r3, r0, lsl #4
 6bc:	00022f17 	andeq	r2, r2, r7, lsl pc
 6c0:	01260500 			; <UNDEFINED> instruction: 0x01260500
 6c4:	0000005d 	andeq	r0, r0, sp, asr r0
 6c8:	17042302 	strne	r2, [r4, -r2, lsl #6]
 6cc:	0000035c 	andeq	r0, r0, ip, asr r3
 6d0:	e1012705 	tst	r1, r5, lsl #14
 6d4:	02000006 	andeq	r0, r0, #6
 6d8:	06000823 	streq	r0, [r0], -r3, lsr #16
 6dc:	0006a004 	andeq	sl, r6, r4
 6e0:	94040600 	strls	r0, [r4], #-1536	; 0xfffffa00
 6e4:	18000006 	stmdane	r0, {r1, r2}
 6e8:	00000012 	andeq	r0, r0, r2, lsl r0
 6ec:	013f050e 	teqeq	pc, lr, lsl #10
 6f0:	00000722 	andeq	r0, r0, r2, lsr #14
 6f4:	0003e117 	andeq	lr, r3, r7, lsl r1
 6f8:	01400500 	cmpeq	r0, r0, lsl #10
 6fc:	00000722 	andeq	r0, r0, r2, lsr #14
 700:	17002302 	strne	r2, [r0, -r2, lsl #6]
 704:	00000438 	andeq	r0, r0, r8, lsr r4
 708:	22014105 	andcs	r4, r1, #1073741825	; 0x40000001
 70c:	02000007 	andeq	r0, r0, #7
 710:	5a170623 	bpl	5c1894 <StopAlarm+0x5c1886>
 714:	05000004 	streq	r0, [r0, #-4]
 718:	003a0142 	eorseq	r0, sl, r2, asr #2
 71c:	23020000 	movwcs	r0, #8192	; 0x2000
 720:	3a0b000c 	bcc	2c0758 <StopAlarm+0x2c074a>
 724:	32000000 	andcc	r0, r0, #0
 728:	0c000007 	stceq	0, cr0, [r0], {7}
 72c:	00000064 	andeq	r0, r0, r4, rrx
 730:	d0190002 	andsle	r0, r9, r2
 734:	62028005 	andvs	r8, r2, #5
 738:	17000008 	strne	r0, [r0, -r8]
 73c:	00000487 	andeq	r0, r0, r7, lsl #9
 740:	64028205 	strvs	r8, [r2], #-517	; 0xfffffdfb
 744:	02000000 	andeq	r0, r0, #0
 748:	44170023 	ldrmi	r0, [r7], #-35	; 0xffffffdd
 74c:	05000004 	streq	r0, [r0, #-4]
 750:	05f10283 	ldrbeq	r0, [r1, #643]!	; 0x283
 754:	23020000 	movwcs	r0, #8192	; 0x2000
 758:	025e1704 	subseq	r1, lr, #4, 14	; 0x100000
 75c:	84050000 	strhi	r0, [r5], #-0
 760:	00086202 	andeq	r6, r8, r2, lsl #4
 764:	08230200 	stmdaeq	r3!, {r9}
 768:	0004e717 	andeq	lr, r4, r7, lsl r7
 76c:	02850500 	addeq	r0, r5, #0, 10
 770:	00000197 	muleq	r0, r7, r1
 774:	17242302 	strne	r2, [r4, -r2, lsl #6]!
 778:	000001cf 	andeq	r0, r0, pc, asr #3
 77c:	5d028605 	stcpl	6, cr8, [r2, #-20]	; 0xffffffec
 780:	02000000 	andeq	r0, r0, #0
 784:	85174823 	ldrhi	r4, [r7, #-2083]	; 0xfffff7dd
 788:	05000003 	streq	r0, [r0, #-3]
 78c:	00560287 	subseq	r0, r6, r7, lsl #5
 790:	23020000 	movwcs	r0, #8192	; 0x2000
 794:	04fd1750 	ldrbteq	r1, [sp], #1872	; 0x750
 798:	88050000 	stmdahi	r5, {}	; <UNPREDICTABLE>
 79c:	0006e702 	andeq	lr, r6, r2, lsl #14
 7a0:	58230200 	stmdapl	r3!, {r9}
 7a4:	00039017 	andeq	r9, r3, r7, lsl r0
 7a8:	02890500 	addeq	r0, r9, #0, 10
 7ac:	00000101 	andeq	r0, r0, r1, lsl #2
 7b0:	17682302 	strbne	r2, [r8, -r2, lsl #6]!
 7b4:	00000502 	andeq	r0, r0, r2, lsl #10
 7b8:	01028a05 	tsteq	r2, r5, lsl #20
 7bc:	02000001 	andeq	r0, r0, #1
 7c0:	0f177023 	svceq	0x00177023
 7c4:	05000003 	streq	r0, [r0, #-3]
 7c8:	0101028b 	smlabbeq	r1, fp, r2, r0
 7cc:	23020000 	movwcs	r0, #8192	; 0x2000
 7d0:	04ba1778 	ldrteq	r1, [sl], #1912	; 0x778
 7d4:	8c050000 	stchi	0, cr0, [r5], {-0}
 7d8:	00087202 	andeq	r7, r8, r2, lsl #4
 7dc:	80230300 	eorhi	r0, r3, r0, lsl #6
 7e0:	02521701 	subseq	r1, r2, #262144	; 0x40000
 7e4:	8d050000 	stchi	0, cr0, [r5, #-0]
 7e8:	00088202 	andeq	r8, r8, r2, lsl #4
 7ec:	88230300 	stmdahi	r3!, {r8, r9}
 7f0:	04671701 	strbteq	r1, [r7], #-1793	; 0xfffff8ff
 7f4:	8e050000 	cdphi	0, 0, cr0, cr5, cr0, {0}
 7f8:	00005d02 	andeq	r5, r0, r2, lsl #26
 7fc:	a0230300 	eorge	r0, r3, r0, lsl #6
 800:	01951701 	orrseq	r1, r5, r1, lsl #14
 804:	8f050000 	svchi	0x00050000
 808:	00010102 	andeq	r0, r1, r2, lsl #2
 80c:	a4230300 	strtge	r0, [r3], #-768	; 0xfffffd00
 810:	00e11701 	rsceq	r1, r1, r1, lsl #14
 814:	90050000 	andls	r0, r5, r0
 818:	00010102 	andeq	r0, r1, r2, lsl #2
 81c:	ac230300 	stcge	3, cr0, [r3], #-0
 820:	01841701 	orreq	r1, r4, r1, lsl #14
 824:	91050000 	mrsls	r0, (UNDEF: 5)
 828:	00010102 	andeq	r0, r1, r2, lsl #2
 82c:	b4230300 	strtlt	r0, [r3], #-768	; 0xfffffd00
 830:	00961701 	addseq	r1, r6, r1, lsl #14
 834:	92050000 	andls	r0, r5, #0
 838:	00010102 	andeq	r0, r1, r2, lsl #2
 83c:	bc230300 	stclt	3, cr0, [r3], #-0
 840:	00a51701 	adceq	r1, r5, r1, lsl #14
 844:	93050000 	movwls	r0, #20480	; 0x5000
 848:	00010102 	andeq	r0, r1, r2, lsl #2
 84c:	c4230300 	strtgt	r0, [r3], #-768	; 0xfffffd00
 850:	03301701 	teqeq	r0, #262144	; 0x40000
 854:	94050000 	strls	r0, [r5], #-0
 858:	00005d02 	andeq	r5, r0, r2, lsl #26
 85c:	cc230300 	stcgt	3, cr0, [r3], #-0
 860:	f70b0001 			; <UNDEFINED> instruction: 0xf70b0001
 864:	72000005 	andvc	r0, r0, #5
 868:	0c000008 	stceq	0, cr0, [r0], {8}
 86c:	00000064 	andeq	r0, r0, r4, rrx
 870:	f70b0019 			; <UNDEFINED> instruction: 0xf70b0019
 874:	82000005 	andhi	r0, r0, #5
 878:	0c000008 	stceq	0, cr0, [r0], {8}
 87c:	00000064 	andeq	r0, r0, r4, rrx
 880:	f70b0007 			; <UNDEFINED> instruction: 0xf70b0007
 884:	92000005 	andls	r0, r0, #5
 888:	0c000008 	stceq	0, cr0, [r0], {8}
 88c:	00000064 	andeq	r0, r0, r4, rrx
 890:	f0190017 			; <UNDEFINED> instruction: 0xf0190017
 894:	ba029905 	blt	a6cb0 <StopAlarm+0xa6ca2>
 898:	17000008 	strne	r0, [r0, -r8]
 89c:	000002d1 	ldrdeq	r0, [r0], -r1
 8a0:	ba029c05 	blt	a78bc <StopAlarm+0xa78ae>
 8a4:	02000008 	andeq	r0, r0, #8
 8a8:	b1170023 	tstlt	r7, r3, lsr #32
 8ac:	05000004 	streq	r0, [r0, #-4]
 8b0:	08ca029d 	stmiaeq	sl, {r0, r2, r3, r4, r7, r9}^
 8b4:	23020000 	movwcs	r0, #8192	; 0x2000
 8b8:	090b0078 	stmdbeq	fp, {r3, r4, r5, r6}
 8bc:	ca000003 	bgt	8d0 <.debug_info+0x8d0>
 8c0:	0c000008 	stceq	0, cr0, [r0], {8}
 8c4:	00000064 	andeq	r0, r0, r4, rrx
 8c8:	640b001d 	strvs	r0, [fp], #-29	; 0xffffffe3
 8cc:	da000000 	ble	8d4 <.debug_info+0x8d4>
 8d0:	0c000008 	stceq	0, cr0, [r0], {8}
 8d4:	00000064 	andeq	r0, r0, r4, rrx
 8d8:	f01a001d 			; <UNDEFINED> instruction: 0xf01a001d
 8dc:	fc027e05 	stc2	14, cr7, [r2], {5}
 8e0:	1b000008 	blne	908 <.debug_info+0x908>
 8e4:	000003da 	ldrdeq	r0, [r0], -sl
 8e8:	32029505 	andcc	r9, r2, #20971520	; 0x1400000
 8ec:	1b000007 	blne	910 <.debug_info+0x910>
 8f0:	000004d4 	ldrdeq	r0, [r0], -r4
 8f4:	92029e05 	andls	r9, r2, #5, 28	; 0x50
 8f8:	00000008 	andeq	r0, r0, r8
 8fc:	0005f70b 	andeq	pc, r5, fp, lsl #14
 900:	00090c00 	andeq	r0, r9, r0, lsl #24
 904:	00640c00 	rsbeq	r0, r4, r0, lsl #24
 908:	00180000 	andseq	r0, r8, r0
 90c:	0000d607 	andeq	sp, r0, r7, lsl #12
 910:	04060100 	streq	r0, [r6], #-256	; 0xffffff00
 914:	0000090c 	andeq	r0, r0, ip, lsl #18
 918:	0924011c 	stmdbeq	r4!, {r2, r3, r4, r8}
 91c:	88140000 	ldmdahi	r4, {}	; <UNPREDICTABLE>
 920:	00000004 	andeq	r0, r0, r4
 924:	09180406 	ldmdbeq	r8, {r1, r2, sl}
 928:	04060000 	streq	r0, [r6], #-0
 92c:	00000181 	andeq	r0, r0, r1, lsl #3
 930:	093c011c 	ldmdbeq	ip!, {r2, r3, r4, r8}
 934:	5d140000 	ldcpl	0, cr0, [r4, #-0]
 938:	00000000 	andeq	r0, r0, r0
 93c:	09420406 	stmdbeq	r2, {r1, r2, sl}^
 940:	04060000 	streq	r0, [r6], #-0
 944:	00000930 	andeq	r0, r0, r0, lsr r9
 948:	0006940b 	andeq	r9, r6, fp, lsl #8
 94c:	00095800 	andeq	r5, r9, r0, lsl #16
 950:	00640c00 	rsbeq	r0, r4, r0, lsl #24
 954:	00020000 	andeq	r0, r2, r0
 958:	00040f1d 	andeq	r0, r4, sp, lsl pc
 95c:	032e0500 			; <UNDEFINED> instruction: 0x032e0500
 960:	00000488 	andeq	r0, r0, r8, lsl #9
 964:	741d0101 	ldrvc	r0, [sp], #-257	; 0xfffffeff
 968:	05000004 	streq	r0, [r0, #-4]
 96c:	048e032f 	streq	r0, [lr], #815	; 0x32f
 970:	01010000 	mrseq	r0, (UNDEF: 1)
 974:	02d8011e 	sbcseq	r0, r8, #-2147483641	; 0x80000007
 978:	0e010000 	cdpeq	0, 0, cr0, cr1, cr0, {0}
 97c:	0000000e 	andeq	r0, r0, lr
 980:	0000001c 	andeq	r0, r0, ip, lsl r0
 984:	00000000 	andeq	r0, r0, r0
 988:	04011e01 	streq	r1, [r1], #-3585	; 0xfffff1ff
 98c:	01000004 	tsteq	r0, r4
 990:	0000000a 	andeq	r0, r0, sl
 994:	00000e00 	andeq	r0, r0, r0, lsl #28
 998:	00002c00 	andeq	r2, r0, r0, lsl #24
 99c:	Address 0x000000000000099c is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10011201 	andne	r1, r1, r1, lsl #4
  10:	02000006 	andeq	r0, r0, #6
  14:	0b0b0024 	bleq	2c00ac <StopAlarm+0x2c009e>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	24030000 	strcs	r0, [r3], #-0
  20:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  24:	0008030b 	andeq	r0, r8, fp, lsl #6
  28:	000f0400 	andeq	r0, pc, r0, lsl #8
  2c:	00000b0b 	andeq	r0, r0, fp, lsl #22
  30:	03001605 	movweq	r1, #1541	; 0x605
  34:	3b0b3a0e 	blcc	2ce874 <StopAlarm+0x2ce866>
  38:	0013490b 	andseq	r4, r3, fp, lsl #18
  3c:	000f0600 	andeq	r0, pc, r0, lsl #12
  40:	13490b0b 	movtne	r0, #39691	; 0x9b0b
  44:	13070000 	movwne	r0, #28672	; 0x7000
  48:	3c0e0300 	stccc	3, cr0, [lr], {-0}
  4c:	0800000c 	stmdaeq	r0, {r2, r3}
  50:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
  54:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
  58:	00001349 	andeq	r1, r0, r9, asr #6
  5c:	0b011709 	bleq	45c88 <StopAlarm+0x45c7a>
  60:	3b0b3a0b 	blcc	2ce894 <StopAlarm+0x2ce886>
  64:	0013010b 	andseq	r0, r3, fp, lsl #2
  68:	000d0a00 	andeq	r0, sp, r0, lsl #20
  6c:	0b3a0e03 	bleq	e83880 <StopAlarm+0xe83872>
  70:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  74:	010b0000 	mrseq	r0, (UNDEF: 11)
  78:	01134901 	tsteq	r3, r1, lsl #18
  7c:	0c000013 	stceq	0, cr0, [r0], {19}
  80:	13490021 	movtne	r0, #36897	; 0x9021
  84:	00000b2f 	andeq	r0, r0, pc, lsr #22
  88:	0b01130d 	bleq	44cc4 <StopAlarm+0x44cb6>
  8c:	3b0b3a0b 	blcc	2ce8c0 <StopAlarm+0x2ce8b2>
  90:	0013010b 	andseq	r0, r3, fp, lsl #2
  94:	000d0e00 	andeq	r0, sp, r0, lsl #28
  98:	0b3a0e03 	bleq	e838ac <StopAlarm+0xe8389e>
  9c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  a0:	00000a38 	andeq	r0, r0, r8, lsr sl
  a4:	0301130f 	movweq	r1, #4879	; 0x130f
  a8:	3a0b0b0e 	bcc	2c2ce8 <StopAlarm+0x2c2cda>
  ac:	010b3b0b 	tsteq	fp, fp, lsl #22
  b0:	10000013 	andne	r0, r0, r3, lsl r0
  b4:	0803000d 	stmdaeq	r3, {r0, r2, r3}
  b8:	0b3b0b3a 	bleq	ec2da8 <StopAlarm+0xec2d9a>
  bc:	0a381349 	beq	e04de8 <StopAlarm+0xe04dda>
  c0:	13110000 	tstne	r1, #0
  c4:	0b0e0301 	bleq	380cd0 <StopAlarm+0x380cc2>
  c8:	3b0b3a05 	blcc	2ce8e4 <StopAlarm+0x2ce8d6>
  cc:	0013010b 	andseq	r0, r3, fp, lsl #2
  d0:	00151200 	andseq	r1, r5, r0, lsl #4
  d4:	00000c27 	andeq	r0, r0, r7, lsr #24
  d8:	27011513 	smladcs	r1, r3, r5, r1
  dc:	0113490c 	tsteq	r3, ip, lsl #18
  e0:	14000013 	strne	r0, [r0], #-19	; 0xffffffed
  e4:	13490005 	movtne	r0, #36869	; 0x9005
  e8:	26150000 	ldrcs	r0, [r5], -r0
  ec:	00134900 	andseq	r4, r3, r0, lsl #18
  f0:	01131600 	tsteq	r3, r0, lsl #12
  f4:	050b0e03 	streq	r0, [fp, #-3587]	; 0xfffff1fd
  f8:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
  fc:	00001301 	andeq	r1, r0, r1, lsl #6
 100:	03000d17 	movweq	r0, #3351	; 0xd17
 104:	3b0b3a0e 	blcc	2ce944 <StopAlarm+0x2ce936>
 108:	38134905 	ldmdacc	r3, {r0, r2, r8, fp, lr}
 10c:	1800000a 	stmdane	r0, {r1, r3}
 110:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
 114:	0b3a0b0b 	bleq	e82d48 <StopAlarm+0xe82d3a>
 118:	1301053b 	movwne	r0, #5435	; 0x153b
 11c:	13190000 	tstne	r9, #0
 120:	3a0b0b01 	bcc	2c2d2c <StopAlarm+0x2c2d1e>
 124:	01053b0b 	tsteq	r5, fp, lsl #22
 128:	1a000013 	bne	17c <StopAlarm+0x16e>
 12c:	0b0b0117 	bleq	2c0590 <StopAlarm+0x2c0582>
 130:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 134:	00001301 	andeq	r1, r0, r1, lsl #6
 138:	03000d1b 	movweq	r0, #3355	; 0xd1b
 13c:	3b0b3a0e 	blcc	2ce97c <StopAlarm+0x2ce96e>
 140:	00134905 	andseq	r4, r3, r5, lsl #18
 144:	01151c00 	tsteq	r5, r0, lsl #24
 148:	13010c27 	movwne	r0, #7207	; 0x1c27
 14c:	341d0000 	ldrcc	r0, [sp], #-0
 150:	3a0e0300 	bcc	380d58 <StopAlarm+0x380d4a>
 154:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 158:	3c0c3f13 	stccc	15, cr3, [ip], {19}
 15c:	1e00000c 	cdpne	0, 0, cr0, cr0, cr12, {0}
 160:	0c3f002e 	ldceq	0, cr0, [pc], #-184	; b0 <.debug_abbrev+0xb0>
 164:	0b3a0e03 	bleq	e83978 <StopAlarm+0xe8396a>
 168:	01110b3b 	tsteq	r1, fp, lsr fp
 16c:	06400112 			; <UNDEFINED> instruction: 0x06400112
 170:	000c4296 	muleq	ip, r6, r2
	...

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	0000000e 	andeq	r0, r0, lr
   4:	00000010 	andeq	r0, r0, r0, lsl r0
   8:	007d0002 	rsbseq	r0, sp, r2
   c:	00000010 	andeq	r0, r0, r0, lsl r0
  10:	00000012 	andeq	r0, r0, r2, lsl r0
  14:	087d0002 	ldmdaeq	sp!, {r1}^
  18:	00000012 	andeq	r0, r0, r2, lsl r0
  1c:	0000001c 	andeq	r0, r0, ip, lsl r0
  20:	08770002 	ldmdaeq	r7!, {r1}^
	...
  30:	00000002 	andeq	r0, r0, r2
  34:	007d0002 	rsbseq	r0, sp, r2
  38:	00000002 	andeq	r0, r0, r2
  3c:	00000004 	andeq	r0, r0, r4
  40:	087d0002 	ldmdaeq	sp!, {r1}^
  44:	00000004 	andeq	r0, r0, r4
  48:	0000000e 	andeq	r0, r0, lr
  4c:	08770002 	ldmdaeq	r7!, {r1}^
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
	...
  14:	0000001c 	andeq	r0, r0, ip, lsl r0
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	000001d5 	ldrdeq	r0, [r0], -r5
   4:	01bb0002 			; <UNDEFINED> instruction: 0x01bb0002
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	63010000 	movwvs	r0, #4096	; 0x1000
  1c:	74735c3a 	ldrbtvc	r5, [r3], #-3130	; 0xfffff3c6
  20:	6d74735c 	ldclvs	3, cr7, [r4, #-368]!	; 0xfffffe90
  24:	75633233 	strbvc	r3, [r3, #-563]!	; 0xfffffdcd
  28:	64696562 	strbtvs	r6, [r9], #-1378	; 0xfffffa9e
  2c:	2e315f65 	cdpcs	15, 3, cr5, cr1, cr5, {3}
  30:	5c302e34 	ldcpl	14, cr2, [r0], #-208	; 0xffffff30
  34:	336d7473 	cmncc	sp, #1929379840	; 0x73000000
  38:	62756332 	rsbsvs	r6, r5, #-939524096	; 0xc8000000
  3c:	65646965 	strbvs	r6, [r4, #-2405]!	; 0xfffff69b
  40:	756c705c 	strbvc	r7, [ip, #-92]!	; 0xffffffa4
  44:	736e6967 	cmnvc	lr, #1687552	; 0x19c000
  48:	6d6f635c 	stclvs	3, cr6, [pc, #-368]!	; fffffee0 <StopAlarm+0xfffffed2>
  4c:	2e74732e 	cdpcs	3, 7, cr7, cr4, cr14, {1}
  50:	336d7473 	cmncc	sp, #1929379840	; 0x73000000
  54:	62756332 	rsbsvs	r6, r5, #-939524096	; 0xc8000000
  58:	64692e65 	strbtvs	r2, [r9], #-3685	; 0xfffff19b
  5c:	636d2e65 	cmnvs	sp, #1616	; 0x650
  60:	78652e75 	stmdavc	r5!, {r0, r2, r4, r5, r6, r9, sl, fp, sp}^
  64:	6e726574 	mrcvs	5, 3, r6, cr2, cr4, {3}
  68:	6f746c61 	svcvs	0x00746c61
  6c:	2e736c6f 	cdpcs	12, 7, cr6, cr3, cr15, {3}
  70:	2d756e67 	ldclcs	14, cr6, [r5, #-412]!	; 0xfffffe64
  74:	6c6f6f74 	stclvs	15, cr6, [pc], #-464	; fffffeac <StopAlarm+0xfffffe9e>
  78:	6f662d73 	svcvs	0x00662d73
  7c:	74732d72 	ldrbtvc	r2, [r3], #-3442	; 0xfffff28e
  80:	2e32336d 	cdpcs	3, 3, cr3, cr2, cr13, {3}
  84:	30322d37 	eorscc	r2, r2, r7, lsr sp
  88:	712d3831 			; <UNDEFINED> instruction: 0x712d3831
  8c:	70752d32 	rsbsvc	r2, r5, r2, lsr sp
  90:	65746164 	ldrbvs	r6, [r4, #-356]!	; 0xfffffe9c
  94:	6e69772e 	cdpvs	7, 6, cr7, cr9, cr14, {1}
  98:	315f3233 	cmpcc	pc, r3, lsr r2	; <UNPREDICTABLE>
  9c:	302e342e 	eorcc	r3, lr, lr, lsr #8
  a0:	3230322e 	eorscc	r3, r0, #-536870910	; 0xe0000002
  a4:	30373030 	eorscc	r3, r7, r0, lsr r0
  a8:	30323138 	eorscc	r3, r2, r8, lsr r1
  ac:	6f745c38 	svcvs	0x00745c38
  b0:	5c736c6f 	ldclpl	12, cr6, [r3], #-444	; 0xfffffe44
  b4:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
  b8:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
  bc:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
  c0:	6e695c69 	cdpvs	12, 6, cr5, cr9, cr9, {3}
  c4:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
  c8:	79735c65 	ldmdbvc	r3!, {r0, r2, r5, r6, sl, fp, ip, lr}^
  cc:	3a630073 	bcc	18c02a0 <StopAlarm+0x18c0292>
  d0:	5c74735c 	ldclpl	3, cr7, [r4], #-368	; 0xfffffe90
  d4:	336d7473 	cmncc	sp, #1929379840	; 0x73000000
  d8:	62756332 	rsbsvs	r6, r5, #-939524096	; 0xc8000000
  dc:	65646965 	strbvs	r6, [r4, #-2405]!	; 0xfffff69b
  e0:	342e315f 	strtcc	r3, [lr], #-351	; 0xfffffea1
  e4:	735c302e 	cmpvc	ip, #46	; 0x2e
  e8:	32336d74 	eorscc	r6, r3, #116, 26	; 0x1d00
  ec:	65627563 	strbvs	r7, [r2, #-1379]!	; 0xfffffa9d
  f0:	5c656469 	cfstrdpl	mvd6, [r5], #-420	; 0xfffffe5c
  f4:	67756c70 			; <UNDEFINED> instruction: 0x67756c70
  f8:	5c736e69 	ldclpl	14, cr6, [r3], #-420	; 0xfffffe5c
  fc:	2e6d6f63 	cdpcs	15, 6, cr6, cr13, cr3, {3}
 100:	732e7473 			; <UNDEFINED> instruction: 0x732e7473
 104:	32336d74 	eorscc	r6, r3, #116, 26	; 0x1d00
 108:	65627563 	strbvs	r7, [r2, #-1379]!	; 0xfffffa9d
 10c:	6564692e 	strbvs	r6, [r4, #-2350]!	; 0xfffff6d2
 110:	75636d2e 	strbvc	r6, [r3, #-3374]!	; 0xfffff2d2
 114:	7478652e 	ldrbtvc	r6, [r8], #-1326	; 0xfffffad2
 118:	616e7265 	cmnvs	lr, r5, ror #4
 11c:	6f6f746c 	svcvs	0x006f746c
 120:	672e736c 	strvs	r7, [lr, -ip, ror #6]!
 124:	742d756e 	strtvc	r7, [sp], #-1390	; 0xfffffa92
 128:	736c6f6f 	cmnvc	ip, #444	; 0x1bc
 12c:	726f662d 	rsbvc	r6, pc, #47185920	; 0x2d00000
 130:	6d74732d 	ldclvs	3, cr7, [r4, #-180]!	; 0xffffff4c
 134:	372e3233 			; <UNDEFINED> instruction: 0x372e3233
 138:	3130322d 	teqcc	r0, sp, lsr #4
 13c:	32712d38 	rsbscc	r2, r1, #56, 26	; 0xe00
 140:	6470752d 	ldrbtvs	r7, [r0], #-1325	; 0xfffffad3
 144:	2e657461 	cdpcs	4, 6, cr7, cr5, cr1, {3}
 148:	336e6977 	cmncc	lr, #1949696	; 0x1dc000
 14c:	2e315f32 	mrccs	15, 1, r5, cr1, cr2, {1}
 150:	2e302e34 	mrccs	14, 1, r2, cr0, cr4, {1}
 154:	30323032 	eorscc	r3, r2, r2, lsr r0
 158:	38303730 	ldmdacc	r0!, {r4, r5, r8, r9, sl, ip, sp}
 15c:	38303231 	ldmdacc	r0!, {r0, r4, r5, r9, ip, sp}
 160:	6f6f745c 	svcvs	0x006f745c
 164:	6c5c736c 	mrrcvs	3, 6, r7, ip, cr12
 168:	675c6269 	ldrbvs	r6, [ip, -r9, ror #4]
 16c:	615c6363 	cmpvs	ip, r3, ror #6
 170:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
 174:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
 178:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
 17c:	332e375c 			; <UNDEFINED> instruction: 0x332e375c
 180:	695c312e 	ldmdbvs	ip, {r1, r2, r3, r5, r8, ip, sp}^
 184:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
 188:	00006564 	andeq	r6, r0, r4, ror #10
 18c:	72616c41 	rsbvc	r6, r1, #16640	; 0x4100
 190:	00632e6d 	rsbeq	r2, r3, sp, ror #28
 194:	6c000000 	stcvs	0, cr0, [r0], {-0}
 198:	2e6b636f 	cdpcs	3, 6, cr6, cr11, cr15, {3}
 19c:	00010068 	andeq	r0, r1, r8, rrx
 1a0:	79745f00 	ldmdbvc	r4!, {r8, r9, sl, fp, ip, lr}^
 1a4:	2e736570 	mrccs	5, 3, r6, cr3, cr0, {3}
 1a8:	00010068 	andeq	r0, r1, r8, rrx
 1ac:	64747300 	ldrbtvs	r7, [r4], #-768	; 0xfffffd00
 1b0:	2e666564 	cdpcs	5, 6, cr6, cr6, cr4, {3}
 1b4:	00020068 	andeq	r0, r2, r8, rrx
 1b8:	65657200 	strbvs	r7, [r5, #-512]!	; 0xfffffe00
 1bc:	682e746e 	stmdavs	lr!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
 1c0:	00000100 	andeq	r0, r0, r0, lsl #2
 1c4:	02050000 	andeq	r0, r5, #0
 1c8:	00000000 	andeq	r0, r0, r0
 1cc:	2f010903 	svccs	0x00010903
 1d0:	3d2f303d 	stccc	0, cr3, [pc, #-244]!	; e4 <.debug_line+0xe4>
 1d4:	01000202 	tsteq	r0, r2, lsl #4
 1d8:	Address 0x00000000000001d8 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	6f73645f 	svcvs	0x0073645f
   4:	6e61685f 	mcrvs	8, 3, r6, cr1, cr15, {2}
   8:	00656c64 	rsbeq	r6, r5, r4, ror #24
   c:	7a69735f 	bvc	1a5cd90 <StopAlarm+0x1a5cd82>
  10:	725f0065 	subsvc	r0, pc, #101	; 0x65
  14:	34646e61 	strbtcc	r6, [r4], #-3681	; 0xfffff19f
  18:	655f0038 	ldrbvs	r0, [pc, #-56]	; ffffffe8 <StopAlarm+0xffffffda>
  1c:	6772656d 	ldrbvs	r6, [r2, -sp, ror #10]!
  20:	79636e65 	stmdbvc	r3!, {r0, r2, r5, r6, r9, sl, fp, sp, lr}^
  24:	554e4700 	strbpl	r4, [lr, #-1792]	; 0xfffff900
  28:	31314320 	teqcc	r1, r0, lsr #6
  2c:	332e3720 			; <UNDEFINED> instruction: 0x332e3720
  30:	3220312e 	eorcc	r3, r0, #-2147483637	; 0x8000000b
  34:	30383130 	eorscc	r3, r8, r0, lsr r1
  38:	20323236 	eorscs	r3, r2, r6, lsr r2
  3c:	6c657228 	sfmvs	f7, 2, [r5], #-160	; 0xffffff60
  40:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0xfffffe9b
  44:	415b2029 	cmpmi	fp, r9, lsr #32
  48:	652f4d52 	strvs	r4, [pc, #-3410]!	; fffff2fe <StopAlarm+0xfffff2f0>
  4c:	6465626d 	strbtvs	r6, [r5], #-621	; 0xfffffd93
  50:	2d646564 	cfstr64cs	mvdx6, [r4, #-400]!	; 0xfffffe70
  54:	72622d37 	rsbvc	r2, r2, #3520	; 0xdc0
  58:	68636e61 	stmdavs	r3!, {r0, r5, r6, r9, sl, fp, sp, lr}^
  5c:	76657220 	strbtvc	r7, [r5], -r0, lsr #4
  60:	6f697369 	svcvs	0x00697369
  64:	3632206e 	ldrtcc	r2, [r2], -lr, rrx
  68:	37303931 			; <UNDEFINED> instruction: 0x37303931
  6c:	6d2d205d 	stcvs	0, cr2, [sp, #-372]!	; 0xfffffe8c
  70:	3d757063 	ldclcc	0, cr7, [r5, #-396]!	; 0xfffffe74
  74:	74726f63 	ldrbtvc	r6, [r2], #-3939	; 0xfffff09d
  78:	6d2d7865 	stcvs	8, cr7, [sp, #-404]!	; 0xfffffe6c
  7c:	6d2d2033 	stcvs	0, cr2, [sp, #-204]!	; 0xffffff34
  80:	6d756874 	ldclvs	8, cr6, [r5, #-464]!	; 0xfffffe30
  84:	672d2062 	strvs	r2, [sp, -r2, rrx]!
  88:	72617764 	rsbvc	r7, r1, #100, 14	; 0x1900000
  8c:	00322d66 	eorseq	r2, r2, r6, ror #26
  90:	7461645f 	strbtvc	r6, [r1], #-1119	; 0xfffffba1
  94:	775f0061 	ldrbvc	r0, [pc, -r1, rrx]
  98:	6f747263 	svcvs	0x00747263
  9c:	735f626d 	cmpvc	pc, #-805306362	; 0xd0000006
  a0:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
  a4:	63775f00 	cmnvs	r7, #0, 30
  a8:	6f747273 	svcvs	0x00747273
  ac:	5f73626d 	svcpl	0x0073626d
  b0:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
  b4:	6f6c0065 	svcvs	0x006c0065
  b8:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
  bc:	20676e6f 	rsbcs	r6, r7, pc, ror #28
  c0:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  c4:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  c8:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
  cc:	626c5f00 	rsbvs	r5, ip, #0, 30
  d0:	7a697366 	bvc	1a5ce70 <StopAlarm+0x1a5ce62>
  d4:	5f5f0065 	svcpl	0x005f0065
  d8:	61636f6c 	cmnvs	r3, ip, ror #30
  dc:	745f656c 	ldrbvc	r6, [pc], #-1388	; e4 <.debug_str+0xe4>
  e0:	626d5f00 	rsbvs	r5, sp, #0, 30
  e4:	776f7472 			; <UNDEFINED> instruction: 0x776f7472
  e8:	74735f63 	ldrbtvc	r5, [r3], #-3939	; 0xfffff09d
  ec:	00657461 	rsbeq	r7, r5, r1, ror #8
  f0:	6d745f5f 	ldclvs	15, cr5, [r4, #-380]!	; 0xfffffe84
  f4:	6365735f 	cmnvs	r5, #2080374785	; 0x7c000001
  f8:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
  fc:	6f6c2067 	svcvs	0x006c2067
 100:	6920676e 	stmdbvs	r0!, {r1, r2, r3, r5, r6, r8, r9, sl, sp, lr}
 104:	7300746e 	movwvc	r7, #1134	; 0x46e
 108:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
 10c:	68632064 	stmdavs	r3!, {r2, r5, r6, sp}^
 110:	5f007261 	svcpl	0x00007261
 114:	66756275 			; <UNDEFINED> instruction: 0x66756275
 118:	61625f00 	cmnvs	r2, r0, lsl #30
 11c:	5f006573 	svcpl	0x00006573
 120:	5f6d745f 	svcpl	0x006d745f
 124:	72756f68 	rsbsvc	r6, r5, #104, 30	; 0x1a0
 128:	735f5f00 	cmpvc	pc, #0, 30
 12c:	6f5f0066 	svcvs	0x005f0066
 130:	78655f6e 	stmdavc	r5!, {r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
 134:	615f7469 	cmpvs	pc, r9, ror #8
 138:	00736772 	rsbseq	r6, r3, r2, ror r7
 13c:	6f6f635f 	svcvs	0x006f635f
 140:	0065696b 	rsbeq	r6, r5, fp, ror #18
 144:	67735f5f 			; <UNDEFINED> instruction: 0x67735f5f
 148:	0065756c 	rsbeq	r7, r5, ip, ror #10
 14c:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
 150:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 154:	6c665f00 	stclvs	15, cr5, [r6], #-0
 158:	00736761 	rsbseq	r6, r3, r1, ror #14
 15c:	5f73695f 	svcpl	0x0073695f
 160:	00617863 	rsbeq	r7, r1, r3, ror #16
 164:	6474735f 	ldrbtvs	r7, [r4], #-863	; 0xfffffca1
 168:	5f006e69 	svcpl	0x00006e69
 16c:	736b6c62 	cmnvc	fp, #25088	; 0x6200
 170:	00657a69 	rsbeq	r7, r5, r9, ror #20
 174:	7476635f 	ldrbtvc	r6, [r6], #-863	; 0xfffffca1
 178:	00667562 	rsbeq	r7, r6, r2, ror #10
 17c:	66666f5f 	uqsaxvs	r6, r6, pc	; <UNPREDICTABLE>
 180:	00746573 	rsbseq	r6, r4, r3, ror r5
 184:	73626d5f 	cmnvc	r2, #6080	; 0x17c0
 188:	776f7472 			; <UNDEFINED> instruction: 0x776f7472
 18c:	735f7363 	cmpvc	pc, #-1946157055	; 0x8c000001
 190:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
 194:	626d5f00 	rsbvs	r5, sp, #0, 30
 198:	6e656c72 	mcrvs	12, 3, r6, cr5, cr2, {3}
 19c:	6174735f 	cmnvs	r4, pc, asr r3
 1a0:	5f006574 	svcpl	0x00006574
 1a4:	72616e66 	rsbvc	r6, r1, #1632	; 0x660
 1a8:	5f007367 	svcpl	0x00007367
 1ac:	00736e66 	rsbseq	r6, r3, r6, ror #28
 1b0:	6769735f 			; <UNDEFINED> instruction: 0x6769735f
 1b4:	665f006e 	ldrbvs	r0, [pc], -lr, rrx
 1b8:	6b636f6c 	blvs	18dbf70 <StopAlarm+0x18dbf62>
 1bc:	5f00745f 	svcpl	0x0000745f
 1c0:	65647473 	strbvs	r7, [r4, #-1139]!	; 0xfffffb8d
 1c4:	5f007272 	svcpl	0x00007272
 1c8:	69676942 	stmdbvs	r7!, {r1, r6, r8, fp, sp, lr}^
 1cc:	5f00746e 	svcpl	0x0000746e
 1d0:	6d6d6167 	stfvse	f6, [sp, #-412]!	; 0xfffffe64
 1d4:	69735f61 	ldmdbvs	r3!, {r0, r5, r6, r8, r9, sl, fp, ip, lr}^
 1d8:	61676e67 	cmnvs	r7, r7, ror #28
 1dc:	725f006d 	subsvc	r0, pc, #109	; 0x6d
 1e0:	00646165 	rsbeq	r6, r4, r5, ror #2
 1e4:	7365725f 	cmnvc	r5, #-268435451	; 0xf0000005
 1e8:	5f746c75 	svcpl	0x00746c75
 1ec:	5f5f006b 	svcpl	0x005f006b
 1f0:	75006d74 	strvc	r6, [r0, #-3444]	; 0xfffff28c
 1f4:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
 1f8:	2064656e 	rsbcs	r6, r4, lr, ror #10
 1fc:	00746e69 	rsbseq	r6, r4, r9, ror #28
 200:	63775f5f 	cmnvs	r7, #380	; 0x17c
 204:	5f006268 	svcpl	0x00006268
 208:	6f647473 	svcvs	0x00647473
 20c:	5f007475 	svcpl	0x00007475
 210:	6c747663 	ldclvs	6, cr7, [r4], #-396	; 0xfffffe74
 214:	6c006e65 	stcvs	14, cr6, [r0], {101}	; 0x65
 218:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 21c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
 220:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
 224:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 228:	69665f00 	stmdbvs	r6!, {r8, r9, sl, fp, ip, lr}^
 22c:	5f00656c 	svcpl	0x0000656c
 230:	626f696e 	rsbvs	r6, pc, #1802240	; 0x1b8000
 234:	68730073 	ldmdavs	r3!, {r0, r1, r4, r5, r6}^
 238:	2074726f 	rsbscs	r7, r4, pc, ror #4
 23c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
 240:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
 244:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 248:	74615f00 	strbtvc	r5, [r1], #-3840	; 0xfffff100
 24c:	74697865 	strbtvc	r7, [r9], #-2149	; 0xfffff79b
 250:	735f0030 	cmpvc	pc, #48	; 0x30
 254:	616e6769 	cmnvs	lr, r9, ror #14
 258:	75625f6c 	strbvc	r5, [r2, #-3948]!	; 0xfffff094
 25c:	615f0066 	cmpvs	pc, r6, rrx
 260:	69746373 	ldmdbvs	r4!, {r0, r1, r4, r5, r6, r8, r9, sp, lr}^
 264:	625f656d 	subsvs	r6, pc, #457179136	; 0x1b400000
 268:	5f006675 	svcpl	0x00006675
 26c:	75736572 	ldrbvc	r6, [r3, #-1394]!	; 0xfffffa8e
 270:	5f00746c 	svcpl	0x0000746c
 274:	6863775f 	stmdavs	r3!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, sp, lr}^
 278:	4f4c5f00 	svcmi	0x004c5f00
 27c:	545f4b43 	ldrbpl	r4, [pc], #-2883	; 284 <.debug_str+0x284>
 280:	6e697700 	cdpvs	7, 6, cr7, cr9, cr0, {0}
 284:	00745f74 	rsbseq	r5, r4, r4, ror pc
 288:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
 28c:	3a45006b 	bcc	1140440 <StopAlarm+0x1140432>
 290:	6e65732f 	cdpvs	3, 6, cr7, cr5, cr15, {1}
 294:	2f726f69 	svccs	0x00726f69
 298:	6c706964 			; <UNDEFINED> instruction: 0x6c706964
 29c:	2f616d6f 	svccs	0x00616d6f
 2a0:	6d726574 	cfldr64vs	mvdx6, [r2, #-464]!	; 0xfffffe30
 2a4:	72705f31 	rsbsvc	r5, r0, #49, 30	; 0xc4
 2a8:	63656a6f 	cmnvs	r5, #454656	; 0x6f000
 2ac:	72702f74 	rsbsvc	r2, r0, #116, 30	; 0x1d0
 2b0:	00316a6f 	eorseq	r6, r1, pc, ror #20
 2b4:	6972775f 	ldmdbvs	r2!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, sp, lr}^
 2b8:	5f006574 	svcpl	0x00006574
 2bc:	5f6d745f 	svcpl	0x006d745f
 2c0:	72616579 	rsbvc	r6, r1, #507510784	; 0x1e400000
 2c4:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
 2c8:	6f642067 	svcvs	0x00642067
 2cc:	656c6275 	strbvs	r6, [ip, #-629]!	; 0xfffffd8b
 2d0:	656e5f00 	strbvs	r5, [lr, #-3840]!	; 0xfffff100
 2d4:	00667478 	rsbeq	r7, r6, r8, ror r4
 2d8:	706f7453 	rsbvc	r7, pc, r3, asr r4	; <UNPREDICTABLE>
 2dc:	72616c41 	rsbvc	r6, r1, #16640	; 0x4100
 2e0:	5f5f006d 	svcpl	0x005f006d
 2e4:	6d5f6d74 	ldclvs	13, cr6, [pc, #-464]	; 11c <.debug_str+0x11c>
 2e8:	5f006e6f 	svcpl	0x00006e6f
 2ec:	78657461 	stmdavc	r5!, {r0, r5, r6, sl, ip, sp, lr}^
 2f0:	5f007469 	svcpl	0x00007469
 2f4:	6964735f 	stmdbvs	r4!, {r0, r1, r2, r3, r4, r6, r8, r9, ip, sp, lr}^
 2f8:	696e6964 	stmdbvs	lr!, {r2, r5, r6, r8, fp, sp, lr}^
 2fc:	6f5f0074 	svcvs	0x005f0074
 300:	745f6666 	ldrbvc	r6, [pc], #-1638	; 308 <.debug_str+0x308>
 304:	72665f00 	rsbvc	r5, r6, #0, 30
 308:	696c6565 	stmdbvs	ip!, {r0, r2, r5, r6, r8, sl, sp, lr}^
 30c:	5f007473 	svcpl	0x00007473
 310:	6f746377 	svcvs	0x00746377
 314:	735f626d 	cmpvc	pc, #-805306362	; 0xd0000006
 318:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
 31c:	736e7500 	cmnvc	lr, #0, 10
 320:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
 324:	68632064 	stmdavs	r3!, {r2, r5, r6, sp}^
 328:	5f007261 	svcpl	0x00007261
 32c:	0077656e 	rsbseq	r6, r7, lr, ror #10
 330:	655f685f 	ldrbvs	r6, [pc, #-2143]	; fffffad9 <StopAlarm+0xfffffacb>
 334:	6f6e7272 	svcvs	0x006e7272
 338:	6f687300 	svcvs	0x00687300
 33c:	69207472 	stmdbvs	r0!, {r1, r4, r5, r6, sl, ip, sp, lr}
 340:	5f00746e 	svcpl	0x0000746e
 344:	5f6d745f 	svcpl	0x006d745f
 348:	79616479 	stmdbvc	r1!, {r0, r3, r4, r5, r6, sl, sp, lr}^
 34c:	735f5f00 	cmpvc	pc, #0, 30
 350:	00667562 	rsbeq	r7, r6, r2, ror #10
 354:	616c665f 	cmnvs	ip, pc, asr r6
 358:	00327367 	eorseq	r7, r2, r7, ror #6
 35c:	626f695f 	rsbvs	r6, pc, #1556480	; 0x17c000
 360:	5f5f0073 	svcpl	0x005f0073
 364:	454c4946 	strbmi	r4, [ip, #-2374]	; 0xfffff6ba
 368:	626d5f00 	rsbvs	r5, sp, #0, 30
 36c:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
 370:	00745f65 	rsbseq	r5, r4, r5, ror #30
 374:	46735f5f 	uhsaxmi	r5, r3, pc	; <UNPREDICTABLE>
 378:	00454c49 	subeq	r4, r5, r9, asr #24
 37c:	73626d5f 	cmnvc	r2, #6080	; 0x17c0
 380:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
 384:	61725f00 	cmnvs	r2, r0, lsl #30
 388:	6e5f646e 	cdpvs	4, 5, cr6, cr15, cr14, {3}
 38c:	00747865 	rsbseq	r7, r4, r5, ror #16
 390:	6c626d5f 	stclvs	13, cr6, [r2], #-380	; 0xfffffe84
 394:	735f6e65 	cmpvc	pc, #1616	; 0x650
 398:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
 39c:	6e695f00 	cdpvs	15, 6, cr5, cr9, cr0, {0}
 3a0:	695f0063 	ldmdbvs	pc, {r0, r1, r5, r6}^	; <UNPREDICTABLE>
 3a4:	5f00646e 	svcpl	0x0000646e
 3a8:	61636f6c 	cmnvs	r3, ip, ror #30
 3ac:	5f00656c 	svcpl	0x0000656c
 3b0:	656c635f 	strbvs	r6, [ip, #-863]!	; 0xfffffca1
 3b4:	70756e61 	rsbsvc	r6, r5, r1, ror #28
 3b8:	6e755f00 	cdpvs	15, 7, cr5, cr5, cr0, {0}
 3bc:	63657073 	cmnvs	r5, #115	; 0x73
 3c0:	65696669 	strbvs	r6, [r9, #-1641]!	; 0xfffff997
 3c4:	6f6c5f64 	svcvs	0x006c5f64
 3c8:	656c6163 	strbvs	r6, [ip, #-355]!	; 0xfffffe9d
 3cc:	666e695f 			; <UNDEFINED> instruction: 0x666e695f
 3d0:	6d5f006f 	ldclvs	0, cr0, [pc, #-444]	; 21c <.debug_str+0x21c>
 3d4:	64777861 	ldrbtvs	r7, [r7], #-2145	; 0xfffff79f
 3d8:	725f0073 	subsvc	r0, pc, #115	; 0x73
 3dc:	746e6565 	strbtvc	r6, [lr], #-1381	; 0xfffffa9b
 3e0:	65735f00 	ldrbvs	r5, [r3, #-3840]!	; 0xfffff100
 3e4:	5f006465 	svcpl	0x00006465
 3e8:	756f635f 	strbvc	r6, [pc, #-863]!	; 91 <.debug_str+0x91>
 3ec:	5f00746e 	svcpl	0x0000746e
 3f0:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
 3f4:	5f5f006b 	svcpl	0x005f006b
 3f8:	756c6176 	strbvc	r6, [ip, #-374]!	; 0xfffffe8a
 3fc:	735f0065 	cmpvc	pc, #101	; 0x65
 400:	006b6565 	rsbeq	r6, fp, r5, ror #10
 404:	72617453 	rsbvc	r7, r1, #1392508928	; 0x53000000
 408:	616c4174 	smcvs	50196	; 0xc414
 40c:	5f006d72 	svcpl	0x00006d72
 410:	75706d69 	ldrbvc	r6, [r0, #-3433]!	; 0xfffff297
 414:	705f6572 	subsvc	r6, pc, r2, ror r5	; <UNPREDICTABLE>
 418:	5f007274 	svcpl	0x00007274
 41c:	736f7066 	cmnvc	pc, #102	; 0x66
 420:	5f00745f 	svcpl	0x0000745f
 424:	6e727265 	cdpvs	2, 7, cr7, cr2, cr5, {3}
 428:	6863006f 	stmdavs	r3!, {r0, r1, r2, r3, r5, r6}^
 42c:	5f007261 	svcpl	0x00007261
 430:	5f6d745f 	svcpl	0x006d745f
 434:	006e696d 	rsbeq	r6, lr, sp, ror #18
 438:	6c756d5f 	ldclvs	13, cr6, [r5], #-380	; 0xfffffe84
 43c:	6e5f0074 	mrcvs	0, 2, r0, cr15, cr4, {3}
 440:	00747865 	rsbseq	r7, r4, r5, ror #16
 444:	7274735f 	rsbsvc	r7, r4, #2080374785	; 0x7c000001
 448:	5f6b6f74 	svcpl	0x006b6f74
 44c:	7473616c 	ldrbtvc	r6, [r3], #-364	; 0xfffffe94
 450:	6e665f00 	cdpvs	15, 6, cr5, cr6, cr0, {0}
 454:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
 458:	615f0073 	cmpvs	pc, r3, ror r0	; <UNPREDICTABLE>
 45c:	5f006464 	svcpl	0x00006464
 460:	6f4c555f 	svcvs	0x004c555f
 464:	5f00676e 	svcpl	0x0000676e
 468:	64746567 	ldrbtvs	r6, [r4], #-1383	; 0xfffffa99
 46c:	5f657461 	svcpl	0x00657461
 470:	00727265 	rsbseq	r7, r2, r5, ror #4
 474:	6f6c675f 	svcvs	0x006c675f
 478:	5f6c6162 	svcpl	0x006c6162
 47c:	75706d69 	ldrbvc	r6, [r0, #-3433]!	; 0xfffff297
 480:	705f6572 	subsvc	r6, pc, r2, ror r5	; <UNPREDICTABLE>
 484:	5f007274 	svcpl	0x00007274
 488:	73756e75 	cmnvc	r5, #1872	; 0x750
 48c:	725f6465 	subsvc	r6, pc, #1694498816	; 0x65000000
 490:	00646e61 	rsbeq	r6, r4, r1, ror #28
 494:	72616c41 	rsbvc	r6, r1, #16640	; 0x4100
 498:	00632e6d 	rsbeq	r2, r3, sp, ror #28
 49c:	7364775f 	cmnvc	r4, #24903680	; 0x17c0000
 4a0:	745f5f00 	ldrbvc	r5, [pc], #-3840	; 4a8 <.debug_str+0x4a8>
 4a4:	64775f6d 	ldrbtvs	r5, [r7], #-3949	; 0xfffff093
 4a8:	5f007961 	svcpl	0x00007961
 4ac:	65756c67 	ldrbvs	r6, [r5, #-3175]!	; 0xfffff399
 4b0:	6d6e5f00 	stclvs	15, cr5, [lr, #-0]
 4b4:	6f6c6c61 	svcvs	0x006c6c61
 4b8:	6c5f0063 	mrrcvs	0, 6, r0, pc, cr3	; <UNPREDICTABLE>
 4bc:	5f613436 	svcpl	0x00613436
 4c0:	00667562 	rsbeq	r7, r6, r2, ror #10
 4c4:	6769735f 			; <UNDEFINED> instruction: 0x6769735f
 4c8:	6e75665f 	mrcvs	6, 3, r6, cr5, cr15, {2}
 4cc:	6e5f0063 	cdpvs	0, 5, cr0, cr15, cr3, {3}
 4d0:	00667562 	rsbeq	r7, r6, r2, ror #10
 4d4:	756e755f 	strbvc	r7, [lr, #-1375]!	; 0xfffffaa1
 4d8:	00646573 	rsbeq	r6, r4, r3, ror r5
 4dc:	6d745f5f 	ldclvs	15, cr5, [r4, #-380]!	; 0xfffffe84
 4e0:	6473695f 	ldrbtvs	r6, [r3], #-2399	; 0xfffff6a1
 4e4:	5f007473 	svcpl	0x00007473
 4e8:	61636f6c 	cmnvs	r3, ip, ror #30
 4ec:	6d69746c 	cfstrdvs	mvd7, [r9, #-432]!	; 0xfffffe50
 4f0:	75625f65 	strbvc	r5, [r2, #-3941]!	; 0xfffff09b
 4f4:	635f0066 	cmpvs	pc, #102	; 0x66
 4f8:	65736f6c 	ldrbvs	r6, [r3, #-3948]!	; 0xfffff094
 4fc:	34725f00 	ldrbtcc	r5, [r2], #-3840	; 0xfffff100
 500:	6d5f0038 	ldclvs	0, cr0, [pc, #-224]	; 428 <.debug_str+0x428>
 504:	776f7462 	strbvc	r7, [pc, -r2, ror #8]!
 508:	74735f63 	ldrbtvc	r5, [r3], #-3939	; 0xfffff09d
 50c:	00657461 	rsbeq	r7, r5, r1, ror #8
 510:	7335705f 	teqvc	r5, #95	; 0x5f
 514:	745f5f00 	ldrbvc	r5, [pc], #-3840	; 51c <.debug_str+0x51c>
 518:	646d5f6d 	strbtvs	r5, [sp], #-3949	; 0xfffff093
 51c:	Address 0x000000000000051c is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	43434700 	movtmi	r4, #14080	; 0x3700
   4:	4728203a 			; <UNDEFINED> instruction: 0x4728203a
   8:	5420554e 	strtpl	r5, [r0], #-1358	; 0xfffffab2
   c:	736c6f6f 	cmnvc	ip, #444	; 0x1bc
  10:	726f6620 	rsbvc	r6, pc, #32, 12	; 0x2000000
  14:	4d545320 	ldclmi	3, cr5, [r4, #-128]	; 0xffffff80
  18:	37203233 			; <UNDEFINED> instruction: 0x37203233
  1c:	3130322d 	teqcc	r0, sp, lsr #4
  20:	32712d38 	rsbscc	r2, r1, #56, 26	; 0xe00
  24:	6470752d 	ldrbtvs	r7, [r0], #-1325	; 0xfffffad3
  28:	2e657461 	cdpcs	4, 6, cr7, cr5, cr1, {3}
  2c:	39313032 	ldmdbcc	r1!, {r1, r4, r5, ip, sp}
  30:	38323330 	ldmdacc	r2!, {r4, r5, r8, r9, ip, sp}
  34:	3038312d 	eorscc	r3, r8, sp, lsr #2
  38:	37202930 			; <UNDEFINED> instruction: 0x37202930
  3c:	312e332e 			; <UNDEFINED> instruction: 0x312e332e
  40:	31303220 	teqcc	r0, r0, lsr #4
  44:	32363038 	eorscc	r3, r6, #56	; 0x38
  48:	72282032 	eorvc	r2, r8, #50	; 0x32
  4c:	61656c65 	cmnvs	r5, r5, ror #24
  50:	20296573 	eorcs	r6, r9, r3, ror r5
  54:	4d52415b 	ldfmie	f4, [r2, #-364]	; 0xfffffe94
  58:	626d652f 	rsbvs	r6, sp, #197132288	; 0xbc00000
  5c:	65646465 	strbvs	r6, [r4, #-1125]!	; 0xfffffb9b
  60:	2d372d64 	ldccs	13, cr2, [r7, #-400]!	; 0xfffffe70
  64:	6e617262 	cdpvs	2, 6, cr7, cr1, cr2, {3}
  68:	72206863 	eorvc	r6, r0, #6488064	; 0x630000
  6c:	73697665 	cmnvc	r9, #105906176	; 0x6500000
  70:	206e6f69 	rsbcs	r6, lr, r9, ror #30
  74:	39313632 	ldmdbcc	r1!, {r1, r4, r5, r9, sl, ip, sp}
  78:	005d3730 	subseq	r3, sp, r0, lsr r7

Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000018 	andeq	r0, r0, r8, lsl r0
	...
  1c:	0000000e 	andeq	r0, r0, lr
  20:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  24:	41018e02 	tstmi	r1, r2, lsl #28
  28:	0000070d 	andeq	r0, r0, sp, lsl #14
  2c:	00000018 	andeq	r0, r0, r8, lsl r0
  30:	00000000 	andeq	r0, r0, r0
  34:	0000000e 	andeq	r0, r0, lr
  38:	0000000e 	andeq	r0, r0, lr
  3c:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  40:	41018e02 	tstmi	r1, r2, lsl #28
  44:	0000070d 	andeq	r0, r0, sp, lsl #14

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00003241 	andeq	r3, r0, r1, asr #4
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000028 	andeq	r0, r0, r8, lsr #32
  10:	726f4305 	rsbvc	r4, pc, #335544320	; 0x14000000
  14:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
  18:	0600334d 	streq	r3, [r0], -sp, asr #6
  1c:	094d070a 	stmdbeq	sp, {r1, r3, r8, r9, sl}^
  20:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
  24:	17011501 	strne	r1, [r1, -r1, lsl #10]
  28:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
  2c:	1e011a01 	vmlane.f32	s2, s2, s2
  30:	Address 0x0000000000000030 is out of bounds.

