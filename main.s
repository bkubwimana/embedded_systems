	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.bss
	.align	2
g1:
	.space	4
	.size	g1, 4
	.global	g2
	.section	.rodata
	.align	2
	.type	g2, %object
	.size	g2, 4
g2:
	.word	45
	.global	g3
	.data
	.type	g3, %object
	.size	g3, 1
g3:
	.byte	12
	.global	g4
	.bss
	.type	g4, %object
	.size	g4, 1
g4:
	.space	1
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #12
	mov	r3, #12
	str	r3, [fp, #-20]
	mov	r3, #45
	mov	r2, r3
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L2
	mvn	r3, #0
	b	.L3
.L2:
	mov	r4, #0
	b	.L4
.L5:
	ldr	r0, [fp, #-16]
	bl	func
	mov	r2, r0
	ldr	r3, .L6
	str	r2, [r3]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L4:
	mov	r3, #45
	cmp	r4, r3
	blt	.L5
	mov	r3, #0
.L3:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	g1
	.size	main, .-main
	.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
