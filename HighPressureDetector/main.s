
main.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
   0:	b580      	push	{r7, lr}
   2:	b082      	sub	sp, #8
   4:	af00      	add	r7, sp, #0
   6:	f7ff fffe 	bl	0 <GPIO_INITIALIZATION>
   a:	2314      	movs	r3, #20
   c:	607b      	str	r3, [r7, #4]
   e:	f7ff fffe 	bl	0 <getPressureVal>
  12:	6038      	str	r0, [r7, #0]
  14:	683a      	ldr	r2, [r7, #0]
  16:	687b      	ldr	r3, [r7, #4]
  18:	429a      	cmp	r2, r3
  1a:	dd06      	ble.n	2a <main+0x2a>
  1c:	f7ff fffe 	bl	0 <StartAlarm>
  20:	203c      	movs	r0, #60	; 0x3c
  22:	f7ff fffe 	bl	0 <Delay>
  26:	f7ff fffe 	bl	0 <StopAlarm>
  2a:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
  2e:	f7ff fffe 	bl	0 <Delay>
  32:	e7ec      	b.n	e <main+0xe>

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	000009a7 	andeq	r0, r0, r7, lsr #19
   4:	00000002 	andeq	r0, r0, r2
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	00000025 	andeq	r0, r0, r5, lsr #32
  10:	0002860c 	andeq	r8, r2, ip, lsl #12
  14:	00029a00 	andeq	r9, r2, r0, lsl #20
  18:	00000000 	andeq	r0, r0, r0
  1c:	00003400 	andeq	r3, r0, r0, lsl #8
  20:	00000000 	andeq	r0, r0, r0
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	0000010c 	andeq	r0, r0, ip, lsl #2
  2c:	29080102 	stmdbcs	r8, {r1, r8}
  30:	02000003 	andeq	r0, r0, #3
  34:	03450502 	movteq	r0, #21762	; 0x5502
  38:	02020000 	andeq	r0, r2, #0
  3c:	00023b07 	andeq	r3, r2, r7, lsl #22
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	00000151 	andeq	r0, r0, r1, asr r1
  48:	1c070402 	cfstrsne	mvf0, [r7], {2}
  4c:	02000002 	andeq	r0, r0, #2
  50:	00fe0508 	rscseq	r0, lr, r8, lsl #10
  54:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  58:	0000bb07 	andeq	fp, r0, r7, lsl #22
  5c:	05040300 	streq	r0, [r4, #-768]	; 0xfffffd00
  60:	00746e69 	rsbseq	r6, r4, r9, ror #28
  64:	f8070402 			; <UNDEFINED> instruction: 0xf8070402
  68:	02000001 	andeq	r0, r0, #1
  6c:	02d10408 	sbcseq	r0, r1, #8, 8	; 0x8000000
  70:	04040000 	streq	r0, [r4], #-0
  74:	00027e05 	andeq	r7, r2, r5, lsl #28
  78:	7f220200 	svcvc	0x00220200
  7c:	06000000 	streq	r0, [r0], -r0
  80:	00008504 	andeq	r8, r0, r4, lsl #10
  84:	03fb0700 	mvnseq	r0, #0, 14
  88:	05010000 	streq	r0, [r1, #-0]
  8c:	00000300 	andeq	r0, r0, r0, lsl #6
  90:	00412c03 	subeq	r2, r1, r3, lsl #24
  94:	1c050000 	stcne	0, cr0, [r5], {-0}
  98:	03000004 	movweq	r0, #4
  9c:	00004172 	andeq	r4, r0, r2, ror r1
  a0:	028d0800 	addeq	r0, sp, #0, 16
  a4:	65040000 	strvs	r0, [r4, #-0]
  a8:	00006401 	andeq	r6, r0, r1, lsl #8
  ac:	03040900 	movweq	r0, #18688	; 0x4900
  b0:	0000cca6 	andeq	ip, r0, r6, lsr #25
  b4:	02780a00 	rsbseq	r0, r8, #0, 20
  b8:	a8030000 	stmdage	r3, {}	; <UNPREDICTABLE>
  bc:	000000a1 	andeq	r0, r0, r1, lsr #1
  c0:	0002050a 	andeq	r0, r2, sl, lsl #10
  c4:	cca90300 	stcgt	3, cr0, [r9]
  c8:	00000000 	andeq	r0, r0, r0
  cc:	00002c0b 	andeq	r2, r0, fp, lsl #24
  d0:	0000dc00 	andeq	sp, r0, r0, lsl #24
  d4:	00640c00 	rsbeq	r0, r4, r0, lsl #24
  d8:	00030000 	andeq	r0, r3, r0
  dc:	a303080d 	movwge	r0, #14349	; 0x380d
  e0:	00000101 	andeq	r0, r0, r1, lsl #2
  e4:	0003f30e 	andeq	pc, r3, lr, lsl #6
  e8:	5da50300 	stcpl	3, cr0, [r5]
  ec:	02000000 	andeq	r0, r0, #0
  f0:	020e0023 	andeq	r0, lr, #35	; 0x23
  f4:	03000004 	movweq	r0, #4
  f8:	0000adaa 	andeq	sl, r0, sl, lsr #27
  fc:	04230200 	strteq	r0, [r3], #-512	; 0xfffffe00
 100:	03750500 	cmneq	r5, #0, 10
 104:	ab030000 	blge	c010c <main+0xc010c>
 108:	000000dc 	ldrdeq	r0, [r0], -ip
 10c:	0001bb05 	andeq	fp, r1, r5, lsl #22
 110:	74af0300 	strtvc	r0, [pc], #768	; 118 <.debug_info+0x118>
 114:	05000000 	streq	r0, [r0, #-0]
 118:	00000460 	andeq	r0, r0, r0, ror #8
 11c:	00481605 	subeq	r1, r8, r5, lsl #12
 120:	cc0f0000 	stcgt	0, cr0, [pc], {-0}
 124:	18000001 	stmdane	r0, {r0}
 128:	01812f05 	orreq	r2, r1, r5, lsl #30
 12c:	3f0e0000 	svccc	0x000e0000
 130:	05000004 	streq	r0, [r0, #-4]
 134:	00018131 	andeq	r8, r1, r1, lsr r1
 138:	00230200 	eoreq	r0, r3, r0, lsl #4
 13c:	006b5f10 	rsbeq	r5, fp, r0, lsl pc
 140:	005d3205 	subseq	r3, sp, r5, lsl #4
 144:	23020000 	movwcs	r0, #8192	; 0x2000
 148:	03de0e04 	bicseq	r0, lr, #4, 28	; 0x40
 14c:	32050000 	andcc	r0, r5, #0
 150:	0000005d 	andeq	r0, r0, sp, asr r0
 154:	0e082302 	cdpeq	3, 0, cr2, cr8, cr2, {0}
 158:	000001b5 			; <UNDEFINED> instruction: 0x000001b5
 15c:	005d3205 	subseq	r3, sp, r5, lsl #4
 160:	23020000 	movwcs	r0, #8192	; 0x2000
 164:	04950e0c 	ldreq	r0, [r5], #3596	; 0xe0c
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
 198:	000001f3 	strdeq	r0, [r0], -r3
 19c:	22370524 	eorscs	r0, r7, #36, 10	; 0x9000000
 1a0:	0e000002 	cdpeq	0, 0, cr0, cr0, cr2, {0}
 1a4:	000000f5 	strdeq	r0, [r0], -r5
 1a8:	005d3905 	subseq	r3, sp, r5, lsl #18
 1ac:	23020000 	movwcs	r0, #8192	; 0x2000
 1b0:	04300e00 	ldrteq	r0, [r0], #-3584	; 0xfffff200
 1b4:	3a050000 	bcc	1401bc <main+0x1401bc>
 1b8:	0000005d 	andeq	r0, r0, sp, asr r0
 1bc:	0e042302 	cdpeq	3, 0, cr2, cr4, cr2, {0}
 1c0:	00000124 	andeq	r0, r0, r4, lsr #2
 1c4:	005d3b05 	subseq	r3, sp, r5, lsl #22
 1c8:	23020000 	movwcs	r0, #8192	; 0x2000
 1cc:	05130e08 	ldreq	r0, [r3, #-3592]	; 0xfffff1f8
 1d0:	3c050000 	stccc	0, cr0, [r5], {-0}
 1d4:	0000005d 	andeq	r0, r0, sp, asr r0
 1d8:	0e0c2302 	cdpeq	3, 0, cr2, cr12, cr2, {0}
 1dc:	000002e4 	andeq	r0, r0, r4, ror #5
 1e0:	005d3d05 	subseq	r3, sp, r5, lsl #26
 1e4:	23020000 	movwcs	r0, #8192	; 0x2000
 1e8:	02c70e10 	sbceq	r0, r7, #16, 28	; 0x100
 1ec:	3e050000 	cdpcc	0, 0, cr0, cr5, cr0, {0}
 1f0:	0000005d 	andeq	r0, r0, sp, asr r0
 1f4:	0e142302 	cdpeq	3, 1, cr2, cr4, cr2, {0}
 1f8:	0000049a 	muleq	r0, sl, r4
 1fc:	005d3f05 	subseq	r3, sp, r5, lsl #30
 200:	23020000 	movwcs	r0, #8192	; 0x2000
 204:	034f0e18 	movteq	r0, #65048	; 0xfe18
 208:	40050000 	andmi	r0, r5, r0
 20c:	0000005d 	andeq	r0, r0, sp, asr r0
 210:	0e1c2302 	cdpeq	3, 1, cr2, cr12, cr2, {0}
 214:	000004d5 	ldrdeq	r0, [r0], -r5
 218:	005d4105 	subseq	r4, sp, r5, lsl #2
 21c:	23020000 	movwcs	r0, #8192	; 0x2000
 220:	33110020 	tstcc	r1, #32
 224:	08000001 	stmdaeq	r0, {r0}
 228:	6b4a0501 	blvs	1281634 <main+0x1281634>
 22c:	0e000002 	cdpeq	0, 0, cr0, cr0, cr2, {0}
 230:	000001a8 	andeq	r0, r0, r8, lsr #3
 234:	026b4b05 	rsbeq	r4, fp, #5120	; 0x1400
 238:	23020000 	movwcs	r0, #8192	; 0x2000
 23c:	00000e00 	andeq	r0, r0, r0, lsl #28
 240:	4c050000 	stcmi	0, cr0, [r5], {-0}
 244:	0000026b 	andeq	r0, r0, fp, ror #4
 248:	01802303 	orreq	r2, r0, r3, lsl #6
 24c:	0004520e 	andeq	r5, r4, lr, lsl #4
 250:	174e0500 	strbne	r0, [lr, -r0, lsl #10]
 254:	03000001 	movweq	r0, #1
 258:	0e028023 	cdpeq	0, 0, cr8, cr2, cr3, {1}
 25c:	00000161 	andeq	r0, r0, r1, ror #2
 260:	01175105 	tsteq	r7, r5, lsl #2
 264:	23030000 	movwcs	r0, #12288	; 0x3000
 268:	0b000284 	bleq	c80 <main+0xc80>
 26c:	00000072 	andeq	r0, r0, r2, ror r0
 270:	0000027b 	andeq	r0, r0, fp, ror r2
 274:	0000640c 	andeq	r6, r0, ip, lsl #8
 278:	11001f00 	tstne	r0, r0, lsl #30
 27c:	000002ed 	andeq	r0, r0, sp, ror #5
 280:	5d050190 	stfpls	f0, [r5, #-576]	; 0xfffffdc0
 284:	000002c2 	andeq	r0, r0, r2, asr #5
 288:	00043f0e 	andeq	r3, r4, lr, lsl #30
 28c:	c25e0500 	subsgt	r0, lr, #0, 10
 290:	02000002 	andeq	r0, r0, #2
 294:	ae0e0023 	cdpge	0, 0, cr0, cr14, cr3, {1}
 298:	05000003 	streq	r0, [r0, #-3]
 29c:	00005d5f 	andeq	r5, r0, pc, asr sp
 2a0:	04230200 	strteq	r0, [r3], #-512	; 0xfffffe00
 2a4:	0001b00e 	andeq	fp, r1, lr
 2a8:	c8610500 	stmdagt	r1!, {r8, sl}^
 2ac:	02000002 	andeq	r0, r0, #2
 2b0:	330e0823 	movwcc	r0, #59427	; 0xe823
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
 2e0:	0003590f 	andeq	r5, r3, pc, lsl #18
 2e4:	75050800 	strvc	r0, [r5, #-2048]	; 0xfffff800
 2e8:	00000309 	andeq	r0, r0, r9, lsl #6
 2ec:	00011e0e 	andeq	r1, r1, lr, lsl #28
 2f0:	09760500 	ldmdbeq	r6!, {r8, sl}^
 2f4:	02000003 	andeq	r0, r0, #3
 2f8:	0c0e0023 	stceq	0, cr0, [lr], {35}	; 0x23
 2fc:	05000000 	streq	r0, [r0, #-0]
 300:	00005d77 	andeq	r5, r0, r7, ror sp
 304:	04230200 	strteq	r0, [r3], #-512	; 0xfffffe00
 308:	2c040600 	stccs	6, cr0, [r4], {-0}
 30c:	0f000000 	svceq	0x00000000
 310:	00000380 	andeq	r0, r0, r0, lsl #7
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
 340:	5a0e0823 	bpl	382094 <main+0x382094>
 344:	05000001 	streq	r0, [r0, #-1]
 348:	000033b9 			; <UNDEFINED> instruction: 0x000033b9
 34c:	0c230200 	sfmeq	f0, 4, [r3], #-0
 350:	00022e0e 	andeq	r2, r2, lr, lsl #28
 354:	33ba0500 			; <UNDEFINED> instruction: 0x33ba0500
 358:	02000000 	andeq	r0, r0, #0
 35c:	5f100e23 	svcpl	0x00100e23
 360:	05006662 	streq	r6, [r0, #-1634]	; 0xfffff99e
 364:	0002e0bb 	strheq	lr, [r2], -fp
 368:	10230200 	eorne	r0, r3, r0, lsl #4
 36c:	0000d20e 	andeq	sp, r0, lr, lsl #4
 370:	5dbc0500 	cfldr32pl	mvfx0, [ip]
 374:	02000000 	andeq	r0, r0, #0
 378:	410e1823 	tstmi	lr, r3, lsr #16
 37c:	05000001 	streq	r0, [r0, #-1]
 380:	000072c3 	andeq	r7, r0, r3, asr #5
 384:	1c230200 	sfmne	f0, 4, [r3], #-0
 388:	0001e30e 	andeq	lr, r1, lr, lsl #6
 38c:	03c50500 	biceq	r0, r5, #0, 10
 390:	02000006 	andeq	r0, r0, #6
 394:	c00e2023 	andgt	r2, lr, r3, lsr #32
 398:	05000002 	streq	r0, [r0, #-2]
 39c:	00062ec7 	andeq	r2, r6, r7, asr #29
 3a0:	24230200 	strtcs	r0, [r3], #-512	; 0xfffffe00
 3a4:	00040a0e 	andeq	r0, r4, lr, lsl #20
 3a8:	53ca0500 	bicpl	r0, sl, #0, 10
 3ac:	02000006 	andeq	r0, r0, #6
 3b0:	ef0e2823 	svc	0x000e2823
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
 3e8:	180e3c23 	stmdane	lr, {r0, r1, r5, sl, fp, ip, sp}
 3ec:	05000001 	streq	r0, [r0, #-1]
 3f0:	000674d3 	ldrdeq	r7, [r6], -r3
 3f4:	40230200 	eormi	r0, r3, r0, lsl #4
 3f8:	0004c70e 	andeq	ip, r4, lr, lsl #14
 3fc:	84d40500 	ldrbhi	r0, [r4], #1280	; 0x500
 400:	02000006 	andeq	r0, r0, #6
 404:	5f104323 	svcpl	0x00104323
 408:	0500626c 	streq	r6, [r0, #-620]	; 0xfffffd94
 40c:	0002e0d7 	ldrdeq	lr, [r2], -r7
 410:	44230200 	strtmi	r0, [r3], #-512	; 0xfffffe00
 414:	0001700e 	andeq	r7, r1, lr
 418:	5dda0500 	cfldr64pl	mvdx0, [sl]
 41c:	02000000 	andeq	r0, r0, #0
 420:	810e4c23 	tsthi	lr, r3, lsr #24
 424:	05000001 	streq	r0, [r0, #-1]
 428:	00008bdb 	ldrdeq	r8, [r0], -fp
 42c:	50230200 	eorpl	r0, r3, r0, lsl #4
 430:	0000950e 	andeq	r9, r0, lr, lsl #10
 434:	88de0500 	ldmhi	lr, {r8, sl}^
 438:	02000004 	andeq	r0, r0, #4
 43c:	940e5423 	strls	r5, [lr], #-1059	; 0xfffffbdd
 440:	05000002 	streq	r0, [r0, #-2]
 444:	00010ce2 	andeq	r0, r1, r2, ror #25
 448:	58230200 	stmdapl	r3!, {r9}
 44c:	0003880e 	andeq	r8, r3, lr, lsl #16
 450:	01e40500 	mvneq	r0, r0, lsl #10
 454:	02000001 	andeq	r0, r0, #1
 458:	600e5c23 	andvs	r5, lr, r3, lsr #24
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
 494:	000003e6 	andeq	r0, r0, r6, ror #7
 498:	60050428 	andvs	r0, r5, r8, lsr #8
 49c:	0005f102 	andeq	pc, r5, r2, lsl #2
 4a0:	04241700 	strteq	r1, [r4], #-1792	; 0xfffff900
 4a4:	62050000 	andvs	r0, r5, #0
 4a8:	00005d02 	andeq	r5, r0, r2, lsl #26
 4ac:	00230200 	eoreq	r0, r3, r0, lsl #4
 4b0:	00016917 	andeq	r6, r1, r7, lsl r9
 4b4:	02670500 	rsbeq	r0, r7, #0, 10
 4b8:	000006e1 	andeq	r0, r0, r1, ror #13
 4bc:	17042302 	strne	r2, [r4, -r2, lsl #6]
 4c0:	0000020c 	andeq	r0, r0, ip, lsl #4
 4c4:	e1026705 	tst	r2, r5, lsl #14
 4c8:	02000006 	andeq	r0, r0, #6
 4cc:	c4170823 	ldrgt	r0, [r7], #-2083	; 0xfffff7dd
 4d0:	05000001 	streq	r0, [r0, #-1]
 4d4:	06e10267 	strbteq	r0, [r1], r7, ror #4
 4d8:	23020000 	movwcs	r0, #8192	; 0x2000
 4dc:	03a9170c 			; <UNDEFINED> instruction: 0x03a9170c
 4e0:	69050000 	stmdbvs	r5, {}	; <UNPREDICTABLE>
 4e4:	00005d02 	andeq	r5, r0, r2, lsl #26
 4e8:	10230200 	eorne	r0, r3, r0, lsl #4
 4ec:	00001a17 	andeq	r1, r0, r7, lsl sl
 4f0:	026a0500 	rsbeq	r0, sl, #0, 10
 4f4:	000008fc 	strdeq	r0, [r0], -ip
 4f8:	17142302 	ldrne	r2, [r4, -r2, lsl #6]
 4fc:	000003c5 	andeq	r0, r0, r5, asr #7
 500:	5d026d05 	stcpl	13, cr6, [r2, #-20]	; 0xffffffec
 504:	02000000 	andeq	r0, r0, #0
 508:	b3173023 	tstlt	r7, #35	; 0x23
 50c:	05000003 	streq	r0, [r0, #-3]
 510:	0912026e 	ldmdbeq	r2, {r1, r2, r3, r5, r6, r9}
 514:	23020000 	movwcs	r0, #8192	; 0x2000
 518:	02f51734 	rscseq	r1, r5, #52, 14	; 0xd00000
 51c:	70050000 	andvc	r0, r5, r0
 520:	00005d02 	andeq	r5, r0, r2, lsl #26
 524:	38230200 	stmdacc	r3!, {r9}
 528:	0003bb17 	andeq	fp, r3, r7, lsl fp
 52c:	02720500 	rsbseq	r0, r2, #0, 10
 530:	00000924 	andeq	r0, r0, r4, lsr #18
 534:	173c2302 	ldrne	r2, [ip, -r2, lsl #6]!
 538:	00000270 	andeq	r0, r0, r0, ror r2
 53c:	81027505 	tsthi	r2, r5, lsl #10
 540:	02000001 	andeq	r0, r0, #1
 544:	e9174023 	ldmdb	r7, {r0, r1, r5, lr}
 548:	05000001 	streq	r0, [r0, #-1]
 54c:	005d0276 	subseq	r0, sp, r6, ror r2
 550:	23020000 	movwcs	r0, #8192	; 0x2000
 554:	05091744 	streq	r1, [r9, #-1860]	; 0xfffff8bc
 558:	77050000 	strvc	r0, [r5, -r0]
 55c:	00018102 	andeq	r8, r1, r2, lsl #2
 560:	48230200 	stmdami	r3!, {r9}
 564:	00030717 	andeq	r0, r3, r7, lsl r7
 568:	02780500 	rsbseq	r0, r8, #0, 10
 56c:	0000092a 	andeq	r0, r0, sl, lsr #18
 570:	174c2302 	strbne	r2, [ip, -r2, lsl #6]
 574:	00000214 	andeq	r0, r0, r4, lsl r2
 578:	5d027b05 	vstrpl	d7, [r2, #-20]	; 0xffffffec
 57c:	02000000 	andeq	r0, r0, #0
 580:	79175023 	ldmdbvc	r7, {r0, r1, r5, ip, lr}
 584:	05000001 	streq	r0, [r0, #-1]
 588:	05f1027c 	ldrbeq	r0, [r1, #636]!	; 0x27c
 58c:	23020000 	movwcs	r0, #8192	; 0x2000
 590:	03371754 	teqeq	r7, #84, 14	; 0x1500000
 594:	9f050000 	svcls	0x00050000
 598:	0008da02 	andeq	sp, r8, r2, lsl #20
 59c:	58230200 	stmdapl	r3!, {r9}
 5a0:	0002ed17 	andeq	lr, r2, r7, lsl sp
 5a4:	02a30500 	adceq	r0, r3, #0, 10
 5a8:	000002c2 	andeq	r0, r0, r2, asr #5
 5ac:	02c82303 	sbceq	r2, r8, #201326592	; 0xc000000
 5b0:	00024e17 	andeq	r4, r2, r7, lsl lr
 5b4:	02a40500 	adceq	r0, r4, #0, 10
 5b8:	0000027b 	andeq	r0, r0, fp, ror r2
 5bc:	02cc2303 	sbceq	r2, ip, #201326592	; 0xc000000
 5c0:	0004bd17 	andeq	fp, r4, r7, lsl sp
 5c4:	02a80500 	adceq	r0, r8, #0, 10
 5c8:	0000093c 	andeq	r0, r0, ip, lsr r9
 5cc:	05dc2303 	ldrbeq	r2, [ip, #771]	; 0x303
 5d0:	00014917 	andeq	r4, r1, r7, lsl r9
 5d4:	02ad0500 	adceq	r0, sp, #0, 10
 5d8:	000006a0 	andeq	r0, r0, r0, lsr #13
 5dc:	05e02303 	strbeq	r2, [r0, #771]!	; 0x303
 5e0:	00012e17 	andeq	r2, r1, r7, lsl lr
 5e4:	02af0500 	adceq	r0, pc, #0, 10
 5e8:	00000948 	andeq	r0, r0, r8, asr #18
 5ec:	05ec2303 	strbeq	r2, [ip, #771]!	; 0x303
 5f0:	f7040600 			; <UNDEFINED> instruction: 0xf7040600
 5f4:	02000005 	andeq	r0, r0, #5
 5f8:	042b0801 	strteq	r0, [fp], #-2049	; 0xfffff7ff
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
 694:	00036e08 	andeq	r6, r3, r8, lsl #28
 698:	011f0500 	tsteq	pc, r0, lsl #10
 69c:	0000030f 	andeq	r0, r0, pc, lsl #6
 6a0:	0004a418 	andeq	sl, r4, r8, lsl r4
 6a4:	23050c00 	movwcs	r0, #23552	; 0x5c00
 6a8:	0006db01 	andeq	sp, r6, r1, lsl #22
 6ac:	043f1700 	ldrteq	r1, [pc], #-1792	; 8 <.debug_info+0x8>
 6b0:	25050000 	strcs	r0, [r5, #-0]
 6b4:	0006db01 	andeq	sp, r6, r1, lsl #22
 6b8:	00230200 	eoreq	r0, r3, r0, lsl #4
 6bc:	00023417 	andeq	r3, r2, r7, lsl r4
 6c0:	01260500 			; <UNDEFINED> instruction: 0x01260500
 6c4:	0000005d 	andeq	r0, r0, sp, asr r0
 6c8:	17042302 	strne	r2, [r4, -r2, lsl #6]
 6cc:	00000368 	andeq	r0, r0, r8, ror #6
 6d0:	e1012705 	tst	r1, r5, lsl #14
 6d4:	02000006 	andeq	r0, r0, #6
 6d8:	06000823 	streq	r0, [r0], -r3, lsr #16
 6dc:	0006a004 	andeq	sl, r6, r4
 6e0:	94040600 	strls	r0, [r4], #-1536	; 0xfffffa00
 6e4:	18000006 	stmdane	r0, {r1, r2}
 6e8:	00000012 	andeq	r0, r0, r2, lsl r0
 6ec:	013f050e 	teqeq	pc, lr, lsl #10
 6f0:	00000722 	andeq	r0, r0, r2, lsr #14
 6f4:	0003ed17 	andeq	lr, r3, r7, lsl sp
 6f8:	01400500 	cmpeq	r0, r0, lsl #10
 6fc:	00000722 	andeq	r0, r0, r2, lsr #14
 700:	17002302 	strne	r2, [r0, -r2, lsl #6]
 704:	00000439 	andeq	r0, r0, r9, lsr r4
 708:	22014105 	andcs	r4, r1, #1073741825	; 0x40000001
 70c:	02000007 	andeq	r0, r0, #7
 710:	5b170623 	blpl	5c1894 <main+0x5c1894>
 714:	05000004 	streq	r0, [r0, #-4]
 718:	003a0142 	eorseq	r0, sl, r2, asr #2
 71c:	23020000 	movwcs	r0, #8192	; 0x2000
 720:	3a0b000c 	bcc	2c0758 <main+0x2c0758>
 724:	32000000 	andcc	r0, r0, #0
 728:	0c000007 	stceq	0, cr0, [r0], {7}
 72c:	00000064 	andeq	r0, r0, r4, rrx
 730:	d0190002 	andsle	r0, r9, r2
 734:	62028005 	andvs	r8, r2, #5
 738:	17000008 	strne	r0, [r0, -r8]
 73c:	00000488 	andeq	r0, r0, r8, lsl #9
 740:	64028205 	strvs	r8, [r2], #-517	; 0xfffffdfb
 744:	02000000 	andeq	r0, r0, #0
 748:	45170023 	ldrmi	r0, [r7, #-35]	; 0xffffffdd
 74c:	05000004 	streq	r0, [r0, #-4]
 750:	05f10283 	ldrbeq	r0, [r1, #643]!	; 0x283
 754:	23020000 	movwcs	r0, #8192	; 0x2000
 758:	02631704 	rsbeq	r1, r3, #4, 14	; 0x100000
 75c:	84050000 	strhi	r0, [r5], #-0
 760:	00086202 	andeq	r6, r8, r2, lsl #4
 764:	08230200 	stmdaeq	r3!, {r9}
 768:	0004e017 	andeq	lr, r4, r7, lsl r0
 76c:	02850500 	addeq	r0, r5, #0, 10
 770:	00000197 	muleq	r0, r7, r1
 774:	17242302 	strne	r2, [r4, -r2, lsl #6]!
 778:	000001d4 	ldrdeq	r0, [r0], -r4
 77c:	5d028605 	stcpl	6, cr8, [r2, #-20]	; 0xffffffec
 780:	02000000 	andeq	r0, r0, #0
 784:	91174823 	tstls	r7, r3, lsr #16
 788:	05000003 	streq	r0, [r0, #-3]
 78c:	00560287 	subseq	r0, r6, r7, lsl #5
 790:	23020000 	movwcs	r0, #8192	; 0x2000
 794:	04f61750 	ldrbteq	r1, [r6], #1872	; 0x750
 798:	88050000 	stmdahi	r5, {}	; <UNPREDICTABLE>
 79c:	0006e702 	andeq	lr, r6, r2, lsl #14
 7a0:	58230200 	stmdapl	r3!, {r9}
 7a4:	00039c17 	andeq	r9, r3, r7, lsl ip
 7a8:	02890500 	addeq	r0, r9, #0, 10
 7ac:	00000101 	andeq	r0, r0, r1, lsl #2
 7b0:	17682302 	strbne	r2, [r8, -r2, lsl #6]!
 7b4:	000004fb 	strdeq	r0, [r0], -fp
 7b8:	01028a05 	tsteq	r2, r5, lsl #20
 7bc:	02000001 	andeq	r0, r0, #1
 7c0:	11177023 	tstne	r7, r3, lsr #32
 7c4:	05000003 	streq	r0, [r0, #-3]
 7c8:	0101028b 	smlabbeq	r1, fp, r2, r0
 7cc:	23020000 	movwcs	r0, #8192	; 0x2000
 7d0:	04b31778 	ldrteq	r1, [r3], #1912	; 0x778
 7d4:	8c050000 	stchi	0, cr0, [r5], {-0}
 7d8:	00087202 	andeq	r7, r8, r2, lsl #4
 7dc:	80230300 	eorhi	r0, r3, r0, lsl #6
 7e0:	02571701 	subseq	r1, r7, #262144	; 0x40000
 7e4:	8d050000 	stchi	0, cr0, [r5, #-0]
 7e8:	00088202 	andeq	r8, r8, r2, lsl #4
 7ec:	88230300 	stmdahi	r3!, {r8, r9}
 7f0:	04681701 	strbteq	r1, [r8], #-1793	; 0xfffff8ff
 7f4:	8e050000 	cdphi	0, 0, cr0, cr5, cr0, {0}
 7f8:	00005d02 	andeq	r5, r0, r2, lsl #26
 7fc:	a0230300 	eorge	r0, r3, r0, lsl #6
 800:	019a1701 	orrseq	r1, sl, r1, lsl #14
 804:	8f050000 	svchi	0x00050000
 808:	00010102 	andeq	r0, r1, r2, lsl #2
 80c:	a4230300 	strtge	r0, [r3], #-768	; 0xfffffd00
 810:	00e61701 	rsceq	r1, r6, r1, lsl #14
 814:	90050000 	andls	r0, r5, r0
 818:	00010102 	andeq	r0, r1, r2, lsl #2
 81c:	ac230300 	stcge	3, cr0, [r3], #-0
 820:	01891701 	orreq	r1, r9, r1, lsl #14
 824:	91050000 	mrsls	r0, (UNDEF: 5)
 828:	00010102 	andeq	r0, r1, r2, lsl #2
 82c:	b4230300 	strtlt	r0, [r3], #-768	; 0xfffffd00
 830:	009b1701 	addseq	r1, fp, r1, lsl #14
 834:	92050000 	andls	r0, r5, #0
 838:	00010102 	andeq	r0, r1, r2, lsl #2
 83c:	bc230300 	stclt	3, cr0, [r3], #-0
 840:	00aa1701 	adceq	r1, sl, r1, lsl #14
 844:	93050000 	movwls	r0, #20480	; 0x5000
 848:	00010102 	andeq	r0, r1, r2, lsl #2
 84c:	c4230300 	strtgt	r0, [r3], #-768	; 0xfffffd00
 850:	033c1701 	teqeq	ip, #262144	; 0x40000
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
 894:	ba029905 	blt	a6cb0 <main+0xa6cb0>
 898:	17000008 	strne	r0, [r0, -r8]
 89c:	000002dd 	ldrdeq	r0, [r0], -sp
 8a0:	ba029c05 	blt	a78bc <main+0xa78bc>
 8a4:	02000008 	andeq	r0, r0, #8
 8a8:	aa170023 	bge	5c0094 <main+0x5c0094>
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
 8e4:	000003e6 	andeq	r0, r0, r6, ror #7
 8e8:	32029505 	andcc	r9, r2, #20971520	; 0x1400000
 8ec:	1b000007 	blne	910 <.debug_info+0x910>
 8f0:	000004cd 	andeq	r0, r0, sp, asr #9
 8f4:	92029e05 	andls	r9, r2, #5, 28	; 0x50
 8f8:	00000008 	andeq	r0, r0, r8
 8fc:	0005f70b 	andeq	pc, r5, fp, lsl #14
 900:	00090c00 	andeq	r0, r9, r0, lsl #24
 904:	00640c00 	rsbeq	r0, r4, r0, lsl #24
 908:	00180000 	andseq	r0, r8, r0
 90c:	0000db07 	andeq	sp, r0, r7, lsl #22
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
 958:	0004101d 	andeq	r1, r4, sp, lsl r0
 95c:	032e0500 			; <UNDEFINED> instruction: 0x032e0500
 960:	00000488 	andeq	r0, r0, r8, lsl #9
 964:	751d0101 	ldrvc	r0, [sp, #-257]	; 0xfffffeff
 968:	05000004 	streq	r0, [r0, #-4]
 96c:	048e032f 	streq	r0, [lr], #815	; 0x32f
 970:	01010000 	mrseq	r0, (UNDEF: 1)
 974:	050e011e 	streq	r0, [lr, #-286]	; 0xfffffee2
 978:	0d010000 	stceq	0, cr0, [r1, #-0]
 97c:	0000005d 	andeq	r0, r0, sp, asr r0
 980:	00000000 	andeq	r0, r0, r0
 984:	00000034 	andeq	r0, r0, r4, lsr r0
 988:	00000000 	andeq	r0, r0, r0
 98c:	00901f01 	addseq	r1, r0, r1, lsl #30
 990:	0f010000 	svceq	0x00010000
 994:	0000005d 	andeq	r0, r0, sp, asr r0
 998:	1f709102 	svcne	0x00709102
 99c:	0000031f 	andeq	r0, r0, pc, lsl r3
 9a0:	005d1001 	subseq	r1, sp, r1
 9a4:	91020000 	mrsls	r0, (UNDEF: 2)
 9a8:	Address 0x00000000000009a8 is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10011201 	andne	r1, r1, r1, lsl #4
  10:	02000006 	andeq	r0, r0, #6
  14:	0b0b0024 	bleq	2c00ac <main+0x2c00ac>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	24030000 	strcs	r0, [r3], #-0
  20:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  24:	0008030b 	andeq	r0, r8, fp, lsl #6
  28:	000f0400 	andeq	r0, pc, r0, lsl #8
  2c:	00000b0b 	andeq	r0, r0, fp, lsl #22
  30:	03001605 	movweq	r1, #1541	; 0x605
  34:	3b0b3a0e 	blcc	2ce874 <main+0x2ce874>
  38:	0013490b 	andseq	r4, r3, fp, lsl #18
  3c:	000f0600 	andeq	r0, pc, r0, lsl #12
  40:	13490b0b 	movtne	r0, #39691	; 0x9b0b
  44:	13070000 	movwne	r0, #28672	; 0x7000
  48:	3c0e0300 	stccc	3, cr0, [lr], {-0}
  4c:	0800000c 	stmdaeq	r0, {r2, r3}
  50:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
  54:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
  58:	00001349 	andeq	r1, r0, r9, asr #6
  5c:	0b011709 	bleq	45c88 <main+0x45c88>
  60:	3b0b3a0b 	blcc	2ce894 <main+0x2ce894>
  64:	0013010b 	andseq	r0, r3, fp, lsl #2
  68:	000d0a00 	andeq	r0, sp, r0, lsl #20
  6c:	0b3a0e03 	bleq	e83880 <main+0xe83880>
  70:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  74:	010b0000 	mrseq	r0, (UNDEF: 11)
  78:	01134901 	tsteq	r3, r1, lsl #18
  7c:	0c000013 	stceq	0, cr0, [r0], {19}
  80:	13490021 	movtne	r0, #36897	; 0x9021
  84:	00000b2f 	andeq	r0, r0, pc, lsr #22
  88:	0b01130d 	bleq	44cc4 <main+0x44cc4>
  8c:	3b0b3a0b 	blcc	2ce8c0 <main+0x2ce8c0>
  90:	0013010b 	andseq	r0, r3, fp, lsl #2
  94:	000d0e00 	andeq	r0, sp, r0, lsl #28
  98:	0b3a0e03 	bleq	e838ac <main+0xe838ac>
  9c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  a0:	00000a38 	andeq	r0, r0, r8, lsr sl
  a4:	0301130f 	movweq	r1, #4879	; 0x130f
  a8:	3a0b0b0e 	bcc	2c2ce8 <main+0x2c2ce8>
  ac:	010b3b0b 	tsteq	fp, fp, lsl #22
  b0:	10000013 	andne	r0, r0, r3, lsl r0
  b4:	0803000d 	stmdaeq	r3, {r0, r2, r3}
  b8:	0b3b0b3a 	bleq	ec2da8 <main+0xec2da8>
  bc:	0a381349 	beq	e04de8 <main+0xe04de8>
  c0:	13110000 	tstne	r1, #0
  c4:	0b0e0301 	bleq	380cd0 <main+0x380cd0>
  c8:	3b0b3a05 	blcc	2ce8e4 <main+0x2ce8e4>
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
 104:	3b0b3a0e 	blcc	2ce944 <main+0x2ce944>
 108:	38134905 	ldmdacc	r3, {r0, r2, r8, fp, lr}
 10c:	1800000a 	stmdane	r0, {r1, r3}
 110:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
 114:	0b3a0b0b 	bleq	e82d48 <main+0xe82d48>
 118:	1301053b 	movwne	r0, #5435	; 0x153b
 11c:	13190000 	tstne	r9, #0
 120:	3a0b0b01 	bcc	2c2d2c <main+0x2c2d2c>
 124:	01053b0b 	tsteq	r5, fp, lsl #22
 128:	1a000013 	bne	17c <.debug_abbrev+0x17c>
 12c:	0b0b0117 	bleq	2c0590 <main+0x2c0590>
 130:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 134:	00001301 	andeq	r1, r0, r1, lsl #6
 138:	03000d1b 	movweq	r0, #3355	; 0xd1b
 13c:	3b0b3a0e 	blcc	2ce97c <main+0x2ce97c>
 140:	00134905 	andseq	r4, r3, r5, lsl #18
 144:	01151c00 	tsteq	r5, r0, lsl #24
 148:	13010c27 	movwne	r0, #7207	; 0x1c27
 14c:	341d0000 	ldrcc	r0, [sp], #-0
 150:	3a0e0300 	bcc	380d58 <main+0x380d58>
 154:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 158:	3c0c3f13 	stccc	15, cr3, [ip], {19}
 15c:	1e00000c 	cdpne	0, 0, cr0, cr0, cr12, {0}
 160:	0c3f012e 	ldfeqs	f0, [pc], #-184	; b0 <.debug_abbrev+0xb0>
 164:	0b3a0e03 	bleq	e83978 <main+0xe83978>
 168:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 16c:	01120111 	tsteq	r2, r1, lsl r1
 170:	42960640 	addsmi	r0, r6, #64, 12	; 0x4000000
 174:	1f00000c 	svcne	0x0000000c
 178:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 17c:	0b3b0b3a 	bleq	ec2e6c <main+0xec2e6c>
 180:	0a021349 	beq	84eac <main+0x84eac>
 184:	Address 0x0000000000000184 is out of bounds.


Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000000 	andeq	r0, r0, r0
   4:	00000002 	andeq	r0, r0, r2
   8:	007d0002 	rsbseq	r0, sp, r2
   c:	00000002 	andeq	r0, r0, r2
  10:	00000004 	andeq	r0, r0, r4
  14:	087d0002 	ldmdaeq	sp!, {r1}^
  18:	00000004 	andeq	r0, r0, r4
  1c:	00000006 	andeq	r0, r0, r6
  20:	107d0002 	rsbsne	r0, sp, r2
  24:	00000006 	andeq	r0, r0, r6
  28:	00000034 	andeq	r0, r0, r4, lsr r0
  2c:	10770002 	rsbsne	r0, r7, r2
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
	...
  14:	00000034 	andeq	r0, r0, r4, lsr r0
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	000001da 	ldrdeq	r0, [r0], -sl
   4:	01ba0002 			; <UNDEFINED> instruction: 0x01ba0002
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
  48:	6d6f635c 	stclvs	3, cr6, [pc, #-368]!	; fffffee0 <main+0xfffffee0>
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
  74:	6c6f6f74 	stclvs	15, cr6, [pc], #-464	; fffffeac <main+0xfffffeac>
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
  cc:	3a630073 	bcc	18c02a0 <main+0x18c02a0>
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
 18c:	6e69616d 	powvsez	f6, f1, #5.0
 190:	0000632e 	andeq	r6, r0, lr, lsr #6
 194:	6f6c0000 	svcvs	0x006c0000
 198:	682e6b63 	stmdavs	lr!, {r0, r1, r5, r6, r8, r9, fp, sp, lr}
 19c:	00000100 	andeq	r0, r0, r0, lsl #2
 1a0:	7079745f 	rsbsvc	r7, r9, pc, asr r4
 1a4:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
 1a8:	00000100 	andeq	r0, r0, r0, lsl #2
 1ac:	64647473 	strbtvs	r7, [r4], #-1139	; 0xfffffb8d
 1b0:	682e6665 	stmdavs	lr!, {r0, r2, r5, r6, r9, sl, sp, lr}
 1b4:	00000200 	andeq	r0, r0, r0, lsl #4
 1b8:	6e656572 	mcrvs	5, 3, r6, cr5, cr2, {3}
 1bc:	00682e74 	rsbeq	r2, r8, r4, ror lr
 1c0:	00000001 	andeq	r0, r0, r1
 1c4:	00020500 	andeq	r0, r2, r0, lsl #10
 1c8:	03000000 	movweq	r0, #0
 1cc:	303d010c 	eorscc	r0, sp, ip, lsl #2
 1d0:	2f4b3d31 	svccs	0x004b3d31
 1d4:	7803323d 	stmdavc	r3, {r0, r2, r3, r4, r5, r9, ip, sp}
 1d8:	0001024a 	andeq	r0, r1, sl, asr #4
 1dc:	Address 0x00000000000001dc is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	6f73645f 	svcvs	0x0073645f
   4:	6e61685f 	mcrvs	8, 3, r6, cr1, cr15, {2}
   8:	00656c64 	rsbeq	r6, r5, r4, ror #24
   c:	7a69735f 	bvc	1a5cd90 <main+0x1a5cd90>
  10:	725f0065 	subsvc	r0, pc, #101	; 0x65
  14:	34646e61 	strbtcc	r6, [r4], #-3681	; 0xfffff19f
  18:	655f0038 	ldrbvs	r0, [pc, #-56]	; ffffffe8 <main+0xffffffe8>
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
  48:	652f4d52 	strvs	r4, [pc, #-3410]!	; fffff2fe <main+0xfffff2fe>
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
  90:	6c617650 	stclvs	6, cr7, [r1], #-320	; 0xfffffec0
  94:	61645f00 	cmnvs	r4, r0, lsl #30
  98:	5f006174 	svcpl	0x00006174
  9c:	74726377 	ldrbtvc	r6, [r2], #-887	; 0xfffffc89
  a0:	5f626d6f 	svcpl	0x00626d6f
  a4:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
  a8:	775f0065 	ldrbvc	r0, [pc, -r5, rrx]
  ac:	74727363 	ldrbtvc	r7, [r2], #-867	; 0xfffffc9d
  b0:	73626d6f 	cmnvc	r2, #7104	; 0x1bc0
  b4:	6174735f 	cmnvs	r4, pc, asr r3
  b8:	6c006574 	cfstr32vs	mvfx6, [r0], {116}	; 0x74
  bc:	20676e6f 	rsbcs	r6, r7, pc, ror #28
  c0:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  c4:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
  c8:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
  cc:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
  d0:	6c5f0074 	mrrcvs	0, 7, r0, pc, cr4	; <UNPREDICTABLE>
  d4:	69736662 	ldmdbvs	r3!, {r1, r5, r6, r9, sl, sp, lr}^
  d8:	5f00657a 	svcpl	0x0000657a
  dc:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
  e0:	5f656c61 	svcpl	0x00656c61
  e4:	6d5f0074 	ldclvs	0, cr0, [pc, #-464]	; ffffff1c <main+0xffffff1c>
  e8:	6f747262 	svcvs	0x00747262
  ec:	735f6377 	cmpvc	pc, #-603979775	; 0xdc000001
  f0:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
  f4:	745f5f00 	ldrbvc	r5, [pc], #-3840	; fc <.debug_str+0xfc>
  f8:	65735f6d 	ldrbvs	r5, [r3, #-3949]!	; 0xfffff093
  fc:	6f6c0063 	svcvs	0x006c0063
 100:	6c20676e 	stcvs	7, cr6, [r0], #-440	; 0xfffffe48
 104:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 108:	00746e69 	rsbseq	r6, r4, r9, ror #28
 10c:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
 110:	63206465 			; <UNDEFINED> instruction: 0x63206465
 114:	00726168 	rsbseq	r6, r2, r8, ror #2
 118:	7562755f 	strbvc	r7, [r2, #-1375]!	; 0xfffffaa1
 11c:	625f0066 	subsvs	r0, pc, #102	; 0x66
 120:	00657361 	rsbeq	r7, r5, r1, ror #6
 124:	6d745f5f 	ldclvs	15, cr5, [r4, #-380]!	; 0xfffffe84
 128:	756f685f 	strbvc	r6, [pc, #-2143]!	; fffff8d1 <main+0xfffff8d1>
 12c:	5f5f0072 	svcpl	0x005f0072
 130:	5f006673 	svcpl	0x00006673
 134:	655f6e6f 	ldrbvs	r6, [pc, #-3695]	; fffff2cd <main+0xfffff2cd>
 138:	5f746978 	svcpl	0x00746978
 13c:	73677261 	cmnvc	r7, #268435462	; 0x10000006
 140:	6f635f00 	svcvs	0x00635f00
 144:	65696b6f 	strbvs	r6, [r9, #-2927]!	; 0xfffff491
 148:	735f5f00 	cmpvc	pc, #0, 30
 14c:	65756c67 	ldrbvs	r6, [r5, #-3175]!	; 0xfffff399
 150:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
 154:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
 158:	665f0074 			; <UNDEFINED> instruction: 0x665f0074
 15c:	7367616c 	cmnvc	r7, #108, 2
 160:	73695f00 	cmnvc	r9, #0, 30
 164:	6178635f 	cmnvs	r8, pc, asr r3
 168:	74735f00 	ldrbtvc	r5, [r3], #-3840	; 0xfffff100
 16c:	006e6964 	rsbeq	r6, lr, r4, ror #18
 170:	6b6c625f 	blvs	1b18af4 <main+0x1b18af4>
 174:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
 178:	76635f00 	strbtvc	r5, [r3], -r0, lsl #30
 17c:	66756274 			; <UNDEFINED> instruction: 0x66756274
 180:	666f5f00 	strbtvs	r5, [pc], -r0, lsl #30
 184:	74657366 	strbtvc	r7, [r5], #-870	; 0xfffffc9a
 188:	626d5f00 	rsbvs	r5, sp, #0, 30
 18c:	6f747273 	svcvs	0x00747273
 190:	5f736377 	svcpl	0x00736377
 194:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
 198:	6d5f0065 	ldclvs	0, cr0, [pc, #-404]	; c <.debug_str+0xc>
 19c:	656c7262 	strbvs	r7, [ip, #-610]!	; 0xfffffd9e
 1a0:	74735f6e 	ldrbtvc	r5, [r3], #-3950	; 0xfffff092
 1a4:	00657461 	rsbeq	r7, r5, r1, ror #8
 1a8:	616e665f 	cmnvs	lr, pc, asr r6
 1ac:	00736772 	rsbseq	r6, r3, r2, ror r7
 1b0:	736e665f 	cmnvc	lr, #99614720	; 0x5f00000
 1b4:	69735f00 	ldmdbvs	r3!, {r8, r9, sl, fp, ip, lr}^
 1b8:	5f006e67 	svcpl	0x00006e67
 1bc:	636f6c66 	cmnvs	pc, #26112	; 0x6600
 1c0:	00745f6b 	rsbseq	r5, r4, fp, ror #30
 1c4:	6474735f 	ldrbtvs	r7, [r4], #-863	; 0xfffffca1
 1c8:	00727265 	rsbseq	r7, r2, r5, ror #4
 1cc:	6769425f 			; <UNDEFINED> instruction: 0x6769425f
 1d0:	00746e69 	rsbseq	r6, r4, r9, ror #28
 1d4:	6d61675f 	stclvs	7, cr6, [r1, #-380]!	; 0xfffffe84
 1d8:	735f616d 	cmpvc	pc, #1073741851	; 0x4000001b
 1dc:	676e6769 	strbvs	r6, [lr, -r9, ror #14]!
 1e0:	5f006d61 	svcpl	0x00006d61
 1e4:	64616572 	strbtvs	r6, [r1], #-1394	; 0xfffffa8e
 1e8:	65725f00 	ldrbvs	r5, [r2, #-3840]!	; 0xfffff100
 1ec:	746c7573 	strbtvc	r7, [ip], #-1395	; 0xfffffa8d
 1f0:	5f006b5f 	svcpl	0x00006b5f
 1f4:	006d745f 	rsbeq	r7, sp, pc, asr r4
 1f8:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
 1fc:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
 200:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 204:	775f5f00 	ldrbvc	r5, [pc, -r0, lsl #30]
 208:	00626863 	rsbeq	r6, r2, r3, ror #16
 20c:	6474735f 	ldrbtvs	r7, [r4], #-863	; 0xfffffca1
 210:	0074756f 	rsbseq	r7, r4, pc, ror #10
 214:	7476635f 	ldrbtvc	r6, [r6], #-863	; 0xfffffca1
 218:	006e656c 	rsbeq	r6, lr, ip, ror #10
 21c:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
 220:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
 224:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
 228:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
 22c:	665f0074 			; <UNDEFINED> instruction: 0x665f0074
 230:	00656c69 	rsbeq	r6, r5, r9, ror #24
 234:	6f696e5f 	svcvs	0x00696e5f
 238:	73007362 	movwvc	r7, #866	; 0x362
 23c:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
 240:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
 244:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
 248:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
 24c:	615f0074 	cmpvs	pc, r4, ror r0	; <UNPREDICTABLE>
 250:	69786574 	ldmdbvs	r8!, {r2, r4, r5, r6, r8, sl, sp, lr}^
 254:	5f003074 	svcpl	0x00003074
 258:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
 25c:	625f6c61 	subsvs	r6, pc, #24832	; 0x6100
 260:	5f006675 	svcpl	0x00006675
 264:	74637361 	strbtvc	r7, [r3], #-865	; 0xfffffc9f
 268:	5f656d69 	svcpl	0x00656d69
 26c:	00667562 	rsbeq	r7, r6, r2, ror #10
 270:	7365725f 	cmnvc	r5, #-268435451	; 0xf0000005
 274:	00746c75 	rsbseq	r6, r4, r5, ror ip
 278:	63775f5f 	cmnvs	r7, #380	; 0x17c
 27c:	4c5f0068 	mrrcmi	0, 6, r0, pc, cr8	; <UNPREDICTABLE>
 280:	5f4b434f 	svcpl	0x004b434f
 284:	616d0054 	qdsubvs	r0, r4, sp
 288:	632e6e69 			; <UNDEFINED> instruction: 0x632e6e69
 28c:	6e697700 	cdpvs	7, 6, cr7, cr9, cr0, {0}
 290:	00745f74 	rsbseq	r5, r4, r4, ror pc
 294:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
 298:	3a45006b 	bcc	114044c <main+0x114044c>
 29c:	6e65732f 	cdpvs	3, 6, cr7, cr5, cr15, {1}
 2a0:	2f726f69 	svccs	0x00726f69
 2a4:	6c706964 			; <UNDEFINED> instruction: 0x6c706964
 2a8:	2f616d6f 	svccs	0x00616d6f
 2ac:	6d726574 	cfldr64vs	mvdx6, [r2, #-464]!	; 0xfffffe30
 2b0:	72705f31 	rsbsvc	r5, r0, #49, 30	; 0xc4
 2b4:	63656a6f 	cmnvs	r5, #454656	; 0x6f000
 2b8:	72702f74 	rsbsvc	r2, r0, #116, 30	; 0x1d0
 2bc:	00316a6f 	eorseq	r6, r1, pc, ror #20
 2c0:	6972775f 	ldmdbvs	r2!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, sp, lr}^
 2c4:	5f006574 	svcpl	0x00006574
 2c8:	5f6d745f 	svcpl	0x006d745f
 2cc:	72616579 	rsbvc	r6, r1, #507510784	; 0x1e400000
 2d0:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
 2d4:	6f642067 	svcvs	0x00642067
 2d8:	656c6275 	strbvs	r6, [ip, #-629]!	; 0xfffffd8b
 2dc:	656e5f00 	strbvs	r5, [lr, #-3840]!	; 0xfffff100
 2e0:	00667478 	rsbeq	r7, r6, r8, ror r4
 2e4:	6d745f5f 	ldclvs	15, cr5, [r4, #-380]!	; 0xfffffe84
 2e8:	6e6f6d5f 	mcrvs	13, 3, r6, cr15, cr15, {2}
 2ec:	74615f00 	strbtvc	r5, [r1], #-3840	; 0xfffff100
 2f0:	74697865 	strbtvc	r7, [r9], #-2149	; 0xfffff79b
 2f4:	735f5f00 	cmpvc	pc, #0, 30
 2f8:	69646964 	stmdbvs	r4!, {r2, r5, r6, r8, fp, sp, lr}^
 2fc:	0074696e 	rsbseq	r6, r4, lr, ror #18
 300:	66666f5f 	uqsaxvs	r6, r6, pc	; <UNPREDICTABLE>
 304:	5f00745f 	svcpl	0x0000745f
 308:	65657266 	strbvs	r7, [r5, #-614]!	; 0xfffffd9a
 30c:	7473696c 	ldrbtvc	r6, [r3], #-2412	; 0xfffff694
 310:	63775f00 	cmnvs	r7, #0, 30
 314:	626d6f74 	rsbvs	r6, sp, #116, 30	; 0x1d0
 318:	6174735f 	cmnvs	r4, pc, asr r3
 31c:	74006574 	strvc	r6, [r0], #-1396	; 0xfffffa8c
 320:	73657268 	cmnvc	r5, #104, 4	; 0x80000006
 324:	646c6f68 	strbtvs	r6, [ip], #-3944	; 0xfffff098
 328:	736e7500 	cmnvc	lr, #0, 10
 32c:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
 330:	68632064 	stmdavs	r3!, {r2, r5, r6, sp}^
 334:	5f007261 	svcpl	0x00007261
 338:	0077656e 	rsbseq	r6, r7, lr, ror #10
 33c:	655f685f 	ldrbvs	r6, [pc, #-2143]	; fffffae5 <main+0xfffffae5>
 340:	6f6e7272 	svcvs	0x006e7272
 344:	6f687300 	svcvs	0x00687300
 348:	69207472 	stmdbvs	r0!, {r1, r4, r5, r6, sl, ip, sp, lr}
 34c:	5f00746e 	svcpl	0x0000746e
 350:	5f6d745f 	svcpl	0x006d745f
 354:	79616479 	stmdbvc	r1!, {r0, r3, r4, r5, r6, sl, sp, lr}^
 358:	735f5f00 	cmpvc	pc, #0, 30
 35c:	00667562 	rsbeq	r7, r6, r2, ror #10
 360:	616c665f 	cmnvs	ip, pc, asr r6
 364:	00327367 	eorseq	r7, r2, r7, ror #6
 368:	626f695f 	rsbvs	r6, pc, #1556480	; 0x17c000
 36c:	5f5f0073 	svcpl	0x005f0073
 370:	454c4946 	strbmi	r4, [ip, #-2374]	; 0xfffff6ba
 374:	626d5f00 	rsbvs	r5, sp, #0, 30
 378:	74617473 	strbtvc	r7, [r1], #-1139	; 0xfffffb8d
 37c:	00745f65 	rsbseq	r5, r4, r5, ror #30
 380:	46735f5f 	uhsaxmi	r5, r3, pc	; <UNPREDICTABLE>
 384:	00454c49 	subeq	r4, r5, r9, asr #24
 388:	73626d5f 	cmnvc	r2, #6080	; 0x17c0
 38c:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
 390:	61725f00 	cmnvs	r2, r0, lsl #30
 394:	6e5f646e 	cdpvs	4, 5, cr6, cr15, cr14, {3}
 398:	00747865 	rsbseq	r7, r4, r5, ror #16
 39c:	6c626d5f 	stclvs	13, cr6, [r2], #-380	; 0xfffffe84
 3a0:	735f6e65 	cmpvc	pc, #1616	; 0x650
 3a4:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
 3a8:	6e695f00 	cdpvs	15, 6, cr5, cr9, cr0, {0}
 3ac:	695f0063 	ldmdbvs	pc, {r0, r1, r5, r6}^	; <UNPREDICTABLE>
 3b0:	5f00646e 	svcpl	0x0000646e
 3b4:	61636f6c 	cmnvs	r3, ip, ror #30
 3b8:	5f00656c 	svcpl	0x0000656c
 3bc:	656c635f 	strbvs	r6, [ip, #-863]!	; 0xfffffca1
 3c0:	70756e61 	rsbsvc	r6, r5, r1, ror #28
 3c4:	6e755f00 	cdpvs	15, 7, cr5, cr5, cr0, {0}
 3c8:	63657073 	cmnvs	r5, #115	; 0x73
 3cc:	65696669 	strbvs	r6, [r9, #-1641]!	; 0xfffff997
 3d0:	6f6c5f64 	svcvs	0x006c5f64
 3d4:	656c6163 	strbvs	r6, [ip, #-355]!	; 0xfffffe9d
 3d8:	666e695f 			; <UNDEFINED> instruction: 0x666e695f
 3dc:	6d5f006f 	ldclvs	0, cr0, [pc, #-444]	; 228 <.debug_str+0x228>
 3e0:	64777861 	ldrbtvs	r7, [r7], #-2145	; 0xfffff79f
 3e4:	725f0073 	subsvc	r0, pc, #115	; 0x73
 3e8:	746e6565 	strbtvc	r6, [lr], #-1381	; 0xfffffa9b
 3ec:	65735f00 	ldrbvs	r5, [r3, #-3840]!	; 0xfffff100
 3f0:	5f006465 	svcpl	0x00006465
 3f4:	756f635f 	strbvc	r6, [pc, #-863]!	; 9d <.debug_str+0x9d>
 3f8:	5f00746e 	svcpl	0x0000746e
 3fc:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
 400:	5f5f006b 	svcpl	0x005f006b
 404:	756c6176 	strbvc	r6, [ip, #-374]!	; 0xfffffe8a
 408:	735f0065 	cmpvc	pc, #101	; 0x65
 40c:	006b6565 	rsbeq	r6, fp, r5, ror #10
 410:	706d695f 	rsbvc	r6, sp, pc, asr r9
 414:	5f657275 	svcpl	0x00657275
 418:	00727470 	rsbseq	r7, r2, r0, ror r4
 41c:	6f70665f 	svcvs	0x0070665f
 420:	00745f73 	rsbseq	r5, r4, r3, ror pc
 424:	7272655f 	rsbsvc	r6, r2, #398458880	; 0x17c00000
 428:	63006f6e 	movwvs	r6, #3950	; 0xf6e
 42c:	00726168 	rsbseq	r6, r2, r8, ror #2
 430:	6d745f5f 	ldclvs	15, cr5, [r4, #-380]!	; 0xfffffe84
 434:	6e696d5f 	mcrvs	13, 3, r6, cr9, cr15, {2}
 438:	756d5f00 	strbvc	r5, [sp, #-3840]!	; 0xfffff100
 43c:	5f00746c 	svcpl	0x0000746c
 440:	7478656e 	ldrbtvc	r6, [r8], #-1390	; 0xfffffa92
 444:	74735f00 	ldrbtvc	r5, [r3], #-3840	; 0xfffff100
 448:	6b6f7472 	blvs	1bdd618 <main+0x1bdd618>
 44c:	73616c5f 	cmnvc	r1, #24320	; 0x5f00
 450:	665f0074 			; <UNDEFINED> instruction: 0x665f0074
 454:	7079746e 	rsbsvc	r7, r9, lr, ror #8
 458:	5f007365 	svcpl	0x00007365
 45c:	00646461 	rsbeq	r6, r4, r1, ror #8
 460:	4c555f5f 	mrrcmi	15, 5, r5, r5, cr15	; <UNPREDICTABLE>
 464:	00676e6f 	rsbeq	r6, r7, pc, ror #28
 468:	7465675f 	strbtvc	r6, [r5], #-1887	; 0xfffff8a1
 46c:	65746164 	ldrbvs	r6, [r4, #-356]!	; 0xfffffe9c
 470:	7272655f 	rsbsvc	r6, r2, #398458880	; 0x17c00000
 474:	6c675f00 	stclvs	15, cr5, [r7], #-0
 478:	6c61626f 	sfmvs	f6, 2, [r1], #-444	; 0xfffffe44
 47c:	706d695f 	rsbvc	r6, sp, pc, asr r9
 480:	5f657275 	svcpl	0x00657275
 484:	00727470 	rsbseq	r7, r2, r0, ror r4
 488:	756e755f 	strbvc	r7, [lr, #-1375]!	; 0xfffffaa1
 48c:	5f646573 	svcpl	0x00646573
 490:	646e6172 	strbtvs	r6, [lr], #-370	; 0xfffffe8e
 494:	64775f00 	ldrbtvs	r5, [r7], #-3840	; 0xfffff100
 498:	5f5f0073 	svcpl	0x005f0073
 49c:	775f6d74 			; <UNDEFINED> instruction: 0x775f6d74
 4a0:	00796164 	rsbseq	r6, r9, r4, ror #2
 4a4:	756c675f 	strbvc	r6, [ip, #-1887]!	; 0xfffff8a1
 4a8:	6e5f0065 	cdpvs	0, 5, cr0, cr15, cr5, {3}
 4ac:	6c6c616d 	stfvse	f6, [ip], #-436	; 0xfffffe4c
 4b0:	5f00636f 	svcpl	0x0000636f
 4b4:	6134366c 	teqvs	r4, ip, ror #12
 4b8:	6675625f 			; <UNDEFINED> instruction: 0x6675625f
 4bc:	69735f00 	ldmdbvs	r3!, {r8, r9, sl, fp, ip, lr}^
 4c0:	75665f67 	strbvc	r5, [r6, #-3943]!	; 0xfffff099
 4c4:	5f00636e 	svcpl	0x0000636e
 4c8:	6675626e 	ldrbtvs	r6, [r5], -lr, ror #4
 4cc:	6e755f00 	cdpvs	15, 7, cr5, cr5, cr0, {0}
 4d0:	64657375 	strbtvs	r7, [r5], #-885	; 0xfffffc8b
 4d4:	745f5f00 	ldrbvc	r5, [pc], #-3840	; 4dc <.debug_str+0x4dc>
 4d8:	73695f6d 	cmnvc	r9, #436	; 0x1b4
 4dc:	00747364 	rsbseq	r7, r4, r4, ror #6
 4e0:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
 4e4:	69746c61 	ldmdbvs	r4!, {r0, r5, r6, sl, fp, sp, lr}^
 4e8:	625f656d 	subsvs	r6, pc, #457179136	; 0x1b400000
 4ec:	5f006675 	svcpl	0x00006675
 4f0:	736f6c63 	cmnvc	pc, #25344	; 0x6300
 4f4:	725f0065 	subsvc	r0, pc, #101	; 0x65
 4f8:	5f003834 	svcpl	0x00003834
 4fc:	6f74626d 	svcvs	0x0074626d
 500:	735f6377 	cmpvc	pc, #-603979775	; 0xdc000001
 504:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
 508:	35705f00 	ldrbcc	r5, [r0, #-3840]!	; 0xfffff100
 50c:	616d0073 	smcvs	53251	; 0xd003
 510:	5f006e69 	svcpl	0x00006e69
 514:	5f6d745f 	svcpl	0x006d745f
 518:	7961646d 	stmdbvc	r1!, {r0, r2, r3, r5, r6, sl, sp, lr}^
	...

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
  10:	0000001c 	andeq	r0, r0, ip, lsl r0
	...
  1c:	00000034 	andeq	r0, r0, r4, lsr r0
  20:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  24:	41018e02 	tstmi	r1, r2, lsl #28
  28:	0d41100e 	stcleq	0, cr1, [r1, #-56]	; 0xffffffc8
  2c:	00000007 	andeq	r0, r0, r7

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

