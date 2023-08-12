
c1m3.out:     file format elf32-littlearm


Disassembly of section .text:

00000000 <deregister_tm_clones>:
   0:	4b04      	ldr	r3, [pc, #16]	; (14 <_intvecs_base_address+0x14>)
   2:	4805      	ldr	r0, [pc, #20]	; (18 <_intvecs_base_address+0x18>)
   4:	1a1b      	subs	r3, r3, r0
   6:	2b06      	cmp	r3, #6
   8:	d902      	bls.n	10 <_intvecs_base_address+0x10>
   a:	4b04      	ldr	r3, [pc, #16]	; (1c <_intvecs_base_address+0x1c>)
   c:	b103      	cbz	r3, 10 <_intvecs_base_address+0x10>
   e:	4718      	bx	r3
  10:	4770      	bx	lr
  12:	bf00      	nop
  14:	20000877 	.word	0x20000877
  18:	20000874 	.word	0x20000874
  1c:	00000000 	.word	0x00000000

00000020 <register_tm_clones>:
  20:	4905      	ldr	r1, [pc, #20]	; (38 <register_tm_clones+0x18>)
  22:	4806      	ldr	r0, [pc, #24]	; (3c <register_tm_clones+0x1c>)
  24:	1a09      	subs	r1, r1, r0
  26:	1089      	asrs	r1, r1, #2
  28:	eb01 71d1 	add.w	r1, r1, r1, lsr #31
  2c:	1049      	asrs	r1, r1, #1
  2e:	d002      	beq.n	36 <register_tm_clones+0x16>
  30:	4b03      	ldr	r3, [pc, #12]	; (40 <register_tm_clones+0x20>)
  32:	b103      	cbz	r3, 36 <register_tm_clones+0x16>
  34:	4718      	bx	r3
  36:	4770      	bx	lr
  38:	20000874 	.word	0x20000874
  3c:	20000874 	.word	0x20000874
  40:	00000000 	.word	0x00000000

00000044 <__do_global_dtors_aux>:
  44:	b510      	push	{r4, lr}
  46:	4c06      	ldr	r4, [pc, #24]	; (60 <__do_global_dtors_aux+0x1c>)
  48:	7823      	ldrb	r3, [r4, #0]
  4a:	b943      	cbnz	r3, 5e <__do_global_dtors_aux+0x1a>
  4c:	f7ff ffd8 	bl	0 <deregister_tm_clones>
  50:	4b04      	ldr	r3, [pc, #16]	; (64 <__do_global_dtors_aux+0x20>)
  52:	b113      	cbz	r3, 5a <__do_global_dtors_aux+0x16>
  54:	4804      	ldr	r0, [pc, #16]	; (68 <__do_global_dtors_aux+0x24>)
  56:	f3af 8000 	nop.w
  5a:	2301      	movs	r3, #1
  5c:	7023      	strb	r3, [r4, #0]
  5e:	bd10      	pop	{r4, pc}
  60:	20000874 	.word	0x20000874
  64:	00000000 	.word	0x00000000
  68:	00000dc0 	.word	0x00000dc0

0000006c <frame_dummy>:
  6c:	b508      	push	{r3, lr}
  6e:	4b08      	ldr	r3, [pc, #32]	; (90 <frame_dummy+0x24>)
  70:	b11b      	cbz	r3, 7a <frame_dummy+0xe>
  72:	4908      	ldr	r1, [pc, #32]	; (94 <frame_dummy+0x28>)
  74:	4808      	ldr	r0, [pc, #32]	; (98 <frame_dummy+0x2c>)
  76:	f3af 8000 	nop.w
  7a:	4808      	ldr	r0, [pc, #32]	; (9c <frame_dummy+0x30>)
  7c:	6803      	ldr	r3, [r0, #0]
  7e:	b913      	cbnz	r3, 86 <frame_dummy+0x1a>
  80:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
  84:	e7cc      	b.n	20 <register_tm_clones>
  86:	4b06      	ldr	r3, [pc, #24]	; (a0 <frame_dummy+0x34>)
  88:	2b00      	cmp	r3, #0
  8a:	d0f9      	beq.n	80 <frame_dummy+0x14>
  8c:	4798      	blx	r3
  8e:	e7f7      	b.n	80 <frame_dummy+0x14>
  90:	00000000 	.word	0x00000000
  94:	20000878 	.word	0x20000878
  98:	00000dc0 	.word	0x00000dc0
  9c:	20000870 	.word	0x20000870
  a0:	00000000 	.word	0x00000000

000000a4 <_mainCRTStartup>:
  a4:	4b13      	ldr	r3, [pc, #76]	; (f4 <_mainCRTStartup+0x50>)
  a6:	2b00      	cmp	r3, #0
  a8:	bf08      	it	eq
  aa:	4b11      	ldreq	r3, [pc, #68]	; (f0 <_mainCRTStartup+0x4c>)
  ac:	469d      	mov	sp, r3
  ae:	f5a3 3a80 	sub.w	sl, r3, #65536	; 0x10000
  b2:	2100      	movs	r1, #0
  b4:	468b      	mov	fp, r1
  b6:	460f      	mov	r7, r1
  b8:	4811      	ldr	r0, [pc, #68]	; (100 <_mainCRTStartup+0x5c>)
  ba:	4a12      	ldr	r2, [pc, #72]	; (104 <_mainCRTStartup+0x60>)
  bc:	1a12      	subs	r2, r2, r0
  be:	f000 fb9d 	bl	7fc <memset>
  c2:	4b0d      	ldr	r3, [pc, #52]	; (f8 <_mainCRTStartup+0x54>)
  c4:	2b00      	cmp	r3, #0
  c6:	d000      	beq.n	ca <_mainCRTStartup+0x26>
  c8:	4798      	blx	r3
  ca:	4b0c      	ldr	r3, [pc, #48]	; (fc <_mainCRTStartup+0x58>)
  cc:	2b00      	cmp	r3, #0
  ce:	d000      	beq.n	d2 <_mainCRTStartup+0x2e>
  d0:	4798      	blx	r3
  d2:	2000      	movs	r0, #0
  d4:	2100      	movs	r1, #0
  d6:	0004      	movs	r4, r0
  d8:	000d      	movs	r5, r1
  da:	480b      	ldr	r0, [pc, #44]	; (108 <_mainCRTStartup+0x64>)
  dc:	f000 f87c 	bl	1d8 <atexit>
  e0:	f000 f8aa 	bl	238 <__libc_init_array>
  e4:	0020      	movs	r0, r4
  e6:	0029      	movs	r1, r5
  e8:	f000 f810 	bl	10c <main>
  ec:	f000 f87a 	bl	1e4 <exit>
  f0:	00080000 	.word	0x00080000
  f4:	200008d8 	.word	0x200008d8
	...
 100:	20000874 	.word	0x20000874
 104:	200008d8 	.word	0x200008d8
 108:	00000205 	.word	0x00000205

0000010c <main>:
 10c:	b590      	push	{r4, r7, lr}
 10e:	b083      	sub	sp, #12
 110:	af00      	add	r7, sp, #0
 112:	230c      	movs	r3, #12
 114:	603b      	str	r3, [r7, #0]
 116:	232d      	movs	r3, #45	; 0x2d
 118:	461a      	mov	r2, r3
 11a:	4613      	mov	r3, r2
 11c:	009b      	lsls	r3, r3, #2
 11e:	4413      	add	r3, r2
 120:	005b      	lsls	r3, r3, #1
 122:	4618      	mov	r0, r3
 124:	f000 f8b0 	bl	288 <malloc>
 128:	4603      	mov	r3, r0
 12a:	607b      	str	r3, [r7, #4]
 12c:	687b      	ldr	r3, [r7, #4]
 12e:	2b00      	cmp	r3, #0
 130:	d102      	bne.n	138 <main+0x2c>
 132:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 136:	e00e      	b.n	156 <main+0x4a>
 138:	2400      	movs	r4, #0
 13a:	e008      	b.n	14e <main+0x42>
 13c:	6878      	ldr	r0, [r7, #4]
 13e:	f000 f811 	bl	164 <func>
 142:	4602      	mov	r2, r0
 144:	4b06      	ldr	r3, [pc, #24]	; (160 <main+0x54>)
 146:	601a      	str	r2, [r3, #0]
 148:	683b      	ldr	r3, [r7, #0]
 14a:	3301      	adds	r3, #1
 14c:	603b      	str	r3, [r7, #0]
 14e:	232d      	movs	r3, #45	; 0x2d
 150:	429c      	cmp	r4, r3
 152:	dbf3      	blt.n	13c <main+0x30>
 154:	2300      	movs	r3, #0
 156:	4618      	mov	r0, r3
 158:	370c      	adds	r7, #12
 15a:	46bd      	mov	sp, r7
 15c:	bd90      	pop	{r4, r7, pc}
 15e:	bf00      	nop
 160:	20000890 	.word	0x20000890

00000164 <func>:
 164:	b480      	push	{r7}
 166:	b085      	sub	sp, #20
 168:	af00      	add	r7, sp, #0
 16a:	6078      	str	r0, [r7, #4]
 16c:	2300      	movs	r3, #0
 16e:	60fb      	str	r3, [r7, #12]
 170:	4b16      	ldr	r3, [pc, #88]	; (1cc <func+0x68>)
 172:	60bb      	str	r3, [r7, #8]
 174:	4b16      	ldr	r3, [pc, #88]	; (1d0 <func+0x6c>)
 176:	681b      	ldr	r3, [r3, #0]
 178:	3301      	adds	r3, #1
 17a:	4a15      	ldr	r2, [pc, #84]	; (1d0 <func+0x6c>)
 17c:	6013      	str	r3, [r2, #0]
 17e:	4b14      	ldr	r3, [pc, #80]	; (1d0 <func+0x6c>)
 180:	681b      	ldr	r3, [r3, #0]
 182:	009b      	lsls	r3, r3, #2
 184:	4a13      	ldr	r2, [pc, #76]	; (1d4 <func+0x70>)
 186:	4413      	add	r3, r2
 188:	68fa      	ldr	r2, [r7, #12]
 18a:	601a      	str	r2, [r3, #0]
 18c:	2300      	movs	r3, #0
 18e:	60fb      	str	r3, [r7, #12]
 190:	e011      	b.n	1b6 <func+0x52>
 192:	68ba      	ldr	r2, [r7, #8]
 194:	68fb      	ldr	r3, [r7, #12]
 196:	4413      	add	r3, r2
 198:	781b      	ldrb	r3, [r3, #0]
 19a:	b2db      	uxtb	r3, r3
 19c:	4619      	mov	r1, r3
 19e:	4a0d      	ldr	r2, [pc, #52]	; (1d4 <func+0x70>)
 1a0:	68fb      	ldr	r3, [r7, #12]
 1a2:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 1a6:	4b0a      	ldr	r3, [pc, #40]	; (1d0 <func+0x6c>)
 1a8:	681b      	ldr	r3, [r3, #0]
 1aa:	3301      	adds	r3, #1
 1ac:	4a08      	ldr	r2, [pc, #32]	; (1d0 <func+0x6c>)
 1ae:	6013      	str	r3, [r2, #0]
 1b0:	68fb      	ldr	r3, [r7, #12]
 1b2:	3301      	adds	r3, #1
 1b4:	60fb      	str	r3, [r7, #12]
 1b6:	68fb      	ldr	r3, [r7, #12]
 1b8:	2b05      	cmp	r3, #5
 1ba:	d9ea      	bls.n	192 <func+0x2e>
 1bc:	4b04      	ldr	r3, [pc, #16]	; (1d0 <func+0x6c>)
 1be:	681b      	ldr	r3, [r3, #0]
 1c0:	4618      	mov	r0, r3
 1c2:	3714      	adds	r7, #20
 1c4:	46bd      	mov	sp, r7
 1c6:	bc80      	pop	{r7}
 1c8:	4770      	bx	lr
 1ca:	bf00      	nop
 1cc:	00000da8 	.word	0x00000da8
 1d0:	20000898 	.word	0x20000898
 1d4:	20000008 	.word	0x20000008

000001d8 <atexit>:
 1d8:	2300      	movs	r3, #0
 1da:	4601      	mov	r1, r0
 1dc:	461a      	mov	r2, r3
 1de:	4618      	mov	r0, r3
 1e0:	f000 bb70 	b.w	8c4 <__register_exitproc>

000001e4 <exit>:
 1e4:	b508      	push	{r3, lr}
 1e6:	2100      	movs	r1, #0
 1e8:	4604      	mov	r4, r0
 1ea:	f000 fbbd 	bl	968 <__call_exitprocs>
 1ee:	4b04      	ldr	r3, [pc, #16]	; (200 <exit+0x1c>)
 1f0:	6818      	ldr	r0, [r3, #0]
 1f2:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
 1f4:	b103      	cbz	r3, 1f8 <exit+0x14>
 1f6:	4798      	blx	r3
 1f8:	4620      	mov	r0, r4
 1fa:	f000 fdb5 	bl	d68 <_exit>
 1fe:	bf00      	nop
 200:	00000db8 	.word	0x00000db8

00000204 <__libc_fini_array>:
 204:	b538      	push	{r3, r4, r5, lr}
 206:	4c0a      	ldr	r4, [pc, #40]	; (230 <__libc_fini_array+0x2c>)
 208:	4d0a      	ldr	r5, [pc, #40]	; (234 <__libc_fini_array+0x30>)
 20a:	1b64      	subs	r4, r4, r5
 20c:	10a4      	asrs	r4, r4, #2
 20e:	d00a      	beq.n	226 <__libc_fini_array+0x22>
 210:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 214:	3b01      	subs	r3, #1
 216:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 21a:	3c01      	subs	r4, #1
 21c:	f855 3904 	ldr.w	r3, [r5], #-4
 220:	4798      	blx	r3
 222:	2c00      	cmp	r4, #0
 224:	d1f9      	bne.n	21a <__libc_fini_array+0x16>
 226:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 22a:	f000 bdb3 	b.w	d94 <_fini>
 22e:	bf00      	nop
	...

00000238 <__libc_init_array>:
 238:	b570      	push	{r4, r5, r6, lr}
 23a:	4e0f      	ldr	r6, [pc, #60]	; (278 <__libc_init_array+0x40>)
 23c:	4d0f      	ldr	r5, [pc, #60]	; (27c <__libc_init_array+0x44>)
 23e:	1b76      	subs	r6, r6, r5
 240:	10b6      	asrs	r6, r6, #2
 242:	bf18      	it	ne
 244:	2400      	movne	r4, #0
 246:	d005      	beq.n	254 <__libc_init_array+0x1c>
 248:	3401      	adds	r4, #1
 24a:	f855 3b04 	ldr.w	r3, [r5], #4
 24e:	4798      	blx	r3
 250:	42a6      	cmp	r6, r4
 252:	d1f9      	bne.n	248 <__libc_init_array+0x10>
 254:	4e0a      	ldr	r6, [pc, #40]	; (280 <__libc_init_array+0x48>)
 256:	4d0b      	ldr	r5, [pc, #44]	; (284 <__libc_init_array+0x4c>)
 258:	1b76      	subs	r6, r6, r5
 25a:	f000 fd95 	bl	d88 <_init>
 25e:	10b6      	asrs	r6, r6, #2
 260:	bf18      	it	ne
 262:	2400      	movne	r4, #0
 264:	d006      	beq.n	274 <__libc_init_array+0x3c>
 266:	3401      	adds	r4, #1
 268:	f855 3b04 	ldr.w	r3, [r5], #4
 26c:	4798      	blx	r3
 26e:	42a6      	cmp	r6, r4
 270:	d1f9      	bne.n	266 <__libc_init_array+0x2e>
 272:	bd70      	pop	{r4, r5, r6, pc}
 274:	bd70      	pop	{r4, r5, r6, pc}
 276:	bf00      	nop
	...
 280:	00000d88 	.word	0x00000d88
 284:	00000d80 	.word	0x00000d80

00000288 <malloc>:
 288:	4b02      	ldr	r3, [pc, #8]	; (294 <malloc+0xc>)
 28a:	4601      	mov	r1, r0
 28c:	6818      	ldr	r0, [r3, #0]
 28e:	f000 b80b 	b.w	2a8 <_malloc_r>
 292:	bf00      	nop
 294:	20000030 	.word	0x20000030

00000298 <free>:
 298:	4b02      	ldr	r3, [pc, #8]	; (2a4 <free+0xc>)
 29a:	4601      	mov	r1, r0
 29c:	6818      	ldr	r0, [r3, #0]
 29e:	f000 bc1d 	b.w	adc <_free_r>
 2a2:	bf00      	nop
 2a4:	20000030 	.word	0x20000030

000002a8 <_malloc_r>:
 2a8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 2ac:	f101 060b 	add.w	r6, r1, #11
 2b0:	2e16      	cmp	r6, #22
 2b2:	b083      	sub	sp, #12
 2b4:	4605      	mov	r5, r0
 2b6:	f240 809e 	bls.w	3f6 <_malloc_r+0x14e>
 2ba:	f036 0607 	bics.w	r6, r6, #7
 2be:	f100 80bd 	bmi.w	43c <_malloc_r+0x194>
 2c2:	42b1      	cmp	r1, r6
 2c4:	f200 80ba 	bhi.w	43c <_malloc_r+0x194>
 2c8:	f000 fae6 	bl	898 <__malloc_lock>
 2cc:	f5b6 7ffc 	cmp.w	r6, #504	; 0x1f8
 2d0:	f0c0 828f 	bcc.w	7f2 <_malloc_r+0x54a>
 2d4:	0a73      	lsrs	r3, r6, #9
 2d6:	f000 80b8 	beq.w	44a <_malloc_r+0x1a2>
 2da:	2b04      	cmp	r3, #4
 2dc:	f200 817d 	bhi.w	5da <_malloc_r+0x332>
 2e0:	09b3      	lsrs	r3, r6, #6
 2e2:	f103 0039 	add.w	r0, r3, #57	; 0x39
 2e6:	f103 0e38 	add.w	lr, r3, #56	; 0x38
 2ea:	00c3      	lsls	r3, r0, #3
 2ec:	4fc1      	ldr	r7, [pc, #772]	; (5f4 <_malloc_r+0x34c>)
 2ee:	443b      	add	r3, r7
 2f0:	f1a3 0108 	sub.w	r1, r3, #8
 2f4:	685c      	ldr	r4, [r3, #4]
 2f6:	42a1      	cmp	r1, r4
 2f8:	d106      	bne.n	308 <_malloc_r+0x60>
 2fa:	e00c      	b.n	316 <_malloc_r+0x6e>
 2fc:	2a00      	cmp	r2, #0
 2fe:	f280 80aa 	bge.w	456 <_malloc_r+0x1ae>
 302:	68e4      	ldr	r4, [r4, #12]
 304:	42a1      	cmp	r1, r4
 306:	d006      	beq.n	316 <_malloc_r+0x6e>
 308:	6863      	ldr	r3, [r4, #4]
 30a:	f023 0303 	bic.w	r3, r3, #3
 30e:	1b9a      	subs	r2, r3, r6
 310:	2a0f      	cmp	r2, #15
 312:	ddf3      	ble.n	2fc <_malloc_r+0x54>
 314:	4670      	mov	r0, lr
 316:	693c      	ldr	r4, [r7, #16]
 318:	f8df e2dc 	ldr.w	lr, [pc, #732]	; 5f8 <_malloc_r+0x350>
 31c:	4574      	cmp	r4, lr
 31e:	f000 81a7 	beq.w	670 <_malloc_r+0x3c8>
 322:	6863      	ldr	r3, [r4, #4]
 324:	f023 0303 	bic.w	r3, r3, #3
 328:	1b9a      	subs	r2, r3, r6
 32a:	2a0f      	cmp	r2, #15
 32c:	f300 818c 	bgt.w	648 <_malloc_r+0x3a0>
 330:	2a00      	cmp	r2, #0
 332:	f8c7 e014 	str.w	lr, [r7, #20]
 336:	f8c7 e010 	str.w	lr, [r7, #16]
 33a:	f280 809d 	bge.w	478 <_malloc_r+0x1d0>
 33e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 342:	f080 815d 	bcs.w	600 <_malloc_r+0x358>
 346:	08db      	lsrs	r3, r3, #3
 348:	f103 0c01 	add.w	ip, r3, #1
 34c:	1099      	asrs	r1, r3, #2
 34e:	687a      	ldr	r2, [r7, #4]
 350:	f857 803c 	ldr.w	r8, [r7, ip, lsl #3]
 354:	f8c4 8008 	str.w	r8, [r4, #8]
 358:	2301      	movs	r3, #1
 35a:	408b      	lsls	r3, r1
 35c:	eb07 01cc 	add.w	r1, r7, ip, lsl #3
 360:	4313      	orrs	r3, r2
 362:	3908      	subs	r1, #8
 364:	60e1      	str	r1, [r4, #12]
 366:	607b      	str	r3, [r7, #4]
 368:	f847 403c 	str.w	r4, [r7, ip, lsl #3]
 36c:	f8c8 400c 	str.w	r4, [r8, #12]
 370:	1082      	asrs	r2, r0, #2
 372:	2401      	movs	r4, #1
 374:	4094      	lsls	r4, r2
 376:	429c      	cmp	r4, r3
 378:	f200 808b 	bhi.w	492 <_malloc_r+0x1ea>
 37c:	421c      	tst	r4, r3
 37e:	d106      	bne.n	38e <_malloc_r+0xe6>
 380:	f020 0003 	bic.w	r0, r0, #3
 384:	0064      	lsls	r4, r4, #1
 386:	421c      	tst	r4, r3
 388:	f100 0004 	add.w	r0, r0, #4
 38c:	d0fa      	beq.n	384 <_malloc_r+0xdc>
 38e:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 392:	46cc      	mov	ip, r9
 394:	4680      	mov	r8, r0
 396:	f8dc 300c 	ldr.w	r3, [ip, #12]
 39a:	459c      	cmp	ip, r3
 39c:	d107      	bne.n	3ae <_malloc_r+0x106>
 39e:	e169      	b.n	674 <_malloc_r+0x3cc>
 3a0:	2a00      	cmp	r2, #0
 3a2:	f280 8177 	bge.w	694 <_malloc_r+0x3ec>
 3a6:	68db      	ldr	r3, [r3, #12]
 3a8:	459c      	cmp	ip, r3
 3aa:	f000 8163 	beq.w	674 <_malloc_r+0x3cc>
 3ae:	6859      	ldr	r1, [r3, #4]
 3b0:	f021 0103 	bic.w	r1, r1, #3
 3b4:	1b8a      	subs	r2, r1, r6
 3b6:	2a0f      	cmp	r2, #15
 3b8:	ddf2      	ble.n	3a0 <_malloc_r+0xf8>
 3ba:	f8d3 c00c 	ldr.w	ip, [r3, #12]
 3be:	f8d3 8008 	ldr.w	r8, [r3, #8]
 3c2:	9301      	str	r3, [sp, #4]
 3c4:	199c      	adds	r4, r3, r6
 3c6:	4628      	mov	r0, r5
 3c8:	f046 0601 	orr.w	r6, r6, #1
 3cc:	f042 0501 	orr.w	r5, r2, #1
 3d0:	605e      	str	r6, [r3, #4]
 3d2:	f8c8 c00c 	str.w	ip, [r8, #12]
 3d6:	f8cc 8008 	str.w	r8, [ip, #8]
 3da:	617c      	str	r4, [r7, #20]
 3dc:	613c      	str	r4, [r7, #16]
 3de:	f8c4 e00c 	str.w	lr, [r4, #12]
 3e2:	f8c4 e008 	str.w	lr, [r4, #8]
 3e6:	6065      	str	r5, [r4, #4]
 3e8:	505a      	str	r2, [r3, r1]
 3ea:	f000 fa57 	bl	89c <__malloc_unlock>
 3ee:	9b01      	ldr	r3, [sp, #4]
 3f0:	f103 0408 	add.w	r4, r3, #8
 3f4:	e01e      	b.n	434 <_malloc_r+0x18c>
 3f6:	2910      	cmp	r1, #16
 3f8:	d820      	bhi.n	43c <_malloc_r+0x194>
 3fa:	f000 fa4d 	bl	898 <__malloc_lock>
 3fe:	2610      	movs	r6, #16
 400:	2318      	movs	r3, #24
 402:	2002      	movs	r0, #2
 404:	4f7b      	ldr	r7, [pc, #492]	; (5f4 <_malloc_r+0x34c>)
 406:	443b      	add	r3, r7
 408:	f1a3 0208 	sub.w	r2, r3, #8
 40c:	685c      	ldr	r4, [r3, #4]
 40e:	4294      	cmp	r4, r2
 410:	f000 8139 	beq.w	686 <_malloc_r+0x3de>
 414:	6863      	ldr	r3, [r4, #4]
 416:	68e1      	ldr	r1, [r4, #12]
 418:	68a6      	ldr	r6, [r4, #8]
 41a:	f023 0303 	bic.w	r3, r3, #3
 41e:	4423      	add	r3, r4
 420:	4628      	mov	r0, r5
 422:	685a      	ldr	r2, [r3, #4]
 424:	60f1      	str	r1, [r6, #12]
 426:	f042 0201 	orr.w	r2, r2, #1
 42a:	608e      	str	r6, [r1, #8]
 42c:	605a      	str	r2, [r3, #4]
 42e:	f000 fa35 	bl	89c <__malloc_unlock>
 432:	3408      	adds	r4, #8
 434:	4620      	mov	r0, r4
 436:	b003      	add	sp, #12
 438:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 43c:	2400      	movs	r4, #0
 43e:	230c      	movs	r3, #12
 440:	4620      	mov	r0, r4
 442:	602b      	str	r3, [r5, #0]
 444:	b003      	add	sp, #12
 446:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 44a:	2040      	movs	r0, #64	; 0x40
 44c:	f44f 7300 	mov.w	r3, #512	; 0x200
 450:	f04f 0e3f 	mov.w	lr, #63	; 0x3f
 454:	e74a      	b.n	2ec <_malloc_r+0x44>
 456:	4423      	add	r3, r4
 458:	68e1      	ldr	r1, [r4, #12]
 45a:	685a      	ldr	r2, [r3, #4]
 45c:	68a6      	ldr	r6, [r4, #8]
 45e:	f042 0201 	orr.w	r2, r2, #1
 462:	60f1      	str	r1, [r6, #12]
 464:	4628      	mov	r0, r5
 466:	608e      	str	r6, [r1, #8]
 468:	605a      	str	r2, [r3, #4]
 46a:	f000 fa17 	bl	89c <__malloc_unlock>
 46e:	3408      	adds	r4, #8
 470:	4620      	mov	r0, r4
 472:	b003      	add	sp, #12
 474:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 478:	4423      	add	r3, r4
 47a:	4628      	mov	r0, r5
 47c:	685a      	ldr	r2, [r3, #4]
 47e:	f042 0201 	orr.w	r2, r2, #1
 482:	605a      	str	r2, [r3, #4]
 484:	f000 fa0a 	bl	89c <__malloc_unlock>
 488:	3408      	adds	r4, #8
 48a:	4620      	mov	r0, r4
 48c:	b003      	add	sp, #12
 48e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 492:	68bc      	ldr	r4, [r7, #8]
 494:	6863      	ldr	r3, [r4, #4]
 496:	f023 0903 	bic.w	r9, r3, #3
 49a:	45b1      	cmp	r9, r6
 49c:	d304      	bcc.n	4a8 <_malloc_r+0x200>
 49e:	eba9 0306 	sub.w	r3, r9, r6
 4a2:	2b0f      	cmp	r3, #15
 4a4:	f300 8089 	bgt.w	5ba <_malloc_r+0x312>
 4a8:	f8df a150 	ldr.w	sl, [pc, #336]	; 5fc <_malloc_r+0x354>
 4ac:	f8d7 2408 	ldr.w	r2, [r7, #1032]	; 0x408
 4b0:	f8da 3000 	ldr.w	r3, [sl]
 4b4:	3201      	adds	r2, #1
 4b6:	eb04 0b09 	add.w	fp, r4, r9
 4ba:	eb06 0803 	add.w	r8, r6, r3
 4be:	f000 8150 	beq.w	762 <_malloc_r+0x4ba>
 4c2:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 4c6:	f108 080f 	add.w	r8, r8, #15
 4ca:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 4ce:	f028 080f 	bic.w	r8, r8, #15
 4d2:	4641      	mov	r1, r8
 4d4:	4628      	mov	r0, r5
 4d6:	f000 f9e3 	bl	8a0 <_sbrk_r>
 4da:	1c42      	adds	r2, r0, #1
 4dc:	4603      	mov	r3, r0
 4de:	f000 80f6 	beq.w	6ce <_malloc_r+0x426>
 4e2:	4583      	cmp	fp, r0
 4e4:	f200 80f1 	bhi.w	6ca <_malloc_r+0x422>
 4e8:	f8da 2004 	ldr.w	r2, [sl, #4]
 4ec:	4442      	add	r2, r8
 4ee:	f8ca 2004 	str.w	r2, [sl, #4]
 4f2:	f000 8147 	beq.w	784 <_malloc_r+0x4dc>
 4f6:	f8d7 1408 	ldr.w	r1, [r7, #1032]	; 0x408
 4fa:	3101      	adds	r1, #1
 4fc:	bf1b      	ittet	ne
 4fe:	eba3 0b0b 	subne.w	fp, r3, fp
 502:	445a      	addne	r2, fp
 504:	f8c7 3408 	streq.w	r3, [r7, #1032]	; 0x408
 508:	f8ca 2004 	strne.w	r2, [sl, #4]
 50c:	f013 0207 	ands.w	r2, r3, #7
 510:	f000 810d 	beq.w	72e <_malloc_r+0x486>
 514:	f1c2 0108 	rsb	r1, r2, #8
 518:	f5c2 5280 	rsb	r2, r2, #4096	; 0x1000
 51c:	440b      	add	r3, r1
 51e:	3208      	adds	r2, #8
 520:	4498      	add	r8, r3
 522:	f3c8 080b 	ubfx	r8, r8, #0, #12
 526:	eba2 0808 	sub.w	r8, r2, r8
 52a:	4641      	mov	r1, r8
 52c:	4628      	mov	r0, r5
 52e:	9301      	str	r3, [sp, #4]
 530:	f000 f9b6 	bl	8a0 <_sbrk_r>
 534:	1c43      	adds	r3, r0, #1
 536:	9b01      	ldr	r3, [sp, #4]
 538:	f000 813e 	beq.w	7b8 <_malloc_r+0x510>
 53c:	1ac1      	subs	r1, r0, r3
 53e:	4441      	add	r1, r8
 540:	f041 0101 	orr.w	r1, r1, #1
 544:	f8da 2004 	ldr.w	r2, [sl, #4]
 548:	60bb      	str	r3, [r7, #8]
 54a:	4442      	add	r2, r8
 54c:	42bc      	cmp	r4, r7
 54e:	6059      	str	r1, [r3, #4]
 550:	f8ca 2004 	str.w	r2, [sl, #4]
 554:	d016      	beq.n	584 <_malloc_r+0x2dc>
 556:	f1b9 0f0f 	cmp.w	r9, #15
 55a:	f240 80f4 	bls.w	746 <_malloc_r+0x49e>
 55e:	6861      	ldr	r1, [r4, #4]
 560:	f1a9 030c 	sub.w	r3, r9, #12
 564:	f023 0307 	bic.w	r3, r3, #7
 568:	18e0      	adds	r0, r4, r3
 56a:	f001 0101 	and.w	r1, r1, #1
 56e:	f04f 0e05 	mov.w	lr, #5
 572:	4319      	orrs	r1, r3
 574:	2b0f      	cmp	r3, #15
 576:	6061      	str	r1, [r4, #4]
 578:	f8c0 e004 	str.w	lr, [r0, #4]
 57c:	f8c0 e008 	str.w	lr, [r0, #8]
 580:	f200 8112 	bhi.w	7a8 <_malloc_r+0x500>
 584:	f8da 302c 	ldr.w	r3, [sl, #44]	; 0x2c
 588:	68bc      	ldr	r4, [r7, #8]
 58a:	429a      	cmp	r2, r3
 58c:	f8da 3030 	ldr.w	r3, [sl, #48]	; 0x30
 590:	bf88      	it	hi
 592:	f8ca 202c 	strhi.w	r2, [sl, #44]	; 0x2c
 596:	429a      	cmp	r2, r3
 598:	bf88      	it	hi
 59a:	f8ca 2030 	strhi.w	r2, [sl, #48]	; 0x30
 59e:	6862      	ldr	r2, [r4, #4]
 5a0:	f022 0203 	bic.w	r2, r2, #3
 5a4:	4296      	cmp	r6, r2
 5a6:	eba2 0306 	sub.w	r3, r2, r6
 5aa:	d801      	bhi.n	5b0 <_malloc_r+0x308>
 5ac:	2b0f      	cmp	r3, #15
 5ae:	dc04      	bgt.n	5ba <_malloc_r+0x312>
 5b0:	4628      	mov	r0, r5
 5b2:	f000 f973 	bl	89c <__malloc_unlock>
 5b6:	2400      	movs	r4, #0
 5b8:	e73c      	b.n	434 <_malloc_r+0x18c>
 5ba:	19a2      	adds	r2, r4, r6
 5bc:	f043 0301 	orr.w	r3, r3, #1
 5c0:	f046 0601 	orr.w	r6, r6, #1
 5c4:	6066      	str	r6, [r4, #4]
 5c6:	4628      	mov	r0, r5
 5c8:	60ba      	str	r2, [r7, #8]
 5ca:	6053      	str	r3, [r2, #4]
 5cc:	f000 f966 	bl	89c <__malloc_unlock>
 5d0:	3408      	adds	r4, #8
 5d2:	4620      	mov	r0, r4
 5d4:	b003      	add	sp, #12
 5d6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 5da:	2b14      	cmp	r3, #20
 5dc:	d969      	bls.n	6b2 <_malloc_r+0x40a>
 5de:	2b54      	cmp	r3, #84	; 0x54
 5e0:	f200 809b 	bhi.w	71a <_malloc_r+0x472>
 5e4:	0b33      	lsrs	r3, r6, #12
 5e6:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 5ea:	f103 0e6e 	add.w	lr, r3, #110	; 0x6e
 5ee:	00c3      	lsls	r3, r0, #3
 5f0:	e67c      	b.n	2ec <_malloc_r+0x44>
 5f2:	bf00      	nop
 5f4:	20000460 	.word	0x20000460
 5f8:	20000468 	.word	0x20000468
 5fc:	2000089c 	.word	0x2000089c
 600:	0a5a      	lsrs	r2, r3, #9
 602:	2a04      	cmp	r2, #4
 604:	d95b      	bls.n	6be <_malloc_r+0x416>
 606:	2a14      	cmp	r2, #20
 608:	f200 80ae 	bhi.w	768 <_malloc_r+0x4c0>
 60c:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 610:	00c9      	lsls	r1, r1, #3
 612:	325b      	adds	r2, #91	; 0x5b
 614:	eb07 0c01 	add.w	ip, r7, r1
 618:	5879      	ldr	r1, [r7, r1]
 61a:	f1ac 0c08 	sub.w	ip, ip, #8
 61e:	458c      	cmp	ip, r1
 620:	f000 8088 	beq.w	734 <_malloc_r+0x48c>
 624:	684a      	ldr	r2, [r1, #4]
 626:	f022 0203 	bic.w	r2, r2, #3
 62a:	4293      	cmp	r3, r2
 62c:	d273      	bcs.n	716 <_malloc_r+0x46e>
 62e:	6889      	ldr	r1, [r1, #8]
 630:	458c      	cmp	ip, r1
 632:	d1f7      	bne.n	624 <_malloc_r+0x37c>
 634:	f8dc 200c 	ldr.w	r2, [ip, #12]
 638:	687b      	ldr	r3, [r7, #4]
 63a:	60e2      	str	r2, [r4, #12]
 63c:	f8c4 c008 	str.w	ip, [r4, #8]
 640:	6094      	str	r4, [r2, #8]
 642:	f8cc 400c 	str.w	r4, [ip, #12]
 646:	e693      	b.n	370 <_malloc_r+0xc8>
 648:	19a1      	adds	r1, r4, r6
 64a:	f046 0c01 	orr.w	ip, r6, #1
 64e:	f042 0601 	orr.w	r6, r2, #1
 652:	f8c4 c004 	str.w	ip, [r4, #4]
 656:	4628      	mov	r0, r5
 658:	6179      	str	r1, [r7, #20]
 65a:	6139      	str	r1, [r7, #16]
 65c:	f8c1 e00c 	str.w	lr, [r1, #12]
 660:	f8c1 e008 	str.w	lr, [r1, #8]
 664:	604e      	str	r6, [r1, #4]
 666:	50e2      	str	r2, [r4, r3]
 668:	f000 f918 	bl	89c <__malloc_unlock>
 66c:	3408      	adds	r4, #8
 66e:	e6e1      	b.n	434 <_malloc_r+0x18c>
 670:	687b      	ldr	r3, [r7, #4]
 672:	e67d      	b.n	370 <_malloc_r+0xc8>
 674:	f108 0801 	add.w	r8, r8, #1
 678:	f018 0f03 	tst.w	r8, #3
 67c:	f10c 0c08 	add.w	ip, ip, #8
 680:	f47f ae89 	bne.w	396 <_malloc_r+0xee>
 684:	e02d      	b.n	6e2 <_malloc_r+0x43a>
 686:	68dc      	ldr	r4, [r3, #12]
 688:	42a3      	cmp	r3, r4
 68a:	bf08      	it	eq
 68c:	3002      	addeq	r0, #2
 68e:	f43f ae42 	beq.w	316 <_malloc_r+0x6e>
 692:	e6bf      	b.n	414 <_malloc_r+0x16c>
 694:	4419      	add	r1, r3
 696:	461c      	mov	r4, r3
 698:	684a      	ldr	r2, [r1, #4]
 69a:	68db      	ldr	r3, [r3, #12]
 69c:	f854 6f08 	ldr.w	r6, [r4, #8]!
 6a0:	f042 0201 	orr.w	r2, r2, #1
 6a4:	604a      	str	r2, [r1, #4]
 6a6:	4628      	mov	r0, r5
 6a8:	60f3      	str	r3, [r6, #12]
 6aa:	609e      	str	r6, [r3, #8]
 6ac:	f000 f8f6 	bl	89c <__malloc_unlock>
 6b0:	e6c0      	b.n	434 <_malloc_r+0x18c>
 6b2:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 6b6:	f103 0e5b 	add.w	lr, r3, #91	; 0x5b
 6ba:	00c3      	lsls	r3, r0, #3
 6bc:	e616      	b.n	2ec <_malloc_r+0x44>
 6be:	099a      	lsrs	r2, r3, #6
 6c0:	f102 0139 	add.w	r1, r2, #57	; 0x39
 6c4:	00c9      	lsls	r1, r1, #3
 6c6:	3238      	adds	r2, #56	; 0x38
 6c8:	e7a4      	b.n	614 <_malloc_r+0x36c>
 6ca:	42bc      	cmp	r4, r7
 6cc:	d054      	beq.n	778 <_malloc_r+0x4d0>
 6ce:	68bc      	ldr	r4, [r7, #8]
 6d0:	6862      	ldr	r2, [r4, #4]
 6d2:	f022 0203 	bic.w	r2, r2, #3
 6d6:	e765      	b.n	5a4 <_malloc_r+0x2fc>
 6d8:	f859 3908 	ldr.w	r3, [r9], #-8
 6dc:	4599      	cmp	r9, r3
 6de:	f040 8086 	bne.w	7ee <_malloc_r+0x546>
 6e2:	f010 0f03 	tst.w	r0, #3
 6e6:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 6ea:	d1f5      	bne.n	6d8 <_malloc_r+0x430>
 6ec:	687b      	ldr	r3, [r7, #4]
 6ee:	ea23 0304 	bic.w	r3, r3, r4
 6f2:	607b      	str	r3, [r7, #4]
 6f4:	0064      	lsls	r4, r4, #1
 6f6:	429c      	cmp	r4, r3
 6f8:	f63f aecb 	bhi.w	492 <_malloc_r+0x1ea>
 6fc:	2c00      	cmp	r4, #0
 6fe:	f43f aec8 	beq.w	492 <_malloc_r+0x1ea>
 702:	421c      	tst	r4, r3
 704:	4640      	mov	r0, r8
 706:	f47f ae42 	bne.w	38e <_malloc_r+0xe6>
 70a:	0064      	lsls	r4, r4, #1
 70c:	421c      	tst	r4, r3
 70e:	f100 0004 	add.w	r0, r0, #4
 712:	d0fa      	beq.n	70a <_malloc_r+0x462>
 714:	e63b      	b.n	38e <_malloc_r+0xe6>
 716:	468c      	mov	ip, r1
 718:	e78c      	b.n	634 <_malloc_r+0x38c>
 71a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 71e:	d815      	bhi.n	74c <_malloc_r+0x4a4>
 720:	0bf3      	lsrs	r3, r6, #15
 722:	f103 0078 	add.w	r0, r3, #120	; 0x78
 726:	f103 0e77 	add.w	lr, r3, #119	; 0x77
 72a:	00c3      	lsls	r3, r0, #3
 72c:	e5de      	b.n	2ec <_malloc_r+0x44>
 72e:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 732:	e6f5      	b.n	520 <_malloc_r+0x278>
 734:	687b      	ldr	r3, [r7, #4]
 736:	1092      	asrs	r2, r2, #2
 738:	2101      	movs	r1, #1
 73a:	fa01 f202 	lsl.w	r2, r1, r2
 73e:	4313      	orrs	r3, r2
 740:	607b      	str	r3, [r7, #4]
 742:	4662      	mov	r2, ip
 744:	e779      	b.n	63a <_malloc_r+0x392>
 746:	2201      	movs	r2, #1
 748:	605a      	str	r2, [r3, #4]
 74a:	e731      	b.n	5b0 <_malloc_r+0x308>
 74c:	f240 5254 	movw	r2, #1364	; 0x554
 750:	4293      	cmp	r3, r2
 752:	d823      	bhi.n	79c <_malloc_r+0x4f4>
 754:	0cb3      	lsrs	r3, r6, #18
 756:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 75a:	f103 0e7c 	add.w	lr, r3, #124	; 0x7c
 75e:	00c3      	lsls	r3, r0, #3
 760:	e5c4      	b.n	2ec <_malloc_r+0x44>
 762:	f108 0810 	add.w	r8, r8, #16
 766:	e6b4      	b.n	4d2 <_malloc_r+0x22a>
 768:	2a54      	cmp	r2, #84	; 0x54
 76a:	d829      	bhi.n	7c0 <_malloc_r+0x518>
 76c:	0b1a      	lsrs	r2, r3, #12
 76e:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 772:	00c9      	lsls	r1, r1, #3
 774:	326e      	adds	r2, #110	; 0x6e
 776:	e74d      	b.n	614 <_malloc_r+0x36c>
 778:	f8da 2004 	ldr.w	r2, [sl, #4]
 77c:	4442      	add	r2, r8
 77e:	f8ca 2004 	str.w	r2, [sl, #4]
 782:	e6b8      	b.n	4f6 <_malloc_r+0x24e>
 784:	f3cb 010b 	ubfx	r1, fp, #0, #12
 788:	2900      	cmp	r1, #0
 78a:	f47f aeb4 	bne.w	4f6 <_malloc_r+0x24e>
 78e:	eb09 0308 	add.w	r3, r9, r8
 792:	68b9      	ldr	r1, [r7, #8]
 794:	f043 0301 	orr.w	r3, r3, #1
 798:	604b      	str	r3, [r1, #4]
 79a:	e6f3      	b.n	584 <_malloc_r+0x2dc>
 79c:	207f      	movs	r0, #127	; 0x7f
 79e:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 7a2:	f04f 0e7e 	mov.w	lr, #126	; 0x7e
 7a6:	e5a1      	b.n	2ec <_malloc_r+0x44>
 7a8:	f104 0108 	add.w	r1, r4, #8
 7ac:	4628      	mov	r0, r5
 7ae:	f000 f995 	bl	adc <_free_r>
 7b2:	f8da 2004 	ldr.w	r2, [sl, #4]
 7b6:	e6e5      	b.n	584 <_malloc_r+0x2dc>
 7b8:	2101      	movs	r1, #1
 7ba:	f04f 0800 	mov.w	r8, #0
 7be:	e6c1      	b.n	544 <_malloc_r+0x29c>
 7c0:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 7c4:	d805      	bhi.n	7d2 <_malloc_r+0x52a>
 7c6:	0bda      	lsrs	r2, r3, #15
 7c8:	f102 0178 	add.w	r1, r2, #120	; 0x78
 7cc:	00c9      	lsls	r1, r1, #3
 7ce:	3277      	adds	r2, #119	; 0x77
 7d0:	e720      	b.n	614 <_malloc_r+0x36c>
 7d2:	f240 5154 	movw	r1, #1364	; 0x554
 7d6:	428a      	cmp	r2, r1
 7d8:	d805      	bhi.n	7e6 <_malloc_r+0x53e>
 7da:	0c9a      	lsrs	r2, r3, #18
 7dc:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 7e0:	00c9      	lsls	r1, r1, #3
 7e2:	327c      	adds	r2, #124	; 0x7c
 7e4:	e716      	b.n	614 <_malloc_r+0x36c>
 7e6:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 7ea:	227e      	movs	r2, #126	; 0x7e
 7ec:	e712      	b.n	614 <_malloc_r+0x36c>
 7ee:	687b      	ldr	r3, [r7, #4]
 7f0:	e780      	b.n	6f4 <_malloc_r+0x44c>
 7f2:	08f0      	lsrs	r0, r6, #3
 7f4:	f106 0308 	add.w	r3, r6, #8
 7f8:	e604      	b.n	404 <_malloc_r+0x15c>
 7fa:	bf00      	nop

000007fc <memset>:
 7fc:	b470      	push	{r4, r5, r6}
 7fe:	0786      	lsls	r6, r0, #30
 800:	d046      	beq.n	890 <memset+0x94>
 802:	1e54      	subs	r4, r2, #1
 804:	2a00      	cmp	r2, #0
 806:	d041      	beq.n	88c <memset+0x90>
 808:	b2ca      	uxtb	r2, r1
 80a:	4603      	mov	r3, r0
 80c:	e002      	b.n	814 <memset+0x18>
 80e:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 812:	d33b      	bcc.n	88c <memset+0x90>
 814:	f803 2b01 	strb.w	r2, [r3], #1
 818:	079d      	lsls	r5, r3, #30
 81a:	d1f8      	bne.n	80e <memset+0x12>
 81c:	2c03      	cmp	r4, #3
 81e:	d92e      	bls.n	87e <memset+0x82>
 820:	b2cd      	uxtb	r5, r1
 822:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 826:	2c0f      	cmp	r4, #15
 828:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 82c:	d919      	bls.n	862 <memset+0x66>
 82e:	f103 0210 	add.w	r2, r3, #16
 832:	4626      	mov	r6, r4
 834:	3e10      	subs	r6, #16
 836:	2e0f      	cmp	r6, #15
 838:	f842 5c10 	str.w	r5, [r2, #-16]
 83c:	f842 5c0c 	str.w	r5, [r2, #-12]
 840:	f842 5c08 	str.w	r5, [r2, #-8]
 844:	f842 5c04 	str.w	r5, [r2, #-4]
 848:	f102 0210 	add.w	r2, r2, #16
 84c:	d8f2      	bhi.n	834 <memset+0x38>
 84e:	f1a4 0210 	sub.w	r2, r4, #16
 852:	f022 020f 	bic.w	r2, r2, #15
 856:	f004 040f 	and.w	r4, r4, #15
 85a:	3210      	adds	r2, #16
 85c:	2c03      	cmp	r4, #3
 85e:	4413      	add	r3, r2
 860:	d90d      	bls.n	87e <memset+0x82>
 862:	461e      	mov	r6, r3
 864:	4622      	mov	r2, r4
 866:	3a04      	subs	r2, #4
 868:	2a03      	cmp	r2, #3
 86a:	f846 5b04 	str.w	r5, [r6], #4
 86e:	d8fa      	bhi.n	866 <memset+0x6a>
 870:	1f22      	subs	r2, r4, #4
 872:	f022 0203 	bic.w	r2, r2, #3
 876:	3204      	adds	r2, #4
 878:	4413      	add	r3, r2
 87a:	f004 0403 	and.w	r4, r4, #3
 87e:	b12c      	cbz	r4, 88c <memset+0x90>
 880:	b2c9      	uxtb	r1, r1
 882:	441c      	add	r4, r3
 884:	f803 1b01 	strb.w	r1, [r3], #1
 888:	429c      	cmp	r4, r3
 88a:	d1fb      	bne.n	884 <memset+0x88>
 88c:	bc70      	pop	{r4, r5, r6}
 88e:	4770      	bx	lr
 890:	4614      	mov	r4, r2
 892:	4603      	mov	r3, r0
 894:	e7c2      	b.n	81c <memset+0x20>
 896:	bf00      	nop

00000898 <__malloc_lock>:
 898:	4770      	bx	lr
 89a:	bf00      	nop

0000089c <__malloc_unlock>:
 89c:	4770      	bx	lr
 89e:	bf00      	nop

000008a0 <_sbrk_r>:
 8a0:	b538      	push	{r3, r4, r5, lr}
 8a2:	4c07      	ldr	r4, [pc, #28]	; (8c0 <_sbrk_r+0x20>)
 8a4:	2300      	movs	r3, #0
 8a6:	4605      	mov	r5, r0
 8a8:	4608      	mov	r0, r1
 8aa:	6023      	str	r3, [r4, #0]
 8ac:	f000 fa4e 	bl	d4c <_sbrk>
 8b0:	1c43      	adds	r3, r0, #1
 8b2:	d000      	beq.n	8b6 <_sbrk_r+0x16>
 8b4:	bd38      	pop	{r3, r4, r5, pc}
 8b6:	6823      	ldr	r3, [r4, #0]
 8b8:	2b00      	cmp	r3, #0
 8ba:	d0fb      	beq.n	8b4 <_sbrk_r+0x14>
 8bc:	602b      	str	r3, [r5, #0]
 8be:	bd38      	pop	{r3, r4, r5, pc}
 8c0:	200008d4 	.word	0x200008d4

000008c4 <__register_exitproc>:
 8c4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8c8:	4c25      	ldr	r4, [pc, #148]	; (960 <__register_exitproc+0x9c>)
 8ca:	6825      	ldr	r5, [r4, #0]
 8cc:	f8d5 4148 	ldr.w	r4, [r5, #328]	; 0x148
 8d0:	4606      	mov	r6, r0
 8d2:	4688      	mov	r8, r1
 8d4:	4692      	mov	sl, r2
 8d6:	4699      	mov	r9, r3
 8d8:	b3c4      	cbz	r4, 94c <__register_exitproc+0x88>
 8da:	6860      	ldr	r0, [r4, #4]
 8dc:	281f      	cmp	r0, #31
 8de:	dc17      	bgt.n	910 <__register_exitproc+0x4c>
 8e0:	1c43      	adds	r3, r0, #1
 8e2:	b176      	cbz	r6, 902 <__register_exitproc+0x3e>
 8e4:	eb04 0580 	add.w	r5, r4, r0, lsl #2
 8e8:	2201      	movs	r2, #1
 8ea:	f8c5 a088 	str.w	sl, [r5, #136]	; 0x88
 8ee:	f8d4 1188 	ldr.w	r1, [r4, #392]	; 0x188
 8f2:	4082      	lsls	r2, r0
 8f4:	4311      	orrs	r1, r2
 8f6:	2e02      	cmp	r6, #2
 8f8:	f8c4 1188 	str.w	r1, [r4, #392]	; 0x188
 8fc:	f8c5 9108 	str.w	r9, [r5, #264]	; 0x108
 900:	d01e      	beq.n	940 <__register_exitproc+0x7c>
 902:	3002      	adds	r0, #2
 904:	6063      	str	r3, [r4, #4]
 906:	f844 8020 	str.w	r8, [r4, r0, lsl #2]
 90a:	2000      	movs	r0, #0
 90c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 910:	4b14      	ldr	r3, [pc, #80]	; (964 <__register_exitproc+0xa0>)
 912:	b303      	cbz	r3, 956 <__register_exitproc+0x92>
 914:	f44f 70c8 	mov.w	r0, #400	; 0x190
 918:	f7ff fcb6 	bl	288 <malloc>
 91c:	4604      	mov	r4, r0
 91e:	b1d0      	cbz	r0, 956 <__register_exitproc+0x92>
 920:	f8d5 3148 	ldr.w	r3, [r5, #328]	; 0x148
 924:	2700      	movs	r7, #0
 926:	e880 0088 	stmia.w	r0, {r3, r7}
 92a:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 92e:	4638      	mov	r0, r7
 930:	2301      	movs	r3, #1
 932:	f8c4 7188 	str.w	r7, [r4, #392]	; 0x188
 936:	f8c4 718c 	str.w	r7, [r4, #396]	; 0x18c
 93a:	2e00      	cmp	r6, #0
 93c:	d0e1      	beq.n	902 <__register_exitproc+0x3e>
 93e:	e7d1      	b.n	8e4 <__register_exitproc+0x20>
 940:	f8d4 118c 	ldr.w	r1, [r4, #396]	; 0x18c
 944:	430a      	orrs	r2, r1
 946:	f8c4 218c 	str.w	r2, [r4, #396]	; 0x18c
 94a:	e7da      	b.n	902 <__register_exitproc+0x3e>
 94c:	f505 74a6 	add.w	r4, r5, #332	; 0x14c
 950:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 954:	e7c1      	b.n	8da <__register_exitproc+0x16>
 956:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 95a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 95e:	bf00      	nop
 960:	00000db8 	.word	0x00000db8
 964:	00000289 	.word	0x00000289

00000968 <__call_exitprocs>:
 968:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 96c:	4b31      	ldr	r3, [pc, #196]	; (a34 <__call_exitprocs+0xcc>)
 96e:	b085      	sub	sp, #20
 970:	681b      	ldr	r3, [r3, #0]
 972:	9302      	str	r3, [sp, #8]
 974:	f503 73a4 	add.w	r3, r3, #328	; 0x148
 978:	9001      	str	r0, [sp, #4]
 97a:	460e      	mov	r6, r1
 97c:	9303      	str	r3, [sp, #12]
 97e:	9b02      	ldr	r3, [sp, #8]
 980:	f8d3 7148 	ldr.w	r7, [r3, #328]	; 0x148
 984:	b337      	cbz	r7, 9d4 <__call_exitprocs+0x6c>
 986:	f8dd a00c 	ldr.w	sl, [sp, #12]
 98a:	f04f 0901 	mov.w	r9, #1
 98e:	46d3      	mov	fp, sl
 990:	687c      	ldr	r4, [r7, #4]
 992:	1e65      	subs	r5, r4, #1
 994:	d40e      	bmi.n	9b4 <__call_exitprocs+0x4c>
 996:	3401      	adds	r4, #1
 998:	eb07 0484 	add.w	r4, r7, r4, lsl #2
 99c:	f04f 0800 	mov.w	r8, #0
 9a0:	b1de      	cbz	r6, 9da <__call_exitprocs+0x72>
 9a2:	f8d4 3100 	ldr.w	r3, [r4, #256]	; 0x100
 9a6:	429e      	cmp	r6, r3
 9a8:	d017      	beq.n	9da <__call_exitprocs+0x72>
 9aa:	3d01      	subs	r5, #1
 9ac:	1c6b      	adds	r3, r5, #1
 9ae:	f1a4 0404 	sub.w	r4, r4, #4
 9b2:	d1f5      	bne.n	9a0 <__call_exitprocs+0x38>
 9b4:	4b20      	ldr	r3, [pc, #128]	; (a38 <__call_exitprocs+0xd0>)
 9b6:	b16b      	cbz	r3, 9d4 <__call_exitprocs+0x6c>
 9b8:	687b      	ldr	r3, [r7, #4]
 9ba:	2b00      	cmp	r3, #0
 9bc:	d135      	bne.n	a2a <__call_exitprocs+0xc2>
 9be:	683b      	ldr	r3, [r7, #0]
 9c0:	b143      	cbz	r3, 9d4 <__call_exitprocs+0x6c>
 9c2:	4638      	mov	r0, r7
 9c4:	f8cb 3000 	str.w	r3, [fp]
 9c8:	f7ff fc66 	bl	298 <free>
 9cc:	f8db 7000 	ldr.w	r7, [fp]
 9d0:	2f00      	cmp	r7, #0
 9d2:	d1dd      	bne.n	990 <__call_exitprocs+0x28>
 9d4:	b005      	add	sp, #20
 9d6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 9da:	687b      	ldr	r3, [r7, #4]
 9dc:	6822      	ldr	r2, [r4, #0]
 9de:	3b01      	subs	r3, #1
 9e0:	42ab      	cmp	r3, r5
 9e2:	bf0c      	ite	eq
 9e4:	607d      	streq	r5, [r7, #4]
 9e6:	f8c4 8000 	strne.w	r8, [r4]
 9ea:	2a00      	cmp	r2, #0
 9ec:	d0dd      	beq.n	9aa <__call_exitprocs+0x42>
 9ee:	f8d7 1188 	ldr.w	r1, [r7, #392]	; 0x188
 9f2:	f8d7 a004 	ldr.w	sl, [r7, #4]
 9f6:	fa09 f305 	lsl.w	r3, r9, r5
 9fa:	420b      	tst	r3, r1
 9fc:	d00f      	beq.n	a1e <__call_exitprocs+0xb6>
 9fe:	f8d7 118c 	ldr.w	r1, [r7, #396]	; 0x18c
 a02:	420b      	tst	r3, r1
 a04:	d10d      	bne.n	a22 <__call_exitprocs+0xba>
 a06:	f8d4 1080 	ldr.w	r1, [r4, #128]	; 0x80
 a0a:	9801      	ldr	r0, [sp, #4]
 a0c:	4790      	blx	r2
 a0e:	687b      	ldr	r3, [r7, #4]
 a10:	4553      	cmp	r3, sl
 a12:	d1b4      	bne.n	97e <__call_exitprocs+0x16>
 a14:	f8db 3000 	ldr.w	r3, [fp]
 a18:	42bb      	cmp	r3, r7
 a1a:	d0c6      	beq.n	9aa <__call_exitprocs+0x42>
 a1c:	e7af      	b.n	97e <__call_exitprocs+0x16>
 a1e:	4790      	blx	r2
 a20:	e7f5      	b.n	a0e <__call_exitprocs+0xa6>
 a22:	f8d4 0080 	ldr.w	r0, [r4, #128]	; 0x80
 a26:	4790      	blx	r2
 a28:	e7f1      	b.n	a0e <__call_exitprocs+0xa6>
 a2a:	46bb      	mov	fp, r7
 a2c:	683f      	ldr	r7, [r7, #0]
 a2e:	2f00      	cmp	r7, #0
 a30:	d1ae      	bne.n	990 <__call_exitprocs+0x28>
 a32:	e7cf      	b.n	9d4 <__call_exitprocs+0x6c>
 a34:	00000db8 	.word	0x00000db8
 a38:	00000299 	.word	0x00000299

00000a3c <_malloc_trim_r>:
 a3c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 a3e:	4f24      	ldr	r7, [pc, #144]	; (ad0 <_malloc_trim_r+0x94>)
 a40:	460c      	mov	r4, r1
 a42:	4606      	mov	r6, r0
 a44:	f7ff ff28 	bl	898 <__malloc_lock>
 a48:	68bb      	ldr	r3, [r7, #8]
 a4a:	685d      	ldr	r5, [r3, #4]
 a4c:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 a50:	310f      	adds	r1, #15
 a52:	f025 0503 	bic.w	r5, r5, #3
 a56:	4429      	add	r1, r5
 a58:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 a5c:	f021 010f 	bic.w	r1, r1, #15
 a60:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 a64:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 a68:	db07      	blt.n	a7a <_malloc_trim_r+0x3e>
 a6a:	2100      	movs	r1, #0
 a6c:	4630      	mov	r0, r6
 a6e:	f7ff ff17 	bl	8a0 <_sbrk_r>
 a72:	68bb      	ldr	r3, [r7, #8]
 a74:	442b      	add	r3, r5
 a76:	4298      	cmp	r0, r3
 a78:	d004      	beq.n	a84 <_malloc_trim_r+0x48>
 a7a:	4630      	mov	r0, r6
 a7c:	f7ff ff0e 	bl	89c <__malloc_unlock>
 a80:	2000      	movs	r0, #0
 a82:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 a84:	4261      	negs	r1, r4
 a86:	4630      	mov	r0, r6
 a88:	f7ff ff0a 	bl	8a0 <_sbrk_r>
 a8c:	3001      	adds	r0, #1
 a8e:	d00d      	beq.n	aac <_malloc_trim_r+0x70>
 a90:	4b10      	ldr	r3, [pc, #64]	; (ad4 <_malloc_trim_r+0x98>)
 a92:	68ba      	ldr	r2, [r7, #8]
 a94:	6819      	ldr	r1, [r3, #0]
 a96:	1b2d      	subs	r5, r5, r4
 a98:	f045 0501 	orr.w	r5, r5, #1
 a9c:	4630      	mov	r0, r6
 a9e:	1b09      	subs	r1, r1, r4
 aa0:	6055      	str	r5, [r2, #4]
 aa2:	6019      	str	r1, [r3, #0]
 aa4:	f7ff fefa 	bl	89c <__malloc_unlock>
 aa8:	2001      	movs	r0, #1
 aaa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 aac:	2100      	movs	r1, #0
 aae:	4630      	mov	r0, r6
 ab0:	f7ff fef6 	bl	8a0 <_sbrk_r>
 ab4:	68ba      	ldr	r2, [r7, #8]
 ab6:	1a83      	subs	r3, r0, r2
 ab8:	2b0f      	cmp	r3, #15
 aba:	ddde      	ble.n	a7a <_malloc_trim_r+0x3e>
 abc:	4c06      	ldr	r4, [pc, #24]	; (ad8 <_malloc_trim_r+0x9c>)
 abe:	4905      	ldr	r1, [pc, #20]	; (ad4 <_malloc_trim_r+0x98>)
 ac0:	6824      	ldr	r4, [r4, #0]
 ac2:	f043 0301 	orr.w	r3, r3, #1
 ac6:	1b00      	subs	r0, r0, r4
 ac8:	6053      	str	r3, [r2, #4]
 aca:	6008      	str	r0, [r1, #0]
 acc:	e7d5      	b.n	a7a <_malloc_trim_r+0x3e>
 ace:	bf00      	nop
 ad0:	20000460 	.word	0x20000460
 ad4:	200008a0 	.word	0x200008a0
 ad8:	20000868 	.word	0x20000868

00000adc <_free_r>:
 adc:	2900      	cmp	r1, #0
 ade:	d044      	beq.n	b6a <_free_r+0x8e>
 ae0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 ae4:	460d      	mov	r5, r1
 ae6:	4680      	mov	r8, r0
 ae8:	f7ff fed6 	bl	898 <__malloc_lock>
 aec:	f855 7c04 	ldr.w	r7, [r5, #-4]
 af0:	4969      	ldr	r1, [pc, #420]	; (c98 <_free_r+0x1bc>)
 af2:	f027 0301 	bic.w	r3, r7, #1
 af6:	f1a5 0408 	sub.w	r4, r5, #8
 afa:	18e2      	adds	r2, r4, r3
 afc:	688e      	ldr	r6, [r1, #8]
 afe:	6850      	ldr	r0, [r2, #4]
 b00:	42b2      	cmp	r2, r6
 b02:	f020 0003 	bic.w	r0, r0, #3
 b06:	d05e      	beq.n	bc6 <_free_r+0xea>
 b08:	07fe      	lsls	r6, r7, #31
 b0a:	6050      	str	r0, [r2, #4]
 b0c:	d40b      	bmi.n	b26 <_free_r+0x4a>
 b0e:	f855 7c08 	ldr.w	r7, [r5, #-8]
 b12:	1be4      	subs	r4, r4, r7
 b14:	f101 0e08 	add.w	lr, r1, #8
 b18:	68a5      	ldr	r5, [r4, #8]
 b1a:	4575      	cmp	r5, lr
 b1c:	443b      	add	r3, r7
 b1e:	d06d      	beq.n	bfc <_free_r+0x120>
 b20:	68e7      	ldr	r7, [r4, #12]
 b22:	60ef      	str	r7, [r5, #12]
 b24:	60bd      	str	r5, [r7, #8]
 b26:	1815      	adds	r5, r2, r0
 b28:	686d      	ldr	r5, [r5, #4]
 b2a:	07ed      	lsls	r5, r5, #31
 b2c:	d53e      	bpl.n	bac <_free_r+0xd0>
 b2e:	f043 0201 	orr.w	r2, r3, #1
 b32:	6062      	str	r2, [r4, #4]
 b34:	50e3      	str	r3, [r4, r3]
 b36:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 b3a:	d217      	bcs.n	b6c <_free_r+0x90>
 b3c:	08db      	lsrs	r3, r3, #3
 b3e:	1c58      	adds	r0, r3, #1
 b40:	109a      	asrs	r2, r3, #2
 b42:	684d      	ldr	r5, [r1, #4]
 b44:	f851 7030 	ldr.w	r7, [r1, r0, lsl #3]
 b48:	60a7      	str	r7, [r4, #8]
 b4a:	2301      	movs	r3, #1
 b4c:	4093      	lsls	r3, r2
 b4e:	eb01 02c0 	add.w	r2, r1, r0, lsl #3
 b52:	432b      	orrs	r3, r5
 b54:	3a08      	subs	r2, #8
 b56:	60e2      	str	r2, [r4, #12]
 b58:	604b      	str	r3, [r1, #4]
 b5a:	f841 4030 	str.w	r4, [r1, r0, lsl #3]
 b5e:	60fc      	str	r4, [r7, #12]
 b60:	4640      	mov	r0, r8
 b62:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 b66:	f7ff be99 	b.w	89c <__malloc_unlock>
 b6a:	4770      	bx	lr
 b6c:	0a5a      	lsrs	r2, r3, #9
 b6e:	2a04      	cmp	r2, #4
 b70:	d852      	bhi.n	c18 <_free_r+0x13c>
 b72:	099a      	lsrs	r2, r3, #6
 b74:	f102 0739 	add.w	r7, r2, #57	; 0x39
 b78:	00ff      	lsls	r7, r7, #3
 b7a:	f102 0538 	add.w	r5, r2, #56	; 0x38
 b7e:	19c8      	adds	r0, r1, r7
 b80:	59ca      	ldr	r2, [r1, r7]
 b82:	3808      	subs	r0, #8
 b84:	4290      	cmp	r0, r2
 b86:	d04f      	beq.n	c28 <_free_r+0x14c>
 b88:	6851      	ldr	r1, [r2, #4]
 b8a:	f021 0103 	bic.w	r1, r1, #3
 b8e:	428b      	cmp	r3, r1
 b90:	d232      	bcs.n	bf8 <_free_r+0x11c>
 b92:	6892      	ldr	r2, [r2, #8]
 b94:	4290      	cmp	r0, r2
 b96:	d1f7      	bne.n	b88 <_free_r+0xac>
 b98:	68c3      	ldr	r3, [r0, #12]
 b9a:	60a0      	str	r0, [r4, #8]
 b9c:	60e3      	str	r3, [r4, #12]
 b9e:	609c      	str	r4, [r3, #8]
 ba0:	60c4      	str	r4, [r0, #12]
 ba2:	4640      	mov	r0, r8
 ba4:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 ba8:	f7ff be78 	b.w	89c <__malloc_unlock>
 bac:	6895      	ldr	r5, [r2, #8]
 bae:	4f3b      	ldr	r7, [pc, #236]	; (c9c <_free_r+0x1c0>)
 bb0:	42bd      	cmp	r5, r7
 bb2:	4403      	add	r3, r0
 bb4:	d040      	beq.n	c38 <_free_r+0x15c>
 bb6:	68d0      	ldr	r0, [r2, #12]
 bb8:	60e8      	str	r0, [r5, #12]
 bba:	f043 0201 	orr.w	r2, r3, #1
 bbe:	6085      	str	r5, [r0, #8]
 bc0:	6062      	str	r2, [r4, #4]
 bc2:	50e3      	str	r3, [r4, r3]
 bc4:	e7b7      	b.n	b36 <_free_r+0x5a>
 bc6:	07ff      	lsls	r7, r7, #31
 bc8:	4403      	add	r3, r0
 bca:	d407      	bmi.n	bdc <_free_r+0x100>
 bcc:	f855 2c08 	ldr.w	r2, [r5, #-8]
 bd0:	1aa4      	subs	r4, r4, r2
 bd2:	4413      	add	r3, r2
 bd4:	68a0      	ldr	r0, [r4, #8]
 bd6:	68e2      	ldr	r2, [r4, #12]
 bd8:	60c2      	str	r2, [r0, #12]
 bda:	6090      	str	r0, [r2, #8]
 bdc:	4a30      	ldr	r2, [pc, #192]	; (ca0 <_free_r+0x1c4>)
 bde:	6812      	ldr	r2, [r2, #0]
 be0:	f043 0001 	orr.w	r0, r3, #1
 be4:	4293      	cmp	r3, r2
 be6:	6060      	str	r0, [r4, #4]
 be8:	608c      	str	r4, [r1, #8]
 bea:	d3b9      	bcc.n	b60 <_free_r+0x84>
 bec:	4b2d      	ldr	r3, [pc, #180]	; (ca4 <_free_r+0x1c8>)
 bee:	4640      	mov	r0, r8
 bf0:	6819      	ldr	r1, [r3, #0]
 bf2:	f7ff ff23 	bl	a3c <_malloc_trim_r>
 bf6:	e7b3      	b.n	b60 <_free_r+0x84>
 bf8:	4610      	mov	r0, r2
 bfa:	e7cd      	b.n	b98 <_free_r+0xbc>
 bfc:	1811      	adds	r1, r2, r0
 bfe:	6849      	ldr	r1, [r1, #4]
 c00:	07c9      	lsls	r1, r1, #31
 c02:	d444      	bmi.n	c8e <_free_r+0x1b2>
 c04:	6891      	ldr	r1, [r2, #8]
 c06:	68d2      	ldr	r2, [r2, #12]
 c08:	60ca      	str	r2, [r1, #12]
 c0a:	4403      	add	r3, r0
 c0c:	f043 0001 	orr.w	r0, r3, #1
 c10:	6091      	str	r1, [r2, #8]
 c12:	6060      	str	r0, [r4, #4]
 c14:	50e3      	str	r3, [r4, r3]
 c16:	e7a3      	b.n	b60 <_free_r+0x84>
 c18:	2a14      	cmp	r2, #20
 c1a:	d816      	bhi.n	c4a <_free_r+0x16e>
 c1c:	f102 075c 	add.w	r7, r2, #92	; 0x5c
 c20:	00ff      	lsls	r7, r7, #3
 c22:	f102 055b 	add.w	r5, r2, #91	; 0x5b
 c26:	e7aa      	b.n	b7e <_free_r+0xa2>
 c28:	10aa      	asrs	r2, r5, #2
 c2a:	2301      	movs	r3, #1
 c2c:	684d      	ldr	r5, [r1, #4]
 c2e:	4093      	lsls	r3, r2
 c30:	432b      	orrs	r3, r5
 c32:	604b      	str	r3, [r1, #4]
 c34:	4603      	mov	r3, r0
 c36:	e7b0      	b.n	b9a <_free_r+0xbe>
 c38:	f043 0201 	orr.w	r2, r3, #1
 c3c:	614c      	str	r4, [r1, #20]
 c3e:	610c      	str	r4, [r1, #16]
 c40:	60e5      	str	r5, [r4, #12]
 c42:	60a5      	str	r5, [r4, #8]
 c44:	6062      	str	r2, [r4, #4]
 c46:	50e3      	str	r3, [r4, r3]
 c48:	e78a      	b.n	b60 <_free_r+0x84>
 c4a:	2a54      	cmp	r2, #84	; 0x54
 c4c:	d806      	bhi.n	c5c <_free_r+0x180>
 c4e:	0b1a      	lsrs	r2, r3, #12
 c50:	f102 076f 	add.w	r7, r2, #111	; 0x6f
 c54:	00ff      	lsls	r7, r7, #3
 c56:	f102 056e 	add.w	r5, r2, #110	; 0x6e
 c5a:	e790      	b.n	b7e <_free_r+0xa2>
 c5c:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 c60:	d806      	bhi.n	c70 <_free_r+0x194>
 c62:	0bda      	lsrs	r2, r3, #15
 c64:	f102 0778 	add.w	r7, r2, #120	; 0x78
 c68:	00ff      	lsls	r7, r7, #3
 c6a:	f102 0577 	add.w	r5, r2, #119	; 0x77
 c6e:	e786      	b.n	b7e <_free_r+0xa2>
 c70:	f240 5054 	movw	r0, #1364	; 0x554
 c74:	4282      	cmp	r2, r0
 c76:	d806      	bhi.n	c86 <_free_r+0x1aa>
 c78:	0c9a      	lsrs	r2, r3, #18
 c7a:	f102 077d 	add.w	r7, r2, #125	; 0x7d
 c7e:	00ff      	lsls	r7, r7, #3
 c80:	f102 057c 	add.w	r5, r2, #124	; 0x7c
 c84:	e77b      	b.n	b7e <_free_r+0xa2>
 c86:	f44f 777e 	mov.w	r7, #1016	; 0x3f8
 c8a:	257e      	movs	r5, #126	; 0x7e
 c8c:	e777      	b.n	b7e <_free_r+0xa2>
 c8e:	f043 0101 	orr.w	r1, r3, #1
 c92:	6061      	str	r1, [r4, #4]
 c94:	6013      	str	r3, [r2, #0]
 c96:	e763      	b.n	b60 <_free_r+0x84>
 c98:	20000460 	.word	0x20000460
 c9c:	20000468 	.word	0x20000468
 ca0:	2000086c 	.word	0x2000086c
 ca4:	2000089c 	.word	0x2000089c

00000ca8 <cleanup_glue>:
 ca8:	b538      	push	{r3, r4, r5, lr}
 caa:	460c      	mov	r4, r1
 cac:	6809      	ldr	r1, [r1, #0]
 cae:	4605      	mov	r5, r0
 cb0:	b109      	cbz	r1, cb6 <cleanup_glue+0xe>
 cb2:	f7ff fff9 	bl	ca8 <cleanup_glue>
 cb6:	4621      	mov	r1, r4
 cb8:	4628      	mov	r0, r5
 cba:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 cbe:	f7ff bf0d 	b.w	adc <_free_r>
 cc2:	bf00      	nop

00000cc4 <_reclaim_reent>:
 cc4:	4b20      	ldr	r3, [pc, #128]	; (d48 <_reclaim_reent+0x84>)
 cc6:	681b      	ldr	r3, [r3, #0]
 cc8:	4283      	cmp	r3, r0
 cca:	d03c      	beq.n	d46 <_reclaim_reent+0x82>
 ccc:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 cce:	b570      	push	{r4, r5, r6, lr}
 cd0:	4605      	mov	r5, r0
 cd2:	b18b      	cbz	r3, cf8 <_reclaim_reent+0x34>
 cd4:	2600      	movs	r6, #0
 cd6:	5999      	ldr	r1, [r3, r6]
 cd8:	b139      	cbz	r1, cea <_reclaim_reent+0x26>
 cda:	680c      	ldr	r4, [r1, #0]
 cdc:	4628      	mov	r0, r5
 cde:	f7ff fefd 	bl	adc <_free_r>
 ce2:	4621      	mov	r1, r4
 ce4:	2c00      	cmp	r4, #0
 ce6:	d1f8      	bne.n	cda <_reclaim_reent+0x16>
 ce8:	6ceb      	ldr	r3, [r5, #76]	; 0x4c
 cea:	3604      	adds	r6, #4
 cec:	2e80      	cmp	r6, #128	; 0x80
 cee:	d1f2      	bne.n	cd6 <_reclaim_reent+0x12>
 cf0:	4619      	mov	r1, r3
 cf2:	4628      	mov	r0, r5
 cf4:	f7ff fef2 	bl	adc <_free_r>
 cf8:	6c29      	ldr	r1, [r5, #64]	; 0x40
 cfa:	b111      	cbz	r1, d02 <_reclaim_reent+0x3e>
 cfc:	4628      	mov	r0, r5
 cfe:	f7ff feed 	bl	adc <_free_r>
 d02:	f8d5 1148 	ldr.w	r1, [r5, #328]	; 0x148
 d06:	b151      	cbz	r1, d1e <_reclaim_reent+0x5a>
 d08:	f505 76a6 	add.w	r6, r5, #332	; 0x14c
 d0c:	42b1      	cmp	r1, r6
 d0e:	d006      	beq.n	d1e <_reclaim_reent+0x5a>
 d10:	680c      	ldr	r4, [r1, #0]
 d12:	4628      	mov	r0, r5
 d14:	f7ff fee2 	bl	adc <_free_r>
 d18:	42a6      	cmp	r6, r4
 d1a:	4621      	mov	r1, r4
 d1c:	d1f8      	bne.n	d10 <_reclaim_reent+0x4c>
 d1e:	6d69      	ldr	r1, [r5, #84]	; 0x54
 d20:	b111      	cbz	r1, d28 <_reclaim_reent+0x64>
 d22:	4628      	mov	r0, r5
 d24:	f7ff feda 	bl	adc <_free_r>
 d28:	6bab      	ldr	r3, [r5, #56]	; 0x38
 d2a:	b903      	cbnz	r3, d2e <_reclaim_reent+0x6a>
 d2c:	bd70      	pop	{r4, r5, r6, pc}
 d2e:	6beb      	ldr	r3, [r5, #60]	; 0x3c
 d30:	4628      	mov	r0, r5
 d32:	4798      	blx	r3
 d34:	f8d5 12e0 	ldr.w	r1, [r5, #736]	; 0x2e0
 d38:	2900      	cmp	r1, #0
 d3a:	d0f7      	beq.n	d2c <_reclaim_reent+0x68>
 d3c:	4628      	mov	r0, r5
 d3e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 d42:	f7ff bfb1 	b.w	ca8 <cleanup_glue>
 d46:	4770      	bx	lr
 d48:	20000030 	.word	0x20000030

00000d4c <_sbrk>:
 d4c:	4a04      	ldr	r2, [pc, #16]	; (d60 <_sbrk+0x14>)
 d4e:	4905      	ldr	r1, [pc, #20]	; (d64 <_sbrk+0x18>)
 d50:	6813      	ldr	r3, [r2, #0]
 d52:	2b00      	cmp	r3, #0
 d54:	bf08      	it	eq
 d56:	460b      	moveq	r3, r1
 d58:	4418      	add	r0, r3
 d5a:	6010      	str	r0, [r2, #0]
 d5c:	4618      	mov	r0, r3
 d5e:	4770      	bx	lr
 d60:	200008d0 	.word	0x200008d0
 d64:	200008d8 	.word	0x200008d8

00000d68 <_exit>:
 d68:	e7fe      	b.n	d68 <_exit>
 d6a:	bf00      	nop

00000d6c <register_fini>:
 d6c:	4b02      	ldr	r3, [pc, #8]	; (d78 <register_fini+0xc>)
 d6e:	b113      	cbz	r3, d76 <register_fini+0xa>
 d70:	4802      	ldr	r0, [pc, #8]	; (d7c <register_fini+0x10>)
 d72:	f7ff ba31 	b.w	1d8 <atexit>
 d76:	4770      	bx	lr
 d78:	00000000 	.word	0x00000000
 d7c:	00000205 	.word	0x00000205

00000d80 <__init_array_start>:
 d80:	0000006d 	.word	0x0000006d
 d84:	00000d6d 	.word	0x00000d6d

00000d88 <_init>:
 d88:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 d8a:	bf00      	nop
 d8c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 d8e:	bc08      	pop	{r3}
 d90:	469e      	mov	lr, r3
 d92:	4770      	bx	lr

00000d94 <_fini>:
 d94:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 d96:	bf00      	nop

00000d98 <__do_global_dtors_aux_fini_array_entry>:
 d98:	0045 0000 bcf8 bc08 469e 4770               E........FpG
