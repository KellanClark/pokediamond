	.include "asm/macros.inc"
	.include "global.inc
	.section .text
	.balign 4, 0

	thumb_func_start MOD05_021D74E0
MOD05_021D74E0: ; 0x021D74E0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl FUN_0201AB60
	bl FUN_0201C30C
	bl FUN_02009F80
	ldr r0, [r4, #0x34]
	bl FUN_020583A0
	bl MOD05_021F2D48
	bl FUN_0201F2D8
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021D7504
MOD05_021D7504: ; 0x021D7504
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r6, #0
	bl FUN_0200628C
	ldr r1, [r5]
	add r4, r0, #0
	cmp r1, #3
	bls _021D7518
	b _021D7666
_021D7518:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D7524: ; jump table
	.short _021D752C - _021D7524 - 2 ; case 0
	.short _021D75DE - _021D7524 - 2 ; case 1
	.short _021D7654 - _021D7524 - 2 ; case 2
	.short _021D765A - _021D7524 - 2 ; case 3
_021D752C:
	add r0, r6, #0
	add r1, r0, #0
	bl FUN_02015F10
	bl FUN_02015F1C
	ldr r1, _021D7670 ; =0x04000050
	add r0, r6, #0
	strh r0, [r1]
	ldr r1, _021D7674 ; =0x04001050
	strh r0, [r1]
	bl FUN_0200E388
	mov r0, #1
	bl FUN_0200E388
	add r0, r4, #0
	bl FUN_020489DC
	ldr r0, [r4, #0x70]
	ldr r0, [r0]
	lsl r0, r0, #8
	lsr r0, r0, #0x1c
	beq _021D7564
	ldr r0, _021D7678 ; =0x00000006
	mov r1, #2
	bl FUN_02005FDC
_021D7564:
	ldr r2, [r4, #0x70]
	mov r0, #3
	ldr r2, [r2, #4]
	mov r1, #4
	bl FUN_0201681C
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021D757A
	bl ErrorHandling
_021D757A:
	mov r0, #4
	mov r1, #0x28
	bl FUN_02016998
	mov r1, #0
	mov r2, #0x28
	str r0, [r4, #4]
	bl MI_CpuFill8
	add r0, r4, #0
	mov r1, #4
	mov r2, #8
	bl MOD05_021D7F4C
	ldr r1, [r4, #4]
	str r0, [r1, #4]
	bl MOD05_021D7A00
	mov r0, #0x80
	mov r1, #4
	bl FUN_0201C24C
	mov r0, #4
	add r1, r0, #0
	bl FUN_0201F100
	mov r0, #4
	bl FUN_0201B2EC
	bl MOD05_021D7BA0
	bl MOD05_021D7B38
	bl FUN_0201E7A0
	mov r0, #4
	bl FUN_02016B94
	str r0, [r4, #8]
	bl MOD05_021D7A30
	mov r0, #0
	mov r1, #1
	bl FUN_02054590
	add r0, r4, #0
	mov r1, #4
	bl FUN_0203989C
	b _021D7666
_021D75DE:
	bl MOD05_021D7CF0
	ldr r0, [r4, #0x2c]
	bl MOD05_021F49AC
	mov r0, #4
	bl MOD05_021E7C00
	add r1, r4, #0
	add r1, #0xa0
	str r0, [r1]
	add r0, r4, #0
	bl MOD05_021F5B9C
	add r0, r4, #0
	bl MOD05_021D7D4C
	add r0, r4, #0
	bl MOD05_021D7D98
	add r0, r4, #0
	bl MOD05_021D7E4C
	ldr r0, [r4, #0xc]
	bl FUN_02034E30
	bl FUN_02034DEC
	add r1, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	bl MOD05_021DC124
	ldr r1, [r4, #0x1c]
	add r0, r4, #0
	ldr r1, [r1]
	bl FUN_0204ADBC
	add r0, r4, #0
	mov r1, #3
	bl FUN_0203989C
	mov r0, #4
	bl MOD05_021F45B4
	ldr r1, [r4, #4]
	str r0, [r1, #0x1c]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x1c]
	bl MOD05_021F45E8
	ldr r1, [r4, #4]
	mov r0, #4
	ldr r1, [r1, #0x1c]
	bl MOD05_021F46C8
	ldr r1, [r4, #4]
	str r0, [r1, #0x20]
	b _021D7666
_021D7654:
	bl MOD05_021DBE1C
	b _021D7666
_021D765A:
	bl MOD05_021DBE38
	cmp r0, #0
	beq _021D7666
	mov r6, #1
	str r6, [r4, #0x64]
_021D7666:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021D7670: .word 0x04000050
_021D7674: .word 0x04001050
_021D7678: .word 0x00000006

	thumb_func_start MOD05_021D767C
MOD05_021D767C: ; 0x021D767C
	push {r4, lr}
	bl FUN_0200628C
	add r4, r0, #0
	bl MOD05_021D7864
	cmp r0, #0
	beq _021D76A8
	add r0, r4, #0
	bl FUN_0204B490
	add r0, r4, #0
	bl MOD05_021D79B4
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl MOD05_021EFA9C
	add r0, r4, #0
	bl MOD05_021D7894
_021D76A8:
	add r0, r4, #0
	mov r1, #0xf
	bl MOD05_021D795C
	ldr r0, [r4, #0x64]
	cmp r0, #0
	beq _021D76BA
	mov r0, #0
	pop {r4, pc}
_021D76BA:
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021D76C0
MOD05_021D76C0: ; 0x021D76C0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl FUN_0200628C
	add r4, r0, #0
	ldr r1, [r4, #0x24]
	bl MOD05_021EE52C
	ldr r0, [r5]
	cmp r0, #0
	beq _021D76E2
	cmp r0, #1
	beq _021D7782
	cmp r0, #2
	bne _021D76E0
	b _021D7806
_021D76E0:
	b _021D785A
_021D76E2:
	add r0, r4, #0
	bl FUN_0205CDD8
	ldr r0, [r4, #0x24]
	bl MOD05_021EF5FC
	ldr r0, [r4, #0x38]
	bl FUN_02055320
	ldr r1, [r4, #0x1c]
	str r0, [r1, #8]
	ldr r0, [r4, #0x38]
	bl FUN_0205532C
	ldr r1, [r4, #0x1c]
	str r0, [r1, #0xc]
	ldr r0, [r4, #0x38]
	bl FUN_020552F8
	ldr r1, [r4, #0x1c]
	str r0, [r1, #0x10]
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	bl MOD05_021F450C
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bne _021D7720
	bl ErrorHandling
_021D7720:
	ldr r0, [r4, #0x24]
	bl MOD05_021EF514
	ldr r0, [r4, #0x4c]
	bl MOD05_021D9F48
	ldr r0, [r4, #0x4c]
	bl MOD05_021DA018
	add r0, r4, #0
	add r0, #0x50
	bl MOD05_021DA450
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x10]
	bl MOD05_021DC094
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x10]
	bl MOD05_021DC0AC
	ldr r0, [r4, #4]
	mov r1, #0
	str r1, [r0, #0x10]
	ldr r0, [r4, #0x34]
	bl FUN_02057750
	ldr r0, [r4, #0x34]
	bl MOD05_021F1D2C
	ldr r0, [r4, #0x34]
	bl FUN_02058768
	ldr r0, [r4, #0x3c]
	bl MOD05_021E4BA8
	ldr r0, [r4, #0x30]
	bl MOD05_021D7F44
	mov r0, #0
	str r0, [r4, #0x30]
	add r4, #0xa0
	ldr r0, [r4]
	bl MOD05_021E7C14
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021D785A
_021D7782:
	ldr r0, [r4, #0x24]
	bl MOD05_021EF5C4
	cmp r0, #1
	bne _021D785A
	add r0, r4, #0
	add r0, #0x2c
	bl MOD05_021F4BF8
	ldr r0, [r4, #0x24]
	bl MOD05_021EF5A8
	add r0, r4, #0
	add r0, #0xa4
	bl MOD05_021F4D1C
	add r0, r4, #0
	bl MOD05_021DBDEC
	add r0, r4, #0
	add r0, #0x48
	bl MOD05_021DB4B0
	ldr r0, [r4, #0x60]
	bl MOD05_021E8110
	ldr r0, [r4, #4]
	ldr r0, [r0, #8]
	bl MOD05_021E3248
	ldr r0, [r4, #4]
	ldr r0, [r0, #0xc]
	bl MOD05_021DC0F8
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	bl MOD05_021F4704
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x1c]
	bl MOD05_021F45C8
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x18]
	bl FUN_0204B3B8
	add r0, r4, #0
	add r0, #0x44
	bl MOD05_021DBA1C
	add r0, r4, #0
	add r0, #0x40
	bl MOD05_021DBAD8
	bl MOD05_021D7B5C
	ldr r0, [r4, #8]
	bl MOD05_021D7B10
	add r0, r4, #0
	bl MOD05_021DBE58
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021D785A
_021D7806:
	add r0, r4, #0
	bl MOD05_021DBE74
	cmp r0, #0
	beq _021D785A
	bl MOD05_021D7BD4
	bl FUN_0201F140
	bl FUN_0201C29C
	bl FUN_0201B398
	ldr r0, [r4, #4]
	ldr r0, [r0, #4]
	bl MOD05_021D7F9C
	mov r0, #0
	add r1, r0, #0
	bl FUN_02015F10
	ldr r0, [r4, #8]
	bl FUN_02016A18
	ldr r0, [r4, #4]
	bl FUN_02016A18
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #4
	bl FUN_020168D0
	ldr r0, [r4, #0x70]
	ldr r0, [r0]
	lsl r0, r0, #8
	lsr r0, r0, #0x1c
	beq _021D7856
	ldr r0, _021D7860 ; =0x00000006
	bl FUN_02005F60
_021D7856:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D785A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D7860: .word 0x00000006

	thumb_func_start MOD05_021D7864
MOD05_021D7864: ; 0x021D7864
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x38]
	bl FUN_02055320
	add r4, r0, #0
	ldr r0, [r5, #0x38]
	bl FUN_0205532C
	ldr r2, [r5, #0x1c]
	ldr r1, [r2, #8]
	cmp r4, r1
	bne _021D7884
	ldr r1, [r2, #0xc]
	cmp r0, r1
	beq _021D788E
_021D7884:
	str r4, [r2, #8]
	ldr r1, [r5, #0x1c]
	str r0, [r1, #0xc]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D788E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021D7894
MOD05_021D7894: ; 0x021D7894
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x38]
	bl FUN_02055320
	asr r1, r0, #4
	lsr r1, r1, #0x1b
	add r1, r0, r1
	ldr r0, [r5, #0x38]
	asr r4, r1, #5
	bl FUN_0205532C
	asr r1, r0, #4
	lsr r1, r1, #0x1b
	add r1, r0, r1
	asr r2, r1, #5
	ldr r0, [r5, #0x28]
	add r1, r4, #0
	bl FUN_0203451C
	add r4, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r6, [r0]
	cmp r4, r6
	bne _021D78CE
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D78CE:
	ldr r0, [r5, #0xc]
	bl FUN_02034E30
	add r7, r0, #0
	ldr r0, [r5, #0x1c]
	add r1, r4, #0
	str r4, [r0]
	add r0, r5, #0
	bl FUN_02034A60
	add r0, r5, #0
	mov r1, #1
	bl FUN_020489FC
	add r0, r5, #0
	bl FUN_02034B64
	str r0, [sp, #4]
	add r0, r5, #0
	bl FUN_02034B6C
	str r0, [sp]
	ldr r0, [r5, #0x34]
	ldr r3, [sp, #4]
	add r1, r6, #0
	add r2, r4, #0
	bl FUN_020573C8
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	bl FUN_0205DD40
	ldr r1, [r5, #0x1c]
	add r0, r5, #0
	ldr r1, [r1]
	bl FUN_0204AB58
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #1
	bl FUN_0204ABDC
	add r0, r5, #0
	bl FUN_02034AC8
	add r0, r7, #0
	bl FUN_02034DEC
	add r1, r0, #0
	ldr r0, [r5, #4]
	ldr r0, [r0, #0xc]
	bl MOD05_021DC174
	add r0, r6, #0
	bl FUN_02034824
	add r6, r0, #0
	add r0, r4, #0
	bl FUN_02034824
	add r1, r0, #0
	cmp r6, r1
	beq _021D7956
	ldr r0, [r5, #4]
	ldr r0, [r0, #8]
	bl MOD05_021E3270
_021D7956:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021D795C
MOD05_021D795C: ; 0x021D795C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl FUN_0204646C
	cmp r0, #0
	bne _021D7970
	add r0, r5, #0
	bl FUN_0204B0F8
_021D7970:
	ldr r0, [r5, #0x48]
	bl MOD05_021DB4D0
	add r0, r5, #0
	bl MOD05_021E8158
	mov r0, #1
	tst r0, r4
	beq _021D798A
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x10]
	bl MOD05_021DBFF8
_021D798A:
	mov r0, #8
	tst r0, r4
	beq _021D7996
	ldr r0, [r5, #0x4c]
	bl MOD05_021DA1AC
_021D7996:
	mov r0, #2
	tst r0, r4
	beq _021D79A4
	ldr r1, [r5, #0x24]
	add r0, r5, #0
	bl MOD05_021EE52C
_021D79A4:
	mov r0, #4
	tst r0, r4
	beq _021D79B0
	add r0, r5, #0
	bl MOD05_021D7BE0
_021D79B0:
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021D79B4
MOD05_021D79B4: ; 0x021D79B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r0, [r0]
	bl FUN_02034908
	cmp r0, #0
	beq _021D79FE
	ldr r0, [r5, #0xc]
	bl FUN_02034E30
	bl FUN_02034E0C
	add r7, r0, #0
	ldr r0, [r5, #0x38]
	bl FUN_02055320
	asr r1, r0, #4
	lsr r1, r1, #0x1b
	add r1, r0, r1
	ldr r0, [r5, #0x38]
	asr r6, r1, #5
	bl FUN_0205532C
	asr r1, r0, #4
	lsr r1, r1, #0x1b
	add r1, r0, r1
	ldr r0, [r5, #0x38]
	asr r4, r1, #5
	bl FUN_020552F8
	add r3, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl FUN_0204AE5C
_021D79FE:
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021D7A00
MOD05_021D7A00: ; 0x021D7A00
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D7A1C ; =0x021F64A0
	add r3, sp, #0
	mov r2, #5
_021D7A0A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D7A0A
	add r0, sp, #0
	bl FUN_0201E66C
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021D7A1C: .word 0x021F64A0

	thumb_func_start MOD05_021D7A20
MOD05_021D7A20: ; 0x021D7A20
	ldr r3, _021D7A24 ; =MOD05_021D7A30
	bx r3
	.balign 4, 0
_021D7A24: .word MOD05_021D7A30

	thumb_func_start MOD05_021D7A28
MOD05_021D7A28: ; 0x021D7A28
	ldr r3, _021D7A2C ; =MOD05_021D7B10
	bx r3
	.balign 4, 0
_021D7A2C: .word MOD05_021D7B10

	thumb_func_start MOD05_021D7A30
MOD05_021D7A30: ; 0x021D7A30
	push {r3, r4, r5, lr}
	sub sp, #0x68
	ldr r5, _021D7B00 ; =0x021F643C
	add r3, sp, #0x58
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl FUN_02016BBC
	ldr r5, _021D7B04 ; =0x021F6468
	add r3, sp, #0x3c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #1
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl FUN_02016C18
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #4
	bl FUN_02017F18
	add r0, r4, #0
	mov r1, #1
	bl FUN_02018744
	ldr r5, _021D7B08 ; =0x021F644C
	add r3, sp, #0x20
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #2
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl FUN_02016C18
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	mov r3, #4
	bl FUN_02017F18
	add r0, r4, #0
	mov r1, #2
	bl FUN_02018744
	ldr r5, _021D7B0C ; =0x021F6484
	add r3, sp, #4
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #3
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl FUN_02016C18
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	mov r3, #4
	bl FUN_02017F18
	add r0, r4, #0
	mov r1, #3
	bl FUN_02018744
	mov r0, #0
	add r1, sp, #0
	strh r0, [r1]
	mov r1, #2
	bl DC_FlushRange
	add r0, sp, #0
	mov r1, #0
	mov r2, #2
	bl GX_LoadBGPltt
	add sp, #0x68
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021D7B00: .word 0x021F643C
_021D7B04: .word 0x021F6468
_021D7B08: .word 0x021F644C
_021D7B0C: .word 0x021F6484

	thumb_func_start MOD05_021D7B10
MOD05_021D7B10: ; 0x021D7B10
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xf
	mov r1, #0
	bl FUN_0201E6E4
	add r0, r4, #0
	mov r1, #1
	bl FUN_020178A0
	add r0, r4, #0
	mov r1, #2
	bl FUN_020178A0
	add r0, r4, #0
	mov r1, #3
	bl FUN_020178A0
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021D7B38
MOD05_021D7B38: ; 0x021D7B38
	push {lr}
	sub sp, #0x14
	bl FUN_020B0FC0
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7c
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x1f
	str r3, [sp, #0xc]
	mov r2, #4
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl FUN_02009EAC
	add sp, #0x14
	pop {pc}

	thumb_func_start MOD05_021D7B5C
MOD05_021D7B5C: ; 0x021D7B5C
	ldr r3, _021D7B60 ; =0x02009FA1
	bx r3
	.balign 4, 0
_021D7B60: .word 0x02009FA1

	thumb_func_start MOD05_021D7B64
MOD05_021D7B64: ; 0x021D7B64
	push {r4, lr}
	mov r1, #0
	add r4, r0, #0
	add r2, r1, #0
	bl MOD05_021DBD20
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl MOD05_021DBD34
	add r0, r4, #0
	mov r1, #0x1f
	mov r2, #0
	bl MOD05_021DBD48
	mov r1, #2
	add r0, r4, #0
	lsl r1, r1, #0xe
	mov r2, #1
	mov r3, #0
	bl MOD05_021DBD5C
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0x16
	bl MOD05_021DBAEC
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021D7BA0
MOD05_021D7BA0: ; 0x021D7BA0
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _021D7BD0 ; =0x021F642C
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r1, #0x10
	add r0, r2, #0
	add r2, r1, #0
	bl FUN_0201D060
	mov r0, #0x14
	mov r1, #4
	bl FUN_0201E00C
	bl FUN_0201D168
	bl FUN_0201E0BC
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_021D7BD0: .word 0x021F642C

	thumb_func_start MOD05_021D7BD4
MOD05_021D7BD4: ; 0x021D7BD4
	push {r3, lr}
	bl FUN_0201D12C
	bl FUN_0201E08C
	pop {r3, pc}

	thumb_func_start MOD05_021D7BE0
MOD05_021D7BE0: ; 0x021D7BE0
	push {r3, r4, r5, lr}
	sub sp, #0x80
	add r4, r0, #0
	bl FUN_020222AC
	bl FUN_0201EBA4
	add r0, r4, #0
	bl FUN_0205E0A8
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x40]
	bl MOD05_021EF4C4
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0]
	ldr r1, [r4, #0x2c]
	bl MOD05_021E805C
	ldr r5, _021D7C98 ; =0x021CED20
	add r3, sp, #0x40
	mov r2, #8
_021D7C0E:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D7C0E
	add r5, sp, #0x40
	add r3, sp, #0
	mov r2, #8
_021D7C1C:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D7C1C
	ldr r3, [sp, #0x28]
	ldr r1, [sp, #0x38]
	asr r0, r3, #0x1f
	lsr r2, r3, #0x12
	lsl r0, r0, #0xe
	orr r0, r2
	mov r2, #2
	lsl r5, r3, #0xe
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r5, r2
	adc r0, r3
	lsl r0, r0, #0x14
	lsr r2, r2, #0xc
	orr r2, r0
	add r0, r1, r2
	str r0, [sp, #0x38]
	ldr r1, _021D7C98 ; =0x021CED20
	add r0, sp, #0
	mov r2, #0x40
	bl MIi_CpuCopyFast
	ldr r1, _021D7C9C ; =0x021CED98
	mov r0, #0x50
	ldr r2, [r1, #0x7c]
	bic r2, r0
	str r2, [r1, #0x7c]
	bl FUN_020B849C
	ldr r0, [r4, #0x3c]
	bl MOD05_021E4BA0
	bl FUN_0201F178
	ldr r1, _021D7C98 ; =0x021CED20
	add r0, sp, #0x40
	mov r2, #0x40
	bl MIi_CpuCopyFast
	ldr r1, _021D7C9C ; =0x021CED98
	mov r0, #0x50
	ldr r2, [r1, #0x7c]
	bic r2, r0
	str r2, [r1, #0x7c]
	bl FUN_020B849C
	ldr r0, [r4, #4]
	ldr r0, [r0, #4]
	bl MOD05_021D7FD0
	ldr r1, _021D7CA0 ; =0x02105BB8
	mov r0, #0
	ldr r1, [r1]
	bl FUN_020222B4
	add sp, #0x80
	pop {r3, r4, r5, pc}
	nop
_021D7C98: .word 0x021CED20
_021D7C9C: .word 0x021CED98
_021D7CA0: .word 0x02105BB8

	thumb_func_start MOD05_021D7CA4
MOD05_021D7CA4: ; 0x021D7CA4
	push {lr}
	sub sp, #0xc
	cmp r0, #1
	bne _021D7CC6
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl FUN_0200E1D0
	add sp, #0xc
	pop {pc}
_021D7CC6:
	cmp r0, #0
	bne _021D7CE6
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl FUN_0200E1D0
	add sp, #0xc
	pop {pc}
_021D7CE6:
	bl ErrorHandling
	add sp, #0xc
	pop {pc}
	.balign 4, 0

	thumb_func_start MOD05_021D7CF0
MOD05_021D7CF0: ; 0x021D7CF0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #1
	mov r1, #0
	bl FUN_0201E6E4
	ldr r0, _021D7D44 ; =0x02105BB8
	ldr r0, [r0]
	lsl r1, r0, #1
	ldr r0, _021D7D48 ; =0x04000540
	str r1, [r0]
	bl MOD05_021D9B54
	str r0, [r5, #0x4c]
	bl MOD05_021DA430
	str r0, [r5, #0x50]
	ldr r0, [r5, #0x1c]
	ldr r0, [r0]
	bl FUN_02034724
	ldr r1, [r5, #0x4c]
	bl MOD05_021F4978
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x1c]
	ldr r0, [r0]
	bl FUN_02034738
	add r4, r0, #0
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _021D7D36
	bl ErrorHandling
_021D7D36:
	mov r0, #4
	add r1, r4, #0
	bl MOD05_021D7EE8
	str r0, [r5, #0x30]
	pop {r3, r4, r5, pc}
	nop
_021D7D44: .word 0x02105BB8
_021D7D48: .word 0x04000540

	thumb_func_start MOD05_021D7D4C
MOD05_021D7D4C: ; 0x021D7D4C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	ldr r2, [r4, #0x4c]
	ldr r3, [r4, #0x5c]
	bl MOD05_021EF368
	str r0, [r4, #0x24]
	mov r0, #8
	mov r1, #4
	bl MOD05_021F4498
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1]
	bl MOD05_021F4CF8
	add r1, r4, #0
	add r1, #0xa4
	str r0, [r1]
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	bne _021D7D86
	ldr r0, [r4, #0x24]
	ldr r1, _021D7D94 ; =MOD05_021F521C
	add r2, r4, #0
	bl MOD05_021EF8E8
_021D7D86:
	ldr r2, [r4, #0x1c]
	ldr r0, [r4, #0x24]
	ldr r1, [r2, #8]
	ldr r2, [r2, #0xc]
	bl MOD05_021EF434
	pop {r4, pc}
	.balign 4, 0
_021D7D94: .word MOD05_021F521C

	thumb_func_start MOD05_021D7D98
MOD05_021D7D98: ; 0x021D7D98
	push {r4, r5, lr}
	sub sp, #0x14
	mov r3, #6
	mov r1, #0x20
	mov r2, #4
	lsl r3, r3, #0xe
	add r4, r0, #0
	bl MOD05_021E4AE4
	mov r1, #0x50
	str r0, [r4, #0x3c]
	bl MOD05_021E4B38
	mov r2, #0x20
	str r2, [sp]
	mov r0, #5
	str r2, [sp, #4]
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	lsl r0, r2, #6
	str r0, [sp, #0xc]
	lsl r0, r2, #0xb
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x3c]
	mov r1, #4
	add r3, r2, #0
	bl MOD05_021E4B44
	ldr r0, [r4, #0x6c]
	sub r0, r0, #1
	cmp r0, #1
	bhi _021D7DE0
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl FUN_02058804
_021D7DE0:
	ldr r0, [r4, #0x6c]
	cmp r0, #1
	ldr r0, [r4, #0x3c]
	bne _021D7DF0
	ldr r1, _021D7E44 ; =0x021FC79C
	bl MOD05_021E4B84
	b _021D7DF6
_021D7DF0:
	ldr r1, _021D7E48 ; =0x021FC718
	bl MOD05_021E4B84
_021D7DF6:
	ldr r0, [r4, #0x30]
	bl MOD05_021D7F40
	add r5, r0, #0
	ldr r0, [r4, #0x30]
	bl MOD05_021D7F3C
	add r3, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #0x20
	add r2, r5, #3
	bl MOD05_021F1CB8
	ldr r0, [r4, #0x38]
	bl FUN_02055108
	ldr r0, [r4, #0x34]
	bl FUN_020577A8
	bl FUN_0204F88C
	ldr r0, [r4, #0x34]
	bl FUN_02058774
	ldr r0, [r4, #0x38]
	bl FUN_02055360
	ldr r1, [r4, #0x24]
	bl MOD05_021EF5E0
	add r0, r4, #0
	mov r1, #4
	bl FUN_0204B388
	ldr r1, [r4, #4]
	str r0, [r1, #0x18]
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_021D7E44: .word 0x021FC79C
_021D7E48: .word 0x021FC718

	thumb_func_start MOD05_021D7E4C
MOD05_021D7E4C: ; 0x021D7E4C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #1
	add r1, r0, #0
	bl FUN_0201E6E4
	bl FUN_0201E788
	bl MOD05_021DBABC
	str r0, [r4, #0x40]
	bl MOD05_021D7B64
	bl MOD05_021DBA00
	str r0, [r4, #0x44]
	ldr r0, [r4, #0xc]
	bl FUN_02034E30
	bl FUN_02034E10
	add r5, r0, #0
	ldr r0, [r4, #0x38]
	bl FUN_02055360
	add r1, r4, #0
	add r2, r5, #0
	mov r3, #1
	bl MOD05_021DBD84
	ldr r0, [r4, #0x2c]
	bl MOD05_021F4CBC
	add r1, r0, #0
	ldr r0, [r4, #0x40]
	bl MOD05_021DB44C
	str r0, [r4, #0x48]
	add r0, r4, #0
	bl MOD05_021DC0B8
	ldr r1, [r4, #4]
	str r0, [r1, #0xc]
	ldr r0, [r4, #8]
	bl MOD05_021E320C
	ldr r1, [r4, #4]
	str r0, [r1, #8]
	mov r0, #4
	bl MOD05_021E80F8
	str r0, [r4, #0x60]
	bl MOD05_021DBEF4
	ldr r1, [r4, #4]
	str r0, [r1, #0x10]
	ldr r0, [r4, #0x2c]
	bl MOD05_021F4C74
	add r1, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x10]
	bl MOD05_021DBF20
	add r0, r4, #0
	bl FUN_0205CDB4
	add r0, r4, #0
	bl MOD05_021F38B8
	ldr r0, _021D7EE4 ; =MOD05_021D74E0
	add r1, r4, #0
	bl FUN_02015F10
	pop {r3, r4, r5, pc}
	nop
_021D7EE4: .word MOD05_021D74E0

	thumb_func_start MOD05_021D7EE8
MOD05_021D7EE8: ; 0x021D7EE8
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	mov r1, #0x64
	bl FUN_02016998
	add r4, r0, #0
	mov r0, #0x60
	add r1, r6, #0
	add r2, r5, #0
	bl FUN_02006528
	ldr r1, _021D7F38 ; =0x0000FFFF
	mov r2, #0
	add r3, r4, #0
_021D7F06:
	add r2, r2, #1
	str r1, [r3, #4]
	add r3, r3, #4
	cmp r2, #0x18
	blt _021D7F06
	ldr r5, _021D7F38 ; =0x0000FFFF
	mov r3, #0
	add r1, r0, #0
	add r2, r4, #0
_021D7F18:
	ldrh r6, [r1]
	str r6, [r2, #4]
	ldrh r6, [r1]
	cmp r6, r5
	beq _021D7F2C
	add r3, r3, #1
	add r1, r1, #2
	add r2, r2, #4
	cmp r3, #0x18
	blt _021D7F18
_021D7F2C:
	strh r3, [r4]
	bl FUN_02016A18
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_021D7F38: .word 0x0000FFFF

	thumb_func_start MOD05_021D7F3C
MOD05_021D7F3C: ; 0x021D7F3C
	add r0, r0, #4
	bx lr

	thumb_func_start MOD05_021D7F40
MOD05_021D7F40: ; 0x021D7F40
	ldrh r0, [r0]
	bx lr

	thumb_func_start MOD05_021D7F44
MOD05_021D7F44: ; 0x021D7F44
	ldr r3, _021D7F48 ; =0x02016A19
	bx r3
	.balign 4, 0
_021D7F48: .word 0x02016A19

	thumb_func_start MOD05_021D7F4C
MOD05_021D7F4C: ; 0x021D7F4C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0x14
	add r6, r2, #0
	bl FUN_02016998
	add r4, r0, #0
	str r7, [r4]
	str r5, [r4, #4]
	mov r0, #0x14
	add r7, r6, #0
	mul r7, r0
	str r6, [r4, #8]
	add r0, r5, #0
	add r1, r7, #0
	bl FUN_02016998
	str r0, [r4, #0xc]
	ldr r1, [r4, #0xc]
	mov r0, #0
	add r2, r7, #0
	bl MIi_CpuClear32
	add r0, r6, #0
	bl FUN_0201B578
	add r1, r0, #0
	add r0, r5, #0
	bl FUN_02016998
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x10]
	add r0, r6, #0
	bl FUN_0201B580
	str r0, [r4, #0x10]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021D7F9C
MOD05_021D7F9C: ; 0x021D7F9C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	mov r6, #0
	cmp r0, #0
	ble _021D7FBC
	add r4, r6, #0
_021D7FAA:
	ldr r0, [r5, #0xc]
	add r0, r0, r4
	bl MOD05_021D80A4
	ldr r0, [r5, #8]
	add r6, r6, #1
	add r4, #0x14
	cmp r6, r0
	blt _021D7FAA
_021D7FBC:
	ldr r0, [r5, #0xc]
	bl FUN_02016A18
	ldr r0, [r5, #0x10]
	bl FUN_02016A18
	add r0, r5, #0
	bl FUN_02016A18
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021D7FD0
MOD05_021D7FD0: ; 0x021D7FD0
	ldr r3, _021D7FD8 ; =0x0201B5CD
	ldr r0, [r0, #0x10]
	bx r3
	nop
_021D7FD8: .word 0x0201B5CD

	thumb_func_start MOD05_021D7FDC
MOD05_021D7FDC: ; 0x021D7FDC
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_020373AC
	cmp r0, #0
	beq _021D7FFE
	ldr r0, [r4, #0xc]
	ldr r3, [r0, #0x10]
	cmp r3, #0
	beq _021D7FFE
	ldr r1, [r4]
	ldr r2, [r4, #0x10]
	ldr r1, [r1]
	add r0, r4, #0
	blx r3
_021D7FFE:
	pop {r4, pc}

	thumb_func_start MOD05_021D8000
MOD05_021D8000: ; 0x021D8000
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_020373AC
	cmp r0, #0
	beq _021D8022
	ldr r0, [r4, #0xc]
	ldr r3, [r0, #0x14]
	cmp r3, #0
	beq _021D8022
	ldr r1, [r4]
	ldr r2, [r4, #0x10]
	ldr r1, [r1]
	add r0, r4, #0
	blx r3
_021D8022:
	pop {r4, pc}

	thumb_func_start MOD05_021D8024
MOD05_021D8024: ; 0x021D8024
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r2, [r5, #8]
	add r6, r1, #0
	mov r1, #0
	ldr r4, [r5, #0xc]
	cmp r2, #0
	ble _021D8094
_021D8034:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021D808C
	ldr r0, _021D809C ; =MOD05_021D7FDC
	ldr r2, [r6]
	add r1, r4, #0
	bl FUN_0200CA44
	str r0, [r4, #4]
	ldr r0, [r5, #0x10]
	ldr r1, _021D80A0 ; =MOD05_021D8000
	ldr r3, [r6]
	add r2, r4, #0
	bl FUN_0201B60C
	str r0, [r4, #8]
	str r5, [r4]
	str r6, [r4, #0xc]
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021D8062
	bl ErrorHandling
_021D8062:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021D806C
	bl ErrorHandling
_021D806C:
	ldrh r1, [r6, #4]
	cmp r1, #0
	beq _021D807A
	ldr r0, [r5, #4]
	bl FUN_02016998
	str r0, [r4, #0x10]
_021D807A:
	ldr r3, [r6, #8]
	cmp r3, #0
	beq _021D8088
	ldr r1, [r5]
	ldr r2, [r4, #0x10]
	add r0, r4, #0
	blx r3
_021D8088:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021D808C:
	add r1, r1, #1
	add r4, #0x14
	cmp r1, r2
	blt _021D8034
_021D8094:
	bl ErrorHandling
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021D809C: .word MOD05_021D7FDC
_021D80A0: .word MOD05_021D8000

	thumb_func_start MOD05_021D80A4
MOD05_021D80A4: ; 0x021D80A4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021D80E2
	ldr r1, [r4, #0xc]
	ldr r3, [r1, #0xc]
	cmp r3, #0
	beq _021D80BE
	ldr r1, [r4]
	ldr r2, [r4, #0x10]
	ldr r1, [r1]
	blx r3
_021D80BE:
	ldr r0, [r4, #0xc]
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _021D80CC
	ldr r0, [r4, #0x10]
	bl FUN_02016A18
_021D80CC:
	ldr r0, [r4, #4]
	bl FUN_0200CAB4
	ldr r0, [r4, #8]
	bl FUN_0200CAB4
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x14
	bl MIi_CpuClear32
_021D80E2:
	pop {r4, pc}

	thumb_func_start MOD05_021D80E4
MOD05_021D80E4: ; 0x021D80E4
	ldr r0, [r0, #0x10]
	bx lr

	thumb_func_start MOD05_021D80E8
MOD05_021D80E8: ; 0x021D80E8
	ldrh r2, [r0]
	mov r1, #1
	bic r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	mov r1, #2
	bic r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	mov r1, #4
	bic r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	mov r1, #8
	bic r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	mov r1, #0x10
	bic r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	mov r1, #0x20
	bic r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	mov r1, #0x40
	bic r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	mov r1, #0x80
	bic r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	ldr r1, _021D8154 ; =0xFFFFFEFF
	and r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	ldr r1, _021D8158 ; =0xFFFFFDFF
	and r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	ldr r1, _021D815C ; =0xFFFFFBFF
	and r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	ldr r1, _021D8160 ; =0xFFFFF7FF
	and r2, r1
	strh r2, [r0]
	mov r2, #0xff
	strb r2, [r0, #2]
	asr r1, r1, #0xc
	strb r1, [r0, #3]
	bx lr
	nop
_021D8154: .word 0xFFFFFEFF
_021D8158: .word 0xFFFFFDFF
_021D815C: .word 0xFFFFFBFF
_021D8160: .word 0xFFFFF7FF

	thumb_func_start MOD05_021D8164
MOD05_021D8164: ; 0x021D8164
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r4, r3, #0
	bl MOD05_021D80E8
	ldr r0, [r7, #0x38]
	bl FUN_02055378
	str r0, [sp, #4]
	ldr r0, [r7, #0x38]
	bl FUN_02055370
	str r0, [sp]
	ldr r0, [r7, #0x38]
	bl FUN_020552F8
	add r2, r0, #0
	ldr r0, [sp, #4]
	strh r6, [r5, #4]
	strh r4, [r5, #6]
	cmp r0, #3
	beq _021D819A
	cmp r0, #0
	bne _021D81F8
_021D819A:
	mov r0, #1
	lsl r0, r0, #0xa
	tst r0, r6
	beq _021D81AA
	ldrh r1, [r5]
	mov r0, #4
	orr r0, r1
	strh r0, [r5]
_021D81AA:
	mov r0, #2
	lsl r0, r0, #0xa
	tst r0, r6
	beq _021D81BA
	ldrh r1, [r5]
	mov r0, #8
	orr r0, r1
	strh r0, [r5]
_021D81BA:
	mov r3, #1
	add r0, r6, #0
	tst r0, r3
	beq _021D81CE
	ldrh r1, [r5]
	mov r0, #1
	bic r1, r0
	add r0, r1, #0
	orr r0, r3
	strh r0, [r5]
_021D81CE:
	mov r0, #2
	tst r0, r6
	beq _021D81DC
	ldrh r1, [r5]
	mov r0, #0x80
	orr r0, r1
	strh r0, [r5]
_021D81DC:
	mov r0, #0xf0
	add r3, r4, #0
	and r3, r0
	beq _021D81EC
	ldrh r1, [r5]
	mov r0, #0x10
	orr r0, r1
	strh r0, [r5]
_021D81EC:
	cmp r3, #0
	beq _021D81F8
	ldrh r1, [r5]
	mov r0, #0x20
	orr r0, r1
	strh r0, [r5]
_021D81F8:
	ldr r0, [sp, #4]
	cmp r0, #3
	bne _021D820C
	ldr r0, [sp]
	cmp r0, #1
	bne _021D820C
	ldrh r1, [r5]
	mov r0, #0x40
	orr r0, r1
	strh r0, [r5]
_021D820C:
	ldr r0, [sp, #4]
	cmp r0, #3
	bne _021D821A
	ldrh r1, [r5]
	mov r0, #2
	orr r0, r1
	strh r0, [r5]
_021D821A:
	cmp r2, #0
	bne _021D8224
	mov r0, #0x40
	tst r0, r4
	bne _021D8242
_021D8224:
	cmp r2, #1
	bne _021D822E
	mov r0, #0x80
	tst r0, r4
	bne _021D8242
_021D822E:
	cmp r2, #2
	bne _021D8238
	mov r0, #0x20
	tst r0, r4
	bne _021D8242
_021D8238:
	cmp r2, #3
	bne _021D8246
	mov r0, #0x10
	tst r0, r4
	beq _021D8246
_021D8242:
	strb r2, [r5, #3]
	b _021D824C
_021D8246:
	mov r0, #0
	mvn r0, r0
	strb r0, [r5, #3]
_021D824C:
	ldr r0, [r7, #0x38]
	add r1, r6, #0
	add r2, r4, #0
	bl FUN_02057020
	strb r0, [r5, #2]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021D825C
MOD05_021D825C: ; 0x021D825C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x38]
	bl FUN_02055378
	add r6, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, [r0]
	ldr r0, _021D831C ; =0x00000156
	cmp r1, r0
	beq _021D827C
	add sp, #0x10
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D827C:
	ldr r0, [r4, #0xc]
	bl FUN_020462AC
	bl FUN_0205ED3C
	cmp r0, #0
	bne _021D8290
	add sp, #0x10
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D8290:
	cmp r6, #0
	bne _021D82EC
	ldr r0, [r4, #0x38]
	bl FUN_02055370
	ldrb r1, [r5, #2]
	lsl r2, r1, #0x18
	asr r3, r2, #0x18
	mov r2, #0
	mvn r2, r2
	cmp r3, r2
	beq _021D82CE
	cmp r0, #1
	bne _021D82CE
	add r0, r4, #0
	add r2, sp, #0xc
	add r3, sp, #8
	bl MOD05_021D9130
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	add r0, r4, #0
	bl FUN_0204A6E0
	bl FUN_0205478C
	cmp r0, #0
	beq _021D8314
	add sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, pc}
_021D82CE:
	mov r0, #3
	ldrsb r1, [r5, r0]
	sub r0, r0, #4
	cmp r1, r0
	beq _021D8314
	add r0, r4, #0
	bl MOD05_021D9194
	bl FUN_0205478C
	cmp r0, #0
	beq _021D8314
	add sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, pc}
_021D82EC:
	cmp r6, #3
	bne _021D8314
	ldrb r1, [r5, #2]
	add r0, r4, #0
	add r2, sp, #4
	add r3, sp, #0
	bl MOD05_021D9130
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	bl FUN_0204A6E0
	bl FUN_0205478C
	cmp r0, #0
	beq _021D8314
	add sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, pc}
_021D8314:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021D831C: .word 0x00000156

	thumb_func_start MOD05_021D8320
MOD05_021D8320: ; 0x021D8320
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldrh r0, [r5]
	add r4, r1, #0
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1f
	bne _021D8342
	add r0, r4, #0
	mov r1, #1
	bl FUN_0203989C
	cmp r0, #1
	bne _021D8342
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D8342:
	ldrh r0, [r5]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1f
	bne _021D8384
	ldr r0, [r4, #0xc]
	bl FUN_0206BB1C
	bl FUN_0204A248
	add r6, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_020462AC
	bl FUN_0205ED3C
	cmp r0, #1
	bne _021D8366
	mov r6, #1
_021D8366:
	add r0, r4, #0
	add r1, r6, #0
	bl FUN_0205C598
	cmp r0, #1
	bne _021D8384
	ldr r0, [r4, #0x38]
	bl FUN_02055B14
	ldr r0, [r4, #0x34]
	bl FUN_02058780
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D8384:
	ldrh r0, [r5]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	beq _021D83A6
	ldr r0, [r4, #0xc]
	bl FUN_020462AC
	bl FUN_0205ED5C
	add r0, r4, #0
	bl MOD05_021D8D24
	cmp r0, #1
	bne _021D83A6
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D83A6:
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021D825C
	cmp r0, #0
	beq _021D83C2
	add r0, r4, #0
	mov r1, #4
	mov r2, #0
	bl FUN_02038C78
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D83C2:
	ldrh r1, [r5, #4]
	ldrh r2, [r5, #6]
	ldr r0, [r4, #0x38]
	mov r6, #0
	bl FUN_02057020
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_020462AC
	mov r1, #2
	bl FUN_0205F264
	cmp r0, #0
	beq _021D83E4
	mov r0, #1
	orr r6, r0
_021D83E4:
	ldr r0, [r4, #0xc]
	bl FUN_0206BB1C
	mov r1, #0x7f
	bl FUN_0204A138
	cmp r0, #0xff
	beq _021D83F8
	mov r0, #2
	orr r6, r0
_021D83F8:
	ldr r1, [r4, #0x38]
	add r0, r4, #0
	add r2, r7, #0
	add r3, r6, #0
	bl MOD05_021E61A4
	cmp r0, #1
	bne _021D840E
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D840E:
	ldrh r0, [r5]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _021D8436
	add r0, r4, #0
	bl MOD05_021D8954
	cmp r0, #0
	beq _021D8426
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D8426:
	add r0, r4, #0
	bl MOD05_021D859C
	cmp r0, #1
	bne _021D8436
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D8436:
	ldrh r0, [r5]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	beq _021D845A
	ldr r0, [r4, #0x38]
	bl FUN_020552F8
	ldrb r1, [r5, #2]
	cmp r1, r0
	bne _021D845A
	add r0, r4, #0
	bl MOD05_021D859C
	cmp r0, #1
	bne _021D845A
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D845A:
	ldrh r0, [r5]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021D8532
	add r0, r4, #0
	add r1, sp, #4
	bl FUN_02037090
	cmp r0, #1
	bne _021D84B8
	ldr r0, [r4, #0x38]
	bl FUN_02055B30
	cmp r0, #1
	bne _021D8486
	ldr r0, [r4, #0x38]
	bl FUN_020552F8
	add r1, r0, #0
	ldr r0, [r4, #0x38]
	bl FUN_02055B8C
_021D8486:
	ldr r0, [sp, #4]
	bl FUN_02058488
	cmp r0, #9
	beq _021D84A8
	ldr r5, [sp, #4]
	add r0, r5, #0
	bl FUN_02058498
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	add r2, r5, #0
	bl FUN_02038C78
	b _021D84B2
_021D84A8:
	ldr r2, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	bl FUN_02038C78
_021D84B2:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D84B8:
	add r0, r4, #0
	bl FUN_02034AF0
	add r6, r0, #0
	add r0, r4, #0
	bl FUN_02034AF8
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl FUN_020370BC
	add r1, r0, #0
	ldr r0, _021D8594 ; =0x0000FFFF
	cmp r1, r0
	beq _021D84EA
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	mov r2, #0
	bl FUN_02038C78
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D84EA:
	add r0, r4, #0
	add r1, sp, #0
	bl MOD05_021F4D2C
	cmp r0, #0
	beq _021D850A
	ldr r1, [sp]
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r2, #0
	bl FUN_02038C78
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D850A:
	add r0, r4, #0
	bl MOD05_021D9194
	add r1, r0, #0
	add r0, r4, #0
	bl MOD05_021D8BAC
	add r1, r0, #0
	ldr r0, _021D8594 ; =0x0000FFFF
	cmp r1, r0
	beq _021D8532
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	mov r2, #0
	bl FUN_02038C78
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D8532:
	ldrh r0, [r5]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	beq _021D8552
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021D89BC
	cmp r0, #1
	bne _021D8552
	add r0, r4, #0
	bl MOD05_021D9290
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D8552:
	ldrh r0, [r5]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _021D856A
	add r0, r4, #0
	bl FUN_0205DB44
	cmp r0, #1
	bne _021D856A
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D856A:
	ldrh r0, [r5]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _021D858E
	add r0, r4, #0
	bl FUN_02035068
	cmp r0, #1
	bne _021D858E
	ldr r0, _021D8598 ; =0x000005FD
	bl FUN_020054C8
	add r0, r4, #0
	bl FUN_02035080
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D858E:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021D8594: .word 0x0000FFFF
_021D8598: .word 0x000005FD

	thumb_func_start MOD05_021D859C
MOD05_021D859C: ; 0x021D859C
	push {r3, r4, r5, lr}
	add r1, sp, #0
	add r5, r0, #0
	bl FUN_02037230
	cmp r0, #1
	bne _021D85C4
	ldr r4, [sp]
	add r0, r4, #0
	bl FUN_02058498
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	add r2, r4, #0
	bl FUN_02038C78
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D85C4:
	add r0, r5, #0
	bl FUN_02034AF0
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_02034AF8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl FUN_020371D0
	add r1, r0, #0
	ldr r0, _021D85F8 ; =0x0000FFFF
	cmp r1, r0
	beq _021D85F4
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	mov r2, #0
	bl FUN_02038C78
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D85F4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021D85F8: .word 0x0000FFFF

	thumb_func_start MOD05_021D85FC
MOD05_021D85FC: ; 0x021D85FC
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1f
	bne _021D8618
	add r0, r1, #0
	mov r1, #1
	bl FUN_0203989C
	cmp r0, #1
	bne _021D8618
	mov r0, #1
	pop {r4, pc}
_021D8618:
	bl FUN_02031438
	cmp r0, #0
	bne _021D862C
	bl FUN_02031190
	bl FUN_0204F6B4
	cmp r0, #0
	beq _021D8630
_021D862C:
	mov r0, #0
	pop {r4, pc}
_021D8630:
	bl FUN_0223DCB4
	ldrh r0, [r4]
	lsl r1, r0, #0x1f
	lsr r1, r1, #0x1f
	beq _021D8646
	mov r0, #0
	bl FUN_0223DCD0
	mov r0, #0
	pop {r4, pc}
_021D8646:
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _021D8654
	bl FUN_0223DC98
	mov r0, #0
	pop {r4, pc}
_021D8654:
	bl FUN_0223D8F4
	mov r0, #0
	pop {r4, pc}

	thumb_func_start MOD05_021D865C
MOD05_021D865C: ; 0x021D865C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrh r0, [r4]
	add r5, r1, #0
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	beq _021D868E
	mov r0, #3
	ldrsb r0, [r4, r0]
	cmp r0, #1
	bne _021D868E
	add r0, r5, #0
	bl MOD05_021D9178
	bl FUN_020547E0
	cmp r0, #0
	beq _021D868E
	ldr r1, _021D872C ; =0x0000238D
	add r0, r5, #0
	mov r2, #0
	bl FUN_02038C78
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D868E:
	bl FUN_02031438
	cmp r0, #0
	bne _021D86AA
	bl FUN_02031190
	bl FUN_0204F6B4
	cmp r0, #0
	bne _021D86AA
	bl FUN_02050A68
	cmp r0, #0
	bne _021D86AE
_021D86AA:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D86AE:
	ldrh r0, [r4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021D86FE
	add r0, r5, #0
	add r1, sp, #0
	bl FUN_02037090
	cmp r0, #1
	bne _021D86FE
	ldr r0, [sp]
	bl FUN_02058480
	cmp r0, #1
	beq _021D86FE
	ldr r0, [r5, #0x38]
	bl FUN_02055B30
	cmp r0, #1
	bne _021D86E4
	ldr r0, [r5, #0x38]
	bl FUN_020552F8
	add r1, r0, #0
	ldr r0, [r5, #0x38]
	bl FUN_02055B8C
_021D86E4:
	ldr r4, [sp]
	add r0, r4, #0
	bl FUN_02058498
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	add r2, r4, #0
	bl FUN_02038C78
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D86FE:
	ldrh r0, [r4]
	lsl r1, r0, #0x1f
	lsr r1, r1, #0x1f
	beq _021D8710
	add r0, r5, #0
	bl FUN_02052044
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D8710:
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _021D8726
	ldr r0, _021D8730 ; =0x000005FD
	bl FUN_020054C8
	add r0, r5, #0
	bl FUN_0203515C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D8726:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D872C: .word 0x0000238D
_021D8730: .word 0x000005FD

	thumb_func_start MOD05_021D8734
MOD05_021D8734: ; 0x021D8734
	push {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #1
_021D873A:
	add r0, r4, #0
	bl FUN_0202DFA4
	cmp r0, #0
	beq _021D8746
	add r5, r5, #1
_021D8746:
	add r4, r4, #1
	cmp r4, #5
	blt _021D873A
	cmp r5, #1
	blt _021D8754
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D8754:
	mov r0, #0
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021D8758
MOD05_021D8758: ; 0x021D8758
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl FUN_0202CB8C
	mov r1, #0xfe
	tst r0, r1
	beq _021D878A
	bl MOD05_021D8734
	cmp r0, #0
	beq _021D8786
	bl FUN_02030F20
	cmp r0, #1
	ble _021D8786
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl FUN_02038C78
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D8786:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D878A:
	ldrh r0, [r4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021D87D4
	add r0, r5, #0
	add r1, sp, #0
	bl FUN_02037090
	cmp r0, #1
	bne _021D87D4
	ldr r0, [r5, #0x38]
	bl FUN_02055B30
	cmp r0, #1
	bne _021D87B6
	ldr r0, [r5, #0x38]
	bl FUN_020552F8
	add r1, r0, #0
	ldr r0, [r5, #0x38]
	bl FUN_02055B8C
_021D87B6:
	bl FUN_02031C10
	ldr r4, [sp]
	add r0, r4, #0
	bl FUN_02058498
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	add r2, r4, #0
	bl FUN_02038C78
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D87D4:
	ldrh r0, [r4]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	beq _021D87F4
	add r0, r5, #0
	bl MOD05_021D9178
	bl FUN_02054B60
	cmp r0, #0
	beq _021D87F4
	add r0, r5, #0
	bl FUN_02049D9C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D87F4:
	ldrh r0, [r4]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _021D8816
	ldr r0, _021D881C ; =0x000005FD
	bl FUN_020054C8
	add r0, r5, #0
	bl FUN_02035118
	mov r0, #4
	bl FUN_02052B74
	bl FUN_02031C2C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D8816:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D881C: .word 0x000005FD

	thumb_func_start MOD05_021D8820
MOD05_021D8820: ; 0x021D8820
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldrh r0, [r5]
	add r4, r1, #0
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1f
	bne _021D8842
	add r0, r4, #0
	mov r1, #1
	bl FUN_0203989C
	cmp r0, #1
	bne _021D8842
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D8842:
	ldrh r0, [r5]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021D88FA
	add r0, r4, #0
	add r1, sp, #0
	bl FUN_02037090
	cmp r0, #1
	bne _021D88A0
	ldr r0, [r4, #0x38]
	bl FUN_02055B30
	cmp r0, #1
	bne _021D886E
	ldr r0, [r4, #0x38]
	bl FUN_020552F8
	add r1, r0, #0
	ldr r0, [r4, #0x38]
	bl FUN_02055B8C
_021D886E:
	ldr r0, [sp]
	bl FUN_02058488
	cmp r0, #9
	beq _021D8890
	ldr r5, [sp]
	add r0, r5, #0
	bl FUN_02058498
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	add r2, r5, #0
	bl FUN_02038C78
	b _021D889A
_021D8890:
	ldr r2, [sp]
	add r0, r4, #0
	mov r1, #0
	bl FUN_02038C78
_021D889A:
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D88A0:
	add r0, r4, #0
	bl FUN_02034AF0
	add r6, r0, #0
	add r0, r4, #0
	bl FUN_02034AF8
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl FUN_020370BC
	add r1, r0, #0
	ldr r0, _021D894C ; =0x0000FFFF
	cmp r1, r0
	beq _021D88D2
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	mov r2, #0
	bl FUN_02038C78
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D88D2:
	add r0, r4, #0
	bl MOD05_021D9194
	add r1, r0, #0
	add r0, r4, #0
	bl MOD05_021D8BAC
	add r1, r0, #0
	ldr r0, _021D894C ; =0x0000FFFF
	cmp r1, r0
	beq _021D88FA
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	mov r2, #0
	bl FUN_02038C78
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D88FA:
	ldrh r0, [r5]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	beq _021D8914
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021D89BC
	cmp r0, #1
	bne _021D8914
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D8914:
	ldrh r0, [r5]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _021D892C
	add r0, r4, #0
	bl FUN_0205DB44
	cmp r0, #1
	bne _021D892C
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D892C:
	ldrh r0, [r5]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _021D8946
	ldr r0, _021D8950 ; =0x000005FD
	bl FUN_020054C8
	add r0, r4, #0
	bl FUN_02035080
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D8946:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021D894C: .word 0x0000FFFF
_021D8950: .word 0x000005FD

	thumb_func_start MOD05_021D8954
MOD05_021D8954: ; 0x021D8954
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, sp, #4
	add r2, sp, #0
	bl MOD05_021D90F8
	ldr r0, [r4, #0xc]
	bl FUN_020462AC
	bl FUN_0205F244
	cmp r0, #1
	bne _021D8998
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	bl FUN_0204BA68
	cmp r0, #1
	bne _021D8992
	add r0, r4, #0
	bl FUN_0204BA90
	add r1, r0, #0
	add r0, r4, #0
	bl FUN_02046F70
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_021D8992:
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_021D8998:
	ldr r0, [r4, #0x1c]
	ldr r0, [r0]
	bl FUN_020347D8
	cmp r0, #0
	beq _021D89B4
	add r0, r4, #0
	bl FUN_0223BA04
	cmp r0, #1
	bne _021D89B4
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_021D89B4:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021D89BC
MOD05_021D89BC: ; 0x021D89BC
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r5, r1, #0
	mov r1, #3
	ldrsb r2, [r5, r1]
	sub r1, r1, #4
	add r6, r0, #0
	cmp r2, r1
	bne _021D89D4
	add sp, #0x28
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D89D4:
	bl FUN_022426AC
	cmp r0, #0
	beq _021D89E2
	add sp, #0x28
	mov r0, #1
	pop {r4, r5, r6, pc}
_021D89E2:
	add r0, r6, #0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl MOD05_021D9114
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	bl FUN_0204A6B4
	cmp r0, #0
	bne _021D8A00
	add sp, #0x28
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D8A00:
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	add r3, sp, #0x14
	bl MOD05_021D91B0
	cmp r0, #0
	beq _021D8A4A
	mov r0, #3
	ldrsb r1, [r5, r0]
	sub r0, r0, #4
	cmp r1, r0
	beq _021D8A4A
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	bl FUN_0204A6E0
	bl FUN_020547B0
	cmp r0, #0
	beq _021D8A4A
	mov r3, #0
	str r3, [sp]
	mov r0, #3
	ldrsb r0, [r5, r0]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	bl FUN_0204C260
	add sp, #0x28
	mov r0, #1
	pop {r4, r5, r6, pc}
_021D8A4A:
	add r0, r6, #0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl MOD05_021D90F8
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	bl FUN_0204A6E0
	add r4, r0, #0
	bl FUN_020547BC
	cmp r0, #0
	bne _021D8A72
	add r0, r4, #0
	bl FUN_020547EC
	cmp r0, #0
	beq _021D8A80
_021D8A72:
	mov r0, #3
	ldrsb r0, [r5, r0]
	cmp r0, #3
	beq _021D8AF4
	add sp, #0x28
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D8A80:
	add r0, r4, #0
	bl FUN_020547C8
	cmp r0, #0
	bne _021D8A94
	add r0, r4, #0
	bl FUN_020547F8
	cmp r0, #0
	beq _021D8AA2
_021D8A94:
	mov r0, #3
	ldrsb r0, [r5, r0]
	cmp r0, #2
	beq _021D8AF4
	add sp, #0x28
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D8AA2:
	add r0, r4, #0
	bl FUN_020547E0
	cmp r0, #0
	bne _021D8AB6
	add r0, r4, #0
	bl FUN_02054810
	cmp r0, #0
	beq _021D8AC4
_021D8AB6:
	mov r0, #3
	ldrsb r0, [r5, r0]
	cmp r0, #1
	beq _021D8AF4
	add sp, #0x28
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D8AC4:
	add r0, r4, #0
	bl FUN_020548D8
	cmp r0, #0
	beq _021D8ADC
	mov r0, #3
	ldrsb r0, [r5, r0]
	cmp r0, #3
	beq _021D8AF4
	add sp, #0x28
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D8ADC:
	add r0, r4, #0
	bl FUN_020548E4
	cmp r0, #0
	beq _021D8AF4
	mov r0, #3
	ldrsb r0, [r5, r0]
	cmp r0, #2
	beq _021D8AF4
	add sp, #0x28
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D8AF4:
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	add r3, sp, #0x14
	bl MOD05_021D91B0
	cmp r0, #0
	bne _021D8B0A
	add sp, #0x28
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D8B0A:
	add r0, r4, #0
	bl FUN_020547B0
	cmp r0, #0
	beq _021D8B18
	mov r1, #1
	b _021D8B90
_021D8B18:
	add r0, r4, #0
	bl FUN_020548D8
	cmp r0, #0
	beq _021D8B26
	mov r1, #3
	b _021D8B90
_021D8B26:
	add r0, r4, #0
	bl FUN_020548E4
	cmp r0, #0
	beq _021D8B34
	mov r1, #3
	b _021D8B90
_021D8B34:
	add r0, r4, #0
	bl FUN_020547BC
	cmp r0, #0
	bne _021D8B70
	add r0, r4, #0
	bl FUN_020547EC
	cmp r0, #0
	bne _021D8B70
	add r0, r4, #0
	bl FUN_020547C8
	cmp r0, #0
	bne _021D8B70
	add r0, r4, #0
	bl FUN_020547F8
	cmp r0, #0
	bne _021D8B70
	add r0, r4, #0
	bl FUN_020547E0
	cmp r0, #0
	bne _021D8B70
	add r0, r4, #0
	bl FUN_02054810
	cmp r0, #0
	beq _021D8B8A
_021D8B70:
	mov r3, #0
	str r3, [sp]
	mov r0, #3
	ldrsb r0, [r5, r0]
	str r0, [sp, #4]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	bl FUN_0204C29C
	add sp, #0x28
	mov r0, #1
	pop {r4, r5, r6, pc}
_021D8B8A:
	add sp, #0x28
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D8B90:
	mov r3, #0
	str r3, [sp]
	mov r0, #3
	ldrsb r0, [r5, r0]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	bl FUN_0204C260
	mov r0, #1
	add sp, #0x28
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021D8BAC
MOD05_021D8BAC: ; 0x021D8BAC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x38]
	add r4, r1, #0
	bl FUN_020552F8
	add r6, r0, #0
	add r0, r4, #0
	bl FUN_02054878
	cmp r0, #0
	beq _021D8BCC
	cmp r6, #0
	bne _021D8BCC
	ldr r0, _021D8CE4 ; =0x000007E2
	pop {r3, r4, r5, r6, r7, pc}
_021D8BCC:
	add r0, r4, #0
	bl FUN_02054914
	cmp r0, #0
	beq _021D8BDA
	ldr r0, _021D8CE8 ; =0x000009C4
	pop {r3, r4, r5, r6, r7, pc}
_021D8BDA:
	add r0, r4, #0
	bl FUN_02054920
	cmp r0, #0
	beq _021D8BE8
	ldr r0, _021D8CEC ; =0x000009C5
	pop {r3, r4, r5, r6, r7, pc}
_021D8BE8:
	add r0, r4, #0
	bl FUN_0205492C
	cmp r0, #0
	beq _021D8BF6
	ldr r0, _021D8CF0 ; =0x000009C6
	pop {r3, r4, r5, r6, r7, pc}
_021D8BF6:
	add r0, r4, #0
	bl FUN_02054938
	cmp r0, #0
	beq _021D8C04
	ldr r0, _021D8CF4 ; =0x000009C7
	pop {r3, r4, r5, r6, r7, pc}
_021D8C04:
	add r0, r4, #0
	bl FUN_02054944
	cmp r0, #0
	beq _021D8C12
	ldr r0, _021D8CF8 ; =0x000009C8
	pop {r3, r4, r5, r6, r7, pc}
_021D8C12:
	add r0, r4, #0
	bl FUN_02054950
	cmp r0, #0
	beq _021D8C20
	ldr r0, _021D8CFC ; =0x000009C9
	pop {r3, r4, r5, r6, r7, pc}
_021D8C20:
	add r0, r4, #0
	bl FUN_0205495C
	cmp r0, #0
	beq _021D8C2E
	ldr r0, _021D8D00 ; =0x000009CA
	pop {r3, r4, r5, r6, r7, pc}
_021D8C2E:
	add r0, r4, #0
	bl FUN_02054968
	cmp r0, #0
	beq _021D8C3C
	ldr r0, _021D8D04 ; =0x000009CB
	pop {r3, r4, r5, r6, r7, pc}
_021D8C3C:
	add r0, r4, #0
	bl FUN_02054A48
	cmp r0, #0
	beq _021D8C4A
	ldr r0, _021D8D08 ; =0x00002716
	pop {r3, r4, r5, r6, r7, pc}
_021D8C4A:
	add r0, r4, #0
	bl FUN_02054884
	cmp r0, #0
	beq _021D8C58
	ldr r0, _021D8D0C ; =0x000009CC
	pop {r3, r4, r5, r6, r7, pc}
_021D8C58:
	add r0, r4, #0
	bl FUN_02054A54
	cmp r0, #0
	beq _021D8C66
	ldr r0, _021D8D10 ; =0x000007EE
	pop {r3, r4, r5, r6, r7, pc}
_021D8C66:
	add r0, r4, #0
	bl FUN_02054B14
	cmp r0, #0
	beq _021D8C78
	cmp r6, #0
	bne _021D8C78
	ldr r0, _021D8D14 ; =0x00002774
	pop {r3, r4, r5, r6, r7, pc}
_021D8C78:
	add r0, r4, #0
	add r1, r6, #0
	bl MOD05_021E69BC
	cmp r0, #0
	beq _021D8C88
	ldr r0, _021D8D18 ; =0x00002713
	pop {r3, r4, r5, r6, r7, pc}
_021D8C88:
	ldr r0, [r5, #0x38]
	bl FUN_020553C4
	cmp r0, #2
	beq _021D8CE0
	ldr r0, [r5, #0xc]
	bl FUN_020238F4
	add r6, r0, #0
	ldr r0, [r5, #0x38]
	bl FUN_02055320
	add r7, r0, #0
	ldr r0, [r5, #0x38]
	bl FUN_0205532C
	add r2, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	bl FUN_0204A6E0
	add r1, r0, #0
	ldr r0, [r5, #0x38]
	add r2, r4, #0
	bl MOD05_021E643C
	cmp r0, #0
	beq _021D8CE0
	add r0, r6, #0
	mov r1, #4
	bl FUN_020239D0
	cmp r0, #0
	beq _021D8CE0
	ldr r0, [r5, #0xc]
	bl FUN_0206BB1C
	mov r1, #0x39
	bl FUN_0204A138
	cmp r0, #0xff
	beq _021D8CE0
	ldr r0, _021D8D1C ; =0x00002714
	pop {r3, r4, r5, r6, r7, pc}
_021D8CE0:
	ldr r0, _021D8D20 ; =0x0000FFFF
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021D8CE4: .word 0x000007E2
_021D8CE8: .word 0x000009C4
_021D8CEC: .word 0x000009C5
_021D8CF0: .word 0x000009C6
_021D8CF4: .word 0x000009C7
_021D8CF8: .word 0x000009C8
_021D8CFC: .word 0x000009C9
_021D8D00: .word 0x000009CA
_021D8D04: .word 0x000009CB
_021D8D08: .word 0x00002716
_021D8D0C: .word 0x000009CC
_021D8D10: .word 0x000007EE
_021D8D14: .word 0x00002774
_021D8D18: .word 0x00002713
_021D8D1C: .word 0x00002714
_021D8D20: .word 0x0000FFFF

	thumb_func_start MOD05_021D8D24
MOD05_021D8D24: ; 0x021D8D24
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl FUN_02242404
	cmp r0, #0
	beq _021D8D34
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D8D34:
	ldr r0, [r5, #0x38]
	bl FUN_020552F8
	add r2, r0, #0
	ldr r1, [r5, #0x38]
	add r0, r5, #0
	bl MOD05_021E72FC
	cmp r0, #1
	bne _021D8D4C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D8D4C:
	ldr r0, [r5, #0x38]
	bl FUN_02055320
	add r4, r0, #0
	ldr r0, [r5, #0x38]
	bl FUN_0205532C
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl FUN_0204A6E0
	add r6, r0, #0
	add r0, r5, #0
	bl MOD05_021D8E1C
	cmp r0, #1
	bne _021D8D76
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D8D76:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	add r3, r6, #0
	bl MOD05_021D8E54
	cmp r0, #1
	bne _021D8D90
	add r0, r5, #0
	bl MOD05_021D9290
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D8D90:
	ldr r0, [r5, #0x38]
	bl FUN_020556B4
	cmp r0, #0
	beq _021D8D9E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D8D9E:
	add r0, r5, #0
	mov r1, #5
	mov r2, #1
	bl MOD05_021EFA9C
	add r0, r5, #0
	bl MOD05_021D9010
	cmp r0, #1
	bne _021D8DB6
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D8DB6:
	add r0, r5, #0
	bl MOD05_021D9090
	cmp r0, #1
	bne _021D8DC4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D8DC4:
	add r0, r5, #0
	bl MOD05_021D8F38
	cmp r0, #1
	bne _021D8DD2
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D8DD2:
	add r0, r5, #0
	bl MOD05_021D8F84
	cmp r0, #1
	bne _021D8DE0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D8DE0:
	add r0, r5, #0
	bl MOD05_021D8F90
	cmp r0, #1
	bne _021D8DEE
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D8DEE:
	add r0, r5, #0
	bl MOD05_021D8F9C
	cmp r0, #1
	bne _021D8DFC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D8DFC:
	add r0, r5, #0
	bl MOD05_021D8FA8
	cmp r0, #0
	beq _021D8E0C
	add r0, r5, #0
	bl MOD05_021D8FD0
_021D8E0C:
	ldr r0, [r5, #0xc]
	bl FUN_020462AC
	bl FUN_0205F56C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021D8E1C
MOD05_021D8E1C: ; 0x021D8E1C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl FUN_02034B5C
	add r5, r0, #0
	add r0, r4, #0
	bl FUN_02034B54
	add r2, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl FUN_02037264
	add r1, r0, #0
	ldr r0, _021D8E50 ; =0x0000FFFF
	cmp r1, r0
	beq _021D8E4A
	add r0, r4, #0
	mov r2, #0
	bl FUN_02038C78
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D8E4A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D8E50: .word 0x0000FFFF

	thumb_func_start MOD05_021D8E54
MOD05_021D8E54: ; 0x021D8E54
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r3, #0
	add r3, sp, #0xc
	add r4, r0, #0
	bl MOD05_021D91B0
	cmp r0, #0
	bne _021D8E6C
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D8E6C:
	add r0, r5, #0
	bl FUN_020548C0
	cmp r0, #1
	bne _021D8EB0
	ldr r0, [r4, #0x38]
	bl FUN_020552F8
	cmp r0, #2
	bne _021D8E84
	mov r0, #3
	b _021D8E96
_021D8E84:
	cmp r0, #3
	bne _021D8E8C
	mov r0, #2
	b _021D8E96
_021D8E8C:
	bl ErrorHandling
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D8E96:
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	bl FUN_0204C260
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D8EB0:
	add r0, r5, #0
	bl FUN_020548CC
	cmp r0, #1
	bne _021D8EEC
	ldr r0, [r4, #0x38]
	bl FUN_020552F8
	cmp r0, #2
	beq _021D8ED2
	cmp r0, #3
	beq _021D8ED2
	bl ErrorHandling
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D8ED2:
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	bl FUN_0204C260
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D8EEC:
	add r0, r5, #0
	bl FUN_020547D4
	cmp r0, #0
	bne _021D8F00
	add r0, r5, #0
	bl FUN_02054804
	cmp r0, #0
	beq _021D8F16
_021D8F00:
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	bl FUN_0204C29C
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D8F16:
	add r0, r5, #0
	bl FUN_02054B60
	cmp r0, #0
	beq _021D8F30
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	bl FUN_02049718
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D8F30:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021D8F38
MOD05_021D8F38: ; 0x021D8F38
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_0206BB1C
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_02023D58
	add r1, r5, #0
	add r2, r4, #0
	bl MOD05_021ED378
	cmp r0, #1
	bne _021D8F7A
	ldr r0, [r4, #0xc]
	bl FUN_02029FC8
	add r5, r0, #0
	mov r1, #0xb
	bl FUN_0202A0E8
	add r0, r5, #0
	mov r1, #0xf
	bl FUN_0202A170
	ldr r1, _021D8F80 ; =0x000007EF
	add r0, r4, #0
	mov r2, #0
	bl FUN_02038C78
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D8F7A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D8F80: .word 0x000007EF

	thumb_func_start MOD05_021D8F84
MOD05_021D8F84: ; 0x021D8F84
	push {r3, lr}
	bl MOD05_021E1654
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021D8F90
MOD05_021D8F90: ; 0x021D8F90
	push {r3, lr}
	bl FUN_0205E4A4
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021D8F9C
MOD05_021D8F9C: ; 0x021D8F9C
	ldr r3, _021D8FA4 ; =0x0224C24D
	add r1, r0, #0
	ldr r0, [r1, #0xc]
	bx r3
	.balign 4, 0
_021D8FA4: .word 0x0224C24D

	thumb_func_start MOD05_021D8FA8
MOD05_021D8FA8: ; 0x021D8FA8
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	mov r5, #0
	bl FUN_020462AC
	add r4, r0, #0
	bl FUN_0205F780
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, #0x80
	blo _021D8FC6
	add r1, r5, #0
	mov r5, #1
_021D8FC6:
	add r0, r4, #0
	bl FUN_0205F790
	add r0, r5, #0
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021D8FD0
MOD05_021D8FD0: ; 0x021D8FD0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_0206BB1C
	add r6, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r0, [r0]
	bl FUN_02034824
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r6, #0
	bl FUN_0206B9AC
	add r7, r0, #0
	mov r4, #0
	cmp r7, #0
	ble _021D900C
_021D8FF6:
	add r0, r6, #0
	add r1, r4, #0
	bl FUN_0206B9B0
	mov r1, #5
	add r2, r5, #0
	bl FUN_020688E8
	add r4, r4, #1
	cmp r4, r7
	blt _021D8FF6
_021D900C:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021D9010
MOD05_021D9010: ; 0x021D9010
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl FUN_0206BB1C
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl FUN_02034E30
	bl FUN_02034E2C
	ldrh r1, [r0]
	add r1, r1, #1
	strh r1, [r0]
	ldrh r2, [r0]
	mov r1, #3
	and r1, r2
	strh r1, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _021D903E
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D903E:
	ldr r0, [r5, #0x1c]
	ldr r0, [r0]
	bl FUN_02034824
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl FUN_0204A29C
	cmp r0, #0
	beq _021D9060
	cmp r0, #1
	beq _021D9064
	cmp r0, #2
	beq _021D9070
	b _021D9086
_021D9060:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D9064:
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x20]
	bl MOD05_021F4724
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D9070:
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x20]
	bl MOD05_021F4724
	ldr r1, _021D908C ; =0x000007D3
	add r0, r5, #0
	mov r2, #0
	bl FUN_02038C78
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D9086:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D908C: .word 0x000007D3

	thumb_func_start MOD05_021D9090
MOD05_021D9090: ; 0x021D9090
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_020462AC
	bl FUN_0205F214
	cmp r0, #0
	bne _021D90A6
	mov r0, #0
	pop {r4, pc}
_021D90A6:
	ldr r0, [r4, #0xc]
	bl FUN_02034E30
	bl FUN_02034E24
	ldrh r0, [r0]
	cmp r0, #0
	bne _021D90C4
	ldr r1, _021D90F0 ; =0x00002262
	add r0, r4, #0
	mov r2, #0
	bl FUN_02038C78
	mov r0, #1
	pop {r4, pc}
_021D90C4:
	ldr r0, [r4, #0xc]
	bl FUN_02034E30
	bl FUN_02034E28
	ldrh r1, [r0]
	add r1, r1, #1
	strh r1, [r0]
	ldrh r1, [r0]
	mov r0, #0x7d
	lsl r0, r0, #2
	cmp r1, r0
	blo _021D90EC
	ldr r1, _021D90F4 ; =0x00002261
	add r0, r4, #0
	mov r2, #0
	bl FUN_02038C78
	mov r0, #1
	pop {r4, pc}
_021D90EC:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_021D90F0: .word 0x00002262
_021D90F4: .word 0x00002261

	thumb_func_start MOD05_021D90F8
MOD05_021D90F8: ; 0x021D90F8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x38]
	add r4, r1, #0
	add r6, r2, #0
	bl FUN_02055320
	str r0, [r4]
	ldr r0, [r5, #0x38]
	bl FUN_0205532C
	str r0, [r6]
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021D9114
MOD05_021D9114: ; 0x021D9114
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x38]
	add r4, r1, #0
	add r6, r2, #0
	bl FUN_020552F8
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl MOD05_021D9130
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021D9130
MOD05_021D9130: ; 0x021D9130
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r3, #0
	add r6, r1, #0
	add r1, r4, #0
	add r2, r5, #0
	bl MOD05_021D90F8
	cmp r6, #3
	bhi _021D9176
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D9150: ; jump table
	.short _021D9158 - _021D9150 - 2 ; case 0
	.short _021D9160 - _021D9150 - 2 ; case 1
	.short _021D9168 - _021D9150 - 2 ; case 2
	.short _021D9170 - _021D9150 - 2 ; case 3
_021D9158:
	ldr r0, [r5]
	sub r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021D9160:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	pop {r4, r5, r6, pc}
_021D9168:
	ldr r0, [r4]
	sub r0, r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_021D9170:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021D9176:
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021D9178
MOD05_021D9178: ; 0x021D9178
	push {r4, lr}
	sub sp, #8
	add r1, sp, #4
	add r2, sp, #0
	add r4, r0, #0
	bl MOD05_021D90F8
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	bl FUN_0204A6E0
	add sp, #8
	pop {r4, pc}

	thumb_func_start MOD05_021D9194
MOD05_021D9194: ; 0x021D9194
	push {r4, lr}
	sub sp, #8
	add r1, sp, #4
	add r2, sp, #0
	add r4, r0, #0
	bl MOD05_021D9114
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	bl FUN_0204A6E0
	add sp, #8
	pop {r4, pc}

	thumb_func_start MOD05_021D91B0
MOD05_021D91B0: ; 0x021D91B0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r7, r1, #0
	str r2, [sp]
	add r5, r3, #0
	bl FUN_02034B18
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _021D91CC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D91CC:
	add r0, r4, #0
	add r1, r6, #0
	bl FUN_02034B00
	cmp r0, #0
	bne _021D91DC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D91DC:
	ldrh r3, [r0, #6]
	mov r1, #1
	lsl r1, r1, #8
	cmp r3, r1
	bne _021D920C
	ldrh r1, [r0, #4]
	ldr r0, _021D9244 ; =0x00000FFF
	cmp r1, r0
	beq _021D91F2
	bl ErrorHandling
_021D91F2:
	ldr r0, [r4, #0xc]
	bl FUN_02034E30
	bl FUN_02034DD0
	add r2, r0, #0
	ldmia r2!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r2]
	str r0, [r5]
	b _021D921E
_021D920C:
	ldrh r2, [r0, #2]
	ldrh r1, [r0]
	ldrh r0, [r0, #4]
	str r0, [r5]
	str r3, [r5, #4]
	str r1, [r5, #8]
	str r2, [r5, #0xc]
	mov r0, #1
	str r0, [r5, #0x10]
_021D921E:
	ldr r0, [r4, #0xc]
	bl FUN_02034E30
	bl FUN_02034DC4
	add r5, r0, #0
	ldr r0, [r4, #0x38]
	bl FUN_020552F8
	ldr r1, [r4, #0x1c]
	ldr r1, [r1]
	str r1, [r5]
	str r6, [r5, #4]
	ldr r1, [sp]
	str r7, [r5, #8]
	str r1, [r5, #0xc]
	str r0, [r5, #0x10]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021D9244: .word 0x00000FFF

	thumb_func_start MOD05_021D9248
MOD05_021D9248: ; 0x021D9248
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r7, r1, #0
	str r2, [sp]
	add r4, r3, #0
	bl FUN_02034E30
	bl FUN_02034DCC
	add r6, r0, #0
	ldr r3, [r5, #0x1c]
	add r2, r6, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	cmp r4, #0
	str r0, [r2]
	str r4, [r6, #0x10]
	ldr r0, [sp]
	str r7, [r6, #8]
	str r0, [r6, #0xc]
	bne _021D9280
	ldr r0, [r6, #0xc]
	add r0, r0, #1
	str r0, [r6, #0xc]
_021D9280:
	ldr r0, [r5, #0x1c]
	ldr r0, [r0]
	str r0, [r6]
	mov r0, #0
	mvn r0, r0
	str r0, [r6, #4]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021D9290
MOD05_021D9290: ; 0x021D9290
	push {r3, r4, lr}
	sub sp, #0x1c
	add r1, sp, #4
	add r2, sp, #0
	add r4, r0, #0
	bl MOD05_021D90F8
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	add r3, sp, #8
	bl MOD05_021D91B0
	cmp r0, #0
	beq _021D92DA
	ldr r0, [r4, #0x1c]
	ldr r0, [r0]
	bl FUN_02034908
	cmp r0, #1
	bne _021D931C
	ldr r0, [sp, #8]
	bl FUN_02034908
	cmp r0, #0
	bne _021D931C
	ldr r0, [r4, #0x38]
	bl FUN_020552F8
	add r3, r0, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	bl MOD05_021D9248
	add sp, #0x1c
	pop {r3, r4, pc}
_021D92DA:
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #0
	bl MOD05_021D9114
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	add r3, sp, #8
	bl MOD05_021D91B0
	cmp r0, #0
	beq _021D931C
	ldr r0, [r4, #0x1c]
	ldr r0, [r0]
	bl FUN_02034908
	cmp r0, #1
	bne _021D931C
	ldr r0, [sp, #8]
	bl FUN_02034908
	cmp r0, #0
	bne _021D931C
	ldr r0, [r4, #0x38]
	bl FUN_020552F8
	add r3, r0, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r4, #0
	bl MOD05_021D9248
_021D931C:
	add sp, #0x1c
	pop {r3, r4, pc}

	thumb_func_start MOD05_021D9320
MOD05_021D9320: ; 0x021D9320
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	str r1, [sp, #0x10]
	add r4, r3, #0
	add r0, r2, #0
	add r1, r5, #4
	add r2, r4, #0
	bl FUN_02008C9C
	str r0, [r5]
	ldr r1, _021D94B0 ; =0x00000162
	ldr r0, [sp, #0x10]
	strh r4, [r5, r1]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _021D9346
	mov r2, #4
	b _021D9348
_021D9346:
	mov r2, #6
_021D9348:
	sub r0, r1, #2
	strh r2, [r5, r0]
	bl FUN_0200965C
	mov r1, #0x16
	lsl r1, r1, #4
	ldrh r2, [r5, r1]
	add r3, r0, #0
	add r0, r4, #0
	add r1, r2, #0
	mul r1, r3
	bl FUN_02016998
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #0x1c]
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	cmp r0, #0
	bls _021D93AA
	ldr r6, [sp, #0x10]
_021D9374:
	ldr r1, [sp, #0x1c]
	add r0, r7, #0
	bl FUN_02009660
	str r0, [sp, #0x20]
	ldr r1, [r6]
	add r0, r4, #0
	bl FUN_020161A4
	ldr r1, [sp, #0x20]
	str r0, [sp, #0x24]
	add r2, r4, #0
	bl FUN_02009668
	ldr r0, [sp, #0x24]
	bl FUN_02016A18
	ldr r0, [sp, #0x1c]
	add r6, r6, #4
	add r0, r0, #1
	str r0, [sp, #0x1c]
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	blo _021D9374
_021D93AA:
	mov r6, #0
	cmp r0, #0
	bls _021D93E0
	str r5, [sp, #0x18]
_021D93B2:
	add r0, r7, #0
	add r1, r6, #0
	bl FUN_02009660
	bl FUN_020096CC
	add r1, r6, #0
	add r2, r4, #0
	bl FUN_02008DEC
	mov r1, #0x13
	ldr r2, [sp, #0x18]
	lsl r1, r1, #4
	str r0, [r2, r1]
	add r0, r2, #0
	add r0, r0, #4
	str r0, [sp, #0x18]
	add r0, r1, #0
	add r0, #0x30
	ldrh r0, [r5, r0]
	add r6, r6, #1
	cmp r6, r0
	blo _021D93B2
_021D93E0:
	mov r1, #0
	str r1, [sp, #0x14]
	cmp r0, #0
	bls _021D942C
	add r6, r5, #0
_021D93EA:
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	bl FUN_02009660
	str r0, [sp, #0x28]
	bl FUN_020096CC
	add r1, r4, #0
	bl FUN_02009424
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r0, r1, #0
	mov r2, #0x52
	sub r0, #0x18
	lsl r2, r2, #2
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x28]
	ldr r2, [r6, r2]
	add r3, r4, #0
	bl FUN_020093A8
	ldr r0, [sp, #0x14]
	add r6, r6, #4
	add r0, r0, #1
	str r0, [sp, #0x14]
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	ldr r1, [sp, #0x14]
	cmp r1, r0
	blo _021D93EA
_021D942C:
	mov r6, #0
	cmp r0, #0
	bls _021D944A
_021D9432:
	add r0, r7, #0
	add r1, r6, #0
	bl FUN_02009660
	bl FUN_020096B4
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	add r6, r6, #1
	cmp r6, r0
	blo _021D9432
_021D944A:
	add r0, r7, #0
	bl FUN_02016A18
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02009B44
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02009DAC
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	ldr r1, [r1, #0x18]
	bl FUN_020161A4
	mov r3, #0x4e
	lsl r3, r3, #2
	ldr r1, [r5, r3]
	add r2, r3, #0
	str r1, [sp]
	add r1, r3, #4
	ldr r1, [r5, r1]
	sub r2, #8
	str r1, [sp, #4]
	add r1, r3, #0
	add r1, #8
	ldr r1, [r5, r1]
	add r6, r0, #0
	str r1, [sp, #8]
	add r1, r3, #0
	add r1, #0xc
	ldr r1, [r5, r1]
	sub r3, r3, #4
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	add r1, r4, #0
	bl FUN_02008BE0
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r6, #0
	bl FUN_02016A18
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021D94B0: .word 0x00000162

	thumb_func_start MOD05_021D94B4
MOD05_021D94B4: ; 0x021D94B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	bl FUN_0201FD58
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02008C80
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02009C30
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02009E28
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	mov r6, #0
	cmp r0, #0
	bls _021D950C
	mov r7, #0x16
	add r4, r5, #0
	lsl r7, r7, #4
_021D94EE:
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02009448
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02008E2C
	ldrh r0, [r5, r7]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blo _021D94EE
_021D950C:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021D9510
MOD05_021D9510: ; 0x021D9510
	push {r3, r4, r5, r6, lr}
	sub sp, #0x3c
	add r2, r0, #0
	add r4, r1, #0
	mov r0, #4
	ldrsh r0, [r4, r0]
	mov r3, #0x4b
	lsl r3, r3, #2
	lsl r0, r0, #0xc
	str r0, [sp]
	mov r0, #6
	ldrsh r0, [r4, r0]
	add r6, sp, #0
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #8
	ldrsh r0, [r4, r0]
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldr r0, [r2]
	str r0, [sp, #0xc]
	ldr r0, [r2, r3]
	ldr r1, [r4]
	ldr r5, [r0]
	mov r0, #0x24
	mul r0, r1
	add r0, r5, r0
	str r0, [sp, #0x10]
	ldmia r6!, {r0, r1}
	add r5, sp, #0x14
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	ldr r6, _021D9598 ; =0x021F64D8
	str r0, [r5]
	ldmia r6!, {r0, r1}
	add r5, sp, #0x20
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	mov r1, #0
	str r0, [r5]
	add r0, sp, #0
	strh r1, [r0, #0x2c]
	ldr r0, [r4, #0xc]
	add r3, #0x36
	str r0, [sp, #0x30]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x34]
	ldrh r0, [r2, r3]
	str r0, [sp, #0x38]
	add r0, sp, #0xc
	bl FUN_0201FE94
	add r5, r0, #0
	bne _021D9580
	bl ErrorHandling
_021D9580:
	ldrh r1, [r4, #0xa]
	add r0, r5, #0
	bl FUN_02020130
	ldr r1, [r4, #0x10]
	add r0, r5, #0
	bl FUN_0202027C
	add r0, r5, #0
	add sp, #0x3c
	pop {r3, r4, r5, r6, pc}
	nop
_021D9598: .word 0x021F64D8

	thumb_func_start MOD05_021D959C
MOD05_021D959C: ; 0x021D959C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	str r1, [sp]
	add r0, r2, #0
	str r3, [sp, #4]
	add r1, r7, #4
	add r2, r3, #0
	bl FUN_02008C9C
	str r0, [r7]
	ldr r1, _021D9678 ; =0x00000162
	ldr r0, [sp, #4]
	strh r0, [r7, r1]
	ldr r0, [sp]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _021D95C8
	ldr r0, [sp]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _021D95DE
_021D95C8:
	mov r1, #0x16
	mov r0, #4
	lsl r1, r1, #4
	strh r0, [r7, r1]
	add r0, r1, #0
	mov r2, #0
	sub r0, #0x20
	str r2, [r7, r0]
	sub r1, #0x1c
	str r2, [r7, r1]
	b _021D95E4
_021D95DE:
	mov r2, #6
	sub r0, r1, #2
	strh r2, [r7, r0]
_021D95E4:
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r1, [r7, r0]
	mov r4, #0
	cmp r1, #0
	bls _021D9614
	ldr r5, [sp]
	add r6, r7, #0
_021D95F4:
	ldr r0, [r5]
	ldr r2, [sp, #4]
	add r1, r4, #0
	bl FUN_02008DEC
	mov r1, #0x13
	lsl r1, r1, #4
	str r0, [r6, r1]
	add r0, r1, #0
	add r0, #0x30
	ldrh r1, [r7, r0]
	add r4, r4, #1
	add r5, r5, #4
	add r6, r6, #4
	cmp r4, r1
	blo _021D95F4
_021D9614:
	mov r0, #0
	str r0, [sp, #8]
	cmp r1, #0
	bls _021D9672
	mov r6, #0x52
	add r5, r7, #0
	add r4, r0, #0
	lsl r6, r6, #2
_021D9624:
	ldr r0, [sp]
	ldr r0, [r0]
	cmp r0, #0
	beq _021D9658
	ldr r1, [sp, #4]
	bl FUN_02009424
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r3, [r5, r0]
	mov r1, #0
	ldr r0, [r3, #4]
	cmp r0, #0
	bls _021D9658
	add r2, r1, #0
_021D9648:
	ldr r0, [r3]
	add r1, r1, #1
	str r4, [r0, r2]
	ldr r3, [r5, r6]
	add r2, r2, #4
	ldr r0, [r3, #4]
	cmp r1, r0
	blo _021D9648
_021D9658:
	ldr r0, [sp]
	add r5, r5, #4
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r1, [r7, r0]
	ldr r0, [sp, #8]
	cmp r0, r1
	blo _021D9624
_021D9672:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021D9678: .word 0x00000162

	thumb_func_start MOD05_021D967C
MOD05_021D967C: ; 0x021D967C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x4d
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x30]
	add r6, r2, #0
	add r7, r3, #0
	bl FUN_0200945C
	cmp r0, #0
	bne _021D96A0
	bl ErrorHandling
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021D96A0:
	ldr r0, [sp, #0x30]
	add r2, r6, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r3, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	ldr r0, _021D96F0 ; =0x00000162
	ldrh r1, [r5, r0]
	sub r0, #0x2e
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl FUN_02008FEC
	add r4, r0, #0
	beq _021D96E8
	bl FUN_02009D68
	cmp r0, #1
	beq _021D96D0
	bl ErrorHandling
_021D96D0:
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl MOD05_021D9780
	ldr r1, [sp, #0x2c]
	add r0, r4, #0
	bl FUN_02009E88
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021D96E8:
	bl ErrorHandling
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021D96F0: .word 0x00000162

	thumb_func_start MOD05_021D96F4
MOD05_021D96F4: ; 0x021D96F4
	push {r4, lr}
	sub sp, #8
	mov r4, #2
	str r4, [sp]
	ldr r4, [sp, #0x10]
	str r4, [sp, #4]
	bl MOD05_021D97B4
	add sp, #8
	pop {r4, pc}

	thumb_func_start MOD05_021D9708
MOD05_021D9708: ; 0x021D9708
	push {r4, lr}
	sub sp, #8
	mov r4, #3
	str r4, [sp]
	ldr r4, [sp, #0x10]
	str r4, [sp, #4]
	bl MOD05_021D97B4
	add sp, #8
	pop {r4, pc}

	thumb_func_start MOD05_021D971C
MOD05_021D971C: ; 0x021D971C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x13
	lsl r0, r0, #4
	add r4, r1, #0
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x24]
	add r6, r2, #0
	add r7, r3, #0
	bl FUN_0200945C
	cmp r0, #0
	bne _021D9740
	bl ErrorHandling
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021D9740:
	ldr r0, [sp, #0x24]
	add r2, r6, #0
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r3, r7, #0
	str r0, [sp, #4]
	ldr r0, _021D977C ; =0x00000162
	ldrh r1, [r5, r0]
	sub r0, #0x32
	str r1, [sp, #8]
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl FUN_02008F34
	add r4, r0, #0
	beq _021D9774
	bl FUN_02009B04
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl MOD05_021D9780
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021D9774:
	bl ErrorHandling
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021D977C: .word 0x00000162

	thumb_func_start MOD05_021D9780
MOD05_021D9780: ; 0x021D9780
	push {r3, r4, r5, r6}
	ldr r6, [r0, #4]
	mov r3, #0
	cmp r6, #0
	ble _021D97AC
	ldr r5, [r0]
	add r4, r5, #0
_021D978E:
	ldr r2, [r4]
	cmp r2, #0
	bne _021D97A4
	lsl r2, r3, #2
	str r1, [r5, r2]
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_021D97A4:
	add r3, r3, #1
	add r4, r4, #4
	cmp r3, r6
	blt _021D978E
_021D97AC:
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021D97B4
MOD05_021D97B4: ; 0x021D97B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [sp, #0x28]
	add r7, r1, #0
	lsl r4, r0, #2
	mov r0, #0x13
	lsl r0, r0, #4
	add r6, r5, r0
	ldr r0, [r6, r4]
	ldr r1, [sp, #0x2c]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl FUN_0200945C
	cmp r0, #0
	bne _021D97DE
	bl ErrorHandling
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021D97DE:
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, _021D981C ; =0x00000162
	add r1, r7, #0
	ldrh r0, [r5, r0]
	str r0, [sp, #8]
	ldr r0, [r6, r4]
	bl FUN_020090AC
	add r1, r0, #0
	beq _021D9814
	mov r0, #0x52
	add r2, r5, r4
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	bl MOD05_021D9780
	cmp r0, #1
	beq _021D9818
	bl ErrorHandling
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021D9814:
	bl ErrorHandling
_021D9818:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021D981C: .word 0x00000162

	thumb_func_start MOD05_021D9820
MOD05_021D9820: ; 0x021D9820
	push {r3, r4, r5, r6, lr}
	sub sp, #0x74
	add r5, r0, #0
	ldr r0, _021D99F4 ; =0x00000162
	add r4, r1, #0
	ldrh r0, [r5, r0]
	mov r1, #0x10
	bl FUN_02016998
	add r6, r0, #0
	ldr r0, _021D99F4 ; =0x00000162
	mov r1, #8
	ldrh r0, [r5, r0]
	bl FUN_02016998
	str r0, [r6, #8]
	ldr r0, _021D99F4 ; =0x00000162
	mov r1, #0x24
	ldrh r0, [r5, r0]
	bl FUN_02016998
	ldr r1, [r6, #8]
	add r2, r4, #0
	str r0, [r1]
	ldr r0, [r6, #8]
	mov r1, #0
	ldr r0, [r0]
	add r3, sp, #0x2c
	str r0, [r6, #4]
_021D985A:
	ldr r0, [r2, #0x14]
	add r1, r1, #1
	add r2, r2, #4
	stmia r3!, {r0}
	cmp r1, #6
	blt _021D985A
	mov r1, #5
	lsl r1, r1, #6
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _021D9878
	add r1, r1, #4
	ldr r1, [r5, r1]
	cmp r1, #0
	bne _021D9882
_021D9878:
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x3c]
	str r0, [sp, #0x40]
	b _021D98B8
_021D9882:
	mov r2, #0
	ldr r1, [sp, #0x3c]
	mvn r2, r2
	cmp r1, r2
	beq _021D989A
	bl FUN_0200945C
	cmp r0, #0
	bne _021D989A
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x3c]
_021D989A:
	mov r0, #0
	ldr r1, [sp, #0x40]
	mvn r0, r0
	cmp r1, r0
	beq _021D98B8
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0200945C
	cmp r0, #0
	bne _021D98B8
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x40]
_021D98B8:
	ldr r0, [sp, #0x38]
	str r0, [sp]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	str r0, [sp, #8]
	ldr r0, [r4, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x2c]
	str r0, [sp, #0x10]
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	str r1, [sp, #0x14]
	add r1, r0, #4
	ldr r1, [r5, r1]
	str r1, [sp, #0x18]
	add r1, r0, #0
	add r1, #8
	ldr r1, [r5, r1]
	str r1, [sp, #0x1c]
	add r1, r0, #0
	add r1, #0xc
	ldr r1, [r5, r1]
	str r1, [sp, #0x20]
	add r1, r0, #0
	add r1, #0x10
	ldr r1, [r5, r1]
	add r0, #0x14
	str r1, [sp, #0x24]
	ldr r0, [r5, r0]
	str r0, [sp, #0x28]
	ldr r0, [r6, #4]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x34]
	bl FUN_02008AA4
	ldr r0, [r5]
	str r0, [sp, #0x44]
	ldr r0, [r6, #4]
	str r0, [sp, #0x48]
	mov r0, #0
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _021D9926
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _021D9934
_021D9926:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_021D9934:
	bl _ffix
	str r0, [sp, #0x4c]
	mov r0, #2
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _021D9954
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _021D9962
_021D9954:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_021D9962:
	bl _ffix
	str r0, [sp, #0x50]
	mov r0, #4
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _021D9982
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _021D9990
_021D9982:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_021D9990:
	bl _ffix
	str r0, [sp, #0x54]
	ldr r0, [r4, #0x10]
	cmp r0, #2
	bne _021D99A6
	mov r0, #3
	ldr r1, [sp, #0x50]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x50]
_021D99A6:
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x58]
	str r0, [sp, #0x5c]
	str r0, [sp, #0x60]
	mov r1, #0
	add r0, sp, #0x2c
	strh r1, [r0, #0x38]
	ldr r0, [r4, #8]
	str r0, [sp, #0x68]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x6c]
	ldr r0, _021D99F4 ; =0x00000162
	ldrh r0, [r5, r0]
	str r0, [sp, #0x70]
	add r0, sp, #0x44
	bl FUN_0201FE94
	str r0, [r6]
	cmp r0, #0
	beq _021D99EA
	bl FUN_020202A0
	add r5, r0, #0
	ldrh r1, [r4, #6]
	ldr r0, [r6]
	bl FUN_02020130
	ldr r1, [r4, #0xc]
	ldr r0, [r6]
	add r1, r5, r1
	bl FUN_02020248
	b _021D99EE
_021D99EA:
	bl ErrorHandling
_021D99EE:
	add r0, r6, #0
	add sp, #0x74
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021D99F4: .word 0x00000162

	thumb_func_start MOD05_021D99F8
MOD05_021D99F8: ; 0x021D99F8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6]
	bl FUN_0201FD58
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_02009C30
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_02009E28
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r0, [r6, r0]
	mov r4, #0
	cmp r0, #0
	bls _021D9A46
	mov r7, #0x16
	add r5, r6, #0
	lsl r7, r7, #4
_021D9A28:
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02009448
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_02008E2C
	ldrh r0, [r6, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blo _021D9A28
_021D9A46:
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021D9A48
MOD05_021D9A48: ; 0x021D9A48
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0
	ldr r1, [r7, #0x18]
	mvn r0, r0
	add r4, r3, #0
	cmp r1, r0
	bne _021D9A60
	bl ErrorHandling
_021D9A60:
	mov r0, #0
	add r1, r6, #0
_021D9A64:
	ldr r2, [r1]
	cmp r2, #0
	beq _021D9A7A
	ldr r2, [r1, #0xc]
	cmp r4, r2
	bne _021D9A7A
	ldr r2, [r1, #4]
	cmp r2, r5
	bne _021D9A7A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D9A7A:
	add r0, r0, #1
	add r1, #0x10
	cmp r0, #2
	blt _021D9A64
	mov r2, #0
	add r1, r6, #0
_021D9A86:
	ldr r0, [r1]
	cmp r0, #0
	bne _021D9A9C
	lsl r1, r2, #4
	mov r0, #1
	str r0, [r6, r1]
	add r0, r6, r1
	str r4, [r0, #0xc]
	str r7, [r0, #8]
	str r5, [r0, #4]
	b _021D9AA4
_021D9A9C:
	add r2, r2, #1
	add r1, #0x10
	cmp r2, #2
	blt _021D9A86
_021D9AA4:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021D9AA8
MOD05_021D9AA8: ; 0x021D9AA8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0
	add r4, r1, #0
	mvn r0, r0
	add r7, r2, #0
	add r5, r3, #0
	cmp r4, r0
	bne _021D9ABE
	bl ErrorHandling
_021D9ABE:
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #4
	bl FUN_02006704
	add r4, r0, #0
	bne _021D9AD0
	bl ErrorHandling
_021D9AD0:
	add r0, r4, #0
	mov r1, #0
	bl FUN_020BC4C8
	add r6, r0, #0
	bne _021D9AE0
	bl ErrorHandling
_021D9AE0:
	ldr r0, [sp, #0x1c]
	add r1, r6, #0
	add r2, r7, #0
	bl FUN_020BB8D0
	str r0, [r5]
	cmp r5, #0
	bne _021D9AF4
	bl ErrorHandling
_021D9AF4:
	ldr r0, [r5]
	ldr r3, [sp, #0x18]
	add r1, r6, #0
	add r2, r7, #0
	bl FUN_020B8110
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021D9B04
MOD05_021D9B04: ; 0x021D9B04
	push {r3, lr}
	cmp r1, #0
	bne _021D9B0E
	mov r0, #0
	pop {r3, pc}
_021D9B0E:
	cmp r0, #0
	bne _021D9B16
	mov r0, #0
	pop {r3, pc}
_021D9B16:
	bl FUN_020B7E28
	mov r0, #1
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021D9B20
MOD05_021D9B20: ; 0x021D9B20
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_021D9B28:
	ldr r0, [r5]
	cmp r0, #0
	beq _021D9B4A
	ldr r0, [r5, #8]
	bl MOD05_021DA20C
	cmp r0, #0
	beq _021D9B4A
	ldr r1, [r5, #8]
	ldr r0, [r5, #4]
	ldr r1, [r1]
	bl MOD05_021D9B04
	str r6, [r5]
	str r6, [r5, #0xc]
	str r6, [r5, #8]
	str r6, [r5, #4]
_021D9B4A:
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #2
	blt _021D9B28
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021D9B54
MOD05_021D9B54: ; 0x021D9B54
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0xae
	mov r0, #4
	lsl r1, r1, #2
	bl FUN_02016998
	add r7, r0, #0
	mov r1, #0
	add r2, r7, #0
	add r6, r1, #0
	sub r0, r1, #1
_021D9B6A:
	str r6, [r2, #0x14]
	str r6, [r2, #0x20]
	str r6, [r2, #0x10]
	str r6, [r2, #0x18]
	str r6, [r2, #0x1c]
	str r6, [r2, #0x24]
	str r0, [r2, #0x28]
	str r6, [r2, #0x2c]
	str r6, [r2, #0x30]
	str r6, [r2, #0x34]
	add r1, r1, #1
	add r2, #0x28
	cmp r1, #0x10
	blt _021D9B6A
	mov r0, #0x29
	lsl r0, r0, #4
	add r2, r0, #0
	add r3, r0, #0
	add r5, r7, #0
	mov r4, #0
	add r1, r0, #4
	add r2, #8
	add r3, #0xc
_021D9B98:
	str r4, [r5, r0]
	str r4, [r5, r1]
	str r4, [r5, r2]
	str r4, [r5, r3]
	add r6, r6, #1
	add r5, #0x10
	cmp r6, #2
	blt _021D9B98
	mov r1, #4
	add r0, r7, #0
	add r2, r1, #0
	bl FUN_02016B20
	mov r0, #0x6e
	mov r1, #4
	bl FUN_02006670
	mov r1, #0x2b
	lsl r1, r1, #4
	str r0, [r7, r1]
	mov r0, #0x6f
	mov r1, #4
	bl FUN_02006670
	mov r1, #0xad
	lsl r1, r1, #2
	str r0, [r7, r1]
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021D9BD4
MOD05_021D9BD4: ; 0x021D9BD4
	cmp r0, #0
	bne _021D9BDC
	mov r0, #0
	bx lr
_021D9BDC:
	ldr r0, [r0]
	bx lr

	thumb_func_start MOD05_021D9BE0
MOD05_021D9BE0: ; 0x021D9BE0
	mov r1, #1
	and r0, r1
	cmp r0, #1
	beq _021D9BEA
	mov r1, #0
_021D9BEA:
	add r0, r1, #0
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021D9BF0
MOD05_021D9BF0: ; 0x021D9BF0
	asr r1, r0, #1
	mov r0, #1
	and r1, r0
	cmp r1, #1
	beq _021D9BFC
	mov r0, #0
_021D9BFC:
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021D9C00
MOD05_021D9C00: ; 0x021D9C00
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #1
	beq _021D9C0E
	bl ErrorHandling
_021D9C0E:
	ldr r0, [r4, #0x1c]
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021D9C14
MOD05_021D9C14: ; 0x021D9C14
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r0, #0
	mov r0, #0xad
	ldr r7, [sp, #0x4c]
	lsl r0, r0, #2
	add r4, r1, #0
	str r2, [sp, #8]
	ldr r0, [r7, r0]
	add r1, r6, #0
	add r2, sp, #0x10
	add r5, r3, #0
	bl FUN_02006774
	cmp r4, #4
	blt _021D9C38
	bl ErrorHandling
_021D9C38:
	lsl r1, r4, #2
	add r0, sp, #0x14
	ldr r0, [r0, r1]
	mov r1, #0
	mvn r1, r1
	str r0, [sp, #0xc]
	cmp r0, r1
	bne _021D9C4E
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021D9C4E:
	add r0, sp, #0x10
	ldrb r0, [r0, #1]
	bl MOD05_021D9BE0
	ldr r1, [sp, #0x40]
	cmp r1, r0
	beq _021D9C62
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021D9C62:
	mov r6, #0
	add r4, r7, #0
_021D9C66:
	cmp r5, #0
	beq _021D9C74
	ldr r0, [r4, #0x34]
	cmp r5, r0
	bne _021D9C74
	bl ErrorHandling
_021D9C74:
	add r6, r6, #1
	add r4, #0x28
	cmp r6, #0x10
	blt _021D9C66
	mov r2, #0
	add r1, r7, #0
_021D9C80:
	ldr r0, [r1, #0x14]
	cmp r0, #0
	bne _021D9CD8
	add r4, r2, #0
	mov r0, #0x28
	mul r4, r0
	mov r1, #1
	add r0, r7, r4
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x3c]
	add r6, r7, #0
	str r1, [r0, #0x20]
	add r6, #0x10
	mov r1, #0
	str r1, [r6, r4]
	str r1, [r0, #0x18]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x44]
	str r1, [r0, #0x1c]
	ldr r1, [sp, #0x38]
	add r3, r6, r4
	str r1, [r0, #0x30]
	str r5, [r0, #0x34]
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0xc]
	str r0, [sp]
	mov r0, #0x2b
	str r7, [sp, #4]
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	bl MOD05_021D9AA8
	add r1, r7, r4
	str r0, [r1, #0x24]
	ldr r0, [sp, #8]
	str r0, [r1, #0x28]
	mov r0, #1
	str r0, [r1, #0x2c]
	add r0, r6, r4
	bl MOD05_021DA118
	add sp, #0x24
	add r0, r6, r4
	pop {r4, r5, r6, r7, pc}
_021D9CD8:
	add r2, r2, #1
	add r1, #0x28
	cmp r2, #0x10
	blt _021D9C80
	bl ErrorHandling
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021D9CEC
MOD05_021D9CEC: ; 0x021D9CEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r4, r0, #0
	mov r0, #0xad
	add r6, r3, #0
	lsl r0, r0, #2
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r6, r0]
	add r1, r4, #0
	add r2, sp, #0x20
	bl FUN_02006774
	add r0, sp, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _021D9DBC
	mov r0, #0
	str r0, [sp, #0x14]
	add r0, sp, #0x20
	str r0, [sp, #0x10]
_021D9D16:
	ldr r0, [sp, #0x10]
	mov r1, #0
	ldr r0, [r0, #4]
	mvn r1, r1
	str r0, [sp, #0x18]
	cmp r0, r1
	beq _021D9DBC
	add r0, sp, #0x20
	ldrb r0, [r0, #1]
	bl MOD05_021D9BE0
	cmp r0, #0
	bne _021D9DBC
	mov r4, #0
	add r1, r6, #0
_021D9D34:
	ldr r0, [r1, #0x14]
	cmp r0, #0
	bne _021D9D9C
	mov r0, #0x28
	add r7, r4, #0
	mul r7, r0
	add r5, r6, r7
	mov r0, #1
	str r0, [r5, #0x14]
	mov r1, #0
	str r1, [r5, #0x20]
	str r1, [r5, #0x10]
	ldr r0, [sp, #0x18]
	str r1, [r5, #0x18]
	str r0, [r5, #0x1c]
	add r0, r6, #0
	str r0, [sp, #0x1c]
	add r0, #0x10
	str r0, [sp, #0x1c]
	str r1, [r5, #0x30]
	str r1, [r5, #0x34]
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x1c]
	str r0, [sp]
	mov r0, #0x2b
	str r6, [sp, #4]
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #8]
	add r3, r3, r7
	bl MOD05_021D9AA8
	str r0, [r5, #0x24]
	mov r0, #0
	mvn r0, r0
	str r0, [r5, #0x28]
	mov r0, #1
	str r0, [r5, #0x2c]
	ldr r0, [sp, #0x1c]
	add r0, r0, r7
	bl MOD05_021DA118
	add r0, sp, #0x20
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _021D9DA4
	add r1, r5, #0
	mov r0, #1
	str r0, [r1, #0x20]
	str r0, [r1, #0x28]
	b _021D9DA4
_021D9D9C:
	add r4, r4, #1
	add r1, #0x28
	cmp r4, #0x10
	blt _021D9D34
_021D9DA4:
	cmp r4, #0x10
	bne _021D9DAC
	bl ErrorHandling
_021D9DAC:
	ldr r0, [sp, #0x10]
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #4
	blt _021D9D16
_021D9DBC:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021D9DC0
MOD05_021D9DC0: ; 0x021D9DC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r6, [sp, #0x30]
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	str r3, [sp]
	cmp r6, #0
	bne _021D9DDC
	bl ErrorHandling
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D9DDC:
	add r0, r6, #0
	bl MOD05_021DA220
	cmp r5, r0
	blt _021D9DEC
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D9DEC:
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r5, #0
	add r2, sp, #4
	bl FUN_02006774
	cmp r4, #4
	blt _021D9E02
	bl ErrorHandling
_021D9E02:
	lsl r1, r4, #2
	add r0, sp, #8
	ldr r5, [r0, r1]
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _021D9E16
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D9E16:
	add r0, sp, #4
	ldrb r0, [r0, #1]
	bl MOD05_021D9BF0
	cmp r7, r0
	beq _021D9E28
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D9E28:
	mov r4, #0
	add r1, r6, #0
_021D9E2C:
	ldr r0, [r1, #0x1c]
	cmp r5, r0
	bne _021D9E70
	add r0, sp, #4
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _021D9E56
	add r2, r6, #0
	mov r3, #0x28
	mov r0, #0x29
	lsl r0, r0, #4
	add r2, #0x10
	mul r3, r4
	add r2, r2, r3
	lsl r3, r5, #0x18
	ldr r1, [sp]
	add r0, r6, r0
	lsr r3, r3, #0x18
	bl MOD05_021D9A48
	b _021D9E58
_021D9E56:
	mov r0, #1
_021D9E58:
	cmp r0, #0
	beq _021D9E6A
	mov r1, #0x28
	mul r1, r4
	add r1, r6, r1
	ldr r0, [sp]
	ldr r1, [r1, #0x10]
	bl FUN_020B7EFC
_021D9E6A:
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D9E70:
	add r4, r4, #1
	add r1, #0x28
	cmp r4, #0x10
	blt _021D9E2C
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021D9E80
MOD05_021D9E80: ; 0x021D9E80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, _021D9F44 ; =0x00000000
	str r1, [sp, #0xc]
	add r4, r2, #0
	str r0, [sp]
	bne _021D9E94
	bl ErrorHandling
_021D9E94:
	add r0, r4, #0
	bl MOD05_021DA220
	cmp r5, r0
	blt _021D9EA4
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021D9EA4:
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	add r2, sp, #0x10
	bl FUN_02006774
	add r0, sp, #0x10
	ldrb r0, [r0, #1]
	bl MOD05_021D9BF0
	cmp r0, #0
	beq _021D9EC4
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021D9EC4:
	mov r0, #0
	str r0, [sp, #4]
	add r0, r4, #0
	str r0, [sp, #8]
	add r0, #0x10
	add r7, sp, #0x10
	str r0, [sp, #8]
_021D9ED2:
	mov r0, #0
	ldr r3, [r7, #4]
	mvn r0, r0
	cmp r3, r0
	bne _021D9EE2
	ldr r0, [sp]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_021D9EE2:
	mov r5, #0
	add r1, r4, #0
_021D9EE6:
	ldr r0, [r1, #0x1c]
	cmp r3, r0
	bne _021D9F2A
	add r0, sp, #0x10
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _021D9F10
	mov r2, #0x28
	add r6, r5, #0
	mov r0, #0x29
	mul r6, r2
	ldr r2, [sp, #8]
	lsl r0, r0, #4
	lsl r3, r3, #0x18
	ldr r1, [sp, #0xc]
	add r0, r4, r0
	add r2, r2, r6
	lsr r3, r3, #0x18
	bl MOD05_021D9A48
	b _021D9F12
_021D9F10:
	mov r0, #1
_021D9F12:
	cmp r0, #0
	beq _021D9F32
	mov r1, #0x28
	mul r1, r5
	add r1, r4, r1
	ldr r0, [sp, #0xc]
	ldr r1, [r1, #0x10]
	bl FUN_020B7EFC
	mov r0, #1
	str r0, [sp]
	b _021D9F32
_021D9F2A:
	add r5, r5, #1
	add r1, #0x28
	cmp r5, #0x10
	blt _021D9EE6
_021D9F32:
	ldr r0, [sp, #4]
	add r7, r7, #4
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _021D9ED2
	ldr r0, [sp]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021D9F44: .word 0x00000000

	thumb_func_start MOD05_021D9F48
MOD05_021D9F48: ; 0x021D9F48
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	beq _021D9F7C
	mov r4, #0
	add r5, r6, #0
	add r7, r4, #0
_021D9F54:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021D9F74
	cmp r0, #1
	bne _021D9F6E
	ldr r1, [r5, #0x10]
	add r0, r6, #0
	bl thunk_FUN_020ae84c
	str r7, [r5, #0x10]
	ldr r0, [r5, #0x24]
	bl FUN_02016A18
_021D9F6E:
	mov r0, #0
	str r0, [r5, #0x14]
	str r0, [r5, #0x34]
_021D9F74:
	add r4, r4, #1
	add r5, #0x28
	cmp r4, #0x10
	blt _021D9F54
_021D9F7C:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021D9F80
MOD05_021D9F80: ; 0x021D9F80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	beq _021D9FB2
	cmp r5, #0
	bne _021D9F90
	bl ErrorHandling
_021D9F90:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021D9FB2
	cmp r0, #1
	bne _021D9FAC
	ldr r1, [r5]
	add r0, r4, #0
	bl thunk_FUN_020ae84c
	mov r0, #0
	str r0, [r5]
	ldr r0, [r5, #0x14]
	bl FUN_02016A18
_021D9FAC:
	mov r0, #0
	str r0, [r5, #4]
	str r0, [r5, #0x24]
_021D9FB2:
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021D9FB4
MOD05_021D9FB4: ; 0x021D9FB4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0xad
	lsl r0, r0, #2
	add r6, r1, #0
	add r1, r2, #0
	ldr r0, [r4, r0]
	add r2, sp, #0
	add r5, r3, #0
	bl FUN_02006774
	cmp r5, #4
	blt _021D9FD4
	bl ErrorHandling
_021D9FD4:
	lsl r1, r5, #2
	add r0, sp, #4
	ldr r5, [r0, r1]
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _021D9FE6
	bl ErrorHandling
_021D9FE6:
	mov r0, #0
	mov r2, #0x28
_021D9FEA:
	add r1, r0, #0
	mul r1, r2
	add r1, r4, r1
	ldr r3, [r1, #0x14]
	cmp r3, #1
	bne _021DA008
	ldr r3, [r1, #0x1c]
	cmp r5, r3
	bne _021DA008
	ldr r1, [r1, #0x10]
	add r0, r6, #0
	bl MOD05_021D9B04
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
_021DA008:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x10
	blo _021D9FEA
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DA018
MOD05_021DA018: ; 0x021DA018
	push {r4, lr}
	add r4, r0, #0
	beq _021DA038
	mov r0, #0x2b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_020066F4
	mov r0, #0xad
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020066F4
	add r0, r4, #0
	bl FUN_02016A18
_021DA038:
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DA03C
MOD05_021DA03C: ; 0x021DA03C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _021DA04A
	bl ErrorHandling
_021DA04A:
	mov r6, #0
	add r1, r6, #0
	add r2, r4, #0
_021DA050:
	ldr r0, [r2, #0x34]
	cmp r5, r0
	bne _021DA06A
	mov r0, #0x28
	add r4, #0x10
	mul r0, r1
	add r6, r4, r0
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _021DA072
	bl ErrorHandling
	b _021DA072
_021DA06A:
	add r1, r1, #1
	add r2, #0x28
	cmp r1, #0x10
	blt _021DA050
_021DA072:
	cmp r6, #0
	bne _021DA07A
	bl ErrorHandling
_021DA07A:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DA080
MOD05_021DA080: ; 0x021DA080
	push {r4, r5, lr}
	sub sp, #0x14
	add r3, r0, #0
	mov r0, #0xad
	add r5, r2, #0
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r0, [r5, r0]
	add r1, r3, #0
	add r2, sp, #0
	bl FUN_02006774
	cmp r4, #4
	blt _021DA0A0
	bl ErrorHandling
_021DA0A0:
	lsl r1, r4, #2
	add r0, sp, #4
	mov r4, #0
	ldr r1, [r0, r1]
	add r2, r4, #0
	add r3, r5, #0
_021DA0AC:
	ldr r0, [r3, #0x1c]
	cmp r1, r0
	bne _021DA0C6
	mov r0, #0x28
	add r5, #0x10
	mul r0, r2
	add r4, r5, r0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021DA0CE
	bl ErrorHandling
	b _021DA0CE
_021DA0C6:
	add r2, r2, #1
	add r3, #0x28
	cmp r2, #0x10
	blt _021DA0AC
_021DA0CE:
	cmp r4, #0
	bne _021DA0D6
	bl ErrorHandling
_021DA0D6:
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, pc}

	thumb_func_start MOD05_021DA0DC
MOD05_021DA0DC: ; 0x021DA0DC
	str r1, [r0, #0x10]
	bx lr

	thumb_func_start MOD05_021DA0E0
MOD05_021DA0E0: ; 0x021DA0E0
	mov r1, #1
	str r1, [r0, #0x1c]
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021DA0E8
MOD05_021DA0E8: ; 0x021DA0E8
	ldr r1, [r0, #0x20]
	ldr r0, [r0]
	cmp r1, #0
	bne _021DA10A
	ldr r2, [r0]
	ldr r0, [r0, #8]
	ldrh r0, [r0, #4]
	lsl r1, r0, #0xc
	mov r0, #1
	lsl r0, r0, #0xc
	sub r0, r1, r0
	cmp r2, r0
	blt _021DA106
	mov r0, #1
	bx lr
_021DA106:
	mov r0, #0
	bx lr
_021DA10A:
	ldr r0, [r0]
	cmp r0, #0
	bne _021DA114
	mov r0, #1
	bx lr
_021DA114:
	mov r0, #0
	bx lr

	thumb_func_start MOD05_021DA118
MOD05_021DA118: ; 0x021DA118
	ldr r1, [r0, #0x20]
	cmp r1, #0
	bne _021DA126
	ldr r0, [r0]
	mov r1, #0
	str r1, [r0]
	bx lr
_021DA126:
	ldr r2, [r0]
	ldr r0, [r2, #8]
	ldrh r0, [r0, #4]
	lsl r1, r0, #0xc
	mov r0, #1
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [r2]
	bx lr

	thumb_func_start MOD05_021DA138
MOD05_021DA138: ; 0x021DA138
	ldr r1, [r0, #0x20]
	cmp r1, #0
	bne _021DA150
	ldr r2, [r0]
	ldr r0, [r2, #8]
	ldrh r0, [r0, #4]
	lsl r1, r0, #0xc
	mov r0, #1
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [r2]
	bx lr
_021DA150:
	ldr r0, [r0]
	mov r1, #0
	str r1, [r0]
	bx lr

	thumb_func_start MOD05_021DA158
MOD05_021DA158: ; 0x021DA158
	ldr r1, [r0, #0x20]
	cmp r1, #0
	bne _021DA17E
	ldr r3, [r0]
	mov r1, #1
	ldr r2, [r3]
	lsl r1, r1, #0xc
	add r1, r2, r1
	str r1, [r3]
	ldr r2, [r0]
	ldr r0, [r2, #8]
	ldr r1, [r2]
	ldrh r0, [r0, #4]
	lsl r0, r0, #0xc
	cmp r1, r0
	bne _021DA19E
	mov r0, #0
	str r0, [r2]
	bx lr
_021DA17E:
	ldr r0, [r0]
	ldr r2, [r0]
	cmp r2, #0
	bgt _021DA196
	ldr r1, [r0, #8]
	ldrh r1, [r1, #4]
	lsl r2, r1, #0xc
	mov r1, #1
	lsl r1, r1, #0xc
	sub r1, r2, r1
	str r1, [r0]
	bx lr
_021DA196:
	mov r1, #1
	lsl r1, r1, #0xc
	sub r1, r2, r1
	str r1, [r0]
_021DA19E:
	bx lr

	thumb_func_start MOD05_021DA1A0
MOD05_021DA1A0: ; 0x021DA1A0
	str r1, [r0, #0x20]
	bx lr

	thumb_func_start MOD05_021DA1A4
MOD05_021DA1A4: ; 0x021DA1A4
	str r1, [r0, #0x18]
	bx lr

	thumb_func_start MOD05_021DA1A8
MOD05_021DA1A8: ; 0x021DA1A8
	str r1, [r0, #0x24]
	bx lr

	thumb_func_start MOD05_021DA1AC
MOD05_021DA1AC: ; 0x021DA1AC
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	cmp r0, #0
	beq _021DA20A
	mov r4, #0
	add r5, r0, #0
	add r5, #0x10
	add r6, r4, #0
	sub r7, r4, #1
_021DA1BE:
	ldr r0, [r5, #4]
	cmp r0, #1
	bne _021DA1F6
	ldr r0, [r5, #0x10]
	cmp r0, #1
	beq _021DA1F6
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _021DA1F6
	add r0, r5, #0
	bl MOD05_021DA158
	ldr r0, [r5, #0x18]
	cmp r0, r7
	beq _021DA1F6
	add r0, r5, #0
	bl MOD05_021DA0E8
	cmp r0, #0
	beq _021DA1F6
	ldr r0, [r5, #8]
	add r1, r0, #1
	ldr r0, [r5, #0x18]
	cmp r1, r0
	blt _021DA1F4
	str r6, [r5, #0x1c]
	b _021DA1F6
_021DA1F4:
	str r1, [r5, #8]
_021DA1F6:
	add r4, r4, #1
	add r5, #0x28
	cmp r4, #0x10
	blt _021DA1BE
	mov r1, #0x29
	ldr r0, [sp]
	lsl r1, r1, #4
	add r0, r0, r1
	bl MOD05_021D9B20
_021DA20A:
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021DA20C
MOD05_021DA20C: ; 0x021DA20C
	push {r3, lr}
	bl MOD05_021D9C00
	cmp r0, #0
	bne _021DA21A
	mov r0, #1
	pop {r3, pc}
_021DA21A:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DA220
MOD05_021DA220: ; 0x021DA220
	mov r1, #0xad
	lsl r1, r1, #2
	ldr r3, _021DA22C ; =0x02006875
	ldr r0, [r0, r1]
	bx r3
	nop
_021DA22C: .word 0x02006875

	thumb_func_start MOD05_021DA230
MOD05_021DA230: ; 0x021DA230
	push {lr}
	sub sp, #0x14
	mov r2, #0xad
	lsl r2, r2, #2
	ldr r0, [r0, r2]
	add r2, sp, #0
	bl FUN_02006774
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0
	bne _021DA24E
	add sp, #0x14
	mov r0, #0
	pop {pc}
_021DA24E:
	mov r0, #0
	add r3, sp, #0
	sub r1, r0, #1
_021DA254:
	lsl r2, r0, #2
	add r2, r3, r2
	ldr r2, [r2, #4]
	cmp r2, r1
	beq _021DA268
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #4
	blo _021DA254
_021DA268:
	add sp, #0x14
	pop {pc}

	thumb_func_start MOD05_021DA26C
MOD05_021DA26C: ; 0x021DA26C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bne _021DA278
	bl ErrorHandling
_021DA278:
	mov r1, #0x10
	mov r0, #0
	mov r2, #0x38
_021DA27E:
	cmp r1, #0x10
	bne _021DA292
	add r3, r0, #0
	mul r3, r2
	add r3, r5, r3
	add r3, #0x34
	ldrb r3, [r3]
	cmp r3, #0
	bne _021DA292
	add r1, r0, #0
_021DA292:
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x10
	blo _021DA27E
	cmp r1, #0x10
	beq _021DA2AE
	mov r0, #0x38
	add r2, r1, #0
	mul r2, r0
	add r0, r5, r2
	add r0, #0x34
	strb r4, [r0]
	b _021DA2B6
_021DA2AE:
	bl ErrorHandling
	mov r0, #0
	pop {r3, r4, r5, pc}
_021DA2B6:
	add r0, r5, r2
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DA2BC
MOD05_021DA2BC: ; 0x021DA2BC
	add r1, r0, #0
	mov r3, #0
	add r1, #0x34
	strb r3, [r1]
	str r3, [r0, #0x30]
	str r3, [r0, #0x2c]
	add r2, r3, #0
_021DA2CA:
	lsl r1, r3, #2
	add r1, r0, r1
	str r2, [r1, #0x14]
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #6
	blo _021DA2CA
	bx lr

	thumb_func_start MOD05_021DA2DC
MOD05_021DA2DC: ; 0x021DA2DC
	push {r4, r5}
	mov r4, #0
	add r3, r4, #0
	add r5, r0, #0
_021DA2E4:
	add r2, r5, #0
	add r2, #0x34
	ldrb r2, [r2]
	cmp r1, r2
	bne _021DA2F6
	mov r1, #0x38
	mul r1, r3
	add r4, r0, r1
	b _021DA2FE
_021DA2F6:
	add r3, r3, #1
	add r5, #0x38
	cmp r3, #0x10
	blt _021DA2E4
_021DA2FE:
	add r0, r4, #0
	pop {r4, r5}
	bx lr

	thumb_func_start MOD05_021DA304
MOD05_021DA304: ; 0x021DA304
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #4
	ble _021DA314
	bl ErrorHandling
_021DA314:
	cmp r5, #0
	beq _021DA31A
	str r5, [r6, #0x14]
_021DA31A:
	str r4, [r6, #0x10]
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DA320
MOD05_021DA320: ; 0x021DA320
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	add r6, r2, #0
	cmp r4, r0
	blt _021DA332
	bl ErrorHandling
_021DA332:
	lsl r0, r4, #2
	str r6, [r5, r0]
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021DA338
MOD05_021DA338: ; 0x021DA338
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	cmp r4, r0
	blt _021DA34A
	bl ErrorHandling
_021DA34A:
	lsl r0, r4, #2
	ldr r0, [r5, r0]
	str r0, [sp, #4]
	bl MOD05_021D9BD4
	str r0, [sp]
	ldr r0, [r5, #0x2c]
	bl MOD05_021D9BD4
	add r7, r0, #0
	mov r4, #0
_021DA360:
	lsl r0, r4, #2
	add r6, r5, r0
	ldr r0, [r6, #0x14]
	cmp r0, #0
	beq _021DA378
	add r1, r7, #0
	bl MOD05_021D9B04
	ldr r0, [r6, #0x14]
	ldr r1, [sp]
	bl FUN_020B7EFC
_021DA378:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _021DA360
	ldr r0, [sp, #4]
	str r0, [r5, #0x2c]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DA38C
MOD05_021DA38C: ; 0x021DA38C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x40]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x4c]
	str r2, [sp, #0x20]
	str r0, [sp, #0x4c]
	add r0, r3, #0
	mov r5, #0
	str r3, [sp, #0x24]
	ldr r6, [sp, #0x44]
	ldr r7, [sp, #0x48]
	cmp r0, #0
	ble _021DA3E4
_021DA3AC:
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x40]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	add r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	mov r3, #0
	str r7, [sp, #0x14]
	bl MOD05_021D9C14
	add r4, r0, #0
	bne _021DA3D2
	bl ErrorHandling
_021DA3D2:
	ldr r0, [sp, #0x4c]
	add r1, r5, #0
	add r2, r4, #0
	bl MOD05_021DA320
	ldr r0, [sp, #0x24]
	add r5, r5, #1
	cmp r5, r0
	blt _021DA3AC
_021DA3E4:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021DA3E8
MOD05_021DA3E8: ; 0x021DA3E8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	str r0, [sp]
	ldr r0, [r6, #0x2c]
	bl MOD05_021D9BD4
	add r7, r0, #0
	mov r4, #0
	add r5, r6, #0
_021DA3FA:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021DA406
	add r1, r7, #0
	bl MOD05_021D9B04
_021DA406:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _021DA3FA
	ldr r0, [r6, #0x10]
	mov r5, #0
	cmp r0, #0
	ble _021DA42C
	add r4, r6, #0
	add r7, r5, #0
_021DA41A:
	ldr r0, [r4]
	ldr r1, [sp]
	bl MOD05_021D9F80
	stmia r4!, {r7}
	ldr r0, [r6, #0x10]
	add r5, r5, #1
	cmp r5, r0
	blt _021DA41A
_021DA42C:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DA430
MOD05_021DA430: ; 0x021DA430
	push {r4, lr}
	mov r1, #0xe
	mov r0, #4
	lsl r1, r1, #6
	bl FUN_02016998
	add r4, r0, #0
	mov r2, #0xe
	mov r0, #0
	add r1, r4, #0
	lsl r2, r2, #6
	bl MIi_CpuClearFast
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DA450
MOD05_021DA450: ; 0x021DA450
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021DA462
	bl FUN_02016A18
	mov r0, #0
	str r0, [r4]
_021DA462:
	pop {r4, pc}

	thumb_func_start MOD05_021DA464
MOD05_021DA464: ; 0x021DA464
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	add r0, r1, #0
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	add r6, r3, #0
	bl MOD05_021DA26C
	add r5, r0, #0
	bne _021DA482
	bl ErrorHandling
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021DA482:
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x34]
	add r2, r5, #0
	bl MOD05_021DA304
	add r0, sp, #0x38
	ldrb r4, [r0]
	cmp r4, #0
	bne _021DA498
	bl ErrorHandling
_021DA498:
	cmp r4, #0
	bne _021DA49E
	mov r4, #1
_021DA49E:
	ldr r0, [sp, #0x3c]
	str r4, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x34]
	add r0, r6, #0
	str r5, [sp, #0xc]
	bl MOD05_021DA38C
	str r6, [r5, #0x30]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DA4BC
MOD05_021DA4BC: ; 0x021DA4BC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r7, r1, #0
	add r6, r3, #0
	cmp r4, #6
	blo _021DA4CE
	bl ErrorHandling
_021DA4CE:
	add r0, r5, #0
	add r1, r7, #0
	bl MOD05_021DA2DC
	add r5, r0, #0
	add r5, #0x14
	lsl r4, r4, #2
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021DA4E6
	bl ErrorHandling
_021DA4E6:
	str r6, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DA4EC
MOD05_021DA4EC: ; 0x021DA4EC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0
	bne _021DA4FC
	bl ErrorHandling
_021DA4FC:
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021DA2DC
	add r1, r6, #0
	bl MOD05_021DA338
	mov r1, #0
	bl MOD05_021DA0DC
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DA514
MOD05_021DA514: ; 0x021DA514
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r7, r2, #0
	add r4, r3, #0
	cmp r5, #0
	bne _021DA526
	bl ErrorHandling
_021DA526:
	add r0, r6, #0
	add r1, r5, #0
	bl MOD05_021DA2DC
	add r1, r7, #0
	bl MOD05_021DA338
	add r5, r0, #0
	cmp r4, #0
	beq _021DA542
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl FUN_020054C8
_021DA542:
	add r0, r5, #0
	mov r1, #0
	bl MOD05_021DA0DC
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021DA54C
MOD05_021DA54C: ; 0x021DA54C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bne _021DA55A
	bl ErrorHandling
_021DA55A:
	add r0, r4, #0
	add r1, r6, #0
	bl MOD05_021DA2DC
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021DA3E8
	add r0, r4, #0
	bl MOD05_021DA2BC
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021DA574
MOD05_021DA574: ; 0x021DA574
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bne _021DA580
	bl ErrorHandling
_021DA580:
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021DA2DC
	ldr r0, [r0, #0x2c]
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021DA58C
MOD05_021DA58C: ; 0x021DA58C
	push {r4, lr}
	bl MOD05_021DA574
	add r4, r0, #0
	bne _021DA59A
	bl ErrorHandling
_021DA59A:
	add r0, r4, #0
	bl MOD05_021DA20C
	cmp r0, #0
	beq _021DA5A8
	mov r0, #1
	pop {r4, pc}
_021DA5A8:
	mov r0, #0
	pop {r4, pc}

	thumb_func_start MOD05_021DA5AC
MOD05_021DA5AC: ; 0x021DA5AC
	push {r3, lr}
	bl MOD05_021DA2DC
	ldr r0, [r0, #0x30]
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DA5B8
MOD05_021DA5B8: ; 0x021DA5B8
	push {r3, lr}
	mov r0, #4
	mov r1, #0x28
	bl FUN_020169D8
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}

	thumb_func_start MOD05_021DA5C8
MOD05_021DA5C8: ; 0x021DA5C8
	ldr r3, _021DA5CC ; =0x02016A19
	bx r3
	.balign 4, 0
_021DA5CC: .word 0x02016A19

	thumb_func_start MOD05_021DA5D0
MOD05_021DA5D0: ; 0x021DA5D0
	str r0, [r2, #0x14]
	str r1, [r2, #0x18]
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021DA5D8
MOD05_021DA5D8: ; 0x021DA5D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #5
	bls _021DA5E8
	b _021DA78E
_021DA5E8:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DA5F4: ; jump table
	.short _021DA600 - _021DA5F4 - 2 ; case 0
	.short _021DA69A - _021DA5F4 - 2 ; case 1
	.short _021DA6EC - _021DA5F4 - 2 ; case 2
	.short _021DA700 - _021DA5F4 - 2 ; case 3
	.short _021DA714 - _021DA5F4 - 2 ; case 4
	.short _021DA772 - _021DA5F4 - 2 ; case 5
_021DA600:
	ldr r6, _021DA7A4 ; =0x021F650C
	add r3, sp, #0x34
	mov r2, #0xa
_021DA606:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021DA606
	mov r0, #0
	str r0, [r4, #0x20]
	strb r0, [r4, #0x1d]
	mov r0, #3
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	add r0, sp, #0x24
	str r0, [sp, #8]
	sub r2, r2, #2
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	add r3, r2, #0
	bl FUN_0204A840
	mov r0, #1
	strb r0, [r4, #0x1c]
	add r0, sp, #0x20
	str r0, [sp]
	add r0, sp, #0x1c
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #0x34
	mov r2, #0x14
	add r3, sp, #0x24
	bl FUN_0204A94C
	cmp r0, #0
	beq _021DA688
	ldr r0, [r5, #0x4c]
	ldr r1, [sp, #0x1c]
	bl MOD05_021DA230
	add r6, r0, #0
	strb r6, [r4, #0x1e]
	ldr r0, [r5, #0x2c]
	bl MOD05_021F4C88
	add r7, r0, #0
	ldr r0, [sp, #0x20]
	bl MOD05_021E7EC8
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	bl MOD05_021E7ECC
	ldr r1, [sp, #0x18]
	mov r2, #1
	str r1, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x4c]
	ldr r1, [r5, #0x50]
	ldr r3, [sp, #0x1c]
	bl MOD05_021DA464
	b _021DA692
_021DA688:
	bl ErrorHandling
	add sp, #0x84
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021DA692:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021DA78E
_021DA69A:
	ldr r0, [r5, #0x50]
	mov r1, #1
	bl MOD05_021DA5AC
	add r6, r0, #0
	cmp r6, #0x4b
	beq _021DA6B2
	ldr r0, [r5, #0x20]
	bl FUN_0201EC88
	mov r0, #1
	str r0, [r4, #0x20]
_021DA6B2:
	add r0, r6, #0
	bl MOD05_021DAA6C
	cmp r0, #0
	beq _021DA6C0
	ldr r6, _021DA7A8 ; =0x00000608
	b _021DA6C2
_021DA6C0:
	ldr r6, _021DA7AC ; =0x00000605
_021DA6C2:
	ldrb r0, [r4, #0x1e]
	cmp r0, #2
	bne _021DA6CC
	mov r2, #0
	b _021DA6DA
_021DA6CC:
	cmp r0, #4
	bne _021DA6D4
	mov r2, #0
	b _021DA6DA
_021DA6D4:
	bl ErrorHandling
	mov r2, #0
_021DA6DA:
	ldr r0, [r5, #0x50]
	mov r1, #1
	add r3, r6, #0
	bl MOD05_021DA514
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021DA78E
_021DA6EC:
	ldr r0, [r5, #0x50]
	mov r1, #1
	bl MOD05_021DA58C
	cmp r0, #0
	beq _021DA78E
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021DA78E
_021DA700:
	ldr r0, [r5, #0x38]
	bl FUN_020553A0
	mov r1, #0xc
	bl FUN_0205ADDC
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021DA78E
_021DA714:
	ldr r0, [r5, #0x38]
	bl FUN_020553A0
	add r6, r0, #0
	bl FUN_0205AE28
	cmp r0, #1
	bne _021DA78E
	add r0, r6, #0
	bl FUN_0205AE50
	add r0, r6, #0
	mov r1, #1
	bl FUN_0205889C
	ldr r0, [r5, #0x50]
	mov r1, #1
	bl MOD05_021DA5AC
	bl MOD05_021DAA6C
	cmp r0, #0
	beq _021DA746
	mov r6, #0
	b _021DA748
_021DA746:
	ldr r6, _021DA7B0 ; =0x00000607
_021DA748:
	ldrb r0, [r4, #0x1e]
	cmp r0, #2
	bne _021DA752
	mov r2, #1
	b _021DA760
_021DA752:
	cmp r0, #4
	bne _021DA75A
	mov r2, #1
	b _021DA760
_021DA75A:
	bl ErrorHandling
	mov r2, #1
_021DA760:
	ldr r0, [r5, #0x50]
	mov r1, #1
	add r3, r6, #0
	bl MOD05_021DA514
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021DA78E
_021DA772:
	ldr r0, [r5, #0x50]
	mov r1, #1
	bl MOD05_021DA58C
	cmp r0, #0
	beq _021DA78E
	ldr r0, [r5, #0x4c]
	ldr r1, [r5, #0x50]
	mov r2, #1
	bl MOD05_021DA54C
	add sp, #0x84
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021DA78E:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _021DA79E
	add r4, #0x1d
	ldr r0, [r5, #0x20]
	add r1, r4, #0
	bl MOD05_021DA9E8
_021DA79E:
	mov r0, #0
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021DA7A4: .word 0x021F650C
_021DA7A8: .word 0x00000608
_021DA7AC: .word 0x00000605
_021DA7B0: .word 0x00000607

	thumb_func_start MOD05_021DA7B4
MOD05_021DA7B4: ; 0x021DA7B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #6
	bls _021DA7C4
	b _021DA9BE
_021DA7C4:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DA7D0: ; jump table
	.short _021DA7DE - _021DA7D0 - 2 ; case 0
	.short _021DA896 - _021DA7D0 - 2 ; case 1
	.short _021DA8F6 - _021DA7D0 - 2 ; case 2
	.short _021DA916 - _021DA7D0 - 2 ; case 3
	.short _021DA92A - _021DA7D0 - 2 ; case 4
	.short _021DA980 - _021DA7D0 - 2 ; case 5
	.short _021DA9B0 - _021DA7D0 - 2 ; case 6
_021DA7DE:
	ldr r6, _021DA9D4 ; =0x021F655C
	add r3, sp, #0x34
	mov r2, #0xa
_021DA7E4:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021DA7E4
	mov r3, #0
	str r3, [r4, #0x20]
	strb r3, [r4, #0x1d]
	mov r0, #3
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	add r0, sp, #0x24
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	sub r2, r2, #2
	bl FUN_0204A840
	mov r0, #1
	strb r0, [r4, #0x1c]
	add r0, sp, #0x20
	str r0, [sp]
	add r0, sp, #0x1c
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #0x34
	mov r2, #0x14
	add r3, sp, #0x24
	bl FUN_0204A94C
	cmp r0, #0
	beq _021DA864
	ldr r0, [r5, #0x4c]
	ldr r1, [sp, #0x1c]
	bl MOD05_021DA230
	add r6, r0, #0
	strb r6, [r4, #0x1e]
	ldr r0, [r5, #0x2c]
	bl MOD05_021F4C88
	add r7, r0, #0
	ldr r0, [sp, #0x20]
	bl MOD05_021E7EC8
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	bl MOD05_021E7ECC
	ldr r1, [sp, #0x18]
	mov r2, #1
	str r1, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x4c]
	ldr r1, [r5, #0x50]
	ldr r3, [sp, #0x1c]
	bl MOD05_021DA464
	b _021DA878
_021DA864:
	bl ErrorHandling
	mov r0, #1
	bl MOD05_021D7CA4
	mov r0, #6
	str r0, [r4]
	add sp, #0x84
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021DA878:
	ldr r0, [r5, #0x20]
	bl FUN_0201F008
	strh r0, [r4, #0x24]
	ldr r0, [sp, #0x1c]
	cmp r0, #0x4b
	beq _021DA88E
	ldr r0, _021DA9D8 ; =0x0000FFA0
	ldr r1, [r5, #0x20]
	bl FUN_0201EF2C
_021DA88E:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021DA9BE
_021DA896:
	mov r1, #0
	str r1, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x10]
	mov r2, #9
	bl FUN_0204C1B4
	ldr r0, [r5, #0x50]
	mov r1, #1
	bl MOD05_021DA5AC
	cmp r0, #0x4b
	beq _021DA8BE
	mov r1, #1
	str r1, [r4, #0x20]
_021DA8BE:
	bl MOD05_021DAA6C
	cmp r0, #0
	beq _021DA8CA
	ldr r6, _021DA9DC ; =0x00000608
	b _021DA8CC
_021DA8CA:
	ldr r6, _021DA9E0 ; =0x00000605
_021DA8CC:
	ldrb r0, [r4, #0x1e]
	cmp r0, #2
	bne _021DA8D6
	mov r2, #0
	b _021DA8E4
_021DA8D6:
	cmp r0, #4
	bne _021DA8DE
	mov r2, #2
	b _021DA8E4
_021DA8DE:
	bl ErrorHandling
	mov r2, #0
_021DA8E4:
	ldr r0, [r5, #0x50]
	mov r1, #1
	add r3, r6, #0
	bl MOD05_021DA514
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021DA9BE
_021DA8F6:
	ldr r0, [r5, #0x50]
	mov r1, #1
	bl MOD05_021DA58C
	cmp r0, #0
	beq _021DA9BE
	ldr r0, [r5, #0x38]
	bl FUN_020553A0
	mov r1, #0
	bl FUN_0205889C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021DA9BE
_021DA916:
	ldr r0, [r5, #0x38]
	bl FUN_020553A0
	mov r1, #0xd
	bl FUN_0205ADDC
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021DA9BE
_021DA92A:
	ldr r0, [r5, #0x38]
	bl FUN_020553A0
	add r6, r0, #0
	bl FUN_0205AE28
	cmp r0, #1
	bne _021DA9BE
	add r0, r6, #0
	bl FUN_0205AE50
	ldr r0, [r5, #0x50]
	mov r1, #1
	bl MOD05_021DA5AC
	bl MOD05_021DAA6C
	cmp r0, #0
	beq _021DA954
	mov r6, #0
	b _021DA956
_021DA954:
	ldr r6, _021DA9E4 ; =0x00000607
_021DA956:
	ldrb r0, [r4, #0x1e]
	cmp r0, #2
	bne _021DA960
	mov r2, #1
	b _021DA96E
_021DA960:
	cmp r0, #4
	bne _021DA968
	mov r2, #3
	b _021DA96E
_021DA968:
	bl ErrorHandling
	mov r2, #1
_021DA96E:
	ldr r0, [r5, #0x50]
	mov r1, #1
	add r3, r6, #0
	bl MOD05_021DA514
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021DA9BE
_021DA980:
	ldr r0, [r5, #0x50]
	mov r1, #1
	bl MOD05_021DA58C
	cmp r0, #0
	beq _021DA9BE
	bl FUN_0200E308
	cmp r0, #0
	beq _021DA9BE
	ldr r0, [r5, #0x20]
	bl FUN_0201F008
	ldrh r1, [r4, #0x24]
	cmp r1, r0
	bne _021DA9BE
	ldr r0, [r5, #0x4c]
	ldr r1, [r5, #0x50]
	mov r2, #1
	bl MOD05_021DA54C
	add sp, #0x84
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021DA9B0:
	bl FUN_0200E308
	cmp r0, #0
	beq _021DA9BE
	add sp, #0x84
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021DA9BE:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _021DA9CE
	add r4, #0x1d
	ldr r0, [r5, #0x20]
	add r1, r4, #0
	bl MOD05_021DAA2C
_021DA9CE:
	mov r0, #0
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021DA9D4: .word 0x021F655C
_021DA9D8: .word 0x0000FFA0
_021DA9DC: .word 0x00000608
_021DA9E0: .word 0x00000605
_021DA9E4: .word 0x00000607

	thumb_func_start MOD05_021DA9E8
MOD05_021DA9E8: ; 0x021DA9E8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldrb r0, [r5]
	mov r4, #0xc
	add r1, r0, #0
	mul r1, r4
	cmp r1, #0x60
	bgt _021DAA28
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0x60
	bls _021DAA08
	sub r0, #0x60
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_021DAA08:
	add r0, r6, #0
	bl FUN_0201F008
	sub r0, r0, r4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	beq _021DAA22
	neg r0, r4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r1, r6, #0
	bl FUN_0201EF2C
_021DAA22:
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
_021DAA28:
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DAA2C
MOD05_021DAA2C: ; 0x021DAA2C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldrb r0, [r5]
	lsl r0, r0, #4
	cmp r0, #0x60
	bge _021DAA68
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0x60
	bls _021DAA4A
	sub r0, #0x60
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	b _021DAA4C
_021DAA4A:
	mov r4, #0x10
_021DAA4C:
	add r0, r6, #0
	bl FUN_0201F008
	add r0, r0, r4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	beq _021DAA62
	add r0, r4, #0
	add r1, r6, #0
	bl FUN_0201EF2C
_021DAA62:
	ldrb r0, [r5]
	add r0, r0, #1
	strb r0, [r5]
_021DAA68:
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DAA6C
MOD05_021DAA6C: ; 0x021DAA6C
	cmp r0, #0x46
	beq _021DAA98
	ldr r2, _021DAAA0 ; =0x000001BA
	cmp r0, r2
	beq _021DAA98
	add r1, r2, #0
	sub r1, #0x90
	cmp r0, r1
	beq _021DAA98
	add r1, r2, #0
	add r1, #0xe
	cmp r0, r1
	beq _021DAA98
	add r1, r2, #0
	sub r1, #0xf
	cmp r0, r1
	beq _021DAA98
	add r2, #0x2a
	cmp r0, r2
	beq _021DAA98
	cmp r0, #0x4b
	bne _021DAA9C
_021DAA98:
	mov r0, #1
	bx lr
_021DAA9C:
	mov r0, #0
	bx lr
	.balign 4, 0
_021DAAA0: .word 0x000001BA

	thumb_func_start MOD05_021DAAA4
MOD05_021DAAA4: ; 0x021DAAA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	add r6, r2, #0
	cmp r0, #5
	bls _021DAAB6
	b _021DAC60
_021DAAB6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DAAC2: ; jump table
	.short _021DAACE - _021DAAC2 - 2 ; case 0
	.short _021DAB8E - _021DAAC2 - 2 ; case 1
	.short _021DABCE - _021DAAC2 - 2 ; case 2
	.short _021DABEE - _021DAAC2 - 2 ; case 3
	.short _021DAC16 - _021DAAC2 - 2 ; case 4
	.short _021DAC34 - _021DAAC2 - 2 ; case 5
_021DAACE:
	ldr r3, _021DAC68 ; =0x021F64FC
	add r2, sp, #0x20
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	cmp r6, #2
	bne _021DAAF8
	mov r0, #2
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	add r0, sp, #0x30
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	sub r2, r2, #2
	mov r3, #0
	bl FUN_0204A840
	b _021DAB10
_021DAAF8:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, sp, #0x30
	str r0, [sp, #8]
	mov r2, #0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	add r3, r2, #0
	bl FUN_0204A840
_021DAB10:
	mov r0, #2
	strb r0, [r4, #0x1c]
	add r0, sp, #0x1c
	str r0, [sp]
	add r0, sp, #0x18
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #0x20
	mov r2, #4
	add r3, sp, #0x30
	bl FUN_0204A94C
	cmp r0, #0
	beq _021DAB5E
	ldr r0, [r5, #0x2c]
	bl MOD05_021F4C88
	add r6, r0, #0
	ldr r0, [sp, #0x1c]
	bl MOD05_021E7EC8
	add r7, r0, #0
	ldr r0, [sp, #0x1c]
	bl MOD05_021E7ECC
	str r7, [sp]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x4c]
	ldr r1, [r5, #0x50]
	ldr r3, [sp, #0x18]
	mov r2, #2
	bl MOD05_021DA464
	b _021DAB68
_021DAB5E:
	bl ErrorHandling
	add sp, #0x40
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DAB68:
	ldr r0, [r5, #0x38]
	bl FUN_020553A0
	add r5, r0, #0
	bl FUN_0205AD98
	cmp r0, #1
	bne _021DAB82
	add r0, r5, #0
	mov r1, #0x49
	bl FUN_0205ADDC
	b _021DAB86
_021DAB82:
	bl ErrorHandling
_021DAB86:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021DAC60
_021DAB8E:
	mov r0, #1
	bl MOD05_021D7CA4
	ldr r0, [r5, #0x50]
	ldr r3, _021DAC6C ; =0x00000615
	mov r1, #2
	mov r2, #0
	bl MOD05_021DA514
	ldr r0, [r5, #0x38]
	bl FUN_020553A0
	add r5, r0, #0
	bl FUN_0205AD98
	cmp r0, #1
	bne _021DABC2
	cmp r6, #3
	bne _021DABB8
	mov r1, #0xb
	b _021DABBA
_021DABB8:
	mov r1, #0xa
_021DABBA:
	add r0, r5, #0
	bl FUN_0205ADDC
	b _021DABC6
_021DABC2:
	bl ErrorHandling
_021DABC6:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021DAC60
_021DABCE:
	ldr r0, [r5, #0x38]
	bl FUN_020553A0
	add r5, r0, #0
	bl FUN_0205AD98
	cmp r0, #1
	bne _021DAC60
	add r0, r5, #0
	mov r1, #0x4a
	bl FUN_0205ADDC
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021DAC60
_021DABEE:
	ldr r0, [r5, #0x38]
	bl FUN_020553A0
	add r5, r0, #0
	bl FUN_0205AD98
	cmp r0, #1
	bne _021DAC60
	cmp r6, #3
	bne _021DAC06
	mov r1, #0xb
	b _021DAC08
_021DAC06:
	mov r1, #0xa
_021DAC08:
	add r0, r5, #0
	bl FUN_0205ADDC
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021DAC60
_021DAC16:
	ldr r0, [r5, #0x38]
	bl FUN_020553A0
	add r5, r0, #0
	bl FUN_0205AE28
	cmp r0, #1
	bne _021DAC60
	add r0, r5, #0
	bl FUN_0205AE50
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021DAC60
_021DAC34:
	ldr r0, [r5, #0x50]
	mov r1, #2
	bl MOD05_021DA58C
	cmp r0, #0
	beq _021DAC60
	bl FUN_0200E308
	cmp r0, #0
	beq _021DAC60
	ldr r0, [r5, #0x4c]
	ldr r1, [r5, #0x50]
	mov r2, #2
	bl MOD05_021DA54C
	ldr r0, _021DAC6C ; =0x00000615
	mov r1, #0
	bl FUN_020054F0
	add sp, #0x40
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DAC60:
	mov r0, #0
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DAC68: .word 0x021F64FC
_021DAC6C: .word 0x00000615

	thumb_func_start MOD05_021DAC70
MOD05_021DAC70: ; 0x021DAC70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	add r6, r2, #0
	cmp r0, #4
	bls _021DAC82
	b _021DAE04
_021DAC82:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DAC8E: ; jump table
	.short _021DAC98 - _021DAC8E - 2 ; case 0
	.short _021DAD5A - _021DAC8E - 2 ; case 1
	.short _021DAD94 - _021DAC8E - 2 ; case 2
	.short _021DADBA - _021DAC8E - 2 ; case 3
	.short _021DADD8 - _021DAC8E - 2 ; case 4
_021DAC98:
	ldr r3, _021DAE0C ; =0x021F64EC
	add r2, sp, #0x20
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	cmp r6, #2
	bne _021DACC2
	mov r0, #2
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	add r0, sp, #0x30
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	sub r2, r2, #2
	mov r3, #0
	bl FUN_0204A840
	b _021DACDA
_021DACC2:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, sp, #0x30
	str r0, [sp, #8]
	mov r2, #0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	add r3, r2, #0
	bl FUN_0204A840
_021DACDA:
	mov r0, #2
	strb r0, [r4, #0x1c]
	add r0, sp, #0x1c
	str r0, [sp]
	add r0, sp, #0x18
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #0x20
	mov r2, #4
	add r3, sp, #0x30
	bl FUN_0204A94C
	cmp r0, #0
	beq _021DAD2A
	ldr r0, [r5, #0x2c]
	bl MOD05_021F4C88
	add r6, r0, #0
	ldr r0, [sp, #0x1c]
	bl MOD05_021E7EC8
	add r7, r0, #0
	ldr r0, [sp, #0x1c]
	bl MOD05_021E7ECC
	str r7, [sp]
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x4c]
	ldr r1, [r5, #0x50]
	ldr r3, [sp, #0x18]
	mov r2, #2
	bl MOD05_021DA464
	b _021DAD34
_021DAD2A:
	bl ErrorHandling
	add sp, #0x40
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DAD34:
	ldr r0, [r5, #0x38]
	bl FUN_020553A0
	add r5, r0, #0
	bl FUN_0205AD98
	cmp r0, #1
	bne _021DAD4E
	add r0, r5, #0
	mov r1, #0x49
	bl FUN_0205ADDC
	b _021DAD52
_021DAD4E:
	bl ErrorHandling
_021DAD52:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021DAE04
_021DAD5A:
	ldr r0, [r5, #0x50]
	ldr r3, _021DAE10 ; =0x00000615
	mov r1, #2
	mov r2, #0
	bl MOD05_021DA514
	ldr r0, [r5, #0x38]
	bl FUN_020553A0
	add r5, r0, #0
	bl FUN_0205AD98
	cmp r0, #1
	bne _021DAD88
	cmp r6, #2
	bne _021DAD7E
	mov r1, #0xa
	b _021DAD80
_021DAD7E:
	mov r1, #0xb
_021DAD80:
	add r0, r5, #0
	bl FUN_0205ADDC
	b _021DAD8C
_021DAD88:
	bl ErrorHandling
_021DAD8C:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021DAE04
_021DAD94:
	ldr r0, [r5, #0x38]
	bl FUN_020553A0
	add r5, r0, #0
	bl FUN_0205AD98
	cmp r0, #1
	bne _021DAE04
	add r0, r5, #0
	mov r1, #0x4a
	bl FUN_0205ADDC
	mov r0, #0
	bl MOD05_021D7CA4
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021DAE04
_021DADBA:
	ldr r0, [r5, #0x38]
	bl FUN_020553A0
	add r5, r0, #0
	bl FUN_0205AE28
	cmp r0, #1
	bne _021DAE04
	add r0, r5, #0
	bl FUN_0205AE50
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021DAE04
_021DADD8:
	ldr r0, [r5, #0x50]
	mov r1, #2
	bl MOD05_021DA58C
	cmp r0, #0
	beq _021DAE04
	bl FUN_0200E308
	cmp r0, #0
	beq _021DAE04
	ldr r0, [r5, #0x4c]
	ldr r1, [r5, #0x50]
	mov r2, #2
	bl MOD05_021DA54C
	ldr r0, _021DAE10 ; =0x00000615
	mov r1, #0
	bl FUN_020054F0
	add sp, #0x40
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DAE04:
	mov r0, #0
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DAE0C: .word 0x021F64EC
_021DAE10: .word 0x00000615

	thumb_func_start MOD05_021DAE14
MOD05_021DAE14: ; 0x021DAE14
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl FUN_02046528
	add r5, r0, #0
	add r0, r4, #0
	bl FUN_0204652C
	add r4, r0, #0
	ldrb r1, [r4]
	ldr r0, [r5, #0x50]
	bl MOD05_021DA58C
	cmp r0, #0
	beq _021DAE3C
	add r0, r4, #0
	bl FUN_02016A18
	mov r0, #1
	pop {r3, r4, r5, pc}
_021DAE3C:
	mov r0, #0
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021DAE40
MOD05_021DAE40: ; 0x021DAE40
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	ldr r6, _021DAED0 ; =0x021F65AC
	str r3, [sp, #0x18]
	add r5, r0, #0
	add r7, r1, #0
	add r4, sp, #0x34
	mov r3, #0xa
_021DAE50:
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _021DAE50
	mov r0, #3
	str r0, [sp]
	mov r3, #1
	add r1, r2, #0
	str r3, [sp, #4]
	add r0, sp, #0x24
	str r0, [sp, #8]
	sub r2, r3, #2
	add r0, r7, #0
	mov r3, #0
	bl FUN_0204A840
	add r0, sp, #0x20
	str r0, [sp]
	add r0, sp, #0x1c
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #0x34
	mov r2, #0x14
	add r3, sp, #0x24
	bl FUN_0204A94C
	cmp r0, #0
	beq _021DAEC8
	ldr r0, [r5, #0x4c]
	ldr r1, [sp, #0x1c]
	bl MOD05_021DA230
	add r4, r0, #0
	ldr r0, [r5, #0x2c]
	bl MOD05_021F4C88
	add r6, r0, #0
	ldr r0, [sp, #0x20]
	bl MOD05_021E7EC8
	add r7, r0, #0
	ldr r0, [sp, #0x20]
	bl MOD05_021E7ECC
	str r7, [sp]
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x4c]
	ldr r1, [r5, #0x50]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl MOD05_021DA464
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
_021DAEC8:
	bl ErrorHandling
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021DAED0: .word 0x021F65AC

	thumb_func_start MOD05_021DAED4
MOD05_021DAED4: ; 0x021DAED4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	add r7, r1, #0
	bl MOD05_021DA5AC
	add r6, r0, #0
	ldr r0, [r5, #0x4c]
	add r1, r6, #0
	bl MOD05_021DA230
	add r4, r0, #0
	add r0, r6, #0
	bl MOD05_021DAA6C
	cmp r0, #0
	beq _021DAEFA
	ldr r6, _021DAF20 ; =0x00000608
	b _021DAEFC
_021DAEFA:
	ldr r6, _021DAF24 ; =0x00000605
_021DAEFC:
	cmp r4, #2
	bne _021DAF04
	mov r2, #0
	b _021DAF12
_021DAF04:
	cmp r4, #4
	bne _021DAF0C
	mov r2, #0
	b _021DAF12
_021DAF0C:
	bl ErrorHandling
	mov r2, #0
_021DAF12:
	ldr r0, [r5, #0x50]
	add r1, r7, #0
	add r3, r6, #0
	bl MOD05_021DA514
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DAF20: .word 0x00000608
_021DAF24: .word 0x00000605

	thumb_func_start MOD05_021DAF28
MOD05_021DAF28: ; 0x021DAF28
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x50]
	add r7, r1, #0
	bl MOD05_021DA5AC
	add r6, r0, #0
	ldr r0, [r5, #0x4c]
	add r1, r6, #0
	bl MOD05_021DA230
	add r4, r0, #0
	add r0, r6, #0
	bl MOD05_021DAA6C
	cmp r0, #0
	beq _021DAF4E
	mov r6, #0
	b _021DAF50
_021DAF4E:
	ldr r6, _021DAF74 ; =0x00000607
_021DAF50:
	cmp r4, #2
	bne _021DAF58
	mov r2, #1
	b _021DAF66
_021DAF58:
	cmp r4, #4
	bne _021DAF60
	mov r2, #1
	b _021DAF66
_021DAF60:
	bl ErrorHandling
	mov r2, #1
_021DAF66:
	ldr r0, [r5, #0x50]
	add r1, r7, #0
	add r3, r6, #0
	bl MOD05_021DA514
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DAF74: .word 0x00000607

	thumb_func_start MOD05_021DAF78
MOD05_021DAF78: ; 0x021DAF78
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #4
	mov r1, #1
	bl FUN_020169D8
	add r2, r0, #0
	strb r4, [r2]
	ldr r0, [r5, #0x10]
	ldr r1, _021DAF94 ; =MOD05_021DAE14
	bl FUN_0204640C
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021DAF94: .word MOD05_021DAE14

	thumb_func_start MOD05_021DAF98
MOD05_021DAF98: ; 0x021DAF98
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, [r3, #0x4c]
	ldr r1, [r3, #0x50]
	ldr r3, _021DAFA4 ; =MOD05_021DA54C
	bx r3
	.balign 4, 0
_021DAFA4: .word MOD05_021DA54C

	thumb_func_start MOD05_021DAFA8
MOD05_021DAFA8: ; 0x021DAFA8
	push {r4, r5, lr}
	sub sp, #0x2c
	add r5, r2, #0
	ldr r2, _021DB02C ; =0x021F64E4
	add r4, r3, #0
	ldr r3, [r2]
	ldr r2, [r2, #4]
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r2, #1
	str r2, [sp]
	mov r2, #3
	str r2, [sp, #4]
	add r2, sp, #0x1c
	str r2, [sp, #8]
	mov r2, #0
	sub r3, r2, #1
	bl FUN_0204A840
	add r0, sp, #0x18
	str r0, [sp]
	add r0, sp, #0x14
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, sp, #0xc
	mov r2, #2
	add r3, sp, #0x1c
	bl FUN_0204A94C
	cmp r0, #0
	bne _021DAFEA
	bl ErrorHandling
_021DAFEA:
	ldr r0, [sp, #0x18]
	bl MOD05_021E7EC8
	add r3, r0, #0
	ldr r0, [r4, #0x4c]
	add r1, r5, #0
	str r0, [sp]
	ldr r0, [sp, #0x14]
	mov r2, #1
	bl MOD05_021D9DC0
	cmp r0, #0
	bne _021DB008
	bl ErrorHandling
_021DB008:
	ldr r0, [sp, #0x14]
	ldr r2, [r4, #0x4c]
	add r1, r5, #0
	bl MOD05_021DA080
	add r4, r0, #0
	bl MOD05_021DA118
	add r0, r4, #0
	mov r1, #0
	bl MOD05_021DA0DC
	add r0, r4, #0
	bl MOD05_021DA0E0
	add sp, #0x2c
	pop {r4, r5, pc}
	nop
_021DB02C: .word 0x021F64E4

	thumb_func_start MOD05_021DB030
MOD05_021DB030: ; 0x021DB030
	push {r3, lr}
	mov r0, #4
	mov r1, #0x10
	bl FUN_020169D8
	mov r1, #0
	str r1, [r0]
	pop {r3, pc}

	thumb_func_start MOD05_021DB040
MOD05_021DB040: ; 0x021DB040
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl FUN_02046528
	add r5, r0, #0
	add r0, r4, #0
	bl FUN_0204652C
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #3
	bhi _021DB126
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DB066: ; jump table
	.short _021DB06E - _021DB066 - 2 ; case 0
	.short _021DB0CA - _021DB066 - 2 ; case 1
	.short _021DB0E8 - _021DB066 - 2 ; case 2
	.short _021DB106 - _021DB066 - 2 ; case 3
_021DB06E:
	ldr r0, [r5, #0x38]
	bl FUN_020553A0
	add r6, r0, #0
	ldr r0, [r5, #0x38]
	bl FUN_020552F8
	cmp r0, #1
	bne _021DB08C
	add r0, r6, #0
	mov r1, #1
	bl FUN_0205889C
	mov r0, #1
	b _021DB096
_021DB08C:
	add r0, r6, #0
	mov r1, #0
	bl FUN_0205889C
	mov r0, #3
_021DB096:
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #8]
	strb r0, [r4, #4]
	ldr r0, [r5, #0x20]
	bl FUN_0201F008
	strh r0, [r4, #0xc]
	ldr r0, _021DB13C ; =0x0000FFA0
	ldr r1, [r5, #0x20]
	bl FUN_0201EF2C
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	ldr r3, _021DB140 ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl FUN_0200E1D0
	mov r0, #1
	str r0, [r4, #8]
	b _021DB126
_021DB0CA:
	ldr r0, [r5, #0x38]
	bl FUN_020553A0
	add r6, r0, #0
	mov r1, #0
	bl FUN_0205889C
	add r0, r6, #0
	mov r1, #0xd
	bl FUN_0205ADDC
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021DB126
_021DB0E8:
	ldr r0, [r5, #0x38]
	bl FUN_020553A0
	add r6, r0, #0
	bl FUN_0205AE28
	cmp r0, #1
	bne _021DB126
	add r0, r6, #0
	bl FUN_0205AE50
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021DB126
_021DB106:
	bl FUN_0200E308
	cmp r0, #0
	beq _021DB126
	ldr r0, [r5, #0x20]
	bl FUN_0201F008
	ldrh r1, [r4, #0xc]
	cmp r1, r0
	bne _021DB126
	add r0, r4, #0
	bl FUN_02016A18
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021DB126:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021DB134
	ldr r0, [r5, #0x20]
	add r1, r4, #4
	bl MOD05_021DAA2C
_021DB134:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021DB13C: .word 0x0000FFA0
_021DB140: .word 0x00007FFF

	thumb_func_start MOD05_021DB144
MOD05_021DB144: ; 0x021DB144
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl FUN_02046528
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_0204652C
	add r5, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _021DB164
	cmp r0, #1
	beq _021DB1A0
	b _021DB1B4
_021DB164:
	ldr r0, [r4, #0x38]
	bl FUN_020553A0
	mov r1, #1
	bl FUN_0205889C
	mov r0, #0
	str r0, [r5, #8]
	strb r0, [r5, #4]
	ldr r0, _021DB1C8 ; =0x00000603
	bl FUN_020054C8
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0
	ldr r3, _021DB1CC ; =0x00007FFF
	add r1, r0, #0
	add r2, r0, #0
	bl FUN_0200E1D0
	mov r0, #1
	str r0, [r5, #8]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021DB1B4
_021DB1A0:
	bl FUN_0200E308
	cmp r0, #0
	beq _021DB1B4
	add r0, r5, #0
	bl FUN_02016A18
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_021DB1B4:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021DB1C2
	ldr r0, [r4, #0x20]
	add r1, r5, #4
	bl MOD05_021DA9E8
_021DB1C2:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_021DB1C8: .word 0x00000603
_021DB1CC: .word 0x00007FFF

	thumb_func_start MOD05_021DB1D0
MOD05_021DB1D0: ; 0x021DB1D0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl FUN_02046528
	add r6, r0, #0
	add r0, r5, #0
	bl FUN_0204652C
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021DB1F0
	cmp r0, #1
	beq _021DB222
	b _021DB236
_021DB1F0:
	mov r0, #0
	str r0, [r4, #8]
	strb r0, [r4, #4]
	ldr r0, _021DB24C ; =0x00000603
	bl FUN_020054C8
	mov r1, #0
	str r1, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r2, #0x10
	add r3, r1, #0
	bl FUN_0204C1B4
	mov r0, #1
	str r0, [r4, #8]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021DB236
_021DB222:
	bl FUN_0200E308
	cmp r0, #0
	beq _021DB236
	add r0, r4, #0
	bl FUN_02016A18
	add sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, pc}
_021DB236:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021DB244
	ldr r0, [r6, #0x20]
	add r1, r4, #4
	bl MOD05_021DA9E8
_021DB244:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021DB24C: .word 0x00000603

	thumb_func_start MOD05_021DB250
MOD05_021DB250: ; 0x021DB250
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #0x10]
	bl FUN_02046528
	add r5, r0, #0
	ldr r0, [sp, #0x10]
	bl FUN_0204652C
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #3
	bhi _021DB368
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DB276: ; jump table
	.short _021DB27E - _021DB276 - 2 ; case 0
	.short _021DB30C - _021DB276 - 2 ; case 1
	.short _021DB32A - _021DB276 - 2 ; case 2
	.short _021DB348 - _021DB276 - 2 ; case 3
_021DB27E:
	ldr r0, [r5, #0x38]
	bl FUN_020553A0
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x38]
	bl FUN_020552F8
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #1
	bne _021DB2A0
	ldr r0, [sp, #0x14]
	mov r1, #1
	bl FUN_0205889C
	mov r0, #1
	b _021DB2AA
_021DB2A0:
	ldr r0, [sp, #0x14]
	mov r1, #0
	bl FUN_0205889C
	mov r0, #3
_021DB2AA:
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #8]
	strb r0, [r4, #4]
	ldr r0, [r5, #0x20]
	bl FUN_0201F008
	strh r0, [r4, #0xc]
	ldr r0, _021DB37C ; =0x0000FFA0
	ldr r1, [r5, #0x20]
	bl FUN_0201EF2C
	cmp r7, #3
	bhi _021DB2EA
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DB2D2: ; jump table
	.short _021DB2DA - _021DB2D2 - 2 ; case 0
	.short _021DB2DE - _021DB2D2 - 2 ; case 1
	.short _021DB2E2 - _021DB2D2 - 2 ; case 2
	.short _021DB2E6 - _021DB2D2 - 2 ; case 3
_021DB2DA:
	mov r6, #3
	b _021DB2EE
_021DB2DE:
	mov r6, #5
	b _021DB2EE
_021DB2E2:
	mov r6, #7
	b _021DB2EE
_021DB2E6:
	mov r6, #0x27
	b _021DB2EE
_021DB2EA:
	bl ErrorHandling
_021DB2EE:
	mov r1, #0
	str r1, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r2, r6, #0
	bl FUN_0204C1B4
	mov r0, #1
	str r0, [r4, #8]
	b _021DB368
_021DB30C:
	ldr r0, [r5, #0x38]
	bl FUN_020553A0
	add r6, r0, #0
	mov r1, #0
	bl FUN_0205889C
	add r0, r6, #0
	mov r1, #0xd
	bl FUN_0205ADDC
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021DB368
_021DB32A:
	ldr r0, [r5, #0x38]
	bl FUN_020553A0
	add r6, r0, #0
	bl FUN_0205AE28
	cmp r0, #1
	bne _021DB368
	add r0, r6, #0
	bl FUN_0205AE50
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021DB368
_021DB348:
	bl FUN_0200E308
	cmp r0, #0
	beq _021DB368
	ldr r0, [r5, #0x20]
	bl FUN_0201F008
	ldrh r1, [r4, #0xc]
	cmp r1, r0
	bne _021DB368
	add r0, r4, #0
	bl FUN_02016A18
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DB368:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021DB376
	ldr r0, [r5, #0x20]
	add r1, r4, #4
	bl MOD05_021DAA2C
_021DB376:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021DB37C: .word 0x0000FFA0

	thumb_func_start MOD05_021DB380
MOD05_021DB380: ; 0x021DB380
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	bl FUN_02046528
	add r5, r0, #0
	add r0, r7, #0
	bl FUN_0204652C
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #3
	bhi _021DB446
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DB3A6: ; jump table
	.short _021DB3AE - _021DB3A6 - 2 ; case 0
	.short _021DB3F6 - _021DB3A6 - 2 ; case 1
	.short _021DB414 - _021DB3A6 - 2 ; case 2
	.short _021DB432 - _021DB3A6 - 2 ; case 3
_021DB3AE:
	ldr r0, [r5, #0x38]
	bl FUN_020553A0
	add r6, r0, #0
	ldr r0, [r5, #0x38]
	bl FUN_020552F8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bne _021DB3D0
	add r0, r6, #0
	mov r1, #1
	bl FUN_0205889C
	mov r0, #1
	b _021DB3DA
_021DB3D0:
	add r0, r6, #0
	mov r1, #0
	bl FUN_0205889C
	mov r0, #3
_021DB3DA:
	str r0, [r4]
	mov r1, #0
	mov r2, #1
	str r1, [sp]
	mov r0, #6
	str r0, [sp, #4]
	str r2, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	add r0, r7, #0
	add r3, r2, #0
	bl FUN_0204C1B4
	b _021DB446
_021DB3F6:
	ldr r0, [r5, #0x38]
	bl FUN_020553A0
	add r5, r0, #0
	mov r1, #0
	bl FUN_0205889C
	add r0, r5, #0
	mov r1, #0xd
	bl FUN_0205ADDC
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021DB446
_021DB414:
	ldr r0, [r5, #0x38]
	bl FUN_020553A0
	add r5, r0, #0
	bl FUN_0205AE28
	cmp r0, #1
	bne _021DB446
	add r0, r5, #0
	bl FUN_0205AE50
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021DB446
_021DB432:
	bl FUN_0200E308
	cmp r0, #0
	beq _021DB446
	add r0, r4, #0
	bl FUN_02016A18
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DB446:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021DB44C
MOD05_021DB44C: ; 0x021DB44C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	cmp r6, #3
	blo _021DB45A
	bl ErrorHandling
_021DB45A:
	mov r0, #4
	mov r1, #0x14
	bl FUN_02016998
	add r4, r0, #0
	ldr r0, _021DB4AC ; =0x021F65FC
	lsl r1, r6, #2
	ldr r0, [r0, r1]
	str r5, [r4, #0xc]
	add r1, r4, #4
	bl MOD05_021DB61C
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #8]
	bl FUN_020126D8
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r3, r1, #1
	ldr r5, [r4]
	mov r1, #0
	cmp r5, #0
	bls _021DB49E
	ldr r2, [r4, #4]
_021DB48C:
	ldr r0, [r2]
	cmp r0, r3
	bls _021DB496
	str r1, [r4, #8]
	b _021DB49E
_021DB496:
	add r1, r1, #1
	add r2, #0x30
	cmp r1, r5
	blo _021DB48C
_021DB49E:
	mov r0, #1
	str r0, [r4, #0x10]
	add r0, r4, #0
	bl MOD05_021DB5D4
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021DB4AC: .word 0x021F65FC

	thumb_func_start MOD05_021DB4B0
MOD05_021DB4B0: ; 0x021DB4B0
	push {r4, lr}
	add r4, r0, #0
	bne _021DB4BA
	bl ErrorHandling
_021DB4BA:
	ldr r0, [r4]
	add r0, r0, #4
	bl MOD05_021DB7A0
	ldr r1, [r4]
	mov r0, #4
	bl FUN_02016A8C
	mov r0, #0
	str r0, [r4]
	pop {r4, pc}

	thumb_func_start MOD05_021DB4D0
MOD05_021DB4D0: ; 0x021DB4D0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bne _021DB4DA
	bl ErrorHandling
_021DB4DA:
	bl FUN_020126D8
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	ldr r1, [r4]
	cmp r1, #1
	bls _021DB528
	ldr r1, [r4, #8]
	sub r5, r1, #1
	bmi _021DB4FA
	mov r2, #0x30
	ldr r3, [r4, #4]
	mul r2, r5
	ldr r2, [r3, r2]
	b _021DB4FC
_021DB4FA:
	mov r2, #0
_021DB4FC:
	mov r3, #0x30
	ldr r5, [r4, #4]
	mul r3, r1
	ldr r1, [r5, r3]
	cmp r0, r1
	bge _021DB50C
	cmp r0, r2
	bge _021DB528
_021DB50C:
	ldr r0, [r4, #8]
	add r1, r0, #1
	str r1, [r4, #8]
	ldr r0, [r4]
	cmp r1, r0
	blo _021DB51C
	mov r0, #0
	str r0, [r4, #8]
_021DB51C:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021DB528
	add r0, r4, #0
	bl MOD05_021DB5D4
_021DB528:
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DB52C
MOD05_021DB52C: ; 0x021DB52C
	push {r3, lr}
	str r1, [r0, #0x10]
	cmp r1, #0
	beq _021DB538
	bl MOD05_021DB5D4
_021DB538:
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DB53C
MOD05_021DB53C: ; 0x021DB53C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	add r6, r1, #0
	mov r4, #0
	add r5, r0, #0
	add r7, r0, #0
_021DB54A:
	ldr r0, [sp, #4]
	ldrb r1, [r0, #4]
	mov r0, #1
	lsl r0, r4
	tst r0, r1
	beq _021DB578
	mov r0, #0x12
	ldrsh r0, [r5, r0]
	mov r2, #0xe
	mov r3, #0x10
	str r0, [sp]
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	add r0, r6, #0
	add r1, r4, #0
	bl MOD05_021DBC94
	ldrh r2, [r7, #6]
	add r0, r6, #0
	add r1, r4, #0
	bl MOD05_021DBCBC
	b _021DB592
_021DB578:
	mov r0, #0
	mov r2, #0
	str r0, [sp]
	add r0, r6, #0
	add r1, r4, #0
	add r3, r2, #0
	bl MOD05_021DBC94
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	bl MOD05_021DBCBC
_021DB592:
	add r4, r4, #1
	add r5, r5, #6
	add r7, r7, #2
	cmp r4, #4
	blt _021DB54A
	ldr r1, [sp, #4]
	mov r2, #0
	ldrh r1, [r1, #0x26]
	add r0, r6, #0
	add r3, r2, #0
	bl MOD05_021DBCD0
	ldr r1, [sp, #4]
	add r0, r6, #0
	ldrh r1, [r1, #0x28]
	mov r2, #1
	bl MOD05_021DBCE4
	ldr r1, [sp, #4]
	mov r2, #0
	ldrh r1, [r1, #0x2a]
	add r0, r6, #0
	add r3, r2, #0
	bl MOD05_021DBCF8
	ldr r1, [sp, #4]
	add r0, r6, #0
	ldrh r1, [r1, #0x2c]
	mov r2, #1
	bl MOD05_021DBD0C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021DB5D4
MOD05_021DB5D4: ; 0x021DB5D4
	add r3, r0, #0
	ldr r1, [r3, #8]
	mov r0, #0x30
	mul r0, r1
	ldr r2, [r3, #4]
	ldr r1, [r3, #0xc]
	ldr r3, _021DB5E8 ; =MOD05_021DB53C
	add r0, r2, r0
	bx r3
	nop
_021DB5E8: .word MOD05_021DB53C

	thumb_func_start MOD05_021DB5EC
MOD05_021DB5EC: ; 0x021DB5EC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x40
	bl FUN_020BC094
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x80
	bl FUN_020BC094
	mov r2, #2
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #8
	bl FUN_020BC094
	mov r2, #1
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #0xa
	bl FUN_020BC094
	pop {r4, pc}

	thumb_func_start MOD05_021DB61C
MOD05_021DB61C: ; 0x021DB61C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x20
	add r2, r0, #0
	str r1, [sp]
	mov r0, #4
	add r1, r2, #0
	bl FUN_020161A4
	mov r1, #0
	str r0, [sp, #0x14]
	str r1, [sp, #8]
	add r5, sp, #0x11c
	mov r6, #1
	mov r7, #2
	add r4, r1, #0
_021DB63C:
	add r1, r5, #0
	mov r2, #0xd
	bl FUN_0201C6C8
	ldrsb r1, [r5, r4]
	cmp r1, #0x45
	bne _021DB656
	ldrsb r1, [r5, r6]
	cmp r1, #0x4f
	bne _021DB656
	ldrsb r1, [r5, r7]
	cmp r1, #0x46
	beq _021DB6A4
_021DB656:
	add r1, r5, #0
	mov r2, #0xd
	bl FUN_0201C6C8
	add r1, r5, #0
	mov r2, #0xd
	bl FUN_0201C6C8
	add r1, r5, #0
	mov r2, #0xd
	bl FUN_0201C6C8
	add r1, r5, #0
	mov r2, #0xd
	bl FUN_0201C6C8
	add r1, r5, #0
	mov r2, #0xd
	bl FUN_0201C6C8
	add r1, r5, #0
	mov r2, #0xd
	bl FUN_0201C6C8
	add r1, r5, #0
	mov r2, #0xd
	bl FUN_0201C6C8
	add r1, r5, #0
	mov r2, #0xd
	bl FUN_0201C6C8
	add r1, r5, #0
	mov r2, #0xd
	bl FUN_0201C6C8
	ldr r1, [sp, #8]
	add r1, r1, #1
	str r1, [sp, #8]
_021DB6A4:
	mov r1, #0
	ldrsb r1, [r5, r1]
	cmp r1, #0x45
	bne _021DB63C
	mov r1, #1
	ldrsb r1, [r5, r1]
	cmp r1, #0x4f
	bne _021DB63C
	mov r1, #2
	ldrsb r1, [r5, r1]
	cmp r1, #0x46
	bne _021DB63C
	ldr r0, [sp, #8]
	mov r1, #0x30
	add r4, r0, #0
	mul r4, r1
	mov r0, #4
	add r1, r4, #0
	bl FUN_02016998
	ldr r1, [sp]
	add r2, r4, #0
	str r0, [r1]
	mov r1, #0
	bl MI_CpuFill8
	mov r1, #0
	str r1, [sp, #0x18]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x14]
	cmp r1, #0
	ble _021DB78A
	ldr r1, [sp, #0x18]
	str r1, [sp, #0x10]
_021DB6E8:
	ldr r1, [sp]
	mov r2, #0xd
	ldr r5, [r1]
	ldr r1, [sp, #0x10]
	add r4, r5, r1
	add r1, sp, #0x11c
	bl FUN_0201C6C8
	str r0, [sp, #4]
	add r0, sp, #0x11c
	add r1, sp, #0x1c
	mov r2, #0x2c
	bl FUN_0201C6C8
	add r0, sp, #0x1c
	bl FUN_0201C70C
	ldr r1, [sp, #0x10]
	add r6, r4, #0
	str r0, [r5, r1]
	add r0, r4, #6
	mov r7, #0
	add r6, #0xe
	str r0, [sp, #0xc]
	add r5, r4, #0
_021DB71A:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	add r2, r6, #0
	bl MOD05_021DB7B4
	str r0, [sp, #4]
	ldrh r1, [r5, #6]
	ldr r0, _021DB79C ; =0x0000FFFF
	cmp r1, r0
	beq _021DB73A
	mov r0, #1
	ldrb r1, [r4, #4]
	lsl r0, r7
	orr r0, r1
	strb r0, [r4, #4]
	b _021DB73E
_021DB73A:
	mov r0, #0
	strh r0, [r5, #6]
_021DB73E:
	ldr r0, [sp, #0xc]
	add r7, r7, #1
	add r0, r0, #2
	add r6, r6, #6
	add r5, r5, #2
	str r0, [sp, #0xc]
	cmp r7, #4
	blt _021DB71A
	add r1, r4, #0
	ldr r0, [sp, #4]
	add r1, #0x26
	bl MOD05_021DB8A4
	add r1, r4, #0
	add r1, #0x28
	bl MOD05_021DB8A4
	add r1, r4, #0
	add r1, #0x2a
	bl MOD05_021DB8A4
	add r4, #0x2c
	add r1, r4, #0
	bl MOD05_021DB8A4
	add r1, sp, #0x11c
	mov r2, #0xd
	bl FUN_0201C6C8
	ldr r1, [sp, #0x10]
	add r1, #0x30
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x18]
	add r2, r1, #1
	ldr r1, [sp, #8]
	str r2, [sp, #0x18]
	cmp r2, r1
	blt _021DB6E8
_021DB78A:
	ldr r1, [sp, #0x14]
	mov r0, #4
	bl FUN_02016A8C
	ldr r0, [sp, #8]
	add sp, #0x1fc
	add sp, #0x20
	pop {r4, r5, r6, r7, pc}
	nop
_021DB79C: .word 0x0000FFFF

	thumb_func_start MOD05_021DB7A0
MOD05_021DB7A0: ; 0x021DB7A0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4]
	mov r0, #4
	bl FUN_02016A8C
	mov r0, #0
	str r0, [r4]
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DB7B4
MOD05_021DB7B4: ; 0x021DB7B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x20
	str r1, [sp, #4]
	add r7, r2, #0
	add r1, sp, #0x11c
	mov r2, #0xd
	bl FUN_0201C6C8
	str r0, [sp]
	add r0, sp, #0x11c
	add r1, sp, #0x1c
	mov r2, #0x2c
	bl FUN_0201C6C8
	add r4, r0, #0
	add r0, sp, #0x1c
	bl FUN_0201C70C
	cmp r0, #1
	bne _021DB88C
	mov r6, #0
	add r5, sp, #8
_021DB7E2:
	add r0, r4, #0
	add r1, sp, #0x1c
	mov r2, #0x2c
	bl FUN_0201C6C8
	add r4, r0, #0
	add r0, sp, #0x1c
	bl FUN_0201C70C
	strh r0, [r5]
	add r6, r6, #1
	add r5, r5, #2
	cmp r6, #3
	blt _021DB7E2
	add r1, sp, #8
	ldrh r0, [r1, #4]
	ldrh r2, [r1]
	ldrh r1, [r1, #2]
	lsl r0, r0, #0xa
	mov r6, #0
	lsl r1, r1, #5
	orr r1, r2
	orr r1, r0
	ldr r0, [sp, #4]
	add r5, sp, #0x10
	strh r1, [r0]
_021DB816:
	add r0, r4, #0
	add r1, sp, #0x1c
	mov r2, #0x2c
	bl FUN_0201C6C8
	add r4, r0, #0
	add r0, sp, #0x1c
	bl FUN_0201C70C
	add r6, r6, #1
	stmia r5!, {r0}
	cmp r6, #3
	blt _021DB816
	ldr r0, [sp, #0x10]
	strh r0, [r7]
	ldr r0, [sp, #0x14]
	strh r0, [r7, #2]
	ldr r0, [sp, #0x18]
	strh r0, [r7, #4]
	mov r0, #0
	ldrsh r1, [r7, r0]
	mov r0, #1
	lsl r0, r0, #0xc
	cmp r1, r0
	ble _021DB84A
	strh r0, [r7]
_021DB84A:
	mov r0, #0
	ldrsh r1, [r7, r0]
	ldr r0, _021DB89C ; =0xFFFFF000
	cmp r1, r0
	bge _021DB856
	strh r0, [r7]
_021DB856:
	mov r0, #2
	ldrsh r2, [r7, r0]
	lsl r1, r0, #0xb
	cmp r2, r1
	ble _021DB864
	lsl r0, r0, #0xb
	strh r0, [r7, #2]
_021DB864:
	mov r0, #2
	ldrsh r1, [r7, r0]
	ldr r0, _021DB89C ; =0xFFFFF000
	cmp r1, r0
	bge _021DB870
	strh r0, [r7, #2]
_021DB870:
	mov r0, #4
	ldrsh r2, [r7, r0]
	lsl r1, r0, #0xa
	cmp r2, r1
	ble _021DB87E
	lsl r0, r0, #0xa
	strh r0, [r7, #4]
_021DB87E:
	mov r0, #4
	ldrsh r1, [r7, r0]
	ldr r0, _021DB89C ; =0xFFFFF000
	cmp r1, r0
	bge _021DB892
	strh r0, [r7, #4]
	b _021DB892
_021DB88C:
	ldr r1, _021DB8A0 ; =0x0000FFFF
	ldr r0, [sp, #4]
	strh r1, [r0]
_021DB892:
	ldr r0, [sp]
	add sp, #0x1fc
	add sp, #0x20
	pop {r4, r5, r6, r7, pc}
	nop
_021DB89C: .word 0xFFFFF000
_021DB8A0: .word 0x0000FFFF

	thumb_func_start MOD05_021DB8A4
MOD05_021DB8A4: ; 0x021DB8A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x14
	str r1, [sp, #4]
	add r1, sp, #0x10c
	add r1, #2
	mov r2, #0xd
	bl FUN_0201C6C8
	add r6, sp, #0x10c
	add r7, sp, #0xc
	str r0, [sp]
	add r6, #2
	mov r4, #0
	add r5, sp, #8
	add r7, #2
_021DB8C4:
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0x2c
	bl FUN_0201C6C8
	add r6, r0, #0
	add r0, r7, #0
	bl FUN_0201C70C
	strh r0, [r5]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #3
	blt _021DB8C4
	add r0, sp, #8
	ldrh r1, [r0, #4]
	lsl r2, r1, #0xa
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	lsl r0, r0, #5
	orr r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, [sp, #4]
	strh r1, [r0]
	ldr r0, [sp]
	add sp, #0x1fc
	add sp, #0x14
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DB900
MOD05_021DB900: ; 0x021DB900
	push {r4, lr}
	mov r0, #4
	mov r1, #8
	bl FUN_02016998
	add r4, r0, #0
	bne _021DB912
	bl ErrorHandling
_021DB912:
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DB918
MOD05_021DB918: ; 0x021DB918
	push {r3, r4, r5, r6, lr}
	sub sp, #0x4c
	add r4, r0, #0
	add r0, sp, #4
	add r5, r1, #0
	bl FS_InitFile
	add r0, sp, #4
	add r1, r4, #0
	bl FS_OpenFile
	cmp r0, #0
	beq _021DB9B4
	add r1, sp, #0
	add r0, sp, #4
	add r1, #2
	mov r2, #2
	bl FS_ReadFile
	cmp r0, #0
	bge _021DB946
	bl ErrorHandling
_021DB946:
	add r0, sp, #4
	add r1, sp, #0
	mov r2, #2
	bl FS_ReadFile
	cmp r0, #0
	bge _021DB958
	bl ErrorHandling
_021DB958:
	add r0, sp, #0
	ldrh r1, [r0, #2]
	ldrh r0, [r0]
	lsl r6, r1, #2
	lsl r4, r0, #2
	mov r0, #4
	add r1, r6, #0
	bl FUN_02016998
	str r0, [r5]
	cmp r0, #0
	bne _021DB974
	bl ErrorHandling
_021DB974:
	mov r0, #4
	add r1, r4, #0
	bl FUN_02016998
	str r0, [r5, #4]
	cmp r0, #0
	bne _021DB986
	bl ErrorHandling
_021DB986:
	ldr r1, [r5]
	add r0, sp, #4
	add r2, r6, #0
	bl FS_ReadFile
	cmp r0, #0
	bge _021DB998
	bl ErrorHandling
_021DB998:
	ldr r1, [r5, #4]
	add r0, sp, #4
	add r2, r4, #0
	bl FS_ReadFile
	cmp r0, #0
	bge _021DB9AA
	bl ErrorHandling
_021DB9AA:
	add r0, sp, #4
	bl FS_CloseFile
	add sp, #0x4c
	pop {r3, r4, r5, r6, pc}
_021DB9B4:
	bl ErrorHandling
	add sp, #0x4c
	pop {r3, r4, r5, r6, pc}

	thumb_func_start MOD05_021DB9BC
MOD05_021DB9BC: ; 0x021DB9BC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl FUN_02016A18
	ldr r0, [r4]
	bl FUN_02016A18
	add r0, r4, #0
	bl FUN_02016A18
	pop {r4, pc}

	thumb_func_start MOD05_021DB9D4
MOD05_021DB9D4: ; 0x021DB9D4
	ldr r1, [r1]
	lsl r0, r0, #2
	ldrh r0, [r1, r0]
	strh r0, [r2]
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021DB9E0
MOD05_021DB9E0: ; 0x021DB9E0
	push {r3, r4}
	lsl r4, r0, #2
	ldr r0, [r1]
	ldrh r0, [r0, r4]
	strh r0, [r2]
	ldr r0, [r1]
	add r0, r0, r4
	ldrh r0, [r0, #2]
	strh r0, [r3]
	pop {r3, r4}
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021DB9F8
MOD05_021DB9F8: ; 0x021DB9F8
	ldr r1, [r1, #4]
	lsl r0, r0, #2
	add r0, r1, r0
	bx lr

	thumb_func_start MOD05_021DBA00
MOD05_021DBA00: ; 0x021DBA00
	push {r4, lr}
	mov r0, #4
	mov r1, #0x38
	bl FUN_02016998
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x38
	bl MIi_CpuClear32
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DBA1C
MOD05_021DBA1C: ; 0x021DBA1C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4]
	mov r0, #4
	bl FUN_02016A8C
	mov r0, #0
	str r0, [r4]
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DBA30
MOD05_021DBA30: ; 0x021DBA30
	ldr r0, [r0]
	bx lr

	thumb_func_start MOD05_021DBA34
MOD05_021DBA34: ; 0x021DBA34
	ldr r0, [r0, #8]
	bx lr

	thumb_func_start MOD05_021DBA38
MOD05_021DBA38: ; 0x021DBA38
	ldr r0, [r0, #0xc]
	bx lr

	thumb_func_start MOD05_021DBA3C
MOD05_021DBA3C: ; 0x021DBA3C
	ldrh r0, [r0, #0x10]
	bx lr

	thumb_func_start MOD05_021DBA40
MOD05_021DBA40: ; 0x021DBA40
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	tst r0, r1
	beq _021DBA4C
	str r2, [r4]
_021DBA4C:
	mov r0, #2
	tst r0, r1
	beq _021DBA54
	str r3, [r4, #4]
_021DBA54:
	mov r0, #4
	tst r0, r1
	beq _021DBA5E
	ldr r0, [sp, #8]
	str r0, [r4, #8]
_021DBA5E:
	mov r0, #8
	tst r0, r1
	beq _021DBA68
	ldr r0, [sp, #0xc]
	str r0, [r4, #0xc]
_021DBA68:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl G3X_SetFog
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DBA78
MOD05_021DBA78: ; 0x021DBA78
	push {r3, r4}
	mov r4, #0x10
	tst r4, r1
	beq _021DBA82
	strh r2, [r0, #0x10]
_021DBA82:
	mov r2, #0x20
	tst r1, r2
	beq _021DBA8A
	str r3, [r0, #0x14]
_021DBA8A:
	ldrh r1, [r0, #0x10]
	ldr r0, [r0, #0x14]
	lsl r0, r0, #0x10
	orr r1, r0
	ldr r0, _021DBA9C ; =0x04000358
	str r1, [r0]
	pop {r3, r4}
	bx lr
	nop
_021DBA9C: .word 0x04000358

	thumb_func_start MOD05_021DBAA0
MOD05_021DBAA0: ; 0x021DBAA0
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r4, #0
	add r1, #0x18
	mov r2, #0x20
	bl MIi_CpuCopy32
	add r4, #0x18
	add r0, r4, #0
	bl G3X_SetFogTable
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DBABC
MOD05_021DBABC: ; 0x021DBABC
	push {r4, lr}
	mov r0, #4
	mov r1, #0x48
	bl FUN_02016998
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x48
	bl MIi_CpuClear32
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DBAD8
MOD05_021DBAD8: ; 0x021DBAD8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4]
	mov r0, #4
	bl FUN_02016A8C
	mov r0, #0
	str r0, [r4]
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DBAEC
MOD05_021DBAEC: ; 0x021DBAEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
	add r5, r0, #0
	add r6, r0, #0
_021DBAFA:
	mov r0, #1
	lsl r0, r4
	tst r0, r7
	beq _021DBB14
	mov r1, #0
	mov r2, #2
	mov r3, #4
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	add r0, r4, #0
	bl FUN_020B8418
_021DBB14:
	add r1, r4, #4
	mov r0, #1
	lsl r0, r1
	tst r0, r7
	beq _021DBB26
	ldrh r1, [r6, #0x18]
	add r0, r4, #0
	bl FUN_020B8404
_021DBB26:
	add r4, r4, #1
	add r5, r5, #6
	add r6, r6, #2
	cmp r4, #4
	blt _021DBAFA
	mov r0, #3
	lsl r0, r0, #8
	tst r0, r7
	beq _021DBB48
	ldr r0, [sp, #8]
	ldr r1, [sp, #8]
	ldr r2, [sp, #8]
	ldrh r0, [r0, #0x20]
	ldrh r1, [r1, #0x22]
	ldr r2, [r2, #0x28]
	bl FUN_020B83E0
_021DBB48:
	mov r0, #3
	lsl r0, r0, #0xa
	tst r0, r7
	beq _021DBB60
	ldr r0, [sp, #8]
	ldr r1, [sp, #8]
	ldr r2, [sp, #8]
	ldrh r0, [r0, #0x24]
	ldrh r1, [r1, #0x26]
	ldr r2, [r2, #0x2c]
	bl FUN_020B83BC
_021DBB60:
	mov r0, #1
	lsl r0, r0, #0xc
	cmp r7, r0
	blt _021DBB88
	ldr r0, [sp, #8]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0x40]
	ldr r2, [sp, #8]
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r3, [sp, #8]
	ldr r0, [r0, #0x44]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [r1, #0x34]
	ldr r0, [r0, #0x30]
	ldr r2, [r2, #0x38]
	ldr r3, [r3, #0x3c]
	bl FUN_020B8390
_021DBB88:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021DBB8C
MOD05_021DBB8C: ; 0x021DBB8C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #1
	add r4, r2, #0
	lsl r0, r0, #8
	add r6, r1, #0
	tst r0, r4
	beq _021DBBA4
	ldrh r1, [r5, #0x20]
	add r0, r6, #0
	bl FUN_020BBC34
_021DBBA4:
	mov r0, #2
	lsl r0, r0, #8
	tst r0, r4
	beq _021DBBB4
	ldrh r1, [r5, #0x22]
	add r0, r6, #0
	bl FUN_020BBBF4
_021DBBB4:
	mov r0, #1
	lsl r0, r0, #0xa
	tst r0, r4
	beq _021DBBC4
	ldrh r1, [r5, #0x24]
	add r0, r6, #0
	bl FUN_020BBBB4
_021DBBC4:
	mov r0, #2
	lsl r0, r0, #0xa
	tst r0, r4
	beq _021DBBD4
	ldrh r1, [r5, #0x26]
	add r0, r6, #0
	bl FUN_020BBB74
_021DBBD4:
	mov r0, #1
	lsl r0, r0, #0xc
	tst r0, r4
	beq _021DBBE4
	ldr r1, [r5, #0x30]
	add r0, r6, #0
	bl FUN_020BBB34
_021DBBE4:
	mov r0, #2
	lsl r0, r0, #0xc
	tst r0, r4
	beq _021DBBF4
	ldr r1, [r5, #0x34]
	add r0, r6, #0
	bl FUN_020BBAF4
_021DBBF4:
	mov r0, #1
	lsl r0, r0, #0xe
	tst r0, r4
	beq _021DBC04
	ldr r1, [r5, #0x38]
	add r0, r6, #0
	bl FUN_020BBAB4
_021DBC04:
	mov r0, #2
	lsl r0, r0, #0xe
	tst r0, r4
	beq _021DBC14
	ldr r1, [r5, #0x3c]
	add r0, r6, #0
	bl FUN_020BBA74
_021DBC14:
	mov r0, #1
	lsl r0, r0, #0x10
	tst r0, r4
	beq _021DBC24
	ldr r1, [r5, #0x40]
	add r0, r6, #0
	bl FUN_020BBA34
_021DBC24:
	mov r1, #2
	lsl r1, r1, #0x10
	add r0, r4, #0
	tst r0, r1
	beq _021DBC3A
	ldr r2, [r5, #0x44]
	lsr r1, r1, #2
	add r0, r6, #0
	and r1, r2
	bl FUN_020BB9F4
_021DBC3A:
	mov r1, #1
	lsl r1, r1, #0x12
	add r0, r4, #0
	tst r0, r1
	beq _021DBC50
	ldr r2, [r5, #0x44]
	lsr r1, r1, #4
	add r0, r6, #0
	and r1, r2
	bl FUN_020BB9B4
_021DBC50:
	mov r1, #2
	lsl r1, r1, #0x12
	add r0, r4, #0
	tst r0, r1
	beq _021DBC66
	ldr r2, [r5, #0x44]
	lsr r1, r1, #6
	add r0, r6, #0
	and r1, r2
	bl FUN_020BB974
_021DBC66:
	mov r1, #1
	lsl r1, r1, #0x14
	add r0, r4, #0
	tst r0, r1
	beq _021DBC7C
	ldr r2, [r5, #0x44]
	lsr r1, r1, #8
	add r0, r6, #0
	and r1, r2
	bl FUN_020BB934
_021DBC7C:
	mov r1, #2
	lsl r1, r1, #0x14
	add r0, r4, #0
	tst r0, r1
	beq _021DBC92
	ldr r2, [r5, #0x44]
	lsr r1, r1, #0xa
	add r0, r6, #0
	and r1, r2
	bl FUN_020BB8F4
_021DBC92:
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021DBC94
MOD05_021DBC94: ; 0x021DBC94
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #6
	add r4, r1, #0
	mul r4, r0
	strh r2, [r5, r4]
	add r2, r5, #2
	strh r3, [r2, r4]
	add r6, sp, #0
	mov r0, #0x10
	ldrsh r0, [r6, r0]
	add r3, r5, #4
	strh r0, [r3, r4]
	add r0, r1, #0
	ldrsh r1, [r5, r4]
	ldrsh r2, [r2, r4]
	ldrsh r3, [r3, r4]
	bl FUN_020B8418
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021DBCBC
MOD05_021DBCBC: ; 0x021DBCBC
	push {r4, lr}
	add r4, r0, #0
	add r4, #0x18
	lsl r3, r1, #1
	strh r2, [r4, r3]
	add r0, r1, #0
	ldrh r1, [r4, r3]
	bl FUN_020B8404
	pop {r4, pc}

	thumb_func_start MOD05_021DBCD0
MOD05_021DBCD0: ; 0x021DBCD0
	push {r3, lr}
	strh r1, [r0, #0x20]
	str r2, [r0, #0x28]
	cmp r3, #1
	bne _021DBCE2
	mov r1, #1
	lsl r1, r1, #8
	bl MOD05_021DBAEC
_021DBCE2:
	pop {r3, pc}

	thumb_func_start MOD05_021DBCE4
MOD05_021DBCE4: ; 0x021DBCE4
	push {r3, lr}
	strh r1, [r0, #0x22]
	cmp r2, #1
	bne _021DBCF4
	mov r1, #2
	lsl r1, r1, #8
	bl MOD05_021DBAEC
_021DBCF4:
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DBCF8
MOD05_021DBCF8: ; 0x021DBCF8
	push {r3, lr}
	strh r1, [r0, #0x24]
	str r2, [r0, #0x2c]
	cmp r3, #1
	bne _021DBD0A
	mov r1, #1
	lsl r1, r1, #0xa
	bl MOD05_021DBAEC
_021DBD0A:
	pop {r3, pc}

	thumb_func_start MOD05_021DBD0C
MOD05_021DBD0C: ; 0x021DBD0C
	push {r3, lr}
	strh r1, [r0, #0x26]
	cmp r2, #1
	bne _021DBD1C
	mov r1, #2
	lsl r1, r1, #0xa
	bl MOD05_021DBAEC
_021DBD1C:
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DBD20
MOD05_021DBD20: ; 0x021DBD20
	push {r3, lr}
	str r1, [r0, #0x34]
	cmp r2, #1
	bne _021DBD30
	mov r1, #2
	lsl r1, r1, #0xc
	bl MOD05_021DBAEC
_021DBD30:
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DBD34
MOD05_021DBD34: ; 0x021DBD34
	push {r3, lr}
	str r1, [r0, #0x38]
	cmp r2, #1
	bne _021DBD44
	mov r1, #1
	lsl r1, r1, #0xe
	bl MOD05_021DBAEC
_021DBD44:
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DBD48
MOD05_021DBD48: ; 0x021DBD48
	push {r3, lr}
	str r1, [r0, #0x40]
	cmp r2, #1
	bne _021DBD58
	mov r1, #1
	lsl r1, r1, #0x10
	bl MOD05_021DBAEC
_021DBD58:
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DBD5C
MOD05_021DBD5C: ; 0x021DBD5C
	push {r3, lr}
	cmp r2, #1
	ldr r2, [r0, #0x44]
	bne _021DBD6A
	tst r2, r1
	beq _021DBD6E
	pop {r3, pc}
_021DBD6A:
	tst r2, r1
	beq _021DBD80
_021DBD6E:
	ldr r2, [r0, #0x44]
	eor r1, r2
	str r1, [r0, #0x44]
	cmp r3, #1
	bne _021DBD80
	mov r1, #1
	lsl r1, r1, #0xc
	bl MOD05_021DBAEC
_021DBD80:
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DBD84
MOD05_021DBD84: ; 0x021DBD84
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #0x18
	ldr r1, _021DBDE8 ; =0x021F6608
	mul r0, r2
	add r6, r3, #0
	add r4, r1, r0
	cmp r2, #0x10
	blo _021DBD9E
	bl ErrorHandling
_021DBD9E:
	mov r0, #4
	bl FUN_0201EB64
	str r0, [r5, #0x20]
	ldrb r0, [r4, #0xc]
	add r2, r4, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x20]
	str r0, [sp, #8]
	ldrh r3, [r4, #0xe]
	ldr r1, [r4]
	add r0, r7, #0
	bl FUN_0201ECA8
	ldr r0, [r5, #0x20]
	bl FUN_0201EB8C
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r5, #0x20]
	bl FUN_0201EC94
	cmp r6, #0
	beq _021DBDE2
	ldr r0, [r5, #0x20]
	mov r1, #6
	str r0, [sp]
	mov r0, #7
	mov r2, #2
	mov r3, #4
	bl FUN_0201EABC
_021DBDE2:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021DBDE8: .word 0x021F6608

	thumb_func_start MOD05_021DBDEC
MOD05_021DBDEC: ; 0x021DBDEC
	push {r4, lr}
	add r4, r0, #0
	bl FUN_0201EB98
	ldr r0, [r4, #0x20]
	bl FUN_0201EB48
	ldr r0, [r4, #0x20]
	bl FUN_0201EB70
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DBE04
MOD05_021DBE04: ; 0x021DBE04
	push {r4, lr}
	ldr r4, [r0, #0x18]
	cmp r4, #0
	bne _021DBE10
	bl ErrorHandling
_021DBE10:
	cmp r4, #5
	blt _021DBE18
	bl ErrorHandling
_021DBE18:
	sub r0, r4, #1
	pop {r4, pc}

	thumb_func_start MOD05_021DBE1C
MOD05_021DBE1C: ; 0x021DBE1C
	push {r4, lr}
	add r4, r0, #0
	bl MOD05_021DBE04
	add r1, r0, #0
	lsl r2, r1, #4
	ldr r1, _021DBE34 ; =0x021F6788
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_021DBE34: .word 0x021F6788

	thumb_func_start MOD05_021DBE38
MOD05_021DBE38: ; 0x021DBE38
	push {r4, lr}
	add r4, r0, #0
	bl MOD05_021DBE04
	lsl r1, r0, #4
	ldr r0, _021DBE54 ; =0x021F678C
	ldr r1, [r0, r1]
	cmp r1, #0
	bne _021DBE4E
	mov r0, #1
	pop {r4, pc}
_021DBE4E:
	add r0, r4, #0
	blx r1
	pop {r4, pc}
	.balign 4, 0
_021DBE54: .word 0x021F678C

	thumb_func_start MOD05_021DBE58
MOD05_021DBE58: ; 0x021DBE58
	push {r4, lr}
	add r4, r0, #0
	bl MOD05_021DBE04
	add r1, r0, #0
	lsl r2, r1, #4
	ldr r1, _021DBE70 ; =0x021F6790
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_021DBE70: .word 0x021F6790

	thumb_func_start MOD05_021DBE74
MOD05_021DBE74: ; 0x021DBE74
	push {r4, lr}
	add r4, r0, #0
	bl MOD05_021DBE04
	add r1, r0, #0
	lsl r2, r1, #4
	ldr r1, _021DBE8C ; =0x021F6794
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_021DBE8C: .word 0x021F6794

	thumb_func_start MOD05_021DBE90
MOD05_021DBE90: ; 0x021DBE90
	ldr r3, _021DBE94 ; =MOD05_021EFAAC
	bx r3
	.balign 4, 0
_021DBE94: .word MOD05_021EFAAC

	thumb_func_start MOD05_021DBE98
MOD05_021DBE98: ; 0x021DBE98
	ldr r3, _021DBE9C ; =0x02050E2D
	bx r3
	.balign 4, 0
_021DBE9C: .word 0x02050E2D

	thumb_func_start MOD05_021DBEA0
MOD05_021DBEA0: ; 0x021DBEA0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021DBEB8 ; =0x00000033
	mov r1, #2
	bl FUN_02005FDC
	add r0, r4, #0
	bl FUN_02254A68
	add r4, #0x80
	str r0, [r4]
	pop {r4, pc}
	.balign 4, 0
_021DBEB8: .word 0x00000033

	thumb_func_start MOD05_021DBEBC
MOD05_021DBEBC: ; 0x021DBEBC
	ldr r3, _021DBEC0 ; =MOD05_021EFB14
	bx r3
	.balign 4, 0
_021DBEC0: .word MOD05_021EFB14

	thumb_func_start MOD05_021DBEC4
MOD05_021DBEC4: ; 0x021DBEC4
	ldr r3, _021DBEC8 ; =0x02050E11
	bx r3
	.balign 4, 0
_021DBEC8: .word 0x02050E11

	thumb_func_start MOD05_021DBECC
MOD05_021DBECC: ; 0x021DBECC
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0]
	bl FUN_02254AB8
	ldr r0, _021DBEE0 ; =0x00000033
	bl FUN_02005F60
	pop {r3, pc}
	nop
_021DBEE0: .word 0x00000033

	thumb_func_start MOD05_021DBEE4
MOD05_021DBEE4: ; 0x021DBEE4
	ldr r3, _021DBEE8 ; =MOD05_021EFB50
	bx r3
	.balign 4, 0
_021DBEE8: .word MOD05_021EFB50

	thumb_func_start MOD05_021DBEEC
MOD05_021DBEEC: ; 0x021DBEEC
	mov r0, #1
	bx lr

	thumb_func_start MOD05_021DBEF0
MOD05_021DBEF0: ; 0x021DBEF0
	mov r0, #1
	bx lr

	thumb_func_start MOD05_021DBEF4
MOD05_021DBEF4: ; 0x021DBEF4
	push {r3, lr}
	mov r1, #0x42
	mov r0, #4
	lsl r1, r1, #2
	bl FUN_02016998
	cmp r0, #0
	beq _021DBF1E
	mov r2, #0
	add r3, r0, #0
	add r1, r2, #0
_021DBF0A:
	strh r1, [r3, #0x14]
	strh r1, [r3, #0x16]
	str r1, [r3]
	str r1, [r3, #8]
	str r1, [r3, #0x10]
	str r1, [r3, #0xc]
	add r2, r2, #1
	add r3, #0x18
	cmp r2, #0xb
	blt _021DBF0A
_021DBF1E:
	pop {r3, pc}

	thumb_func_start MOD05_021DBF20
MOD05_021DBF20: ; 0x021DBF20
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	ldr r5, _021DBF4C ; =0x021FD290
	add r7, r0, #0
	str r1, [sp]
	add r4, r6, #0
_021DBF2C:
	ldr r1, [sp]
	ldr r2, [r5]
	add r0, r7, #0
	add r3, r4, #0
	bl MOD05_021DBF50
	cmp r0, #0
	blt _021DBF3E
	add r6, r6, #1
_021DBF3E:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xb
	blt _021DBF2C
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DBF4C: .word 0x021FD290

	thumb_func_start MOD05_021DBF50
MOD05_021DBF50: ; 0x021DBF50
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r6, r0, #0
	add r7, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	cmp r6, #0
	bne _021DBF68
	mov r0, #0
	add sp, #0x34
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_021DBF68:
	mov r4, #0
	add r1, r6, #0
_021DBF6C:
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq _021DBF7A
	add r4, r4, #1
	add r1, #0x18
	cmp r4, #0xb
	blt _021DBF6C
_021DBF7A:
	cmp r4, #0xb
	beq _021DBF82
	cmp r7, #0
	bne _021DBF8A
_021DBF82:
	mov r0, #0
	add sp, #0x34
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_021DBF8A:
	mov r0, #0x18
	add r5, r4, #0
	mul r5, r0
	ldr r1, [sp]
	add r0, r7, #0
	bl FUN_0201C578
	str r0, [r6, r5]
	ldr r0, [r6, r5]
	cmp r0, #0
	bne _021DBFA8
	mov r0, #0
	add sp, #0x34
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_021DBFA8:
	ldr r1, [sp]
	add r0, r7, #0
	bl FUN_0201C5FC
	add r1, r6, r5
	str r0, [r1, #4]
	ldr r1, _021DBFF4 ; =0x021FD2BC
	ldr r2, [sp, #4]
	add r0, sp, #0xc
	bl sprintf
	add r7, r6, #0
	add r7, #0x10
	mov r0, #4
	add r1, sp, #0xc
	bl FUN_020161A4
	str r0, [r7, r5]
	add r0, r6, #0
	str r0, [sp, #8]
	add r0, #0xc
	str r0, [sp, #8]
	ldr r0, [r7, r5]
	mov r1, #4
	bl FUN_02016324
	ldr r1, [sp, #8]
	str r0, [r1, r5]
	add r0, r1, #0
	ldr r0, [r0, r5]
	bl FUN_020BC0FC
	add r1, r6, r5
	str r0, [r1, #8]
	add r0, r4, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021DBFF4: .word 0x021FD2BC

	thumb_func_start MOD05_021DBFF8
MOD05_021DBFF8: ; 0x021DBFF8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	beq _021DC064
	mov r4, #0
	ldr r7, _021DC068 ; =0x0000FFFF
	add r6, r4, #0
_021DC004:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021DC05C
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _021DC05C
	ldrh r0, [r5, #0x14]
	lsl r0, r0, #2
	add r0, r1, r0
	ldrh r1, [r0, #0x22]
	ldrh r0, [r5, #0x16]
	cmp r1, r0
	bhi _021DC058
	strh r6, [r5, #0x16]
	ldrh r0, [r5, #0x14]
	add r0, r0, #1
	strh r0, [r5, #0x14]
	ldrh r0, [r5, #0x14]
	ldr r1, [r5, #0x10]
	lsl r0, r0, #2
	add r0, r1, r0
	ldrh r0, [r0, #0x20]
	cmp r0, r7
	bne _021DC036
	strh r6, [r5, #0x14]
_021DC036:
	ldrh r2, [r5, #0x14]
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #8]
	lsl r2, r2, #2
	add r1, r1, r2
	ldrh r1, [r1, #0x20]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl FUN_0201C50C
	add r2, r0, #0
	ldr r1, [r5]
	ldr r3, [r5, #4]
	mov r0, #0
	bl FUN_0201C2C8
	b _021DC05C
_021DC058:
	add r0, r0, #1
	strh r0, [r5, #0x16]
_021DC05C:
	add r4, r4, #1
	add r5, #0x18
	cmp r4, #0xb
	blt _021DC004
_021DC064:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DC068: .word 0x0000FFFF

	thumb_func_start MOD05_021DC06C
MOD05_021DC06C: ; 0x021DC06C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	beq _021DC092
	add r6, r5, #0
	mov r0, #0x18
	add r4, r1, #0
	mul r4, r0
	add r6, #0x10
	ldr r0, [r6, r4]
	cmp r0, #0
	beq _021DC08A
	bl FUN_02016A18
	mov r0, #0
	str r0, [r6, r4]
_021DC08A:
	mov r1, #0
	add r0, r5, r4
	strh r1, [r0, #0x14]
	strh r1, [r0, #0x16]
_021DC092:
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021DC094
MOD05_021DC094: ; 0x021DC094
	push {r3, r4, r5, lr}
	add r5, r0, #0
	beq _021DC0AA
	mov r4, #0
_021DC09C:
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021DC06C
	add r4, r4, #1
	cmp r4, #0xb
	blt _021DC09C
_021DC0AA:
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021DC0AC
MOD05_021DC0AC: ; 0x021DC0AC
	push {r3, lr}
	cmp r0, #0
	beq _021DC0B6
	bl FUN_02016A18
_021DC0B6:
	pop {r3, pc}

	thumb_func_start MOD05_021DC0B8
MOD05_021DC0B8: ; 0x021DC0B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #4
	mov r1, #0x18
	bl FUN_02016998
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x18
	mov r0, #0
_021DC0CC:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021DC0CC
	add r0, r5, #0
	bl MOD05_021DC554
	str r0, [r4]
	mov r1, #0
	str r1, [r4, #4]
	str r1, [r4, #8]
	mov r0, #6
	str r0, [r4, #0xc]
	str r1, [r4, #0x14]
	mov r0, #0x17
	str r0, [r4, #0x10]
	mov r0, #0x10
	mov r1, #1
	bl FUN_0201E6E4
	add r0, r4, #0
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021DC0F8
MOD05_021DC0F8: ; 0x021DC0F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021DC106
	bl FUN_0200CAB4
_021DC106:
	add r0, r4, #0
	bl MOD05_021DC594
	add r2, r4, #0
	mov r1, #0x18
	mov r0, #0
_021DC112:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021DC112
	add r0, r4, #0
	bl FUN_02016A18
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DC124
MOD05_021DC124: ; 0x021DC124
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	cmp r0, #6
	beq _021DC134
	bl ErrorHandling
_021DC134:
	ldr r2, [r5, #4]
	cmp r2, r4
	beq _021DC170
	ldr r0, [r5]
	mov r1, #8
	bl MOD05_021DC608
	cmp r0, #0
	bne _021DC14A
	bl ErrorHandling
_021DC14A:
	ldr r0, [r5]
	mov r1, #0
	add r2, r4, #0
	bl MOD05_021DC608
	cmp r0, #0
	bne _021DC15C
	bl ErrorHandling
_021DC15C:
	ldr r0, [r5]
	mov r1, #3
	add r2, r4, #0
	bl MOD05_021DC608
	cmp r0, #0
	bne _021DC16E
	bl ErrorHandling
_021DC16E:
	str r4, [r5, #4]
_021DC170:
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DC174
MOD05_021DC174: ; 0x021DC174
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	cmp r0, #6
	beq _021DC186
	str r4, [r5, #0x10]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021DC186:
	ldr r0, [r5, #4]
	cmp r0, r4
	bne _021DC190
	mov r0, #1
	pop {r3, r4, r5, pc}
_021DC190:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021DC19A
	bl ErrorHandling
_021DC19A:
	str r4, [r5, #8]
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl MOD05_021DC368
	cmp r0, #0
	bne _021DC1B6
	ldr r0, _021DC1C8 ; =MOD05_021DC1D4
	mov r2, #0
	add r1, r5, #0
	str r2, [r5, #0xc]
	bl FUN_0200CA44
	b _021DC1C2
_021DC1B6:
	ldr r0, _021DC1CC ; =MOD05_021DC2A4
	mov r2, #0
	add r1, r5, #0
	str r2, [r5, #0xc]
	bl FUN_0200CA44
_021DC1C2:
	str r0, [r5, #0x14]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021DC1C8: .word MOD05_021DC1D4
_021DC1CC: .word MOD05_021DC2A4

	thumb_func_start MOD05_021DC1D0
MOD05_021DC1D0: ; 0x021DC1D0
	ldr r0, [r0, #4]
	bx lr

	thumb_func_start MOD05_021DC1D4
MOD05_021DC1D4: ; 0x021DC1D4
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	cmp r1, #5
	bhi _021DC2A2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DC1EA: ; jump table
	.short _021DC1F6 - _021DC1EA - 2 ; case 0
	.short _021DC210 - _021DC1EA - 2 ; case 1
	.short _021DC236 - _021DC1EA - 2 ; case 2
	.short _021DC250 - _021DC1EA - 2 ; case 3
	.short _021DC264 - _021DC1EA - 2 ; case 4
	.short _021DC286 - _021DC1EA - 2 ; case 5
_021DC1F6:
	ldr r0, [r4]
	ldr r2, [r4, #4]
	mov r1, #5
	bl MOD05_021DC608
	cmp r0, #0
	bne _021DC208
	bl ErrorHandling
_021DC208:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021DC210:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	bl MOD05_021DC6C0
	cmp r0, #3
	beq _021DC2A2
	ldr r0, [r4]
	ldr r2, [r4, #4]
	mov r1, #8
	bl MOD05_021DC608
	cmp r0, #0
	bne _021DC22E
	bl ErrorHandling
_021DC22E:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021DC236:
	ldr r0, [r4]
	ldr r2, [r4, #8]
	mov r1, #1
	bl MOD05_021DC608
	cmp r0, #0
	bne _021DC248
	bl ErrorHandling
_021DC248:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021DC250:
	ldr r0, [r4]
	ldr r1, [r4, #8]
	bl MOD05_021DC6C0
	cmp r0, #1
	beq _021DC2A2
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021DC264:
	ldr r0, [r4]
	ldr r2, [r4, #8]
	mov r1, #2
	bl MOD05_021DC608
	cmp r0, #0
	bne _021DC276
	bl ErrorHandling
_021DC276:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
_021DC286:
	mov r1, #6
	str r1, [r4, #0xc]
	mov r1, #0
	str r1, [r4, #0x14]
	bl FUN_0200CAB4
	ldr r1, [r4, #0x10]
	cmp r1, #0x17
	beq _021DC2A2
	add r0, r4, #0
	bl MOD05_021DC174
	mov r0, #0x17
	str r0, [r4, #0x10]
_021DC2A2:
	pop {r4, pc}

	thumb_func_start MOD05_021DC2A4
MOD05_021DC2A4: ; 0x021DC2A4
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	cmp r1, #4
	bhi _021DC366
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DC2BA: ; jump table
	.short _021DC2C4 - _021DC2BA - 2 ; case 0
	.short _021DC2DE - _021DC2BA - 2 ; case 1
	.short _021DC2F2 - _021DC2BA - 2 ; case 2
	.short _021DC31E - _021DC2BA - 2 ; case 3
	.short _021DC344 - _021DC2BA - 2 ; case 4
_021DC2C4:
	ldr r0, [r4]
	ldr r2, [r4, #8]
	mov r1, #1
	bl MOD05_021DC608
	cmp r0, #0
	bne _021DC2D6
	bl ErrorHandling
_021DC2D6:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021DC2DE:
	ldr r0, [r4]
	ldr r1, [r4, #8]
	bl MOD05_021DC6C0
	cmp r0, #1
	beq _021DC366
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021DC2F2:
	ldr r0, [r4]
	ldr r2, [r4, #4]
	mov r1, #7
	bl MOD05_021DC608
	cmp r0, #0
	bne _021DC304
	bl ErrorHandling
_021DC304:
	ldr r0, [r4]
	ldr r2, [r4, #8]
	mov r1, #4
	bl MOD05_021DC608
	cmp r0, #0
	bne _021DC316
	bl ErrorHandling
_021DC316:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021DC31E:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	bl MOD05_021DC6C0
	cmp r0, #3
	beq _021DC366
	ldr r0, [r4]
	ldr r2, [r4, #4]
	mov r1, #8
	bl MOD05_021DC608
	cmp r0, #0
	bne _021DC33C
	bl ErrorHandling
_021DC33C:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021DC344:
	ldr r1, [r4, #8]
	mov r2, #0
	str r1, [r4, #4]
	str r2, [r4, #8]
	mov r1, #6
	str r1, [r4, #0xc]
	str r2, [r4, #0x14]
	bl FUN_0200CAB4
	ldr r1, [r4, #0x10]
	cmp r1, #0x17
	beq _021DC366
	add r0, r4, #0
	bl MOD05_021DC174
	mov r0, #0x17
	str r0, [r4, #0x10]
_021DC366:
	pop {r4, pc}

	thumb_func_start MOD05_021DC368
MOD05_021DC368: ; 0x021DC368
	mov r2, #0
	cmp r0, #7
	bgt _021DC37E
	cmp r0, #5
	blt _021DC3BC
	beq _021DC384
	cmp r0, #6
	beq _021DC394
	cmp r0, #7
	beq _021DC3AE
	b _021DC3BC
_021DC37E:
	cmp r0, #0x15
	beq _021DC3A4
	b _021DC3BC
_021DC384:
	cmp r1, #6
	beq _021DC390
	cmp r1, #0x15
	beq _021DC390
	cmp r1, #7
	bne _021DC3BC
_021DC390:
	mov r2, #1
	b _021DC3BC
_021DC394:
	cmp r1, #5
	beq _021DC3A0
	cmp r1, #0x15
	beq _021DC3A0
	cmp r1, #7
	bne _021DC3BC
_021DC3A0:
	mov r2, #1
	b _021DC3BC
_021DC3A4:
	sub r0, r1, #5
	cmp r0, #2
	bhi _021DC3BC
	mov r2, #1
	b _021DC3BC
_021DC3AE:
	cmp r1, #5
	beq _021DC3BA
	cmp r1, #0x15
	beq _021DC3BA
	cmp r1, #6
	bne _021DC3BC
_021DC3BA:
	mov r2, #1
_021DC3BC:
	add r0, r2, #0
	bx lr

	thumb_func_start MOD05_021DC3C0
MOD05_021DC3C0: ; 0x021DC3C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r1, _021DC46C ; =0xFFFFF000
	add r6, r0, #0
	add r0, #0x14
	bl FUN_0202134C
	mov r0, #0
	add r3, r6, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0xff
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	mov r0, #3
	lsl r0, r0, #0x12
	str r0, [sp, #0x18]
	add r0, r6, #0
	add r0, #0xac
	add r1, sp, #0xc
	mov r2, #1
	add r3, #0x14
	bl FUN_02009FD8
	mov r4, #0
	add r5, r6, #0
	mov r7, #0x17
_021DC3F6:
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #4
	bl FUN_02008DEC
	add r4, r4, #1
	stmia r5!, {r0}
	cmp r4, #4
	blt _021DC3F6
	bl FUN_0200965C
	add r1, r0, #0
	mov r0, #4
	lsl r1, r1, #2
	bl FUN_02016998
	str r0, [r6, #0x10]
	mov r1, #0
	mov r2, #0x39
	bl MOD05_021DC480
	ldr r0, [r6, #0x10]
	mov r1, #1
	mov r2, #0x3a
	bl MOD05_021DC480
	ldr r0, [r6, #0x10]
	mov r1, #2
	mov r2, #0x37
	bl MOD05_021DC480
	ldr r0, [r6, #0x10]
	mov r1, #3
	mov r2, #0x38
	bl MOD05_021DC480
	mov r0, #0x40
	str r0, [sp]
	add r0, r6, #0
	add r0, #0x14
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	add r0, sp, #0
	bl FUN_0201FCB0
	add r1, r6, #0
	add r1, #0xf4
	str r0, [r1]
	ldr r0, _021DC470 ; =MOD05_021DC474
	add r1, r6, #0
	mov r2, #0xa
	bl FUN_0200CA44
	add r6, #0xf8
	str r0, [r6]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021DC46C: .word 0xFFFFF000
_021DC470: .word MOD05_021DC474

	thumb_func_start MOD05_021DC474
MOD05_021DC474: ; 0x021DC474
	ldr r3, _021DC47C ; =0x0201FDED
	add r1, #0xf4
	ldr r0, [r1]
	bx r3
	.balign 4, 0
_021DC47C: .word 0x0201FDED

	thumb_func_start MOD05_021DC480
MOD05_021DC480: ; 0x021DC480
	push {r3, r4, r5, lr}
	add r5, r2, #0
	bl FUN_02009660
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x41
	add r1, r5, #0
	mov r2, #0
	mov r3, #4
	bl FUN_02006C98
	add r5, r0, #0
	add r1, r4, #0
	mov r2, #4
	bl FUN_02009668
	add r0, r5, #0
	bl FUN_02016A18
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021DC4AC
MOD05_021DC4AC: ; 0x021DC4AC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_021DC4B4:
	ldr r0, [r6, #0x10]
	add r1, r4, #0
	bl FUN_02009660
	bl FUN_020096B4
	ldr r0, [r5]
	bl FUN_02008E2C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021DC4B4
	ldr r0, [r6, #0x10]
	bl FUN_02016A18
	mov r0, #0
	str r0, [r6, #0x10]
	add r0, r6, #0
	add r0, #0xf4
	ldr r0, [r0]
	bl FUN_0201FD58
	add r0, r6, #0
	mov r1, #0
	add r0, #0xf4
	str r1, [r0]
	add r0, r6, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl FUN_0200CAB4
	mov r0, #0
	add r6, #0xf8
	str r0, [r6]
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021DC4FC
MOD05_021DC4FC: ; 0x021DC4FC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	ldr r1, _021DC54C ; =0x0013F000
	cmp r0, r1
	ble _021DC512
	bl _s32_div_f
	str r1, [r4]
	b _021DC51C
_021DC512:
	ldr r2, _021DC550 ; =0xFFFC0000
	cmp r0, r2
	bge _021DC51C
	add r0, r0, r1
	str r0, [r4]
_021DC51C:
	mov r1, #1
	ldr r3, [r4, #4]
	lsl r1, r1, #0x14
	cmp r3, r1
	ble _021DC536
	lsr r2, r3, #0x1f
	lsl r1, r3, #0xc
	sub r1, r1, r2
	mov r0, #0xc
	ror r1, r0
	add r0, r2, r1
	str r0, [r4, #4]
	b _021DC540
_021DC536:
	ldr r0, _021DC550 ; =0xFFFC0000
	cmp r3, r0
	bge _021DC540
	add r0, r3, r1
	str r0, [r4, #4]
_021DC540:
	add r0, r5, #0
	add r1, r4, #0
	bl FUN_02020044
	pop {r3, r4, r5, pc}
	nop
_021DC54C: .word 0x0013F000
_021DC550: .word 0xFFFC0000

	thumb_func_start MOD05_021DC554
MOD05_021DC554: ; 0x021DC554
	push {r3, r4, r5, lr}
	mov r1, #0x43
	add r5, r0, #0
	mov r0, #4
	lsl r1, r1, #2
	bl FUN_02016998
	add r4, r0, #0
	mov r0, #0x41
	lsl r0, r0, #2
	str r5, [r4, r0]
	add r0, r4, #0
	add r0, #8
	bl MOD05_021DC3C0
	ldr r0, _021DC58C ; =0x021FD2D4
	mov r1, #4
	str r0, [r4]
	ldr r0, _021DC590 ; =0x021F689C
	str r0, [r4, #4]
	mov r0, #0x41
	bl FUN_02006670
	mov r1, #0x42
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021DC58C: .word 0x021FD2D4
_021DC590: .word 0x021F689C

	thumb_func_start MOD05_021DC594
MOD05_021DC594: ; 0x021DC594
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021DC5FE
	mov r5, #0
_021DC5A2:
	ldr r0, [r4]
	add r1, r5, #0
	bl MOD05_021DCA94
	add r5, r5, #1
	cmp r5, #0x17
	blt _021DC5A2
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	mov r0, #0x41
	ldr r1, [r4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	ldr r0, [r0, #0x44]
	add r3, r2, #0
	bl MOD05_021DBA40
	ldr r1, _021DC604 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strh r0, [r1]
	mov r0, #4
	mov r1, #0
	bl FUN_0201E6E4
	ldr r0, [r4]
	add r0, #8
	bl MOD05_021DC4AC
	mov r0, #0x42
	ldr r1, [r4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_020066F4
	ldr r1, [r4]
	mov r0, #4
	bl FUN_02016A8C
	mov r0, #0
	str r0, [r4]
_021DC5FE:
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021DC604: .word 0x04000008

	thumb_func_start MOD05_021DC608
MOD05_021DC608: ; 0x021DC608
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r6, r0, #0
	mov r5, #1
	cmp r4, #0x17
	ble _021DC618
	mov r0, #0
	pop {r4, r5, r6, pc}
_021DC618:
	cmp r1, #8
	bhi _021DC6BC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DC628: ; jump table
	.short _021DC63A - _021DC628 - 2 ; case 0
	.short _021DC644 - _021DC628 - 2 ; case 1
	.short _021DC64E - _021DC628 - 2 ; case 2
	.short _021DC65C - _021DC628 - 2 ; case 3
	.short _021DC66A - _021DC628 - 2 ; case 4
	.short _021DC69A - _021DC628 - 2 ; case 5
	.short _021DC6A4 - _021DC628 - 2 ; case 6
	.short _021DC6AC - _021DC628 - 2 ; case 7
	.short _021DC6B6 - _021DC628 - 2 ; case 8
_021DC63A:
	add r1, r4, #0
	bl MOD05_021DC8BC
	add r5, r0, #0
	b _021DC6BC
_021DC644:
	add r1, r4, #0
	bl MOD05_021DC90C
	add r5, r0, #0
	b _021DC6BC
_021DC64E:
	add r1, r4, #0
	mov r2, #0
	add r3, r5, #0
	bl MOD05_021DC948
	add r5, r0, #0
	b _021DC6BC
_021DC65C:
	add r1, r4, #0
	mov r2, #2
	add r3, r5, #0
	bl MOD05_021DC948
	add r5, r0, #0
	b _021DC6BC
_021DC66A:
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r0, [r0, #0x44]
	bl MOD05_021DBA30
	cmp r0, #1
	bne _021DC68A
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	mov r3, #2
	bl MOD05_021DC948
	add r5, r0, #0
	b _021DC6BC
_021DC68A:
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0
	add r3, r5, #0
	bl MOD05_021DC948
	add r5, r0, #0
	b _021DC6BC
_021DC69A:
	add r1, r4, #0
	add r2, r5, #0
	bl MOD05_021DCA44
	b _021DC6BC
_021DC6A4:
	add r1, r4, #0
	bl MOD05_021DCA6C
	b _021DC6BC
_021DC6AC:
	add r1, r4, #0
	mov r2, #0
	bl MOD05_021DCA44
	b _021DC6BC
_021DC6B6:
	add r1, r4, #0
	bl MOD05_021DCA94
_021DC6BC:
	add r0, r5, #0
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021DC6C0
MOD05_021DC6C0: ; 0x021DC6C0
	cmp r1, #0x17
	blt _021DC6C8
	mov r0, #0
	bx lr
_021DC6C8:
	ldr r2, [r0]
	mov r0, #0x24
	mul r0, r1
	add r0, r2, r0
	ldr r0, [r0, #0x14]
	bx lr

	thumb_func_start MOD05_021DC6D4
MOD05_021DC6D4: ; 0x021DC6D4
	push {r3, lr}
	add r3, r0, #0
	str r1, [sp]
	ldr r0, _021DC6E8 ; =0x04000050
	mov r1, #4
	mov r2, #0x21
	bl G2x_SetBlendAlpha_
	pop {r3, pc}
	nop
_021DC6E8: .word 0x04000050

	thumb_func_start MOD05_021DC6EC
MOD05_021DC6EC: ; 0x021DC6EC
	str r1, [r0]
	str r1, [r0, #4]
	sub r1, r2, r1
	str r1, [r0, #8]
	str r3, [r0, #0x10]
	mov r1, #0
	str r1, [r0, #0xc]
	bx lr

	thumb_func_start MOD05_021DC6FC
MOD05_021DC6FC: ; 0x021DC6FC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	mul r0, r1
	ldr r1, [r4, #0x10]
	bl _s32_div_f
	ldr r1, [r4, #4]
	add r0, r0, r1
	str r0, [r4]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r0, r0, #1
	cmp r0, r1
	bgt _021DC722
	str r0, [r4, #0xc]
	mov r0, #0
	pop {r4, pc}
_021DC722:
	str r1, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}

	thumb_func_start MOD05_021DC728
MOD05_021DC728: ; 0x021DC728
	str r1, [r0]
	str r1, [r0, #4]
	sub r1, r2, r1
	str r1, [r0, #8]
	strh r3, [r0, #0xe]
	mov r1, #0
	strh r1, [r0, #0xc]
	bx lr

	thumb_func_start MOD05_021DC738
MOD05_021DC738: ; 0x021DC738
	push {r4, lr}
	add r4, r0, #0
	mov r2, #0xc
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #8]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #0xe
	ldrsh r1, [r4, r1]
	bl FX_Div
	ldr r1, [r4, #4]
	add r0, r0, r1
	str r0, [r4]
	mov r0, #0xe
	ldrsh r1, [r4, r0]
	mov r0, #0xc
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	cmp r0, r1
	bgt _021DC77C
	strh r0, [r4, #0xc]
	mov r0, #0
	pop {r4, pc}
_021DC77C:
	strh r1, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DC784
MOD05_021DC784: ; 0x021DC784
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl MOD05_021DCDA0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl MOD05_021DCDD0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl MOD05_021DCE00
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl MOD05_021DCE3C
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021DC7B0
MOD05_021DC7B0: ; 0x021DC7B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r4, r2, #0
	add r6, r1, #0
	add r7, r3, #0
	ldr r5, [sp, #0x40]
	bl FUN_02009660
	str r0, [sp, #0x18]
	add r1, r4, #0
	bl FUN_02009710
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	bl FUN_0200973C
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	bl FUN_02009768
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	bl FUN_0200979C
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	bl FUN_020096DC
	cmp r6, #3
	bhi _021DC87A
	add r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DC800: ; jump table
	.short _021DC808 - _021DC800 - 2 ; case 0
	.short _021DC826 - _021DC800 - 2 ; case 1
	.short _021DC848 - _021DC800 - 2 ; case 2
	.short _021DC862 - _021DC800 - 2 ; case 3
_021DC808:
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x1c]
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #0x44]
	ldr r3, [sp, #0x20]
	str r0, [sp, #0xc]
	add r0, r7, #0
	add r1, r5, #0
	bl FUN_0200923C
	str r0, [sp, #0x14]
	b _021DC87A
_021DC826:
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x1c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x20]
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x44]
	add r1, r5, #0
	str r0, [sp, #0x10]
	add r0, r7, #0
	bl FUN_020092F8
	str r0, [sp, #0x14]
	b _021DC87A
_021DC848:
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	add r0, r7, #0
	add r1, r5, #0
	bl FUN_02009358
	str r0, [sp, #0x14]
	b _021DC87A
_021DC862:
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	add r0, r7, #0
	add r1, r5, #0
	bl FUN_02009358
	str r0, [sp, #0x14]
_021DC87A:
	ldr r0, [sp, #0x14]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021DC880
MOD05_021DC880: ; 0x021DC880
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	add r4, r2, #0
	cmp r1, r0
	beq _021DC8BA
	ldr r0, [r4]
	cmp r0, #0
	beq _021DC898
	bl FUN_02009C0C
_021DC898:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021DC8A2
	bl FUN_02009E04
_021DC8A2:
	mov r6, #0
_021DC8A4:
	ldr r1, [r4]
	cmp r1, #0
	beq _021DC8B0
	ldr r0, [r5, #8]
	bl FUN_02009490
_021DC8B0:
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #4
	blt _021DC8A4
_021DC8BA:
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021DC8BC
MOD05_021DC8BC: ; 0x021DC8BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r2, #0x24
	ldr r3, [r5]
	mul r2, r1
	add r4, r3, r2
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _021DC906
	add r1, r4, #0
	bl MOD05_021DCD04
	cmp r0, #0
	bne _021DC8DC
	mov r0, #0
	pop {r3, r4, r5, pc}
_021DC8DC:
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021DCBFC
	cmp r0, #0
	bne _021DC8F4
	ldr r0, [r4, #0xc]
	bl FUN_02016A18
	mov r0, #0
	str r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
_021DC8F4:
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0xc]
	str r1, [r0, #8]
	ldr r1, [r4, #4]
	add r0, r5, #0
	bl MOD05_021DCBE0
	mov r0, #2
	str r0, [r4, #0x14]
_021DC906:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DC90C
MOD05_021DC90C: ; 0x021DC90C
	push {r4, lr}
	mov r2, #0x24
	ldr r3, [r0]
	mul r2, r1
	add r4, r3, r2
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _021DC920
	mov r0, #1
	pop {r4, pc}
_021DC920:
	add r1, r4, #0
	bl MOD05_021DCD04
	cmp r0, #0
	bne _021DC92E
	mov r0, #0
	pop {r4, pc}
_021DC92E:
	ldr r0, _021DC944 ; =MOD05_021DCC38
	add r1, r4, #0
	mov r2, #1
	bl FUN_0200CA44
	str r0, [r4, #0x1c]
	mov r0, #1
	str r0, [r4, #0x14]
	mov r1, #0
	str r1, [r4, #0x18]
	pop {r4, pc}
	.balign 4, 0
_021DC944: .word MOD05_021DCC38

	thumb_func_start MOD05_021DC948
MOD05_021DC948: ; 0x021DC948
	push {r4, r5, r6, lr}
	add r5, r2, #0
	add r6, r3, #0
	ldr r3, [r0]
	mov r0, #0x24
	add r2, r1, #0
	mul r2, r0
	ldr r1, [r3, r2]
	sub r0, #0x25
	add r4, r3, r2
	cmp r1, r0
	beq _021DC96A
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _021DC96A
	mov r0, #0
	pop {r4, r5, r6, pc}
_021DC96A:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _021DC974
	mov r0, #0
	pop {r4, r5, r6, pc}
_021DC974:
	ldr r0, [r4, #0x14]
	cmp r0, #2
	beq _021DC97E
	mov r0, #0
	pop {r4, r5, r6, pc}
_021DC97E:
	ldr r0, [r4, #0x20]
	mov r2, #4
	bl FUN_0200CA44
	ldr r1, [r4, #0xc]
	ldr r3, _021DCA34 ; =0x00000F48
	str r0, [r1, r3]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, r3]
	cmp r0, #0
	bne _021DC998
	mov r0, #0
	pop {r4, r5, r6, pc}
_021DC998:
	mov r0, #3
	str r0, [r4, #0x14]
	add r0, r3, #0
	ldr r1, [r4, #0xc]
	add r0, #0x1a
	strh r5, [r1, r0]
	add r0, r3, #0
	ldr r1, [r4, #0xc]
	mov r2, #0
	add r0, #0x1e
	strh r2, [r1, r0]
	ldr r1, [r4, #0xc]
	add r0, r1, #0
	add r0, #0xc
	str r0, [r1, #0x40]
	ldr r1, [r4, #0xc]
	add r0, r1, #0
	add r0, #0xc
	str r0, [r1, #0x44]
	add r0, r3, #0
	ldr r1, [r4, #0xc]
	add r0, #0x1c
	strh r6, [r1, r0]
	add r0, r3, #0
	ldr r1, [r4, #0xc]
	add r0, #0x14
	str r2, [r1, r0]
	ldr r1, [r4, #0xc]
	add r0, r3, #4
	ldr r6, _021DCA38 ; =0x021CEF70
	add r5, r1, r0
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	str r0, [r5]
	ldr r1, [r4, #8]
	cmp r1, #0
	ble _021DC9FE
	mov r0, #4
	bl FUN_02016998
	ldr r2, [r4, #0xc]
	ldr r1, _021DCA3C ; =0x00000F58
	str r0, [r2, r1]
	ldr r0, [r4, #0xc]
	ldr r2, [r4, #8]
	ldr r0, [r0, r1]
	mov r1, #0
	bl Call_FillMemWithValue
	b _021DCA04
_021DC9FE:
	ldr r0, [r4, #0xc]
	add r3, #0x10
	str r2, [r0, r3]
_021DCA04:
	mov r0, #0
	ldr r1, [r4, #4]
	mvn r0, r0
	cmp r1, r0
	beq _021DCA30
	mov r0, #4
	mov r1, #0
	bl FUN_0201E6E4
	ldr r2, _021DCA40 ; =0x0400000C
	mov r1, #3
	ldrh r3, [r2]
	mov r0, #1
	bic r3, r1
	orr r0, r3
	strh r0, [r2]
	sub r2, r2, #4
	ldrh r3, [r2]
	mov r0, #2
	bic r3, r1
	orr r0, r3
	strh r0, [r2]
_021DCA30:
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021DCA34: .word 0x00000F48
_021DCA38: .word 0x021CEF70
_021DCA3C: .word 0x00000F58
_021DCA40: .word 0x0400000C

	thumb_func_start MOD05_021DCA44
MOD05_021DCA44: ; 0x021DCA44
	push {r3, r4}
	ldr r3, [r0]
	mov r0, #0x24
	mul r0, r1
	add r4, r3, r0
	ldr r0, [r4, #0x14]
	cmp r0, #3
	bne _021DCA62
	ldr r1, [r4, #0xc]
	ldr r0, _021DCA68 ; =0x00000F66
	mov r3, #5
	strh r3, [r1, r0]
	ldr r1, [r4, #0xc]
	sub r0, r0, #2
	strh r2, [r1, r0]
_021DCA62:
	pop {r3, r4}
	bx lr
	nop
_021DCA68: .word 0x00000F66

	thumb_func_start MOD05_021DCA6C
MOD05_021DCA6C: ; 0x021DCA6C
	push {r4, lr}
	mov r2, #0x24
	ldr r3, [r0]
	mul r2, r1
	add r4, r3, r2
	bl MOD05_021DC6C0
	cmp r0, #3
	bne _021DCA8E
	ldr r1, [r4, #0xc]
	ldr r0, _021DCA90 ; =0x00000F62
	mov r2, #5
	strh r2, [r1, r0]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x20]
	mov r0, #0
	blx r2
_021DCA8E:
	pop {r4, pc}
	.balign 4, 0
_021DCA90: .word 0x00000F62

	thumb_func_start MOD05_021DCA94
MOD05_021DCA94: ; 0x021DCA94
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r3, [r5]
	mov r0, #0x24
	add r2, r1, #0
	mul r2, r0
	add r4, r3, r2
	ldr r1, [r4, #4]
	sub r0, #0x25
	cmp r1, r0
	beq _021DCAD2
	mov r0, #4
	mov r1, #0
	bl FUN_0201E6E4
	ldr r0, _021DCB5C ; =0x0400000C
	mov r2, #3
	ldrh r3, [r0]
	mov r1, #3
	bic r3, r2
	orr r1, r3
	strh r1, [r0]
	sub r3, r0, #4
	ldrh r6, [r3]
	mov r1, #1
	add r0, #0x44
	bic r6, r2
	orr r1, r6
	strh r1, [r3]
	mov r1, #0
	strh r1, [r0]
_021DCAD2:
	ldr r2, [r4, #0x10]
	cmp r2, #0
	beq _021DCAFA
	ldr r1, [r4]
	add r0, r5, #0
	bl MOD05_021DC880
	ldr r1, [r4, #0x10]
	mov r0, #4
	bl FUN_02016A8C
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021DCAFA
	bl FUN_0200CAB4
	mov r0, #0
	str r0, [r4, #0x1c]
_021DCAFA:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021DCB58
	add r0, #0xc
	bl MOD05_021DD130
	ldr r0, [r4, #0xc]
	ldr r1, _021DCB60 ; =0x00000F5C
	ldr r1, [r0, r1]
	cmp r1, #1
	bne _021DCB14
	bl MOD05_021E0FD0
_021DCB14:
	ldr r1, [r4, #0xc]
	ldr r0, _021DCB64 ; =0x00000F58
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _021DCB2C
	mov r0, #4
	bl FUN_02016A8C
	ldr r1, [r4, #0xc]
	ldr r0, _021DCB64 ; =0x00000F58
	mov r2, #0
	str r2, [r1, r0]
_021DCB2C:
	ldr r0, [r4, #0x14]
	cmp r0, #1
	bne _021DCB3E
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021DCB4C
	bl FUN_0200CAB4
	b _021DCB4C
_021DCB3E:
	cmp r0, #3
	bne _021DCB4C
	ldr r1, [r4, #0xc]
	ldr r0, _021DCB68 ; =0x00000F48
	ldr r0, [r1, r0]
	bl FUN_0200CAB4
_021DCB4C:
	ldr r1, [r4, #0xc]
	mov r0, #4
	bl FUN_02016A8C
	mov r0, #0
	str r0, [r4, #0xc]
_021DCB58:
	pop {r4, r5, r6, pc}
	nop
_021DCB5C: .word 0x0400000C
_021DCB60: .word 0x00000F5C
_021DCB64: .word 0x00000F58
_021DCB68: .word 0x00000F48

	thumb_func_start MOD05_021DCB6C
MOD05_021DCB6C: ; 0x021DCB6C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0
	ldr r1, [r4, #4]
	mvn r0, r0
	cmp r1, r0
	beq _021DCBA2
	mov r0, #4
	mov r1, #0
	bl FUN_0201E6E4
	ldr r0, _021DCBD4 ; =0x0400000C
	mov r2, #3
	ldrh r3, [r0]
	mov r1, #3
	bic r3, r2
	orr r1, r3
	strh r1, [r0]
	sub r3, r0, #4
	ldrh r5, [r3]
	mov r1, #1
	add r0, #0x44
	bic r5, r2
	orr r1, r5
	strh r1, [r3]
	mov r1, #0
	strh r1, [r0]
_021DCBA2:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021DCBD0
	add r0, #0xc
	bl MOD05_021DD130
	ldr r0, [r4, #0xc]
	ldr r1, _021DCBD8 ; =0x00000F5C
	ldr r1, [r0, r1]
	cmp r1, #1
	bne _021DCBBC
	bl MOD05_021E0FD0
_021DCBBC:
	ldr r0, [r4, #0x14]
	cmp r0, #3
	bne _021DCBD0
	ldr r1, [r4, #0xc]
	ldr r0, _021DCBDC ; =0x00000F48
	ldr r0, [r1, r0]
	bl FUN_0200CAB4
	mov r0, #2
	str r0, [r4, #0x14]
_021DCBD0:
	pop {r3, r4, r5, pc}
	nop
_021DCBD4: .word 0x0400000C
_021DCBD8: .word 0x00000F5C
_021DCBDC: .word 0x00000F48

	thumb_func_start MOD05_021DCBE0
MOD05_021DCBE0: ; 0x021DCBE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl MOD05_021DCECC
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021DCF14
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021DCF68
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021DCBFC
MOD05_021DCBFC: ; 0x021DCBFC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r0, #0
	ldr r1, [r4]
	mvn r0, r0
	cmp r1, r0
	beq _021DCC32
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _021DCC32
	add r0, r4, #0
	bl MOD05_021DCD68
	cmp r0, #0
	bne _021DCC20
	mov r0, #0
	pop {r3, r4, r5, pc}
_021DCC20:
	ldr r1, [r4]
	ldr r2, [r4, #0x10]
	add r0, r5, #0
	bl MOD05_021DC784
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021DCE74
_021DCC32:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DCC38
MOD05_021DCC38: ; 0x021DCC38
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	ldr r2, [r4, #0x18]
	ldr r0, [r0]
	cmp r2, #8
	bhi _021DCD00
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021DCC54: ; jump table
	.short _021DCC66 - _021DCC54 - 2 ; case 0
	.short _021DCC7C - _021DCC54 - 2 ; case 1
	.short _021DCC8C - _021DCC54 - 2 ; case 2
	.short _021DCC9A - _021DCC54 - 2 ; case 3
	.short _021DCCAA - _021DCC54 - 2 ; case 4
	.short _021DCCB8 - _021DCC54 - 2 ; case 5
	.short _021DCCC8 - _021DCC54 - 2 ; case 6
	.short _021DCCD6 - _021DCC54 - 2 ; case 7
	.short _021DCCE6 - _021DCC54 - 2 ; case 8
_021DCC66:
	add r0, r4, #0
	bl MOD05_021DCD68
	cmp r0, #0
	bne _021DCC74
	bl ErrorHandling
_021DCC74:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	pop {r3, r4, r5, pc}
_021DCC7C:
	ldr r1, [r4]
	ldr r2, [r4, #0x10]
	bl MOD05_021DCDA0
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	pop {r3, r4, r5, pc}
_021DCC8C:
	ldr r1, [r4, #4]
	bl MOD05_021DCECC
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	pop {r3, r4, r5, pc}
_021DCC9A:
	ldr r1, [r4]
	ldr r2, [r4, #0x10]
	bl MOD05_021DCDD0
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	pop {r3, r4, r5, pc}
_021DCCAA:
	ldr r1, [r4, #4]
	bl MOD05_021DCF14
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	pop {r3, r4, r5, pc}
_021DCCB8:
	ldr r1, [r4]
	ldr r2, [r4, #0x10]
	bl MOD05_021DCE00
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	pop {r3, r4, r5, pc}
_021DCCC8:
	ldr r1, [r4, #4]
	bl MOD05_021DCF68
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	pop {r3, r4, r5, pc}
_021DCCD6:
	ldr r1, [r4]
	ldr r2, [r4, #0x10]
	bl MOD05_021DCE3C
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	pop {r3, r4, r5, pc}
_021DCCE6:
	bl MOD05_021DCE74
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0xc]
	str r1, [r0, #8]
	mov r0, #2
	str r0, [r4, #0x14]
	mov r0, #0
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	add r0, r5, #0
	bl FUN_0200CAB4
_021DCD00:
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DCD04
MOD05_021DCD04: ; 0x021DCD04
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021DCD14
	mov r0, #1
	pop {r3, r4, r5, pc}
_021DCD14:
	ldr r1, _021DCD60 ; =0x00000F68
	mov r0, #4
	bl FUN_02016998
	str r0, [r4, #0xc]
	cmp r0, #0
	bne _021DCD26
	mov r0, #0
	pop {r3, r4, r5, pc}
_021DCD26:
	ldr r2, _021DCD60 ; =0x00000F68
	mov r1, #0
	bl Call_FillMemWithValue
	ldr r0, [r4, #0xc]
	ldr r2, _021DCD64 ; =0x00000F62
	str r5, [r0]
	ldr r1, [r4, #0xc]
	mov r0, #0
	strh r0, [r1, r2]
	add r1, r2, #4
	ldr r3, [r4, #0xc]
	sub r2, #0xa
	strh r0, [r3, r1]
	ldr r3, [r4, #0xc]
	add r1, r3, #0
	add r1, #0xc
	str r1, [r3, #0x40]
	ldr r3, [r4, #0xc]
	add r1, r3, #0
	add r1, #0xc
	str r1, [r3, #0x44]
	ldr r1, [r4, #0xc]
	str r0, [r1, r2]
	ldr r0, [r4, #0xc]
	str r4, [r0, #4]
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021DCD60: .word 0x00000F68
_021DCD64: .word 0x00000F62

	thumb_func_start MOD05_021DCD68
MOD05_021DCD68: ; 0x021DCD68
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	ldr r1, [r4]
	mvn r0, r0
	cmp r1, r0
	beq _021DCD9A
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021DCD80
	mov r0, #1
	pop {r4, pc}
_021DCD80:
	mov r0, #4
	mov r1, #0x64
	bl FUN_02016998
	str r0, [r4, #0x10]
	cmp r0, #0
	bne _021DCD92
	mov r0, #0
	pop {r4, pc}
_021DCD92:
	mov r1, #0
	mov r2, #0x64
	bl Call_FillMemWithValue
_021DCD9A:
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DCDA0
MOD05_021DCDA0: ; 0x021DCDA0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	add r3, r1, #0
	mvn r0, r0
	add r4, r2, #0
	cmp r3, r0
	beq _021DCDCC
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r3, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r3, [r5, #0x10]
	mov r1, #2
	bl MOD05_021DC7B0
	str r0, [r4, #8]
_021DCDCC:
	add sp, #8
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021DCDD0
MOD05_021DCDD0: ; 0x021DCDD0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	add r3, r1, #0
	mvn r0, r0
	add r4, r2, #0
	cmp r3, r0
	beq _021DCDFC
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r3, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r3, [r5, #0x14]
	mov r1, #3
	bl MOD05_021DC7B0
	str r0, [r4, #0xc]
_021DCDFC:
	add sp, #8
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021DCE00
MOD05_021DCE00: ; 0x021DCE00
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	add r3, r1, #0
	mvn r0, r0
	add r4, r2, #0
	cmp r3, r0
	beq _021DCE36
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r3, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	ldr r3, [r5, #8]
	mov r1, #0
	bl MOD05_021DC7B0
	str r0, [r4]
	bl FUN_02009B04
	ldr r0, [r4]
	bl FUN_02009474
_021DCE36:
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DCE3C
MOD05_021DCE3C: ; 0x021DCE3C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	add r3, r1, #0
	mvn r0, r0
	add r4, r2, #0
	cmp r3, r0
	beq _021DCE70
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	add r2, r3, #0
	ldr r0, [r5, #0x18]
	ldr r3, [r5, #0xc]
	bl MOD05_021DC7B0
	str r0, [r4, #4]
	bl FUN_02009D68
	ldr r0, [r4, #4]
	bl FUN_02009474
_021DCE70:
	add sp, #8
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021DCE74
MOD05_021DCE74: ; 0x021DCE74
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r0, #0
	ldr r1, [r4]
	mvn r0, r0
	cmp r1, r0
	beq _021DCEC8
	ldr r2, [r4, #0x10]
	mov r0, #1
	str r0, [sp]
	add r0, r2, #0
	add r0, #0x40
	add r1, r5, #0
	mov r3, #0
	bl MOD05_021DD0A4
	ldr r0, [r4, #0x10]
	mov r1, #0
	add r0, #0x10
	mov r2, #0x30
	bl Call_FillMemWithValue
	add r5, #0xfc
	ldr r1, [r5]
	ldr r0, [r4, #0x10]
	str r1, [r0, #0x10]
	ldr r1, [r4, #0x10]
	add r0, r1, #0
	add r0, #0x40
	str r0, [r1, #0x14]
	mov r1, #1
	ldr r0, [r4, #0x10]
	lsl r1, r1, #0xc
	str r1, [r0, #0x24]
	ldr r0, [r4, #0x10]
	str r1, [r0, #0x28]
	ldr r0, [r4, #0x10]
	str r1, [r0, #0x2c]
	ldr r0, [r4, #0x10]
	mov r1, #1
	str r1, [r0, #0x38]
_021DCEC8:
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DCECC
MOD05_021DCECC: ; 0x021DCECC
	push {r3, lr}
	sub sp, #0x18
	add r2, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _021DCF0E
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	ldr r3, [r2, #4]
	mov r2, #0xc
	mul r2, r1
	ldr r1, [r3, r2]
	mov r2, #4
	bl FUN_02006704
	add r1, sp, #0x14
	str r0, [sp]
	bl FUN_020B0138
	ldr r1, [sp, #0x14]
	mov r0, #2
	ldr r1, [r1, #0xc]
	mov r2, #0x20
	mov r3, #0xc0
	bl FUN_02017FB4
	ldr r0, [sp]
	bl FUN_02016A18
	mov r0, #0
	str r0, [sp]
_021DCF0E:
	add sp, #0x18
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DCF14
MOD05_021DCF14: ; 0x021DCF14
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _021DCF62
	mov r2, #0xc
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r3, [r4, #4]
	mul r2, r1
	add r1, r3, r2
	ldr r0, [r4, r0]
	ldr r1, [r1, #4]
	mov r2, #4
	bl FUN_02006704
	add r1, sp, #0x14
	str r0, [sp, #8]
	bl FUN_020B0088
	ldr r3, [sp, #0x14]
	mov r0, #0
	str r0, [sp]
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [r3, #0x14]
	ldr r0, [r0, #8]
	ldr r3, [r3, #0x10]
	mov r1, #2
	bl FUN_02017E14
	ldr r0, [sp, #8]
	bl FUN_02016A18
	mov r0, #0
	str r0, [sp, #8]
_021DCF62:
	add sp, #0x1c
	pop {r3, r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DCF68
MOD05_021DCF68: ; 0x021DCF68
	push {r4, r5, lr}
	sub sp, #0x24
	add r4, r0, #0
	mov r0, #0
	add r5, r1, #0
	mvn r0, r0
	cmp r5, r0
	beq _021DD00A
	mov r0, #4
	mov r1, #0
	bl FUN_0201E6E4
	mov r1, #0xc
	mov r0, #0x42
	lsl r0, r0, #2
	ldr r2, [r4, #4]
	mul r1, r5
	add r1, r2, r1
	ldr r0, [r4, r0]
	ldr r1, [r1, #8]
	mov r2, #4
	bl FUN_02006704
	str r0, [sp, #0x14]
	cmp r0, #0
	bne _021DCFA0
	bl ErrorHandling
_021DCFA0:
	ldr r0, [sp, #0x14]
	add r1, sp, #0x18
	bl FUN_020B0180
	ldr r3, [sp, #0x18]
	mov r0, #0
	str r0, [sp]
	add r2, r3, #0
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r3, [r3, #8]
	ldr r0, [r0, #8]
	mov r1, #2
	add r2, #0xc
	bl FUN_02017CE8
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r3, [sp, #0x18]
	ldr r0, [r4, r0]
	add r2, r3, #0
	ldr r0, [r0, #8]
	ldr r3, [r3, #8]
	mov r1, #2
	add r2, #0xc
	bl FUN_02017DFC
	mov r0, #0x20
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	add r0, #0xfe
	ldr r0, [r4, r0]
	mov r2, #0
	ldr r0, [r0, #8]
	mov r1, #2
	add r3, r2, #0
	bl FUN_020186B4
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	ldr r0, [r0, #8]
	bl FUN_02017CD0
	ldr r0, [sp, #0x14]
	bl FUN_02016A18
	mov r0, #0
	str r0, [sp, #0x14]
_021DD00A:
	add sp, #0x24
	pop {r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DD010
MOD05_021DD010: ; 0x021DD010
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r4, r1, #0
	cmp r0, #0
	beq _021DD020
	bl ErrorHandling
_021DD020:
	cmp r4, #0
	bgt _021DD028
	bl ErrorHandling
_021DD028:
	cmp r4, #0x28
	bls _021DD030
	bl ErrorHandling
_021DD030:
	add r0, r5, #0
	add r0, #0xc
	str r0, [r5, #8]
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021DD038
MOD05_021DD038: ; 0x021DD038
	ldr r3, _021DD044 ; =0x020DF4A4
	mov r1, #0
	str r1, [r0, #8]
	add r0, #0xc
	mov r2, #0x28
	bx r3
	.balign 4, 0
_021DD044: .word 0x020DF4A4

	thumb_func_start MOD05_021DD048
MOD05_021DD048: ; 0x021DD048
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	ldr r6, [r5]
	bl MOD05_021DD6FC
	add r4, r0, #0
	bne _021DD05C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021DD05C:
	add r0, r5, #0
	str r6, [r4]
	add r0, #0xc
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	ldr r0, [r5, #0x44]
	str r4, [r0, #0x34]
	str r4, [r5, #0x44]
	ldr r0, [r5, #8]
	add r0, #0x10
	bl FUN_0201FE94
	str r0, [r4, #4]
	cmp r0, #0
	bne _021DD086
	add r0, r4, #0
	bl MOD05_021DD100
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021DD086:
	add r0, r4, #0
	add r1, r7, #0
	bl MOD05_021DD010
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021DD09E
	add r0, r4, #0
	bl MOD05_021DD100
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021DD09E:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DD0A4
MOD05_021DD0A4: ; 0x021DD0A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp, #0x2c]
	add r7, r1, #0
	add r5, r2, #0
	str r3, [sp, #0x30]
	mov r6, #0
	add r4, sp, #0x34
_021DD0B4:
	ldr r0, [r5]
	bl FUN_02009530
	add r6, r6, #1
	add r5, r5, #4
	stmia r4!, {r0}
	cmp r6, #4
	blt _021DD0B4
	ldr r0, [sp, #0x40]
	str r0, [sp]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x10]
	ldr r0, [r7, #8]
	str r0, [sp, #0x14]
	ldr r0, [r7, #0xc]
	str r0, [sp, #0x18]
	ldr r0, [r7, #0x10]
	str r0, [sp, #0x1c]
	ldr r0, [r7, #0x14]
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #0x3c]
	bl FUN_02008AA4
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DD100
MOD05_021DD100: ; 0x021DD100
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x34]
	ldr r0, [r4, #0x38]
	str r1, [r0, #0x34]
	ldr r1, [r4, #0x38]
	ldr r0, [r4, #0x34]
	str r1, [r0, #0x38]
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021DD11E
	bl FUN_0201FFC8
	mov r0, #0
	str r0, [r4, #4]
_021DD11E:
	add r0, r4, #0
	bl MOD05_021DD038
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x3c
	bl Call_FillMemWithValue
	pop {r4, pc}

	thumb_func_start MOD05_021DD130
MOD05_021DD130: ; 0x021DD130
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	cmp r0, r5
	beq _021DD146
_021DD13A:
	ldr r4, [r0, #0x34]
	bl MOD05_021DD100
	add r0, r4, #0
	cmp r4, r5
	bne _021DD13A
_021DD146:
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021DD148
MOD05_021DD148: ; 0x021DD148
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	add r6, r1, #0
	ldr r4, [r0, #0x34]
	cmp r0, r5
	beq _021DD160
_021DD156:
	blx r6
	add r0, r4, #0
	ldr r4, [r4, #0x34]
	cmp r0, r5
	bne _021DD156
_021DD160:
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DD164
MOD05_021DD164: ; 0x021DD164
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021DD168
MOD05_021DD168: ; 0x021DD168
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #4]
	bl FUN_0202011C
	add r2, r0, #0
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2]
	str r0, [r4]
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DD180
MOD05_021DD180: ; 0x021DD180
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #1
	mov r1, #3
	add r5, r2, #0
	lsl r0, r0, #0xe
	lsl r1, r1, #0xc
	bl FX_Div
	add r4, r0, #0
	mov r0, #0x41
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r0, [r0, #0x20]
	bl FUN_0201F008
	add r6, r0, #0
	mov r0, #0x41
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r0, [r0, #0x20]
	bl FUN_0201F010
	add r1, r0, #0
	add r0, sp, #0xc
	str r0, [sp]
	add r0, r6, #0
	add r2, r4, #0
	add r3, sp, #0x10
	bl FUN_0201CB7C
	mov r1, #1
	ldr r0, [sp, #0x10]
	lsl r1, r1, #0x14
	bl FX_Div
	str r0, [sp, #0x10]
	mov r1, #3
	ldr r0, [sp, #0xc]
	lsl r1, r1, #0x12
	bl FX_Div
	ldr r3, _021DD2B0 ; =0x021CEF70
	str r0, [sp, #0xc]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r4, _021DD2B4 ; =0x00000F4C
	str r0, [r2]
	ldr r1, [sp, #0x14]
	ldr r0, [r5, r4]
	ldr r2, [sp, #0x1c]
	sub r0, r1, r0
	add r1, r4, #0
	add r1, #8
	ldr r1, [r5, r1]
	add r4, #0xb4
	sub r7, r2, r1
	cmp r0, #0
	bge _021DD21E
	ldr r4, _021DD2B8 ; =0xFFFFF000
	asr r1, r0, #0x1f
	asr r3, r4, #0xc
	add r2, r4, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
_021DD21E:
	ldr r1, [sp, #0x10]
	bl FX_Div
	add r6, r0, #0
	cmp r4, #0
	bge _021DD244
	asr r1, r6, #0x1f
	asr r3, r4, #0x1f
	add r2, r4, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r6, r2, #0xc
	orr r6, r0
_021DD244:
	mov r4, #1
	lsl r4, r4, #0xc
	cmp r7, #0
	bge _021DD26A
	ldr r4, _021DD2B8 ; =0xFFFFF000
	asr r1, r7, #0x1f
	add r0, r7, #0
	asr r3, r4, #0xc
	add r2, r4, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r7, r2, #0xc
	orr r7, r0
_021DD26A:
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	bl FX_Div
	add r3, r0, #0
	cmp r4, #0
	bge _021DD292
	asr r1, r3, #0x1f
	asr r3, r4, #0x1f
	add r2, r4, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r3, r2, #0xc
	orr r3, r0
_021DD292:
	add r0, r6, r3
	beq _021DD2A4
	ldr r0, _021DD2B4 ; =0x00000F4C
	add r2, sp, #0x14
	add r4, r5, r0
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2]
	str r0, [r4]
_021DD2A4:
	ldr r0, [sp, #4]
	str r6, [r0]
	ldr r0, [sp, #8]
	str r3, [r0]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021DD2B0: .word 0x021CEF70
_021DD2B4: .word 0x00000F4C
_021DD2B8: .word 0xFFFFF000

	thumb_func_start MOD05_021DD2BC
MOD05_021DD2BC: ; 0x021DD2BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp]
	add r0, sp, #8
	add r1, sp, #4
	add r2, r5, #0
	bl MOD05_021DD180
	ldr r4, [r5, #0x40]
	add r5, #0xc
	cmp r4, r5
	beq _021DD300
	add r6, sp, #0xc
_021DD2DA:
	add r0, r6, #0
	add r1, r4, #0
	bl MOD05_021DD168
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	sub r0, r1, r0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #4]
	sub r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl MOD05_021DC4FC
	ldr r4, [r4, #0x34]
	cmp r4, r5
	bne _021DD2DA
_021DD300:
	cmp r7, #0
	beq _021DD310
	ldr r0, [sp, #8]
	asr r0, r0, #0xc
	str r0, [r7]
	bpl _021DD310
	add r0, r0, #1
	str r0, [r7]
_021DD310:
	ldr r0, [sp]
	cmp r0, #0
	beq _021DD324
	ldr r0, [sp, #4]
	asr r1, r0, #0xc
	ldr r0, [sp]
	str r1, [r0]
	bpl _021DD324
	add r1, r1, #1
	str r1, [r0]
_021DD324:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021DD328
MOD05_021DD328: ; 0x021DD328
	str r1, [r0]
	strh r2, [r0, #4]
	mov r1, #0
	strh r1, [r0, #6]
	strh r3, [r0, #8]
	strh r1, [r0, #0xa]
	ldr r1, [sp]
	strh r1, [r0, #0xc]
	ldr r1, [sp, #4]
	strh r1, [r0, #0xe]
	ldr r1, [sp, #8]
	strh r1, [r0, #0x10]
	ldr r1, [sp, #0xc]
	strh r1, [r0, #0x12]
	ldr r1, [sp, #0x10]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x14]
	str r1, [r0, #0x18]
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021DD350
MOD05_021DD350: ; 0x021DD350
	strh r1, [r0, #0xc]
	strh r2, [r0, #0xe]
	ldr r1, [sp]
	strh r3, [r0, #0x10]
	str r1, [r0, #0x14]
	bx lr

	thumb_func_start MOD05_021DD35C
MOD05_021DD35C: ; 0x021DD35C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x10
	ldrsh r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	bne _021DD370
	mov r0, #1
	orr r4, r0
	b _021DD396
_021DD370:
	bgt _021DD376
	mov r2, #1
	b _021DD378
_021DD376:
	add r2, r4, #0
_021DD378:
	mov r0, #0xe
	ldrsh r1, [r5, r0]
	mov r0, #8
	ldrsh r0, [r5, r0]
	cmp r0, r1
	blt _021DD388
	cmp r2, #0
	beq _021DD390
_021DD388:
	cmp r0, r1
	bgt _021DD396
	cmp r2, #1
	bne _021DD396
_021DD390:
	mov r0, #1
	orr r4, r0
	strh r1, [r5, #8]
_021DD396:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _021DD3A2
	mov r0, #2
	orr r4, r0
	b _021DD3C8
_021DD3A2:
	bgt _021DD3A8
	mov r2, #1
	b _021DD3AA
_021DD3A8:
	mov r2, #0
_021DD3AA:
	mov r0, #0xc
	ldrsh r1, [r5, r0]
	mov r0, #4
	ldrsh r0, [r5, r0]
	cmp r0, r1
	blt _021DD3BA
	cmp r2, #0
	beq _021DD3C2
_021DD3BA:
	cmp r0, r1
	bgt _021DD3C8
	cmp r2, #1
	bne _021DD3C8
_021DD3C2:
	mov r0, #2
	orr r4, r0
	strh r1, [r5, #4]
_021DD3C8:
	mov r0, #6
	ldrsh r1, [r5, r0]
	sub r1, r1, #1
	strh r1, [r5, #6]
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bgt _021DD41C
	mov r1, #4
	ldrsh r1, [r5, r1]
	ldr r0, [r5]
	ldr r2, [r5, #0x18]
	blx r2
	mov r0, #8
	ldrsh r1, [r5, r0]
	strh r1, [r5, #6]
	mov r1, #1
	tst r1, r4
	bne _021DD3F6
	ldrsh r1, [r5, r0]
	mov r0, #0x10
	ldrsh r0, [r5, r0]
	add r0, r1, r0
	strh r0, [r5, #8]
_021DD3F6:
	mov r0, #2
	tst r0, r4
	bne _021DD41C
	mov r0, #0xa
	ldrsh r1, [r5, r0]
	add r1, r1, #1
	strh r1, [r5, #0xa]
	ldrsh r1, [r5, r0]
	mov r0, #0x12
	ldrsh r0, [r5, r0]
	cmp r1, r0
	blt _021DD41C
	mov r0, #0
	strh r0, [r5, #0xa]
	mov r0, #4
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x14]
	add r0, r1, r0
	strh r0, [r5, #4]
_021DD41C:
	add r0, r4, #0
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021DD420
MOD05_021DD420: ; 0x021DD420
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, [sp, #0x1c]
	str r2, [r4]
	cmp r1, #0
	beq _021DD470
	cmp r1, #1
	bne _021DD454
	add r1, r3, #0
	add r3, sp, #0
	add r0, r2, #0
	ldrh r3, [r3, #0x14]
	ldr r2, [sp, #0x10]
	bl MOD05_021DD49C
	add r0, r4, #0
	bl MOD05_021DD598
	ldr r1, [sp, #0x18]
	add r0, r4, #0
	mov r2, #1
	bl MOD05_021DD5B4
	add sp, #8
	pop {r4, pc}
_021DD454:
	cmp r1, #2
	bne _021DD470
	add r1, sp, #0
	ldrh r1, [r1, #0x14]
	ldr r4, [sp, #0x18]
	str r1, [sp]
	mov r1, #0x7f
	mul r1, r4
	str r1, [sp, #4]
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, [sp, #0x10]
	bl MOD05_021DD4C8
_021DD470:
	add sp, #8
	pop {r4, pc}

	thumb_func_start MOD05_021DD474
MOD05_021DD474: ; 0x021DD474
	push {r4, lr}
	mov r4, #1
	cmp r2, #0
	beq _021DD498
	cmp r2, #1
	bne _021DD48A
	add r0, r1, #0
	bl MOD05_021DD5D0
	add r4, r0, #0
	b _021DD498
_021DD48A:
	cmp r2, #2
	bne _021DD498
	bl MOD05_021DD54C
	cmp r0, #0
	bne _021DD498
	mov r4, #0
_021DD498:
	add r0, r4, #0
	pop {r4, pc}

	thumb_func_start MOD05_021DD49C
MOD05_021DD49C: ; 0x021DD49C
	push {r3, r4, r5, lr}
	sub sp, #8
	str r1, [sp]
	mov r1, #0
	add r4, r3, #0
	str r2, [sp, #4]
	mvn r1, r1
	mov r2, #1
	mov r3, #0
	add r5, r0, #0
	bl MOD05_021DBA40
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	add r2, r4, #0
	mov r3, #0x1f
	bl MOD05_021DBA78
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DD4C8
MOD05_021DD4C8: ; 0x021DD4C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	str r2, [sp]
	str r3, [sp, #4]
	ldr r6, [sp, #0x2c]
	bl MOD05_021DBA34
	str r0, [sp, #8]
	add r0, r4, #0
	bl MOD05_021DBA38
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl MOD05_021DBA3C
	add r7, r0, #0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	add r0, r5, #4
	add r3, r6, #0
	str r4, [r5]
	bl MOD05_021DC6EC
	add r0, sp, #0x18
	ldrh r4, [r0, #0x10]
	add r0, r5, #0
	mov r2, #0x1f
	add r1, r7, #0
	and r1, r2
	add r0, #0x18
	and r2, r4
	add r3, r6, #0
	bl MOD05_021DC6EC
	add r0, r5, #0
	asr r1, r7, #5
	mov r3, #0x1f
	asr r2, r4, #5
	add r0, #0x2c
	and r1, r3
	and r2, r3
	add r3, r6, #0
	bl MOD05_021DC6EC
	add r0, r5, #0
	asr r1, r7, #0xa
	mov r2, #0x1f
	asr r3, r4, #0xa
	and r1, r2
	and r2, r3
	add r0, #0x40
	add r3, r6, #0
	bl MOD05_021DC6EC
	add r5, #0x54
	ldr r1, [sp, #8]
	ldr r2, [sp]
	add r0, r5, #0
	add r3, r6, #0
	bl MOD05_021DC6EC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021DD54C
MOD05_021DD54C: ; 0x021DD54C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r5, #4
	bl MOD05_021DC6FC
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x18
	bl MOD05_021DC6FC
	add r0, r5, #0
	add r0, #0x2c
	bl MOD05_021DC6FC
	add r0, r5, #0
	add r0, #0x40
	bl MOD05_021DC6FC
	add r0, r5, #0
	add r0, #0x54
	bl MOD05_021DC6FC
	ldr r3, [r5, #0x40]
	ldr r0, [r5]
	lsl r6, r3, #0xa
	ldr r1, [r5, #0x54]
	ldr r2, [r5, #4]
	ldr r3, [r5, #0x18]
	ldr r5, [r5, #0x2c]
	lsl r5, r5, #5
	orr r3, r5
	orr r3, r6
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl MOD05_021DD49C
	add r0, r4, #0
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021DD598
MOD05_021DD598: ; 0x021DD598
	mov r2, #0
	add r3, r0, #0
	add r1, r2, #0
_021DD59E:
	add r0, r3, r2
	add r2, r2, #1
	strb r1, [r0, #4]
	cmp r2, #0x20
	blt _021DD59E
	ldr r0, [r3]
	add r1, r3, #4
	ldr r3, _021DD5B0 ; =MOD05_021DBAA0
	bx r3
	.balign 4, 0
_021DD5B0: .word MOD05_021DBAA0

	thumb_func_start MOD05_021DD5B4
MOD05_021DD5B4: ; 0x021DD5B4
	mov r3, #0x7f
	str r3, [r0, #0x24]
	mov r3, #0
	str r3, [r0, #0x28]
	strh r1, [r0, #0x2c]
	cmp r2, #1
	bne _021DD5C8
	mov r1, #1
	strh r1, [r0, #0x2e]
	bx lr
_021DD5C8:
	sub r1, r3, #1
	strh r1, [r0, #0x2e]
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021DD5D0
MOD05_021DD5D0: ; 0x021DD5D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl MOD05_021DD60C
	add r4, r0, #0
	ldr r0, [r5, #0x28]
	cmp r0, #0
	bne _021DD5E8
	ldr r0, [r5]
	add r1, r5, #4
	bl MOD05_021DBAA0
_021DD5E8:
	add r0, r4, #0
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021DD5EC
MOD05_021DD5EC: ; 0x021DD5EC
	push {r4, lr}
	add r4, r0, #0
	mov r2, #1
	str r2, [r4, #0x24]
	mov r1, #0
	str r1, [r4, #0x28]
	strh r1, [r4, #0x2c]
	strh r2, [r4, #0x2e]
	bl MOD05_021DD64C
	ldr r0, [r4]
	add r1, r4, #4
	bl MOD05_021DBAA0
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DD60C
MOD05_021DD60C: ; 0x021DD60C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0x2e
	ldrsh r1, [r5, r1]
	mov r4, #0
	cmp r1, #0
	bne _021DD61E
	mov r4, #1
	b _021DD648
_021DD61E:
	ldr r1, [r5, #0x24]
	cmp r1, #0
	bgt _021DD628
	mov r4, #1
	b _021DD648
_021DD628:
	ldr r1, [r5, #0x28]
	add r2, r1, #1
	str r2, [r5, #0x28]
	mov r1, #0x2c
	ldrsh r1, [r5, r1]
	cmp r2, r1
	blt _021DD648
	str r4, [r5, #0x28]
	bl MOD05_021DD64C
	ldr r0, [r5, #0x24]
	sub r0, r0, #1
	str r0, [r5, #0x24]
	cmp r0, #0
	bgt _021DD648
	mov r4, #1
_021DD648:
	add r0, r4, #0
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021DD64C
MOD05_021DD64C: ; 0x021DD64C
	push {r3, r4}
	mov r1, #0x2e
	ldrsh r1, [r0, r1]
	ldr r2, [r0, #0x24]
	cmp r1, #0
	bge _021DD65E
	mov r1, #0x7f
	sub r2, r1, r2
	b _021DD65E
_021DD65E:
	asr r1, r2, #1
	lsr r1, r1, #0x1e
	add r1, r2, r1
	asr r4, r1, #2
	mov r3, #0x1f
	cmp r4, #0x1f
	bge _021DD67A
_021DD66C:
	sub r1, r3, r4
	lsl r2, r1, #2
	add r1, r0, r3
	sub r3, r3, #1
	strb r2, [r1, #4]
	cmp r3, r4
	bgt _021DD66C
_021DD67A:
	pop {r3, r4}
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021DD680
MOD05_021DD680: ; 0x021DD680
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	ldr r1, [sp, #0x28]
	str r0, [sp]
	str r1, [sp, #0x28]
	add r1, r2, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	ldr r7, [sp, #0x2c]
	blx r4
	ldr r0, [sp]
	mov r6, #0
	ldr r5, [r0, #0x40]
	str r6, [sp, #0x10]
	ldr r0, [r5, #0x34]
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _021DD6F6
	ldr r0, [sp]
	add r0, #0xc
	str r0, [sp]
_021DD6AE:
	ldr r0, [sp]
	cmp r5, r0
	beq _021DD6F6
	mov r4, #0
	cmp r6, #0
	ble _021DD6CA
_021DD6BA:
	add r0, r5, #0
	blx r7
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021DD6CA
	add r4, r4, #1
	cmp r4, r6
	blt _021DD6BA
_021DD6CA:
	ldr r5, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	ldr r0, [r0, #0x34]
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	cmp r1, r0
	blt _021DD6EA
	add r0, r1, #0
	ldr r1, [sp, #8]
	bl _s32_div_f
	cmp r1, #0
	bne _021DD6EA
	ldr r0, [sp, #0x28]
	add r6, r6, r0
_021DD6EA:
	ldr r0, [sp, #0x10]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _021DD6AE
_021DD6F6:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DD6FC
MOD05_021DD6FC: ; 0x021DD6FC
	mov r2, #0
	add r3, r0, #0
_021DD700:
	ldr r1, [r3, #0x48]
	cmp r1, #0
	bne _021DD710
	mov r1, #0x3c
	add r0, #0x48
	mul r1, r2
	add r0, r0, r1
	bx lr
_021DD710:
	add r2, r2, #1
	add r3, #0x3c
	cmp r2, #0x40
	blt _021DD700
	mov r0, #0
	bx lr

	thumb_func_start MOD05_021DD71C
MOD05_021DD71C: ; 0x021DD71C
	push {r3, lr}
	ldr r0, _021DD76C ; =0x00000F62
	ldrh r2, [r1, r0]
	cmp r2, #5
	bhi _021DD76A
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021DD732: ; jump table
	.short _021DD73E - _021DD732 - 2 ; case 0
	.short _021DD744 - _021DD732 - 2 ; case 1
	.short _021DD74A - _021DD732 - 2 ; case 2
	.short _021DD750 - _021DD732 - 2 ; case 3
	.short _021DD75E - _021DD732 - 2 ; case 4
	.short _021DD764 - _021DD732 - 2 ; case 5
_021DD73E:
	mov r2, #1
	strh r2, [r1, r0]
	pop {r3, pc}
_021DD744:
	mov r2, #3
	strh r2, [r1, r0]
	pop {r3, pc}
_021DD74A:
	mov r2, #3
	strh r2, [r1, r0]
	pop {r3, pc}
_021DD750:
	add r2, r0, #4
	ldrh r2, [r1, r2]
	cmp r2, #5
	bne _021DD76A
	mov r2, #4
	strh r2, [r1, r0]
	pop {r3, pc}
_021DD75E:
	mov r2, #5
	strh r2, [r1, r0]
	pop {r3, pc}
_021DD764:
	ldr r0, [r1, #4]
	bl MOD05_021DCB6C
_021DD76A:
	pop {r3, pc}
	.balign 4, 0
_021DD76C: .word 0x00000F62

	thumb_func_start MOD05_021DD770
MOD05_021DD770: ; 0x021DD770
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r0, _021DD998 ; =0x00000F58
	add r5, r1, #0
	add r2, r0, #0
	add r2, #0xa
	ldrh r2, [r5, r2]
	ldr r4, [r5, r0]
	cmp r2, #5
	bhi _021DD832
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021DD790: ; jump table
	.short _021DD79C - _021DD790 - 2 ; case 0
	.short _021DD7FA - _021DD790 - 2 ; case 1
	.short _021DD83C - _021DD790 - 2 ; case 2
	.short _021DD8A2 - _021DD790 - 2 ; case 3
	.short _021DD900 - _021DD790 - 2 ; case 4
	.short _021DD94E - _021DD790 - 2 ; case 5
_021DD79C:
	mov r0, #0x14
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	sub r0, r2, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _021DD99C ; =MOD05_021DD9BC
	mov r3, #8
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl MOD05_021DD328
	ldr r0, _021DD9A0 ; =0x0000726F
	mov r2, #0x41
	str r0, [sp]
	ldr r0, _021DD9A4 ; =0x00006B5A
	lsl r2, r2, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _021DD9A8 ; =0x00000F64
	add r1, r4, #0
	ldrh r0, [r5, r0]
	add r1, #0x1c
	str r0, [sp, #0xc]
	ldr r3, [r5]
	add r0, r4, #0
	ldr r2, [r3, r2]
	add r0, #0x4c
	ldr r2, [r2, #0x44]
	mov r3, #3
	bl MOD05_021DD420
	mov r0, #0
	add r4, #0xb4
	str r0, [r4]
	ldr r1, _021DD9AC ; =0x00000639
	add r0, r5, #0
	bl MOD05_021E0FA4
	ldr r0, _021DD9B0 ; =0x00000F62
	mov r1, #1
	strh r1, [r5, r0]
	b _021DD96C
_021DD7FA:
	add r0, r4, #0
	bl MOD05_021DD35C
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	ble _021DD81A
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	add r4, #0xb4
	sub r0, r0, #1
	str r0, [r4]
	b _021DD96C
_021DD81A:
	ldr r2, _021DD9A8 ; =0x00000F64
	add r0, r4, #0
	ldrh r2, [r5, r2]
	add r4, #0x1c
	add r0, #0x4c
	add r1, r4, #0
	bl MOD05_021DD474
	cmp r0, #1
	bne _021DD832
	cmp r6, #3
	beq _021DD834
_021DD832:
	b _021DD96C
_021DD834:
	ldr r0, _021DD9B0 ; =0x00000F62
	mov r1, #3
	strh r1, [r5, r0]
	b _021DD96C
_021DD83C:
	mov r2, #0x14
	mov r3, #1
	str r2, [sp]
	str r3, [sp, #4]
	sub r0, r3, #2
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _021DD99C ; =MOD05_021DD9BC
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl MOD05_021DD328
	ldr r0, _021DD9A8 ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DD87E
	mov r0, #0x41
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021DD9A0 ; =0x0000726F
	ldr r0, [r0, #0x44]
	ldr r3, _021DD9A4 ; =0x00006B5A
	mov r1, #3
	str r0, [r4, #0x1c]
	bl MOD05_021DD49C
	add r4, #0x1c
	add r0, r4, #0
	bl MOD05_021DD5EC
_021DD87E:
	mov r0, #1
	str r0, [sp]
	ldr r0, _021DD9B4 ; =MOD05_021DDA7C
	ldr r1, _021DD99C ; =MOD05_021DD9BC
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x14
	mov r3, #0xa
	bl MOD05_021DD680
	ldr r1, _021DD9AC ; =0x00000639
	add r0, r5, #0
	bl MOD05_021E0FA4
	ldr r0, _021DD9B0 ; =0x00000F62
	mov r1, #3
	strh r1, [r5, r0]
	b _021DD96C
_021DD8A2:
	mov r0, #6
	ldrsh r1, [r4, r0]
	sub r0, r1, #1
	strh r0, [r4, #6]
	cmp r1, #0
	bgt _021DD8BE
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl MOD05_021DD9BC
	mov r0, #8
	ldrsh r0, [r4, r0]
	strh r0, [r4, #6]
_021DD8BE:
	ldr r0, _021DD9B8 ; =0x00000F66
	ldrh r0, [r5, r0]
	cmp r0, #5
	bne _021DD96C
	mov r0, #1
	mvn r0, r0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #8
	mov r3, #1
	bl MOD05_021DD350
	ldr r0, _021DD9A8 ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DD8EC
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #1
	mov r2, #0
	bl MOD05_021DD5B4
_021DD8EC:
	mov r0, #0
	add r4, #0xb4
	str r0, [r4]
	ldr r0, _021DD9B0 ; =0x00000F62
	mov r1, #4
	strh r1, [r5, r0]
	add r0, r5, #0
	bl MOD05_021E0FD0
	b _021DD96C
_021DD900:
	add r0, r4, #0
	bl MOD05_021DD35C
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	ble _021DD920
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	add r4, #0xb4
	sub r0, r0, #1
	str r0, [r4]
	b _021DD96C
_021DD920:
	ldr r0, _021DD9A8 ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DD932
	add r4, #0x1c
	add r0, r4, #0
	bl MOD05_021DD5D0
	b _021DD934
_021DD932:
	mov r0, #1
_021DD934:
	cmp r0, #1
	bne _021DD96C
	cmp r6, #3
	bne _021DD96C
	add r0, r5, #0
	ldr r1, [r5, #0x40]
	add r0, #0xc
	cmp r1, r0
	bne _021DD96C
	ldr r0, _021DD9B0 ; =0x00000F62
	mov r1, #5
	strh r1, [r5, r0]
	b _021DD96C
_021DD94E:
	add r0, #0xc
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DD966
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r3, r2, #0
	bl MOD05_021DBA40
_021DD966:
	ldr r0, [r5, #4]
	bl MOD05_021DCB6C
_021DD96C:
	ldr r0, _021DD9B0 ; =0x00000F62
	ldrh r0, [r5, r0]
	cmp r0, #5
	beq _021DD992
	cmp r0, #0
	beq _021DD992
	add r0, r5, #0
	ldr r1, _021DD9B4 ; =MOD05_021DDA7C
	add r0, #0xc
	bl MOD05_021DD148
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl MOD05_021DD2BC
	add r0, r5, #0
	bl MOD05_021DD164
_021DD992:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_021DD998: .word 0x00000F58
_021DD99C: .word MOD05_021DD9BC
_021DD9A0: .word 0x0000726F
_021DD9A4: .word 0x00006B5A
_021DD9A8: .word 0x00000F64
_021DD9AC: .word 0x00000639
_021DD9B0: .word 0x00000F62
_021DD9B4: .word MOD05_021DDA7C
_021DD9B8: .word 0x00000F66

	thumb_func_start MOD05_021DD9BC
MOD05_021DD9BC: ; 0x021DD9BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	add r0, r1, #0
	mov r7, #0
	str r1, [sp, #4]
	cmp r0, #0
	ble _021DDA70
_021DD9CC:
	ldr r0, [sp]
	mov r1, #0x20
	bl MOD05_021DD048
	add r6, r0, #0
	beq _021DDA70
	ldr r4, [r6, #8]
	mov r0, #0
	str r0, [r4]
	bl FUN_0201BA60
	mov r1, #3
	bl _u32_div_f
	add r5, r1, #0
	lsl r1, r5, #0x10
	ldr r0, [r6, #4]
	lsr r1, r1, #0x10
	bl FUN_02020208
	bl FUN_0201BA60
	mov r1, #0x14
	bl _u32_div_f
	add r2, r5, #1
	mov r0, #0xa
	mul r0, r2
	add r0, r1, r0
	str r0, [r4, #8]
	cmp r5, #2
	bne _021DDA12
	ldr r0, [r4, #8]
	add r0, #0xa
	str r0, [r4, #8]
_021DDA12:
	add r0, r1, #0
	mov r1, #4
	mvn r1, r1
	bl _s32_div_f
	mov r1, #4
	add r2, r5, #1
	mvn r1, r1
	mul r1, r2
	add r0, r0, r1
	str r0, [r4, #0x10]
	cmp r5, #2
	bne _021DDA32
	ldr r0, [r4, #0x10]
	sub r0, r0, #5
	str r0, [r4, #0x10]
_021DDA32:
	mov r0, #0
	str r0, [r4, #0xc]
	bl FUN_0201BA60
	mov r1, #3
	bl _u32_div_f
	add r0, r1, #1
	str r0, [r4, #4]
	bl FUN_0201BA60
	ldr r1, _021DDA74 ; =0x0000010E
	bl _u32_div_f
	mov r0, #0xf
	mul r0, r5
	add r0, r0, r1
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldr r0, _021DDA78 ; =0xFFFA0000
	add r1, sp, #8
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r6, #4]
	bl MOD05_021DC4FC
	ldr r0, [sp, #4]
	add r7, r7, #1
	cmp r7, r0
	blt _021DD9CC
_021DDA70:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021DDA74: .word 0x0000010E
_021DDA78: .word 0xFFFA0000

	thumb_func_start MOD05_021DDA7C
MOD05_021DDA7C: ; 0x021DDA7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r5, [r6, #8]
	add r0, sp, #0
	add r1, r6, #0
	bl MOD05_021DD168
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021DDA9E
	cmp r0, #1
	beq _021DDAF6
	cmp r0, #2
	beq _021DDB08
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021DDA9E:
	mov r4, #0
	mov r7, #2
_021DDAA2:
	ldr r0, [r5, #0x10]
	ldr r1, [sp]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp]
	ldr r0, [r5, #8]
	ldr r1, [sp, #4]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r1, [r5]
	add r0, r1, #1
	str r0, [r5]
	ldr r0, [r5, #4]
	cmp r1, r0
	ble _021DDAE4
	bl FUN_0201BA60
	mov r1, #0xa
	bl _u32_div_f
	cmp r1, #7
	bhs _021DDAD4
	str r7, [r5, #0xc]
	b _021DDAE4
_021DDAD4:
	mov r0, #1
	str r0, [r5, #0xc]
	mov r0, #4
	str r0, [r5]
	ldr r0, [r6, #4]
	mov r1, #3
	bl FUN_02020208
_021DDAE4:
	add r4, r4, #1
	cmp r4, #2
	blt _021DDAA2
	ldr r0, [r6, #4]
	add r1, sp, #0
	bl MOD05_021DC4FC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021DDAF6:
	ldr r1, [r5]
	sub r0, r1, #1
	str r0, [r5]
	cmp r1, #0
	bgt _021DDB0E
	mov r0, #2
	add sp, #0xc
	str r0, [r5, #0xc]
	pop {r4, r5, r6, r7, pc}
_021DDB08:
	add r0, r6, #0
	bl MOD05_021DD100
_021DDB0E:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DDB14
MOD05_021DDB14: ; 0x021DDB14
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r0, _021DDD44 ; =0x00000F58
	add r5, r1, #0
	add r2, r0, #0
	add r2, #0xa
	ldrh r2, [r5, r2]
	ldr r4, [r5, r0]
	cmp r2, #5
	bhi _021DDBD6
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021DDB34: ; jump table
	.short _021DDB40 - _021DDB34 - 2 ; case 0
	.short _021DDB9E - _021DDB34 - 2 ; case 1
	.short _021DDBE0 - _021DDB34 - 2 ; case 2
	.short _021DDC4E - _021DDB34 - 2 ; case 3
	.short _021DDCA6 - _021DDB34 - 2 ; case 4
	.short _021DDCFA - _021DDB34 - 2 ; case 5
_021DDB40:
	mov r2, #1
	str r2, [sp]
	mov r0, #8
	str r0, [sp, #4]
	sub r0, #0xd
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, _021DDD48 ; =MOD05_021DDD64
	mov r3, #0x14
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl MOD05_021DD328
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb8
	str r1, [r0]
	ldr r0, _021DDD4C ; =0x0000726F
	mov r2, #0x41
	str r0, [sp]
	ldr r0, _021DDD50 ; =0x00006B5A
	add r1, r4, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _021DDD54 ; =0x00000F64
	lsl r2, r2, #2
	ldrh r0, [r5, r0]
	add r1, #0x1c
	str r0, [sp, #0xc]
	ldr r3, [r5]
	add r0, r4, #0
	ldr r2, [r3, r2]
	add r0, #0x4c
	ldr r2, [r2, #0x44]
	mov r3, #3
	bl MOD05_021DD420
	mov r0, #0x10
	add r4, #0xb4
	str r0, [r4]
	ldr r0, _021DDD58 ; =0x00000F62
	mov r1, #1
	strh r1, [r5, r0]
	b _021DDD18
_021DDB9E:
	add r0, r4, #0
	bl MOD05_021DD35C
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	ble _021DDBBE
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	add r4, #0xb4
	sub r0, r0, #1
	str r0, [r4]
	b _021DDD18
_021DDBBE:
	ldr r2, _021DDD54 ; =0x00000F64
	add r0, r4, #0
	ldrh r2, [r5, r2]
	add r4, #0x1c
	add r0, #0x4c
	add r1, r4, #0
	bl MOD05_021DD474
	cmp r0, #1
	bne _021DDBD6
	cmp r6, #3
	beq _021DDBD8
_021DDBD6:
	b _021DDD18
_021DDBD8:
	ldr r0, _021DDD58 ; =0x00000F62
	mov r1, #3
	strh r1, [r5, r0]
	b _021DDD18
_021DDBE0:
	mov r2, #1
	mov r3, #8
	str r2, [sp]
	add r0, r3, #0
	str r3, [sp, #4]
	sub r0, #0xd
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, _021DDD48 ; =MOD05_021DDD64
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl MOD05_021DD328
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb8
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0]
	ldr r0, _021DDD54 ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DDC32
	mov r0, #0x41
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021DDD4C ; =0x0000726F
	ldr r0, [r0, #0x44]
	ldr r3, _021DDD50 ; =0x00006B5A
	mov r1, #3
	str r0, [r4, #0x1c]
	bl MOD05_021DD49C
	add r4, #0x1c
	add r0, r4, #0
	bl MOD05_021DD5EC
_021DDC32:
	mov r0, #0x18
	str r0, [sp]
	ldr r0, _021DDD5C ; =MOD05_021DDF44
	ldr r1, _021DDD48 ; =MOD05_021DDD64
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x14
	mov r3, #2
	bl MOD05_021DD680
	ldr r0, _021DDD58 ; =0x00000F62
	mov r1, #3
	strh r1, [r5, r0]
	b _021DDD18
_021DDC4E:
	mov r0, #6
	ldrsh r1, [r4, r0]
	sub r0, r1, #1
	strh r0, [r4, #6]
	cmp r1, #0
	bgt _021DDC6A
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl MOD05_021DDD64
	mov r0, #8
	ldrsh r0, [r4, r0]
	strh r0, [r4, #6]
_021DDC6A:
	ldr r0, _021DDD60 ; =0x00000F66
	ldrh r0, [r5, r0]
	cmp r0, #5
	bne _021DDD18
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x14
	mov r3, #5
	bl MOD05_021DD350
	ldr r0, _021DDD54 ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DDC98
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #2
	mov r2, #0
	bl MOD05_021DD5B4
_021DDC98:
	mov r0, #0x20
	add r4, #0xb4
	str r0, [r4]
	ldr r0, _021DDD58 ; =0x00000F62
	mov r1, #4
	strh r1, [r5, r0]
	b _021DDD18
_021DDCA6:
	add r0, r4, #0
	bl MOD05_021DD35C
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	ble _021DDCC6
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	add r4, #0xb4
	sub r0, r0, #1
	str r0, [r4]
	b _021DDD18
_021DDCC6:
	ldr r0, _021DDD54 ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DDCD8
	add r0, r4, #0
	add r0, #0x1c
	bl MOD05_021DD5D0
	b _021DDCDA
_021DDCD8:
	mov r0, #1
_021DDCDA:
	cmp r0, #1
	bne _021DDD18
	cmp r6, #3
	bne _021DDD18
	mov r0, #1
	add r4, #0xbc
	str r0, [r4]
	add r0, r5, #0
	ldr r1, [r5, #0x40]
	add r0, #0xc
	cmp r1, r0
	bne _021DDD18
	ldr r0, _021DDD58 ; =0x00000F62
	mov r1, #5
	strh r1, [r5, r0]
	b _021DDD18
_021DDCFA:
	add r0, #0xc
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DDD12
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r3, r2, #0
	bl MOD05_021DBA40
_021DDD12:
	ldr r0, [r5, #4]
	bl MOD05_021DCB6C
_021DDD18:
	ldr r0, _021DDD58 ; =0x00000F62
	ldrh r0, [r5, r0]
	cmp r0, #5
	beq _021DDD3E
	cmp r0, #0
	beq _021DDD3E
	add r0, r5, #0
	ldr r1, _021DDD5C ; =MOD05_021DDF44
	add r0, #0xc
	bl MOD05_021DD148
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl MOD05_021DD2BC
	add r0, r5, #0
	bl MOD05_021DD164
_021DDD3E:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_021DDD44: .word 0x00000F58
_021DDD48: .word MOD05_021DDD64
_021DDD4C: .word 0x0000726F
_021DDD50: .word 0x00006B5A
_021DDD54: .word 0x00000F64
_021DDD58: .word 0x00000F62
_021DDD5C: .word MOD05_021DDF44
_021DDD60: .word 0x00000F66

	thumb_func_start MOD05_021DDD64
MOD05_021DDD64: ; 0x021DDD64
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r1, #0
	ldr r1, _021DDE70 ; =0x00000F58
	str r0, [sp]
	ldr r0, [r0, r1]
	str r0, [sp, #0x10]
	add r0, #0xb8
	ldr r0, [r0]
	cmp r0, #1
	bne _021DDD7C
	lsl r7, r7, #1
_021DDD7C:
	mov r6, #0
	cmp r7, #0
	ble _021DDE6A
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	add r0, #0xb8
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	str r0, [sp, #8]
	add r0, #0xbc
	str r0, [sp, #8]
	lsr r0, r7, #0x1f
	add r0, r7, r0
	asr r0, r0, #1
	str r0, [sp, #4]
_021DDD9A:
	ldr r0, [sp]
	mov r1, #0x28
	bl MOD05_021DD048
	add r4, r0, #0
	beq _021DDE6A
	ldr r5, [r4, #8]
	bl FUN_0201BA60
	mov r1, #3
	and r1, r0
	lsl r1, r1, #0x10
	ldr r0, [r4, #4]
	lsr r1, r1, #0x10
	bl FUN_02020208
	mov r0, #0xa
	str r0, [r5, #0x10]
	mov r0, #0
	str r0, [r5, #0x14]
	str r0, [r5, #0x18]
	str r0, [r5, #0x20]
	bl FUN_0201BA60
	mov r1, #0x3c
	str r0, [sp, #0x14]
	bl _s32_div_f
	add r0, r1, #4
	str r0, [r5, #0x24]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	lsr r0, r0, #0x1f
	lsl r2, r1, #0x1f
	sub r2, r2, r0
	mov r1, #0x1f
	ror r2, r1
	add r0, r0, r2
	bne _021DDDEC
	mov r0, #1
	b _021DDDF0
_021DDDEC:
	add r0, r1, #0
	sub r0, #0x20
_021DDDF0:
	str r0, [r5, #4]
	bl FUN_0201BA60
	mov r1, #1
	and r0, r1
	add r0, r0, #4
	str r0, [r5, #8]
	bl FUN_0201BA60
	mov r1, #1
	and r0, r1
	add r0, r0, #1
	str r0, [r5, #0xc]
	ldr r0, [sp, #0xc]
	str r0, [r5]
	ldr r0, [sp, #8]
	str r0, [r5, #0x1c]
	bl FUN_0201BA60
	ldr r1, _021DDE74 ; =0x0000019E
	bl _u32_div_f
	sub r1, #0x20
	lsl r0, r1, #0xc
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	add r0, #0xb8
	ldr r0, [r0]
	cmp r0, #1
	bne _021DDE48
	ldr r0, [sp, #4]
	cmp r6, r0
	blt _021DDE48
	bl FUN_0201BA60
	mov r1, #0x14
	bl _u32_div_f
	mov r0, #0x27
	mvn r0, r0
	sub r0, r0, r1
	lsl r0, r0, #0xc
	str r0, [sp, #0x1c]
	b _021DDE5C
_021DDE48:
	bl FUN_0201BA60
	mov r1, #0x14
	bl _u32_div_f
	mov r0, #7
	mvn r0, r0
	sub r0, r0, r1
	lsl r0, r0, #0xc
	str r0, [sp, #0x1c]
_021DDE5C:
	ldr r0, [r4, #4]
	add r1, sp, #0x18
	bl MOD05_021DC4FC
	add r6, r6, #1
	cmp r6, r7
	blt _021DDD9A
_021DDE6A:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021DDE70: .word 0x00000F58
_021DDE74: .word 0x0000019E

	thumb_func_start MOD05_021DDE78
MOD05_021DDE78: ; 0x021DDE78
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	add r1, r5, #0
	bl MOD05_021DD168
	ldr r0, [r4, #0x14]
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [r4, #8]
	cmp r1, r0
	blt _021DDECE
	ldr r0, [r4, #4]
	ldr r1, [sp]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r0, _021DDF3C ; =0xFFFF0000
	and r0, r1
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x10]
	cmp r0, #0xa
	ldr r0, [r4, #8]
	bge _021DDEB8
	sub r0, r0, #1
	b _021DDEBA
_021DDEB8:
	add r0, r0, #1
_021DDEBA:
	str r0, [r4, #8]
	ldr r0, [r4, #0x10]
	cmp r0, #0x14
	blt _021DDECE
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r1, [r4, #4]
	sub r0, r0, #1
	mul r0, r1
	str r0, [r4, #4]
_021DDECE:
	ldr r0, [r4, #0x14]
	asr r1, r0, #0x10
	ldr r0, [r4, #0xc]
	cmp r1, r0
	blt _021DDEEA
	mov r0, #1
	ldr r1, [sp, #4]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [r4, #0x14]
_021DDEEA:
	ldr r0, [r5, #4]
	add r1, sp, #0
	bl MOD05_021DC4FC
	ldr r0, [sp]
	mov r1, #0x64
	asr r0, r0, #0xc
	str r0, [sp]
	ldr r0, [sp, #4]
	asr r0, r0, #0xc
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	bl _s32_div_f
	str r1, [r4, #0x18]
	ldr r0, [r4, #0x14]
	add r1, r0, #1
	mov r0, #1
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r1, [sp, #4]
	ldr r0, _021DDF40 ; =0xFFFFFEE4
	cmp r1, r0
	bge _021DDF24
	sub r0, #0xc
	cmp r1, r0
	bgt _021DDF2C
_021DDF24:
	cmp r1, #0xd4
	ble _021DDF38
	cmp r1, #0xe8
	bge _021DDF38
_021DDF2C:
	ldr r0, [r4]
	mov r1, #1
	str r1, [r0]
	add r0, r5, #0
	bl MOD05_021DD100
_021DDF38:
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_021DDF3C: .word 0xFFFF0000
_021DDF40: .word 0xFFFFFEE4

	thumb_func_start MOD05_021DDF44
MOD05_021DDF44: ; 0x021DDF44
	push {r3, lr}
	ldr r1, [r0, #8]
	ldr r3, [r1, #0x20]
	ldr r2, [r1, #0x1c]
	cmp r3, #0
	beq _021DDF56
	cmp r3, #1
	beq _021DDF62
	b _021DDF70
_021DDF56:
	ldr r2, [r2]
	cmp r2, #1
	bne _021DDF70
	add r2, r3, #1
	str r2, [r1, #0x20]
	b _021DDF70
_021DDF62:
	ldr r2, [r1, #0x24]
	sub r2, r2, #1
	str r2, [r1, #0x24]
	bpl _021DDF70
	bl MOD05_021DD100
	pop {r3, pc}
_021DDF70:
	bl MOD05_021DDE78
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DDF78
MOD05_021DDF78: ; 0x021DDF78
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r0, _021DE19C ; =0x00000F58
	add r5, r1, #0
	add r2, r0, #0
	add r2, #0xa
	ldrh r2, [r5, r2]
	ldr r4, [r5, r0]
	cmp r2, #5
	bhi _021DE03C
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021DDF98: ; jump table
	.short _021DDFA4 - _021DDF98 - 2 ; case 0
	.short _021DE004 - _021DDF98 - 2 ; case 1
	.short _021DE046 - _021DDF98 - 2 ; case 2
	.short _021DE0AE - _021DDF98 - 2 ; case 3
	.short _021DE106 - _021DDF98 - 2 ; case 4
	.short _021DE154 - _021DDF98 - 2 ; case 5
_021DDFA4:
	mov r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	sub r0, #8
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r2, #1
	ldr r0, _021DE1A0 ; =MOD05_021DE1BC
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r3, #0x1e
	bl MOD05_021DD328
	ldr r0, _021DE1A4 ; =0x00006D6F
	mov r2, #0x41
	str r0, [sp]
	ldr r0, _021DE1A8 ; =0x00006318
	add r1, r4, #0
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, _021DE1AC ; =0x00000F64
	lsl r2, r2, #2
	ldrh r0, [r5, r0]
	add r1, #0x1c
	str r0, [sp, #0xc]
	ldr r3, [r5]
	add r0, r4, #0
	ldr r2, [r3, r2]
	add r0, #0x4c
	ldr r2, [r2, #0x44]
	mov r3, #3
	bl MOD05_021DD420
	add r0, r4, #0
	mov r1, #8
	add r0, #0xb4
	str r1, [r0]
	mov r0, #0
	add r4, #0xb8
	str r0, [r4]
	ldr r0, _021DE1B0 ; =0x00000F62
	mov r1, #1
	strh r1, [r5, r0]
	b _021DE172
_021DE004:
	add r0, r4, #0
	bl MOD05_021DD35C
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	ble _021DE024
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	add r4, #0xb4
	sub r0, r0, #1
	str r0, [r4]
	b _021DE172
_021DE024:
	ldr r2, _021DE1AC ; =0x00000F64
	add r0, r4, #0
	ldrh r2, [r5, r2]
	add r4, #0x1c
	add r0, #0x4c
	add r1, r4, #0
	bl MOD05_021DD474
	cmp r0, #1
	bne _021DE03C
	cmp r6, #3
	beq _021DE03E
_021DE03C:
	b _021DE172
_021DE03E:
	ldr r0, _021DE1B0 ; =0x00000F62
	mov r1, #3
	strh r1, [r5, r0]
	b _021DE172
_021DE046:
	mov r2, #6
	mov r3, #3
	str r2, [sp]
	add r0, r3, #0
	str r3, [sp, #4]
	sub r0, #8
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _021DE1A0 ; =MOD05_021DE1BC
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl MOD05_021DD328
	ldr r0, _021DE1AC ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DE08C
	mov r0, #0x41
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021DE1A4 ; =0x00006D6F
	ldr r0, [r0, #0x44]
	ldr r3, _021DE1A8 ; =0x00006318
	mov r1, #3
	str r0, [r4, #0x1c]
	bl MOD05_021DD49C
	add r0, r4, #0
	add r0, #0x1c
	bl MOD05_021DD5EC
_021DE08C:
	mov r0, #0
	add r4, #0xb8
	str r0, [r4]
	mov r0, #3
	str r0, [sp]
	ldr r0, _021DE1B4 ; =MOD05_021DE2E0
	ldr r1, _021DE1A0 ; =MOD05_021DE1BC
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x14
	mov r3, #2
	bl MOD05_021DD680
	ldr r0, _021DE1B0 ; =0x00000F62
	mov r1, #3
	strh r1, [r5, r0]
	b _021DE172
_021DE0AE:
	mov r0, #6
	ldrsh r1, [r4, r0]
	sub r0, r1, #1
	strh r0, [r4, #6]
	cmp r1, #0
	bgt _021DE0CA
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl MOD05_021DE1BC
	mov r0, #8
	ldrsh r0, [r4, r0]
	strh r0, [r4, #6]
_021DE0CA:
	ldr r0, _021DE1B8 ; =0x00000F66
	ldrh r0, [r5, r0]
	cmp r0, #5
	bne _021DE172
	mov r0, #2
	mvn r0, r0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x1e
	mov r3, #5
	bl MOD05_021DD350
	ldr r0, _021DE1AC ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DE0F8
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #1
	mov r2, #0
	bl MOD05_021DD5B4
_021DE0F8:
	mov r0, #0
	add r4, #0xb4
	str r0, [r4]
	ldr r0, _021DE1B0 ; =0x00000F62
	mov r1, #4
	strh r1, [r5, r0]
	b _021DE172
_021DE106:
	add r0, r4, #0
	bl MOD05_021DD35C
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	ble _021DE126
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	add r4, #0xb4
	sub r0, r0, #1
	str r0, [r4]
	b _021DE172
_021DE126:
	ldr r0, _021DE1AC ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DE138
	add r4, #0x1c
	add r0, r4, #0
	bl MOD05_021DD5D0
	b _021DE13A
_021DE138:
	mov r0, #1
_021DE13A:
	cmp r0, #1
	bne _021DE172
	cmp r6, #3
	bne _021DE172
	add r0, r5, #0
	ldr r1, [r5, #0x40]
	add r0, #0xc
	cmp r1, r0
	bne _021DE172
	ldr r0, _021DE1B0 ; =0x00000F62
	mov r1, #5
	strh r1, [r5, r0]
	b _021DE172
_021DE154:
	add r0, #0xc
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DE16C
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r3, r2, #0
	bl MOD05_021DBA40
_021DE16C:
	ldr r0, [r5, #4]
	bl MOD05_021DCB6C
_021DE172:
	ldr r0, _021DE1B0 ; =0x00000F62
	ldrh r0, [r5, r0]
	cmp r0, #5
	beq _021DE198
	cmp r0, #0
	beq _021DE198
	add r0, r5, #0
	ldr r1, _021DE1B4 ; =MOD05_021DE2E0
	add r0, #0xc
	bl MOD05_021DD148
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl MOD05_021DD2BC
	add r0, r5, #0
	bl MOD05_021DD164
_021DE198:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021DE19C: .word 0x00000F58
_021DE1A0: .word MOD05_021DE1BC
_021DE1A4: .word 0x00006D6F
_021DE1A8: .word 0x00006318
_021DE1AC: .word 0x00000F64
_021DE1B0: .word 0x00000F62
_021DE1B4: .word MOD05_021DE2E0
_021DE1B8: .word 0x00000F66

	thumb_func_start MOD05_021DE1BC
MOD05_021DE1BC: ; 0x021DE1BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	ldr r3, _021DE2D4 ; =0x021F67D8
	add r2, sp, #0x48
	str r0, [sp]
	str r1, [sp, #4]
	ldmia r3!, {r0, r1}
	str r2, [sp, #0x10]
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _021DE2D8 ; =0x021F67C8
	add r2, sp, #0x38
	str r2, [sp, #0x14]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r1, _021DE2DC ; =0x00000F58
	ldr r0, [sp]
	ldr r6, [r0, r1]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _021DE2D0
	add r0, r6, #0
	str r0, [sp, #0x18]
	add r0, #0xb8
	str r0, [sp, #0x18]
	mov r0, #7
	mvn r0, r0
	lsl r0, r0, #0xc
	str r0, [sp, #0x1c]
_021DE200:
	ldr r0, [sp]
	mov r1, #0x20
	bl MOD05_021DD048
	add r4, r0, #0
	beq _021DE2D0
	ldr r0, [sp, #0x18]
	ldr r5, [r4, #8]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [r0]
	add r0, r6, #0
	add r0, #0xb8
	ldr r1, [r0]
	mov r0, #0x32
	lsl r0, r0, #4
	cmp r1, r0
	blt _021DE22E
	add r1, r6, #0
	add r1, #0xb8
	mov r0, #0
	str r0, [r1]
_021DE22E:
	add r0, r6, #0
	add r0, #0xb8
	ldr r0, [r0]
	mov r1, #0xc8
	bl _s32_div_f
	lsl r0, r0, #2
	ldr r1, [sp, #0x10]
	str r0, [sp, #8]
	ldr r0, [r1, r0]
	str r0, [r5, #0x14]
	mov r0, #0
	str r0, [r5]
	bl FUN_0201BA60
	mov r1, #0x2a
	bl _u32_div_f
	add r0, r1, #4
	str r0, [r5, #4]
	sub r0, r0, #4
	mov r1, #0xf
	bl _s32_div_f
	add r7, r0, #0
	lsl r1, r7, #0x10
	ldr r0, [r4, #4]
	lsr r1, r1, #0x10
	bl FUN_02020208
	add r0, r7, #1
	neg r1, r0
	str r1, [r5, #0x10]
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #8]
	ldr r1, [r2, r1]
	mul r1, r0
	str r1, [r5, #8]
	mov r0, #0
	str r0, [r5, #0xc]
	add r0, sp, #0x20
	add r1, r4, #0
	bl MOD05_021DD168
	add r3, sp, #0x20
	ldmia r3!, {r0, r1}
	add r2, sp, #0x2c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bl FUN_0201BA60
	mov r1, #0x69
	lsl r1, r1, #2
	bl _u32_div_f
	mov r0, #1
	sub r2, r0, r7
	sub r0, #0x15
	mul r0, r2
	add r1, r0, r1
	mov r0, #7
	mvn r0, r0
	str r0, [sp, #0x30]
	mov r0, #0
	str r0, [sp, #0x34]
	str r1, [sp, #0x2c]
	lsl r0, r1, #0xc
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x2c
	str r0, [sp, #0x30]
	ldr r0, [r4, #4]
	bl MOD05_021DC4FC
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _021DE200
_021DE2D0:
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021DE2D4: .word 0x021F67D8
_021DE2D8: .word 0x021F67C8
_021DE2DC: .word 0x00000F58

	thumb_func_start MOD05_021DE2E0
MOD05_021DE2E0: ; 0x021DE2E0
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r0, sp, #0
	add r1, r5, #0
	ldr r4, [r5, #8]
	bl MOD05_021DD168
	add r3, sp, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021DE30A
	cmp r0, #1
	beq _021DE356
	add sp, #0x18
	pop {r3, r4, r5, pc}
_021DE30A:
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r1, [r4]
	add r0, r1, #1
	str r0, [r4]
	ldr r0, [r4, #4]
	cmp r1, r0
	ble _021DE32E
	mov r0, #1
	str r0, [r4, #0xc]
_021DE32E:
	ldr r0, [r4]
	ldr r1, [r4, #0x14]
	bl _s32_div_f
	cmp r1, #0
	bne _021DE34A
	ldr r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x10]
	ldr r0, [r4, #8]
	cmp r0, #1
	ble _021DE34A
	sub r0, r0, #1
	str r0, [r4, #8]
_021DE34A:
	ldr r0, [r5, #4]
	add r1, sp, #0xc
	bl MOD05_021DC4FC
	add sp, #0x18
	pop {r3, r4, r5, pc}
_021DE356:
	add r0, r5, #0
	bl MOD05_021DD100
	add sp, #0x18
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021DE360
MOD05_021DE360: ; 0x021DE360
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r0, _021DE5D0 ; =0x00000F58
	add r5, r1, #0
	add r2, r0, #0
	add r2, #0xa
	ldrh r2, [r5, r2]
	ldr r4, [r5, r0]
	cmp r2, #5
	bhi _021DE42E
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021DE380: ; jump table
	.short _021DE38C - _021DE380 - 2 ; case 0
	.short _021DE3F4 - _021DE380 - 2 ; case 1
	.short _021DE438 - _021DE380 - 2 ; case 2
	.short _021DE4A8 - _021DE380 - 2 ; case 3
	.short _021DE502 - _021DE380 - 2 ; case 4
	.short _021DE552 - _021DE380 - 2 ; case 5
_021DE38C:
	mov r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	sub r0, #8
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r2, #1
	ldr r0, _021DE5D4 ; =MOD05_021DE1BC
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r3, #0x1e
	bl MOD05_021DD328
	ldr r0, _021DE5D8 ; =0x00006F6F
	mov r2, #0x41
	str r0, [sp]
	ldr r0, _021DE5DC ; =0x00006318
	add r1, r4, #0
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, _021DE5E0 ; =0x00000F64
	lsl r2, r2, #2
	ldrh r0, [r5, r0]
	add r1, #0x1c
	str r0, [sp, #0xc]
	ldr r3, [r5]
	add r0, r4, #0
	ldr r2, [r3, r2]
	add r0, #0x4c
	ldr r2, [r2, #0x44]
	mov r3, #3
	bl MOD05_021DD420
	add r0, r4, #0
	mov r1, #8
	add r0, #0xb4
	str r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb8
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0]
	ldr r0, _021DE5E4 ; =0x00000F62
	mov r1, #1
	strh r1, [r5, r0]
	b _021DE570
_021DE3F4:
	add r0, r4, #0
	bl MOD05_021DD35C
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	ble _021DE416
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xb4
	str r1, [r0]
	b _021DE570
_021DE416:
	ldr r2, _021DE5E0 ; =0x00000F64
	add r0, r4, #0
	ldrh r2, [r5, r2]
	add r1, r4, #0
	add r0, #0x4c
	add r1, #0x1c
	bl MOD05_021DD474
	cmp r0, #1
	bne _021DE42E
	cmp r6, #3
	beq _021DE430
_021DE42E:
	b _021DE570
_021DE430:
	ldr r0, _021DE5E4 ; =0x00000F62
	mov r1, #3
	strh r1, [r5, r0]
	b _021DE570
_021DE438:
	mov r2, #6
	mov r3, #3
	str r2, [sp]
	add r0, r3, #0
	str r3, [sp, #4]
	sub r0, #8
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _021DE5D4 ; =MOD05_021DE1BC
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl MOD05_021DD328
	ldr r0, _021DE5E0 ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DE47E
	mov r0, #0x41
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021DE5D8 ; =0x00006F6F
	ldr r0, [r0, #0x44]
	ldr r3, _021DE5DC ; =0x00006318
	mov r1, #3
	str r0, [r4, #0x1c]
	bl MOD05_021DD49C
	add r0, r4, #0
	add r0, #0x1c
	bl MOD05_021DD5EC
_021DE47E:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb8
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0]
	mov r0, #3
	str r0, [sp]
	ldr r0, _021DE5E8 ; =MOD05_021DE2E0
	ldr r1, _021DE5D4 ; =MOD05_021DE1BC
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x14
	mov r3, #2
	bl MOD05_021DD680
	ldr r0, _021DE5E4 ; =0x00000F62
	mov r1, #3
	strh r1, [r5, r0]
	b _021DE570
_021DE4A8:
	mov r0, #6
	ldrsh r1, [r4, r0]
	sub r0, r1, #1
	strh r0, [r4, #6]
	cmp r1, #0
	bgt _021DE4C4
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl MOD05_021DE1BC
	mov r0, #8
	ldrsh r0, [r4, r0]
	strh r0, [r4, #6]
_021DE4C4:
	ldr r0, _021DE5EC ; =0x00000F66
	ldrh r0, [r5, r0]
	cmp r0, #5
	bne _021DE570
	mov r0, #2
	mvn r0, r0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x1e
	mov r3, #5
	bl MOD05_021DD350
	ldr r0, _021DE5E0 ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DE4F2
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #1
	mov r2, #0
	bl MOD05_021DD5B4
_021DE4F2:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0]
	ldr r0, _021DE5E4 ; =0x00000F62
	mov r1, #4
	strh r1, [r5, r0]
	b _021DE570
_021DE502:
	add r0, r4, #0
	bl MOD05_021DD35C
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	ble _021DE524
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xb4
	str r1, [r0]
	b _021DE570
_021DE524:
	ldr r0, _021DE5E0 ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DE536
	add r0, r4, #0
	add r0, #0x1c
	bl MOD05_021DD5D0
	b _021DE538
_021DE536:
	mov r0, #1
_021DE538:
	cmp r0, #1
	bne _021DE570
	cmp r6, #3
	bne _021DE570
	add r0, r5, #0
	ldr r1, [r5, #0x40]
	add r0, #0xc
	cmp r1, r0
	bne _021DE570
	ldr r0, _021DE5E4 ; =0x00000F62
	mov r1, #5
	strh r1, [r5, r0]
	b _021DE570
_021DE552:
	add r0, #0xc
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DE56A
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r3, r2, #0
	bl MOD05_021DBA40
_021DE56A:
	ldr r0, [r5, #4]
	bl MOD05_021DCB6C
_021DE570:
	ldr r0, _021DE5E4 ; =0x00000F62
	ldrh r0, [r5, r0]
	cmp r0, #5
	beq _021DE5CA
	cmp r0, #0
	beq _021DE5CA
	add r0, r5, #0
	ldr r1, _021DE5E8 ; =MOD05_021DE2E0
	add r0, #0xc
	bl MOD05_021DD148
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl MOD05_021DD2BC
	add r0, r5, #0
	bl MOD05_021DD164
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	add r0, r0, #6
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x18
	sub r1, r1, r2
	mov r0, #0x18
	ror r1, r0
	add r0, r4, #0
	add r1, r2, r1
	add r0, #0xbc
	str r1, [r0]
	add r4, #0xbc
	ldr r1, [r4]
	ldr r0, _021DE5F0 ; =0x000001FF
	add r2, r1, #0
	neg r1, r1
	and r2, r0
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _021DE5F4 ; =0x04000018
	str r1, [r0]
_021DE5CA:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_021DE5D0: .word 0x00000F58
_021DE5D4: .word MOD05_021DE1BC
_021DE5D8: .word 0x00006F6F
_021DE5DC: .word 0x00006318
_021DE5E0: .word 0x00000F64
_021DE5E4: .word 0x00000F62
_021DE5E8: .word MOD05_021DE2E0
_021DE5EC: .word 0x00000F66
_021DE5F0: .word 0x000001FF
_021DE5F4: .word 0x04000018

	thumb_func_start MOD05_021DE5F8
MOD05_021DE5F8: ; 0x021DE5F8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r2, _021DE74C ; =0x00000F58
	add r4, r1, #0
	add r0, r2, #0
	add r0, #0xa
	ldrh r0, [r4, r0]
	ldr r5, [r4, r2]
	cmp r0, #5
	bls _021DE60E
	b _021DE746
_021DE60E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DE61A: ; jump table
	.short _021DE626 - _021DE61A - 2 ; case 0
	.short _021DE65E - _021DE61A - 2 ; case 1
	.short _021DE694 - _021DE61A - 2 ; case 2
	.short _021DE6C2 - _021DE61A - 2 ; case 3
	.short _021DE6EE - _021DE61A - 2 ; case 4
	.short _021DE728 - _021DE61A - 2 ; case 5
_021DE626:
	ldr r0, _021DE750 ; =0x0000716F
	add r2, #0xc
	str r0, [sp]
	ldr r0, _021DE754 ; =0x00006B5A
	add r1, r5, #0
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldrh r0, [r4, r2]
	mov r2, #0x41
	lsl r2, r2, #2
	str r0, [sp, #0xc]
	ldr r3, [r4]
	add r0, r5, #0
	ldr r2, [r3, r2]
	add r0, #0x30
	ldr r2, [r2, #0x44]
	mov r3, #3
	bl MOD05_021DD420
	mov r0, #0x10
	add r5, #0x98
	str r0, [r5]
	ldr r0, _021DE758 ; =0x00000F62
	mov r1, #1
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021DE65E:
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	ble _021DE678
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	add r5, #0x98
	sub r0, r0, #1
	add sp, #0x10
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021DE678:
	add r2, #0xc
	ldrh r2, [r4, r2]
	add r0, r5, #0
	add r0, #0x30
	add r1, r5, #0
	bl MOD05_021DD474
	cmp r0, #1
	bne _021DE746
	ldr r0, _021DE758 ; =0x00000F62
	mov r1, #3
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021DE694:
	add r2, #0xc
	ldrh r0, [r4, r2]
	cmp r0, #0
	beq _021DE6B8
	mov r0, #0x41
	ldr r1, [r4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021DE750 ; =0x0000716F
	ldr r0, [r0, #0x44]
	ldr r3, _021DE754 ; =0x00006B5A
	mov r1, #3
	str r0, [r5]
	bl MOD05_021DD49C
	add r0, r5, #0
	bl MOD05_021DD5EC
_021DE6B8:
	ldr r0, _021DE758 ; =0x00000F62
	mov r1, #3
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021DE6C2:
	add r0, r2, #0
	add r0, #0xe
	ldrh r0, [r4, r0]
	cmp r0, #5
	bne _021DE746
	add r2, #0xc
	ldrh r0, [r4, r2]
	cmp r0, #0
	beq _021DE6DE
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	bl MOD05_021DD5B4
_021DE6DE:
	mov r0, #0x10
	add r5, #0x98
	str r0, [r5]
	ldr r0, _021DE758 ; =0x00000F62
	mov r1, #4
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021DE6EE:
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	ble _021DE708
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	add r5, #0x98
	sub r0, r0, #1
	add sp, #0x10
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021DE708:
	add r2, #0xc
	ldrh r0, [r4, r2]
	cmp r0, #0
	beq _021DE718
	add r0, r5, #0
	bl MOD05_021DD5D0
	b _021DE71A
_021DE718:
	mov r0, #1
_021DE71A:
	cmp r0, #1
	bne _021DE746
	ldr r0, _021DE758 ; =0x00000F62
	mov r1, #5
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021DE728:
	add r2, #0xc
	ldrh r0, [r4, r2]
	cmp r0, #0
	beq _021DE740
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r5]
	mov r1, #1
	add r3, r2, #0
	bl MOD05_021DBA40
_021DE740:
	ldr r0, [r4, #4]
	bl MOD05_021DCB6C
_021DE746:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021DE74C: .word 0x00000F58
_021DE750: .word 0x0000716F
_021DE754: .word 0x00006B5A
_021DE758: .word 0x00000F62

	thumb_func_start MOD05_021DE75C
MOD05_021DE75C: ; 0x021DE75C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r2, _021DE8B0 ; =0x00000F58
	add r4, r1, #0
	add r0, r2, #0
	add r0, #0xa
	ldrh r0, [r4, r0]
	ldr r5, [r4, r2]
	cmp r0, #5
	bls _021DE772
	b _021DE8AA
_021DE772:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DE77E: ; jump table
	.short _021DE78A - _021DE77E - 2 ; case 0
	.short _021DE7C2 - _021DE77E - 2 ; case 1
	.short _021DE7F8 - _021DE77E - 2 ; case 2
	.short _021DE826 - _021DE77E - 2 ; case 3
	.short _021DE852 - _021DE77E - 2 ; case 4
	.short _021DE88C - _021DE77E - 2 ; case 5
_021DE78A:
	ldr r0, _021DE8B4 ; =0x0000658F
	add r2, #0xc
	str r0, [sp]
	ldr r0, _021DE8B8 ; =0x00006B5A
	add r1, r5, #0
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldrh r0, [r4, r2]
	mov r2, #0x41
	lsl r2, r2, #2
	str r0, [sp, #0xc]
	ldr r3, [r4]
	add r0, r5, #0
	ldr r2, [r3, r2]
	add r0, #0x30
	ldr r2, [r2, #0x44]
	mov r3, #3
	bl MOD05_021DD420
	mov r0, #0x10
	add r5, #0x98
	str r0, [r5]
	ldr r0, _021DE8BC ; =0x00000F62
	mov r1, #1
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021DE7C2:
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	ble _021DE7DC
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	add r5, #0x98
	sub r0, r0, #1
	add sp, #0x10
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021DE7DC:
	add r2, #0xc
	ldrh r2, [r4, r2]
	add r0, r5, #0
	add r0, #0x30
	add r1, r5, #0
	bl MOD05_021DD474
	cmp r0, #1
	bne _021DE8AA
	ldr r0, _021DE8BC ; =0x00000F62
	mov r1, #3
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021DE7F8:
	add r2, #0xc
	ldrh r0, [r4, r2]
	cmp r0, #0
	beq _021DE81C
	mov r0, #0x41
	ldr r1, [r4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021DE8B4 ; =0x0000658F
	ldr r0, [r0, #0x44]
	ldr r3, _021DE8B8 ; =0x00006B5A
	mov r1, #3
	str r0, [r5]
	bl MOD05_021DD49C
	add r0, r5, #0
	bl MOD05_021DD5EC
_021DE81C:
	ldr r0, _021DE8BC ; =0x00000F62
	mov r1, #3
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021DE826:
	add r0, r2, #0
	add r0, #0xe
	ldrh r0, [r4, r0]
	cmp r0, #5
	bne _021DE8AA
	add r2, #0xc
	ldrh r0, [r4, r2]
	cmp r0, #0
	beq _021DE842
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	bl MOD05_021DD5B4
_021DE842:
	mov r0, #0x10
	add r5, #0x98
	str r0, [r5]
	ldr r0, _021DE8BC ; =0x00000F62
	mov r1, #4
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021DE852:
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	ble _021DE86C
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	add r5, #0x98
	sub r0, r0, #1
	add sp, #0x10
	str r0, [r5]
	pop {r3, r4, r5, pc}
_021DE86C:
	add r2, #0xc
	ldrh r0, [r4, r2]
	cmp r0, #0
	beq _021DE87C
	add r0, r5, #0
	bl MOD05_021DD5D0
	b _021DE87E
_021DE87C:
	mov r0, #1
_021DE87E:
	cmp r0, #1
	bne _021DE8AA
	ldr r0, _021DE8BC ; =0x00000F62
	mov r1, #5
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021DE88C:
	add r2, #0xc
	ldrh r0, [r4, r2]
	cmp r0, #0
	beq _021DE8A4
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r5]
	mov r1, #1
	add r3, r2, #0
	bl MOD05_021DBA40
_021DE8A4:
	ldr r0, [r4, #4]
	bl MOD05_021DCB6C
_021DE8AA:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021DE8B0: .word 0x00000F58
_021DE8B4: .word 0x0000658F
_021DE8B8: .word 0x00006B5A
_021DE8BC: .word 0x00000F62

	thumb_func_start MOD05_021DE8C0
MOD05_021DE8C0: ; 0x021DE8C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, _021DEA58 ; =0x00000F58
	add r4, r1, #0
	add r1, r0, #0
	add r1, #0xa
	ldrh r1, [r4, r1]
	ldr r5, [r4, r0]
	cmp r1, #5
	bls _021DE8D6
	b _021DEA54
_021DE8D6:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DE8E2: ; jump table
	.short _021DE8EE - _021DE8E2 - 2 ; case 0
	.short _021DE94C - _021DE8E2 - 2 ; case 1
	.short _021DE97A - _021DE8E2 - 2 ; case 2
	.short _021DE9C8 - _021DE8E2 - 2 ; case 3
	.short _021DE9FC - _021DE8E2 - 2 ; case 4
	.short _021DEA36 - _021DE8E2 - 2 ; case 5
_021DE8EE:
	ldr r1, _021DEA5C ; =0x00007A0F
	mov r2, #0x41
	str r1, [sp]
	ldr r1, _021DEA60 ; =0x00007FFF
	add r0, #0xc
	str r1, [sp, #4]
	mov r1, #2
	str r1, [sp, #8]
	ldrh r0, [r4, r0]
	add r1, r5, #0
	lsl r2, r2, #2
	str r0, [sp, #0xc]
	ldr r3, [r4]
	add r0, r5, #0
	ldr r2, [r3, r2]
	add r0, #0x44
	ldr r2, [r2, #0x44]
	add r1, #0x14
	mov r3, #5
	bl MOD05_021DD420
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x10
	mov r3, #0x1e
	bl MOD05_021DC6EC
	mov r0, #0
	mov r1, #0x10
	bl MOD05_021DC6D4
	ldr r1, _021DEA64 ; =0x0400000C
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #3
	orr r0, r2
	strh r0, [r1]
	mov r0, #4
	mov r1, #1
	bl FUN_0201E6E4
	ldr r0, _021DEA68 ; =0x00000F62
	mov r1, #1
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021DE94C:
	add r0, r5, #0
	add r0, #0x14
	bl MOD05_021DD5D0
	add r6, r0, #0
	add r0, r5, #0
	bl MOD05_021DC6FC
	add r7, r0, #0
	ldr r0, [r5]
	mov r1, #0x10
	sub r1, r1, r0
	bl MOD05_021DC6D4
	cmp r6, #1
	bne _021DEA54
	cmp r7, #1
	bne _021DEA54
	ldr r0, _021DEA68 ; =0x00000F62
	mov r1, #3
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021DE97A:
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021DE9A0
	mov r0, #0x41
	ldr r1, [r4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021DEA5C ; =0x00007A0F
	ldr r0, [r0, #0x44]
	ldr r3, _021DEA60 ; =0x00007FFF
	mov r1, #5
	str r0, [r5, #0x14]
	bl MOD05_021DD49C
	add r5, #0x14
	add r0, r5, #0
	bl MOD05_021DD5EC
_021DE9A0:
	mov r0, #0x10
	mov r1, #0
	bl MOD05_021DC6D4
	ldr r1, _021DEA64 ; =0x0400000C
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #3
	orr r0, r2
	strh r0, [r1]
	mov r0, #4
	mov r1, #1
	bl FUN_0201E6E4
	ldr r0, _021DEA68 ; =0x00000F62
	mov r1, #3
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021DE9C8:
	add r1, r0, #0
	add r1, #0xe
	ldrh r1, [r4, r1]
	cmp r1, #5
	bne _021DEA54
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021DE9E6
	add r0, r5, #0
	add r0, #0x14
	mov r1, #1
	mov r2, #0
	bl MOD05_021DD5B4
_021DE9E6:
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	mov r3, #0x1e
	bl MOD05_021DC6EC
	ldr r0, _021DEA68 ; =0x00000F62
	mov r1, #4
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021DE9FC:
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021DEA10
	add r0, r5, #0
	add r0, #0x14
	bl MOD05_021DD5D0
	add r6, r0, #0
	b _021DEA12
_021DEA10:
	mov r6, #1
_021DEA12:
	add r0, r5, #0
	bl MOD05_021DC6FC
	add r7, r0, #0
	ldr r0, [r5]
	mov r1, #0x10
	sub r1, r1, r0
	bl MOD05_021DC6D4
	cmp r6, #1
	bne _021DEA54
	cmp r7, #1
	bne _021DEA54
	ldr r0, _021DEA68 ; =0x00000F62
	mov r1, #5
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021DEA36:
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021DEA4E
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r5, #0x14]
	mov r1, #1
	add r3, r2, #0
	bl MOD05_021DBA40
_021DEA4E:
	ldr r0, [r4, #4]
	bl MOD05_021DCB6C
_021DEA54:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021DEA58: .word 0x00000F58
_021DEA5C: .word 0x00007A0F
_021DEA60: .word 0x00007FFF
_021DEA64: .word 0x0400000C
_021DEA68: .word 0x00000F62

	thumb_func_start MOD05_021DEA6C
MOD05_021DEA6C: ; 0x021DEA6C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r0, _021DEC8C ; =0x00000F58
	add r5, r1, #0
	add r2, r0, #0
	add r2, #0xa
	ldrh r2, [r5, r2]
	ldr r4, [r5, r0]
	cmp r2, #5
	bhi _021DEB2E
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021DEA8C: ; jump table
	.short _021DEA98 - _021DEA8C - 2 ; case 0
	.short _021DEAF6 - _021DEA8C - 2 ; case 1
	.short _021DEB38 - _021DEA8C - 2 ; case 2
	.short _021DEB9C - _021DEA8C - 2 ; case 3
	.short _021DEBF4 - _021DEA8C - 2 ; case 4
	.short _021DEC42 - _021DEA8C - 2 ; case 5
_021DEA98:
	mov r0, #8
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	sub r0, r2, #3
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _021DEC90 ; =MOD05_021DECAC
	mov r3, #0xf
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl MOD05_021DD328
	ldr r0, _021DEC94 ; =0x00006EEF
	mov r2, #0x41
	str r0, [sp]
	ldr r0, _021DEC98 ; =0x0000169A
	lsl r2, r2, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _021DEC9C ; =0x00000F64
	add r1, r4, #0
	ldrh r0, [r5, r0]
	add r1, #0x1c
	str r0, [sp, #0xc]
	ldr r3, [r5]
	add r0, r4, #0
	ldr r2, [r3, r2]
	add r0, #0x4c
	ldr r2, [r2, #0x44]
	mov r3, #3
	bl MOD05_021DD420
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0]
	add r4, #0xb8
	str r1, [r4]
	ldr r0, _021DECA0 ; =0x00000F62
	mov r1, #1
	strh r1, [r5, r0]
	b _021DEC60
_021DEAF6:
	add r0, r4, #0
	bl MOD05_021DD35C
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	ble _021DEB16
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	add r4, #0xb4
	sub r0, r0, #1
	str r0, [r4]
	b _021DEC60
_021DEB16:
	ldr r2, _021DEC9C ; =0x00000F64
	add r0, r4, #0
	ldrh r2, [r5, r2]
	add r4, #0x1c
	add r0, #0x4c
	add r1, r4, #0
	bl MOD05_021DD474
	cmp r0, #1
	bne _021DEB2E
	cmp r6, #3
	beq _021DEB30
_021DEB2E:
	b _021DEC60
_021DEB30:
	ldr r0, _021DECA0 ; =0x00000F62
	mov r1, #3
	strh r1, [r5, r0]
	b _021DEC60
_021DEB38:
	mov r2, #8
	mov r3, #1
	str r2, [sp]
	str r3, [sp, #4]
	sub r0, r3, #3
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _021DEC90 ; =MOD05_021DECAC
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl MOD05_021DD328
	ldr r0, _021DEC9C ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DEB7C
	mov r0, #0x41
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021DEC94 ; =0x00006EEF
	ldr r0, [r0, #0x44]
	ldr r3, _021DEC98 ; =0x0000169A
	mov r1, #3
	str r0, [r4, #0x1c]
	bl MOD05_021DD49C
	add r0, r4, #0
	add r0, #0x1c
	bl MOD05_021DD5EC
_021DEB7C:
	mov r0, #0
	add r4, #0xb8
	str r0, [r4]
	mov r3, #2
	ldr r0, _021DECA4 ; =MOD05_021DEDB4
	str r3, [sp]
	str r0, [sp, #4]
	ldr r1, _021DEC90 ; =MOD05_021DECAC
	add r0, r5, #0
	mov r2, #0x18
	bl MOD05_021DD680
	ldr r0, _021DECA0 ; =0x00000F62
	mov r1, #3
	strh r1, [r5, r0]
	b _021DEC60
_021DEB9C:
	mov r0, #6
	ldrsh r1, [r4, r0]
	sub r0, r1, #1
	strh r0, [r4, #6]
	cmp r1, #0
	bgt _021DEBB8
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl MOD05_021DECAC
	mov r0, #8
	ldrsh r0, [r4, r0]
	strh r0, [r4, #6]
_021DEBB8:
	ldr r0, _021DECA8 ; =0x00000F66
	ldrh r0, [r5, r0]
	cmp r0, #5
	bne _021DEC60
	mov r0, #2
	mvn r0, r0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xf
	mov r3, #2
	bl MOD05_021DD350
	ldr r0, _021DEC9C ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DEBE6
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #1
	mov r2, #0
	bl MOD05_021DD5B4
_021DEBE6:
	mov r0, #0x1f
	add r4, #0xb4
	str r0, [r4]
	ldr r0, _021DECA0 ; =0x00000F62
	mov r1, #4
	strh r1, [r5, r0]
	b _021DEC60
_021DEBF4:
	add r0, r4, #0
	bl MOD05_021DD35C
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	ble _021DEC14
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	add r4, #0xb4
	sub r0, r0, #1
	str r0, [r4]
	b _021DEC60
_021DEC14:
	ldr r0, _021DEC9C ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DEC26
	add r4, #0x1c
	add r0, r4, #0
	bl MOD05_021DD5D0
	b _021DEC28
_021DEC26:
	mov r0, #1
_021DEC28:
	cmp r0, #1
	bne _021DEC60
	cmp r6, #3
	bne _021DEC60
	add r0, r5, #0
	ldr r1, [r5, #0x40]
	add r0, #0xc
	cmp r1, r0
	bne _021DEC60
	ldr r0, _021DECA0 ; =0x00000F62
	mov r1, #5
	strh r1, [r5, r0]
	b _021DEC60
_021DEC42:
	add r0, #0xc
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DEC5A
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r3, r2, #0
	bl MOD05_021DBA40
_021DEC5A:
	ldr r0, [r5, #4]
	bl MOD05_021DCB6C
_021DEC60:
	ldr r0, _021DECA0 ; =0x00000F62
	ldrh r0, [r5, r0]
	cmp r0, #5
	beq _021DEC86
	cmp r0, #0
	beq _021DEC86
	add r0, r5, #0
	ldr r1, _021DECA4 ; =MOD05_021DEDB4
	add r0, #0xc
	bl MOD05_021DD148
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl MOD05_021DD2BC
	add r0, r5, #0
	bl MOD05_021DD164
_021DEC86:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_021DEC8C: .word 0x00000F58
_021DEC90: .word MOD05_021DECAC
_021DEC94: .word 0x00006EEF
_021DEC98: .word 0x0000169A
_021DEC9C: .word 0x00000F64
_021DECA0: .word 0x00000F62
_021DECA4: .word MOD05_021DEDB4
_021DECA8: .word 0x00000F66

	thumb_func_start MOD05_021DECAC
MOD05_021DECAC: ; 0x021DECAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #4]
	ldr r1, _021DEDA0 ; =0x00000F58
	str r0, [sp]
	ldr r4, [r0, r1]
	mov r1, #5
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	lsl r1, r1, #6
	add r0, r0, #1
	bl _s32_div_f
	add r0, r4, #0
	add r0, #0xb8
	str r1, [r0]
	add r4, #0xb8
	ldr r0, [r4]
	mov r1, #0x28
	bl _s32_div_f
	mov r1, #0
	str r1, [sp, #8]
	ldr r1, [sp, #4]
	cmp r1, #0
	ble _021DED9A
	lsl r6, r0, #2
_021DECE4:
	ldr r0, [sp]
	mov r1, #0x20
	bl MOD05_021DD048
	add r4, r0, #0
	beq _021DED9A
	ldr r5, [r4, #8]
	mov r0, #0
	str r0, [r5]
	bl FUN_0201BA60
	mov r1, #0x14
	bl _u32_div_f
	add r1, #0xf
	str r1, [r5, #4]
	sub r1, #0xf
	add r0, r1, #0
	mov r1, #6
	bl _s32_div_f
	mov r1, #3
	sub r7, r1, r0
	ldr r1, _021DEDA4 ; =0x021F687C
	add r0, r7, #1
	ldr r1, [r1, r6]
	mul r1, r0
	str r1, [r5, #8]
	ldr r1, _021DEDA8 ; =0x021F683C
	ldr r1, [r1, r6]
	mul r1, r0
	str r1, [r5, #0x10]
	mov r0, #0
	str r0, [r5, #0xc]
	ldr r0, _021DEDA8 ; =0x021F683C
	ldr r0, [r0, r6]
	str r0, [r5, #0x14]
	bl FUN_0201BA60
	mov r1, #0xfa
	lsl r1, r1, #2
	bl _u32_div_f
	ldr r0, _021DEDAC ; =0x00000309
	cmp r1, r0
	bne _021DED4E
	ldr r1, [r5, #8]
	mov r7, #4
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	add r0, r1, r0
	str r0, [r5, #8]
_021DED4E:
	lsl r1, r7, #0x10
	ldr r0, [r4, #4]
	lsr r1, r1, #0x10
	bl FUN_02020208
	add r0, sp, #0xc
	add r1, r4, #0
	bl MOD05_021DD168
	bl FUN_0201BA60
	mov r1, #0x18
	bl _u32_div_f
	ldr r0, _021DEDB0 ; =0x00000106
	add r0, r1, r0
	str r0, [sp, #0xc]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	bl FUN_0201BA60
	mov r1, #0xc0
	bl _u32_div_f
	sub r1, #0x40
	str r1, [sp, #0x10]
	lsl r0, r1, #0xc
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, sp, #0xc
	bl MOD05_021DC4FC
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	cmp r1, r0
	blt _021DECE4
_021DED9A:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DEDA0: .word 0x00000F58
_021DEDA4: .word 0x021F687C
_021DEDA8: .word 0x021F683C
_021DEDAC: .word 0x00000309
_021DEDB0: .word 0x00000106

	thumb_func_start MOD05_021DEDB4
MOD05_021DEDB4: ; 0x021DEDB4
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r0, sp, #0
	add r1, r5, #0
	ldr r4, [r5, #8]
	bl MOD05_021DD168
	add r3, sp, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021DEDDE
	cmp r0, #1
	beq _021DEE22
	add sp, #0x18
	pop {r3, r4, r5, pc}
_021DEDDE:
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [r4]
	mov r1, #5
	bl _s32_div_f
	cmp r1, #0
	bne _021DEE06
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	str r0, [r4, #0x10]
_021DEE06:
	ldr r1, [r4]
	add r0, r1, #1
	str r0, [r4]
	ldr r0, [r4, #4]
	cmp r1, r0
	ble _021DEE16
	mov r0, #1
	str r0, [r4, #0xc]
_021DEE16:
	ldr r0, [r5, #4]
	add r1, sp, #0xc
	bl MOD05_021DC4FC
	add sp, #0x18
	pop {r3, r4, r5, pc}
_021DEE22:
	add r0, r5, #0
	bl MOD05_021DD100
	add sp, #0x18
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021DEE2C
MOD05_021DEE2C: ; 0x021DEE2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r0, _021DF0F0 ; =0x00000F58
	add r5, r1, #0
	add r2, r0, #0
	add r2, #0xa
	ldrh r2, [r5, r2]
	ldr r4, [r5, r0]
	cmp r2, #5
	bhi _021DEEFE
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021DEE4C: ; jump table
	.short _021DEE58 - _021DEE4C - 2 ; case 0
	.short _021DEEC4 - _021DEE4C - 2 ; case 1
	.short _021DEF10 - _021DEE4C - 2 ; case 2
	.short _021DEF8A - _021DEE4C - 2 ; case 3
	.short _021DF01E - _021DEE4C - 2 ; case 4
	.short _021DF06C - _021DEE4C - 2 ; case 5
_021DEE58:
	mov r0, #8
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	sub r0, r2, #3
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _021DF0F4 ; =MOD05_021DECAC
	mov r3, #0xf
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl MOD05_021DD328
	ldr r0, _021DF0F8 ; =0x00006EEF
	mov r2, #0x41
	str r0, [sp]
	ldr r0, _021DF0FC ; =0x0000169A
	lsl r2, r2, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _021DF100 ; =0x00000F64
	add r1, r4, #0
	ldrh r0, [r5, r0]
	add r1, #0x1c
	str r0, [sp, #0xc]
	ldr r3, [r5]
	add r0, r4, #0
	ldr r2, [r3, r2]
	add r0, #0x4c
	ldr r2, [r2, #0x44]
	mov r3, #3
	bl MOD05_021DD420
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xb8
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xc0
	str r1, [r0]
	ldr r0, _021DF104 ; =0x00000F62
	mov r1, #1
	strh r1, [r5, r0]
	b _021DF08A
_021DEEC4:
	add r0, r4, #0
	bl MOD05_021DD35C
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	ble _021DEEE6
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xb4
	str r1, [r0]
	b _021DF08A
_021DEEE6:
	ldr r2, _021DF100 ; =0x00000F64
	add r0, r4, #0
	ldrh r2, [r5, r2]
	add r1, r4, #0
	add r0, #0x4c
	add r1, #0x1c
	bl MOD05_021DD474
	cmp r0, #1
	bne _021DEEFE
	cmp r6, #3
	beq _021DEF00
_021DEEFE:
	b _021DF08A
_021DEF00:
	ldr r0, _021DF104 ; =0x00000F62
	mov r1, #3
	strh r1, [r5, r0]
	mov r0, #4
	mov r1, #1
	bl FUN_0201E6E4
	b _021DF08A
_021DEF10:
	mov r2, #8
	mov r3, #1
	str r2, [sp]
	str r3, [sp, #4]
	sub r0, r3, #3
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _021DF0F4 ; =MOD05_021DECAC
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl MOD05_021DD328
	ldr r0, _021DF100 ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DEF54
	mov r0, #0x41
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021DF0F8 ; =0x00006EEF
	ldr r0, [r0, #0x44]
	ldr r3, _021DF0FC ; =0x0000169A
	mov r1, #3
	str r0, [r4, #0x1c]
	bl MOD05_021DD49C
	add r0, r4, #0
	add r0, #0x1c
	bl MOD05_021DD5EC
_021DEF54:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb8
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xc0
	str r1, [r0]
	mov r3, #2
	ldr r0, _021DF108 ; =MOD05_021DEDB4
	str r3, [sp]
	str r0, [sp, #4]
	ldr r1, _021DF0F4 ; =MOD05_021DECAC
	add r0, r5, #0
	mov r2, #0x18
	bl MOD05_021DD680
	ldr r0, _021DF104 ; =0x00000F62
	mov r1, #3
	strh r1, [r5, r0]
	mov r0, #4
	mov r1, #1
	bl FUN_0201E6E4
	b _021DF08A
_021DEF8A:
	mov r0, #6
	ldrsh r1, [r4, r0]
	sub r0, r1, #1
	strh r0, [r4, #6]
	cmp r1, #0
	bgt _021DEFDA
	add r0, r4, #0
	add r0, #0xb8
	ldr r0, [r0]
	mov r1, #0x28
	bl _s32_div_f
	lsl r1, r0, #2
	ldr r0, _021DF10C ; =0x021F681C
	ldr r1, [r0, r1]
	add r0, r4, #0
	add r0, #0xc0
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xc0
	ldr r1, [r0]
	mov r0, #5
	mvn r0, r0
	cmp r1, r0
	bgt _021DEFCA
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	lsl r1, r1, #1
	bl MOD05_021DECAC
	b _021DEFD4
_021DEFCA:
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl MOD05_021DECAC
_021DEFD4:
	mov r0, #8
	ldrsh r0, [r4, r0]
	strh r0, [r4, #6]
_021DEFDA:
	ldr r0, _021DF110 ; =0x00000F66
	ldrh r0, [r5, r0]
	cmp r0, #5
	bne _021DF08A
	mov r0, #2
	mvn r0, r0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xf
	mov r3, #2
	bl MOD05_021DD350
	ldr r0, _021DF100 ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DF008
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #1
	mov r2, #0
	bl MOD05_021DD5B4
_021DF008:
	add r0, r4, #0
	mov r1, #0x1f
	add r0, #0xb4
	str r1, [r0]
	ldr r1, _021DF104 ; =0x00000F62
	mov r0, #4
	strh r0, [r5, r1]
	mov r1, #0
	bl FUN_0201E6E4
	b _021DF08A
_021DF01E:
	add r0, r4, #0
	bl MOD05_021DD35C
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	ble _021DF040
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xb4
	str r1, [r0]
	b _021DF08A
_021DF040:
	ldr r0, _021DF100 ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DF052
	add r0, r4, #0
	add r0, #0x1c
	bl MOD05_021DD5D0
	add r7, r0, #0
_021DF052:
	cmp r7, #1
	bne _021DF08A
	cmp r6, #3
	bne _021DF08A
	add r0, r5, #0
	ldr r1, [r5, #0x40]
	add r0, #0xc
	cmp r1, r0
	bne _021DF08A
	ldr r0, _021DF104 ; =0x00000F62
	mov r1, #5
	strh r1, [r5, r0]
	b _021DF08A
_021DF06C:
	add r0, #0xc
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DF084
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r3, r2, #0
	bl MOD05_021DBA40
_021DF084:
	ldr r0, [r5, #4]
	bl MOD05_021DCB6C
_021DF08A:
	ldr r0, _021DF104 ; =0x00000F62
	ldrh r0, [r5, r0]
	cmp r0, #5
	beq _021DF0EC
	cmp r0, #0
	beq _021DF0EC
	add r0, r5, #0
	ldr r1, _021DF108 ; =MOD05_021DEDB4
	add r0, #0xc
	bl MOD05_021DD148
	add r0, r5, #0
	add r1, sp, #0x1c
	add r2, sp, #0x18
	bl MOD05_021DD2BC
	add r0, r5, #0
	bl MOD05_021DD164
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	add r0, r0, #6
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x18
	sub r1, r1, r2
	mov r0, #0x18
	ror r1, r0
	add r0, r4, #0
	add r1, r2, r1
	add r0, #0xbc
	str r1, [r0]
	add r4, #0xbc
	ldr r3, [r4]
	ldr r0, [sp, #0x1c]
	lsl r1, r3, #1
	sub r1, r1, r0
	add r2, r1, #0
	ldr r1, [sp, #0x18]
	ldr r0, _021DF114 ; =0x000001FF
	sub r1, r1, r3
	and r2, r0
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _021DF118 ; =0x04000018
	str r1, [r0]
_021DF0EC:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021DF0F0: .word 0x00000F58
_021DF0F4: .word MOD05_021DECAC
_021DF0F8: .word 0x00006EEF
_021DF0FC: .word 0x0000169A
_021DF100: .word 0x00000F64
_021DF104: .word 0x00000F62
_021DF108: .word MOD05_021DEDB4
_021DF10C: .word 0x021F681C
_021DF110: .word 0x00000F66
_021DF114: .word 0x000001FF
_021DF118: .word 0x04000018

	thumb_func_start MOD05_021DF11C
MOD05_021DF11C: ; 0x021DF11C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r0, _021DF3BC ; =0x00000F58
	add r5, r1, #0
	add r2, r0, #0
	add r2, #0xa
	ldrh r2, [r5, r2]
	ldr r4, [r5, r0]
	cmp r2, #5
	bhi _021DF1EA
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021DF13C: ; jump table
	.short _021DF148 - _021DF13C - 2 ; case 0
	.short _021DF1B0 - _021DF13C - 2 ; case 1
	.short _021DF1FC - _021DF13C - 2 ; case 2
	.short _021DF270 - _021DF13C - 2 ; case 3
	.short _021DF2F8 - _021DF13C - 2 ; case 4
	.short _021DF348 - _021DF13C - 2 ; case 5
_021DF148:
	mov r0, #0xa
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	sub r0, r2, #5
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #3
	str r0, [sp, #0x10]
	ldr r0, _021DF3C0 ; =MOD05_021DF3E8
	mov r3, #0x1e
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl MOD05_021DD328
	ldr r0, _021DF3C4 ; =0x00006B6F
	mov r2, #0x41
	str r0, [sp]
	ldr r0, _021DF3C8 ; =0x00006318
	lsl r2, r2, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _021DF3CC ; =0x00000F64
	add r1, r4, #0
	ldrh r0, [r5, r0]
	add r1, #0x1c
	str r0, [sp, #0xc]
	ldr r3, [r5]
	add r0, r4, #0
	ldr r2, [r3, r2]
	add r0, #0x4c
	ldr r2, [r2, #0x44]
	mov r3, #3
	bl MOD05_021DD420
	add r0, r4, #0
	mov r1, #0x10
	add r0, #0xb4
	str r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb8
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0]
	ldr r0, _021DF3D0 ; =0x00000F62
	mov r1, #1
	strh r1, [r5, r0]
	b _021DF366
_021DF1B0:
	add r0, r4, #0
	bl MOD05_021DD35C
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	ble _021DF1D2
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xb4
	str r1, [r0]
	b _021DF366
_021DF1D2:
	ldr r2, _021DF3CC ; =0x00000F64
	add r0, r4, #0
	ldrh r2, [r5, r2]
	add r1, r4, #0
	add r0, #0x4c
	add r1, #0x1c
	bl MOD05_021DD474
	cmp r0, #1
	bne _021DF1EA
	cmp r6, #3
	beq _021DF1EC
_021DF1EA:
	b _021DF366
_021DF1EC:
	ldr r0, _021DF3D0 ; =0x00000F62
	mov r1, #3
	strh r1, [r5, r0]
	mov r0, #4
	mov r1, #1
	bl FUN_0201E6E4
	b _021DF366
_021DF1FC:
	mov r2, #0xa
	mov r3, #1
	str r2, [sp]
	str r3, [sp, #4]
	sub r0, r3, #5
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #3
	str r0, [sp, #0x10]
	ldr r0, _021DF3C0 ; =MOD05_021DF3E8
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl MOD05_021DD328
	ldr r0, _021DF3CC ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DF240
	mov r0, #0x41
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021DF3C4 ; =0x00006B6F
	ldr r0, [r0, #0x44]
	ldr r3, _021DF3C8 ; =0x00006318
	mov r1, #3
	str r0, [r4, #0x1c]
	bl MOD05_021DD49C
	add r0, r4, #0
	add r0, #0x1c
	bl MOD05_021DD5EC
_021DF240:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb8
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0]
	mov r3, #2
	ldr r0, _021DF3D4 ; =MOD05_021DF500
	str r3, [sp]
	str r0, [sp, #4]
	ldr r1, _021DF3C0 ; =MOD05_021DF3E8
	add r0, r5, #0
	mov r2, #0x14
	bl MOD05_021DD680
	ldr r0, _021DF3D0 ; =0x00000F62
	mov r1, #3
	strh r1, [r5, r0]
	mov r0, #4
	mov r1, #1
	bl FUN_0201E6E4
	b _021DF366
_021DF270:
	mov r1, #6
	ldrsh r2, [r4, r1]
	sub r0, r2, #1
	strh r0, [r4, #6]
	cmp r2, #0
	bgt _021DF2B4
	add r0, r4, #0
	add r0, #0xb8
	ldr r2, [r0]
	sub r1, #0xe
	asr r0, r2, #8
	lsr r0, r0, #0x17
	add r0, r2, r0
	asr r0, r0, #9
	lsl r2, r0, #2
	ldr r0, _021DF3D8 ; =0x021F67F8
	ldr r0, [r0, r2]
	cmp r0, r1
	bgt _021DF2A4
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	lsl r1, r1, #1
	bl MOD05_021DF3E8
	b _021DF2AE
_021DF2A4:
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl MOD05_021DF3E8
_021DF2AE:
	mov r0, #8
	ldrsh r0, [r4, r0]
	strh r0, [r4, #6]
_021DF2B4:
	ldr r0, _021DF3DC ; =0x00000F66
	ldrh r0, [r5, r0]
	cmp r0, #5
	bne _021DF366
	mov r0, #3
	mvn r0, r0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xc
	mov r3, #4
	bl MOD05_021DD350
	ldr r0, _021DF3CC ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DF2E2
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #1
	mov r2, #0
	bl MOD05_021DD5B4
_021DF2E2:
	add r0, r4, #0
	mov r1, #0x14
	add r0, #0xb4
	str r1, [r0]
	ldr r1, _021DF3D0 ; =0x00000F62
	mov r0, #4
	strh r0, [r5, r1]
	mov r1, #0
	bl FUN_0201E6E4
	b _021DF366
_021DF2F8:
	add r0, r4, #0
	bl MOD05_021DD35C
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	ble _021DF31A
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xb4
	str r1, [r0]
	b _021DF366
_021DF31A:
	ldr r0, _021DF3CC ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DF32C
	add r0, r4, #0
	add r0, #0x1c
	bl MOD05_021DD5D0
	b _021DF32E
_021DF32C:
	mov r0, #1
_021DF32E:
	cmp r0, #1
	bne _021DF366
	cmp r6, #3
	bne _021DF366
	add r0, r5, #0
	ldr r1, [r5, #0x40]
	add r0, #0xc
	cmp r1, r0
	bne _021DF366
	ldr r0, _021DF3D0 ; =0x00000F62
	mov r1, #5
	strh r1, [r5, r0]
	b _021DF366
_021DF348:
	add r0, #0xc
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DF360
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r3, r2, #0
	bl MOD05_021DBA40
_021DF360:
	ldr r0, [r5, #4]
	bl MOD05_021DCB6C
_021DF366:
	ldr r0, _021DF3D0 ; =0x00000F62
	ldrh r0, [r5, r0]
	cmp r0, #5
	beq _021DF3B8
	cmp r0, #0
	beq _021DF3B8
	add r0, r5, #0
	ldr r1, _021DF3D4 ; =MOD05_021DF500
	add r0, #0xc
	bl MOD05_021DD148
	add r0, r5, #0
	bl MOD05_021DD164
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	add r0, #0xc
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x18
	sub r1, r1, r2
	mov r0, #0x18
	ror r1, r0
	add r0, r4, #0
	add r1, r2, r1
	add r0, #0xbc
	str r1, [r0]
	add r4, #0xbc
	ldr r3, [r4]
	ldr r0, _021DF3E0 ; =0x000001FF
	lsl r1, r3, #1
	add r2, r1, #0
	neg r1, r3
	and r2, r0
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	and r0, r1
	add r1, r2, #0
	orr r1, r0
	ldr r0, _021DF3E4 ; =0x04000018
	str r1, [r0]
_021DF3B8:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021DF3BC: .word 0x00000F58
_021DF3C0: .word MOD05_021DF3E8
_021DF3C4: .word 0x00006B6F
_021DF3C8: .word 0x00006318
_021DF3CC: .word 0x00000F64
_021DF3D0: .word 0x00000F62
_021DF3D4: .word MOD05_021DF500
_021DF3D8: .word 0x021F67F8
_021DF3DC: .word 0x00000F66
_021DF3E0: .word 0x000001FF
_021DF3E4: .word 0x04000018

	thumb_func_start MOD05_021DF3E8
MOD05_021DF3E8: ; 0x021DF3E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r2, _021DF4F4 ; =0x00000F58
	str r0, [sp]
	ldr r0, [r0, r2]
	add r2, r0, #0
	add r2, #0xb8
	ldr r2, [r2]
	add r3, r2, #1
	add r2, r0, #0
	add r2, #0xb8
	str r3, [r2]
	add r2, r0, #0
	add r2, #0xb8
	ldr r3, [r2]
	mov r2, #2
	lsl r2, r2, #0xa
	cmp r3, r2
	blt _021DF416
	add r2, r0, #0
	mov r3, #0
	add r2, #0xb8
	str r3, [r2]
_021DF416:
	add r0, #0xb8
	ldr r2, [r0]
	asr r0, r2, #8
	lsr r0, r0, #0x17
	add r0, r2, r0
	asr r2, r0, #9
	mov r0, #0
	str r0, [sp, #8]
	lsl r0, r1, #2
	str r0, [sp, #4]
	cmp r0, #0
	ble _021DF4EE
	lsl r4, r2, #2
_021DF430:
	ldr r0, [sp]
	mov r1, #0x20
	bl MOD05_021DD048
	add r6, r0, #0
	beq _021DF4EE
	ldr r5, [r6, #8]
	mov r0, #0
	str r0, [r5]
	bl FUN_0201BA60
	mov r1, #6
	bl _u32_div_f
	add r1, #0x12
	str r1, [r5, #4]
	bl FUN_0201BA60
	add r7, r0, #0
	mov r1, #3
	and r7, r1
	lsl r1, r7, #0x10
	ldr r0, [r6, #4]
	lsr r1, r1, #0x10
	bl FUN_02020208
	ldr r1, _021DF4F8 ; =0x021F67F8
	add r0, r7, #1
	ldr r1, [r1, r4]
	mul r1, r0
	str r1, [r5, #0x10]
	ldr r1, _021DF4FC ; =0x021F67E8
	ldr r1, [r1, r4]
	mul r1, r0
	mov r0, #0
	str r1, [r5, #8]
	str r0, [r5, #0xc]
	cmp r7, #3
	bne _021DF492
	ldr r0, _021DF4F8 ; =0x021F67F8
	ldr r1, [r5, #0x10]
	ldr r0, [r0, r4]
	add r0, r1, r0
	str r0, [r5, #0x10]
	ldr r0, _021DF4FC ; =0x021F67E8
	ldr r1, [r5, #8]
	ldr r0, [r0, r4]
	add r0, r1, r0
	str r0, [r5, #8]
_021DF492:
	ldr r0, _021DF4F8 ; =0x021F67F8
	add r1, r6, #0
	ldr r0, [r0, r4]
	str r0, [r5, #0x14]
	add r0, sp, #0xc
	bl MOD05_021DD168
	add r3, sp, #0xc
	ldmia r3!, {r0, r1}
	add r2, sp, #0x18
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bl FUN_0201BA60
	mov r1, #0x18
	bl _u32_div_f
	mov r0, #1
	lsl r0, r0, #8
	add r0, r1, r0
	str r0, [sp, #0x18]
	bl FUN_0201BA60
	mov r1, #0xa8
	bl _u32_div_f
	ldr r0, [sp, #0x18]
	sub r1, #0x20
	lsl r0, r0, #0xc
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	lsl r0, r1, #0xc
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [r6, #4]
	add r1, sp, #0x18
	bl MOD05_021DC4FC
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	cmp r1, r0
	blt _021DF430
_021DF4EE:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021DF4F4: .word 0x00000F58
_021DF4F8: .word 0x021F67F8
_021DF4FC: .word 0x021F67E8

	thumb_func_start MOD05_021DF500
MOD05_021DF500: ; 0x021DF500
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r0, sp, #0
	add r1, r5, #0
	ldr r4, [r5, #8]
	bl MOD05_021DD168
	add r3, sp, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021DF52A
	cmp r0, #1
	beq _021DF57C
	add sp, #0x18
	pop {r3, r4, r5, pc}
_021DF52A:
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r1, [r4]
	add r0, r1, #1
	str r0, [r4]
	ldr r0, [r4, #4]
	cmp r1, r0
	ble _021DF54E
	mov r0, #1
	str r0, [r4, #0xc]
_021DF54E:
	ldr r0, [r4]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	bne _021DF570
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	str r0, [r4, #0x10]
	ldr r0, [r4, #8]
	cmp r0, #1
	ble _021DF570
	sub r0, r0, #1
	str r0, [r4, #8]
_021DF570:
	ldr r0, [r5, #4]
	add r1, sp, #0xc
	bl MOD05_021DC4FC
	add sp, #0x18
	pop {r3, r4, r5, pc}
_021DF57C:
	add r0, r5, #0
	bl MOD05_021DD100
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DF588
MOD05_021DF588: ; 0x021DF588
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r0, _021DF794 ; =0x00000F58
	add r5, r1, #0
	add r2, r0, #0
	add r2, #0xa
	ldrh r2, [r5, r2]
	ldr r4, [r5, r0]
	cmp r2, #5
	bhi _021DF642
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021DF5A8: ; jump table
	.short _021DF5B4 - _021DF5A8 - 2 ; case 0
	.short _021DF60A - _021DF5A8 - 2 ; case 1
	.short _021DF64C - _021DF5A8 - 2 ; case 2
	.short _021DF6AA - _021DF5A8 - 2 ; case 3
	.short _021DF702 - _021DF5A8 - 2 ; case 4
	.short _021DF74C - _021DF5A8 - 2 ; case 5
_021DF5B4:
	mov r0, #0x14
	str r0, [sp]
	mov r2, #2
	str r2, [sp, #4]
	sub r0, r2, #4
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r0, _021DF798 ; =MOD05_021DF7B4
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r3, #0x10
	bl MOD05_021DD328
	ldr r0, _021DF79C ; =0x0000716F
	mov r2, #0x41
	str r0, [sp]
	ldr r0, _021DF7A0 ; =0x00006B5A
	lsl r2, r2, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _021DF7A4 ; =0x00000F64
	add r1, r4, #0
	ldrh r0, [r5, r0]
	add r1, #0x1c
	str r0, [sp, #0xc]
	ldr r3, [r5]
	add r0, r4, #0
	ldr r2, [r3, r2]
	add r0, #0x4c
	ldr r2, [r2, #0x44]
	mov r3, #3
	bl MOD05_021DD420
	mov r0, #0
	add r4, #0xb4
	str r0, [r4]
	ldr r0, _021DF7A8 ; =0x00000F62
	mov r1, #1
	strh r1, [r5, r0]
	b _021DF76A
_021DF60A:
	add r0, r4, #0
	bl MOD05_021DD35C
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	ble _021DF62A
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	add r4, #0xb4
	sub r0, r0, #1
	str r0, [r4]
	b _021DF76A
_021DF62A:
	ldr r2, _021DF7A4 ; =0x00000F64
	add r0, r4, #0
	ldrh r2, [r5, r2]
	add r4, #0x1c
	add r0, #0x4c
	add r1, r4, #0
	bl MOD05_021DD474
	cmp r0, #1
	bne _021DF642
	cmp r6, #3
	beq _021DF644
_021DF642:
	b _021DF76A
_021DF644:
	ldr r0, _021DF7A8 ; =0x00000F62
	mov r1, #3
	strh r1, [r5, r0]
	b _021DF76A
_021DF64C:
	mov r2, #0x14
	mov r3, #2
	str r2, [sp]
	str r3, [sp, #4]
	sub r0, r3, #4
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	ldr r0, _021DF798 ; =MOD05_021DF7B4
	str r3, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl MOD05_021DD328
	ldr r0, _021DF7A4 ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DF68E
	mov r0, #0x41
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021DF79C ; =0x0000716F
	ldr r0, [r0, #0x44]
	ldr r3, _021DF7A0 ; =0x00006B5A
	mov r1, #3
	str r0, [r4, #0x1c]
	bl MOD05_021DD49C
	add r4, #0x1c
	add r0, r4, #0
	bl MOD05_021DD5EC
_021DF68E:
	mov r0, #1
	str r0, [sp]
	ldr r0, _021DF7AC ; =MOD05_021DF8E4
	ldr r1, _021DF798 ; =MOD05_021DF7B4
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x14
	mov r3, #0xa
	bl MOD05_021DD680
	ldr r0, _021DF7A8 ; =0x00000F62
	mov r1, #3
	strh r1, [r5, r0]
	b _021DF76A
_021DF6AA:
	mov r0, #6
	ldrsh r1, [r4, r0]
	sub r0, r1, #1
	strh r0, [r4, #6]
	cmp r1, #0
	bgt _021DF6C6
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl MOD05_021DF7B4
	mov r0, #8
	ldrsh r0, [r4, r0]
	strh r0, [r4, #6]
_021DF6C6:
	ldr r0, _021DF7B0 ; =0x00000F66
	ldrh r0, [r5, r0]
	cmp r0, #5
	bne _021DF76A
	mov r0, #9
	mvn r0, r0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x10
	mov r3, #6
	bl MOD05_021DD350
	ldr r0, _021DF7A4 ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DF6F4
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #1
	mov r2, #0
	bl MOD05_021DD5B4
_021DF6F4:
	mov r0, #0x14
	add r4, #0xb4
	str r0, [r4]
	ldr r0, _021DF7A8 ; =0x00000F62
	mov r1, #4
	strh r1, [r5, r0]
	b _021DF76A
_021DF702:
	add r0, r4, #0
	bl MOD05_021DD35C
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	ble _021DF722
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	add r4, #0xb4
	sub r0, r0, #1
	str r0, [r4]
	b _021DF76A
_021DF722:
	ldr r2, _021DF7A4 ; =0x00000F64
	add r0, r4, #0
	ldrh r2, [r5, r2]
	add r4, #0x1c
	add r0, #0x4c
	add r1, r4, #0
	bl MOD05_021DD474
	cmp r0, #1
	bne _021DF76A
	cmp r6, #3
	bne _021DF76A
	add r0, r5, #0
	ldr r1, [r5, #0x40]
	add r0, #0xc
	cmp r1, r0
	bne _021DF76A
	ldr r0, _021DF7A8 ; =0x00000F62
	mov r1, #5
	strh r1, [r5, r0]
	b _021DF76A
_021DF74C:
	add r0, #0xc
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DF764
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r3, r2, #0
	bl MOD05_021DBA40
_021DF764:
	ldr r0, [r5, #4]
	bl MOD05_021DCB6C
_021DF76A:
	ldr r0, _021DF7A8 ; =0x00000F62
	ldrh r0, [r5, r0]
	cmp r0, #5
	beq _021DF790
	cmp r0, #0
	beq _021DF790
	add r0, r5, #0
	ldr r1, _021DF7AC ; =MOD05_021DF8E4
	add r0, #0xc
	bl MOD05_021DD148
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl MOD05_021DD2BC
	add r0, r5, #0
	bl MOD05_021DD164
_021DF790:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021DF794: .word 0x00000F58
_021DF798: .word MOD05_021DF7B4
_021DF79C: .word 0x0000716F
_021DF7A0: .word 0x00006B5A
_021DF7A4: .word 0x00000F64
_021DF7A8: .word 0x00000F62
_021DF7AC: .word MOD05_021DF8E4
_021DF7B0: .word 0x00000F66

	thumb_func_start MOD05_021DF7B4
MOD05_021DF7B4: ; 0x021DF7B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r1, #0
	str r1, [sp, #4]
	cmp r0, #0
	bgt _021DF7C8
	b _021DF8E0
_021DF7C8:
	ldr r0, [sp]
	mov r1, #0x20
	bl MOD05_021DD048
	add r4, r0, #0
	bne _021DF7D6
	b _021DF8E0
_021DF7D6:
	ldr r5, [r4, #8]
	mov r0, #0
	str r0, [r5]
	bl FUN_0201BA60
	mov r1, #5
	bl _u32_div_f
	add r0, r1, #7
	str r0, [r5, #4]
	bl FUN_0201BA60
	mov r1, #0xfa
	lsl r1, r1, #2
	bl _u32_div_f
	lsr r2, r1, #0x1f
	lsl r1, r1, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	bne _021DF808
	mov r0, #1
	b _021DF80C
_021DF808:
	mov r0, #0
	mvn r0, r0
_021DF80C:
	str r0, [r5, #8]
	mov r0, #1
	str r0, [r5, #0xc]
	bl FUN_0201BA60
	mov r1, #6
	bl _u32_div_f
	add r0, r1, #3
	str r0, [r5, #0x10]
	bl FUN_0201BA60
	mov r1, #5
	bl _u32_div_f
	add r0, r1, #4
	str r0, [r5, #0x14]
	bl FUN_0201BA60
	mov r1, #0x14
	bl _u32_div_f
	str r1, [sp, #8]
	add r0, sp, #0x10
	add r1, r4, #0
	bl MOD05_021DD168
	bl FUN_0201BA60
	mov r1, #6
	lsl r1, r1, #6
	bl _u32_div_f
	sub r1, #0x40
	str r1, [sp, #0x10]
	bl FUN_0201BA60
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0x10]
	sub r1, #8
	lsl r0, r0, #0xc
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	lsl r0, r1, #0xc
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [r4, #4]
	add r1, sp, #0x10
	bl MOD05_021DC4FC
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x10]
	asr r1, r1, #0xc
	asr r0, r0, #0xc
	str r1, [sp, #0x14]
	mov r1, #3
	str r0, [sp, #0x10]
	bl _s32_div_f
	mov r1, #0x32
	sub r6, r1, r0
	mov r1, #0xce
	sub r7, r1, r0
	bpl _021DF89E
	bl FUN_0201BA60
	neg r1, r7
	bl _u32_div_f
	sub r1, r6, r1
	b _021DF8AA
_021DF89E:
	bl FUN_0201BA60
	add r1, r7, #0
	bl _u32_div_f
	add r1, r6, r1
_021DF8AA:
	ldr r0, [sp, #0x14]
	cmp r6, r0
	bgt _021DF8BC
	cmp r1, r0
	blt _021DF8BC
	ldr r0, [r5, #4]
	lsl r0, r0, #1
	str r0, [r5, #4]
	b _021DF8C6
_021DF8BC:
	bl FUN_0201BA60
	mov r1, #3
	and r0, r1
	str r0, [sp, #8]
_021DF8C6:
	ldr r1, [sp, #8]
	ldr r0, [r4, #4]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl FUN_02020208
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #0xc]
	cmp r1, r0
	bge _021DF8E0
	b _021DF7C8
_021DF8E0:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021DF8E4
MOD05_021DF8E4: ; 0x021DF8E4
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r4, [r5, #8]
	add r0, sp, #0
	add r1, r5, #0
	bl MOD05_021DD168
	ldr r0, [r4]
	add r1, r0, #1
	str r1, [r4]
	ldr r0, [r4, #4]
	cmp r1, r0
	blt _021DF906
	add r0, r5, #0
	bl MOD05_021DD100
_021DF906:
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DF90C
MOD05_021DF90C: ; 0x021DF90C
	push {r3, r4, r5, lr}
	ldr r0, _021DFA98 ; =0x00000F58
	add r5, r1, #0
	ldr r4, [r5, r0]
	add r0, #0xa
	ldrh r0, [r5, r0]
	cmp r0, #5
	bhi _021DF978
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DF928: ; jump table
	.short _021DF934 - _021DF928 - 2 ; case 0
	.short _021DF958 - _021DF928 - 2 ; case 1
	.short _021DF9A2 - _021DF928 - 2 ; case 2
	.short _021DF9E2 - _021DF928 - 2 ; case 3
	.short _021DFA68 - _021DF928 - 2 ; case 4
	.short _021DFA90 - _021DF928 - 2 ; case 5
_021DF934:
	mov r0, #0
	str r0, [r4]
	mov r1, #0x10
	str r0, [r4, #4]
	bl MOD05_021DC6D4
	mov r1, #2
	ldr r0, _021DFA9C ; =0x04000018
	lsl r1, r1, #0x14
	str r1, [r0]
	mov r0, #4
	mov r1, #1
	bl FUN_0201E6E4
	ldr r0, _021DFAA0 ; =0x00000F62
	mov r1, #1
	strh r1, [r5, r0]
	pop {r3, r4, r5, pc}
_021DF958:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	cmp r0, #0xa
	blt _021DF978
	mov r0, #0
	str r0, [r4]
	ldr r0, [r4, #4]
	mov r1, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	bl MOD05_021DC6D4
	ldr r0, [r4, #4]
	cmp r0, #0xa
	bge _021DF97A
_021DF978:
	b _021DFA96
_021DF97A:
	bl FUN_0201BA60
	mov r1, #0x14
	bl _u32_div_f
	add r1, #0xa
	str r1, [r4, #8]
	bl FUN_0201BA60
	mov r1, #3
	bl _u32_div_f
	add r0, r1, #5
	str r0, [r4, #0xc]
	mov r0, #1
	str r0, [r4, #0x10]
	ldr r0, _021DFAA0 ; =0x00000F62
	mov r1, #3
	strh r1, [r5, r0]
	pop {r3, r4, r5, pc}
_021DF9A2:
	mov r0, #0
	str r0, [r4]
	mov r0, #0xa
	str r0, [r4, #4]
	mov r1, #2
	ldr r0, _021DFA9C ; =0x04000018
	lsl r1, r1, #0x14
	str r1, [r0]
	ldr r0, [r4, #4]
	mov r1, #0x10
	bl MOD05_021DC6D4
	bl FUN_0201BA60
	mov r1, #0x14
	bl _u32_div_f
	add r1, #0xa
	str r1, [r4, #8]
	bl FUN_0201BA60
	mov r1, #3
	bl _u32_div_f
	add r0, r1, #5
	str r0, [r4, #0xc]
	mov r0, #1
	str r0, [r4, #0x10]
	ldr r0, _021DFAA0 ; =0x00000F62
	mov r1, #3
	strh r1, [r5, r0]
	pop {r3, r4, r5, pc}
_021DF9E2:
	ldr r0, [r4]
	add r1, r0, #1
	str r1, [r4]
	ldr r0, [r4, #8]
	cmp r1, r0
	blt _021DFA50
	mov r0, #0
	str r0, [r4]
	ldr r0, [r4, #0x10]
	cmp r0, #1
	ldr r0, [r4, #4]
	bne _021DFA26
	sub r1, r0, #1
	str r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	bgt _021DFA50
	bl FUN_0201BA60
	mov r1, #0xf
	bl _u32_div_f
	add r1, #0xa
	str r1, [r4, #8]
	bl FUN_0201BA60
	mov r1, #3
	bl _u32_div_f
	add r0, r1, #7
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x10]
	b _021DFA50
_021DFA26:
	add r1, r0, #1
	str r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	blt _021DFA50
	bl FUN_0201BA60
	mov r1, #0x14
	bl _u32_div_f
	add r1, #0xa
	str r1, [r4, #8]
	bl FUN_0201BA60
	mov r1, #3
	bl _u32_div_f
	add r0, r1, #5
	str r0, [r4, #0xc]
	mov r0, #1
	str r0, [r4, #0x10]
_021DFA50:
	ldr r0, [r4, #4]
	mov r1, #0x10
	bl MOD05_021DC6D4
	ldr r0, _021DFAA4 ; =0x00000F66
	ldrh r1, [r5, r0]
	cmp r1, #5
	bne _021DFA96
	mov r1, #4
	sub r0, r0, #4
	strh r1, [r5, r0]
	pop {r3, r4, r5, pc}
_021DFA68:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	cmp r0, #0xa
	blt _021DFA96
	mov r0, #0
	str r0, [r4]
	ldr r0, [r4, #4]
	mov r1, #0x10
	sub r0, r0, #1
	str r0, [r4, #4]
	bl MOD05_021DC6D4
	ldr r0, [r4, #4]
	cmp r0, #0
	bgt _021DFA96
	ldr r0, _021DFAA0 ; =0x00000F62
	mov r1, #5
	strh r1, [r5, r0]
	pop {r3, r4, r5, pc}
_021DFA90:
	ldr r0, [r5, #4]
	bl MOD05_021DCB6C
_021DFA96:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021DFA98: .word 0x00000F58
_021DFA9C: .word 0x04000018
_021DFAA0: .word 0x00000F62
_021DFAA4: .word 0x00000F66

	thumb_func_start MOD05_021DFAA8
MOD05_021DFAA8: ; 0x021DFAA8
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0x18
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	sub r0, r2, #4
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	ldr r0, _021DFB1C ; =MOD05_021DFEE0
	add r4, r1, #0
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, r5, #0
	mov r3, #0xf
	bl MOD05_021DD328
	ldr r0, _021DFB20 ; =0x00006F6F
	mov r2, #0x41
	str r0, [sp]
	ldr r0, _021DFB24 ; =0x00006B5A
	add r1, r4, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _021DFB28 ; =0x00000F64
	lsl r2, r2, #2
	ldrh r0, [r5, r0]
	add r1, #0x1c
	str r0, [sp, #0xc]
	ldr r3, [r5]
	add r0, r4, #0
	ldr r2, [r3, r2]
	add r0, #0x4c
	ldr r2, [r2, #0x44]
	mov r3, #3
	bl MOD05_021DD420
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xb8
	str r1, [r0]
	add r4, #0xbc
	str r1, [r4]
	ldr r1, _021DFB2C ; =0x0000063B
	add r0, r5, #0
	bl MOD05_021E0FA4
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021DFB1C: .word MOD05_021DFEE0
_021DFB20: .word 0x00006F6F
_021DFB24: .word 0x00006B5A
_021DFB28: .word 0x00000F64
_021DFB2C: .word 0x0000063B

	thumb_func_start MOD05_021DFB30
MOD05_021DFB30: ; 0x021DFB30
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl MOD05_021DD35C
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	ble _021DFB56
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	add r4, #0xb4
	sub r0, r0, #1
	str r0, [r4]
	b _021DFB72
_021DFB56:
	ldr r2, _021DFB78 ; =0x00000F64
	add r0, r4, #0
	ldrh r2, [r5, r2]
	add r4, #0x1c
	add r0, #0x4c
	add r1, r4, #0
	bl MOD05_021DD474
	cmp r0, #1
	bne _021DFB72
	cmp r6, #3
	bne _021DFB72
	mov r0, #1
	pop {r4, r5, r6, pc}
_021DFB72:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021DFB78: .word 0x00000F64

	thumb_func_start MOD05_021DFB7C
MOD05_021DFB7C: ; 0x021DFB7C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	mov r2, #0x18
	str r2, [sp]
	mov r3, #1
	add r5, r0, #0
	str r3, [sp, #4]
	sub r0, r3, #4
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	ldr r0, _021DFBF8 ; =MOD05_021DFEE0
	add r4, r1, #0
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021DD328
	ldr r0, _021DFBFC ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DFBCA
	mov r0, #0x41
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021DFC00 ; =0x00006F6F
	ldr r0, [r0, #0x44]
	ldr r3, _021DFC04 ; =0x00006B5A
	mov r1, #3
	str r0, [r4, #0x1c]
	bl MOD05_021DD49C
	add r0, r4, #0
	add r0, #0x1c
	bl MOD05_021DD5EC
_021DFBCA:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb8
	str r1, [r0]
	add r4, #0xbc
	str r1, [r4]
	mov r0, #1
	str r0, [sp]
	ldr r0, _021DFC08 ; =MOD05_021E0000
	ldr r1, _021DFBF8 ; =MOD05_021DFEE0
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x14
	mov r3, #5
	bl MOD05_021DD680
	ldr r1, _021DFC0C ; =0x0000063B
	add r0, r5, #0
	bl MOD05_021E0FA4
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021DFBF8: .word MOD05_021DFEE0
_021DFBFC: .word 0x00000F64
_021DFC00: .word 0x00006F6F
_021DFC04: .word 0x00006B5A
_021DFC08: .word MOD05_021E0000
_021DFC0C: .word 0x0000063B

	thumb_func_start MOD05_021DFC10
MOD05_021DFC10: ; 0x021DFC10
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	mov r1, #0x4b
	add r0, r0, #1
	lsl r1, r1, #2
	bl _s32_div_f
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0]
	mov r0, #6
	ldrsh r1, [r4, r0]
	sub r0, r1, #1
	strh r0, [r4, #6]
	cmp r1, #0
	bgt _021DFC48
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl MOD05_021DFEE0
	mov r0, #8
	ldrsh r0, [r4, r0]
	strh r0, [r4, #6]
_021DFC48:
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021DFC4C
MOD05_021DFC4C: ; 0x021DFC4C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #9
	add r4, r1, #0
	mvn r0, r0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xf
	mov r3, #3
	bl MOD05_021DD350
	ldr r0, _021DFC88 ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DFC78
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #1
	mov r2, #0
	bl MOD05_021DD5B4
_021DFC78:
	mov r0, #0
	add r4, #0xb4
	str r0, [r4]
	add r0, r5, #0
	bl MOD05_021E0FD0
	pop {r3, r4, r5, pc}
	nop
_021DFC88: .word 0x00000F64

	thumb_func_start MOD05_021DFC8C
MOD05_021DFC8C: ; 0x021DFC8C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl MOD05_021DD35C
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	ble _021DFCB2
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	add r4, #0xb4
	sub r0, r0, #1
	str r0, [r4]
	b _021DFCDA
_021DFCB2:
	ldr r0, _021DFCE0 ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021DFCC4
	add r4, #0x1c
	add r0, r4, #0
	bl MOD05_021DD5D0
	b _021DFCC6
_021DFCC4:
	mov r0, #1
_021DFCC6:
	cmp r0, #1
	bne _021DFCDA
	cmp r6, #3
	bne _021DFCDA
	ldr r0, [r5, #0x40]
	add r5, #0xc
	cmp r0, r5
	bne _021DFCDA
	mov r0, #1
	pop {r4, r5, r6, pc}
_021DFCDA:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021DFCE0: .word 0x00000F64

	thumb_func_start MOD05_021DFCE4
MOD05_021DFCE4: ; 0x021DFCE4
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _021DFD0C ; =0x00000F64
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021DFD02
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r1, #0x1c]
	mov r1, #1
	add r3, r2, #0
	bl MOD05_021DBA40
_021DFD02:
	ldr r0, [r4, #4]
	bl MOD05_021DCB6C
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
_021DFD0C: .word 0x00000F64

	thumb_func_start MOD05_021DFD10
MOD05_021DFD10: ; 0x021DFD10
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021DFD3C ; =0x00000F62
	ldrh r0, [r4, r0]
	cmp r0, #5
	beq _021DFD3A
	cmp r0, #0
	beq _021DFD3A
	add r0, r4, #0
	ldr r1, _021DFD40 ; =MOD05_021E0000
	add r0, #0xc
	bl MOD05_021DD148
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl MOD05_021DD2BC
	add r0, r4, #0
	bl MOD05_021DD164
_021DFD3A:
	pop {r4, pc}
	.balign 4, 0
_021DFD3C: .word 0x00000F62
_021DFD40: .word MOD05_021E0000

	thumb_func_start MOD05_021DFD44
MOD05_021DFD44: ; 0x021DFD44
	push {r3, r4, r5, lr}
	ldr r0, _021DFE24 ; =0x00000F58
	add r4, r1, #0
	ldr r5, [r4, r0]
	add r0, #0xa
	ldrh r0, [r4, r0]
	cmp r0, #5
	bhi _021DFE18
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DFD60: ; jump table
	.short _021DFD6C - _021DFD60 - 2 ; case 0
	.short _021DFD90 - _021DFD60 - 2 ; case 1
	.short _021DFDA4 - _021DFD60 - 2 ; case 2
	.short _021DFDC8 - _021DFD60 - 2 ; case 3
	.short _021DFDF2 - _021DFD60 - 2 ; case 4
	.short _021DFE06 - _021DFD60 - 2 ; case 5
_021DFD6C:
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021DFAA8
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0x11
	bl MOD05_021DC608
	ldr r0, [r4]
	mov r1, #3
	mov r2, #0x11
	bl MOD05_021DC608
	ldr r0, _021DFE28 ; =0x00000F62
	mov r1, #1
	strh r1, [r4, r0]
	b _021DFE18
_021DFD90:
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021DFB30
	cmp r0, #0
	beq _021DFE18
	ldr r0, _021DFE28 ; =0x00000F62
	mov r1, #3
	strh r1, [r4, r0]
	b _021DFE18
_021DFDA4:
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021DFB7C
	ldr r0, [r4]
	mov r1, #0
	mov r2, #0x11
	bl MOD05_021DC608
	ldr r0, [r4]
	mov r1, #3
	mov r2, #0x11
	bl MOD05_021DC608
	ldr r0, _021DFE28 ; =0x00000F62
	mov r1, #3
	strh r1, [r4, r0]
	b _021DFE18
_021DFDC8:
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021DFC10
	ldr r0, _021DFE2C ; =0x00000F66
	ldrh r0, [r4, r0]
	cmp r0, #5
	bne _021DFE18
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021DFC4C
	ldr r0, [r4]
	mov r1, #5
	mov r2, #0x11
	bl MOD05_021DC608
	ldr r0, _021DFE28 ; =0x00000F62
	mov r1, #4
	strh r1, [r4, r0]
	b _021DFE18
_021DFDF2:
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021DFC8C
	cmp r0, #0
	beq _021DFE18
	ldr r0, _021DFE28 ; =0x00000F62
	mov r1, #5
	strh r1, [r4, r0]
	b _021DFE18
_021DFE06:
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021DFCE4
	ldr r0, [r4]
	mov r1, #8
	mov r2, #0x11
	bl MOD05_021DC608
_021DFE18:
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021DFD10
	pop {r3, r4, r5, pc}
	nop
_021DFE24: .word 0x00000F58
_021DFE28: .word 0x00000F62
_021DFE2C: .word 0x00000F66

	thumb_func_start MOD05_021DFE30
MOD05_021DFE30: ; 0x021DFE30
	push {r3, r4, r5, lr}
	ldr r0, _021DFED4 ; =0x00000F58
	add r4, r1, #0
	ldr r5, [r4, r0]
	add r0, #0xa
	ldrh r0, [r4, r0]
	cmp r0, #5
	bhi _021DFEC8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DFE4C: ; jump table
	.short _021DFE58 - _021DFE4C - 2 ; case 0
	.short _021DFE68 - _021DFE4C - 2 ; case 1
	.short _021DFE7C - _021DFE4C - 2 ; case 2
	.short _021DFE8C - _021DFE4C - 2 ; case 3
	.short _021DFEAC - _021DFE4C - 2 ; case 4
	.short _021DFEC0 - _021DFE4C - 2 ; case 5
_021DFE58:
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021DFAA8
	ldr r0, _021DFED8 ; =0x00000F62
	mov r1, #1
	strh r1, [r4, r0]
	b _021DFEC8
_021DFE68:
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021DFB30
	cmp r0, #0
	beq _021DFEC8
	ldr r0, _021DFED8 ; =0x00000F62
	mov r1, #3
	strh r1, [r4, r0]
	b _021DFEC8
_021DFE7C:
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021DFB7C
	ldr r0, _021DFED8 ; =0x00000F62
	mov r1, #3
	strh r1, [r4, r0]
	b _021DFEC8
_021DFE8C:
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021DFC10
	ldr r0, _021DFEDC ; =0x00000F66
	ldrh r0, [r4, r0]
	cmp r0, #5
	bne _021DFEC8
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021DFC4C
	ldr r0, _021DFED8 ; =0x00000F62
	mov r1, #4
	strh r1, [r4, r0]
	b _021DFEC8
_021DFEAC:
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021DFC8C
	cmp r0, #0
	beq _021DFEC8
	ldr r0, _021DFED8 ; =0x00000F62
	mov r1, #5
	strh r1, [r4, r0]
	b _021DFEC8
_021DFEC0:
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021DFCE4
_021DFEC8:
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021DFD10
	pop {r3, r4, r5, pc}
	nop
_021DFED4: .word 0x00000F58
_021DFED8: .word 0x00000F62
_021DFEDC: .word 0x00000F66

	thumb_func_start MOD05_021DFEE0
MOD05_021DFEE0: ; 0x021DFEE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r1, [sp, #4]
	ldr r1, _021DFFF4 ; =0x00000F58
	str r0, [sp]
	ldr r6, [r0, r1]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _021DFFEE
_021DFEF6:
	ldr r0, [sp]
	mov r1, #0x20
	bl MOD05_021DD048
	add r4, r0, #0
	beq _021DFFEE
	ldr r5, [r4, #8]
	mov r0, #0
	str r0, [r5]
	bl FUN_0201BA60
	mov r1, #3
	bl _u32_div_f
	add r7, r1, #0
	lsl r1, r7, #0x10
	ldr r0, [r4, #4]
	lsr r1, r1, #0x10
	bl FUN_02020208
	mov r0, #0x17
	add r1, r7, #1
	mvn r0, r0
	mul r0, r1
	str r0, [r5, #0x10]
	mov r0, #0x18
	mul r0, r1
	str r0, [r5, #8]
	add r0, r6, #0
	add r0, #0xbc
	ldr r0, [r0]
	mov r1, #0x3c
	bl _s32_div_f
	lsl r2, r0, #2
	ldr r0, _021DFFF8 ; =0x021F6808
	ldr r1, [r5, #0x10]
	ldr r0, [r0, r2]
	mul r0, r1
	str r0, [r5, #0x10]
	add r0, r6, #0
	add r0, #0xbc
	ldr r0, [r0]
	mov r1, #0x3c
	bl _s32_div_f
	lsl r2, r0, #2
	ldr r0, _021DFFF8 ; =0x021F6808
	ldr r1, [r5, #8]
	ldr r0, [r0, r2]
	mul r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #0x10]
	mov r1, #0x64
	bl _s32_div_f
	str r0, [r5, #0x10]
	ldr r0, [r5, #8]
	mov r1, #0x64
	bl _s32_div_f
	str r0, [r5, #8]
	mov r0, #0
	str r0, [r5, #0xc]
	bl FUN_0201BA60
	mov r1, #3
	and r1, r0
	mov r0, #0x64
	mul r0, r1
	str r0, [r5, #4]
	add r0, r6, #0
	add r0, #0xbc
	ldr r0, [r0]
	mov r1, #0x3c
	bl _s32_div_f
	add r1, r0, #0
	lsl r2, r1, #2
	ldr r1, _021DFFF8 ; =0x021F6808
	ldr r0, [r5, #4]
	ldr r1, [r1, r2]
	bl _s32_div_f
	str r0, [r5, #4]
	add r0, sp, #0xc
	add r1, r4, #0
	bl MOD05_021DD168
	add r3, sp, #0xc
	ldmia r3!, {r0, r1}
	add r2, sp, #0x18
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bl FUN_0201BA60
	ldr r1, _021DFFFC ; =0x000001FF
	and r0, r1
	str r0, [sp, #0x18]
	bl FUN_0201BA60
	mov r1, #0x30
	bl _u32_div_f
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	sub r1, #0x50
	lsl r0, r0, #0xc
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	lsl r0, r1, #0xc
	str r0, [sp, #0x1c]
	ldr r0, [r4, #4]
	add r1, sp, #0x18
	bl MOD05_021DC4FC
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	cmp r1, r0
	blt _021DFEF6
_021DFFEE:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021DFFF4: .word 0x00000F58
_021DFFF8: .word 0x021F6808
_021DFFFC: .word 0x000001FF

	thumb_func_start MOD05_021E0000
MOD05_021E0000: ; 0x021E0000
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r0, sp, #0
	add r1, r5, #0
	ldr r4, [r5, #8]
	bl MOD05_021DD168
	add r3, sp, #0
	add r2, sp, #0xc
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021E0030
	cmp r0, #1
	beq _021E0088
	cmp r0, #2
	beq _021E009A
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021E0030:
	mov r6, #0
_021E0032:
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r1, [r4]
	add r0, r1, #1
	str r0, [r4]
	ldr r0, [r4, #4]
	cmp r1, r0
	ble _021E0076
	bl FUN_0201BA60
	mov r1, #0xa
	bl _u32_div_f
	cmp r1, #5
	bhs _021E0066
	mov r0, #2
	str r0, [r4, #0xc]
	b _021E0076
_021E0066:
	mov r0, #1
	str r0, [r4, #0xc]
	mov r0, #4
	str r0, [r4]
	ldr r0, [r5, #4]
	mov r1, #3
	bl FUN_02020208
_021E0076:
	ldr r0, [r5, #4]
	add r1, r7, #0
	bl MOD05_021DC4FC
	add r6, r6, #1
	cmp r6, #2
	blt _021E0032
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021E0088:
	ldr r1, [r4]
	sub r0, r1, #1
	str r0, [r4]
	cmp r1, #0
	bgt _021E00A0
	mov r0, #2
	add sp, #0x18
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_021E009A:
	add r0, r5, #0
	bl MOD05_021DD100
_021E00A0:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021E00A4
MOD05_021E00A4: ; 0x021E00A4
	push {r4, r5, r6, lr}
	sub sp, #0x20
	ldr r0, _021E03D8 ; =0x00000F58
	add r5, r1, #0
	add r2, r0, #0
	add r2, #0xa
	ldrh r2, [r5, r2]
	ldr r4, [r5, r0]
	cmp r2, #5
	bhi _021E017E
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021E00C4: ; jump table
	.short _021E00D0 - _021E00C4 - 2 ; case 0
	.short _021E0144 - _021E00C4 - 2 ; case 1
	.short _021E0190 - _021E00C4 - 2 ; case 2
	.short _021E0212 - _021E00C4 - 2 ; case 3
	.short _021E027A - _021E00C4 - 2 ; case 4
	.short _021E02CA - _021E00C4 - 2 ; case 5
_021E00D0:
	mov r2, #1
	str r2, [sp]
	mov r0, #6
	str r0, [sp, #4]
	sub r0, r0, #7
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, _021E03DC ; =MOD05_021E0400
	mov r3, #0xc
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl MOD05_021DD328
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb8
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xc8
	str r1, [r0]
	ldr r0, _021E03E0 ; =0x00006F2F
	mov r2, #0x41
	str r0, [sp]
	ldr r0, _021E03E4 ; =0x00003A94
	add r1, r4, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _021E03E8 ; =0x00000F64
	lsl r2, r2, #2
	ldrh r0, [r5, r0]
	add r1, #0x1c
	str r0, [sp, #0xc]
	ldr r3, [r5]
	add r0, r4, #0
	ldr r2, [r3, r2]
	add r0, #0x4c
	ldr r2, [r2, #0x44]
	mov r3, #3
	bl MOD05_021DD420
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0]
	ldr r0, _021E03EC ; =0x00000F62
	mov r1, #1
	strh r1, [r5, r0]
	b _021E02E8
_021E0144:
	add r0, r4, #0
	bl MOD05_021DD35C
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	ble _021E0166
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xb4
	str r1, [r0]
	b _021E02E8
_021E0166:
	ldr r2, _021E03E8 ; =0x00000F64
	add r0, r4, #0
	ldrh r2, [r5, r2]
	add r1, r4, #0
	add r0, #0x4c
	add r1, #0x1c
	bl MOD05_021DD474
	cmp r0, #1
	bne _021E017E
	cmp r6, #3
	beq _021E0180
_021E017E:
	b _021E02E8
_021E0180:
	ldr r0, _021E03EC ; =0x00000F62
	mov r1, #3
	strh r1, [r5, r0]
	mov r0, #4
	mov r1, #1
	bl FUN_0201E6E4
	b _021E02E8
_021E0190:
	mov r2, #1
	mov r3, #6
	str r2, [sp]
	str r3, [sp, #4]
	sub r0, r3, #7
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, _021E03DC ; =MOD05_021E0400
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl MOD05_021DD328
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb8
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xc4
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xc8
	str r1, [r0]
	ldr r0, _021E03E8 ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021E01EE
	mov r0, #0x41
	ldr r1, [r5]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021E03E0 ; =0x00006F2F
	ldr r0, [r0, #0x44]
	ldr r3, _021E03E4 ; =0x00003A94
	mov r1, #3
	str r0, [r4, #0x1c]
	bl MOD05_021DD49C
	add r0, r4, #0
	add r0, #0x1c
	bl MOD05_021DD5EC
_021E01EE:
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021E03F0 ; =MOD05_021E051C
	ldr r1, _021E03DC ; =MOD05_021E0400
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x14
	mov r3, #2
	bl MOD05_021DD680
	ldr r0, _021E03EC ; =0x00000F62
	mov r1, #3
	strh r1, [r5, r0]
	mov r0, #4
	mov r1, #1
	bl FUN_0201E6E4
	b _021E02E8
_021E0212:
	mov r0, #6
	ldrsh r1, [r4, r0]
	sub r0, r1, #1
	strh r0, [r4, #6]
	cmp r1, #0
	bgt _021E022E
	mov r1, #4
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	bl MOD05_021E0400
	mov r0, #8
	ldrsh r0, [r4, r0]
	strh r0, [r4, #6]
_021E022E:
	ldr r0, _021E03F4 ; =0x00000F66
	ldrh r0, [r5, r0]
	cmp r0, #5
	bne _021E02E8
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xc
	mov r3, #1
	bl MOD05_021DD350
	ldr r0, _021E03E8 ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021E025C
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #1
	mov r2, #0
	bl MOD05_021DD5B4
_021E025C:
	add r0, r4, #0
	mov r1, #9
	add r0, #0xb4
	str r1, [r0]
	ldr r1, _021E03EC ; =0x00000F62
	mov r0, #4
	strh r0, [r5, r1]
	add r1, r4, #0
	mov r2, #1
	add r1, #0xc8
	str r2, [r1]
	mov r1, #0
	bl FUN_0201E6E4
	b _021E02E8
_021E027A:
	add r0, r4, #0
	bl MOD05_021DD35C
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	ble _021E029C
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xb4
	str r1, [r0]
	b _021E02E8
_021E029C:
	ldr r0, _021E03E8 ; =0x00000F64
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021E02AE
	add r0, r4, #0
	add r0, #0x1c
	bl MOD05_021DD5D0
	b _021E02B0
_021E02AE:
	mov r0, #1
_021E02B0:
	cmp r0, #1
	bne _021E02E8
	cmp r6, #3
	bne _021E02E8
	add r0, r5, #0
	ldr r1, [r5, #0x40]
	add r0, #0xc
	cmp r1, r0
	bne _021E02E8
	ldr r0, _021E03EC ; =0x00000F62
	mov r1, #5
	strh r1, [r5, r0]
	b _021E02E8
_021E02CA:
	add r0, #0xc
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _021E02E2
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	add r3, r2, #0
	bl MOD05_021DBA40
_021E02E2:
	ldr r0, [r5, #4]
	bl MOD05_021DCB6C
_021E02E8:
	ldr r0, _021E03EC ; =0x00000F62
	ldrh r0, [r5, r0]
	cmp r0, #5
	beq _021E03D4
	cmp r0, #0
	beq _021E03D4
	add r0, r5, #0
	ldr r1, _021E03F0 ; =MOD05_021E051C
	add r0, #0xc
	bl MOD05_021DD148
	add r0, r5, #0
	add r1, sp, #0x1c
	add r2, sp, #0x18
	bl MOD05_021DD2BC
	add r0, r5, #0
	bl MOD05_021DD164
	add r0, r4, #0
	add r0, #0xbc
	ldr r1, [r0]
	asr r0, r1, #0x10
	lsl r0, r0, #0x10
	asr r2, r0, #0x10
	lsl r0, r1, #0x10
	ldr r1, [sp, #0x1c]
	asr r0, r0, #0x10
	add r1, r2, r1
	lsl r1, r1, #0x10
	ldr r2, [sp, #0x18]
	asr r5, r1, #0x10
	lsl r1, r2, #2
	add r1, r2, r1
	sub r0, r0, r1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	cmp r5, #0
	bge _021E0342
	mov r1, #1
	lsl r1, r1, #8
	add r1, r5, r1
	lsl r1, r1, #0x10
	asr r5, r1, #0x10
	b _021E0350
_021E0342:
	mov r1, #1
	lsl r1, r1, #8
	cmp r5, r1
	blt _021E0350
	sub r1, r5, r1
	lsl r1, r1, #0x10
	asr r5, r1, #0x10
_021E0350:
	cmp r0, #0
	bge _021E035E
	mov r1, #2
	lsl r1, r1, #0xa
	add r0, r0, r1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
_021E035E:
	add r1, r4, #0
	add r1, #0xc4
	ldr r1, [r1]
	add r2, r1, #2
	add r1, r4, #0
	add r1, #0xc4
	str r2, [r1]
	add r1, r4, #0
	add r1, #0xc4
	ldr r1, [r1]
	cmp r1, #0x3c
	ble _021E0390
	add r1, r4, #0
	add r5, #0x20
	mov r2, #0
	add r1, #0xc4
	str r2, [r1]
	lsr r3, r5, #0x1f
	lsl r2, r5, #0x18
	sub r2, r2, r3
	mov r1, #0x18
	ror r2, r1
	add r1, r3, r2
	lsl r1, r1, #0x10
	asr r5, r1, #0x10
_021E0390:
	add r0, r0, #2
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x15
	sub r1, r1, r2
	mov r0, #0x15
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	neg r0, r6
	mov r1, #5
	bl _s32_div_f
	ldr r2, _021E03F8 ; =0x000001FF
	add r1, r5, #0
	lsl r3, r0, #0x10
	lsl r0, r2, #0x10
	and r1, r2
	and r0, r3
	orr r1, r0
	ldr r0, _021E03FC ; =0x04000018
	str r1, [r0]
	add r0, r4, #0
	lsl r1, r5, #0x10
	add r0, #0xbc
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xbc
	ldr r1, [r0]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	orr r0, r1
	add r4, #0xbc
	str r0, [r4]
_021E03D4:
	add sp, #0x20
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E03D8: .word 0x00000F58
_021E03DC: .word MOD05_021E0400
_021E03E0: .word 0x00006F2F
_021E03E4: .word 0x00003A94
_021E03E8: .word 0x00000F64
_021E03EC: .word 0x00000F62
_021E03F0: .word MOD05_021E051C
_021E03F4: .word 0x00000F66
_021E03F8: .word 0x000001FF
_021E03FC: .word 0x04000018

	thumb_func_start MOD05_021E0400
MOD05_021E0400: ; 0x021E0400
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r7, r1, #0
	ldr r1, _021E0514 ; =0x00000F58
	str r0, [sp]
	ldr r0, [r0, r1]
	str r0, [sp, #0x10]
	add r0, #0xb8
	ldr r0, [r0]
	cmp r0, #1
	bne _021E0418
	lsl r7, r7, #1
_021E0418:
	mov r6, #0
	cmp r7, #0
	ble _021E050E
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	add r0, #0xb8
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	str r0, [sp, #8]
	add r0, #0xc8
	str r0, [sp, #8]
	lsr r0, r7, #0x1f
	add r0, r7, r0
	asr r0, r0, #1
	str r0, [sp, #4]
_021E0436:
	ldr r0, [sp]
	mov r1, #0x20
	bl MOD05_021DD048
	add r4, r0, #0
	beq _021E050E
	ldr r5, [r4, #8]
	bl FUN_0201BA60
	mov r1, #3
	and r1, r0
	lsl r1, r1, #0x10
	ldr r0, [r4, #4]
	lsr r1, r1, #0x10
	bl FUN_02020208
	mov r0, #0xa
	str r0, [r5, #0x10]
	mov r0, #0
	str r0, [r5, #0x14]
	bl FUN_0201BA60
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x1f
	sub r2, r2, r1
	mov r0, #0x1f
	ror r2, r0
	add r0, r1, r2
	bne _021E0474
	mov r0, #1
	b _021E0478
_021E0474:
	mov r0, #0
	mvn r0, r0
_021E0478:
	str r0, [r5, #4]
	bl FUN_0201BA60
	mov r0, #1
	str r0, [r5, #0xc]
	ldr r0, [sp, #0xc]
	str r0, [r5]
	ldr r0, [sp, #8]
	str r0, [r5, #0x18]
	bl FUN_0201BA60
	mov r1, #0x14
	bl _u32_div_f
	add r1, #0xa
	str r1, [r5, #0x1c]
	add r0, sp, #0x14
	add r1, r4, #0
	bl MOD05_021DD168
	add r3, sp, #0x14
	ldmia r3!, {r0, r1}
	add r2, sp, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bl FUN_0201BA60
	ldr r1, _021E0518 ; =0x0000019E
	bl _u32_div_f
	ldr r0, [sp, #0x10]
	sub r1, #0x20
	str r1, [sp, #0x20]
	add r0, #0xb8
	ldr r0, [r0]
	cmp r0, #1
	bne _021E04DE
	ldr r0, [sp, #4]
	cmp r6, r0
	blt _021E04DE
	bl FUN_0201BA60
	mov r1, #0x14
	bl _u32_div_f
	mov r0, #0x27
	mvn r0, r0
	sub r0, r0, r1
	str r0, [sp, #0x24]
	b _021E04F0
_021E04DE:
	bl FUN_0201BA60
	mov r1, #0x14
	bl _u32_div_f
	mov r0, #7
	mvn r0, r0
	sub r0, r0, r1
	str r0, [sp, #0x24]
_021E04F0:
	ldr r0, [sp, #0x20]
	add r1, sp, #0x20
	lsl r0, r0, #0xc
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	lsl r0, r0, #0xc
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp, #0x28]
	ldr r0, [r4, #4]
	bl MOD05_021DC4FC
	add r6, r6, #1
	cmp r6, r7
	blt _021E0436
_021E050E:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021E0514: .word 0x00000F58
_021E0518: .word 0x0000019E

	thumb_func_start MOD05_021E051C
MOD05_021E051C: ; 0x021E051C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r6, r0, #0
	add r0, sp, #0
	add r1, r6, #0
	ldr r4, [r6, #8]
	bl MOD05_021DD168
	add r5, sp, #0
	add r3, sp, #0xc
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r5, #0
	str r0, [r3]
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	blt _021E0558
	mov r0, #1
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x10]
	str r5, [r4, #0x14]
	ldr r0, [r6, #4]
	add r1, r2, #0
	bl MOD05_021DC4FC
_021E0558:
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x10]
	asr r0, r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x18]
	ldr r0, [r0]
	cmp r0, #1
	bne _021E0578
	ldr r0, [r4, #0x1c]
	sub r0, r0, #1
	str r0, [r4, #0x1c]
	cmp r0, #0
	bgt _021E0578
	mov r5, #1
_021E0578:
	ldr r1, [sp, #0x10]
	ldr r0, _021E05A4 ; =0xFFFFFEE4
	cmp r1, r0
	bge _021E0586
	sub r0, #0xc
	cmp r1, r0
	bgt _021E058E
_021E0586:
	cmp r1, #0xd4
	ble _021E0590
	cmp r1, #0xe8
	bge _021E0590
_021E058E:
	mov r5, #1
_021E0590:
	cmp r5, #1
	bne _021E05A0
	ldr r0, [r4]
	mov r1, #1
	str r1, [r0]
	add r0, r6, #0
	bl MOD05_021DD100
_021E05A0:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E05A4: .word 0xFFFFFEE4

	thumb_func_start MOD05_021E05A8
MOD05_021E05A8: ; 0x021E05A8
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _021E06EC ; =0x00000F58
	add r5, r1, #0
	add r1, r0, #0
	add r1, #0xa
	ldrh r1, [r5, r1]
	ldr r4, [r5, r0]
	cmp r1, #5
	bls _021E05BC
	b _021E06EA
_021E05BC:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E05C8: ; jump table
	.short _021E05D4 - _021E05C8 - 2 ; case 0
	.short _021E05D4 - _021E05C8 - 2 ; case 1
	.short _021E05D4 - _021E05C8 - 2 ; case 2
	.short _021E05F2 - _021E05C8 - 2 ; case 3
	.short _021E06DC - _021E05C8 - 2 ; case 4
	.short _021E06E4 - _021E05C8 - 2 ; case 5
_021E05D4:
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #0x10]
	mov r1, #0x1f
	str r0, [r4, #4]
	bl MOD05_021DC6D4
	mov r0, #4
	mov r1, #1
	bl FUN_0201E6E4
	ldr r0, _021E06F0 ; =0x00000F62
	mov r1, #3
	strh r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021E05F2:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	blt _021E05FE
	sub r0, r0, #1
	str r0, [r4, #0x10]
	b _021E06CC
_021E05FE:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021E060E
	cmp r0, #1
	beq _021E0650
	cmp r0, #2
	beq _021E0678
	b _021E06CC
_021E060E:
	mov r0, #1
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #0x14]
	bl FUN_0201BA60
	mov r1, #0x1e
	lsl r1, r1, #4
	bl _u32_div_f
	add r1, #0xc8
	str r1, [r4, #0x18]
	mov r0, #0
	str r0, [r4, #0x1c]
	bl FUN_0201BA60
	mov r1, #3
	bl _u32_div_f
	cmp r1, #0
	beq _021E0644
	mov r0, #0x24
	str r0, [r4, #8]
	ldr r0, _021E06F4 ; =0x0000063D
	bl FUN_020054C8
	b _021E06CC
_021E0644:
	mov r0, #0xc8
	str r0, [r4, #8]
	ldr r0, _021E06F8 ; =0x0000063C
	bl FUN_020054C8
	b _021E06CC
_021E0650:
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	add r0, r1, r0
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x14]
	cmp r0, #2
	blt _021E0668
	mov r0, #2
	str r0, [r4, #4]
_021E0668:
	ldr r0, [r4, #0x1c]
	mov r1, #0x64
	bl _s32_div_f
	mov r1, #0x1f
	bl MOD05_021DC6D4
	b _021E06CC
_021E0678:
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #8]
	sub r0, r1, r0
	str r0, [r4, #0x1c]
	cmp r0, #0
	bgt _021E06BE
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #0x1c]
	ldr r0, [r4, #8]
	cmp r0, #0xc8
	bne _021E069E
	bl FUN_0201BA60
	mov r1, #0xf
	bl _u32_div_f
	str r1, [r4, #0x10]
	b _021E06BE
_021E069E:
	bl FUN_0201BA60
	add r7, r0, #0
	ldr r1, [r4, #0x18]
	mov r0, #0x32
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	add r6, r0, #0
	add r0, r7, #0
	mov r1, #0x78
	bl _u32_div_f
	add r0, r6, r1
	str r0, [r4, #0x10]
_021E06BE:
	ldr r0, [r4, #0x1c]
	mov r1, #0x64
	bl _s32_div_f
	mov r1, #0x1f
	bl MOD05_021DC6D4
_021E06CC:
	ldr r0, _021E06FC ; =0x00000F66
	ldrh r1, [r5, r0]
	cmp r1, #5
	bne _021E06EA
	mov r1, #4
	sub r0, r0, #4
	strh r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021E06DC:
	mov r1, #5
	add r0, #0xa
	strh r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021E06E4:
	ldr r0, [r5, #4]
	bl MOD05_021DCB6C
_021E06EA:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E06EC: .word 0x00000F58
_021E06F0: .word 0x00000F62
_021E06F4: .word 0x0000063D
_021E06F8: .word 0x0000063C
_021E06FC: .word 0x00000F66

	thumb_func_start MOD05_021E0700
MOD05_021E0700: ; 0x021E0700
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r0, _021E0828 ; =0x00000F58
	add r4, r1, #0
	ldr r5, [r4, r0]
	add r0, #0xa
	ldrh r0, [r4, r0]
	cmp r0, #5
	bhi _021E07FE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E071E: ; jump table
	.short _021E072A - _021E071E - 2 ; case 0
	.short _021E0752 - _021E071E - 2 ; case 1
	.short _021E0764 - _021E071E - 2 ; case 2
	.short _021E079E - _021E071E - 2 ; case 3
	.short _021E07DC - _021E071E - 2 ; case 4
	.short _021E07F8 - _021E071E - 2 ; case 5
_021E072A:
	mov r0, #4
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	sub r0, #0x11
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r2, #1
	ldr r0, _021E082C ; =MOD05_021E083C
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r5, #0
	mov r3, #0x23
	bl MOD05_021DD328
	ldr r0, _021E0830 ; =0x00000F62
	mov r1, #1
	strh r1, [r4, r0]
	b _021E07FE
_021E0752:
	add r0, r5, #0
	bl MOD05_021DD35C
	cmp r0, #3
	bne _021E07FE
	ldr r0, _021E0830 ; =0x00000F62
	mov r1, #3
	strh r1, [r4, r0]
	b _021E07FE
_021E0764:
	mov r0, #0xf
	str r0, [sp]
	str r0, [sp, #4]
	sub r0, #0x11
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r2, #1
	ldr r0, _021E082C ; =MOD05_021E083C
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r5, #0
	mov r3, #4
	bl MOD05_021DD328
	mov r0, #1
	str r0, [sp]
	ldr r0, _021E0834 ; =MOD05_021E093C
	ldr r1, _021E082C ; =MOD05_021E083C
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x10
	mov r3, #2
	bl MOD05_021DD680
	ldr r0, _021E0830 ; =0x00000F62
	mov r1, #3
	strh r1, [r4, r0]
	b _021E07FE
_021E079E:
	mov r0, #6
	ldrsh r1, [r5, r0]
	sub r0, r1, #1
	strh r0, [r5, #6]
	cmp r1, #0
	bgt _021E07BA
	mov r1, #4
	ldrsh r1, [r5, r1]
	add r0, r4, #0
	bl MOD05_021E083C
	mov r0, #8
	ldrsh r0, [r5, r0]
	strh r0, [r5, #6]
_021E07BA:
	ldr r0, _021E0838 ; =0x00000F66
	ldrh r0, [r4, r0]
	cmp r0, #5
	bne _021E07FE
	mov r0, #2
	mvn r0, r0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x23
	mov r3, #2
	bl MOD05_021DD350
	ldr r0, _021E0830 ; =0x00000F62
	mov r1, #4
	strh r1, [r4, r0]
	b _021E07FE
_021E07DC:
	add r0, r5, #0
	bl MOD05_021DD35C
	cmp r0, #3
	bne _021E07FE
	add r0, r4, #0
	ldr r1, [r4, #0x40]
	add r0, #0xc
	cmp r1, r0
	bne _021E07FE
	ldr r0, _021E0830 ; =0x00000F62
	mov r1, #5
	strh r1, [r4, r0]
	b _021E07FE
_021E07F8:
	ldr r0, [r4, #4]
	bl MOD05_021DCB6C
_021E07FE:
	ldr r0, _021E0830 ; =0x00000F62
	ldrh r0, [r4, r0]
	cmp r0, #5
	beq _021E0824
	cmp r0, #0
	beq _021E0824
	add r0, r4, #0
	ldr r1, _021E0834 ; =MOD05_021E093C
	add r0, #0xc
	bl MOD05_021DD148
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl MOD05_021DD2BC
	add r0, r4, #0
	bl MOD05_021DD164
_021E0824:
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E0828: .word 0x00000F58
_021E082C: .word MOD05_021E083C
_021E0830: .word 0x00000F62
_021E0834: .word MOD05_021E093C
_021E0838: .word 0x00000F66

	thumb_func_start MOD05_021E083C
MOD05_021E083C: ; 0x021E083C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	add r0, r1, #0
	mov r7, #0
	str r1, [sp, #4]
	cmp r0, #0
	ble _021E0932
_021E084C:
	ldr r0, [sp]
	mov r1, #0x20
	bl MOD05_021DD048
	add r5, r0, #0
	beq _021E0932
	ldr r4, [r5, #8]
	bl FUN_0201BA60
	mov r1, #0xe
	bl _u32_div_f
	add r6, r1, #0
	lsl r1, r6, #0x10
	ldr r0, [r5, #4]
	lsr r1, r1, #0x10
	bl FUN_02020208
	asr r0, r6, #1
	lsr r0, r0, #0x1e
	add r0, r6, r0
	asr r6, r0, #2
	bl FUN_0201BA60
	mov r1, #0x19
	bl _u32_div_f
	add r2, r1, #0
	add r2, #8
	add r1, r6, #1
	add r0, r2, #0
	mul r0, r1
	str r0, [r4]
	mov r0, #0x10
	bl _s32_div_f
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	bl FUN_0201BA60
	mov r1, #1
	and r0, r1
	str r0, [r4, #0xc]
	add r0, r1, #0
	str r0, [r4, #0x10]
	add r0, r6, #1
	cmp r0, #4
	bhi _021E0912
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E08BA: ; jump table
	.short _021E0912 - _021E08BA - 2 ; case 0
	.short _021E08C4 - _021E08BA - 2 ; case 1
	.short _021E08C4 - _021E08BA - 2 ; case 2
	.short _021E08E0 - _021E08BA - 2 ; case 3
	.short _021E08FA - _021E08BA - 2 ; case 4
_021E08C4:
	bl FUN_0201BA60
	ldr r1, _021E0938 ; =0x000001FF
	and r0, r1
	sub r0, #0x80
	str r0, [sp, #8]
	bl FUN_0201BA60
	mov r1, #0xc0
	bl _u32_div_f
	add r1, #8
	str r1, [sp, #0xc]
	b _021E0912
_021E08E0:
	bl FUN_0201BA60
	ldr r1, _021E0938 ; =0x000001FF
	and r0, r1
	sub r0, #0x80
	str r0, [sp, #8]
	bl FUN_0201BA60
	mov r1, #0x7f
	and r0, r1
	add r0, #0x40
	str r0, [sp, #0xc]
	b _021E0912
_021E08FA:
	bl FUN_0201BA60
	ldr r1, _021E0938 ; =0x000001FF
	and r0, r1
	sub r0, #0x80
	str r0, [sp, #8]
	bl FUN_0201BA60
	mov r1, #0x1f
	and r0, r1
	add r0, #0xa0
	str r0, [sp, #0xc]
_021E0912:
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	add r1, sp, #8
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r5, #4]
	bl MOD05_021DC4FC
	ldr r0, [sp, #4]
	add r7, r7, #1
	cmp r7, r0
	blt _021E084C
_021E0932:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021E0938: .word 0x000001FF

	thumb_func_start MOD05_021E093C
MOD05_021E093C: ; 0x021E093C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r0, sp, #0
	add r1, r5, #0
	ldr r4, [r5, #8]
	bl MOD05_021DD168
	add r3, sp, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r1, [r4, #8]
	ldr r0, [r4, #4]
	add r0, r1, r0
	str r0, [r4, #8]
	ldr r0, [r4]
	cmp r0, #0
	ble _021E097C
	sub r0, r0, #1
	str r0, [r4]
	ldr r0, [r4, #8]
	mov r1, #0x64
	bl _s32_div_f
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0x10]
	b _021E098C
_021E097C:
	ldr r0, [r4, #8]
	mov r1, #0x32
	bl _s32_div_f
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0x10]
_021E098C:
	ldr r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x10]
	cmp r0, #0
	bgt _021E09B8
	mov r0, #1
	str r0, [r4, #0x10]
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _021E09AC
	ldr r2, [sp, #0xc]
	lsl r1, r0, #0xd
	add r1, r2, r1
	str r1, [sp, #0xc]
	str r0, [r4, #0xc]
	b _021E09B8
_021E09AC:
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xd
	sub r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [r4, #0xc]
_021E09B8:
	ldr r0, [r5, #4]
	add r1, sp, #0xc
	bl MOD05_021DC4FC
	ldr r0, [sp, #0x10]
	asr r1, r0, #0xc
	mov r0, #0xf
	mvn r0, r0
	cmp r1, r0
	bgt _021E09D2
	add r0, r5, #0
	bl MOD05_021DD100
_021E09D2:
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E09D8
MOD05_021E09D8: ; 0x021E09D8
	push {r4, r5, r6, lr}
	ldr r0, _021E0ABC ; =0x00000F58
	add r4, r1, #0
	add r1, r0, #0
	add r1, #0xa
	ldrh r1, [r4, r1]
	ldr r5, [r4, r0]
	cmp r1, #5
	bhi _021E0AB8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E09F6: ; jump table
	.short _021E0A02 - _021E09F6 - 2 ; case 0
	.short _021E0A34 - _021E09F6 - 2 ; case 1
	.short _021E0A52 - _021E09F6 - 2 ; case 2
	.short _021E0A78 - _021E09F6 - 2 ; case 3
	.short _021E0A94 - _021E09F6 - 2 ; case 4
	.short _021E0AB2 - _021E09F6 - 2 ; case 5
_021E0A02:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x10
	mov r3, #8
	bl MOD05_021DC6EC
	mov r0, #0
	mov r1, #0x10
	bl MOD05_021DC6D4
	ldr r1, _021E0AC0 ; =0x0400000C
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #3
	orr r0, r2
	strh r0, [r1]
	mov r0, #4
	mov r1, #1
	bl FUN_0201E6E4
	ldr r0, _021E0AC4 ; =0x00000F62
	mov r1, #1
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021E0A34:
	add r0, r5, #0
	bl MOD05_021DC6FC
	add r6, r0, #0
	ldr r0, [r5]
	mov r1, #0x10
	sub r1, r1, r0
	bl MOD05_021DC6D4
	cmp r6, #1
	bne _021E0AB8
	ldr r0, _021E0AC4 ; =0x00000F62
	mov r1, #3
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021E0A52:
	mov r0, #0x10
	mov r1, #0
	bl MOD05_021DC6D4
	ldr r1, _021E0AC0 ; =0x0400000C
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #3
	orr r0, r2
	strh r0, [r1]
	mov r0, #4
	mov r1, #1
	bl FUN_0201E6E4
	ldr r0, _021E0AC4 ; =0x00000F62
	mov r1, #3
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021E0A78:
	add r0, #0xe
	ldrh r0, [r4, r0]
	cmp r0, #5
	bne _021E0AB8
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	mov r3, #8
	bl MOD05_021DC6EC
	ldr r0, _021E0AC4 ; =0x00000F62
	mov r1, #4
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021E0A94:
	add r0, r5, #0
	bl MOD05_021DC6FC
	add r6, r0, #0
	ldr r0, [r5]
	mov r1, #0x10
	sub r1, r1, r0
	bl MOD05_021DC6D4
	cmp r6, #1
	bne _021E0AB8
	ldr r0, _021E0AC4 ; =0x00000F62
	mov r1, #5
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021E0AB2:
	ldr r0, [r4, #4]
	bl MOD05_021DCB6C
_021E0AB8:
	pop {r4, r5, r6, pc}
	nop
_021E0ABC: .word 0x00000F58
_021E0AC0: .word 0x0400000C
_021E0AC4: .word 0x00000F62

	thumb_func_start MOD05_021E0AC8
MOD05_021E0AC8: ; 0x021E0AC8
	push {r4, r5, r6, lr}
	ldr r0, _021E0B90 ; =0x00000F58
	add r4, r1, #0
	add r1, r0, #0
	add r1, #0xa
	ldrh r1, [r4, r1]
	ldr r5, [r4, r0]
	cmp r1, #5
	bhi _021E0B8C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E0AE6: ; jump table
	.short _021E0AF2 - _021E0AE6 - 2 ; case 0
	.short _021E0B16 - _021E0AE6 - 2 ; case 1
	.short _021E0B34 - _021E0AE6 - 2 ; case 2
	.short _021E0B4C - _021E0AE6 - 2 ; case 3
	.short _021E0B68 - _021E0AE6 - 2 ; case 4
	.short _021E0B86 - _021E0AE6 - 2 ; case 5
_021E0AF2:
	add r0, r5, #0
	mov r1, #0
	mov r2, #4
	mov r3, #8
	bl MOD05_021DC6EC
	mov r0, #0
	mov r1, #0x10
	bl MOD05_021DC6D4
	mov r0, #4
	mov r1, #1
	bl FUN_0201E6E4
	ldr r0, _021E0B94 ; =0x00000F62
	mov r1, #1
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021E0B16:
	add r0, r5, #0
	bl MOD05_021DC6FC
	add r6, r0, #0
	ldr r0, [r5]
	mov r1, #0x10
	sub r1, r1, r0
	bl MOD05_021DC6D4
	cmp r6, #0
	beq _021E0B8C
	ldr r0, _021E0B94 ; =0x00000F62
	mov r1, #3
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021E0B34:
	mov r0, #4
	mov r1, #0xc
	bl MOD05_021DC6D4
	mov r0, #4
	mov r1, #1
	bl FUN_0201E6E4
	ldr r0, _021E0B94 ; =0x00000F62
	mov r1, #3
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021E0B4C:
	add r0, #0xe
	ldrh r0, [r4, r0]
	cmp r0, #5
	bne _021E0B8C
	add r0, r5, #0
	mov r1, #4
	mov r2, #0
	mov r3, #8
	bl MOD05_021DC6EC
	ldr r0, _021E0B94 ; =0x00000F62
	mov r1, #4
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021E0B68:
	add r0, r5, #0
	bl MOD05_021DC6FC
	add r6, r0, #0
	ldr r0, [r5]
	mov r1, #0x10
	sub r1, r1, r0
	bl MOD05_021DC6D4
	cmp r6, #0
	beq _021E0B8C
	ldr r0, _021E0B94 ; =0x00000F62
	mov r1, #5
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_021E0B86:
	ldr r0, [r4, #4]
	bl MOD05_021DCB6C
_021E0B8C:
	pop {r4, r5, r6, pc}
	nop
_021E0B90: .word 0x00000F58
_021E0B94: .word 0x00000F62

	thumb_func_start MOD05_021E0B98
MOD05_021E0B98: ; 0x021E0B98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, _021E0D14 ; =0x00000F58
	add r4, r1, #0
	add r1, r0, #0
	add r1, #0xa
	ldrh r1, [r4, r1]
	ldr r5, [r4, r0]
	cmp r1, #5
	bls _021E0BAE
	b _021E0D10
_021E0BAE:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E0BBA: ; jump table
	.short _021E0BC6 - _021E0BBA - 2 ; case 0
	.short _021E0C16 - _021E0BBA - 2 ; case 1
	.short _021E0C44 - _021E0BBA - 2 ; case 2
	.short _021E0C84 - _021E0BBA - 2 ; case 3
	.short _021E0CB8 - _021E0BBA - 2 ; case 4
	.short _021E0CF2 - _021E0BBA - 2 ; case 5
_021E0BC6:
	ldr r1, _021E0D18 ; =0x0000764F
	mov r2, #0x41
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	add r0, #0xc
	ldrh r0, [r4, r0]
	add r1, r5, #0
	lsl r2, r2, #2
	str r0, [sp, #0xc]
	ldr r3, [r4]
	add r0, r5, #0
	ldr r2, [r3, r2]
	add r0, #0x44
	ldr r2, [r2, #0x44]
	add r1, #0x14
	mov r3, #7
	bl MOD05_021DD420
	add r0, r5, #0
	mov r1, #0
	mov r2, #9
	mov r3, #0x1e
	bl MOD05_021DC6EC
	mov r0, #0
	mov r1, #0x10
	bl MOD05_021DC6D4
	mov r0, #4
	mov r1, #1
	bl FUN_0201E6E4
	ldr r0, _021E0D1C ; =0x00000F62
	mov r1, #1
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021E0C16:
	add r0, r5, #0
	add r0, #0x14
	bl MOD05_021DD5D0
	add r6, r0, #0
	add r0, r5, #0
	bl MOD05_021DC6FC
	add r7, r0, #0
	ldr r0, [r5]
	mov r1, #0x10
	sub r1, r1, r0
	bl MOD05_021DC6D4
	cmp r6, #1
	bne _021E0D10
	cmp r7, #1
	bne _021E0D10
	ldr r0, _021E0D1C ; =0x00000F62
	mov r1, #3
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021E0C44:
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021E0C6A
	mov r0, #0x41
	ldr r1, [r4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021E0D18 ; =0x0000764F
	ldr r0, [r0, #0x44]
	mov r1, #7
	mov r3, #0
	str r0, [r5, #0x14]
	bl MOD05_021DD49C
	add r5, #0x14
	add r0, r5, #0
	bl MOD05_021DD5EC
_021E0C6A:
	mov r0, #9
	mov r1, #7
	bl MOD05_021DC6D4
	mov r0, #4
	mov r1, #1
	bl FUN_0201E6E4
	ldr r0, _021E0D1C ; =0x00000F62
	mov r1, #3
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021E0C84:
	add r1, r0, #0
	add r1, #0xe
	ldrh r1, [r4, r1]
	cmp r1, #5
	bne _021E0D10
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021E0CA2
	add r0, r5, #0
	add r0, #0x14
	mov r1, #1
	mov r2, #0
	bl MOD05_021DD5B4
_021E0CA2:
	add r0, r5, #0
	mov r1, #9
	mov r2, #0
	mov r3, #0x1e
	bl MOD05_021DC6EC
	ldr r0, _021E0D1C ; =0x00000F62
	mov r1, #4
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021E0CB8:
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021E0CCC
	add r0, r5, #0
	add r0, #0x14
	bl MOD05_021DD5D0
	add r6, r0, #0
	b _021E0CCE
_021E0CCC:
	mov r6, #1
_021E0CCE:
	add r0, r5, #0
	bl MOD05_021DC6FC
	add r7, r0, #0
	ldr r0, [r5]
	mov r1, #0x10
	sub r1, r1, r0
	bl MOD05_021DC6D4
	cmp r6, #1
	bne _021E0D10
	cmp r7, #1
	bne _021E0D10
	ldr r0, _021E0D1C ; =0x00000F62
	mov r1, #5
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021E0CF2:
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021E0D0A
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r5, #0x14]
	mov r1, #1
	add r3, r2, #0
	bl MOD05_021DBA40
_021E0D0A:
	ldr r0, [r4, #4]
	bl MOD05_021DCB6C
_021E0D10:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E0D14: .word 0x00000F58
_021E0D18: .word 0x0000764F
_021E0D1C: .word 0x00000F62

	thumb_func_start MOD05_021E0D20
MOD05_021E0D20: ; 0x021E0D20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, _021E0E9C ; =0x00000F58
	add r4, r1, #0
	add r1, r0, #0
	add r1, #0xa
	ldrh r1, [r4, r1]
	ldr r5, [r4, r0]
	cmp r1, #5
	bls _021E0D36
	b _021E0E98
_021E0D36:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E0D42: ; jump table
	.short _021E0D4E - _021E0D42 - 2 ; case 0
	.short _021E0D9E - _021E0D42 - 2 ; case 1
	.short _021E0DCC - _021E0D42 - 2 ; case 2
	.short _021E0E0C - _021E0D42 - 2 ; case 3
	.short _021E0E40 - _021E0D42 - 2 ; case 4
	.short _021E0E7A - _021E0D42 - 2 ; case 5
_021E0D4E:
	ldr r1, _021E0EA0 ; =0x00007555
	mov r2, #0x41
	str r1, [sp]
	ldr r1, _021E0EA4 ; =0x00007FFF
	add r0, #0xc
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldrh r0, [r4, r0]
	add r1, r5, #0
	lsl r2, r2, #2
	str r0, [sp, #0xc]
	ldr r3, [r4]
	add r0, r5, #0
	ldr r2, [r3, r2]
	add r0, #0x44
	ldr r2, [r2, #0x44]
	add r1, #0x14
	mov r3, #6
	bl MOD05_021DD420
	add r0, r5, #0
	mov r1, #0
	mov r2, #9
	mov r3, #0x1e
	bl MOD05_021DC6EC
	mov r0, #0
	mov r1, #0x10
	bl MOD05_021DC6D4
	mov r0, #4
	mov r1, #1
	bl FUN_0201E6E4
	ldr r0, _021E0EA8 ; =0x00000F62
	mov r1, #1
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021E0D9E:
	add r0, r5, #0
	add r0, #0x14
	bl MOD05_021DD5D0
	add r6, r0, #0
	add r0, r5, #0
	bl MOD05_021DC6FC
	add r7, r0, #0
	ldr r0, [r5]
	mov r1, #0x10
	sub r1, r1, r0
	bl MOD05_021DC6D4
	cmp r6, #1
	bne _021E0E98
	cmp r7, #1
	bne _021E0E98
	ldr r0, _021E0EA8 ; =0x00000F62
	mov r1, #3
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021E0DCC:
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021E0DF2
	mov r0, #0x41
	ldr r1, [r4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, _021E0EA0 ; =0x00007555
	ldr r0, [r0, #0x44]
	ldr r3, _021E0EA4 ; =0x00007FFF
	mov r1, #6
	str r0, [r5, #0x14]
	bl MOD05_021DD49C
	add r5, #0x14
	add r0, r5, #0
	bl MOD05_021DD5EC
_021E0DF2:
	mov r0, #9
	mov r1, #7
	bl MOD05_021DC6D4
	mov r0, #4
	mov r1, #1
	bl FUN_0201E6E4
	ldr r0, _021E0EA8 ; =0x00000F62
	mov r1, #3
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021E0E0C:
	add r1, r0, #0
	add r1, #0xe
	ldrh r1, [r4, r1]
	cmp r1, #5
	bne _021E0E98
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021E0E2A
	add r0, r5, #0
	add r0, #0x14
	mov r1, #1
	mov r2, #0
	bl MOD05_021DD5B4
_021E0E2A:
	add r0, r5, #0
	mov r1, #9
	mov r2, #0
	mov r3, #0x1e
	bl MOD05_021DC6EC
	ldr r0, _021E0EA8 ; =0x00000F62
	mov r1, #4
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021E0E40:
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021E0E54
	add r0, r5, #0
	add r0, #0x14
	bl MOD05_021DD5D0
	add r6, r0, #0
	b _021E0E56
_021E0E54:
	mov r6, #1
_021E0E56:
	add r0, r5, #0
	bl MOD05_021DC6FC
	add r7, r0, #0
	ldr r0, [r5]
	mov r1, #0x10
	sub r1, r1, r0
	bl MOD05_021DC6D4
	cmp r6, #1
	bne _021E0E98
	cmp r7, #1
	bne _021E0E98
	ldr r0, _021E0EA8 ; =0x00000F62
	mov r1, #5
	add sp, #0x10
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021E0E7A:
	add r0, #0xc
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _021E0E92
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	ldr r0, [r5, #0x14]
	mov r1, #1
	add r3, r2, #0
	bl MOD05_021DBA40
_021E0E92:
	ldr r0, [r4, #4]
	bl MOD05_021DCB6C
_021E0E98:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E0E9C: .word 0x00000F58
_021E0EA0: .word 0x00007555
_021E0EA4: .word 0x00007FFF
_021E0EA8: .word 0x00000F62

	thumb_func_start MOD05_021E0EAC
MOD05_021E0EAC: ; 0x021E0EAC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	mov r0, #0x41
	ldr r1, [r4]
	lsl r0, r0, #2
	ldr r1, [r1, r0]
	ldr r0, _021E0F9C ; =0x00000F58
	add r2, r0, #0
	add r2, #0xa
	ldrh r2, [r4, r2]
	ldr r5, [r4, r0]
	cmp r2, #5
	bhi _021E0F98
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021E0ED4: ; jump table
	.short _021E0EE0 - _021E0ED4 - 2 ; case 0
	.short _021E0F0A - _021E0ED4 - 2 ; case 1
	.short _021E0F2C - _021E0ED4 - 2 ; case 2
	.short _021E0F3E - _021E0ED4 - 2 ; case 3
	.short _021E0F70 - _021E0ED4 - 2 ; case 4
	.short _021E0F8C - _021E0ED4 - 2 ; case 5
_021E0EE0:
	ldr r1, [r1, #4]
	add r0, r5, #0
	ldr r1, [r1, #0x1c]
	bl MOD05_021E1100
	mov r0, #0x54
	mov r1, #1
	str r0, [sp]
	mov r0, #0x1e
	lsl r1, r1, #0x14
	str r0, [sp, #4]
	add r0, r5, #0
	lsr r2, r1, #3
	mov r3, #0x80
	bl MOD05_021E11CC
	ldr r0, _021E0FA0 ; =0x00000F62
	mov r1, #1
	add sp, #8
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021E0F0A:
	add r0, r5, #0
	bl MOD05_021E11EC
	cmp r0, #1
	bne _021E0F98
	mov r0, #4
	mov r1, #1
	bl FUN_0201E6E4
	add r0, r5, #0
	bl MOD05_021E1290
	ldr r0, _021E0FA0 ; =0x00000F62
	mov r1, #3
	add sp, #8
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021E0F2C:
	mov r0, #4
	mov r1, #1
	bl FUN_0201E6E4
	ldr r0, _021E0FA0 ; =0x00000F62
	mov r1, #3
	add sp, #8
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021E0F3E:
	add r0, #0xe
	ldrh r0, [r4, r0]
	cmp r0, #5
	bne _021E0F98
	ldr r1, [r1, #4]
	add r0, r5, #0
	ldr r1, [r1, #0x1c]
	bl MOD05_021E1100
	mov r0, #0x54
	mov r1, #2
	str r0, [sp]
	mov r0, #0x1e
	lsl r1, r1, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	lsl r2, r1, #3
	mov r3, #0x80
	bl MOD05_021E11CC
	ldr r0, _021E0FA0 ; =0x00000F62
	mov r1, #4
	add sp, #8
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021E0F70:
	mov r0, #4
	mov r1, #0
	bl FUN_0201E6E4
	add r0, r5, #0
	bl MOD05_021E11EC
	cmp r0, #1
	bne _021E0F98
	ldr r0, _021E0FA0 ; =0x00000F62
	mov r1, #5
	add sp, #8
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021E0F8C:
	add r0, r5, #0
	bl MOD05_021E117C
	ldr r0, [r4, #4]
	bl MOD05_021DCB6C
_021E0F98:
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E0F9C: .word 0x00000F58
_021E0FA0: .word 0x00000F62

	thumb_func_start MOD05_021E0FA4
MOD05_021E0FA4: ; 0x021E0FA4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021E0FCC ; =0x00000F5C
	add r4, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E0FB6
	bl ErrorHandling
_021E0FB6:
	ldr r1, _021E0FCC ; =0x00000F5C
	mov r0, #1
	str r0, [r5, r1]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	add r1, r1, #4
	strh r0, [r5, r1]
	bl FUN_020054C8
	pop {r3, r4, r5, pc}
	nop
_021E0FCC: .word 0x00000F5C

	thumb_func_start MOD05_021E0FD0
MOD05_021E0FD0: ; 0x021E0FD0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xf6
	lsl r0, r0, #4
	ldrh r0, [r4, r0]
	mov r1, #0
	bl FUN_020054F0
	ldr r0, _021E0FE8 ; =0x00000F5C
	mov r1, #0
	str r1, [r4, r0]
	pop {r4, pc}
	.balign 4, 0
_021E0FE8: .word 0x00000F5C

	thumb_func_start MOD05_021E0FEC
MOD05_021E0FEC: ; 0x021E0FEC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	bl FUN_02012988
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x20]
	bl FUN_02012988
	ldr r7, [sp, #0xc]
	str r0, [sp, #8]
	mov r4, #0
	add r6, r0, #0
_021E1008:
	mov r0, #2
	ldrsh r2, [r5, r0]
	cmp r4, r2
	bgt _021E1026
	add r0, sp, #0x14
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	mov r1, #0
	ldrsh r1, [r5, r1]
	ldr r0, [r5, #4]
	add r3, r4, #0
	bl MOD05_021E1074
	b _021E105C
_021E1026:
	lsl r0, r2, #1
	cmp r4, r0
	bgt _021E1048
	sub r0, r0, r4
	lsl r1, r0, #1
	ldr r0, [sp, #0xc]
	ldrh r0, [r0, r1]
	str r0, [sp, #0x14]
	mov r0, #2
	ldrsh r0, [r5, r0]
	lsl r0, r0, #1
	sub r0, r0, r4
	lsl r1, r0, #1
	ldr r0, [sp, #8]
	ldrh r0, [r0, r1]
	str r0, [sp, #0x10]
	b _021E105C
_021E1048:
	add r0, sp, #0x14
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	mov r1, #0
	ldrsh r1, [r5, r1]
	ldr r0, [r5, #4]
	add r3, r4, #0
	bl MOD05_021E1074
_021E105C:
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	strh r0, [r7]
	ldr r0, [sp, #0x10]
	add r7, r7, #2
	strh r0, [r6]
	add r6, r6, #2
	cmp r4, #0xc0
	blt _021E1008
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E1074
MOD05_021E1074: ; 0x021E1074
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp]
	ldr r5, [sp, #0x20]
	ldr r4, [sp, #0x24]
	sub r1, r3, r2
	bpl _021E1084
	neg r1, r1
_021E1084:
	cmp r1, r0
	blt _021E1092
	mov r0, #0
	str r0, [r5]
	add sp, #0xc
	str r0, [r4]
	pop {r4, r5, r6, r7, pc}
_021E1092:
	lsl r1, r1, #0xc
	str r1, [sp, #4]
	asr r7, r1, #0x1f
	asr r1, r0, #0x1f
	add r2, r0, #0
	add r3, r1, #0
	bl _ll_mul
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r6, r1, #0
	add r1, r7, #0
	add r2, r0, #0
	add r3, r7, #0
	bl _ll_mul
	add r2, r0, #0
	add r3, r1, #0
	mov r0, #2
	ldr r1, [sp, #8]
	mov r7, #0
	lsl r0, r0, #0xa
	add r0, r1, r0
	adc r6, r7
	lsl r1, r6, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #2
	lsl r1, r1, #0xa
	add r2, r2, r1
	adc r3, r7
	lsl r1, r3, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	sub r0, r0, r2
	bl FX_Sqrt
	asr r2, r0, #0xc
	ldr r0, [sp]
	sub r0, r0, r2
	str r0, [r5]
	bpl _021E10EA
	add r0, r7, #0
	str r0, [r5]
_021E10EA:
	ldr r1, [r5]
	lsl r0, r2, #1
	add r0, r1, r0
	str r0, [r4]
	cmp r0, #0xff
	ble _021E10FA
	mov r0, #0xff
	str r0, [r4]
_021E10FA:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E1100
MOD05_021E1100: ; 0x021E1100
	push {r4, r5, r6, lr}
	ldr r2, _021E116C ; =0x0000062C
	add r4, r1, #0
	mov r1, #0
	add r5, r0, #0
	bl Call_FillMemWithValue
	mov r2, #0x6b
	add r1, r5, #0
	lsl r2, r2, #2
	mov r0, #4
	add r1, #0x2c
	add r2, r5, r2
	bl FUN_02012944
	mov r1, #0xcb
	ldr r2, _021E1170 ; =0x000004AC
	lsl r1, r1, #2
	str r0, [r5, #0x1c]
	mov r0, #4
	add r1, r5, r1
	add r2, r5, r2
	bl FUN_02012944
	str r0, [r5, #0x20]
	mov r0, #0xcb
	ldr r1, _021E1170 ; =0x000004AC
	mov r3, #0
	add r6, r5, #0
	mov r2, #0xff
	lsl r0, r0, #2
_021E113E:
	strh r2, [r6, r0]
	strh r2, [r6, r1]
	add r3, r3, #1
	add r6, r6, #2
	cmp r3, #0xc0
	blt _021E113E
	ldr r0, _021E1174 ; =MOD05_021E12E4
	add r1, r5, #0
	mov r2, #0x78
	str r4, [r5, #0x14]
	bl FUN_0200CA98
	mov r2, #1
	ldr r0, _021E1178 ; =MOD05_021E1278
	add r1, r5, #0
	lsl r2, r2, #0xa
	bl FUN_0200CA98
	str r0, [r5, #0x24]
	mov r0, #0
	str r0, [r5, #0x28]
	pop {r4, r5, r6, pc}
	nop
_021E116C: .word 0x0000062C
_021E1170: .word 0x000004AC
_021E1174: .word MOD05_021E12E4
_021E1178: .word MOD05_021E1278

	thumb_func_start MOD05_021E117C
MOD05_021E117C: ; 0x021E117C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	lsl r0, r0, #0x1a
	mov r1, #0xe
	ldr r2, [r0]
	lsl r1, r1, #0xc
	and r1, r2
	lsr r3, r1, #0xd
	ldr r2, [r0]
	ldr r1, _021E11C4 ; =0xFFFF1FFF
	and r2, r1
	mov r1, #2
	bic r3, r1
	lsl r1, r3, #0xd
	orr r1, r2
	str r1, [r0]
	ldr r0, [r4, #0x18]
	bl MOD05_021F4648
	ldr r0, [r4, #0x24]
	bl FUN_0200CAB4
	ldr r0, [r4, #0x1c]
	bl FUN_02012974
	ldr r0, [r4, #0x20]
	bl FUN_02012974
	ldr r2, _021E11C8 ; =0x0000062C
	add r0, r4, #0
	mov r1, #0
	bl Call_FillMemWithValue
	pop {r4, pc}
	nop
_021E11C4: .word 0xFFFF1FFF
_021E11C8: .word 0x0000062C

	thumb_func_start MOD05_021E11CC
MOD05_021E11CC: ; 0x021E11CC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r3, #0
	ldr r3, [sp, #0x14]
	add r0, r4, #4
	bl MOD05_021DC728
	ldr r0, [sp, #0x10]
	strh r5, [r4]
	strh r0, [r4, #2]
	mov r0, #1
	str r0, [r4, #0x28]
	add r0, r4, #0
	bl MOD05_021E0FEC
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021E11EC
MOD05_021E11EC: ; 0x021E11EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x28]
	cmp r1, #0
	bne _021E11FE
	bl MOD05_021E12B8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E11FE:
	add r0, r5, #4
	bl MOD05_021DC738
	add r4, r0, #0
	add r0, r5, #0
	bl MOD05_021E0FEC
	cmp r4, #1
	bne _021E1214
	mov r0, #0
	str r0, [r5, #0x28]
_021E1214:
	add r0, r4, #0
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021E1218
MOD05_021E1218: ; 0x021E1218
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _021E1270 ; =0x04000006
	add r5, r1, #0
	ldrh r7, [r0]
	mov r6, #0
	add r4, sp, #0
_021E1226:
	ldr r0, [r5, #0x1c]
	bl FUN_0201299C
	add r6, r6, #1
	add r5, r5, #4
	stmia r4!, {r0}
	cmp r6, #2
	blt _021E1226
	cmp r7, #0xc0
	bge _021E126C
	add r7, r7, #1
	cmp r7, #0xc0
	blt _021E1242
	sub r7, #0xc0
_021E1242:
	ldr r1, _021E1274 ; =0x04000004
	mov r0, #2
	ldrh r2, [r1]
	tst r0, r2
	beq _021E126C
	ldr r2, [sp]
	lsl r0, r7, #1
	ldrh r2, [r2, r0]
	lsl r3, r2, #8
	mov r2, #0xff
	lsl r2, r2, #8
	and r3, r2
	ldr r2, [sp, #4]
	ldrh r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	orr r0, r3
	strh r0, [r1, #0x3e]
	mov r0, #0xc0
	add r1, #0x42
	strh r0, [r1]
_021E126C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E1270: .word 0x04000006
_021E1274: .word 0x04000004

	thumb_func_start MOD05_021E1278
MOD05_021E1278: ; 0x021E1278
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r4, #0
_021E127E:
	ldr r0, [r5, #0x1c]
	bl FUN_020129B4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _021E127E
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E1290
MOD05_021E1290: ; 0x021E1290
	ldr r3, _021E129C ; =0x0200CA99
	add r1, r0, #0
	ldr r0, _021E12A0 ; =MOD05_021E12A4
	mov r2, #0x80
	bx r3
	nop
_021E129C: .word 0x0200CA99
_021E12A0: .word MOD05_021E12A4

	thumb_func_start MOD05_021E12A4
MOD05_021E12A4: ; 0x021E12A4
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl MOD05_021E117C
	add r0, r4, #0
	bl FUN_0200CAB4
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E12B8
MOD05_021E12B8: ; 0x021E12B8
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #6
	add r5, r0, #0
	mov r4, #0
	lsl r7, r7, #6
_021E12C2:
	ldr r0, [r5, #0x1c]
	bl FUN_0201299C
	add r6, r0, #0
	ldr r0, [r5, #0x1c]
	bl FUN_02012988
	add r1, r6, #0
	add r2, r7, #0
	bl memcpy
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _021E12C2
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E12E4
MOD05_021E12E4: ; 0x021E12E4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r1, _021E1364 ; =0x0400004A
	add r5, r0, #0
	ldrb r0, [r1]
	add r7, sp, #0
	ldr r3, _021E1368 ; =0xFFFFC0FF
	strb r0, [r7]
	add r0, r1, #0
	sub r0, #0x4a
	ldr r2, [r0]
	mov r0, #0xe
	lsl r0, r0, #0xc
	and r0, r2
	lsr r2, r0, #0xd
	sub r0, r1, #2
	ldrh r6, [r0]
	and r6, r3
	mov r3, #0x3f
	lsl r3, r3, #8
	orr r6, r3
	lsr r3, r1, #0xd
	orr r3, r6
	strh r3, [r0]
	ldrh r1, [r1]
	mov r0, #0x3f
	bic r1, r0
	mov r0, #0x3e
	orr r0, r1
	ldrb r1, [r7]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1f
	beq _021E132A
	mov r1, #0x20
	orr r0, r1
_021E132A:
	ldr r1, _021E1364 ; =0x0400004A
	mov r3, #0xff
	strh r0, [r1]
	add r0, r1, #0
	sub r0, #8
	strh r3, [r0]
	sub r0, r1, #4
	mov r3, #0xc0
	strh r3, [r0]
	sub r1, #0x4a
	ldr r3, [r1]
	ldr r0, _021E136C ; =0xFFFF1FFF
	and r0, r3
	mov r3, #2
	orr r2, r3
	lsl r2, r2, #0xd
	orr r0, r2
	str r0, [r1]
	ldr r0, [r4, #0x14]
	ldr r1, _021E1370 ; =MOD05_021E1218
	add r2, r4, #0
	bl MOD05_021F4624
	str r0, [r4, #0x18]
	add r0, r5, #0
	bl FUN_0200CAB4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E1364: .word 0x0400004A
_021E1368: .word 0xFFFFC0FF
_021E136C: .word 0xFFFF1FFF
_021E1370: .word MOD05_021E1218

	thumb_func_start MOD05_021E1374
MOD05_021E1374: ; 0x021E1374
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r5, r1, #0
	add r6, r2, #0
	bl FUN_02046528
	mov r1, #0x47
	add r7, r0, #0
	mov r0, #4
	lsl r1, r1, #2
	bl FUN_02016998
	add r4, r0, #0
	bne _021E1396
	bl ErrorHandling
	pop {r3, r4, r5, r6, r7, pc}
_021E1396:
	mov r2, #0x47
	mov r1, #0
	lsl r2, r2, #2
	bl Call_FillMemWithValue
	str r7, [r4, #4]
	ldr r0, [r7, #0xc]
	bl FUN_020462AC
	str r0, [r4, #8]
	mov r0, #0x45
	lsl r0, r0, #2
	str r6, [r4, r0]
	add r0, r0, #4
	str r5, [r4, r0]
	ldr r0, [sp]
	ldr r1, _021E13C0 ; =MOD05_021E13C4
	add r2, r4, #0
	bl FUN_0204640C
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E13C0: .word MOD05_021E13C4

	thumb_func_start MOD05_021E13C4
MOD05_021E13C4: ; 0x021E13C4
	push {r3, r4, r5, lr}
	sub sp, #8
	bl FUN_0204652C
	add r4, r0, #0
	ldr r1, [r4]
	cmp r1, #8
	bhi _021E13FC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E13E0: ; jump table
	.short _021E13F2 - _021E13E0 - 2 ; case 0
	.short _021E1408 - _021E13E0 - 2 ; case 1
	.short _021E1456 - _021E13E0 - 2 ; case 2
	.short _021E1470 - _021E13E0 - 2 ; case 3
	.short _021E1482 - _021E13E0 - 2 ; case 4
	.short _021E149E - _021E13E0 - 2 ; case 5
	.short _021E14B0 - _021E13E0 - 2 ; case 6
	.short _021E14FA - _021E13E0 - 2 ; case 7
	.short _021E1502 - _021E13E0 - 2 ; case 8
_021E13F2:
	ldr r0, [r4, #4]
	bl MOD05_021E19E0
	cmp r0, #1
	beq _021E13FE
_021E13FC:
	b _021E150C
_021E13FE:
	add r0, r4, #0
	mov r1, #1
	bl MOD05_021E1514
	b _021E150C
_021E1408:
	bl MOD05_021E153C
	add r0, r4, #0
	bl MOD05_021E1518
	cmp r0, #2
	bne _021E142A
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #2
	bl MOD05_021E1514
	b _021E150C
_021E142A:
	cmp r0, #0
	bne _021E1442
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #6
	bl MOD05_021E1514
	b _021E150C
_021E1442:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #7
	bl MOD05_021E1514
	b _021E150C
_021E1456:
	mov r0, #0x62
	lsl r0, r0, #4
	bl FUN_020054C8
	ldr r0, [r4, #8]
	mov r1, #0
	bl FUN_0205F42C
	add r0, r4, #0
	mov r1, #3
	bl MOD05_021E1514
	b _021E150C
_021E1470:
	bl MOD05_021E1794
	cmp r0, #0
	bne _021E150C
	add r0, r4, #0
	mov r1, #4
	bl MOD05_021E1514
	b _021E150C
_021E1482:
	bl MOD05_021E17A0
	cmp r0, #0
	bne _021E1494
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	strh r1, [r0]
_021E1494:
	add r0, r4, #0
	mov r1, #5
	bl MOD05_021E1514
	b _021E150C
_021E149E:
	bl MOD05_021E1794
	cmp r0, #0
	bne _021E150C
	add r0, r4, #0
	mov r1, #8
	bl MOD05_021E1514
	b _021E150C
_021E14B0:
	ldr r0, [r4, #8]
	bl FUN_0205F41C
	mov r1, #0x64
	sub r5, r1, r0
	add r0, r5, #0
	mov r1, #0xa
	bl _s32_div_f
	cmp r0, #0
	bne _021E14CA
	mov r3, #1
	b _021E14DC
_021E14CA:
	add r0, r5, #0
	mov r1, #0x64
	bl _s32_div_f
	cmp r0, #0
	bne _021E14DA
	mov r3, #2
	b _021E14DC
_021E14DA:
	mov r3, #3
_021E14DC:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r2, r5, #0
	bl FUN_0200AD38
	add r0, r4, #0
	mov r1, #8
	bl MOD05_021E1514
	b _021E150C
_021E14FA:
	mov r1, #8
	bl MOD05_021E1514
	b _021E150C
_021E1502:
	bl FUN_02016A18
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E150C:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E1514
MOD05_021E1514: ; 0x021E1514
	str r1, [r0]
	bx lr

	thumb_func_start MOD05_021E1518
MOD05_021E1518: ; 0x021E1518
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl FUN_0205F41C
	cmp r0, #0x64
	bne _021E1538
	mov r0, #0x11
	lsl r0, r0, #4
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _021E1534
	mov r0, #1
	pop {r4, pc}
_021E1534:
	mov r0, #2
	pop {r4, pc}
_021E1538:
	mov r0, #0
	pop {r4, pc}

	thumb_func_start MOD05_021E153C
MOD05_021E153C: ; 0x021E153C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	ldr r0, [r0, #4]
	bl FUN_02034B64
	mov r2, #0
	str r0, [sp, #4]
	str r2, [sp, #0x18]
	cmp r0, #0
	bls _021E1562
	ldr r3, [sp]
	add r1, r2, #0
_021E1556:
	ldr r0, [sp, #4]
	add r2, r2, #1
	str r1, [r3, #0x10]
	add r3, r3, #4
	cmp r2, r0
	blo _021E1556
_021E1562:
	ldr r0, [sp]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x38]
	bl FUN_02055320
	add r4, r0, #0
	ldr r0, [sp]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x38]
	bl FUN_0205532C
	sub r1, r4, #7
	str r1, [sp, #0x14]
	add r1, r4, #7
	str r1, [sp, #0x10]
	sub r1, r0, #7
	add r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	str r1, [sp, #0xc]
	cmp r0, #0
	bge _021E1592
	mov r0, #0
	str r0, [sp, #0x14]
_021E1592:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bge _021E159C
	mov r0, #0
	str r0, [sp, #0xc]
_021E159C:
	ldr r0, [sp, #4]
	mov r6, #0
	cmp r0, #0
	bls _021E1622
	ldr r5, [sp]
_021E15A6:
	ldr r0, [sp]
	add r1, r6, #0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x34]
	bl FUN_02058060
	add r4, r0, #0
	beq _021E161A
	bl FUN_02058488
	cmp r0, #8
	bhi _021E161A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E15CA: ; jump table
	.short _021E161A - _021E15CA - 2 ; case 0
	.short _021E15DC - _021E15CA - 2 ; case 1
	.short _021E15DC - _021E15CA - 2 ; case 2
	.short _021E161A - _021E15CA - 2 ; case 3
	.short _021E15DC - _021E15CA - 2 ; case 4
	.short _021E15DC - _021E15CA - 2 ; case 5
	.short _021E15DC - _021E15CA - 2 ; case 6
	.short _021E15DC - _021E15CA - 2 ; case 7
	.short _021E15DC - _021E15CA - 2 ; case 8
_021E15DC:
	add r0, r4, #0
	bl FUN_02058B2C
	add r7, r0, #0
	add r0, r4, #0
	bl FUN_02058B4C
	ldr r1, [sp, #0x14]
	cmp r7, r1
	blt _021E161A
	ldr r1, [sp, #0x10]
	cmp r7, r1
	bgt _021E161A
	ldr r1, [sp, #0xc]
	cmp r0, r1
	blt _021E161A
	ldr r1, [sp, #8]
	cmp r0, r1
	bgt _021E161A
	add r0, r4, #0
	bl FUN_02058480
	bl MOD05_021E1630
	cmp r0, #0
	bne _021E161A
	ldr r0, [sp, #0x18]
	str r4, [r5, #0x10]
	add r0, r0, #1
	add r5, r5, #4
	str r0, [sp, #0x18]
_021E161A:
	ldr r0, [sp, #4]
	add r6, r6, #1
	cmp r6, r0
	blo _021E15A6
_021E1622:
	mov r2, #0x11
	ldr r1, [sp, #0x18]
	ldr r0, [sp]
	lsl r2, r2, #4
	strh r1, [r0, r2]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021E1630
MOD05_021E1630: ; 0x021E1630
	sub r0, #0x33
	cmp r0, #3
	bhi _021E164E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E1642: ; jump table
	.short _021E164A - _021E1642 - 2 ; case 0
	.short _021E164A - _021E1642 - 2 ; case 1
	.short _021E164A - _021E1642 - 2 ; case 2
	.short _021E164A - _021E1642 - 2 ; case 3
_021E164A:
	mov r0, #1
	bx lr
_021E164E:
	mov r0, #0
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021E1654
MOD05_021E1654: ; 0x021E1654
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0xc]
	bl FUN_020462AC
	add r4, r0, #0
	bl FUN_0205F41C
	add r6, r0, #0
	add r0, r4, #0
	bl FUN_0205F43C
	add r5, r0, #0
	ldr r0, [r7, #0xc]
	bl FUN_0206F158
	ldr r1, _021E16C4 ; =0x000001BB
	mov r2, #1
	mov r3, #4
	bl FUN_0206EE50
	cmp r0, #1
	bne _021E1692
	cmp r6, #0x64
	bhs _021E1692
	add r1, r6, #1
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl FUN_0205F42C
_021E1692:
	add r0, r4, #0
	bl FUN_0205ED9C
	cmp r0, #1
	bne _021E16BE
	cmp r5, #0x64
	bhs _021E16AE
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, #0
	add r1, r5, #0
	bl FUN_0205F44C
_021E16AE:
	cmp r5, #0x64
	bne _021E16BE
	add r0, r4, #0
	bl FUN_0205F408
	add r0, r7, #0
	bl MOD05_021E16C8
_021E16BE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E16C4: .word 0x000001BB

	thumb_func_start MOD05_021E16C8
MOD05_021E16C8: ; 0x021E16C8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl FUN_02034B64
	add r7, r0, #0
	ldr r5, _021E16FC ; =0x00000000
	beq _021E16F8
_021E16D6:
	ldr r0, [r6, #0x34]
	add r1, r5, #0
	bl FUN_02058060
	add r4, r0, #0
	beq _021E16F2
	bl FUN_02058480
	cmp r0, #0x31
	bne _021E16F2
	add r0, r4, #0
	mov r1, #2
	bl MOD05_021E198C
_021E16F2:
	add r5, r5, #1
	cmp r5, r7
	blo _021E16D6
_021E16F8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E16FC: .word 0x00000000

	thumb_func_start MOD05_021E1700
MOD05_021E1700: ; 0x021E1700
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	bl FUN_0205AEA4
	add r1, r0, #0
	ldr r0, _021E1720 ; =0x00000112
	ldrh r2, [r4, r0]
	add r2, r2, #1
	strh r2, [r4, r0]
	add r0, r4, #0
	bl MOD05_021E1724
	pop {r4, pc}
	nop
_021E1720: .word 0x00000112

	thumb_func_start MOD05_021E1724
MOD05_021E1724: ; 0x021E1724
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #4
	mov r1, #0xc
	bl FUN_02016998
	add r4, r0, #0
	bne _021E173C
	bl ErrorHandling
	pop {r4, r5, r6, pc}
_021E173C:
	ldr r0, _021E1750 ; =MOD05_021E1754
	str r5, [r4, #8]
	add r1, r4, #0
	mov r2, #0
	str r6, [r4, #4]
	bl FUN_0200CA44
	str r0, [r4]
	pop {r4, r5, r6, pc}
	nop
_021E1750: .word MOD05_021E1754

	thumb_func_start MOD05_021E1754
MOD05_021E1754: ; 0x021E1754
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	bl FUN_0205AEF0
	cmp r0, #1
	bne _021E178E
	ldr r1, [r4, #8]
	ldr r0, _021E1790 ; =0x00000112
	ldrh r0, [r1, r0]
	cmp r0, #0
	bne _021E1770
	bl ErrorHandling
_021E1770:
	ldr r2, [r4, #8]
	ldr r0, _021E1790 ; =0x00000112
	ldrh r1, [r2, r0]
	sub r1, r1, #1
	strh r1, [r2, r0]
	ldr r0, [r4, #4]
	bl FUN_0205AEFC
	ldr r0, [r4]
	bl FUN_0200CAB4
	mov r0, #4
	add r1, r4, #0
	bl FUN_02016A8C
_021E178E:
	pop {r4, pc}
	.balign 4, 0
_021E1790: .word 0x00000112

	thumb_func_start MOD05_021E1794
MOD05_021E1794: ; 0x021E1794
	ldr r1, _021E179C ; =0x00000112
	ldrh r0, [r0, r1]
	bx lr
	nop
_021E179C: .word 0x00000112

	thumb_func_start MOD05_021E17A0
MOD05_021E17A0: ; 0x021E17A0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r0, [r0, #0xc]
	bl FUN_020462AC
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #4
	mov r7, #0
	ldrh r0, [r5, r0]
	add r6, r7, #0
	cmp r0, #0
	ble _021E183C
	add r4, r5, #0
_021E17BE:
	ldr r0, [r4, #0x10]
	bl MOD05_021E1848
	add r1, r0, #0
	ldr r0, [r5, #4]
	bl FUN_02039640
	cmp r0, #0
	bne _021E17DE
	ldr r1, [r4, #0x10]
	ldr r2, _021E1840 ; =0x021F6908
	add r0, r5, #0
	bl MOD05_021E1700
	mov r7, #1
	b _021E182E
_021E17DE:
	bl FUN_0201B9EC
	mov r1, #0x64
	bl _s32_div_f
	cmp r1, #0x32
	bge _021E182E
	ldr r0, [r4, #0x10]
	bl MOD05_021E1978
	cmp r0, #0
	bne _021E182E
	ldr r0, [r4, #0x10]
	mov r1, #0x31
	bl MOD05_021E198C
	ldr r1, [r4, #0x10]
	ldr r2, _021E1844 ; =0x021F6910
	add r0, r5, #0
	bl MOD05_021E1700
	ldr r0, [r5, #4]
	ldr r1, [r4, #0x10]
	mov r2, #0
	bl MOD05_021E1A30
	add r7, r0, #0
	beq _021E1826
	mov r1, #0x31
	bl MOD05_021E198C
	ldr r2, _021E1844 ; =0x021F6910
	add r0, r5, #0
	add r1, r7, #0
	bl MOD05_021E1700
_021E1826:
	ldr r0, [sp]
	mov r7, #1
	bl FUN_0205ED7C
_021E182E:
	mov r0, #0x11
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _021E17BE
_021E183C:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E1840: .word 0x021F6908
_021E1844: .word 0x021F6910

	thumb_func_start MOD05_021E1848
MOD05_021E1848: ; 0x021E1848
	push {r3, lr}
	bl FUN_02058498
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl FUN_020395F4
	pop {r3, pc}

	thumb_func_start MOD05_021E1858
MOD05_021E1858: ; 0x021E1858
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r5, r2, #0
	bl MOD05_021E1978
	cmp r0, #0
	bne _021E186C
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E186C:
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021E189C
	add r5, r0, #0
	cmp r5, #0xff
	bne _021E187E
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E187E:
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021E18BC
	add r2, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021E1908
	add r1, r0, #0
	add r0, r5, #0
	bl MOD05_021E1964
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E189C
MOD05_021E189C: ; 0x021E189C
	ldr r3, _021E18B8 ; =0x021F691C
	mov r2, #0
_021E18A0:
	ldrh r0, [r3]
	cmp r1, r0
	bne _021E18AC
	lsl r0, r2, #0x10
	lsr r0, r0, #0x10
	bx lr
_021E18AC:
	add r2, r2, #1
	add r3, #0xc
	cmp r2, #0xf0
	blo _021E18A0
	mov r0, #0xff
	bx lr
	.balign 4, 0
_021E18B8: .word 0x021F691C

	thumb_func_start MOD05_021E18BC
MOD05_021E18BC: ; 0x021E18BC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0xc
	ldr r2, _021E1900 ; =0x021F691C
	mul r0, r1
	add r0, r2, r0
	ldr r7, _021E1904 ; =0x0000FFFF
	mov r4, #1
	add r5, r0, #2
_021E18CE:
	ldrh r1, [r5]
	cmp r1, #0
	bne _021E18DC
	sub r0, r4, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021E18DC:
	cmp r1, r7
	beq _021E18F0
	add r0, r6, #0
	bl FUN_02039640
	cmp r0, #0
	bne _021E18F0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021E18F0:
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #6
	blt _021E18CE
	sub r0, r4, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E1900: .word 0x021F691C
_021E1904: .word 0x0000FFFF

	thumb_func_start MOD05_021E1908
MOD05_021E1908: ; 0x021E1908
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	add r4, r2, #0
	bl FUN_020462AC
	cmp r4, #0
	beq _021E192C
	add r1, r4, #0
	bl FUN_0205EEB8
	cmp r0, #0
	bne _021E192C
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021E1930
	add r4, r0, #0
_021E192C:
	add r0, r4, #0
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021E1930
MOD05_021E1930: ; 0x021E1930
	sub r1, r1, #1
	lsl r1, r1, #0x10
	ldr r2, _021E195C ; =0x021F691C
	lsr r3, r1, #0x10
	beq _021E1956
	mov r1, #0xc
	mul r1, r0
	add r2, r2, r1
	ldr r1, _021E1960 ; =0x0000FFFF
_021E1942:
	lsl r0, r3, #1
	ldrh r0, [r2, r0]
	cmp r0, r1
	beq _021E194E
	add r0, r3, #0
	bx lr
_021E194E:
	sub r0, r3, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	bne _021E1942
_021E1956:
	mov r0, #0
	bx lr
	nop
_021E195C: .word 0x021F691C
_021E1960: .word 0x0000FFFF

	thumb_func_start MOD05_021E1964
MOD05_021E1964: ; 0x021E1964
	mov r2, #0xc
	mul r2, r0
	ldr r0, _021E1974 ; =0x021F691C
	lsl r1, r1, #1
	add r0, r0, r2
	ldrh r0, [r1, r0]
	bx lr
	nop
_021E1974: .word 0x021F691C

	thumb_func_start MOD05_021E1978
MOD05_021E1978: ; 0x021E1978
	push {r3, lr}
	bl FUN_02058480
	cmp r0, #0x31
	bne _021E1986
	mov r0, #1
	pop {r3, pc}
_021E1986:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E198C
MOD05_021E198C: ; 0x021E198C
	ldr r3, _021E1990 ; =0x02058E91
	bx r3
	.balign 4, 0
_021E1990: .word 0x02058E91

	thumb_func_start MOD05_021E1994
MOD05_021E1994: ; 0x021E1994
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	beq _021E19DC
	add r0, r5, #0
	bl FUN_020584C4
	cmp r0, #0
	bne _021E19AA
	mov r4, #0xe
	b _021E19BC
_021E19AA:
	cmp r0, #1
	bne _021E19B2
	mov r4, #0xf
	b _021E19BC
_021E19B2:
	cmp r0, #2
	bne _021E19BA
	mov r4, #0x10
	b _021E19BC
_021E19BA:
	mov r4, #0x11
_021E19BC:
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #1
	bl MOD05_021E1A30
	cmp r0, #0
	beq _021E19D2
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	bl MOD05_021E198C
_021E19D2:
	lsl r1, r4, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl MOD05_021E198C
_021E19DC:
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E19E0
MOD05_021E19E0: ; 0x021E19E0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl FUN_02034B64
	ldr r5, _021E1A2C ; =0x00000000
	add r7, r0, #0
	str r5, [sp]
	beq _021E1A1C
_021E19F0:
	ldr r0, [r6, #0x34]
	add r1, r5, #0
	bl FUN_02058060
	add r4, r0, #0
	beq _021E1A16
	bl FUN_02058854
	cmp r0, #1
	bne _021E1A10
	add r0, r4, #0
	bl FUN_02058914
	mov r0, #1
	str r0, [sp]
	b _021E1A16
_021E1A10:
	add r0, r4, #0
	bl FUN_02058908
_021E1A16:
	add r5, r5, #1
	cmp r5, r7
	blo _021E19F0
_021E1A1C:
	ldr r0, [sp]
	cmp r0, #0
	bne _021E1A26
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E1A26:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E1A2C: .word 0x00000000

	thumb_func_start MOD05_021E1A30
MOD05_021E1A30: ; 0x021E1A30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	str r0, [sp]
	str r2, [sp, #4]
	bl FUN_02034B64
	add r7, r0, #0
	add r0, r4, #0
	bl FUN_02058498
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	bl FUN_020395F4
	str r0, [sp, #8]
	bl FUN_0203962C
	cmp r0, #0
	bne _021E1A60
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E1A60:
	mov r4, #0
	cmp r7, #0
	bls _021E1AD2
_021E1A66:
	ldr r0, [sp]
	add r1, r4, #0
	ldr r0, [r0, #0x34]
	bl FUN_02058060
	add r5, r0, #0
	beq _021E1ACC
	ldr r1, [sp, #4]
	cmp r1, #0
	bne _021E1A82
	bl FUN_02058480
	cmp r0, #0x31
	beq _021E1ACC
_021E1A82:
	add r0, r5, #0
	bl FUN_02058488
	cmp r0, #8
	bhi _021E1ACC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E1A98: ; jump table
	.short _021E1ACC - _021E1A98 - 2 ; case 0
	.short _021E1AAA - _021E1A98 - 2 ; case 1
	.short _021E1AAA - _021E1A98 - 2 ; case 2
	.short _021E1ACC - _021E1A98 - 2 ; case 3
	.short _021E1AAA - _021E1A98 - 2 ; case 4
	.short _021E1AAA - _021E1A98 - 2 ; case 5
	.short _021E1AAA - _021E1A98 - 2 ; case 6
	.short _021E1AAA - _021E1A98 - 2 ; case 7
	.short _021E1AAA - _021E1A98 - 2 ; case 8
_021E1AAA:
	add r0, r5, #0
	bl FUN_02058498
	add r6, r0, #0
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	bl FUN_020395F4
	ldr r1, [sp, #0xc]
	cmp r1, r6
	beq _021E1ACC
	ldr r1, [sp, #8]
	cmp r1, r0
	bne _021E1ACC
	add sp, #0x10
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E1ACC:
	add r4, r4, #1
	cmp r4, r7
	blo _021E1A66
_021E1AD2:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021E1AD8
MOD05_021E1AD8: ; 0x021E1AD8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r1, [sp, #0x2c]
	add r4, r0, #0
	add r5, r2, #0
	add r7, r3, #0
	cmp r1, #0
	bne _021E1B06
	ldr r2, _021E1BF0 ; =0x00000141
	mov r0, #1
	mov r1, #0x1a
	mov r3, #4
	bl FUN_0200A86C
	add r1, r6, #0
	add r1, #0x8c
	str r0, [r1]
	add r0, r6, #0
	add r0, #0x97
	ldrb r1, [r0]
	mov r0, #2
	orr r1, r0
	b _021E1B16
_021E1B06:
	add r0, r6, #0
	add r0, #0x8c
	str r1, [r0]
	add r0, r6, #0
	add r0, #0x97
	ldrb r1, [r0]
	mov r0, #2
	bic r1, r0
_021E1B16:
	add r0, r6, #0
	add r0, #0x97
	strb r1, [r0]
	add r0, r6, #0
	ldr r1, [sp, #0x24]
	add r0, #0x90
	str r1, [r0]
	add r0, r6, #0
	ldr r1, [sp, #0x20]
	str r4, [r6]
	add r0, #0xa0
	str r1, [r0]
	add r0, r6, #0
	add r0, #0x97
	add r2, sp, #8
	ldrb r0, [r0]
	mov r1, #1
	ldrb r3, [r2, #0x14]
	bic r0, r1
	mov r1, #1
	and r1, r3
	orr r1, r0
	add r0, r6, #0
	add r0, #0x97
	strb r1, [r0]
	add r1, r6, #0
	ldrb r0, [r2, #0x10]
	add r1, #0x96
	mov r3, #3
	strb r0, [r1]
	add r1, r6, #0
	add r1, #0x97
	ldrb r2, [r1]
	mov r1, #0x40
	bic r2, r1
	add r1, r6, #0
	add r1, #0x97
	strb r2, [r1]
	add r1, r6, #0
	add r1, #0x97
	ldrb r2, [r1]
	mov r1, #0x80
	bic r2, r1
	add r1, r6, #0
	add r1, #0x97
	strb r2, [r1]
	add r1, r6, #0
	add r1, #0x98
	strb r5, [r1]
	add r1, r6, #0
	add r1, #0x99
	add r2, r6, #0
	strb r7, [r1]
	mov r1, #0
	add r2, #0x9b
	strb r1, [r2]
	ldr r2, [sp, #0x28]
	str r2, [r6, #0x18]
	add r2, r6, #0
	add r2, #0x94
	strb r3, [r2]
	mov r2, #0xb5
	lsl r2, r2, #2
	strh r0, [r6, r2]
	add r2, r6, #0
	add r3, r1, #0
_021E1B9A:
	add r0, r2, #0
	add r0, #0xb4
	str r3, [r0]
	add r0, r2, #0
	add r0, #0xb8
	add r1, r1, #1
	add r2, #8
	str r3, [r0]
	cmp r1, #0x1c
	blt _021E1B9A
	mov r7, #0xa7
	add r1, r6, #0
	add r2, r6, #0
	mov r5, #0
	mov r0, #0xff
	lsl r7, r7, #2
_021E1BBA:
	mov r4, #0x6f
	lsl r4, r4, #2
	str r5, [r1, r4]
	add r4, r4, #4
	str r5, [r1, r4]
	strh r0, [r2, r7]
	add r3, r3, #1
	add r1, #8
	add r2, r2, #2
	cmp r3, #0x1c
	blt _021E1BBA
	add r4, r6, #0
	mov r7, #0x50
_021E1BD4:
	add r0, r7, #0
	mov r1, #4
	bl FUN_020219F4
	str r0, [r4, #0x1c]
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #0x1c
	blt _021E1BD4
	add r6, #0xa0
	ldr r1, _021E1BF4 ; =0x0000EEEE
	ldr r0, [r6]
	strh r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E1BF0: .word 0x00000141
_021E1BF4: .word 0x0000EEEE

	thumb_func_start MOD05_021E1BF8
MOD05_021E1BF8: ; 0x021E1BF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r1, #0
	mov r1, #0xb6
	add r6, r0, #0
	mov r0, #4
	lsl r1, r1, #2
	str r2, [sp, #0x18]
	add r5, r3, #0
	bl FUN_02016998
	add r4, r0, #0
	bne _021E1C18
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021E1C18:
	mov r2, #0xb6
	mov r1, #0
	lsl r2, r2, #2
	bl Call_FillMemWithValue
	str r5, [sp]
	add r0, sp, #0x20
	ldrb r0, [r0, #0x10]
	add r1, r4, #0
	add r2, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0x14]
	ldr r3, [sp, #0x18]
	add r0, r6, #0
	bl MOD05_021E1AD8
	add r0, r4, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021E1C4C
MOD05_021E1C4C: ; 0x021E1C4C
	ldr r3, _021E1C50 ; =MOD05_021E1D38
	bx r3
	.balign 4, 0
_021E1C50: .word MOD05_021E1D38

	thumb_func_start MOD05_021E1C54
MOD05_021E1C54: ; 0x021E1C54
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	bl MOD05_021E1DA8
	mov r1, #7
	tst r1, r0
	bne _021E1C68
	lsr r0, r0, #3
	b _021E1C6C
_021E1C68:
	lsr r0, r0, #3
	add r0, r0, #1
_021E1C6C:
	add r1, r4, #0
	add r1, #0x97
	ldrb r1, [r1]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1f
	beq _021E1C86
	add r1, r4, #0
	add r1, #0x98
	ldrb r1, [r1]
	sub r2, r1, r0
	add r1, r4, #0
	add r1, #0x98
	strb r2, [r1]
_021E1C86:
	add r1, r4, #0
	add r1, #0x97
	ldrb r1, [r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	beq _021E1CA8
	add r1, r4, #0
	add r1, #0x99
	ldrb r2, [r1]
	add r1, r4, #0
	add r1, #0x9b
	ldrb r1, [r1]
	lsl r1, r1, #1
	sub r2, r2, r1
	add r1, r4, #0
	add r1, #0x99
	strb r2, [r1]
_021E1CA8:
	add r1, r4, #0
	add r1, #0x99
	ldrb r1, [r1]
	lsl r0, r0, #0x18
	add r3, r4, #0
	str r1, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r1, r4, #0
	add r3, #0x98
	lsl r0, r0, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x3d
	str r0, [sp, #0x10]
	ldr r0, [r4]
	ldrb r3, [r3]
	ldr r0, [r0, #8]
	add r1, #8
	mov r2, #3
	bl FUN_02019064
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r2, _021E1D30 ; =0x000003D9
	ldr r0, [r0, #8]
	mov r1, #3
	mov r3, #0xb
	bl FUN_0200CB00
	add r0, r4, #0
	ldr r2, _021E1D30 ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xb
	bl FUN_0200CCA4
	add r0, r4, #0
	bl MOD05_021E1DE4
	add r1, r4, #0
	add r1, #0x96
	add r0, r4, #0
	ldrb r1, [r1]
	add r0, #0xa4
	mov r2, #4
	bl FUN_02001C34
	add r1, r4, #0
	add r1, #0xb0
	str r0, [r1]
	ldr r0, _021E1D34 ; =MOD05_021E1E58
	add r1, r4, #0
	mov r2, #0
	bl FUN_0200CA44
	str r0, [r4, #4]
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_021E1D30: .word 0x000003D9
_021E1D34: .word MOD05_021E1E58

	thumb_func_start MOD05_021E1D38
MOD05_021E1D38: ; 0x021E1D38
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	mov r0, #0x50
	mov r1, #4
	add r6, r2, #0
	bl FUN_020219F4
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	add r1, r7, #0
	add r2, r4, #0
	bl FUN_0200A8E0
	add r1, r5, #0
	add r1, #0x9b
	ldrb r1, [r1]
	add r0, r5, #0
	add r0, #0x90
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r0]
	ldr r1, [r1, #0x1c]
	add r2, r4, #0
	bl FUN_0200B7B8
	add r0, r5, #0
	add r0, #0x9b
	ldrb r2, [r0]
	lsl r0, r2, #2
	add r0, r5, r0
	ldr r1, [r0, #0x1c]
	lsl r0, r2, #3
	add r0, r5, r0
	add r0, #0xb4
	str r1, [r0]
	add r0, r4, #0
	bl FUN_02021A20
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r0, r5, r0
	add r0, #0xb8
	str r6, [r0]
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r5, #0x9b
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E1DA8
MOD05_021E1DA8: ; 0x021E1DA8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, #0x9b
	ldrb r0, [r0]
	mov r6, #0
	add r4, r6, #0
	cmp r0, #0
	ble _021E1DDE
	add r5, r7, #0
_021E1DBA:
	add r0, r5, #0
	add r0, #0xb4
	ldr r1, [r0]
	cmp r1, #0
	beq _021E1DDE
	mov r0, #0
	bl FUN_02002F9C
	cmp r6, r0
	bhs _021E1DD0
	add r6, r0, #0
_021E1DD0:
	add r0, r7, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r4, r4, #1
	add r5, #8
	cmp r4, r0
	blt _021E1DBA
_021E1DDE:
	add r6, #0xc
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021E1DE4
MOD05_021E1DE4: ; 0x021E1DE4
	add r2, r0, #0
	add r1, r0, #0
	add r2, #0xb4
	add r1, #0xa4
	str r2, [r1]
	add r2, r0, #0
	add r1, r0, #0
	add r2, #8
	add r1, #0xa8
	str r2, [r1]
	add r1, r0, #0
	mov r2, #0
	add r1, #0xac
	strb r2, [r1]
	add r1, r0, #0
	mov r2, #1
	add r1, #0xad
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x9b
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #0xae
	strb r2, [r1]
	add r2, r0, #0
	add r2, #0xaf
	ldrb r3, [r2]
	mov r2, #0xf
	add r1, r0, #0
	bic r3, r2
	add r2, r0, #0
	add r2, #0xaf
	strb r3, [r2]
	add r2, r0, #0
	add r2, #0xaf
	ldrb r3, [r2]
	mov r2, #0x30
	add r1, #0xaf
	bic r3, r2
	add r2, r0, #0
	add r2, #0xaf
	strb r3, [r2]
	add r0, #0x9b
	ldrb r0, [r0]
	ldrb r2, [r1]
	cmp r0, #4
	blo _021E1E4E
	mov r0, #0xc0
	bic r2, r0
	mov r0, #0x40
	orr r0, r2
	strb r0, [r1]
	bx lr
_021E1E4E:
	mov r0, #0xc0
	bic r2, r0
	strb r2, [r1]
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021E1E58
MOD05_021E1E58: ; 0x021E1E58
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	add r0, #0x94
	ldrb r0, [r0]
	cmp r0, #0
	beq _021E1E74
	add r0, r4, #0
	add r0, #0x94
	ldrb r0, [r0]
	add r4, #0x94
	sub r0, r0, #1
	strb r0, [r4]
	pop {r4, pc}
_021E1E74:
	bl FUN_0200E308
	cmp r0, #0
	beq _021E1EC4
	add r0, r4, #0
	add r0, #0xb0
	ldr r0, [r0]
	bl FUN_02001C78
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _021E1E96
	add r1, r1, #1
	cmp r0, r1
	beq _021E1EC4
	b _021E1EB6
_021E1E96:
	add r0, r4, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021E1EC4
	add r0, r4, #0
	add r0, #0xa0
	ldr r1, _021E1EC8 ; =0x0000FFFE
	ldr r0, [r0]
	strh r1, [r0]
	add r0, r4, #0
	bl MOD05_021E1ECC
	pop {r4, pc}
_021E1EB6:
	add r1, r4, #0
	add r1, #0xa0
	ldr r1, [r1]
	strh r0, [r1]
	add r0, r4, #0
	bl MOD05_021E1ECC
_021E1EC4:
	pop {r4, pc}
	nop
_021E1EC8: .word 0x0000FFFE

	thumb_func_start MOD05_021E1ECC
MOD05_021E1ECC: ; 0x021E1ECC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _021E1F30 ; =0x000005DC
	bl FUN_020054C8
	add r0, r6, #0
	add r0, #0xb0
	ldr r0, [r0]
	mov r1, #0
	bl FUN_02001C5C
	add r0, r6, #0
	add r0, #0xa8
	ldr r0, [r0]
	mov r1, #0
	bl FUN_0200CCF8
	add r0, r6, #0
	add r0, #0xa8
	ldr r0, [r0]
	bl FUN_02019178
	mov r4, #0
	add r5, r6, #0
_021E1EFC:
	ldr r0, [r5, #0x1c]
	bl FUN_02021A20
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x1c
	blt _021E1EFC
	add r0, r6, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021E1F22
	add r0, r6, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl FUN_0200A8B8
_021E1F22:
	ldr r0, [r6, #4]
	bl FUN_0200CAB4
	add r0, r6, #0
	bl FUN_02016A18
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E1F30: .word 0x000005DC

	thumb_func_start MOD05_021E1F34
MOD05_021E1F34: ; 0x021E1F34
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, sp, #0x10
	ldrb r4, [r4, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x24]
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x30]
	str r4, [sp, #0x10]
	bl MOD05_021E1BF8
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E1F58
MOD05_021E1F58: ; 0x021E1F58
	push {r3, lr}
	bl MOD05_021E2094
	pop {r3, pc}

	thumb_func_start MOD05_021E1F60
MOD05_021E1F60: ; 0x021E1F60
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	bl MOD05_021E2134
	mov r1, #7
	tst r1, r0
	bne _021E1F74
	lsr r0, r0, #3
	b _021E1F78
_021E1F74:
	lsr r0, r0, #3
	add r0, r0, #1
_021E1F78:
	add r1, r4, #0
	add r1, #0x97
	ldrb r1, [r1]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1f
	beq _021E1F92
	add r1, r4, #0
	add r1, #0x98
	ldrb r1, [r1]
	sub r2, r1, r0
	add r1, r4, #0
	add r1, #0x98
	strb r2, [r1]
_021E1F92:
	add r1, r4, #0
	add r1, #0x97
	ldrb r1, [r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	beq _021E1FC8
	add r1, r4, #0
	add r1, #0x9b
	ldrb r3, [r1]
	cmp r3, #8
	bls _021E1FB8
	add r1, r4, #0
	add r1, #0x99
	ldrb r2, [r1]
	add r1, r4, #0
	add r1, #0x99
	sub r2, #0x10
	strb r2, [r1]
	b _021E1FC8
_021E1FB8:
	add r1, r4, #0
	add r1, #0x99
	ldrb r2, [r1]
	lsl r1, r3, #1
	sub r2, r2, r1
	add r1, r4, #0
	add r1, #0x99
	strb r2, [r1]
_021E1FC8:
	add r1, r4, #0
	add r1, #0x9b
	ldrb r2, [r1]
	cmp r2, #8
	bls _021E2002
	add r1, r4, #0
	add r1, #0x99
	ldrb r1, [r1]
	lsl r0, r0, #0x18
	add r3, r4, #0
	str r1, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x3d
	str r0, [sp, #0x10]
	ldr r0, [r4]
	add r3, #0x98
	add r1, r4, #0
	ldrb r3, [r3]
	ldr r0, [r0, #8]
	add r1, #8
	mov r2, #3
	bl FUN_02019064
	b _021E2032
_021E2002:
	add r1, r4, #0
	add r1, #0x99
	ldrb r1, [r1]
	lsl r0, r0, #0x18
	add r3, r4, #0
	str r1, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	lsl r0, r2, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x3d
	str r0, [sp, #0x10]
	ldr r0, [r4]
	add r3, #0x98
	add r1, r4, #0
	ldrb r3, [r3]
	ldr r0, [r0, #8]
	add r1, #8
	mov r2, #3
	bl FUN_02019064
_021E2032:
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r2, _021E208C ; =0x000003D9
	ldr r0, [r0, #8]
	mov r1, #3
	mov r3, #0xb
	bl FUN_0200CB00
	add r0, r4, #0
	ldr r2, _021E208C ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xb
	bl FUN_0200CCA4
	add r0, r4, #0
	bl MOD05_021E2170
	add r2, r4, #0
	add r2, #0x96
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r2, [r2]
	add r0, r4, r0
	mov r1, #0
	mov r3, #4
	bl FUN_020010A8
	mov r1, #0x6d
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	bl MOD05_021E2434
	ldr r0, _021E2090 ; =MOD05_021E229C
	add r1, r4, #0
	mov r2, #0
	bl FUN_0200CA44
	str r0, [r4, #4]
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
_021E208C: .word 0x000003D9
_021E2090: .word MOD05_021E229C

	thumb_func_start MOD05_021E2094
MOD05_021E2094: ; 0x021E2094
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	mov r0, #0x50
	mov r1, #4
	add r7, r2, #0
	add r4, r3, #0
	bl FUN_020219F4
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	ldr r1, [sp]
	add r2, r6, #0
	bl FUN_0200A8E0
	add r1, r5, #0
	add r1, #0x9b
	ldrb r1, [r1]
	add r0, r5, #0
	add r0, #0x90
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r0]
	ldr r1, [r1, #0x1c]
	add r2, r6, #0
	bl FUN_0200B7B8
	add r0, r5, #0
	add r0, #0x9b
	ldrb r1, [r0]
	lsl r0, r1, #2
	add r0, r5, r0
	lsl r1, r1, #3
	add r2, r5, r1
	mov r1, #0x6f
	ldr r0, [r0, #0x1c]
	lsl r1, r1, #2
	str r0, [r2, r1]
	add r0, r6, #0
	bl FUN_02021A20
	cmp r4, #0xfa
	bne _021E2104
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	mov r2, #2
	mvn r2, r2
	lsl r0, r0, #3
	add r1, r5, r0
	mov r0, #7
	lsl r0, r0, #6
	str r2, [r1, r0]
	b _021E2114
_021E2104:
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	lsl r0, r0, #3
	add r1, r5, r0
	mov r0, #7
	lsl r0, r0, #6
	str r4, [r1, r0]
_021E2114:
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	lsl r0, r0, #1
	add r1, r5, r0
	mov r0, #0xa7
	lsl r0, r0, #2
	strh r7, [r1, r0]
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r5, #0x9b
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E2134
MOD05_021E2134: ; 0x021E2134
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, #0x9b
	ldrb r0, [r0]
	mov r6, #0
	add r4, r6, #0
	cmp r0, #0
	ble _021E216A
	add r5, r7, #0
_021E2146:
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _021E216A
	mov r0, #0
	bl FUN_02002F9C
	cmp r6, r0
	bhs _021E215C
	add r6, r0, #0
_021E215C:
	add r0, r7, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r4, r4, #1
	add r5, #8
	cmp r4, r0
	blt _021E2146
_021E216A:
	add r6, #0xc
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021E2170
MOD05_021E2170: ; 0x021E2170
	push {r4, r5}
	mov r3, #0x6f
	lsl r3, r3, #2
	add r1, r3, #0
	add r2, r0, r3
	sub r1, #0x28
	str r2, [r0, r1]
	add r1, r3, #0
	mov r2, #0
	sub r1, #0x24
	str r2, [r0, r1]
	add r1, r3, #0
	ldr r2, _021E2268 ; =MOD05_021E2278
	sub r1, #0x20
	str r2, [r0, r1]
	add r2, r0, #0
	add r1, r3, #0
	add r2, #8
	sub r1, #0x1c
	str r2, [r0, r1]
	add r1, r0, #0
	add r1, #0x9b
	ldrb r2, [r1]
	add r1, r3, #0
	sub r1, #0x18
	strh r2, [r0, r1]
	add r1, r3, #0
	mov r2, #8
	sub r1, #0x16
	strh r2, [r0, r1]
	add r1, r3, #0
	mov r2, #1
	sub r1, #0x14
	strb r2, [r0, r1]
	add r1, r3, #0
	mov r4, #0xc
	sub r1, #0x13
	strb r4, [r0, r1]
	add r1, r3, #0
	mov r4, #2
	sub r1, #0x12
	strb r4, [r0, r1]
	add r1, r3, #0
	sub r1, #0x11
	ldrb r4, [r0, r1]
	mov r1, #0xf
	bic r4, r1
	orr r4, r2
	add r2, r3, #0
	sub r2, #0x11
	strb r4, [r0, r2]
	add r2, r3, #0
	sub r2, #0x11
	ldrb r5, [r0, r2]
	mov r2, #0xf0
	mov r4, #0x10
	bic r5, r2
	orr r5, r4
	add r4, r3, #0
	sub r4, #0x11
	strb r5, [r0, r4]
	add r4, r3, #0
	sub r4, #0x10
	ldrb r4, [r0, r4]
	bic r4, r1
	mov r1, #0xf
	orr r4, r1
	add r1, r3, #0
	sub r1, #0x10
	strb r4, [r0, r1]
	add r1, r3, #0
	sub r1, #0x10
	ldrb r4, [r0, r1]
	mov r1, #0x20
	bic r4, r2
	add r2, r4, #0
	orr r2, r1
	add r1, r3, #0
	sub r1, #0x10
	strb r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	mov r1, #7
	bic r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	mov r1, #0x78
	bic r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	ldr r1, _021E226C ; =0xFFFFFE7F
	and r2, r1
	mov r1, #0x80
	orr r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	ldr r1, _021E2270 ; =0xFFFF81FF
	and r2, r1
	add r1, r3, #0
	sub r1, #0xe
	strh r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xe
	ldrh r2, [r0, r1]
	ldr r1, _021E2274 ; =0xFFFF7FFF
	sub r3, #0xe
	and r1, r2
	strh r1, [r0, r3]
	pop {r4, r5}
	bx lr
	nop
_021E2268: .word MOD05_021E2278
_021E226C: .word 0xFFFFFE7F
_021E2270: .word 0xFFFF81FF
_021E2274: .word 0xFFFF7FFF

	thumb_func_start MOD05_021E2278
MOD05_021E2278: ; 0x021E2278
	push {r3, lr}
	mov r2, #2
	mvn r2, r2
	cmp r1, r2
	bne _021E228E
	mov r1, #3
	mov r2, #0xf
	mov r3, #4
	bl FUN_020013E8
	pop {r3, pc}
_021E228E:
	mov r1, #1
	mov r2, #0xf
	mov r3, #2
	bl FUN_020013E8
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E229C
MOD05_021E229C: ; 0x021E229C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r0, r5, #0
	add r0, #0x94
	ldrb r0, [r0]
	cmp r0, #0
	beq _021E22B8
	add r0, r5, #0
	add r0, #0x94
	ldrb r0, [r0]
	add r5, #0x94
	sub r0, r0, #1
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_021E22B8:
	bl FUN_0200E308
	cmp r0, #0
	beq _021E235A
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02001204
	add r4, r0, #0
	mov r0, #0x6d
	mov r1, #0xb5
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldrh r6, [r5, r1]
	ldr r0, [r5, r0]
	add r1, r5, r1
	bl FUN_0200143C
	mov r0, #0xb5
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	cmp r6, r0
	beq _021E22EE
	ldr r0, _021E235C ; =0x000005DC
	bl FUN_020054C8
_021E22EE:
	ldr r0, _021E2360 ; =0x021C48B8
	mov r1, #0x40
	ldr r0, [r0, #0x4c]
	tst r1, r0
	bne _021E230A
	mov r1, #0x80
	tst r1, r0
	bne _021E230A
	mov r1, #0x20
	tst r1, r0
	bne _021E230A
	mov r1, #0x10
	tst r0, r1
	beq _021E2310
_021E230A:
	add r0, r5, #0
	bl MOD05_021E2434
_021E2310:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _021E2320
	add r0, r0, #1
	cmp r4, r0
	beq _021E235A
	b _021E2346
_021E2320:
	add r0, r5, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021E235A
	ldr r0, _021E235C ; =0x000005DC
	bl FUN_020054C8
	add r0, r5, #0
	add r0, #0xa0
	ldr r1, _021E2364 ; =0x0000FFFE
	ldr r0, [r0]
	strh r1, [r0]
	add r0, r5, #0
	bl MOD05_021E2368
	pop {r4, r5, r6, pc}
_021E2346:
	ldr r0, _021E235C ; =0x000005DC
	bl FUN_020054C8
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0]
	strh r4, [r0]
	add r0, r5, #0
	bl MOD05_021E2368
_021E235A:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E235C: .word 0x000005DC
_021E2360: .word 0x021C48B8
_021E2364: .word 0x0000FFFE

	thumb_func_start MOD05_021E2368
MOD05_021E2368: ; 0x021E2368
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _021E23CC ; =0x000005DC
	bl FUN_020054C8
	mov r0, #0x6d
	lsl r0, r0, #2
	mov r1, #0
	ldr r0, [r6, r0]
	add r2, r1, #0
	bl FUN_02001300
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	mov r1, #0
	bl FUN_0200CCF8
	add r0, r6, #0
	add r0, #8
	bl FUN_02019178
	mov r4, #0
	add r5, r6, #0
_021E2398:
	ldr r0, [r5, #0x1c]
	bl FUN_02021A20
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x1c
	blt _021E2398
	add r0, r6, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021E23BE
	add r0, r6, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl FUN_0200A8B8
_021E23BE:
	ldr r0, [r6, #4]
	bl FUN_0200CAB4
	add r0, r6, #0
	bl FUN_02016A18
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E23CC: .word 0x000005DC

	thumb_func_start MOD05_021E23D0
MOD05_021E23D0: ; 0x021E23D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	str r1, [sp, #0xc]
	mov r0, #0x50
	mov r1, #4
	add r7, r2, #0
	bl FUN_020219F4
	add r4, r0, #0
	mov r0, #0x50
	mov r1, #4
	bl FUN_020219F4
	add r6, r0, #0
	ldr r0, [r5, #0x18]
	mov r1, #0xf
	bl FUN_02019620
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	ldr r1, [sp, #0xc]
	add r2, r4, #0
	bl FUN_0200A8E0
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	add r1, r6, #0
	add r2, r4, #0
	bl FUN_0200B7B8
	mov r3, #0
	str r3, [sp]
	str r7, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r5, #0x18]
	mov r1, #1
	add r2, r6, #0
	bl FUN_0201BD84
	add r0, r4, #0
	bl FUN_02021A20
	add r0, r6, #0
	bl FUN_02021A20
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021E2434
MOD05_021E2434: ; 0x021E2434
	push {r4, lr}
	mov r1, #0x6d
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #6
	add r1, r4, r1
	bl FUN_0200143C
	ldr r0, _021E2460 ; =0x000001BA
	ldrh r1, [r4, r0]
	add r0, #0xe2
	lsl r1, r1, #1
	add r1, r4, r1
	ldrh r1, [r1, r0]
	cmp r1, #0xff
	beq _021E245E
	add r0, r4, #0
	mov r2, #0
	bl MOD05_021E23D0
_021E245E:
	pop {r4, pc}
	.balign 4, 0
_021E2460: .word 0x000001BA

	thumb_func_start MOD05_021E2464
MOD05_021E2464: ; 0x021E2464
	push {r4, r5, lr}
	sub sp, #0x14
	mov r4, #0
	str r4, [sp]
	str r3, [sp, #4]
	ldr r3, [sp, #0x20]
	str r3, [sp, #8]
	str r4, [sp, #0xc]
	add r3, r4, #0
	str r4, [sp, #0x10]
	bl MOD05_021E1BF8
	add r5, r0, #0
	add r0, r4, #0
	add r1, r0, #0
	bl FUN_02002E4C
	lsl r1, r0, #3
	mov r0, #7
	tst r0, r1
	bne _021E2492
	lsr r4, r1, #3
	b _021E2496
_021E2492:
	lsr r0, r1, #3
	add r4, r0, #1
_021E2496:
	add r0, r5, #0
	add r0, #0x99
	ldrb r0, [r0]
	add r3, r5, #0
	add r1, r5, #0
	str r0, [sp]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0xdd
	str r0, [sp, #0x10]
	ldr r0, [r5]
	add r3, #0x98
	ldrb r3, [r3]
	ldr r0, [r0, #8]
	add r1, #8
	mov r2, #3
	bl FUN_02019064
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r2, _021E2538 ; =0x000003D9
	ldr r0, [r0, #8]
	mov r1, #3
	mov r3, #0xb
	bl FUN_0200CB00
	add r0, r5, #0
	ldr r2, _021E2538 ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xb
	bl FUN_0200CCA4
	lsl r0, r4, #0x13
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0
	add r0, #8
	mov r1, #0xf
	add r3, r2, #0
	bl FUN_020196F4
	mov r2, #0
	add r0, r5, #0
	mov r1, #0xf
	add r3, r2, #0
	bl MOD05_021E2540
	mov r1, #0x10
	add r0, r5, #0
	mov r2, #0x20
	add r3, r1, #0
	bl MOD05_021E2540
	add r0, r5, #0
	add r1, r5, #0
	add r0, #8
	add r1, #0xa8
	str r0, [r1]
	bl FUN_020191D0
	ldr r0, _021E253C ; =MOD05_021E25A4
	add r1, r5, #0
	mov r2, #0
	bl FUN_0200CA44
	str r0, [r5, #4]
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_021E2538: .word 0x000003D9
_021E253C: .word MOD05_021E25A4

	thumb_func_start MOD05_021E2540
MOD05_021E2540: ; 0x021E2540
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp, #0xc]
	add r5, r0, #0
	mov r0, #0x50
	mov r1, #4
	str r2, [sp, #0x10]
	add r7, r3, #0
	bl FUN_020219F4
	add r4, r0, #0
	mov r0, #0x50
	mov r1, #4
	bl FUN_020219F4
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	ldr r1, [sp, #0xc]
	add r2, r4, #0
	bl FUN_0200A8E0
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0]
	add r1, r6, #0
	add r2, r4, #0
	bl FUN_0200B7B8
	str r7, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	add r5, #8
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r2, r6, #0
	bl FUN_0201BD84
	add r0, r4, #0
	bl FUN_02021A20
	add r0, r6, #0
	bl FUN_02021A20
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E25A4
MOD05_021E25A4: ; 0x021E25A4
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r0, r6, #0
	add r0, #0xa0
	ldr r0, [r0]
	ldrh r1, [r0]
	ldr r0, _021E2604 ; =0x0000FFFF
	cmp r1, r0
	bne _021E2602
	add r0, r6, #0
	add r0, #0xa8
	ldr r0, [r0]
	mov r1, #0
	bl FUN_0200CCF8
	add r0, r6, #0
	add r0, #0xa8
	ldr r0, [r0]
	bl FUN_02019178
	mov r4, #0
	add r5, r6, #0
_021E25D0:
	ldr r0, [r5, #0x1c]
	bl FUN_02021A20
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x1c
	blt _021E25D0
	add r0, r6, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021E25F6
	add r0, r6, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl FUN_0200A8B8
_021E25F6:
	ldr r0, [r6, #4]
	bl FUN_0200CAB4
	add r0, r6, #0
	bl FUN_02016A18
_021E2602:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E2604: .word 0x0000FFFF

	thumb_func_start MOD05_021E2608
MOD05_021E2608: ; 0x021E2608
	cmp r0, #0x89
	bgt _021E2646
	bge _021E269E
	cmp r0, #0x68
	bgt _021E2638
	bge _021E2682
	cmp r0, #0xe
	bgt _021E2632
	add r1, r0, #0
	sub r1, #0xb
	bmi _021E26C2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E262A: ; jump table
	.short _021E26B2 - _021E262A - 2 ; case 0
	.short _021E26B6 - _021E262A - 2 ; case 1
	.short _021E26BA - _021E262A - 2 ; case 2
	.short _021E26BE - _021E262A - 2 ; case 3
_021E2632:
	cmp r0, #0x67
	beq _021E267E
	b _021E26C2
_021E2638:
	cmp r0, #0x70
	bgt _021E2640
	beq _021E268E
	b _021E26C2
_021E2640:
	cmp r0, #0x71
	beq _021E2692
	b _021E26C2
_021E2646:
	cmp r0, #0x96
	bgt _021E2668
	cmp r0, #0x8c
	blt _021E265A
	beq _021E26AA
	cmp r0, #0x8d
	beq _021E26AE
	cmp r0, #0x96
	beq _021E268A
	b _021E26C2
_021E265A:
	cmp r0, #0x8a
	bgt _021E2662
	beq _021E26A2
	b _021E26C2
_021E2662:
	cmp r0, #0x8b
	beq _021E26A6
	b _021E26C2
_021E2668:
	ldr r1, _021E26C8 ; =0x000001CD
	cmp r0, r1
	bgt _021E2676
	bge _021E2696
	cmp r0, #0xa4
	beq _021E2686
	b _021E26C2
_021E2676:
	add r1, r1, #1
	cmp r0, r1
	beq _021E269A
	b _021E26C2
_021E267E:
	mov r0, #1
	bx lr
_021E2682:
	mov r0, #0
	bx lr
_021E2686:
	mov r0, #0
	bx lr
_021E268A:
	mov r0, #1
	bx lr
_021E268E:
	mov r0, #1
	bx lr
_021E2692:
	mov r0, #0
	bx lr
_021E2696:
	mov r0, #1
	bx lr
_021E269A:
	mov r0, #0
	bx lr
_021E269E:
	mov r0, #4
	bx lr
_021E26A2:
	mov r0, #3
	bx lr
_021E26A6:
	mov r0, #2
	bx lr
_021E26AA:
	mov r0, #1
	bx lr
_021E26AE:
	mov r0, #0
	bx lr
_021E26B2:
	mov r0, #3
	bx lr
_021E26B6:
	mov r0, #2
	bx lr
_021E26BA:
	mov r0, #1
	bx lr
_021E26BE:
	mov r0, #0
	bx lr
_021E26C2:
	mov r0, #1
	bx lr
	nop
_021E26C8: .word 0x000001CD

	thumb_func_start MOD05_021E26CC
MOD05_021E26CC: ; 0x021E26CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r6, r1, #0
	bl MOD05_021E1DA8
	mov r1, #7
	tst r1, r0
	bne _021E26E2
	lsr r7, r0, #3
	b _021E26E6
_021E26E2:
	lsr r0, r0, #3
	add r7, r0, #1
_021E26E6:
	add r0, r5, #0
	add r0, #0x9b
	ldrb r0, [r0]
	add r1, r6, #0
	str r0, [sp, #0x14]
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	bl _s32_div_f
	cmp r1, #0
	beq _021E270A
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_021E270A:
	add r0, r5, #0
	add r0, #0x99
	ldrb r0, [r0]
	add r3, r5, #0
	add r1, r5, #0
	str r0, [sp]
	add r0, r7, #0
	mul r0, r6
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	lsl r0, r4, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x3d
	str r0, [sp, #0x10]
	ldr r0, [r5]
	add r3, #0x98
	ldrb r3, [r3]
	ldr r0, [r0, #8]
	add r1, #8
	mov r2, #3
	bl FUN_02019064
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r2, _021E2794 ; =0x000003D9
	ldr r0, [r0, #8]
	mov r1, #3
	mov r3, #0xb
	bl FUN_0200CB00
	add r0, r5, #0
	ldr r2, _021E2794 ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xb
	bl FUN_0200CCA4
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl MOD05_021E279C
	add r1, r5, #0
	add r1, #0x96
	add r0, r5, #0
	ldrb r1, [r1]
	add r0, #0xa4
	mov r2, #4
	bl FUN_02001C34
	add r1, r5, #0
	add r1, #0xb0
	str r0, [r1]
	ldr r0, _021E2798 ; =MOD05_021E1E58
	add r1, r5, #0
	mov r2, #0
	bl FUN_0200CA44
	str r0, [r5, #4]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E2794: .word 0x000003D9
_021E2798: .word MOD05_021E1E58

	thumb_func_start MOD05_021E279C
MOD05_021E279C: ; 0x021E279C
	push {r3, r4}
	add r4, r0, #0
	add r3, r0, #0
	add r4, #0xb4
	add r3, #0xa4
	str r4, [r3]
	add r4, r0, #0
	add r3, r0, #0
	add r4, #8
	add r3, #0xa8
	str r4, [r3]
	add r3, r0, #0
	mov r4, #0
	add r3, #0xac
	strb r4, [r3]
	add r3, r0, #0
	add r3, #0xad
	strb r1, [r3]
	add r1, r0, #0
	add r1, #0xae
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0xaf
	ldrb r2, [r1]
	mov r1, #0xf
	bic r2, r1
	add r1, r0, #0
	add r1, #0xaf
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0xaf
	ldrb r2, [r1]
	mov r1, #0x30
	add r0, #0xaf
	bic r2, r1
	strb r2, [r0]
	pop {r3, r4}
	bx lr

	thumb_func_start MOD05_021E27E8
MOD05_021E27E8: ; 0x021E27E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	mov r0, #4
	mov r1, #1
	bl FUN_02018FF4
	add r4, r0, #0
	str r6, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	add r1, r4, #0
	mov r2, #3
	add r3, r7, #0
	bl FUN_02019064
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	ldr r2, _021E2888 ; =0x000003D9
	mov r1, #3
	mov r3, #0xb
	bl FUN_0200CB00
	ldr r2, _021E2888 ; =0x000003D9
	add r0, r4, #0
	mov r1, #1
	mov r3, #0xb
	bl FUN_0200CCA4
	add r0, r4, #0
	mov r1, #0xf
	bl FUN_02019620
	mov r2, #0x7a
	mov r0, #0
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #4
	bl FUN_0200A86C
	mov r1, #0x12
	add r7, r0, #0
	bl FUN_0200A914
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl FUN_0201BD84
	add r0, r7, #0
	bl FUN_0200A8B8
	add r0, r6, #0
	bl FUN_02021A20
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021E28A0
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E2888: .word 0x000003D9

	thumb_func_start MOD05_021E288C
MOD05_021E288C: ; 0x021E288C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl FUN_0200CCF8
	add r0, r4, #0
	mov r1, #1
	bl FUN_020191A4
	pop {r4, pc}

	thumb_func_start MOD05_021E28A0
MOD05_021E28A0: ; 0x021E28A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #0x50
	str r0, [sp]
	mov r3, #0x10
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #0
	str r3, [sp, #4]
	bl FUN_020196F4
	mov r2, #0x7a
	mov r0, #0
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #4
	bl FUN_0200A86C
	str r0, [sp, #0xc]
	mov r0, #4
	bl FUN_0200AA80
	add r6, r0, #0
	mov r0, #0x10
	mov r1, #4
	bl FUN_020219F4
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	mov r1, #0x13
	bl FUN_0200A914
	str r0, [sp, #0x10]
	ldr r0, [r7, #0xc]
	bl FUN_020238F4
	bl FUN_02023A10
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0
	mov r3, #6
	bl FUN_0200AD38
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	add r1, r4, #0
	bl FUN_0200B7B8
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl FUN_02002E14
	mov r1, #0x50
	sub r3, r1, r0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	add r0, r5, #0
	add r2, r4, #0
	str r1, [sp, #8]
	bl FUN_0201BD84
	ldr r0, [sp, #0x10]
	bl FUN_02021A20
	add r0, r4, #0
	bl FUN_02021A20
	add r0, r6, #0
	bl FUN_0200AB18
	ldr r0, [sp, #0xc]
	bl FUN_0200A8B8
	add r0, r5, #0
	bl FUN_02019220
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021E2950
MOD05_021E2950: ; 0x021E2950
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	mov r0, #4
	mov r1, #1
	bl FUN_02018FF4
	add r4, r0, #0
	str r6, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x29
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	add r1, r4, #0
	mov r2, #3
	add r3, r7, #0
	bl FUN_02019064
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	ldr r2, _021E29B0 ; =0x000003D9
	mov r1, #3
	mov r3, #0xb
	bl FUN_0200CB00
	ldr r2, _021E29B0 ; =0x000003D9
	add r0, r4, #0
	mov r1, #1
	mov r3, #0xb
	bl FUN_0200CCA4
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021E29C8
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E29B0: .word 0x000003D9

	thumb_func_start MOD05_021E29B4
MOD05_021E29B4: ; 0x021E29B4
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl FUN_0200CCF8
	add r0, r4, #0
	mov r1, #1
	bl FUN_020191A4
	pop {r4, pc}

	thumb_func_start MOD05_021E29C8
MOD05_021E29C8: ; 0x021E29C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	str r1, [sp, #0xc]
	add r0, r1, #0
	mov r1, #0xf
	bl FUN_02019620
	ldr r2, _021E2A6C ; =0x00000141
	mov r0, #0
	mov r1, #0x1a
	mov r3, #4
	bl FUN_0200A86C
	add r7, r0, #0
	mov r0, #4
	bl FUN_0200AA80
	add r5, r0, #0
	mov r0, #0x10
	mov r1, #4
	bl FUN_020219F4
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #0xc5
	bl FUN_0200A914
	str r0, [sp, #0x10]
	ldr r0, [r6, #0xc]
	bl FUN_0202390C
	bl FUN_02028930
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	mov r3, #5
	bl FUN_0200AD38
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl FUN_0200B7B8
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl FUN_02002E14
	mov r1, #0x50
	sub r3, r1, r0
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r2, r4, #0
	str r1, [sp, #8]
	bl FUN_0201BD84
	ldr r0, [sp, #0x10]
	bl FUN_02021A20
	add r0, r4, #0
	bl FUN_02021A20
	add r0, r5, #0
	bl FUN_0200AB18
	add r0, r7, #0
	bl FUN_0200A8B8
	ldr r0, [sp, #0xc]
	bl FUN_02019220
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021E2A6C: .word 0x00000141

	thumb_func_start MOD05_021E2A70
MOD05_021E2A70: ; 0x021E2A70
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	mov r0, #4
	mov r1, #1
	bl FUN_02018FF4
	add r4, r0, #0
	str r6, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x29
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	add r1, r4, #0
	mov r2, #3
	add r3, r7, #0
	bl FUN_02019064
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	ldr r2, _021E2AD0 ; =0x000003D9
	mov r1, #3
	mov r3, #0xb
	bl FUN_0200CB00
	ldr r2, _021E2AD0 ; =0x000003D9
	add r0, r4, #0
	mov r1, #1
	mov r3, #0xb
	bl FUN_0200CCA4
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021E2AD4
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E2AD0: .word 0x000003D9

	thumb_func_start MOD05_021E2AD4
MOD05_021E2AD4: ; 0x021E2AD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	str r1, [sp, #0xc]
	add r0, r1, #0
	mov r1, #0xf
	bl FUN_02019620
	ldr r2, _021E2B7C ; =0x00000141
	mov r0, #0
	mov r1, #0x1a
	mov r3, #4
	bl FUN_0200A86C
	add r7, r0, #0
	mov r0, #4
	bl FUN_0200AA80
	add r5, r0, #0
	mov r0, #0x10
	mov r1, #4
	bl FUN_020219F4
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #0xe6
	bl FUN_0200A914
	str r0, [sp, #0x10]
	ldr r0, [r6, #0xc]
	bl FUN_0202A8D8
	mov r1, #0
	add r2, r1, #0
	bl FUN_0202A3B4
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	mov r3, #5
	bl FUN_0200AD38
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl FUN_0200B7B8
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl FUN_02002E14
	mov r1, #0x50
	sub r3, r1, r0
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r2, r4, #0
	str r1, [sp, #8]
	bl FUN_0201BD84
	ldr r0, [sp, #0x10]
	bl FUN_02021A20
	add r0, r4, #0
	bl FUN_02021A20
	add r0, r5, #0
	bl FUN_0200AB18
	add r0, r7, #0
	bl FUN_0200A8B8
	ldr r0, [sp, #0xc]
	bl FUN_02019220
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021E2B7C: .word 0x00000141

	thumb_func_start MOD05_021E2B80
MOD05_021E2B80: ; 0x021E2B80
	add r2, r0, #0
	add r2, #0x97
	ldrb r3, [r2]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #0x40
	lsl r1, r1, #0x1f
	bic r3, r2
	lsr r1, r1, #0x19
	orr r1, r3
	add r0, #0x97
	strb r1, [r0]
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021E2B9C
MOD05_021E2B9C: ; 0x021E2B9C
	add r2, r0, #0
	add r2, #0x97
	ldrb r3, [r2]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #0x80
	lsl r1, r1, #0x1f
	bic r3, r2
	lsr r1, r1, #0x18
	orr r1, r3
	add r0, #0x97
	strb r1, [r0]
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021E2BB8
MOD05_021E2BB8: ; 0x021E2BB8
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl MOD05_021E2D00
	strb r0, [r4]
	mov r0, #0
	strb r0, [r4, #1]
	mov r0, #1
	strb r0, [r4, #2]
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E2BD0
MOD05_021E2BD0: ; 0x021E2BD0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	str r3, [sp, #4]
	add r0, #0x80
	add r6, r1, #0
	ldr r0, [r0]
	add r1, sp, #8
	add r7, r2, #0
	ldr r4, [sp, #0x38]
	bl MOD05_021E2D14
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	add r1, sp, #8
	bl MOD05_021E2D9C
	add r0, sp, #8
	add r1, r6, #0
	add r2, r7, #0
	bl MOD05_021E2DD4
	cmp r4, #0
	bne _021E2C10
	add r0, r5, #0
	bl MOD05_021E2D00
	add r2, r0, #0
	mov r0, #0
	mov r1, #1
	b _021E2C16
_021E2C10:
	ldrb r2, [r4]
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
_021E2C16:
	str r0, [sp]
	ldr r3, [sp, #4]
	add r0, sp, #8
	bl MOD05_021E2E40
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021E2C24
MOD05_021E2C24: ; 0x021E2C24
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r0, #0x80
	add r4, r1, #0
	ldr r0, [r0]
	add r1, sp, #0
	add r6, r2, #0
	bl MOD05_021E2D14
	add r5, #0x80
	ldr r0, [r5]
	add r1, sp, #0
	bl MOD05_021E2D9C
	add r0, sp, #0
	add r1, r4, #0
	add r2, r6, #0
	bl MOD05_021E2DD4
	add r0, sp, #0
	mov r1, #1
	bl MOD05_021E2E68
	add sp, #0x18
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021E2C58
MOD05_021E2C58: ; 0x021E2C58
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r0, #0x80
	add r4, r1, #0
	ldr r0, [r0]
	add r1, sp, #4
	add r6, r2, #0
	add r7, r3, #0
	bl MOD05_021E2D14
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	add r1, sp, #4
	bl MOD05_021E2D9C
	add r0, sp, #0x20
	ldrh r0, [r0, #0x10]
	add r1, r4, #0
	add r2, r6, #0
	str r0, [sp]
	add r0, sp, #4
	add r3, r7, #0
	bl MOD05_021E2DF0
	add r0, sp, #0x20
	ldrb r0, [r0, #0x14]
	cmp r0, #0xff
	beq _021E2CB0
	add r0, r5, #0
	bl MOD05_021E2D00
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	add r3, sp, #0x20
	ldrb r3, [r3, #0x14]
	add r0, sp, #4
	mov r1, #1
	bl MOD05_021E2E40
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021E2CB0:
	add r0, sp, #4
	mov r1, #1
	bl MOD05_021E2E68
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021E2CBC
MOD05_021E2CBC: ; 0x021E2CBC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r0, #0x80
	add r4, r2, #0
	ldr r0, [r0]
	add r2, sp, #4
	add r6, r3, #0
	bl MOD05_021E2D5C
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0]
	add r1, sp, #4
	bl MOD05_021E2D9C
	ldr r1, [r5, #0x78]
	add r0, sp, #4
	add r2, r4, #0
	bl MOD05_021E2DD4
	add r0, r5, #0
	bl MOD05_021E2D00
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, sp, #4
	mov r1, #1
	add r3, r6, #0
	bl MOD05_021E2E40
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}

	thumb_func_start MOD05_021E2D00
MOD05_021E2D00: ; 0x021E2D00
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bl LoadPlayerDataAddress
	bl FUN_02024FF4
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E2D14
MOD05_021E2D14: ; 0x021E2D14
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x10
	add r5, r0, #0
	bl FUN_02039438
	ldr r0, [r0]
	mov r1, #0x11
	str r0, [r4]
	add r0, r5, #0
	bl FUN_02039438
	ldr r0, [r0]
	mov r1, #0xf
	str r0, [r4, #4]
	add r0, r5, #0
	bl FUN_02039438
	ldr r0, [r0]
	mov r1, #1
	str r0, [r4, #8]
	add r0, r5, #0
	bl FUN_02039438
	str r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #6
	bl FUN_02039438
	str r0, [r4, #0x10]
	add r0, r5, #0
	mov r1, #3
	bl FUN_02039438
	str r0, [r4, #0x14]
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021E2D5C
MOD05_021E2D5C: ; 0x021E2D5C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #0x10
	add r5, r0, #0
	add r4, r2, #0
	bl FUN_02039438
	ldr r0, [r0]
	mov r1, #0x11
	str r0, [r4]
	add r0, r5, #0
	bl FUN_02039438
	ldr r0, [r0]
	mov r1, #1
	str r0, [r4, #4]
	str r6, [r4, #8]
	add r0, r5, #0
	bl FUN_02039438
	str r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #6
	bl FUN_02039438
	str r0, [r4, #0x10]
	add r0, r5, #0
	mov r1, #3
	bl FUN_02039438
	str r0, [r4, #0x14]
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021E2D9C
MOD05_021E2D9C: ; 0x021E2D9C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	ldrb r0, [r0]
	cmp r0, #0
	bne _021E2DC8
	ldr r0, [r5, #8]
	ldr r1, [r4, #0xc]
	mov r2, #3
	bl FUN_020545B8
	ldr r0, [r5, #0xc]
	bl LoadPlayerDataAddress
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_02054608
	ldr r0, [r4, #0x10]
	mov r1, #1
	strb r1, [r0]
_021E2DC8:
	ldr r0, [r4, #0xc]
	mov r1, #0xf
	bl FUN_02019620
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E2DD4
MOD05_021E2DD4: ; 0x021E2DD4
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	ldr r2, [r4, #4]
	bl FUN_0200A8E0
	ldr r0, [r4, #8]
	ldr r1, [r4]
	ldr r2, [r4, #4]
	bl FUN_0200B7B8
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E2DF0
MOD05_021E2DF0: ; 0x021E2DF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r0, sp, #0
	add r7, r3, #0
	bl FUN_02013724
	add r0, sp, #0
	add r1, r4, #0
	add r2, r6, #0
	bl FUN_02013980
	add r0, sp, #0
	mov r1, #0
	add r2, r7, #0
	bl FUN_02013998
	add r2, sp, #0x10
	ldrh r2, [r2, #0x10]
	add r0, sp, #0
	mov r1, #1
	bl FUN_02013998
	add r0, sp, #0
	mov r1, #0x20
	bl FUN_020137D4
	add r4, r0, #0
	ldr r0, [r5]
	add r1, r4, #0
	bl FUN_02021A74
	add r0, r4, #0
	bl FUN_02021A20
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E2E40
MOD05_021E2E40: ; 0x021E2E40
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	lsl r0, r3, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x18]
	add r5, r2, #0
	str r0, [sp, #4]
	add r6, r1, #0
	ldr r0, [r4, #0xc]
	ldr r1, [r4]
	add r2, r6, #0
	add r3, r5, #0
	bl FUN_02054690
	ldr r1, [r4, #0x14]
	strb r0, [r1]
	add sp, #8
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021E2E68
MOD05_021E2E68: ; 0x021E2E68
	push {r3, r4, lr}
	sub sp, #0xc
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	add r4, r0, #0
	str r3, [sp, #8]
	ldr r0, [r4, #0xc]
	ldr r2, [r4]
	bl FUN_0201BD84
	ldr r1, [r4, #0x14]
	strb r0, [r1]
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E2E88
MOD05_021E2E88: ; 0x021E2E88
	push {r4, r5, r6, lr}
	lsl r6, r1, #5
	add r5, r0, #0
	add r4, r2, #0
	add r1, r6, #0
	bl DC_FlushRange
	add r0, r5, #0
	lsl r1, r4, #5
	add r2, r6, #0
	bl GX_LoadBGPltt
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E2EA4
MOD05_021E2EA4: ; 0x021E2EA4
	push {r3, r4, lr}
	sub sp, #0x14
	mov r3, #0
	add r4, r0, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r2, #3
	add r1, r4, #0
	str r2, [sp, #8]
	mov r0, #7
	str r0, [sp, #0xc]
	ldr r0, _021E2EDC ; =0x000002CD
	add r1, #0x20
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x1c]
	bl FUN_02019064
	mov r0, #0
	str r0, [sp]
	ldr r2, _021E2EE0 ; =0x000003CF
	add r0, r4, #0
	mov r1, #3
	mov r3, #7
	bl MOD05_021E2EE4
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
_021E2EDC: .word 0x000002CD
_021E2EE0: .word 0x000003CF

	thumb_func_start MOD05_021E2EE4
MOD05_021E2EE4: ; 0x021E2EE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	ldr r2, _021E2F2C ; =0x021FD610
	add r0, #0x38
	mov r1, #4
	add r7, r3, #0
	bl FUN_0201AB28
	str r0, [r5, #0x34]
	add r3, r0, #0
	str r4, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r5, #0x1c]
	ldr r3, [r3, #0x10]
	add r1, r6, #0
	bl FUN_02017E14
	ldr r2, _021E2F30 ; =0x021FD62C
	add r0, sp, #4
	mov r1, #4
	bl FUN_0201AB44
	ldr r0, [r0, #0xc]
	mov r1, #1
	add r2, r7, #0
	bl MOD05_021E2E88
	ldr r0, [sp, #4]
	bl FUN_02016A18
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E2F2C: .word 0x021FD610
_021E2F30: .word 0x021FD62C

	thumb_func_start MOD05_021E2F34
MOD05_021E2F34: ; 0x021E2F34
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r2, r1, #0
	add r2, #8
	add r5, r0, #0
	asr r0, r2, #2
	lsr r0, r0, #0x1d
	add r0, r2, r0
	asr r0, r0, #3
	lsl r0, r0, #3
	sub r2, r0, r1
	lsr r0, r2, #0x1f
	add r0, r2, r0
	asr r0, r0, #1
	add r2, r0, #4
	cmp r2, #8
	blt _021E2F5A
	mov r3, #0
	b _021E2F6C
_021E2F5A:
	mov r0, #8
	sub r0, r0, r2
	lsl r0, r0, #1
	add r2, r0, #7
	asr r0, r2, #2
	lsr r0, r0, #0x1d
	add r0, r2, r0
	lsl r0, r0, #0x15
	lsr r3, r0, #0x18
_021E2F6C:
	cmp r1, #0
	bgt _021E2F76
	mov r0, #0
	str r0, [sp, #0x18]
	b _021E2F92
_021E2F76:
	add r2, r1, #0
	add r2, #8
	asr r0, r2, #2
	lsr r0, r0, #0x1d
	add r0, r2, r0
	asr r0, r0, #3
	add r0, r0, r3
	str r0, [sp, #0x18]
	lsl r0, r0, #3
	add r0, #8
	sub r1, r0, r1
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
_021E2F92:
	add r1, r0, #4
	add r0, r5, #0
	add r0, #0x30
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x20
	mov r1, #0
	bl FUN_02019620
	mov r2, #8
	str r2, [sp]
	add r0, r5, #0
	str r2, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	ldr r1, [r5, #0x34]
	add r0, #0x20
	ldr r1, [r1, #0x14]
	bl FUN_02019658
	ldr r0, [sp, #0x18]
	mov r1, #8
	add r0, r0, #1
	lsl r4, r0, #3
	str r1, [sp]
	lsl r0, r4, #0x10
	str r1, [sp, #4]
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r3, #0
	str r3, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r1, [r5, #0x34]
	add r0, r5, #0
	ldr r1, [r1, #0x14]
	add r0, #0x20
	mov r2, #0x18
	bl FUN_02019658
	mov r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [r5, #0x34]
	add r0, r5, #0
	ldr r1, [r1, #0x14]
	add r0, #0x20
	mov r2, #0x38
	bl FUN_02019658
	mov r1, #8
	str r1, [sp]
	lsl r0, r4, #0x10
	str r1, [sp, #4]
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r1, [r5, #0x34]
	add r0, r5, #0
	ldr r1, [r1, #0x14]
	add r0, #0x20
	mov r2, #0x40
	mov r3, #0
	bl FUN_02019658
	mov r1, #8
	str r1, [sp]
	str r1, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r1, [r5, #0x34]
	add r0, r5, #0
	ldr r1, [r1, #0x14]
	add r0, #0x20
	mov r2, #0x20
	bl FUN_02019658
	mov r1, #8
	str r1, [sp]
	lsl r0, r4, #0x10
	str r1, [sp, #4]
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r1, [r5, #0x34]
	add r0, r5, #0
	ldr r1, [r1, #0x14]
	add r0, #0x20
	mov r2, #0x30
	mov r3, #0
	bl FUN_02019658
	ldr r0, [sp, #0x18]
	mov r7, #0
	cmp r0, #0
	ble _021E30F2
	add r6, r5, #0
	add r6, #0x20
_021E3078:
	add r0, r7, #1
	lsl r4, r0, #3
	mov r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [r5, #0x34]
	add r0, r6, #0
	ldr r1, [r1, #0x14]
	mov r2, #0x10
	mov r3, #0
	bl FUN_02019658
	mov r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [r5, #0x34]
	add r0, r6, #0
	ldr r1, [r1, #0x14]
	mov r2, #0x48
	mov r3, #0
	bl FUN_02019658
	mov r0, #8
	str r0, [sp]
	str r0, [sp, #4]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [r5, #0x34]
	add r0, r6, #0
	ldr r1, [r1, #0x14]
	mov r2, #0x28
	mov r3, #0
	bl FUN_02019658
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp, #0x18]
	cmp r7, r0
	blt _021E3078
_021E30F2:
	add r5, #0x20
	add r0, r5, #0
	bl FUN_020191D0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E3100
MOD05_021E3100: ; 0x021E3100
	mov r1, #0
	str r1, [r0]
	strb r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	strh r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	bx lr

	thumb_func_start MOD05_021E3114
MOD05_021E3114: ; 0x021E3114
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl MOD05_021E3100
	str r4, [r5, #0x1c]
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E3124
MOD05_021E3124: ; 0x021E3124
	push {r4, lr}
	add r4, r1, #0
	ldrb r0, [r4, #4]
	cmp r0, #3
	bhi _021E31D0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E313A: ; jump table
	.short _021E31D0 - _021E313A - 2 ; case 0
	.short _021E3142 - _021E313A - 2 ; case 1
	.short _021E3180 - _021E313A - 2 ; case 2
	.short _021E316A - _021E313A - 2 ; case 3
_021E3142:
	ldr r0, [r4, #0xc]
	sub r0, r0, #4
	str r0, [r4, #0xc]
	bpl _021E314E
	mov r0, #0
	str r0, [r4, #0xc]
_021E314E:
	mov r1, #3
	ldr r0, [r4, #0x1c]
	ldr r3, [r4, #0xc]
	add r2, r1, #0
	bl FUN_020179E0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021E31D0
	mov r0, #0
	strh r0, [r4, #0x10]
	mov r0, #3
	strb r0, [r4, #4]
	pop {r4, pc}
_021E316A:
	ldrh r0, [r4, #0x10]
	add r0, r0, #1
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #0x10]
	cmp r0, #0x3c
	blo _021E31D0
	mov r0, #0
	strh r0, [r4, #0x10]
	mov r0, #2
	strb r0, [r4, #4]
	pop {r4, pc}
_021E3180:
	ldr r0, [r4, #0xc]
	add r0, r0, #4
	str r0, [r4, #0xc]
	cmp r0, #0x26
	ble _021E318E
	mov r0, #0x26
	str r0, [r4, #0xc]
_021E318E:
	mov r1, #3
	ldr r0, [r4, #0x1c]
	ldr r3, [r4, #0xc]
	add r2, r1, #0
	bl FUN_020179E0
	ldr r0, [r4, #0xc]
	cmp r0, #0x26
	bne _021E31D0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021E31CA
	mov r0, #0
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x40]
	bl FUN_02064E4C
	add r1, r0, #0
	add r0, r4, #0
	bl MOD05_021E2F34
	ldr r1, [r4, #0x40]
	add r0, r4, #0
	bl MOD05_021E31D4
	mov r0, #1
	strb r0, [r4, #4]
	pop {r4, pc}
_021E31CA:
	add r0, r4, #0
	bl MOD05_021E32F0
_021E31D0:
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E31D4
MOD05_021E31D4: ; 0x021E31D4
	push {r3, lr}
	sub sp, #0x10
	add r3, r0, #0
	mov r0, #3
	add r2, r1, #0
	str r0, [sp]
	mov r1, #0
	ldr r0, _021E31FC ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r3, #0
	str r1, [sp, #0xc]
	add r3, #0x30
	ldrb r3, [r3]
	add r0, #0x20
	bl FUN_0201BDE0
	add sp, #0x10
	pop {r3, pc}
	nop
_021E31FC: .word 0x00010200

	thumb_func_start MOD05_021E3200
MOD05_021E3200: ; 0x021E3200
	mov r1, #2
	strb r1, [r0, #4]
	mov r1, #0
	strh r1, [r0, #0x10]
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021E320C
MOD05_021E320C: ; 0x021E320C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #4
	mov r1, #0x44
	bl FUN_02016998
	add r4, r0, #0
	mov r0, #0x16
	mov r1, #4
	bl FUN_020219F4
	str r0, [r4, #0x40]
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021E3114
	add r0, r4, #0
	bl MOD05_021E2EA4
	ldr r2, _021E3244 ; =0x0000017E
	mov r0, #1
	mov r1, #0x1a
	mov r3, #4
	bl FUN_0200A86C
	str r0, [r4, #0x3c]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E3244: .word 0x0000017E

	thumb_func_start MOD05_021E3248
MOD05_021E3248: ; 0x021E3248
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	bl FUN_0200A8B8
	add r0, r4, #0
	add r0, #0x20
	bl FUN_02019178
	ldr r0, [r4, #0x40]
	bl FUN_02021A20
	ldr r0, [r4, #0x38]
	bl FUN_02016A18
	add r0, r4, #0
	bl FUN_02016A18
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E3270
MOD05_021E3270: ; 0x021E3270
	push {r4, lr}
	add r4, r0, #0
	str r1, [r4, #0x18]
	ldr r1, [r4]
	cmp r1, #0
	bne _021E32BC
	mov r0, #1
	str r0, [r4]
	mov r1, #3
	ldr r0, [r4, #0x1c]
	add r2, r1, #0
	mov r3, #0x26
	bl FUN_020179E0
	mov r0, #0x26
	str r0, [r4, #0xc]
	ldr r0, _021E32EC ; =MOD05_021E3124
	add r1, r4, #0
	mov r2, #0
	bl FUN_0200CA44
	str r0, [r4, #8]
	mov r0, #1
	strb r0, [r4, #4]
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x40]
	bl FUN_02064E4C
	add r1, r0, #0
	add r0, r4, #0
	bl MOD05_021E2F34
	ldr r1, [r4, #0x40]
	add r0, r4, #0
	bl MOD05_021E31D4
	pop {r4, pc}
_021E32BC:
	ldrb r1, [r4, #4]
	cmp r1, #3
	bhi _021E32E6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E32CE: ; jump table
	.short _021E32E6 - _021E32CE - 2 ; case 0
	.short _021E32D6 - _021E32CE - 2 ; case 1
	.short _021E32E0 - _021E32CE - 2 ; case 2
	.short _021E32D6 - _021E32CE - 2 ; case 3
_021E32D6:
	bl MOD05_021E3200
	mov r0, #1
	str r0, [r4, #0x14]
	pop {r4, pc}
_021E32E0:
	mov r0, #1
	str r0, [r4, #0x14]
	pop {r4, pc}
_021E32E6:
	bl ErrorHandling
	pop {r4, pc}
	.balign 4, 0
_021E32EC: .word MOD05_021E3124

	thumb_func_start MOD05_021E32F0
MOD05_021E32F0: ; 0x021E32F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021E32FE
	bl FUN_0200CAB4
_021E32FE:
	add r0, r4, #0
	add r0, #0x20
	bl FUN_02019570
	mov r1, #3
	ldr r0, [r4, #0x1c]
	add r2, r1, #0
	mov r3, #0
	bl FUN_020179E0
	ldr r1, [r4, #0x1c]
	add r0, r4, #0
	bl MOD05_021E3114
	pop {r4, pc}

	thumb_func_start MOD05_021E331C
MOD05_021E331C: ; 0x021E331C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r0, [r0]
	bl FUN_02034944
	cmp r0, #0
	bne _021E333E
	ldr r0, [r4, #0x1c]
	ldr r0, [r0]
	bl FUN_02034824
	add r1, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #8]
	bl MOD05_021E3270
_021E333E:
	pop {r4, pc}

	thumb_func_start MOD05_021E3340
MOD05_021E3340: ; 0x021E3340
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	bl FUN_02046528
	add r5, r0, #0
	add r0, r4, #0
	bl FUN_0204652C
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #4
	bhi _021E3414
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E3366: ; jump table
	.short _021E3370 - _021E3366 - 2 ; case 0
	.short _021E3388 - _021E3366 - 2 ; case 1
	.short _021E33A0 - _021E3366 - 2 ; case 2
	.short _021E33E4 - _021E3366 - 2 ; case 3
	.short _021E33FE - _021E3366 - 2 ; case 4
_021E3370:
	mov r0, #2
	add r1, r0, #0
	str r0, [sp]
	sub r1, #0x12
	mov r2, #0
	mov r3, #0x3f
	bl FUN_0200A208
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E3414
_021E3388:
	mov r0, #2
	bl FUN_0200A344
	cmp r0, #0
	beq _021E3414
	ldr r0, [r5, #8]
	bl FUN_022524F4
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E3414
_021E33A0:
	ldr r0, [r5, #8]
	bl FUN_02252504
	cmp r0, #0
	beq _021E3414
	ldr r0, [r5, #0xc]
	bl FUN_0204C1A8
	add r6, r0, #0
	ldr r0, _021E341C ; =0x00000013
	bl FUN_02005F60
	ldr r0, _021E3420 ; =0x00000014
	mov r1, #2
	bl FUN_02005FDC
	add r0, r6, #0
	bl FUN_0204BEB8
	mov r0, #1
	bl FUN_0200A03C
	str r0, [sp]
	ldr r1, [r5, #4]
	ldr r2, [r5, #0xc]
	ldr r3, [r5, #8]
	add r0, r5, #0
	add r1, #0x14
	bl FUN_02252448
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E3414
_021E33E4:
	mov r1, #0
	mov r0, #2
	add r2, r1, #0
	str r0, [sp]
	mov r0, #4
	sub r2, #0x10
	mov r3, #0x3f
	bl FUN_0200A208
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E3414
_021E33FE:
	mov r0, #2
	bl FUN_0200A344
	cmp r0, #0
	beq _021E3414
	add r0, r4, #0
	bl FUN_02016A18
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021E3414:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021E341C: .word 0x00000013
_021E3420: .word 0x00000014

	thumb_func_start MOD05_021E3424
MOD05_021E3424: ; 0x021E3424
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xb
	mov r1, #4
	bl FUN_020169D8
	add r2, r0, #0
	mov r0, #0
	str r0, [r2]
	ldr r1, _021E3440 ; =MOD05_021E3340
	add r0, r4, #0
	bl FUN_0204640C
	pop {r4, pc}
	.balign 4, 0
_021E3440: .word MOD05_021E3340

	thumb_func_start MOD05_021E3444
MOD05_021E3444: ; 0x021E3444
	push {r3, r4, r5, lr}
	add r5, r1, #0
	lsl r1, r0, #2
	ldr r0, _021E3470 ; =0x021F74E8
	add r4, r2, #0
	ldr r0, [r0, r1]
	mov r1, #0x20
	mov r2, #5
	mov r3, #4
	bl FUN_020061E8
	bl FUN_0201B6C8
	str r5, [r0, #0x10]
	str r4, [r0, #0x14]
	cmp r4, #0
	beq _021E346A
	mov r1, #0
	str r1, [r4]
_021E346A:
	mov r1, #0
	str r1, [r0, #0x18]
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E3470: .word 0x021F74E8

	thumb_func_start MOD05_021E3474
MOD05_021E3474: ; 0x021E3474
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #4
	mov r1, #0x4c
	str r2, [sp]
	add r5, r3, #0
	bl FUN_02016998
	mov r1, #0
	mov r2, #0x4c
	add r4, r0, #0
	bl Call_FillMemWithValue
	ldr r0, _021E34B4 ; =MOD05_021E34B8
	add r1, r4, #0
	mov r2, #5
	bl FUN_0200CA44
	str r5, [r4, #0x48]
	cmp r5, #0
	beq _021E34A4
	mov r0, #0
	str r0, [r5]
_021E34A4:
	str r6, [r4, #0xc]
	ldr r0, [sp]
	str r7, [r4, #0x10]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x18]
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E34B4: .word MOD05_021E34B8

	thumb_func_start MOD05_021E34B8
MOD05_021E34B8: ; 0x021E34B8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r1, [r4]
	cmp r1, #5
	bhi _021E359E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E34D0: ; jump table
	.short _021E34DC - _021E34D0 - 2 ; case 0
	.short _021E3514 - _021E34D0 - 2 ; case 1
	.short _021E352E - _021E34D0 - 2 ; case 2
	.short _021E3542 - _021E34D0 - 2 ; case 3
	.short _021E355C - _021E34D0 - 2 ; case 4
	.short _021E3580 - _021E34D0 - 2 ; case 5
_021E34DC:
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _021E34F6
	mov r0, #8
	str r0, [sp]
	add r0, r4, #0
	ldr r2, [r4, #0x14]
	add r0, #0x30
	mov r1, #0
	mov r3, #2
	bl MOD05_021E372C
	b _021E350C
_021E34F6:
	cmp r0, #2
	bne _021E350C
	mov r0, #8
	str r0, [sp]
	add r0, r4, #0
	ldr r2, [r4, #0x14]
	add r0, #0x30
	mov r1, #0
	mov r3, #1
	bl MOD05_021E372C
_021E350C:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E359E
_021E3514:
	mov r0, #3
	str r0, [sp]
	add r0, r4, #0
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0xc]
	add r0, #0x18
	mov r1, #0
	bl MOD05_021E372C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E359E
_021E352E:
	add r0, r4, #0
	add r0, #0x18
	bl MOD05_021E3738
	cmp r0, #0
	beq _021E359E
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E359E
_021E3542:
	mov r0, #3
	str r0, [sp]
	add r0, r4, #0
	ldr r1, [r4, #0x10]
	ldr r3, [r4, #0xc]
	add r0, #0x18
	mov r2, #0
	bl MOD05_021E372C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E359E
_021E355C:
	add r0, r4, #0
	add r0, #0x18
	bl MOD05_021E3738
	cmp r0, #0
	beq _021E359E
	ldr r0, [r4, #8]
	add r1, r0, #1
	str r1, [r4, #8]
	ldr r0, [r4, #4]
	cmp r1, r0
	bne _021E357A
	mov r0, #5
	str r0, [r4]
	b _021E359E
_021E357A:
	mov r0, #1
	str r0, [r4]
	b _021E359E
_021E3580:
	mov r1, #0
	str r1, [r4]
	str r1, [r4, #8]
	ldr r2, [r4, #0x48]
	cmp r2, #0
	beq _021E3590
	mov r1, #1
	str r1, [r2]
_021E3590:
	bl FUN_0200CAB4
	add r0, r4, #0
	bl FUN_02016A18
	add sp, #4
	pop {r3, r4, pc}
_021E359E:
	add r4, #0x30
	add r0, r4, #0
	bl MOD05_021E3738
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E35AC
MOD05_021E35AC: ; 0x021E35AC
	ldr r0, [r0, #0x18]
	bx lr

	thumb_func_start MOD05_021E35B0
MOD05_021E35B0: ; 0x021E35B0
	str r1, [r0]
	str r1, [r0, #4]
	sub r1, r2, r1
	str r1, [r0, #8]
	str r3, [r0, #0x10]
	mov r1, #0
	str r1, [r0, #0xc]
	bx lr

	thumb_func_start MOD05_021E35C0
MOD05_021E35C0: ; 0x021E35C0
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	mul r0, r1
	ldr r1, [r4, #0x10]
	bl _s32_div_f
	ldr r1, [r4, #4]
	add r0, r0, r1
	str r0, [r4]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r0, r0, #1
	cmp r0, r1
	bgt _021E35E6
	str r0, [r4, #0xc]
	mov r0, #0
	pop {r4, pc}
_021E35E6:
	str r1, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}

	thumb_func_start MOD05_021E35EC
MOD05_021E35EC: ; 0x021E35EC
	str r1, [r0]
	str r1, [r0, #4]
	sub r1, r2, r1
	str r1, [r0, #8]
	str r3, [r0, #0x10]
	mov r1, #0
	str r1, [r0, #0xc]
	bx lr

	thumb_func_start MOD05_021E35FC
MOD05_021E35FC: ; 0x021E35FC
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #8]
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	ldr r1, [r4, #0x10]
	lsl r1, r1, #0xc
	bl FX_Div
	ldr r1, [r4, #4]
	add r0, r0, r1
	str r0, [r4]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r0, r0, #1
	cmp r0, r1
	bgt _021E363C
	str r0, [r4, #0xc]
	mov r0, #0
	pop {r4, pc}
_021E363C:
	str r1, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E3644
MOD05_021E3644: ; 0x021E3644
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x18]
	add r5, r0, #0
	add r7, r2, #0
	add r0, r3, #0
	add r6, r1, #0
	lsl r2, r4, #0xc
	str r3, [sp]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	add r2, r0, #0
	sub r0, r7, r6
	mov r7, #2
	mov r3, #0
	lsl r7, r7, #0xa
	add r2, r2, r7
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	sub r2, r0, r2
	asr r1, r2, #0x1f
	lsr r0, r2, #0x13
	lsl r1, r1, #0xd
	orr r1, r0
	lsl r0, r2, #0xd
	add r0, r0, r7
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r1, r4, #0
	mul r1, r4
	lsl r1, r1, #0xc
	bl FX_Div
	str r6, [r5]
	ldr r1, [sp]
	str r6, [r5, #4]
	str r1, [r5, #8]
	str r0, [r5, #0xc]
	mov r0, #0
	str r0, [r5, #0x10]
	str r4, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E36A4
MOD05_021E36A4: ; 0x021E36A4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r6, [r5, #0x10]
	ldr r0, [r5, #8]
	lsl r2, r6, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsr r4, r2, #0xc
	lsl r0, r1, #0x14
	add r2, r6, #0
	orr r4, r0
	ldr r0, [r5, #0xc]
	mul r2, r6
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	lsl r1, r2, #2
	bl FX_Div
	ldr r1, [r5, #4]
	add r0, r4, r0
	add r0, r1, r0
	str r0, [r5]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	add r0, r0, #1
	cmp r0, r1
	bgt _021E3704
	str r0, [r5, #0x10]
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E3704:
	str r1, [r5, #0x10]
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E370C
MOD05_021E370C: ; 0x021E370C
	push {r3, lr}
	cmp r0, #1
	bne _021E371A
	ldr r0, _021E3724 ; =0x0400006C
	bl GXx_SetMasterBrightness_
	pop {r3, pc}
_021E371A:
	ldr r0, _021E3728 ; =0x0400106C
	bl GXx_SetMasterBrightness_
	pop {r3, pc}
	nop
_021E3724: .word 0x0400006C
_021E3728: .word 0x0400106C

	thumb_func_start MOD05_021E372C
MOD05_021E372C: ; 0x021E372C
	push {r3, lr}
	str r3, [r0, #0x14]
	ldr r3, [sp, #8]
	bl MOD05_021E35B0
	pop {r3, pc}

	thumb_func_start MOD05_021E3738
MOD05_021E3738: ; 0x021E3738
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl MOD05_021E35C0
	add r4, r0, #0
	ldr r0, _021E3750 ; =MOD05_021E3754
	add r1, r5, #0
	mov r2, #0xa
	bl FUN_0200CA98
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E3750: .word MOD05_021E3754

	thumb_func_start MOD05_021E3754
MOD05_021E3754: ; 0x021E3754
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0x14]
	ldr r1, [r1]
	bl MOD05_021E370C
	add r0, r4, #0
	bl FUN_0200CAB4
	pop {r4, pc}

	thumb_func_start MOD05_021E3768
MOD05_021E3768: ; 0x021E3768
	push {r4, lr}
	mov r0, #4
	mov r1, #0x30
	bl FUN_02016998
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl Call_FillMemWithValue
	ldr r0, _021E379C ; =0x04000048
	mov r1, #0x3f
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #0x1f
	orr r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	ldr r1, _021E37A0 ; =0xFFFFC0FF
	and r1, r2
	strh r1, [r0]
	add r0, r4, #0
	pop {r4, pc}
	nop
_021E379C: .word 0x04000048
_021E37A0: .word 0xFFFFC0FF

	thumb_func_start MOD05_021E37A4
MOD05_021E37A4: ; 0x021E37A4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x24]
	cmp r1, #0
	beq _021E37B2
	bl MOD05_021E3920
_021E37B2:
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021E37C8 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2]
	add r0, r4, #0
	bl FUN_02016A18
	pop {r4, pc}
	nop
_021E37C8: .word 0xFFFF1FFF

	thumb_func_start MOD05_021E37CC
MOD05_021E37CC: ; 0x021E37CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0x24]
	add r7, r2, #0
	str r3, [sp, #4]
	ldr r4, [sp, #0x20]
	cmp r0, #0
	beq _021E37E4
	bl ErrorHandling
_021E37E4:
	mov r0, #0
	str r0, [r6, #0x18]
	ldr r1, [r6, #0x10]
	add r6, #0x18
	ldr r1, [r1, #4]
	ldr r2, [sp, #0x24]
	ldr r1, [r1, #0x1c]
	ldr r3, [sp, #0x28]
	str r1, [r5, #0x20]
	str r7, [r5, #0x18]
	str r0, [r5, #0x1c]
	ldr r0, [sp, #4]
	str r6, [r5, #0x2c]
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021E3644
	cmp r4, #0
	blt _021E3824
	mov r0, #0xff
	ldr r2, _021E3850 ; =0x04000040
	sub r0, r0, r4
	strh r0, [r2]
	add r0, r4, #1
	mov r1, #0xc0
	lsl r0, r0, #0x18
	strh r1, [r2, #4]
	lsr r0, r0, #0x18
	strh r0, [r2, #2]
	strh r1, [r2, #6]
	b _021E3840
_021E3824:
	add r0, r4, #0
	add r0, #0xff
	lsl r0, r0, #0x18
	mov r2, #1
	sub r2, r2, r4
	lsl r2, r2, #0x18
	ldr r1, _021E3850 ; =0x04000040
	lsr r0, r0, #0x18
	strh r0, [r1]
	mov r0, #0xc0
	strh r0, [r1, #4]
	lsr r2, r2, #0x18
	strh r2, [r1, #2]
	strh r0, [r1, #6]
_021E3840:
	mov r2, #1
	ldr r0, _021E3854 ; =MOD05_021E3858
	add r1, r5, #0
	lsl r2, r2, #0xa
	bl FUN_0200CA98
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E3850: .word 0x04000040
_021E3854: .word MOD05_021E3858

	thumb_func_start MOD05_021E3858
MOD05_021E3858: ; 0x021E3858
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r2, #1
	ldr r0, _021E3880 ; =MOD05_021E38B8
	add r4, r1, #0
	lsl r2, r2, #0xa
	bl FUN_0200CA98
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x20]
	ldr r1, _021E3884 ; =MOD05_021E397C
	add r2, r4, #0
	bl MOD05_021F4624
	str r0, [r4, #0x24]
	add r0, r5, #0
	bl FUN_0200CAB4
	pop {r3, r4, r5, pc}
	nop
_021E3880: .word MOD05_021E38B8
_021E3884: .word MOD05_021E397C

	thumb_func_start MOD05_021E3888
MOD05_021E3888: ; 0x021E3888
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl MOD05_021E35AC
	cmp r0, #0
	beq _021E389E
	bl ErrorHandling
_021E389E:
	str r4, [r5, #0x18]
	mov r0, #0
	str r0, [r5, #0x1c]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	add r0, r5, #0
	str r6, [sp]
	bl MOD05_021E3644
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E38B8
MOD05_021E38B8: ; 0x021E38B8
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021E38C8
	cmp r0, #1
	beq _021E3914
	pop {r4, pc}
_021E38C8:
	add r0, r4, #0
	bl MOD05_021E36A4
	cmp r0, #0
	beq _021E38D8
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
_021E38D8:
	ldr r0, [r4]
	asr r0, r0, #0xc
	bmi _021E38F6
	mov r1, #0xff
	sub r1, r1, r0
	ldr r2, _021E391C ; =0x04000040
	add r0, r0, #1
	strh r1, [r2]
	mov r1, #0xc0
	lsl r0, r0, #0x18
	strh r1, [r2, #4]
	lsr r0, r0, #0x18
	strh r0, [r2, #2]
	strh r1, [r2, #6]
	pop {r4, pc}
_021E38F6:
	add r1, r0, #0
	add r1, #0xff
	lsl r1, r1, #0x18
	ldr r3, _021E391C ; =0x04000040
	lsr r1, r1, #0x18
	strh r1, [r3]
	mov r1, #1
	sub r0, r1, r0
	mov r2, #0xc0
	lsl r0, r0, #0x18
	strh r2, [r3, #4]
	lsr r0, r0, #0x18
	strh r0, [r3, #2]
	strh r2, [r3, #6]
	pop {r4, pc}
_021E3914:
	add r0, r4, #0
	bl MOD05_021E3920
	pop {r4, pc}
	.balign 4, 0
_021E391C: .word 0x04000040

	thumb_func_start MOD05_021E3920
MOD05_021E3920: ; 0x021E3920
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021E3974 ; =0x04000048
	mov r2, #0x3f
	ldrh r3, [r0]
	mov r1, #0x1f
	bic r3, r2
	orr r3, r1
	mov r1, #0x20
	orr r3, r1
	strh r3, [r0]
	ldrh r3, [r0, #2]
	bic r3, r2
	add r2, r0, #0
	strh r3, [r0, #2]
	mov r3, #0
	sub r2, #8
	strh r3, [r2]
	sub r0, r0, #4
	strh r3, [r0]
	lsl r3, r1, #0x15
	ldr r2, [r3]
	ldr r0, _021E3978 ; =0xFFFF1FFF
	and r2, r0
	lsl r0, r1, #8
	orr r0, r2
	str r0, [r3]
	ldr r0, [r4, #0x2c]
	mov r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x24]
	bl MOD05_021F4648
	mov r0, #0
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x28]
	bl FUN_0200CAB4
	mov r0, #0
	str r0, [r4, #0x28]
	pop {r4, pc}
	nop
_021E3974: .word 0x04000048
_021E3978: .word 0xFFFF1FFF

	thumb_func_start MOD05_021E397C
MOD05_021E397C: ; 0x021E397C
	push {r4, lr}
	ldr r0, _021E39EC ; =0x04000006
	add r4, r1, #0
	ldrh r0, [r0]
	ldr r1, [r4, #0x18]
	bl _u32_div_f
	mov r1, #1
	tst r0, r1
	ldr r0, [r4]
	bne _021E3994
	b _021E3996
_021E3994:
	neg r0, r0
_021E3996:
	asr r2, r0, #0xc
	ldr r0, _021E39F0 ; =0x000001FF
	add r1, r2, #0
	and r1, r0
	ldr r0, _021E39F4 ; =0x04000010
	cmp r2, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	ldr r1, _021E39F8 ; =0xFFFF1FFF
	blt _021E39C8
	add r3, r0, #0
	sub r3, #0x10
	ldr r2, [r3]
	and r2, r1
	lsl r1, r0, #9
	orr r1, r2
	str r1, [r3]
	add r0, #0x3a
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	strh r2, [r0]
	pop {r4, pc}
_021E39C8:
	add r3, r0, #0
	sub r3, #0x10
	ldr r2, [r3]
	and r2, r1
	lsl r1, r0, #0xa
	orr r1, r2
	str r1, [r3]
	add r0, #0x3a
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x1f
	orr r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	pop {r4, pc}
	nop
_021E39EC: .word 0x04000006
_021E39F0: .word 0x000001FF
_021E39F4: .word 0x04000010
_021E39F8: .word 0xFFFF1FFF

	thumb_func_start MOD05_021E39FC
MOD05_021E39FC: ; 0x021E39FC
	push {r4, r5, r6, lr}
	mov r0, #4
	mov r1, #0x48
	bl FUN_02016998
	mov r1, #0
	mov r2, #0x48
	add r4, r0, #0
	bl Call_FillMemWithValue
	ldr r0, _021E3A40 ; =0x04000048
	mov r5, #0x3f
	ldrh r2, [r0]
	mov r1, #0x1f
	bic r2, r5
	add r3, r2, #0
	orr r3, r1
	mov r2, #0x20
	orr r3, r2
	strh r3, [r0]
	ldrh r6, [r0]
	ldr r3, _021E3A44 ; =0xFFFFC0FF
	lsl r1, r1, #8
	and r3, r6
	orr r3, r1
	lsl r1, r2, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0, #2]
	bic r1, r5
	strh r1, [r0, #2]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_021E3A40: .word 0x04000048
_021E3A44: .word 0xFFFFC0FF

	thumb_func_start MOD05_021E3A48
MOD05_021E3A48: ; 0x021E3A48
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x3c]
	cmp r1, #0
	beq _021E3A56
	bl MOD05_021E3BA4
_021E3A56:
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021E3A6C ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2]
	add r0, r4, #0
	bl FUN_02016A18
	pop {r4, pc}
	nop
_021E3A6C: .word 0xFFFF1FFF

	thumb_func_start MOD05_021E3A70
MOD05_021E3A70: ; 0x021E3A70
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x3c]
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _021E3A84
	bl ErrorHandling
_021E3A84:
	mov r1, #0
	str r1, [r5, #0x18]
	ldr r0, [r5, #0x10]
	mov r2, #0xff
	ldr r0, [r0, #4]
	add r5, #0x18
	ldr r0, [r0, #0x1c]
	lsl r2, r2, #0xc
	str r0, [r4, #0x38]
	mov r0, #0x60
	str r0, [r4, #0x30]
	str r1, [r4, #0x34]
	str r5, [r4, #0x44]
	add r0, r4, #0
	add r3, r7, #0
	str r6, [sp]
	bl MOD05_021E3644
	add r0, r4, #0
	mov r2, #6
	ldr r3, [sp, #0x18]
	add r0, #0x18
	mov r1, #0
	lsl r2, r2, #0x10
	str r6, [sp]
	bl MOD05_021E3644
	ldr r2, _021E3AD4 ; =0x04000040
	mov r1, #0xff
	strh r1, [r2]
	mov r0, #0xc0
	strh r0, [r2, #4]
	strh r1, [r2, #2]
	strh r0, [r2, #6]
	ldr r0, _021E3AD8 ; =MOD05_021E3ADC
	add r1, r4, #0
	lsr r2, r2, #0x10
	bl FUN_0200CA98
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E3AD4: .word 0x04000040
_021E3AD8: .word MOD05_021E3ADC

	thumb_func_start MOD05_021E3ADC
MOD05_021E3ADC: ; 0x021E3ADC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r2, #1
	ldr r0, _021E3B04 ; =MOD05_021E3B0C
	add r4, r1, #0
	lsl r2, r2, #0xa
	bl FUN_0200CA98
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x38]
	ldr r1, _021E3B08 ; =MOD05_021E3B74
	add r2, r4, #0
	bl MOD05_021F4624
	str r0, [r4, #0x3c]
	add r0, r5, #0
	bl FUN_0200CAB4
	pop {r3, r4, r5, pc}
	nop
_021E3B04: .word MOD05_021E3B0C
_021E3B08: .word MOD05_021E3B74

	thumb_func_start MOD05_021E3B0C
MOD05_021E3B0C: ; 0x021E3B0C
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021E3B1C
	cmp r0, #1
	beq _021E3B68
	pop {r4, pc}
_021E3B1C:
	add r0, r4, #0
	add r0, #0x18
	bl MOD05_021E36A4
	add r0, r4, #0
	bl MOD05_021E36A4
	cmp r0, #0
	beq _021E3B34
	ldr r0, [r4, #0x34]
	add r0, r0, #1
	str r0, [r4, #0x34]
_021E3B34:
	ldr r0, [r4]
	asr r2, r0, #0xc
	ldr r0, [r4, #0x18]
	mov r4, #0xff
	asr r1, r0, #0xc
	ldr r0, _021E3B70 ; =0x04000040
	sub r3, r4, r2
	strh r3, [r0]
	mov r3, #0x60
	sub r3, r3, r1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	strh r3, [r0, #4]
	lsl r3, r2, #8
	lsl r2, r4, #8
	and r2, r3
	orr r2, r4
	add r1, #0x60
	strh r2, [r0, #2]
	lsl r2, r1, #8
	lsl r1, r4, #8
	and r2, r1
	mov r1, #0xc0
	orr r1, r2
	strh r1, [r0, #6]
	pop {r4, pc}
_021E3B68:
	add r0, r4, #0
	bl MOD05_021E3BA4
	pop {r4, pc}
	.balign 4, 0
_021E3B70: .word 0x04000040

	thumb_func_start MOD05_021E3B74
MOD05_021E3B74: ; 0x021E3B74
	ldr r0, _021E3B9C ; =0x04000006
	ldr r1, [r1, #0x30]
	ldrh r2, [r0]
	cmp r2, r1
	ldr r1, _021E3BA0 ; =0xFFFF1FFF
	bhi _021E3B8E
	sub r3, r0, #6
	ldr r2, [r3]
	lsr r0, r0, #0xd
	and r1, r2
	orr r0, r1
	str r0, [r3]
	bx lr
_021E3B8E:
	sub r3, r0, #6
	ldr r2, [r3]
	lsr r0, r0, #0xc
	and r1, r2
	orr r0, r1
	str r0, [r3]
	bx lr
	.balign 4, 0
_021E3B9C: .word 0x04000006
_021E3BA0: .word 0xFFFF1FFF

	thumb_func_start MOD05_021E3BA4
MOD05_021E3BA4: ; 0x021E3BA4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021E3BF8 ; =0x04000048
	mov r2, #0x3f
	ldrh r3, [r0]
	mov r1, #0x1f
	bic r3, r2
	orr r3, r1
	mov r1, #0x20
	orr r3, r1
	strh r3, [r0]
	ldrh r3, [r0, #2]
	bic r3, r2
	add r2, r0, #0
	strh r3, [r0, #2]
	mov r3, #0
	sub r2, #8
	strh r3, [r2]
	sub r0, r0, #4
	strh r3, [r0]
	lsl r3, r1, #0x15
	ldr r2, [r3]
	ldr r0, _021E3BFC ; =0xFFFF1FFF
	and r2, r0
	lsl r0, r1, #8
	orr r0, r2
	str r0, [r3]
	ldr r0, [r4, #0x44]
	mov r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x3c]
	bl MOD05_021F4648
	mov r0, #0
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	bl FUN_0200CAB4
	mov r0, #0
	str r0, [r4, #0x40]
	pop {r4, pc}
	nop
_021E3BF8: .word 0x04000048
_021E3BFC: .word 0xFFFF1FFF

	thumb_func_start MOD05_021E3C00
MOD05_021E3C00: ; 0x021E3C00
	ldr r3, _021E3C0C ; =0x0200CA99
	mov r2, #1
	add r1, r0, #0
	ldr r0, _021E3C10 ; =MOD05_021E3C14
	lsl r2, r2, #0xa
	bx r3
	.balign 4, 0
_021E3C0C: .word 0x0200CA99
_021E3C10: .word MOD05_021E3C14

	thumb_func_start MOD05_021E3C14
MOD05_021E3C14: ; 0x021E3C14
	push {r3, r4, r5, r6, lr}
	sub sp, #0x64
	ldr r6, _021E3D10 ; =0x021F7464
	add r3, sp, #0x54
	add r5, r0, #0
	add r4, r1, #0
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl FUN_02016BBC
	mov r0, #1
	add r1, r0, #0
	bl FUN_0201E6E4
	ldr r3, _021E3D14 ; =0x021F74AC
	add r2, sp, #0x38
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #1
	str r0, [r2]
	add r0, r4, #0
	bl FUN_020178A0
	add r0, r4, #0
	mov r1, #1
	add r2, sp, #0x38
	mov r3, #0
	bl FUN_02016C18
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #4
	bl FUN_02017F18
	add r0, r4, #0
	mov r1, #1
	bl FUN_02018744
	mov r0, #2
	mov r1, #0
	bl FUN_0201E6E4
	ldr r3, _021E3D18 ; =0x021F7490
	add r2, sp, #0x1c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #2
	str r0, [r2]
	add r0, r4, #0
	bl FUN_020178A0
	add r0, r4, #0
	mov r1, #2
	add r2, sp, #0x1c
	mov r3, #0
	bl FUN_02016C18
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	mov r3, #4
	bl FUN_02017F18
	add r0, r4, #0
	mov r1, #2
	bl FUN_02018744
	mov r0, #4
	mov r1, #1
	bl FUN_0201E6E4
	ldr r3, _021E3D1C ; =0x021F7474
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add r0, r4, #0
	mov r1, #3
	bl FUN_020178A0
	add r0, r4, #0
	mov r1, #3
	add r2, sp, #0
	mov r3, #1
	bl FUN_02016C18
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	mov r3, #4
	bl FUN_02017F18
	add r0, r4, #0
	mov r1, #3
	bl FUN_02018744
	mov r0, #8
	mov r1, #0
	bl FUN_0201E6E4
	add r0, r5, #0
	bl FUN_0200CAB4
	add sp, #0x64
	pop {r3, r4, r5, r6, pc}
	nop
_021E3D10: .word 0x021F7464
_021E3D14: .word 0x021F74AC
_021E3D18: .word 0x021F7490
_021E3D1C: .word 0x021F7474

	thumb_func_start MOD05_021E3D20
MOD05_021E3D20: ; 0x021E3D20
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r3, #0
	mov r3, #0
	add r5, r0, #0
	add r6, r1, #0
	add r1, r2, #0
	str r3, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #0x70
	add r2, r3, #0
	bl FUN_02006930
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #0x70
	add r1, r6, #0
	add r2, r4, #0
	mov r3, #3
	bl FUN_0200687C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #0x70
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #3
	bl FUN_020068C8
	add sp, #0x10
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021E3D70
MOD05_021E3D70: ; 0x021E3D70
	push {r3, r4, lr}
	sub sp, #0xc
	add r3, r1, #0
	add r4, r0, #0
	add r0, r3, #4
	str r0, [sp]
	ldr r0, [r3, #0x18]
	mov r2, #0
	str r0, [sp, #4]
	ldr r0, [r3, #0x1c]
	str r0, [sp, #8]
	ldr r1, [r3, #0x14]
	ldr r0, [r3]
	lsl r1, r1, #0x18
	ldr r3, [r3, #0x20]
	lsr r1, r1, #0x18
	bl FUN_02017B60
	add r0, r4, #0
	bl FUN_0200CAB4
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E3DA0
MOD05_021E3DA0: ; 0x021E3DA0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r5, #4
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl MTX_Identity22_
	add r0, sp, #8
	ldrh r0, [r0, #0x14]
	ldr r3, _021E3E0C ; =0x020FFA38
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, r5, #4
	bl MTX_Rot22_
	mov r0, #1
	lsl r0, r0, #0xc
	add r1, r7, #0
	bl FX_Div
	add r7, r0, #0
	mov r0, #1
	ldr r1, [sp, #0x18]
	lsl r0, r0, #0xc
	bl FX_Div
	add r3, r0, #0
	add r0, r5, #4
	add r1, r0, #0
	add r2, r7, #0
	bl MTX_ScaleApply22
	str r4, [r5]
	mov r2, #1
	ldr r0, [sp, #0x20]
	str r6, [r5, #0x14]
	str r0, [r5, #0x18]
	ldr r0, [sp, #0x24]
	add r1, r5, #0
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0x28]
	lsl r2, r2, #0xa
	str r0, [r5, #0x20]
	ldr r0, _021E3E10 ; =MOD05_021E3D70
	bl FUN_0200CA98
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E3E0C: .word 0x020FFA38
_021E3E10: .word MOD05_021E3D70

	thumb_func_start MOD05_021E3E14
MOD05_021E3E14: ; 0x021E3E14
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r0, r1, #0
	add r1, r5, #4
	mov r2, #4
	bl FUN_02008C9C
	mov r7, #0x4b
	str r0, [r5]
	mov r4, #0
	lsl r7, r7, #2
_021E3E2C:
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #4
	bl FUN_02008DEC
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021E3E2C
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E3E44
MOD05_021E3E44: ; 0x021E3E44
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5]
	bl FUN_0201FD58
	mov r6, #0x4b
	mov r4, #0
	lsl r6, r6, #2
_021E3E54:
	ldr r0, [r5, r6]
	bl FUN_02008E2C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021E3E54
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021E3E64
MOD05_021E3E64: ; 0x021E3E64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r6, [sp, #0x54]
	add r4, r1, #0
	str r6, [sp]
	mov r1, #1
	add r5, r0, #0
	str r1, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x4b
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	str r2, [sp, #0x2c]
	add r7, r3, #0
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x48]
	mov r1, #0x70
	mov r3, #0
	bl FUN_02008F90
	str r0, [r4]
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x2c]
	mov r1, #0x70
	mov r3, #0
	bl FUN_02008FEC
	str r0, [r4, #4]
	str r6, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x4c]
	mov r1, #0x70
	mov r3, #0
	bl FUN_020090AC
	str r0, [r4, #8]
	str r6, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x50]
	mov r1, #0x70
	mov r3, #0
	bl FUN_020090AC
	str r0, [r4, #0xc]
	ldr r0, [r4]
	bl FUN_02009B04
	ldr r0, [r4]
	bl FUN_02009474
	ldr r0, [r4, #4]
	bl FUN_02009D68
	mov r0, #0
	mov r2, #0x4b
	str r6, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	add r4, #0x10
	str r1, [sp, #0x14]
	add r1, r2, #4
	ldr r1, [r5, r1]
	add r3, r6, #0
	str r1, [sp, #0x18]
	add r1, r2, #0
	add r1, #8
	ldr r1, [r5, r1]
	add r2, #0xc
	str r1, [sp, #0x1c]
	ldr r1, [r5, r2]
	add r2, r6, #0
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r4, #0
	add r1, r6, #0
	bl FUN_02008AA4
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E3F3C
MOD05_021E3F3C: ; 0x021E3F3C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	bl FUN_02009C0C
	ldr r0, [r4, #4]
	bl FUN_02009E04
	mov r7, #0x4b
	mov r6, #0
	lsl r7, r7, #2
_021E3F54:
	ldr r0, [r5, r7]
	ldr r1, [r4]
	bl FUN_02009490
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #4
	blt _021E3F54
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021E3F68
MOD05_021E3F68: ; 0x021E3F68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	lsl r1, r2, #0x10
	add r6, r0, #0
	add r0, sp, #8
	lsr r1, r1, #0x10
	add r7, r3, #0
	bl FUN_020690AC
	add r0, r4, #0
	mov r1, #0x20
	bl FUN_02016998
	add r1, sp, #4
	add r5, r0, #0
	ldrh r0, [r1, #4]
	ldrh r1, [r1, #8]
	add r2, sp, #4
	add r3, r4, #0
	bl FUN_02006C08
	add r4, r0, #0
	add r0, sp, #0x20
	ldrh r0, [r0, #0x10]
	add r1, r5, #0
	mov r2, #0x10
	str r0, [sp]
	ldr r0, [sp, #4]
	add r3, r7, #0
	ldr r0, [r0, #0xc]
	bl FUN_02003974
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0x20
	bl MOD05_021E40F0
	add r0, r5, #0
	bl FUN_02016A18
	add r0, r4, #0
	bl FUN_02016A18
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021E3FC4
MOD05_021E3FC4: ; 0x021E3FC4
	push {r4, lr}
	sub sp, #0x20
	ldr r0, [r0]
	add r1, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r1, [sp, #4]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	str r2, [sp, #8]
	str r0, [sp, #0x14]
	mov r0, #1
	str r0, [sp, #0x18]
	mov r0, #4
	str r0, [sp, #0x1c]
	add r0, sp, #0
	str r3, [sp, #0xc]
	bl FUN_0201FF84
	add r4, r0, #0
	bne _021E3FF2
	bl ErrorHandling
_021E3FF2:
	add r0, r4, #0
	add sp, #0x20
	pop {r4, pc}

	thumb_func_start MOD05_021E3FF8
MOD05_021E3FF8: ; 0x021E3FF8
	push {r4}
	sub sp, #0xc
	str r2, [sp, #4]
	str r3, [sp, #8]
	add r2, sp, #0
	add r4, r0, #0
	str r1, [sp]
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2]
	str r0, [r4]
	add sp, #0xc
	pop {r4}
	bx lr

	thumb_func_start MOD05_021E4014
MOD05_021E4014: ; 0x021E4014
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r2, #0
	add r5, r1, #0
	lsl r1, r4, #0x10
	add r6, r0, #0
	add r0, sp, #0x10
	lsr r1, r1, #0x10
	add r7, r3, #0
	bl FUN_020690AC
	str r5, [sp]
	add r1, sp, #8
	ldrh r0, [r1, #8]
	ldrh r1, [r1, #0xa]
	mov r2, #0
	add r3, sp, #0xc
	bl FUN_02006BB0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0x14]
	bl FUN_02008A74
	add r0, sp, #0x28
	ldrh r0, [r0, #0x10]
	add r1, r5, #0
	add r2, r4, #0
	str r0, [sp]
	add r0, r6, #0
	add r3, r7, #0
	bl MOD05_021E3F68
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x3c]
	add r1, r5, #0
	add r2, sp, #8
	bl MOD05_021E4080
	add r4, r0, #0
	ldr r2, [sp, #8]
	add r0, r6, #0
	add r1, r4, #0
	bl MOD05_021E4118
	add r0, r4, #0
	bl FUN_02016A18
	ldr r0, [sp, #4]
	bl FUN_02016A18
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E4080
MOD05_021E4080: ; 0x021E4080
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	ldr r4, [r0, #0x14]
	add r0, r1, #0
	mov r1, #2
	lsl r1, r1, #0xa
	str r2, [sp, #4]
	add r5, r3, #0
	bl FUN_02016998
	mov ip, r0
	lsl r0, r5, #2
	mov r7, #0
	add r6, r4, r0
_021E409E:
	ldr r0, [sp]
	mov r2, #0
	ldrh r0, [r0, #2]
	add r3, r7, #0
	lsr r1, r7, #0x1f
	lsl r5, r7, #0x1d
	mul r3, r0
	sub r5, r5, r1
	mov r0, #0x1d
	ror r5, r0
	asr r0, r7, #2
	lsr r0, r0, #0x1d
	add r0, r7, r0
	asr r0, r0, #3
	add r1, r1, r5
	lsl r0, r0, #6
	add r0, r1, r0
	lsl r1, r0, #2
	mov r0, ip
	add r4, r2, #0
	add r5, r0, r1
_021E40C8:
	add r0, r3, r2
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	lsl r0, r4, #2
	add r2, r2, #1
	add r4, #8
	str r1, [r5, r0]
	cmp r2, #8
	blt _021E40C8
	add r7, r7, #1
	cmp r7, #0x40
	blt _021E409E
	mov r1, #2
	ldr r0, [sp, #4]
	lsl r1, r1, #0xa
	str r1, [r0]
	mov r0, ip
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E40F0
MOD05_021E40F0: ; 0x021E40F0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl FUN_02020354
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl DC_FlushRange
	add r0, r6, #0
	mov r1, #1
	bl FUN_020B19C4
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl GX_LoadOBJPltt
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021E4118
MOD05_021E4118: ; 0x021E4118
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl FUN_02020350
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl DC_FlushRange
	add r0, r6, #0
	mov r1, #1
	bl FUN_020B1A14
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl GX_LoadOBJ
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021E4140
MOD05_021E4140: ; 0x021E4140
	push {r4, lr}
	mov r1, #0x30
	bl FUN_02016998
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl Call_FillMemWithValue
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E4158
MOD05_021E4158: ; 0x021E4158
	ldr r3, _021E415C ; =0x02016A19
	bx r3
	.balign 4, 0
_021E415C: .word 0x02016A19

	thumb_func_start MOD05_021E4160
MOD05_021E4160: ; 0x021E4160
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x2e
	ldrb r0, [r0]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _021E4176
	bl ErrorHandling
_021E4176:
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl MOD05_021E35B0
	add r0, r5, #0
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, #0x14
	add r1, r7, #0
	bl MOD05_021E35B0
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	str r0, [r5, #0x28]
	add r0, r5, #0
	add r0, #0x2c
	strb r1, [r0]
	add r0, r5, #0
	ldr r1, [sp, #0x28]
	add r0, #0x2d
	strb r1, [r0]
	add r0, sp, #0x2c
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x2f
	strb r1, [r0]
	mov r0, #1
	add r5, #0x2e
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E41B8
MOD05_021E41B8: ; 0x021E41B8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x2e
	ldrb r1, [r1]
	cmp r1, #0
	bne _021E41CE
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E41CE:
	bl MOD05_021E35C0
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x14
	bl MOD05_021E35C0
	add r0, r5, #0
	add r0, #0x2c
	ldrb r0, [r0]
	ldr r2, [r5]
	ldr r6, [r5, #0x14]
	lsr r1, r0, #1
	sub r1, r2, r1
	lsl r1, r1, #0x10
	asr r3, r1, #0x10
	add r1, r5, #0
	add r1, #0x2d
	ldrb r2, [r1]
	add r0, r3, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	lsr r1, r2, #1
	str r0, [sp]
	add r0, r5, #0
	sub r1, r6, r1
	add r0, #0x2f
	lsl r1, r1, #0x10
	ldrb r0, [r0]
	asr r1, r1, #0x10
	add r2, r1, r2
	str r0, [sp, #4]
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x28]
	asr r2, r2, #0x10
	bl MOD05_021E4338
	add r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E4220
MOD05_021E4220: ; 0x021E4220
	push {r4, lr}
	mov r1, #0x30
	bl FUN_02016998
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl Call_FillMemWithValue
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E4238
MOD05_021E4238: ; 0x021E4238
	ldr r3, _021E423C ; =0x02016A19
	bx r3
	.balign 4, 0
_021E423C: .word 0x02016A19

	thumb_func_start MOD05_021E4240
MOD05_021E4240: ; 0x021E4240
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x2e
	ldrb r0, [r0]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _021E4256
	bl ErrorHandling
_021E4256:
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl MOD05_021E35B0
	add r0, r5, #0
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, #0x14
	add r1, r7, #0
	bl MOD05_021E35B0
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	str r0, [r5, #0x28]
	add r0, r5, #0
	add r0, #0x2c
	strb r1, [r0]
	add r0, r5, #0
	ldr r1, [sp, #0x28]
	add r0, #0x2d
	strb r1, [r0]
	add r0, sp, #0x2c
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x2f
	strb r1, [r0]
	mov r0, #1
	add r5, #0x2e
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E4298
MOD05_021E4298: ; 0x021E4298
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	bne _021E42AC
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E42AC:
	add r0, r5, #0
	add r0, #0x2c
	ldrb r0, [r0]
	ldr r2, [r5]
	ldr r4, [r5, #0x14]
	lsr r1, r0, #1
	sub r1, r2, r1
	lsl r1, r1, #0x10
	asr r3, r1, #0x10
	add r1, r5, #0
	add r1, #0x2d
	ldrb r2, [r1]
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r1, r2, #1
	sub r1, r4, r1
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0
	add r2, r1, r2
	str r0, [sp, #4]
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x28]
	asr r2, r2, #0x10
	bl MOD05_021E4338
	add r0, r5, #0
	bl MOD05_021E35C0
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x14
	bl MOD05_021E35C0
	add r0, r5, #0
	add r0, #0x2c
	ldrb r0, [r0]
	ldr r2, [r5]
	ldr r6, [r5, #0x14]
	lsr r1, r0, #1
	sub r1, r2, r1
	lsl r1, r1, #0x10
	asr r3, r1, #0x10
	add r1, r5, #0
	add r1, #0x2d
	ldrb r2, [r1]
	add r0, r3, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	lsr r1, r2, #1
	str r0, [sp]
	add r0, r5, #0
	sub r1, r6, r1
	add r0, #0x2f
	lsl r1, r1, #0x10
	ldrb r0, [r0]
	asr r1, r1, #0x10
	add r2, r1, r2
	str r0, [sp, #4]
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x28]
	asr r2, r2, #0x10
	bl MOD05_021E4338
	add r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E4338
MOD05_021E4338: ; 0x021E4338
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r5, [sp, #0x18]
	add r4, r1, #0
	cmp r5, #0
	ble _021E4390
	cmp r2, #0
	ble _021E4390
	cmp r3, r5
	beq _021E4390
	cmp r4, r2
	beq _021E4390
	cmp r3, #0
	bge _021E4356
	mov r3, #0
_021E4356:
	mov r1, #1
	lsl r1, r1, #8
	cmp r5, r1
	ble _021E4360
	add r5, r1, #0
_021E4360:
	cmp r4, #0
	bge _021E4366
	mov r4, #0
_021E4366:
	mov r1, #1
	lsl r1, r1, #8
	cmp r2, r1
	ble _021E4370
	add r2, r1, #0
_021E4370:
	sub r1, r5, r3
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp]
	sub r1, r2, r4
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #4]
	lsl r2, r3, #0x10
	add r1, sp, #8
	lsl r3, r4, #0x10
	ldrb r1, [r1, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl FUN_020196F4
_021E4390:
	add sp, #8
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021E4394
MOD05_021E4394: ; 0x021E4394
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #4
	mov r1, #0xcc
	bl FUN_02016998
	mov r1, #0
	mov r2, #0xcc
	add r7, r0, #0
	bl Call_FillMemWithValue
	mov r4, #0
	add r5, r7, #0
_021E43AE:
	add r0, r6, #0
	bl MOD05_021E4220
	str r0, [r5, #4]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x30
	blt _021E43AE
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E43C4
MOD05_021E43C4: ; 0x021E43C4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_021E43CC:
	ldr r0, [r5, #4]
	bl MOD05_021E4238
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x30
	blt _021E43CC
	add r0, r6, #0
	bl FUN_02016A18
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E43E4
MOD05_021E43E4: ; 0x021E43E4
	push {r3, r4}
	str r3, [r0]
	ldr r3, _021E4420 ; =0xFFFFFFF8
	add r3, sp
	ldrb r4, [r3, #0x10]
	add r3, r0, #0
	add r3, #0xc9
	strb r4, [r3]
	add r3, r0, #0
	add r3, #0xc6
	strb r1, [r3]
	add r1, r0, #0
	add r1, #0xc7
	strb r2, [r1]
	add r1, r0, #0
	mov r2, #0
	add r1, #0xc4
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0xc5
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0xc8
	strb r2, [r1]
	mov r1, #1
	add r0, #0xca
	strb r1, [r0]
	pop {r3, r4}
	bx lr
	nop
_021E4420: .word 0xFFFFFFF8

	thumb_func_start MOD05_021E4424
MOD05_021E4424: ; 0x021E4424
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	add r0, #0xca
	ldrb r0, [r0]
	cmp r0, #0
	bne _021E4438
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021E4438:
	add r0, r6, #0
	add r0, #0xc4
	ldrb r0, [r0]
	cmp r0, #0x30
	bhs _021E44BC
	mov r1, #0xc8
	ldrsb r0, [r6, r1]
	sub r2, r0, #1
	add r0, r6, #0
	add r0, #0xc8
	strb r2, [r0]
	ldrsb r0, [r6, r1]
	cmp r0, #0
	bgt _021E44BC
	add r0, r6, #0
	add r0, #0xc7
	ldrb r1, [r0]
	add r0, r6, #0
	add r0, #0xc8
	strb r1, [r0]
	add r0, r6, #0
	add r0, #0xc4
	ldrb r0, [r0]
	mov r1, #0x1d
	lsr r3, r0, #0x1f
	lsl r2, r0, #0x1d
	sub r2, r2, r3
	ror r2, r1
	add r2, r3, r2
	ldr r1, _021E4518 ; =0x021F745C
	mov r3, #0x20
	ldrb r1, [r1, r2]
	lsr r2, r0, #3
	lsl r4, r2, #5
	mov r2, #0xb0
	sub r2, r2, r4
	str r2, [sp]
	add r2, r6, #0
	add r2, #0xc6
	ldrb r2, [r2]
	lsl r0, r0, #2
	lsl r1, r1, #5
	str r2, [sp, #4]
	ldr r2, [r6]
	add r0, r6, r0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	add r2, r6, #0
	str r3, [sp, #0x10]
	add r2, #0xc9
	ldrb r2, [r2]
	sub r3, #0x30
	add r1, #0x10
	str r2, [sp, #0x14]
	ldr r0, [r0, #4]
	add r2, r1, #0
	sub r3, r3, r4
	bl MOD05_021E4240
	add r0, r6, #0
	add r0, #0xc4
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r6, #0
	add r0, #0xc4
	strb r1, [r0]
_021E44BC:
	add r0, r6, #0
	add r0, #0xc5
	ldrb r4, [r0]
	add r0, r6, #0
	add r0, #0xc4
	ldrb r0, [r0]
	cmp r4, r0
	bge _021E44F4
	lsl r0, r4, #2
	add r7, r6, #0
	add r5, r6, r0
	add r7, #0xc5
_021E44D4:
	ldr r0, [r5, #4]
	bl MOD05_021E4298
	str r0, [sp, #0x18]
	cmp r0, #1
	bne _021E44E6
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
_021E44E6:
	add r0, r6, #0
	add r0, #0xc4
	ldrb r0, [r0]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _021E44D4
_021E44F4:
	add r0, r6, #0
	add r0, #0xc5
	ldrb r0, [r0]
	cmp r0, #0x30
	blo _021E4510
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _021E4510
	mov r0, #0
	add r6, #0xca
	strb r0, [r6]
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021E4510:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021E4518: .word 0x021F745C

	thumb_func_start MOD05_021E451C
MOD05_021E451C: ; 0x021E451C
	push {r3, lr}
	mov r1, #0x1c
	bl FUN_02016998
	add r3, r0, #0
	mov r2, #0x1c
	mov r1, #0
_021E452A:
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _021E452A
	pop {r3, pc}

	thumb_func_start MOD05_021E4534
MOD05_021E4534: ; 0x021E4534
	ldr r3, _021E4538 ; =0x02016A19
	bx r3
	.balign 4, 0
_021E4538: .word 0x02016A19

	thumb_func_start MOD05_021E453C
MOD05_021E453C: ; 0x021E453C
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [sp, #8]
	str r1, [r0]
	ldr r1, _021E4560 ; =0xFFFFFFF8
	add r1, sp
	ldrb r1, [r1, #0x14]
	strb r1, [r0, #0x19]
	mov r1, #1
	strb r1, [r0, #0x18]
	add r1, r2, #0
	add r2, r3, #0
	add r0, r0, #4
	add r3, r4, #0
	bl MOD05_021E35B0
	pop {r4, pc}
	nop
_021E4560: .word 0xFFFFFFF8

	thumb_func_start MOD05_021E4564
MOD05_021E4564: ; 0x021E4564
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	bne _021E4572
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E4572:
	ldr r0, [r5, #4]
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r5, #4
	bl MOD05_021E35C0
	ldr r2, [r5, #4]
	add r6, r0, #0
	lsl r2, r2, #0x10
	ldrb r3, [r5, #0x19]
	ldr r0, [r5]
	add r1, r4, #0
	lsr r2, r2, #0x10
	bl MOD05_021E45A0
	cmp r6, #1
	bne _021E459C
	mov r0, #0
	strb r0, [r5, #0x18]
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E459C:
	mov r0, #0
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021E45A0
MOD05_021E45A0: ; 0x021E45A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #8]
	asr r0, r2, #4
	add r4, r1, #0
	lsl r1, r0, #1
	lsl r0, r1, #1
	ldr r2, _021E4680 ; =0x020FFA38
	add r1, r1, #1
	lsl r1, r1, #1
	ldrsh r0, [r2, r0]
	ldrsh r1, [r2, r1]
	str r3, [sp, #0xc]
	bl FX_Div
	str r0, [sp, #0x18]
	asr r0, r4, #4
	lsl r1, r0, #1
	lsl r0, r1, #1
	ldr r2, _021E4680 ; =0x020FFA38
	add r1, r1, #1
	lsl r1, r1, #1
	ldrsh r0, [r2, r0]
	ldrsh r1, [r2, r1]
	bl FX_Div
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	mov r5, #0
	asr r0, r0, #0x1f
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	asr r0, r0, #0x1f
	str r0, [sp, #0x14]
_021E45E4:
	mov r0, #0x5f
	sub r0, r0, r5
	lsl r6, r0, #0xc
	asr r4, r6, #0x1f
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	add r2, r6, #0
	add r3, r4, #0
	bl _ll_mul
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _021E4684 ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	asr r7, r1, #0xc
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r2, r6, #0
	add r3, r4, #0
	bl _ll_mul
	mov r2, #2
	lsl r2, r2, #0xa
	add r2, r0, r2
	ldr r0, _021E4684 ; =0x00000000
	adc r1, r0
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	asr r0, r1, #0xc
	mov r1, #0x80
	add r4, r7, #0
	add r6, r0, #0
	mov r2, #0x80
	sub r0, r2, r0
	sub r1, r1, r7
	add r4, #0x80
	add r6, #0x80
	add r3, r0, #0
	cmp r0, r1
	ble _021E4642
	add r3, r1, #0
	add r1, r0, #0
_021E4642:
	cmp r6, r4
	ble _021E464C
	add r0, r6, #0
	add r6, r4, #0
	add r4, r0, #0
_021E464C:
	add r0, r1, #1
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r2, r5, #1
	bl MOD05_021E4338
	add r0, r4, #1
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r1, #0xbf
	str r0, [sp, #4]
	mov r2, #0xc0
	ldr r0, [sp, #8]
	sub r1, r1, r5
	sub r2, r2, r5
	add r3, r6, #0
	bl MOD05_021E4338
	add r5, r5, #1
	cmp r5, #0x60
	blt _021E45E4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E4680: .word 0x020FFA38
_021E4684: .word 0x00000000

	thumb_func_start MOD05_021E4688
MOD05_021E4688: ; 0x021E4688
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x24
	add r6, r0, #0
	bl FUN_02016998
	mov r1, #0
	mov r2, #0x24
	add r7, r0, #0
	bl Call_FillMemWithValue
	mov r4, #0
	add r5, r7, #0
_021E46A0:
	add r0, r6, #0
	bl MOD05_021E451C
	add r4, r4, #1
	stmia r5!, {r0}
	cmp r4, #8
	blt _021E46A0
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E46B4
MOD05_021E46B4: ; 0x021E46B4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_021E46BC:
	ldr r0, [r5]
	bl MOD05_021E4534
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _021E46BC
	add r0, r6, #0
	bl FUN_02016A18
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E46D4
MOD05_021E46D4: ; 0x021E46D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #0xc]
	ldr r4, _021E474C ; =0x021F74C8
	str r0, [sp, #8]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r6, #0
	add r5, r0, #0
_021E46E6:
	ldrh r1, [r4]
	ldr r0, _021E4750 ; =0x0000FFFF
	mul r0, r1
	mov r1, #0x5a
	lsl r1, r1, #2
	bl _s32_div_f
	add r7, r0, #0
	ldrh r1, [r4, #2]
	ldr r0, _021E4750 ; =0x0000FFFF
	mul r0, r1
	mov r1, #0x5a
	lsl r1, r1, #2
	bl _s32_div_f
	add r3, r0, #0
	ldr r0, [sp, #0x10]
	lsl r2, r7, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x14]
	lsl r3, r3, #0x10
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r1, [sp, #0xc]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl MOD05_021E453C
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #8
	blt _021E46E6
	ldr r0, [sp, #8]
	mov r1, #1
	add r0, #0x20
	strb r1, [r0]
	add r1, #0xff
	str r1, [sp]
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	mov r1, #0x5d
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	mov r2, #0x63
	mov r3, #0
	bl MOD05_021E4338
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E474C: .word 0x021F74C8
_021E4750: .word 0x0000FFFF

	thumb_func_start MOD05_021E4754
MOD05_021E4754: ; 0x021E4754
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	bne _021E4764
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E4764:
	mov r4, #0
	add r5, r6, #0
_021E4768:
	ldr r0, [r5]
	bl MOD05_021E4564
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _021E4768
	cmp r0, #1
	bne _021E4784
	mov r0, #0
	add r6, #0x20
	strb r0, [r6]
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E4784:
	mov r0, #0
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021E4788
MOD05_021E4788: ; 0x021E4788
	push {r4, lr}
	mov r0, #4
	mov r1, #0xe8
	bl FUN_02016998
	mov r1, #0
	mov r2, #0xe8
	add r4, r0, #0
	bl Call_FillMemWithValue
	add r0, r4, #0
	pop {r4, pc}

	thumb_func_start MOD05_021E47A0
MOD05_021E47A0: ; 0x021E47A0
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0xe0
	ldr r1, [r1]
	cmp r1, #0
	beq _021E47B2
	bl MOD05_021E4918
_021E47B2:
	add r0, r4, #0
	bl FUN_02016A18
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E47BC
MOD05_021E47BC: ; 0x021E47BC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [sp, #0x18]
	add r6, r1, #0
	str r0, [sp, #0x18]
	add r0, r6, #0
	add r0, #0xe0
	ldr r0, [r0]
	add r7, r2, #0
	add r5, r3, #0
	cmp r0, #0
	beq _021E47D8
	bl ErrorHandling
_021E47D8:
	mov r1, #0
	str r1, [r4, #0x18]
	ldr r0, [r4, #0x10]
	add r4, #0x18
	ldr r0, [r0, #4]
	add r3, r7, #0
	ldr r2, [r0, #0x1c]
	add r0, r6, #0
	add r0, #0xd8
	str r2, [r0]
	add r0, r6, #0
	str r1, [r6, #0x14]
	add r0, #0xe4
	str r4, [r0]
	add r0, r6, #0
	mov r2, #0xff
	bl MOD05_021E35B0
	mov r4, #0
_021E47FE:
	add r0, r4, #0
	add r1, r5, #0
	bl _u32_div_f
	ldr r0, [sp, #0x18]
	mul r0, r1
	add r1, r5, #0
	bl _u32_div_f
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl _u32_div_f
	mov r1, #1
	tst r0, r1
	bne _021E4826
	add r0, r6, r4
	strb r7, [r0, #0x18]
	b _021E482E
_021E4826:
	ldr r0, [sp, #0x18]
	sub r1, r0, r7
	add r0, r6, r4
	strb r1, [r0, #0x18]
_021E482E:
	add r4, r4, #1
	cmp r4, #0xc0
	blt _021E47FE
	ldr r0, _021E4878 ; =0x04000048
	mov r1, #0x3f
	ldrh r3, [r0]
	ldr r2, [sp, #0x1c]
	bic r3, r1
	orr r3, r2
	mov r2, #0x20
	orr r3, r2
	strh r3, [r0]
	ldrh r3, [r0, #2]
	bic r3, r1
	ldr r1, [sp, #0x20]
	orr r1, r3
	strh r1, [r0, #2]
	add r1, r0, #0
	mov r3, #0
	sub r1, #8
	strh r3, [r1]
	mov r1, #0xc0
	sub r0, r0, #4
	strh r1, [r0]
	lsl r3, r2, #0x15
	ldr r1, [r3]
	ldr r0, _021E487C ; =0xFFFF1FFF
	and r1, r0
	lsl r0, r2, #8
	orr r0, r1
	str r0, [r3]
	ldr r0, _021E4880 ; =MOD05_021E4884
	add r1, r6, #0
	lsl r2, r2, #5
	bl FUN_0200CA98
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E4878: .word 0x04000048
_021E487C: .word 0xFFFF1FFF
_021E4880: .word MOD05_021E4884

	thumb_func_start MOD05_021E4884
MOD05_021E4884: ; 0x021E4884
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0]
	ldr r1, _021E48B8 ; =MOD05_021E48EC
	add r2, r4, #0
	bl MOD05_021F4624
	add r1, r4, #0
	add r1, #0xdc
	str r0, [r1]
	mov r2, #1
	ldr r0, _021E48BC ; =MOD05_021E48C0
	add r1, r4, #0
	lsl r2, r2, #0xa
	bl FUN_0200CA98
	add r4, #0xe0
	str r0, [r4]
	add r0, r5, #0
	bl FUN_0200CAB4
	pop {r3, r4, r5, pc}
	nop
_021E48B8: .word MOD05_021E48EC
_021E48BC: .word MOD05_021E48C0

	thumb_func_start MOD05_021E48C0
MOD05_021E48C0: ; 0x021E48C0
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021E48D0
	cmp r0, #1
	beq _021E48E2
	pop {r4, pc}
_021E48D0:
	add r0, r4, #0
	bl MOD05_021E35C0
	cmp r0, #1
	bne _021E48E8
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	pop {r4, pc}
_021E48E2:
	add r0, r4, #0
	bl MOD05_021E4918
_021E48E8:
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E48EC
MOD05_021E48EC: ; 0x021E48EC
	ldr r0, _021E4910 ; =0x04000006
	ldrh r0, [r0]
	cmp r0, #0xc0
	bge _021E490E
	add r0, r1, r0
	ldrb r0, [r0, #0x18]
	ldr r2, [r1]
	add r0, r2, r0
	cmp r0, #0xff
	ble _021E4902
	mov r0, #0xff
_021E4902:
	lsl r0, r0, #0x18
	ldr r1, _021E4914 ; =0x04000040
	lsr r0, r0, #0x18
	strh r0, [r1]
	mov r0, #0xc0
	strh r0, [r1, #4]
_021E490E:
	bx lr
	.balign 4, 0
_021E4910: .word 0x04000006
_021E4914: .word 0x04000040

	thumb_func_start MOD05_021E4918
MOD05_021E4918: ; 0x021E4918
	push {r4, lr}
	mov r2, #1
	lsl r2, r2, #0x1a
	add r4, r0, #0
	ldr r1, [r2]
	ldr r0, _021E4958 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2]
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0]
	mov r1, #1
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xdc
	ldr r0, [r0]
	bl MOD05_021F4648
	add r0, r4, #0
	mov r1, #0
	add r0, #0xdc
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xe0
	ldr r0, [r0]
	bl FUN_0200CAB4
	mov r0, #0
	add r4, #0xe0
	str r0, [r4]
	pop {r4, pc}
	nop
_021E4958: .word 0xFFFF1FFF

	thumb_func_start MOD05_021E495C
MOD05_021E495C: ; 0x021E495C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r6, #1
	add r1, r0, #0
	tst r1, r6
	bne _021E4980
	mov r1, #0x72
	lsl r1, r1, #4
	tst r1, r0
	bne _021E4976
	cmp r0, #0
	bne _021E497A
_021E4976:
	mov r6, #0
	b _021E4980
_021E497A:
	bl ErrorHandling
	mov r6, #0
_021E4980:
	ldr r0, [r5, #4]
	bl FUN_0204A1D8
	add r7, r0, #0
	ldr r0, [r5, #8]
	bl FUN_0204A1D8
	str r0, [sp]
	add r0, r7, #0
	mov r1, #0xa0
	mov r2, #0
	bl FUN_020671BC
	add r7, r0, #0
	ldr r0, [sp]
	mov r1, #0xa0
	mov r2, #0
	bl FUN_020671BC
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	sub r0, r0, r7
	cmp r1, #0xc
	bhi _021E49E2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E49BE: ; jump table
	.short _021E49D8 - _021E49BE - 2 ; case 0
	.short _021E49D8 - _021E49BE - 2 ; case 1
	.short _021E49D8 - _021E49BE - 2 ; case 2
	.short _021E49D8 - _021E49BE - 2 ; case 3
	.short _021E49D8 - _021E49BE - 2 ; case 4
	.short _021E49E0 - _021E49BE - 2 ; case 5
	.short _021E49D8 - _021E49BE - 2 ; case 6
	.short _021E49DC - _021E49BE - 2 ; case 7
	.short _021E49D8 - _021E49BE - 2 ; case 8
	.short _021E49D8 - _021E49BE - 2 ; case 9
	.short _021E49D8 - _021E49BE - 2 ; case 10
	.short _021E49D8 - _021E49BE - 2 ; case 11
	.short _021E49D8 - _021E49BE - 2 ; case 12
_021E49D8:
	mov r4, #0
	b _021E49E2
_021E49DC:
	mov r4, #2
	b _021E49E2
_021E49E0:
	mov r4, #4
_021E49E2:
	cmp r0, #0
	ble _021E49E8
	add r4, r4, #1
_021E49E8:
	mov r0, #6
	mul r0, r6
	add r0, r4, r0
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021E49F0
MOD05_021E49F0: ; 0x021E49F0
	push {r4, r5, r6, lr}
	ldr r4, [sp, #0x14]
	add r5, r0, #0
	mov r0, #0
	strb r0, [r4]
	mov r0, #0xff
	strb r0, [r4, #1]
	lsl r0, r3, #0xc
	add r6, r1, #0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r2, #2
	add r3, r0, #0
	asr r0, r5, #0xc
	mov r5, #0
	lsl r2, r2, #0xa
	add r3, r3, r2
	adc r1, r5
	lsl r1, r1, #0x14
	lsr r3, r3, #0xc
	orr r3, r1
	asr r3, r3, #0xc
	lsr r1, r3, #0x1f
	add r1, r3, r1
	asr r1, r1, #1
	sub r0, r0, r1
	strb r0, [r4, #2]
	ldr r0, _021E4A38 ; =MOD05_021E4A64
	add r1, r4, #0
	lsr r2, r2, #1
	strb r6, [r4, #3]
	bl FUN_0200CA98
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E4A38: .word MOD05_021E4A64

	thumb_func_start MOD05_021E4A3C
MOD05_021E4A3C: ; 0x021E4A3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r0, r2, #0xc
	add r4, r1, #0
	asr r1, r0, #0x1f
	asr r3, r5, #0x1f
	add r2, r5, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	asr r0, r1, #0xc
	add r0, r4, r0
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021E4A64
MOD05_021E4A64: ; 0x021E4A64
	push {r3, r4, r5, lr}
	ldrb r2, [r1, #4]
	ldrb r3, [r1, #3]
	cmp r2, #0
	bne _021E4A8C
	ldrb r4, [r1]
	ldrb r2, [r1, #2]
	ldrb r1, [r1, #1]
	lsl r5, r4, #8
	mov r4, #0xff
	lsl r4, r4, #8
	and r5, r4
	orr r5, r1
	ldr r1, _021E4AB0 ; =0x04000040
	lsl r2, r2, #8
	and r2, r4
	strh r5, [r1]
	orr r2, r3
	strh r2, [r1, #4]
	b _021E4AA8
_021E4A8C:
	ldrb r4, [r1]
	ldrb r2, [r1, #2]
	ldrb r1, [r1, #1]
	lsl r5, r4, #8
	mov r4, #0xff
	lsl r4, r4, #8
	and r5, r4
	orr r5, r1
	ldr r1, _021E4AB4 ; =0x04000042
	lsl r2, r2, #8
	and r2, r4
	strh r5, [r1]
	orr r2, r3
	strh r2, [r1, #4]
_021E4AA8:
	bl FUN_0200CAB4
	pop {r3, r4, r5, pc}
	nop
_021E4AB0: .word 0x04000040
_021E4AB4: .word 0x04000042

	thumb_func_start MOD05_021E4AB8
MOD05_021E4AB8: ; 0x021E4AB8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021E4ACC ; =0x0400006C
	ldr r1, [r1]
	bl GXx_SetMasterBrightness_
	add r0, r4, #0
	bl FUN_0200CAB4
	pop {r4, pc}
	.balign 4, 0
_021E4ACC: .word 0x0400006C

	thumb_func_start MOD05_021E4AD0
MOD05_021E4AD0: ; 0x021E4AD0
	ldr r3, _021E4ADC ; =0x0200CA99
	mov r2, #1
	add r1, r0, #0
	ldr r0, _021E4AE0 ; =MOD05_021E4AB8
	lsl r2, r2, #0xa
	bx r3
	.balign 4, 0
_021E4ADC: .word 0x0200CA99
_021E4AE0: .word MOD05_021E4AB8

	thumb_func_start MOD05_021E4AE4
MOD05_021E4AE4: ; 0x021E4AE4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	str r2, [sp]
	add r0, r2, #0
	add r2, r3, #0
	mov r1, #0x42
	mov r3, #0
	bl MOD05_021F5990
	mov r1, #0x2c
	mov r2, #0
	add r6, r0, #0
	bl MOD05_021F5A20
	mov r1, #0
	mov r2, #0x2c
	add r4, r0, #0
	bl Call_FillMemWithValue
	ldr r0, [sp]
	lsl r1, r5, #3
	str r0, [r4]
	mov r0, #0x42
	str r0, [r4, #4]
	str r5, [r4, #8]
	str r6, [r4, #0x14]
	str r7, [r4, #0x18]
	add r0, r6, #0
	mov r2, #0
	bl MOD05_021F5A20
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl MOD05_021E4C80
	add r0, r4, #0
	bl MOD05_021E4C34
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E4B38
MOD05_021E4B38: ; 0x021E4B38
	ldr r3, _021E4B40 ; =MOD05_021E4D90
	str r1, [r0, #0xc]
	bx r3
	nop
_021E4B40: .word MOD05_021E4D90

	thumb_func_start MOD05_021E4B44
MOD05_021E4B44: ; 0x021E4B44
	push {r3, r4, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x20]
	str r4, [sp]
	ldr r4, [sp, #0x24]
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x30]
	str r4, [sp, #0x10]
	bl MOD05_021E4DEC
	add sp, #0x14
	pop {r3, r4, pc}

	thumb_func_start MOD05_021E4B64
MOD05_021E4B64: ; 0x021E4B64
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl MOD05_021E4D2C
	cmp r0, #0
	beq _021E4B78
	bl ErrorHandling
	pop {r3, r4, r5, pc}
_021E4B78:
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021E4C98
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E4B84
MOD05_021E4B84: ; 0x021E4B84
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r5, r0, #0
	cmp r1, #0x20
	beq _021E4B9E
_021E4B90:
	add r0, r5, #0
	bl MOD05_021E4B64
	add r4, r4, #4
	ldr r1, [r4]
	cmp r1, #0x20
	bne _021E4B90
_021E4B9E:
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021E4BA0
MOD05_021E4BA0: ; 0x021E4BA0
	ldr r3, _021E4BA4 ; =MOD05_021E4DB4
	bx r3
	.balign 4, 0
_021E4BA4: .word MOD05_021E4DB4

	thumb_func_start MOD05_021E4BA8
MOD05_021E4BA8: ; 0x021E4BA8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x14]
	bl MOD05_021E4DA0
	add r0, r5, #0
	bl MOD05_021E4CDC
	add r0, r5, #0
	bl MOD05_021E4E5C
	add r0, r5, #0
	bl MOD05_021E4C48
	ldr r1, [r5, #0x1c]
	add r0, r4, #0
	bl MOD05_021F5A5C
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021F5A5C
	add r0, r4, #0
	bl MOD05_021F59EC
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021E4BDC
MOD05_021E4BDC: ; 0x021E4BDC
	ldr r3, _021E4BE4 ; =MOD05_021F5A20
	ldr r0, [r0, #0x14]
	bx r3
	nop
_021E4BE4: .word MOD05_021F5A20

	thumb_func_start MOD05_021E4BE8
MOD05_021E4BE8: ; 0x021E4BE8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r3, #0
	bl MOD05_021E4BDC
	add r1, r4, #0
	add r2, r5, #0
	add r6, r0, #0
	bl Call_FillMemWithValue
	add r0, r6, #0
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021E4C00
MOD05_021E4C00: ; 0x021E4C00
	ldr r3, _021E4C04 ; =0x02016A19
	bx r3
	.balign 4, 0
_021E4C04: .word 0x02016A19

	thumb_func_start MOD05_021E4C08
MOD05_021E4C08: ; 0x021E4C08
	push {r3, lr}
	bl MOD05_021E4D2C
	cmp r0, #0
	bne _021E4C1A
	bl ErrorHandling
	mov r0, #0
	pop {r3, pc}
_021E4C1A:
	ldr r0, [r0, #4]
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E4C20
MOD05_021E4C20: ; 0x021E4C20
	ldr r0, [r0, #0x18]
	bx lr

	thumb_func_start MOD05_021E4C24
MOD05_021E4C24: ; 0x021E4C24
	push {r3, lr}
	bl FUN_02058738
	ldr r0, [r0, #0x3c]
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E4C30
MOD05_021E4C30: ; 0x021E4C30
	ldr r0, [r0, #4]
	bx lr

	thumb_func_start MOD05_021E4C34
MOD05_021E4C34: ; 0x021E4C34
	push {r4, lr}
	add r4, r0, #0
	bl MOD05_021E4C30
	add r1, r0, #0
	mov r0, #0x6b
	bl FUN_02006670
	str r0, [r4, #0x20]
	pop {r4, pc}

	thumb_func_start MOD05_021E4C48
MOD05_021E4C48: ; 0x021E4C48
	ldr r3, _021E4C50 ; =0x020066F5
	ldr r0, [r0, #0x20]
	bx r3
	nop
_021E4C50: .word 0x020066F5

	thumb_func_start MOD05_021E4C54
MOD05_021E4C54: ; 0x021E4C54
	ldr r3, _021E4C5C ; =0x020067D1
	ldr r0, [r0, #0x20]
	bx r3
	nop
_021E4C5C: .word 0x020067D1

	thumb_func_start MOD05_021E4C60
MOD05_021E4C60: ; 0x021E4C60
	ldr r3, _021E4C68 ; =0x02006775
	ldr r0, [r0, #0x20]
	bx r3
	nop
_021E4C68: .word 0x02006775

	thumb_func_start MOD05_021E4C6C
MOD05_021E4C6C: ; 0x021E4C6C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r3, r2, #0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x20]
	add r2, r4, #0
	bl MOD05_021F5AB8
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021E4C80
MOD05_021E4C80: ; 0x021E4C80
	push {r3, r4, r5, lr}
	ldr r4, [r0, #8]
	ldr r5, [r0, #0x1c]
	cmp r4, #0
	beq _021E4C96
_021E4C8A:
	add r0, r5, #0
	bl MOD05_021E4D44
	add r5, #8
	sub r4, r4, #1
	bne _021E4C8A
_021E4C96:
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021E4C98
MOD05_021E4C98: ; 0x021E4C98
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl MOD05_021E4D68
	add r1, r0, #0
	ldr r1, [r1, #4]
	add r0, r5, #0
	blx r1
	add r4, r0, #0
	add r0, r5, #0
	bl MOD05_021E4D04
	add r1, r6, #0
	add r2, r4, #0
	bl MOD05_021E4D50
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E4CC0
MOD05_021E4CC0: ; 0x021E4CC0
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4]
	bl MOD05_021E4D68
	add r1, r0, #0
	ldr r0, [r4, #4]
	ldr r1, [r1, #8]
	blx r1
	add r0, r4, #0
	bl MOD05_021E4D44
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E4CDC
MOD05_021E4CDC: ; 0x021E4CDC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r4, [r6, #8]
	ldr r5, [r6, #0x1c]
	cmp r4, #0
	beq _021E4D00
_021E4CE8:
	add r0, r5, #0
	bl MOD05_021E4D58
	cmp r0, #0
	bne _021E4CFA
	add r0, r6, #0
	add r1, r5, #0
	bl MOD05_021E4CC0
_021E4CFA:
	add r5, #8
	sub r4, r4, #1
	bne _021E4CE8
_021E4D00:
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E4D04
MOD05_021E4D04: ; 0x021E4D04
	push {r3, r4, r5, lr}
	ldr r4, [r0, #8]
	ldr r5, [r0, #0x1c]
	cmp r4, #0
	beq _021E4D22
_021E4D0E:
	add r0, r5, #0
	bl MOD05_021E4D58
	cmp r0, #1
	bne _021E4D1C
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_021E4D1C:
	add r5, #8
	sub r4, r4, #1
	bne _021E4D0E
_021E4D22:
	bl ErrorHandling
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E4D2C
MOD05_021E4D2C: ; 0x021E4D2C
	ldr r3, [r0, #8]
	ldr r0, [r0, #0x1c]
	cmp r3, #0
	beq _021E4D40
_021E4D34:
	ldr r2, [r0]
	cmp r2, r1
	beq _021E4D42
	add r0, #8
	sub r3, r3, #1
	bne _021E4D34
_021E4D40:
	mov r0, #0
_021E4D42:
	bx lr

	thumb_func_start MOD05_021E4D44
MOD05_021E4D44: ; 0x021E4D44
	mov r1, #0x20
	str r1, [r0]
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021E4D50
MOD05_021E4D50: ; 0x021E4D50
	str r1, [r0]
	str r2, [r0, #4]
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021E4D58
MOD05_021E4D58: ; 0x021E4D58
	ldr r0, [r0]
	cmp r0, #0x20
	bne _021E4D62
	mov r0, #1
	bx lr
_021E4D62:
	mov r0, #0
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021E4D68
MOD05_021E4D68: ; 0x021E4D68
	push {r3, lr}
	ldr r1, _021E4D8C ; =0x021FC820
	ldr r2, [r1]
	cmp r2, #0x20
	beq _021E4D82
_021E4D72:
	cmp r2, r0
	bne _021E4D7A
	add r0, r1, #0
	pop {r3, pc}
_021E4D7A:
	add r1, #0xc
	ldr r2, [r1]
	cmp r2, #0x20
	bne _021E4D72
_021E4D82:
	bl ErrorHandling
	mov r0, #0
	pop {r3, pc}
	nop
_021E4D8C: .word 0x021FC820

	thumb_func_start MOD05_021E4D90
MOD05_021E4D90: ; 0x021E4D90
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	bl FUN_020643C0
	str r0, [r4, #0x24]
	pop {r4, pc}

	thumb_func_start MOD05_021E4DA0
MOD05_021E4DA0: ; 0x021E4DA0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021E4DB2
	bl FUN_020643F0
	mov r0, #0
	str r0, [r4, #0x24]
_021E4DB2:
	pop {r4, pc}

	thumb_func_start MOD05_021E4DB4
MOD05_021E4DB4: ; 0x021E4DB4
	push {r3, lr}
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _021E4DC0
	bl FUN_02064584
_021E4DC0:
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E4DC4
MOD05_021E4DC4: ; 0x021E4DC4
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x14]
	str r4, [sp, #4]
	ldr r0, [r0, #0x24]
	bl FUN_020644E4
	add r4, r0, #0
	bne _021E4DDE
	bl ErrorHandling
_021E4DDE:
	add r0, r4, #0
	add sp, #8
	pop {r4, pc}

	thumb_func_start MOD05_021E4DE4
MOD05_021E4DE4: ; 0x021E4DE4
	ldr r3, _021E4DE8 ; =0x02064521
	bx r3
	.balign 4, 0
_021E4DE8: .word 0x02064521

	thumb_func_start MOD05_021E4DEC
MOD05_021E4DEC: ; 0x021E4DEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r2, #0
	add r5, r1, #0
	mov r2, #0
	str r3, [sp]
	mov r1, #0x24
	add r3, r2, #0
	add r7, r0, #0
	bl MOD05_021E4BE8
	add r4, r0, #0
	str r4, [r7, #0x28]
	str r5, [r4]
	ldr r0, [sp]
	strh r6, [r4, #4]
	strh r0, [r4, #6]
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x28]
	strh r0, [r4, #8]
	ldr r0, [sp, #0x24]
	ldr r3, [sp]
	strh r0, [r4, #0xa]
	add r0, r5, #0
	mov r1, #0x45
	bl MOD05_021F5990
	str r0, [r4, #0x10]
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x20]
	add r0, r5, #0
	mov r1, #0x46
	bl MOD05_021F5990
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x24]
	add r1, r5, #0
	bl FUN_02020E90
	str r0, [r4, #0x18]
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	bl MOD05_021E4F60
	add r0, r7, #0
	str r6, [sp, #4]
	bl MOD05_021E4C30
	str r0, [sp, #8]
	add r0, sp, #4
	bl FUN_0201F1B4
	str r0, [r4, #0xc]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021E4E5C
MOD05_021E4E5C: ; 0x021E4E5C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r5, [r4, #0x28]
	cmp r5, #0
	beq _021E4E8E
	ldr r0, [r5, #0xc]
	bl FUN_0201F23C
	add r0, r5, #0
	bl MOD05_021E4F94
	ldr r0, [r5, #0x10]
	bl MOD05_021F59EC
	ldr r0, [r5, #0x14]
	bl MOD05_021F59EC
	ldr r0, [r5, #0x18]
	bl FUN_02020ED4
	add r0, r5, #0
	bl MOD05_021E4C00
	mov r0, #0
	str r0, [r4, #0x28]
_021E4E8E:
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021E4E90
MOD05_021E4E90: ; 0x021E4E90
	push {r4, lr}
	sub sp, #0x20
	ldr r0, [r0, #0x28]
	add r3, sp, #8
	ldr r0, [r0, #0xc]
	str r0, [sp]
	str r1, [sp, #4]
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	add r2, sp, #0x14
	str r0, [r3]
	ldr r3, _021E4EE0 ; =0x021F7564
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add r0, sp, #0
	bl FUN_0201F6E8
	add r4, r0, #0
	bne _021E4EC0
	bl ErrorHandling
_021E4EC0:
	cmp r4, #0
	beq _021E4EDA
	add r0, r4, #0
	bl FUN_0201F8E0
	mov r1, #1
	bl FUN_020BB9F4
	add r0, r4, #0
	bl FUN_0201F8E0
	bl MOD05_021DB5EC
_021E4EDA:
	add r0, r4, #0
	add sp, #0x20
	pop {r4, pc}
	.balign 4, 0
_021E4EE0: .word 0x021F7564

	thumb_func_start MOD05_021E4EE4
MOD05_021E4EE4: ; 0x021E4EE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	add r4, r2, #0
	bl MOD05_021E504C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl MOD05_021E4E90
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021E4EFC
MOD05_021E4EFC: ; 0x021E4EFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r5, [r0, #0x28]
	add r6, r1, #0
	ldr r0, [r5, #0x10]
	add r1, r2, #0
	add r4, r3, #0
	bl MOD05_021F5A90
	add r7, r0, #0
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	bl MOD05_021F5A90
	add r1, sp, #0xc
	bl FUN_0202227C
	ldr r0, [r5, #0x18]
	ldr r1, [sp, #0x30]
	bl FUN_02021050
	add r4, r0, #0
	bne _021E4F2E
	bl ErrorHandling
_021E4F2E:
	add r0, r4, #0
	bl FUN_020210AC
	ldr r1, [sp, #0x34]
	cmp r1, #1
	bne _021E4F3C
	mov r4, #0
_021E4F3C:
	str r0, [sp]
	ldr r0, [sp, #0x38]
	str r4, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	add r3, sp, #0xc
	bl MOD05_021E4FC8
	add r4, r0, #0
	bne _021E4F58
	bl ErrorHandling
_021E4F58:
	add r0, r4, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E4F60
MOD05_021E4F60: ; 0x021E4F60
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r2, #0
	mov r1, #0x28
	add r7, r0, #0
	mul r1, r5
	mov r2, #0
	bl MOD05_021E4BDC
	add r4, r0, #0
	add r0, r7, #0
	lsl r1, r5, #3
	mov r2, #0
	str r4, [r6, #0x20]
	bl MOD05_021E4BDC
	str r0, [r6, #0x1c]
	mov r1, #0xe
_021E4F84:
	str r1, [r0]
	str r4, [r0, #4]
	add r0, #8
	add r4, #0x28
	sub r5, r5, #1
	bne _021E4F84
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E4F94
MOD05_021E4F94: ; 0x021E4F94
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl MOD05_021E4C00
	ldr r0, [r4, #0x20]
	bl MOD05_021E4C00
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E4FA8
MOD05_021E4FA8: ; 0x021E4FA8
	push {r3, lr}
	ldrh r2, [r0, #4]
	ldr r3, [r0, #0x1c]
_021E4FAE:
	ldr r0, [r3]
	cmp r0, r1
	bne _021E4FBA
	mov r0, #0xe
	str r0, [r3]
	pop {r3, pc}
_021E4FBA:
	add r3, #8
	sub r2, r2, #1
	bne _021E4FAE
	bl ErrorHandling
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E4FC8
MOD05_021E4FC8: ; 0x021E4FC8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldrh r5, [r6, #4]
	add r0, r1, #0
	ldr r1, [sp, #0x1c]
	str r2, [sp]
	ldr r6, [r6, #0x1c]
	add r7, r3, #0
	str r1, [sp, #0x1c]
	mov r4, #0
	add r2, r5, #0
	add r3, r6, #0
_021E4FE0:
	ldr r1, [r3]
	cmp r1, r0
	bne _021E4FEA
	ldr r0, [r3, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021E4FEA:
	add r3, #8
	sub r2, r2, #1
	bne _021E4FE0
_021E4FF0:
	ldr r1, [r6]
	cmp r1, #0xe
	bne _021E4FFC
	str r0, [r6]
	ldr r4, [r6, #4]
	b _021E5002
_021E4FFC:
	add r6, #8
	sub r5, r5, #1
	bne _021E4FF0
_021E5002:
	cmp r4, #0
	bne _021E500A
	bl ErrorHandling
_021E500A:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x28
	bl Call_FillMemWithValue
	ldr r0, [sp]
	add r2, r4, #0
	str r0, [r4]
	add r2, #0xc
	ldmia r7!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r7!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp, #0x18]
	str r0, [r4, #4]
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _021E5044
	bl FUN_020211AC
	str r0, [r4, #0x1c]
	ldr r0, [sp, #0x1c]
	bl FUN_020211BC
	str r0, [r4, #0x20]
	ldr r0, [sp, #0x1c]
	bl FUN_020211CC
	str r0, [r4, #0x24]
_021E5044:
	ldr r0, [sp, #0x20]
	str r0, [r4, #8]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021E504C
MOD05_021E504C: ; 0x021E504C
	push {r3, lr}
	ldrh r2, [r0, #4]
	ldr r3, [r0, #0x1c]
_021E5052:
	ldr r0, [r3]
	cmp r0, r1
	bne _021E505C
	ldr r0, [r3, #4]
	pop {r3, pc}
_021E505C:
	add r3, #8
	sub r2, r2, #1
	bne _021E5052
	bl ErrorHandling
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E506C
MOD05_021E506C: ; 0x021E506C
	ldr r3, _021E5074 ; =MOD05_021E4FA8
	ldr r0, [r0, #0x28]
	bx r3
	nop
_021E5074: .word MOD05_021E4FA8

	thumb_func_start MOD05_021E5078
MOD05_021E5078: ; 0x021E5078
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x28]
	add r3, r2, #0
	ldr r0, [r0, #0x10]
	ldr r2, [r4, #0x20]
	bl MOD05_021F5AE4
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E5094
MOD05_021E5094: ; 0x021E5094
	ldr r0, [r0, #0x28]
	ldr r3, _021E509C ; =MOD05_021F5A90
	ldr r0, [r0, #0x10]
	bx r3
	.balign 4, 0
_021E509C: .word MOD05_021F5A90

	thumb_func_start MOD05_021E50A0
MOD05_021E50A0: ; 0x021E50A0
	ldr r0, [r0, #0x28]
	ldr r3, _021E50A8 ; =MOD05_021F5A74
	ldr r0, [r0, #0x10]
	bx r3
	.balign 4, 0
_021E50A8: .word MOD05_021F5A74

	thumb_func_start MOD05_021E50AC
MOD05_021E50AC: ; 0x021E50AC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x28]
	add r3, r2, #0
	ldr r0, [r0, #0x14]
	ldr r2, [r4, #0x20]
	bl MOD05_021F5AE4
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E50C8
MOD05_021E50C8: ; 0x021E50C8
	ldr r0, [r0, #0x28]
	ldr r3, _021E50D0 ; =MOD05_021F5A74
	ldr r0, [r0, #0x14]
	bx r3
	.balign 4, 0
_021E50D0: .word MOD05_021F5A74

	thumb_func_start MOD05_021E50D4
MOD05_021E50D4: ; 0x021E50D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	add r1, r2, #0
	ldr r4, [r5, #0x28]
	mov r2, #1
	add r7, r3, #0
	bl MOD05_021E4C6C
	str r0, [sp, #4]
	add r0, r5, #0
	bl MOD05_021E4C30
	str r0, [sp]
	ldr r0, [r4, #0x18]
	ldr r1, [sp, #4]
	add r2, r6, #0
	add r3, r7, #0
	bl FUN_02020F54
	cmp r0, #0
	bne _021E5106
	bl ErrorHandling
_021E5106:
	ldr r2, [r4, #0x18]
	add r0, r5, #0
	add r1, r6, #0
	bl MOD05_021E5120
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021E5114
MOD05_021E5114: ; 0x021E5114
	ldr r0, [r0, #0x28]
	ldr r3, _021E511C ; =0x02020FF1
	ldr r0, [r0, #0x18]
	bx r3
	.balign 4, 0
_021E511C: .word 0x02020FF1

	thumb_func_start MOD05_021E5120
MOD05_021E5120: ; 0x021E5120
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r2, #0
	mov r1, #0xc
	mov r2, #1
	bl MOD05_021E4BDC
	add r4, r0, #0
	mov r0, #1
	str r0, [r4]
	str r5, [r4, #4]
	ldr r0, _021E5150 ; =MOD05_021E5158
	add r1, r4, #0
	mov r2, #0xff
	str r6, [r4, #8]
	bl FUN_0200CA60
	ldr r0, _021E5154 ; =MOD05_021E5174
	add r1, r4, #0
	mov r2, #0xff
	bl FUN_0200CA98
	pop {r4, r5, r6, pc}
	nop
_021E5150: .word MOD05_021E5158
_021E5154: .word MOD05_021E5174

	thumb_func_start MOD05_021E5158
MOD05_021E5158: ; 0x021E5158
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	bl FUN_020210F0
	mov r0, #1
	str r0, [r4]
	add r0, r5, #0
	bl FUN_0200CAB4
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E5174
MOD05_021E5174: ; 0x021E5174
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #1
	bne _021E5194
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	bl FUN_02021158
	add r0, r4, #0
	bl MOD05_021E4C00
	add r0, r5, #0
	bl FUN_0200CAB4
_021E5194:
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E5198
MOD05_021E5198: ; 0x021E5198
	push {r4, r5, r6, lr}
	add r4, r3, #0
	ldr r0, [r4]
	add r6, r1, #0
	add r5, r2, #0
	bl FUN_020BC0FC
	cmp r0, #0
	beq _021E51C8
	bl FUN_0201B254
	cmp r0, #0
	bne _021E51C8
	ldr r0, [r4]
	ldr r1, [r0, #8]
	bl DC_FlushRange
	ldr r0, [r4]
	bl FUN_020BB59C
	cmp r0, #0
	bne _021E51C8
	bl ErrorHandling
_021E51C8:
	ldr r0, [r4]
	bl FUN_020BC13C
	ldrh r1, [r0, #0xe]
	add r1, r0, r1
	ldr r1, [r1, #0xc]
	add r0, r0, r1
	str r0, [r5]
	cmp r5, #0
	bne _021E51E0
	bl ErrorHandling
_021E51E0:
	ldr r1, [r5]
	add r0, r6, #0
	bl FUN_020B80B4
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E51EC
MOD05_021E51EC: ; 0x021E51EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl MOD05_021E4C6C
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x10]
	str r0, [r3]
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021E5198
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E5208
MOD05_021E5208: ; 0x021E5208
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_0201B3C4
	ldr r0, [r4]
	ldr r1, [r4, #0xc]
	bl FUN_0201B3A8
	add r0, r5, #0
	bl FUN_0200CAB4
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021E5224
MOD05_021E5224: ; 0x021E5224
	push {r4, lr}
	add r4, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	bl MOD05_021E4C6C
	str r0, [r4]
	bl FUN_020BC13C
	str r0, [r4, #4]
	ldrh r1, [r0, #0xe]
	add r1, r0, r1
	ldr r1, [r1, #0xc]
	add r0, r0, r1
	str r0, [r4, #8]
	ldr r0, [r4]
	bl FUN_020BC0FC
	str r0, [r4, #0xc]
	cmp r0, #0
	beq _021E525A
	mov r2, #1
	ldr r0, _021E525C ; =MOD05_021E5208
	add r1, r4, #0
	lsl r2, r2, #0xa
	bl FUN_0200CA60
_021E525A:
	pop {r4, pc}
	.balign 4, 0
_021E525C: .word MOD05_021E5208

	thumb_func_start MOD05_021E5260
MOD05_021E5260: ; 0x021E5260
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	add r6, r3, #0
	bl MOD05_021E4C6C
	str r0, [r5]
	mov r1, #0
	bl FUN_020BC4C8
	str r0, [r5, #4]
	ldr r1, [r5, #4]
	ldr r2, [r4, #8]
	add r0, r6, #0
	bl FUN_020BB8D0
	str r0, [r5, #8]
	ldr r1, [r5, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl FUN_020B8110
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E5294
MOD05_021E5294: ; 0x021E5294
	push {r4, lr}
	add r4, r1, #0
	bl MOD05_021E4C30
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0x20
	bl FUN_02016B20
	pop {r4, pc}

	thumb_func_start MOD05_021E52A8
MOD05_021E52A8: ; 0x021E52A8
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x60
	add r3, r2, #0
	add r5, r0, #0
	bl MOD05_021E4BE8
	add r4, r0, #0
	str r5, [r4]
	bl MOD05_021E52D4
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E52C4
MOD05_021E52C4: ; 0x021E52C4
	push {r4, lr}
	add r4, r0, #0
	bl MOD05_021E52F4
	add r0, r4, #0
	bl MOD05_021E4C00
	pop {r4, pc}

	thumb_func_start MOD05_021E52D4
MOD05_021E52D4: ; 0x021E52D4
	push {r3, lr}
	sub sp, #8
	add r3, r0, #0
	add r0, #0x58
	str r0, [sp]
	add r0, r3, #0
	add r0, #0x5c
	str r0, [sp, #4]
	ldr r0, [r3]
	mov r1, #0x11
	mov r2, #0
	add r3, r3, #4
	bl MOD05_021E51EC
	add sp, #8
	pop {r3, pc}

	thumb_func_start MOD05_021E52F4
MOD05_021E52F4: ; 0x021E52F4
	ldr r3, _021E52FC ; =MOD05_021E4C00
	ldr r0, [r0, #0x5c]
	bx r3
	nop
_021E52FC: .word MOD05_021E4C00

	thumb_func_start MOD05_021E5300
MOD05_021E5300: ; 0x021E5300
	push {r3, r4, r5, lr}
	mov r1, #0xbe
	mov r2, #0
	lsl r1, r1, #4
	add r3, r2, #0
	add r5, r0, #0
	bl MOD05_021E4BE8
	add r4, r0, #0
	str r5, [r4]
	bl MOD05_021E532C
	add r0, r4, #0
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021E531C
MOD05_021E531C: ; 0x021E531C
	push {r4, lr}
	add r4, r0, #0
	bl MOD05_021E5398
	add r0, r4, #0
	bl MOD05_021E4C00
	pop {r4, pc}

	thumb_func_start MOD05_021E532C
MOD05_021E532C: ; 0x021E532C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r1, _021E5390 ; =0x00000B5C
	str r0, [sp, #8]
	add r6, r0, r1
	sub r1, #0x84
	mov r4, #0
	add r5, r0, r1
	add r7, r0, #4
_021E533E:
	str r5, [sp]
	ldr r0, [sp, #8]
	str r6, [sp, #4]
	add r1, r4, #0
	ldr r0, [r0]
	add r1, #0x1a
	mov r2, #0
	add r3, r7, #0
	bl MOD05_021E51EC
	add r4, r4, #1
	add r6, r6, #4
	add r5, r5, #4
	add r7, #0x54
	cmp r4, #0x20
	blt _021E533E
	ldr r2, _021E5394 ; =0x00000AD8
	ldr r1, [sp, #8]
	lsl r0, r4, #2
	add r1, r1, r2
	add r1, r1, r0
	str r1, [sp]
	ldr r1, [sp, #8]
	add r2, #0x84
	add r1, r1, r2
	add r0, r1, r0
	ldr r3, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r5, r3, #4
	mov r3, #0x54
	mul r3, r4
	ldr r0, [r0]
	mov r1, #0x19
	mov r2, #0
	add r3, r5, r3
	bl MOD05_021E51EC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E5390: .word 0x00000B5C
_021E5394: .word 0x00000AD8

	thumb_func_start MOD05_021E5398
MOD05_021E5398: ; 0x021E5398
	push {r4, r5, r6, lr}
	ldr r6, _021E53B0 ; =0x00000B5C
	add r5, r0, #0
	mov r4, #0
_021E53A0:
	ldr r0, [r5, r6]
	bl MOD05_021E4C00
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x21
	blt _021E53A0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E53B0: .word 0x00000B5C

	thumb_func_start MOD05_021E53B4
MOD05_021E53B4: ; 0x021E53B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	add r4, r1, #0
	mov r1, #3
	add r6, r2, #0
	add r7, r3, #0
	str r0, [sp, #8]
	str r0, [sp, #0x24]
	bl MOD05_021E4C08
	str r0, [sp, #0x28]
	mov r0, #9
	mov r3, #0
	lsl r1, r4, #0x10
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	str r6, [sp, #0x1c]
	str r5, [sp, #0x20]
	str r3, [sp, #0x10]
	add r0, sp, #0x18
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, _021E541C ; =0x021F757C
	add r2, sp, #0xc
	bl MOD05_021E4DC4
	add r5, r0, #0
	beq _021E5416
	bl FUN_02064738
	add r4, r0, #0
	ldr r0, [sp, #0x40]
	str r0, [r4, #0x54]
	add r0, r7, #0
	bl _fflt
	str r0, [r4, #0x58]
	add r0, r7, #0
	bl _fflt
	str r0, [r4, #0x5c]
_021E5416:
	add r0, r5, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E541C: .word 0x021F757C

	thumb_func_start MOD05_021E5420
MOD05_021E5420: ; 0x021E5420
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldr r4, [sp, #0x18]
	add r5, r3, #0
	str r4, [sp]
	bl MOD05_021E53B4
	add r6, r0, #0
	beq _021E5444
	bl FUN_02064738
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, #0x58]
	add r0, r5, #0
	bl _fflt
	str r0, [r4, #0x5c]
_021E5444:
	add r0, r6, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E544C
MOD05_021E544C: ; 0x021E544C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl FUN_0206475C
	add r3, r0, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x6c
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r4, #0x6c]
	lsl r1, r0, #0x10
	mov r0, #9
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #0x70]
	add r1, sp, #0
	lsl r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	bl FUN_0206476C
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E5490
MOD05_021E5490: ; 0x021E5490
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021E5494
MOD05_021E5494: ; 0x021E5494
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x58]
	ldr r1, [r4, #0x5c]
	bl _fls
	bhs _021E54B6
	ldr r0, [r4, #0x58]
	bl _f2d
	ldr r2, _021E54B8 ; =0x9999999A
	ldr r3, _021E54BC ; =0x3FC99999
	bl _dadd
	bl _d2f
	str r0, [r4, #0x58]
_021E54B6:
	pop {r4, pc}
	.balign 4, 0
_021E54B8: .word 0x9999999A
_021E54BC: .word 0x3FC99999

	thumb_func_start MOD05_021E54C0
MOD05_021E54C0: ; 0x021E54C0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x3c
	ldr r5, _021E555C ; =0x021F7570
	add r2, r0, #0
	add r4, r1, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x24
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	ldr r6, _021E5560 ; =0x021F7590
	str r0, [r3]
	add r5, sp, #0
	mov r3, #4
_021E54DA:
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r3, r3, #1
	bne _021E54DA
	ldr r0, [r6]
	add r1, sp, #0x30
	str r0, [r5]
	add r0, r2, #0
	bl FUN_0206477C
	ldr r0, [sp, #0x24]
	bl _fflt
	ldr r1, [r4, #0x58]
	bl _fmul
	bl _ffix
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x28]
	bl _fflt
	ldr r1, [r4, #0x58]
	bl _fmul
	bl _ffix
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	bl _fflt
	ldr r1, [r4, #0x58]
	bl _fmul
	bl _ffix
	str r0, [sp, #0x2c]
	mov r0, #2
	ldr r1, [sp, #0x30]
	lsl r0, r0, #0xa
	sub r1, r1, r0
	str r1, [sp, #0x30]
	ldr r1, [sp, #0x34]
	lsl r0, r0, #1
	sub r0, r1, r0
	str r0, [sp, #0x34]
	mov r0, #5
	ldr r1, [sp, #0x38]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x38]
	ldr r0, [r4, #0x7c]
	ldr r1, [r4, #0x54]
	add r2, r0, #4
	mov r0, #0x54
	mul r0, r1
	add r0, r2, r0
	add r1, sp, #0x30
	add r2, sp, #0
	add r3, sp, #0x24
	bl FUN_0201B26C
	add sp, #0x3c
	pop {r3, r4, r5, r6, pc}
	nop
_021E555C: .word 0x021F7570
_021E5560: .word 0x021F7590

	thumb_func_start MOD05_021E5564
MOD05_021E5564: ; 0x021E5564
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x60
	add r3, r2, #0
	add r5, r0, #0
	bl MOD05_021E4BE8
	add r4, r0, #0
	str r5, [r4]
	bl MOD05_021E5590
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E5580
MOD05_021E5580: ; 0x021E5580
	push {r4, lr}
	add r4, r0, #0
	bl MOD05_021E55B0
	add r0, r4, #0
	bl MOD05_021E4C00
	pop {r4, pc}

	thumb_func_start MOD05_021E5590
MOD05_021E5590: ; 0x021E5590
	push {r3, lr}
	sub sp, #8
	add r3, r0, #0
	add r0, #0x58
	str r0, [sp]
	add r0, r3, #0
	add r0, #0x5c
	str r0, [sp, #4]
	ldr r0, [r3]
	mov r1, #0x15
	mov r2, #0
	add r3, r3, #4
	bl MOD05_021E51EC
	add sp, #8
	pop {r3, pc}

	thumb_func_start MOD05_021E55B0
MOD05_021E55B0: ; 0x021E55B0
	ldr r3, _021E55B8 ; =MOD05_021E4C00
	ldr r0, [r0, #0x5c]
	bx r3
	nop
_021E55B8: .word MOD05_021E4C00

	thumb_func_start MOD05_021E55BC
MOD05_021E55BC: ; 0x021E55BC
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x6c
	add r3, r2, #0
	add r5, r0, #0
	bl MOD05_021E4BE8
	add r4, r0, #0
	str r5, [r4, #8]
	bl MOD05_021E55E8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E55D8
MOD05_021E55D8: ; 0x021E55D8
	push {r4, lr}
	add r4, r0, #0
	bl MOD05_021E5608
	add r0, r4, #0
	bl MOD05_021E4C00
	pop {r4, pc}

	thumb_func_start MOD05_021E55E8
MOD05_021E55E8: ; 0x021E55E8
	push {r3, lr}
	sub sp, #8
	add r3, r0, #0
	add r0, #0x60
	str r0, [sp]
	add r0, r3, #0
	add r0, #0x64
	str r0, [sp, #4]
	ldr r0, [r3, #8]
	mov r1, #0x16
	mov r2, #0
	add r3, #0xc
	bl MOD05_021E51EC
	add sp, #8
	pop {r3, pc}

	thumb_func_start MOD05_021E5608
MOD05_021E5608: ; 0x021E5608
	ldr r3, _021E5610 ; =MOD05_021E4C00
	ldr r0, [r0, #0x64]
	bx r3
	nop
_021E5610: .word MOD05_021E4C00

	thumb_func_start MOD05_021E5614
MOD05_021E5614: ; 0x021E5614
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	bl MOD05_021E4C24
	add r4, r0, #0
	mov r1, #5
	str r4, [sp, #0x14]
	bl MOD05_021E4C08
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, sp, #8
	str r5, [sp, #0x1c]
	bl FUN_02058B5C
	add r0, sp, #0x14
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r1, _021E564C ; =0x021F75C0
	add r0, r4, #0
	add r2, sp, #8
	mov r3, #0
	bl MOD05_021E4DC4
	add sp, #0x20
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E564C: .word 0x021F75C0

	thumb_func_start MOD05_021E5650
MOD05_021E5650: ; 0x021E5650
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl FUN_0206475C
	add r3, r0, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x30
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r4, #0x38]
	bl FUN_02058448
	str r0, [r4, #8]
	ldr r0, [r4, #0x38]
	bl FUN_02058450
	str r0, [r4, #0xc]
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x38]
	add r1, sp, #0
	bl FUN_02058B5C
	add r0, r5, #0
	add r1, sp, #0
	bl FUN_0206476C
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E5698
MOD05_021E5698: ; 0x021E5698
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021E569C
MOD05_021E569C: ; 0x021E569C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r6, [r4, #0x38]
	ldr r1, [r4, #8]
	add r5, r0, #0
	ldr r2, [r4, #0xc]
	add r0, r6, #0
	bl FUN_020582A8
	cmp r0, #0
	bne _021E56B8
	bl ErrorHandling
_021E56B8:
	ldr r0, [r4]
	cmp r0, #0
	beq _021E56C8
	cmp r0, #1
	beq _021E56E6
	add sp, #0xc
	cmp r0, #2
	pop {r3, r4, r5, r6, pc}
_021E56C8:
	add r0, r6, #0
	add r1, sp, #0
	bl FUN_02058B5C
	mov r0, #0xa
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, sp, #0
	bl FUN_0206476C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021E56E6:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x1e
	blt _021E56F6
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021E56F6:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E56FC
MOD05_021E56FC: ; 0x021E56FC
	push {r4, r5, r6, lr}
	sub sp, #0x60
	ldr r5, _021E5774 ; =0x021F75B4
	add r2, r0, #0
	add r4, r1, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x48
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	ldr r6, _021E5778 ; =0x021F75D4
	str r0, [r3]
	add r5, sp, #0x24
	mov r3, #4
_021E5716:
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r3, r3, #1
	bne _021E5716
	ldr r0, [r6]
	add r1, sp, #0x54
	str r0, [r5]
	add r0, r2, #0
	bl FUN_0206477C
	mov r0, #0x19
	ldr r1, [sp, #0x58]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x58]
	mov r0, #5
	ldr r1, [sp, #0x5c]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0x5c]
	bl FUN_020B8344
	mov r2, #0
	add r5, r0, #0
	add r0, sp, #0x24
	mov r1, #0x5a
	add r3, r2, #0
	bl FUN_0201CB20
	add r0, r5, #0
	add r1, sp, #0
	bl MI_Copy36B
	add r0, sp, #0x24
	add r1, sp, #0
	add r2, r0, #0
	bl MTX_Concat33
	ldr r0, [r4, #0x34]
	add r1, sp, #0x54
	add r0, #0xc
	add r2, sp, #0x24
	add r3, sp, #0x48
	bl FUN_0201B2A8
	add sp, #0x60
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E5774: .word 0x021F75B4
_021E5778: .word 0x021F75D4

	thumb_func_start MOD05_021E577C
MOD05_021E577C: ; 0x021E577C
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x6c
	add r3, r2, #0
	add r5, r0, #0
	bl MOD05_021E4BE8
	add r4, r0, #0
	str r5, [r4, #8]
	bl MOD05_021E57A8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E5798
MOD05_021E5798: ; 0x021E5798
	push {r4, lr}
	add r4, r0, #0
	bl MOD05_021E57C8
	add r0, r4, #0
	bl MOD05_021E4C00
	pop {r4, pc}

	thumb_func_start MOD05_021E57A8
MOD05_021E57A8: ; 0x021E57A8
	push {r3, lr}
	sub sp, #8
	add r3, r0, #0
	add r0, #0x60
	str r0, [sp]
	add r0, r3, #0
	add r0, #0x64
	str r0, [sp, #4]
	ldr r0, [r3, #8]
	mov r1, #0x17
	mov r2, #0
	add r3, #0xc
	bl MOD05_021E51EC
	add sp, #8
	pop {r3, pc}

	thumb_func_start MOD05_021E57C8
MOD05_021E57C8: ; 0x021E57C8
	ldr r3, _021E57D0 ; =MOD05_021E4C00
	ldr r0, [r0, #0x64]
	bx r3
	nop
_021E57D0: .word MOD05_021E4C00

	thumb_func_start MOD05_021E57D4
MOD05_021E57D4: ; 0x021E57D4
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	bl MOD05_021E4C24
	add r4, r0, #0
	mov r1, #6
	str r4, [sp, #0x14]
	bl MOD05_021E4C08
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, sp, #8
	str r5, [sp, #0x1c]
	bl FUN_02058B5C
	add r0, sp, #0x14
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r1, _021E580C ; =0x021F7604
	add r0, r4, #0
	add r2, sp, #8
	mov r3, #0
	bl MOD05_021E4DC4
	add sp, #0x20
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E580C: .word 0x021F7604

	thumb_func_start MOD05_021E5810
MOD05_021E5810: ; 0x021E5810
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl FUN_0206475C
	add r3, r0, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x30
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r4, #0x38]
	bl FUN_02058448
	str r0, [r4, #8]
	ldr r0, [r4, #0x38]
	bl FUN_02058450
	str r0, [r4, #0xc]
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x38]
	add r1, sp, #0
	bl FUN_02058B5C
	add r0, r5, #0
	add r1, sp, #0
	bl FUN_0206476C
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E5858
MOD05_021E5858: ; 0x021E5858
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021E585C
MOD05_021E585C: ; 0x021E585C
	push {r4, r5, lr}
	sub sp, #0xc
	add r2, r1, #0
	ldr r5, [r2, #0x38]
	ldr r1, [r2, #8]
	add r4, r0, #0
	ldr r2, [r2, #0xc]
	add r0, r5, #0
	bl FUN_020582A8
	cmp r0, #0
	bne _021E5878
	bl ErrorHandling
_021E5878:
	add r0, r5, #0
	add r1, sp, #0
	bl FUN_02058B5C
	mov r0, #0xa
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0
	bl FUN_0206476C
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E5898
MOD05_021E5898: ; 0x021E5898
	push {r4, r5, r6, lr}
	sub sp, #0x60
	ldr r5, _021E5910 ; =0x021F75F8
	add r2, r0, #0
	add r4, r1, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x48
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	ldr r6, _021E5914 ; =0x021F7618
	str r0, [r3]
	add r5, sp, #0x24
	mov r3, #4
_021E58B2:
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r3, r3, #1
	bne _021E58B2
	ldr r0, [r6]
	add r1, sp, #0x54
	str r0, [r5]
	add r0, r2, #0
	bl FUN_0206477C
	mov r0, #0x19
	ldr r1, [sp, #0x58]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x58]
	mov r0, #5
	ldr r1, [sp, #0x5c]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0x5c]
	bl FUN_020B8344
	mov r2, #0
	add r5, r0, #0
	add r0, sp, #0x24
	mov r1, #0x5a
	add r3, r2, #0
	bl FUN_0201CB20
	add r0, r5, #0
	add r1, sp, #0
	bl MI_Copy36B
	add r0, sp, #0x24
	add r1, sp, #0
	add r2, r0, #0
	bl MTX_Concat33
	ldr r0, [r4, #0x34]
	add r1, sp, #0x54
	add r0, #0xc
	add r2, sp, #0x24
	add r3, sp, #0x48
	bl FUN_0201B2A8
	add sp, #0x60
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E5910: .word 0x021F75F8
_021E5914: .word 0x021F7618

	thumb_func_start MOD05_021E5918
MOD05_021E5918: ; 0x021E5918
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x6c
	add r3, r2, #0
	add r5, r0, #0
	bl MOD05_021E4BE8
	add r4, r0, #0
	str r5, [r4, #8]
	bl MOD05_021E5944
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E5934
MOD05_021E5934: ; 0x021E5934
	push {r4, lr}
	add r4, r0, #0
	bl MOD05_021E5964
	add r0, r4, #0
	bl MOD05_021E4C00
	pop {r4, pc}

	thumb_func_start MOD05_021E5944
MOD05_021E5944: ; 0x021E5944
	push {r3, lr}
	sub sp, #8
	add r3, r0, #0
	add r0, #0x60
	str r0, [sp]
	add r0, r3, #0
	add r0, #0x64
	str r0, [sp, #4]
	ldr r0, [r3, #8]
	mov r1, #0x18
	mov r2, #0
	add r3, #0xc
	bl MOD05_021E51EC
	add sp, #8
	pop {r3, pc}

	thumb_func_start MOD05_021E5964
MOD05_021E5964: ; 0x021E5964
	ldr r3, _021E596C ; =MOD05_021E4C00
	ldr r0, [r0, #0x64]
	bx r3
	nop
_021E596C: .word MOD05_021E4C00

	thumb_func_start MOD05_021E5970
MOD05_021E5970: ; 0x021E5970
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	bl MOD05_021E4C24
	add r4, r0, #0
	mov r1, #7
	str r4, [sp, #0x14]
	bl MOD05_021E4C08
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, sp, #8
	str r5, [sp, #0x1c]
	bl FUN_02058B5C
	add r0, sp, #0x14
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r1, _021E59A8 ; =0x021F7648
	add r0, r4, #0
	add r2, sp, #8
	mov r3, #0
	bl MOD05_021E4DC4
	add sp, #0x20
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E59A8: .word 0x021F7648

	thumb_func_start MOD05_021E59AC
MOD05_021E59AC: ; 0x021E59AC
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl FUN_0206475C
	add r3, r0, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x34
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r4, #0x3c]
	bl FUN_02058448
	str r0, [r4, #8]
	ldr r0, [r4, #0x3c]
	bl FUN_02058450
	str r0, [r4, #0xc]
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl FUN_02058B5C
	add r0, r5, #0
	add r1, sp, #0
	bl FUN_0206476C
	mov r0, #0x3c
	str r0, [r4, #0x30]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E59F8
MOD05_021E59F8: ; 0x021E59F8
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021E59FC
MOD05_021E59FC: ; 0x021E59FC
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r2, [r1, #0x30]
	add r4, r0, #0
	cmp r2, #0
	beq _021E5A0E
	sub r0, r2, #1
	str r0, [r1, #0x30]
	b _021E5A16
_021E5A0E:
	bl MOD05_021E4DE4
	add sp, #0xc
	pop {r3, r4, pc}
_021E5A16:
	ldr r0, [r1, #0x3c]
	add r1, sp, #0
	bl FUN_02058B5C
	mov r0, #0xa
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0
	bl FUN_0206476C
	add sp, #0xc
	pop {r3, r4, pc}

	thumb_func_start MOD05_021E5A34
MOD05_021E5A34: ; 0x021E5A34
	push {r4, r5, r6, lr}
	sub sp, #0x60
	ldr r5, _021E5AAC ; =0x021F763C
	add r2, r0, #0
	add r4, r1, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x48
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	ldr r6, _021E5AB0 ; =0x021F765C
	str r0, [r3]
	add r5, sp, #0x24
	mov r3, #4
_021E5A4E:
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r3, r3, #1
	bne _021E5A4E
	ldr r0, [r6]
	add r1, sp, #0x54
	str r0, [r5]
	add r0, r2, #0
	bl FUN_0206477C
	mov r0, #0x19
	ldr r1, [sp, #0x58]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x58]
	mov r0, #5
	ldr r1, [sp, #0x5c]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0x5c]
	bl FUN_020B8344
	mov r2, #0
	add r5, r0, #0
	add r0, sp, #0x24
	mov r1, #0x5a
	add r3, r2, #0
	bl FUN_0201CB20
	add r0, r5, #0
	add r1, sp, #0
	bl MI_Copy36B
	add r0, sp, #0x24
	add r1, sp, #0
	add r2, r0, #0
	bl MTX_Concat33
	ldr r0, [r4, #0x38]
	add r1, sp, #0x54
	add r0, #0xc
	add r2, sp, #0x24
	add r3, sp, #0x48
	bl FUN_0201B2A8
	add sp, #0x60
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E5AAC: .word 0x021F763C
_021E5AB0: .word 0x021F765C

	thumb_func_start MOD05_021E5AB4
MOD05_021E5AB4: ; 0x021E5AB4
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x38
	add r3, r2, #0
	add r5, r0, #0
	bl MOD05_021E4BE8
	add r4, r0, #0
	str r5, [r4]
	bl MOD05_021E5AE0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E5AD0
MOD05_021E5AD0: ; 0x021E5AD0
	push {r4, lr}
	add r4, r0, #0
	bl MOD05_021E5B18
	add r0, r4, #0
	bl MOD05_021E4C00
	pop {r4, pc}

	thumb_func_start MOD05_021E5AE0
MOD05_021E5AE0: ; 0x021E5AE0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r4]
	add r1, #0x28
	bl MOD05_021E5294
	ldr r0, [r4]
	add r1, r4, #4
	mov r2, #0x3a
	mov r3, #0
	bl MOD05_021E5224
	mov r0, #0x71
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r1, r4, #0
	ldr r0, [r4]
	add r2, r4, #4
	add r4, #0x28
	add r1, #0x14
	add r3, r4, #0
	bl MOD05_021E5260
	add sp, #8
	pop {r4, pc}

	thumb_func_start MOD05_021E5B18
MOD05_021E5B18: ; 0x021E5B18
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl MOD05_021F52C8
	add r0, r4, #0
	add r4, #0x28
	add r0, #0x14
	add r1, r4, #0
	bl MOD05_021F5358
	pop {r4, pc}

	thumb_func_start MOD05_021E5B30
MOD05_021E5B30: ; 0x021E5B30
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r0, [r0, #0x3c]
	add r5, r1, #0
	mov r1, #8
	add r4, r3, #0
	str r0, [sp, #8]
	bl MOD05_021E4C08
	str r0, [sp, #0xc]
	mov r0, #2
	lsl r1, r5, #0x10
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x10]
	mov r0, #0xa
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	lsl r0, r4, #0x10
	str r0, [sp, #0x18]
	add r0, sp, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, _021E5B78 ; =0x021F768C
	add r2, sp, #0x10
	mov r3, #0
	bl MOD05_021E4DC4
	ldr r0, _021E5B7C ; =0x00000609
	bl FUN_020054C8
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_021E5B78: .word 0x021F768C
_021E5B7C: .word 0x00000609

	thumb_func_start MOD05_021E5B80
MOD05_021E5B80: ; 0x021E5B80
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r5, r1, #0
	bl FUN_0206475C
	ldr r1, [r0]
	ldr r0, [r0, #4]
	mov r2, #1
	str r1, [r5, #4]
	str r0, [r5, #8]
	ldr r0, [r5, #4]
	mov r1, #0x90
	mov r3, #0
	bl MOD05_021E4BE8
	add r4, r0, #0
	str r4, [r5]
	ldr r0, [r5, #4]
	add r1, r4, #4
	bl MOD05_021E5294
	ldr r2, [r5, #8]
	add r0, r4, #4
	ldr r1, [r2, #0x18]
	ldr r2, [r2, #0xc]
	bl FUN_020BB8D0
	str r0, [r4]
	ldr r3, [r5, #8]
	ldr r1, [r3, #0x18]
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #0x10]
	bl FUN_020B8110
	ldr r1, [r5, #8]
	add r0, r4, #0
	add r0, #0x18
	add r1, r1, #4
	bl MOD05_021F5400
	add r0, r4, #0
	ldr r1, [r4]
	add r0, #0x18
	bl FUN_020B7EFC
	add r0, r6, #0
	add r1, sp, #0
	bl FUN_0206477C
	add r4, #0x18
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl MOD05_021F54D0
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}

	thumb_func_start MOD05_021E5BF8
MOD05_021E5BF8: ; 0x021E5BF8
	push {r4, lr}
	ldr r4, [r1]
	ldr r1, [r4]
	add r0, r4, #4
	bl thunk_FUN_020ae84c
	add r0, r4, #0
	bl MOD05_021E4C00
	pop {r4, pc}

	thumb_func_start MOD05_021E5C0C
MOD05_021E5C0C: ; 0x021E5C0C
	push {r4, lr}
	ldr r1, [r1]
	ldr r2, [r1]
	ldr r3, [r1, #0x14]
	ldr r2, [r2, #8]
	ldrh r2, [r2, #4]
	lsl r4, r2, #0xc
	mov r2, #1
	lsl r2, r2, #0xc
	add r2, r3, r2
	str r2, [r1, #0x14]
	cmp r2, r4
	ble _021E5C2C
	bl MOD05_021E4DE4
	pop {r4, pc}
_021E5C2C:
	ldr r0, [r1]
	str r2, [r0]
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E5C34
MOD05_021E5C34: ; 0x021E5C34
	push {r3, r4, r5, lr}
	sub sp, #0x48
	ldr r4, [r1]
	ldr r5, _021E5C88 ; =0x021F76A0
	add r3, sp, #0x24
	mov r2, #4
_021E5C40:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E5C40
	ldr r0, [r5]
	str r0, [r3]
	bl FUN_020B8344
	mov r2, #0
	add r5, r0, #0
	add r0, sp, #0x24
	mov r1, #0x5a
	add r3, r2, #0
	bl FUN_0201CB20
	add r0, r5, #0
	add r1, sp, #0
	bl MI_Copy36B
	add r0, sp, #0x24
	add r1, sp, #0
	add r2, r0, #0
	bl MTX_Concat33
	add r0, r4, #0
	add r1, r4, #0
	add r4, #0x78
	add r0, #0x18
	add r1, #0x6c
	add r2, sp, #0x24
	add r3, r4, #0
	bl FUN_0201B26C
	add sp, #0x48
	pop {r3, r4, r5, pc}
	nop
_021E5C88: .word 0x021F76A0

	thumb_func_start MOD05_021E5C8C
MOD05_021E5C8C: ; 0x021E5C8C
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x3c
	add r3, r2, #0
	add r5, r0, #0
	bl MOD05_021E4BE8
	add r4, r0, #0
	str r5, [r4, #4]
	bl MOD05_021E5CB8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E5CA8
MOD05_021E5CA8: ; 0x021E5CA8
	push {r4, lr}
	add r4, r0, #0
	bl MOD05_021E5CF4
	add r0, r4, #0
	bl MOD05_021E4C00
	pop {r4, pc}

	thumb_func_start MOD05_021E5CB8
MOD05_021E5CB8: ; 0x021E5CB8
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x2c
	bl MOD05_021E5294
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #8
	mov r2, #0x5c
	mov r3, #0
	bl MOD05_021E5224
	mov r0, #0x73
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [r4, #4]
	add r4, #0x2c
	add r1, #0x18
	add r2, #8
	add r3, r4, #0
	bl MOD05_021E5260
	add sp, #8
	pop {r4, pc}

	thumb_func_start MOD05_021E5CF4
MOD05_021E5CF4: ; 0x021E5CF4
	push {r4, lr}
	add r4, r0, #0
	add r0, #8
	bl MOD05_021F52C8
	add r0, r4, #0
	add r4, #0x2c
	add r0, #0x18
	add r1, r4, #0
	bl MOD05_021F5358
	pop {r4, pc}

	thumb_func_start MOD05_021E5D0C
MOD05_021E5D0C: ; 0x021E5D0C
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r0, [r0, #0x3c]
	add r5, r1, #0
	mov r1, #9
	add r4, r2, #0
	str r0, [sp, #8]
	bl MOD05_021E4C08
	str r0, [sp, #0xc]
	mov r0, #2
	mov r3, #0
	lsl r1, r5, #0x10
	lsl r0, r0, #0xe
	add r1, r1, r0
	str r1, [sp, #0x10]
	lsl r1, r4, #0x10
	add r0, r1, r0
	str r0, [sp, #0x18]
	str r3, [sp, #0x14]
	add r0, sp, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, _021E5D4C ; =0x021F76C4
	add r2, sp, #0x10
	bl MOD05_021E4DC4
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_021E5D4C: .word 0x021F76C4

	thumb_func_start MOD05_021E5D50
MOD05_021E5D50: ; 0x021E5D50
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r5, r1, #0
	bl FUN_0206475C
	ldr r1, [r0]
	ldr r0, [r0, #4]
	mov r2, #1
	str r1, [r5, #4]
	str r0, [r5, #8]
	ldr r0, [r5, #4]
	mov r1, #0x90
	mov r3, #0
	bl MOD05_021E4BE8
	add r4, r0, #0
	str r4, [r5]
	ldr r0, [r5, #4]
	add r1, r4, #4
	bl MOD05_021E5294
	ldr r2, [r5, #8]
	add r0, r4, #4
	ldr r1, [r2, #0x1c]
	ldr r2, [r2, #0x10]
	bl FUN_020BB8D0
	str r0, [r4]
	ldr r3, [r5, #8]
	ldr r1, [r3, #0x1c]
	ldr r2, [r3, #0x10]
	ldr r3, [r3, #0x14]
	bl FUN_020B8110
	ldr r1, [r5, #8]
	add r0, r4, #0
	add r0, #0x18
	add r1, #8
	bl MOD05_021F5400
	add r0, r4, #0
	ldr r1, [r4]
	add r0, #0x18
	bl FUN_020B7EFC
	add r0, r6, #0
	add r1, sp, #0
	bl FUN_0206477C
	add r4, #0x18
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl MOD05_021F54D0
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}

	thumb_func_start MOD05_021E5DC8
MOD05_021E5DC8: ; 0x021E5DC8
	push {r4, lr}
	ldr r4, [r1]
	ldr r1, [r4]
	add r0, r4, #4
	bl thunk_FUN_020ae84c
	add r0, r4, #0
	bl MOD05_021E4C00
	pop {r4, pc}

	thumb_func_start MOD05_021E5DDC
MOD05_021E5DDC: ; 0x021E5DDC
	push {r4, lr}
	ldr r1, [r1]
	ldr r2, [r1]
	ldr r3, [r1, #0x14]
	ldr r2, [r2, #8]
	ldrh r2, [r2, #4]
	lsl r4, r2, #0xc
	mov r2, #1
	lsl r2, r2, #0xc
	add r2, r3, r2
	str r2, [r1, #0x14]
	cmp r2, r4
	ble _021E5DFC
	bl MOD05_021E4DE4
	pop {r4, pc}
_021E5DFC:
	ldr r0, [r1]
	str r2, [r0]
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E5E04
MOD05_021E5E04: ; 0x021E5E04
	ldr r0, [r1]
	ldr r3, _021E5E0C ; =MOD05_021F5430
	add r0, #0x18
	bx r3
	.balign 4, 0
_021E5E0C: .word MOD05_021F5430

	thumb_func_start MOD05_021E5E10
MOD05_021E5E10: ; 0x021E5E10
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x38
	add r3, r2, #0
	add r5, r0, #0
	bl MOD05_021E4BE8
	add r4, r0, #0
	str r5, [r4]
	bl MOD05_021E5E3C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E5E2C
MOD05_021E5E2C: ; 0x021E5E2C
	push {r4, lr}
	add r4, r0, #0
	bl MOD05_021E5E74
	add r0, r4, #0
	bl MOD05_021E4C00
	pop {r4, pc}

	thumb_func_start MOD05_021E5E3C
MOD05_021E5E3C: ; 0x021E5E3C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r4]
	add r1, #0x28
	bl MOD05_021E5294
	ldr r0, [r4]
	add r1, r4, #4
	mov r2, #0x5b
	mov r3, #0
	bl MOD05_021E5224
	mov r0, #0x72
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r1, r4, #0
	ldr r0, [r4]
	add r2, r4, #4
	add r4, #0x28
	add r1, #0x14
	add r3, r4, #0
	bl MOD05_021E5260
	add sp, #8
	pop {r4, pc}

	thumb_func_start MOD05_021E5E74
MOD05_021E5E74: ; 0x021E5E74
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl MOD05_021F52C8
	add r0, r4, #0
	add r4, #0x28
	add r0, #0x14
	add r1, r4, #0
	bl MOD05_021F5358
	pop {r4, pc}

	thumb_func_start MOD05_021E5E8C
MOD05_021E5E8C: ; 0x021E5E8C
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	bl MOD05_021E4C24
	mov r1, #0xa
	str r0, [sp, #8]
	bl MOD05_021E4C08
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, sp, #0x10
	bl FUN_02058B5C
	add r0, r4, #0
	bl FUN_020584C4
	cmp r0, #3
	bhi _021E5EF4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E5EBE: ; jump table
	.short _021E5EC6 - _021E5EBE - 2 ; case 0
	.short _021E5ED2 - _021E5EBE - 2 ; case 1
	.short _021E5EEA - _021E5EBE - 2 ; case 2
	.short _021E5EDE - _021E5EBE - 2 ; case 3
_021E5EC6:
	mov r0, #1
	ldr r1, [sp, #0x18]
	lsl r0, r0, #0x10
	sub r0, r1, r0
	str r0, [sp, #0x18]
	b _021E5EF4
_021E5ED2:
	mov r0, #1
	ldr r1, [sp, #0x18]
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #0x18]
	b _021E5EF4
_021E5EDE:
	mov r0, #1
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #0x10]
	b _021E5EF4
_021E5EEA:
	mov r0, #1
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0x10
	sub r0, r1, r0
	str r0, [sp, #0x10]
_021E5EF4:
	add r0, r4, #0
	mov r1, #2
	bl FUN_0205829C
	add r1, sp, #8
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, _021E5F14 ; =0x021F76D8
	add r2, sp, #0x10
	mov r3, #0
	bl MOD05_021E4DC4
	add sp, #0x1c
	pop {r3, r4, pc}
	nop
_021E5F14: .word 0x021F76D8

	thumb_func_start MOD05_021E5F18
MOD05_021E5F18: ; 0x021E5F18
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r5, r1, #0
	bl FUN_0206475C
	ldr r1, [r0]
	ldr r0, [r0, #4]
	mov r2, #1
	str r1, [r5, #4]
	str r0, [r5, #8]
	ldr r0, [r5, #4]
	mov r1, #0x90
	mov r3, #0
	bl MOD05_021E4BE8
	add r4, r0, #0
	str r4, [r5]
	ldr r0, [r5, #4]
	add r1, r4, #4
	bl MOD05_021E5294
	ldr r2, [r5, #8]
	add r0, r4, #4
	ldr r1, [r2, #0x18]
	ldr r2, [r2, #0xc]
	bl FUN_020BB8D0
	str r0, [r4]
	ldr r3, [r5, #8]
	ldr r1, [r3, #0x18]
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #0x10]
	bl FUN_020B8110
	ldr r1, [r5, #8]
	add r0, r4, #0
	add r0, #0x18
	add r1, r1, #4
	bl MOD05_021F5400
	add r0, r4, #0
	ldr r1, [r4]
	add r0, #0x18
	bl FUN_020B7EFC
	add r0, r6, #0
	add r1, sp, #0
	bl FUN_0206477C
	add r4, #0x18
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl MOD05_021F54D0
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}

	thumb_func_start MOD05_021E5F90
MOD05_021E5F90: ; 0x021E5F90
	push {r4, lr}
	ldr r4, [r1]
	ldr r1, [r4]
	add r0, r4, #4
	bl thunk_FUN_020ae84c
	add r0, r4, #0
	bl MOD05_021E4C00
	pop {r4, pc}

	thumb_func_start MOD05_021E5FA4
MOD05_021E5FA4: ; 0x021E5FA4
	push {r4, lr}
	ldr r1, [r1]
	ldr r2, [r1]
	ldr r3, [r1, #0x14]
	ldr r2, [r2, #8]
	ldrh r2, [r2, #4]
	lsl r4, r2, #0xc
	mov r2, #1
	lsl r2, r2, #0xc
	add r2, r3, r2
	str r2, [r1, #0x14]
	cmp r2, r4
	ble _021E5FC4
	bl MOD05_021E4DE4
	pop {r4, pc}
_021E5FC4:
	ldr r0, [r1]
	str r2, [r0]
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E5FCC
MOD05_021E5FCC: ; 0x021E5FCC
	ldr r0, [r1]
	ldr r3, _021E5FD4 ; =MOD05_021F5430
	add r0, #0x18
	bx r3
	.balign 4, 0
_021E5FD4: .word MOD05_021F5430

	thumb_func_start MOD05_021E5FD8
MOD05_021E5FD8: ; 0x021E5FD8
	ldr r3, _021E5FDC ; =0x020553D5
	bx r3
	.balign 4, 0
_021E5FDC: .word 0x020553D5

	thumb_func_start MOD05_021E5FE0
MOD05_021E5FE0: ; 0x021E5FE0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r6, #0
	bl FUN_020553E0
	ldr r5, _021E6010 ; =0x021F7734
	add r4, r0, #0
_021E5FEE:
	mov r0, #1
	tst r0, r4
	beq _021E5FFA
	ldr r1, [r5]
	add r0, r7, #0
	blx r1
_021E5FFA:
	add r6, r6, #1
	lsr r4, r4, #1
	add r5, r5, #4
	cmp r6, #9
	blo _021E5FEE
	add r0, r7, #0
	mov r1, #0
	bl FUN_020553DC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6010: .word 0x021F7734

	thumb_func_start MOD05_021E6014
MOD05_021E6014: ; 0x021E6014
	push {r4, lr}
	add r4, r0, #0
	bl FUN_020553E8
	add r1, r0, #0
	mov r0, #0
	bl FUN_020555A0
	add r1, r0, #0
	add r0, r4, #0
	bl MOD05_021E726C
	add r0, r4, #0
	mov r1, #0
	bl FUN_020553A8
	add r0, r4, #0
	bl FUN_02055410
	add r0, r4, #0
	bl FUN_02055454
	cmp r0, #0
	beq _021E6048
	bl MOD05_021E4DE4
_021E6048:
	add r0, r4, #0
	mov r1, #0
	bl FUN_02055450
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E6054
MOD05_021E6054: ; 0x021E6054
	push {r4, lr}
	add r4, r0, #0
	bl FUN_020553E8
	add r1, r0, #0
	mov r0, #1
	bl FUN_020555A0
	add r1, r0, #0
	add r0, r4, #0
	bl MOD05_021E726C
	add r0, r4, #0
	mov r1, #1
	bl FUN_020553A8
	add r0, r4, #0
	bl FUN_02055410
	add r0, r4, #0
	bl FUN_02055454
	cmp r0, #0
	beq _021E6088
	bl MOD05_021E4DE4
_021E6088:
	add r0, r4, #0
	mov r1, #0
	bl FUN_02055450
	ldr r0, _021E6098 ; =0x00000618
	bl FUN_020054C8
	pop {r4, pc}
	.balign 4, 0
_021E6098: .word 0x00000618

	thumb_func_start MOD05_021E609C
MOD05_021E609C: ; 0x021E609C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	bl FUN_020553E8
	add r1, r0, #0
	mov r0, #2
	bl FUN_020555A0
	add r1, r0, #0
	add r0, r5, #0
	bl MOD05_021E726C
	add r0, r5, #0
	mov r1, #2
	bl FUN_020553A8
	add r0, r5, #0
	bl FUN_02055410
	add r0, r5, #0
	bl FUN_02055454
	cmp r0, #0
	beq _021E60D2
	bl MOD05_021E4DE4
_021E60D2:
	add r0, r5, #0
	mov r1, #0
	bl FUN_02055450
	add r0, r5, #0
	bl FUN_020552F8
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_020553A0
	add r6, r0, #0
	bl FUN_02058738
	mov r0, #1
	mov r1, #0
	str r0, [sp]
	add r0, r6, #0
	add r2, r1, #0
	add r3, r4, #0
	bl FUN_0224ABAC
	add r1, r0, #0
	add r0, r5, #0
	bl FUN_02055450
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E610C
MOD05_021E610C: ; 0x021E610C
	ldr r3, _021E6114 ; =0x020556C9
	mov r1, #1
	bx r3
	nop
_021E6114: .word 0x020556C9

	thumb_func_start MOD05_021E6118
MOD05_021E6118: ; 0x021E6118
	push {r4, lr}
	add r4, r0, #0
	bl FUN_020553E8
	add r1, r0, #0
	mov r0, #4
	bl FUN_020555A0
	add r1, r0, #0
	add r0, r4, #0
	bl MOD05_021E726C
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E6134
MOD05_021E6134: ; 0x021E6134
	push {r4, lr}
	add r4, r0, #0
	bl FUN_020553E8
	add r1, r0, #0
	mov r0, #6
	bl FUN_020555A0
	add r1, r0, #0
	add r0, r4, #0
	bl MOD05_021E726C
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E6150
MOD05_021E6150: ; 0x021E6150
	push {r4, lr}
	add r4, r0, #0
	bl FUN_020553E8
	add r1, r0, #0
	mov r0, #7
	bl FUN_020555A0
	add r1, r0, #0
	add r0, r4, #0
	bl MOD05_021E726C
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E616C
MOD05_021E616C: ; 0x021E616C
	push {r4, lr}
	add r4, r0, #0
	bl FUN_020553E8
	add r1, r0, #0
	mov r0, #8
	bl FUN_020555A0
	add r1, r0, #0
	add r0, r4, #0
	bl MOD05_021E726C
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E6188
MOD05_021E6188: ; 0x021E6188
	push {r4, lr}
	add r4, r0, #0
	bl FUN_020553E8
	add r1, r0, #0
	mov r0, #9
	bl FUN_020555A0
	add r1, r0, #0
	add r0, r4, #0
	bl MOD05_021E726C
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E61A4
MOD05_021E61A4: ; 0x021E61A4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r4, r2, #0
	add r7, r3, #0
	bl FUN_020556B4
	cmp r0, #1
	bne _021E61CE
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl MOD05_021E68D8
	cmp r0, #1
	bne _021E61CA
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E61CA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E61CE:
	add r0, r5, #0
	add r1, r4, #0
	bl FUN_02055898
	cmp r0, #0
	bne _021E61DE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E61DE:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _021E61FE
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	bl MOD05_021E628C
	cmp r0, #1
	bne _021E61FA
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E61FA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E61FE:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r7, #0
	bl MOD05_021E6218
	cmp r0, #1
	bne _021E6212
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E6212:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E6218
MOD05_021E6218: ; 0x021E6218
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r7, r3, #0
	bl FUN_0205714C
	str r0, [sp]
	mov r0, #1
	tst r0, r7
	beq _021E6246
	ldr r3, [sp]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl MOD05_021E62B4
	cmp r0, #1
	bne _021E6246
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E6246:
	mov r0, #2
	tst r0, r7
	beq _021E6260
	ldr r3, [sp]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl MOD05_021E6714
	cmp r0, #1
	bne _021E6260
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E6260:
	ldr r3, [sp]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl MOD05_021E65EC
	cmp r0, #1
	bne _021E6274
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E6274:
	ldr r3, [sp]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl MOD05_021E6758
	cmp r0, #1
	bne _021E6288
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E6288:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021E628C
MOD05_021E628C: ; 0x021E628C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl FUN_0205714C
	add r3, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl MOD05_021E6758
	cmp r0, #1
	bne _021E62B0
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E62B0:
	mov r0, #0
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021E62B4
MOD05_021E62B4: ; 0x021E62B4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	cmp r3, #1
	beq _021E62C4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E62C4:
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021E727C
	add r6, r0, #0
	bne _021E62D4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E62D4:
	bl FUN_02058458
	cmp r0, #0x54
	beq _021E62E0
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E62E0:
	add r0, r6, #0
	add r1, r4, #0
	bl FUN_02059918
	mov r1, #1
	bic r0, r1
	beq _021E62F2
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E62F2:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	add r3, r6, #0
	bl MOD05_021E6304
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E6304
MOD05_021E6304: ; 0x021E6304
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x14
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl MOD05_021E72B8
	add r2, r0, #0
	str r5, [r2, #4]
	str r4, [r2, #8]
	str r7, [r2, #0x10]
	ldr r1, _021E6328 ; =MOD05_021E632C
	add r0, r4, #0
	str r6, [r2, #0xc]
	bl FUN_020463CC
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E6328: .word MOD05_021E632C

	thumb_func_start MOD05_021E632C
MOD05_021E632C: ; 0x021E632C
	push {r4, r5, r6, lr}
	bl FUN_0204652C
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_020553A0
	add r6, r0, #0
	ldr r0, [r4]
	ldr r5, [r4, #0x10]
	cmp r0, #0
	beq _021E634E
	cmp r0, #1
	beq _021E639A
	cmp r0, #2
	beq _021E63C0
	b _021E63CA
_021E634E:
	add r0, r5, #0
	bl FUN_0205AD98
	cmp r0, #0
	beq _021E63CA
	add r0, r6, #0
	bl FUN_0205AD98
	cmp r0, #0
	bne _021E636C
	ldr r0, [r4, #0xc]
	bl FUN_020570C4
	cmp r0, #0
	beq _021E63CA
_021E636C:
	ldr r0, [r4, #4]
	mov r1, #8
	bl FUN_0205AFDC
	add r1, r0, #0
	add r0, r5, #0
	bl FUN_0205ADDC
	ldr r0, [r4, #4]
	mov r1, #0x20
	bl FUN_0205AFDC
	add r1, r0, #0
	add r0, r6, #0
	bl FUN_0205ADDC
	ldr r0, _021E63D0 ; =0x00000627
	bl FUN_020054C8
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E63CA
_021E639A:
	add r0, r5, #0
	bl FUN_0205AE28
	cmp r0, #0
	beq _021E63CA
	add r0, r6, #0
	bl FUN_0205AE28
	cmp r0, #0
	beq _021E63CA
	add r0, r5, #0
	bl FUN_0205AE50
	add r0, r6, #0
	bl FUN_0205AE50
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021E63C0:
	add r0, r4, #0
	bl MOD05_021E72DC
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E63CA:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021E63D0: .word 0x00000627

	thumb_func_start MOD05_021E63D4
MOD05_021E63D4: ; 0x021E63D4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x2c
	add r7, r1, #0
	add r5, r2, #0
	bl MOD05_021E72B8
	add r4, r0, #0
	str r7, [r4, #4]
	str r6, [r4, #0x1c]
	ldr r0, [r6, #0x38]
	str r0, [r4, #0x20]
	bl FUN_020553A0
	add r2, r4, #0
	str r0, [r4, #0x24]
	add r2, #0xc
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0x10]
	ldr r1, _021E640C ; =MOD05_021E6484
	add r2, r4, #0
	bl FUN_0204640C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E640C: .word MOD05_021E6484

	thumb_func_start MOD05_021E6410
MOD05_021E6410: ; 0x021E6410
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r2, #0
	add r5, r1, #0
	bl FUN_02046528
	add r4, r0, #0
	add r1, r6, #0
	bl MOD05_021E72E8
	add r1, r0, #0
	add r0, r4, #0
	add r2, sp, #0
	bl MOD05_021E7228
	add r0, r4, #0
	add r1, r5, #0
	add r2, sp, #0
	bl MOD05_021E63D4
	add sp, #0x10
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021E643C
MOD05_021E643C: ; 0x021E643C
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r1, #0
	bl FUN_020553A0
	add r6, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl FUN_0205481C
	cmp r0, #1
	bne _021E647E
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl FUN_02054B78
	cmp r0, #1
	beq _021E646C
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl FUN_02054B6C
	cmp r0, #1
	bne _021E647A
_021E646C:
	add r0, r6, #0
	bl FUN_02058A68
	cmp r0, #1
	bne _021E647A
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E647A:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E647E:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E6484
MOD05_021E6484: ; 0x021E6484
	push {r3, r4, r5, r6, r7, lr}
	bl FUN_0204652C
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #7
	bhi _021E64D4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E649E: ; jump table
	.short _021E64AE - _021E649E - 2 ; case 0
	.short _021E64CA - _021E649E - 2 ; case 1
	.short _021E64E2 - _021E649E - 2 ; case 2
	.short _021E6500 - _021E649E - 2 ; case 3
	.short _021E6514 - _021E649E - 2 ; case 4
	.short _021E655E - _021E649E - 2 ; case 5
	.short _021E658A - _021E649E - 2 ; case 6
	.short _021E65AC - _021E649E - 2 ; case 7
_021E64AE:
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl FUN_0204AB20
	ldr r0, [r4, #0x1c]
	ldr r1, _021E65E8 ; =0x0000047F
	mov r2, #1
	bl FUN_0204ABDC
	ldr r0, [r4]
	add r0, r0, #1
	add r0, r0, #1
	str r0, [r4]
	b _021E65E4
_021E64CA:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0xa
	bgt _021E64D6
_021E64D4:
	b _021E65E4
_021E64D6:
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E65E4
_021E64E2:
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _021E64FA
	add r1, r4, #0
	ldr r0, [r4, #0x1c]
	add r1, #0xc
	bl MOD05_021E723C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E65E4
_021E64FA:
	mov r0, #4
	str r0, [r4]
	b _021E65E4
_021E6500:
	add r0, r4, #0
	add r0, #0xc
	bl MOD05_021E7250
	cmp r0, #1
	bne _021E65E4
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E65E4
_021E6514:
	ldr r0, [r4, #0x20]
	bl FUN_02055320
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl FUN_02059BF4
	add r6, r0, #0
	ldr r0, [r4, #0x20]
	bl FUN_0205532C
	add r7, r0, #0
	ldr r0, [r4, #4]
	bl FUN_02059C00
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x24]
	ldr r3, [r4, #4]
	add r1, r5, r6
	add r2, r7, r2
	bl FUN_0224ABAC
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x28]
	bl FUN_02055450
	ldr r0, [r4, #0x20]
	mov r1, #2
	bl FUN_020553A8
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E65E4
_021E655E:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0xa
	ble _021E65E4
	ldr r0, [r4, #0x20]
	bl FUN_020553E8
	add r1, r0, #0
	mov r0, #0
	bl FUN_020555A0
	add r1, r0, #0
	ldr r0, [r4, #0x20]
	bl MOD05_021E726C
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E65E4
_021E658A:
	ldr r0, [r4, #0x24]
	bl FUN_0205AD98
	cmp r0, #1
	bne _021E65E4
	ldr r0, [r4, #4]
	mov r1, #0x34
	bl FUN_0205AFDC
	add r1, r0, #0
	ldr r0, [r4, #0x24]
	bl FUN_0205ADDC
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E65E4
_021E65AC:
	ldr r0, [r4, #0x24]
	bl FUN_0205AE28
	cmp r0, #0
	beq _021E65E4
	ldr r0, [r4, #0x24]
	bl FUN_0205AE50
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl FUN_0224ADF8
	ldr r0, [r4, #0x20]
	bl FUN_020553E8
	add r1, r0, #0
	mov r0, #2
	bl FUN_020555A0
	add r1, r0, #0
	ldr r0, [r4, #0x20]
	bl MOD05_021E726C
	add r0, r4, #0
	bl MOD05_021E72DC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E65E4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E65E8: .word 0x0000047F

	thumb_func_start MOD05_021E65EC
MOD05_021E65EC: ; 0x021E65EC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	cmp r3, #1
	bne _021E6602
	add r0, r5, #0
	bl FUN_020553C4
	cmp r0, #2
	beq _021E6606
_021E6602:
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E6606:
	add r0, r5, #0
	bl FUN_020553A0
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl FUN_02056B74
	cmp r0, #0x20
	bne _021E661E
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E661E:
	mov r1, #0x20
	bic r0, r1
	beq _021E6628
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E6628:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl MOD05_021E6638
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E6638
MOD05_021E6638: ; 0x021E6638
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x18
	add r5, r1, #0
	add r7, r2, #0
	bl MOD05_021E72B8
	add r4, r0, #0
	str r6, [r4, #4]
	str r5, [r4, #8]
	str r7, [r4, #0xc]
	add r0, r7, #0
	bl FUN_020553A0
	str r0, [r4, #0x10]
	add r0, r7, #0
	bl FUN_02055454
	str r0, [r4, #0x14]
	cmp r0, #0
	bne _021E6666
	bl ErrorHandling
_021E6666:
	ldr r1, _021E6674 ; =MOD05_021E6678
	add r0, r5, #0
	add r2, r4, #0
	bl FUN_020463CC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6674: .word MOD05_021E6678

	thumb_func_start MOD05_021E6678
MOD05_021E6678: ; 0x021E6678
	push {r4, lr}
	bl FUN_0204652C
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021E668C
	cmp r0, #1
	beq _021E66CC
	b _021E6710
_021E668C:
	ldr r0, [r4, #0x10]
	bl FUN_0205AD98
	cmp r0, #1
	bne _021E6710
	ldr r0, [r4, #0xc]
	bl FUN_020553E8
	add r1, r0, #0
	mov r0, #0
	bl FUN_020555A0
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl MOD05_021E726C
	ldr r0, [r4, #4]
	mov r1, #0x34
	bl FUN_0205AFDC
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	bl FUN_0205ADDC
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl FUN_0224ADF8
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E6710
_021E66CC:
	ldr r0, [r4, #0x10]
	bl FUN_0205AE28
	cmp r0, #0
	beq _021E6710
	ldr r0, [r4, #0x10]
	bl FUN_0205AE50
	ldr r0, [r4, #0x14]
	bl MOD05_021E4DE4
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl FUN_02055450
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl FUN_020553A8
	ldr r0, [r4, #8]
	ldr r1, [r0, #0x1c]
	ldr r1, [r1]
	bl FUN_0204ABA8
	add r1, r0, #0
	ldr r0, [r4, #8]
	mov r2, #1
	bl FUN_0204ABDC
	add r0, r4, #0
	bl MOD05_021E72DC
	mov r0, #1
	pop {r4, pc}
_021E6710:
	mov r0, #0
	pop {r4, pc}

	thumb_func_start MOD05_021E6714
MOD05_021E6714: ; 0x021E6714
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	cmp r4, #1
	bne _021E672E
	cmp r3, #1
	bne _021E672E
	add r0, r5, #0
	bl FUN_020553C4
	cmp r0, #2
	beq _021E6732
_021E672E:
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E6732:
	add r0, r5, #0
	add r1, r4, #0
	bl FUN_02057278
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl FUN_02054A48
	cmp r0, #0
	bne _021E674A
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E674A:
	add r0, r6, #0
	add r1, r4, #0
	bl MOD05_021E6BD8
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E6758
MOD05_021E6758: ; 0x021E6758
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl FUN_02055764
	cmp r0, #1
	bne _021E676C
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E676C:
	add r0, r4, #0
	bl FUN_020553A0
	bl FUN_02058720
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r6, #0
	bl FUN_02054984
	cmp r0, #1
	beq _021E6792
	add r0, r6, #0
	bl FUN_020549A0
	cmp r0, #1
	beq _021E6792
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E6792:
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021E67A0
	mov r0, #1
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E67A0
MOD05_021E67A0: ; 0x021E67A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x10
	add r4, r1, #0
	bl MOD05_021E72B8
	add r2, r0, #0
	str r5, [r2, #8]
	ldr r1, _021E67BC ; =MOD05_021E67C0
	add r0, r5, #0
	str r4, [r2, #0xc]
	bl FUN_020463CC
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E67BC: .word MOD05_021E67C0

	thumb_func_start MOD05_021E67C0
MOD05_021E67C0: ; 0x021E67C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	bl FUN_0204652C
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_020553A0
	add r7, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021E67E4
	cmp r0, #1
	beq _021E67F0
	cmp r0, #2
	beq _021E682A
	b _021E68C6
_021E67E4:
	ldr r0, _021E68CC ; =0x00000651
	bl FUN_020054C8
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021E67F0:
	add r0, r7, #0
	bl FUN_0205AD98
	cmp r0, #0
	bne _021E6804
	ldr r0, [r4, #0xc]
	bl FUN_020570C4
	cmp r0, #0
	beq _021E68C6
_021E6804:
	ldr r0, [r4, #4]
	cmp r0, #5
	blt _021E6824
	ldr r0, _021E68D0 ; =0x00000652
	bl FUN_020054C8
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl FUN_0205574C
	add r0, r4, #0
	bl MOD05_021E72DC
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021E6824:
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021E682A:
	ldr r0, [r4, #0xc]
	bl FUN_020552F8
	ldr r2, _021E68D4 ; =0x021C48B8
	str r0, [sp]
	ldr r1, [r2, #0x48]
	ldr r2, [r2, #0x44]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, #0xc]
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl FUN_02057020
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _021E68C6
	ldr r0, [sp]
	cmp r5, r0
	beq _021E68C6
	mov r0, #1
	str r0, [r4]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	add r0, r7, #0
	bl FUN_02058720
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl FUN_020549A0
	cmp r0, #1
	bne _021E68A2
	add r0, r6, #0
	bl FUN_02046528
	add r1, sp, #8
	str r0, [sp, #4]
	bl FUN_0223C08C
	cmp r0, #1
	bne _021E68A2
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl FUN_0205574C
	add r0, r4, #0
	bl MOD05_021E72DC
	ldr r0, [sp, #4]
	ldr r2, [sp, #8]
	add r1, r6, #0
	bl FUN_02046A20
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021E68A2:
	ldr r0, [r4, #4]
	cmp r0, #5
	bge _021E68AC
	mov r6, #0x28
	b _021E68B6
_021E68AC:
	add r0, r7, #0
	mov r1, #1
	mov r6, #0x30
	bl FUN_02058A18
_021E68B6:
	add r0, r5, #0
	add r1, r6, #0
	bl FUN_0205AFDC
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_02057260
_021E68C6:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E68CC: .word 0x00000651
_021E68D0: .word 0x00000652
_021E68D4: .word 0x021C48B8

	thumb_func_start MOD05_021E68D8
MOD05_021E68D8: ; 0x021E68D8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl FUN_020553A0
	bl FUN_0205AD98
	cmp r0, #0
	bne _021E68F0
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E68F0:
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021E6904
	cmp r0, #1
	bne _021E6900
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E6900:
	mov r0, #0
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021E6904
MOD05_021E6904: ; 0x021E6904
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl FUN_02055408
	cmp r0, #1
	bge _021E6916
	mov r0, #0
	pop {r4, pc}
_021E6916:
	add r0, r4, #0
	bl FUN_02055314
	add r1, r0, #0
	add r0, r4, #0
	bl MOD05_021E727C
	add r4, r0, #0
	bne _021E692C
	mov r0, #0
	pop {r4, pc}
_021E692C:
	bl FUN_02058458
	cmp r0, #0x76
	beq _021E6938
	mov r0, #0
	pop {r4, pc}
_021E6938:
	add r0, r4, #0
	bl MOD05_021F1AF8
	add r0, r4, #0
	bl FUN_02057654
	ldr r0, _021E6950 ; =0x0000065B
	bl FUN_020054C8
	mov r0, #0
	pop {r4, pc}
	nop
_021E6950: .word 0x0000065B

	thumb_func_start MOD05_021E6954
MOD05_021E6954: ; 0x021E6954
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x30
	add r7, r1, #0
	add r5, r2, #0
	bl MOD05_021E72B8
	add r4, r0, #0
	str r7, [r4, #4]
	str r6, [r4, #0xc]
	ldr r0, [r6, #0x38]
	str r0, [r4, #0x10]
	bl FUN_020553A0
	add r2, r4, #0
	str r0, [r4, #0x14]
	add r2, #0x1c
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0x10]
	ldr r1, _021E698C ; =MOD05_021E69FC
	add r2, r4, #0
	bl FUN_0204640C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E698C: .word MOD05_021E69FC

	thumb_func_start MOD05_021E6990
MOD05_021E6990: ; 0x021E6990
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r2, #0
	add r5, r1, #0
	bl FUN_02046528
	add r4, r0, #0
	add r1, r6, #0
	bl MOD05_021E72E8
	add r1, r0, #0
	add r0, r4, #0
	add r2, sp, #0
	bl MOD05_021E7228
	add r0, r4, #0
	add r1, r5, #0
	add r2, sp, #0
	bl MOD05_021E6954
	add sp, #0x10
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021E69BC
MOD05_021E69BC: ; 0x021E69BC
	push {r3, lr}
	cmp r1, #3
	bhi _021E69F6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E69CE: ; jump table
	.short _021E69D6 - _021E69CE - 2 ; case 0
	.short _021E69D6 - _021E69CE - 2 ; case 1
	.short _021E69E6 - _021E69CE - 2 ; case 2
	.short _021E69E6 - _021E69CE - 2 ; case 3
_021E69D6:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl FUN_020548FC
	cmp r0, #1
	bne _021E69F6
	mov r0, #1
	pop {r3, pc}
_021E69E6:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl FUN_02054908
	cmp r0, #1
	bne _021E69F6
	mov r0, #1
	pop {r3, pc}
_021E69F6:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E69FC
MOD05_021E69FC: ; 0x021E69FC
	push {r4, r5, r6, lr}
	bl FUN_0204652C
	ldr r6, _021E6A24 ; =0x021F7714
	add r5, r0, #0
_021E6A06:
	ldr r1, [r5]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	blx r1
	add r4, r0, #0
	cmp r4, #2
	beq _021E6A06
	cmp r4, #1
	bne _021E6A20
	add r0, r5, #0
	bl MOD05_021E72DC
_021E6A20:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E6A24: .word 0x021F7714

	thumb_func_start MOD05_021E6A28
MOD05_021E6A28: ; 0x021E6A28
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x1c
	bl MOD05_021E723C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	mov r0, #0
	pop {r4, pc}

	thumb_func_start MOD05_021E6A40
MOD05_021E6A40: ; 0x021E6A40
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x1c
	bl MOD05_021E7250
	cmp r0, #1
	bne _021E6A54
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021E6A54:
	mov r0, #0
	pop {r4, pc}

	thumb_func_start MOD05_021E6A58
MOD05_021E6A58: ; 0x021E6A58
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	bl FUN_02055320
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl FUN_02059BF4
	add r6, r0, #0
	ldr r0, [r5, #0x10]
	bl FUN_0205532C
	add r7, r0, #0
	ldr r0, [r5, #4]
	bl FUN_02059C00
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x14]
	ldr r3, [r5, #4]
	add r1, r4, r6
	add r2, r7, r2
	bl FUN_0224AEE8
	str r0, [r5, #0x18]
	ldr r0, [r5, #0xc]
	bl FUN_0224F0BC
	str r0, [r5, #0x2c]
	ldr r0, _021E6AA8 ; =0x00000627
	bl FUN_020054C8
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6AA8: .word 0x00000627

	thumb_func_start MOD05_021E6AAC
MOD05_021E6AAC: ; 0x021E6AAC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl FUN_0205AD98
	cmp r0, #1
	bne _021E6AD0
	ldr r0, [r4, #4]
	mov r1, #0x34
	bl FUN_0205AFDC
	add r1, r0, #0
	ldr r0, [r4, #0x14]
	bl FUN_0205ADDC
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021E6AD0:
	mov r0, #0
	pop {r4, pc}

	thumb_func_start MOD05_021E6AD4
MOD05_021E6AD4: ; 0x021E6AD4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl FUN_0205AE28
	cmp r0, #1
	bne _021E6AF0
	ldr r0, [r4]
	mov r1, #1
	add r0, r0, #1
	str r0, [r4]
	ldr r0, [r4, #0x18]
	bl FUN_0224AF68
_021E6AF0:
	mov r0, #0
	pop {r4, pc}

	thumb_func_start MOD05_021E6AF4
MOD05_021E6AF4: ; 0x021E6AF4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl FUN_0205AD98
	cmp r0, #1
	bne _021E6B18
	ldr r0, [r4, #4]
	mov r1, #0x10
	bl FUN_0205AFDC
	add r1, r0, #0
	ldr r0, [r4, #0x14]
	bl FUN_0205ADDC
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021E6B18:
	mov r0, #0
	pop {r4, pc}

	thumb_func_start MOD05_021E6B1C
MOD05_021E6B1C: ; 0x021E6B1C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	bl FUN_0205AE28
	cmp r0, #0
	bne _021E6B2E
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E6B2E:
	ldr r0, [r5, #0x14]
	bl FUN_020584D4
	add r4, r0, #0
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	bl FUN_02059C90
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r4, #0
	bl MOD05_021E69BC
	cmp r0, #1
	bne _021E6B54
	mov r0, #5
	str r0, [r5]
	mov r0, #2
	pop {r3, r4, r5, pc}
_021E6B54:
	ldr r0, [r5, #4]
	mov r1, #0x34
	bl FUN_0205AFDC
	add r1, r0, #0
	ldr r0, [r5, #0x14]
	bl FUN_0205ADDC
	mov r1, #0
	str r1, [r5, #8]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	ldr r0, [r5, #0x18]
	bl FUN_0224AF68
	ldr r0, [r5, #0x2c]
	bl FUN_0224F0D0
	mov r0, #0
	str r0, [r5, #0x2c]
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021E6B80
MOD05_021E6B80: ; 0x021E6B80
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl FUN_0205AE28
	cmp r0, #0
	bne _021E6B92
	mov r0, #0
	pop {r4, pc}
_021E6B92:
	ldr r0, [r4, #0x14]
	bl FUN_0205AE50
	ldr r0, [r4, #0x18]
	bl MOD05_021E4DE4
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E6BA4
MOD05_021E6BA4: ; 0x021E6BA4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x54
	add r7, r1, #0
	add r5, r2, #0
	bl MOD05_021E72B8
	add r4, r0, #0
	str r7, [r4, #4]
	str r6, [r4, #0x34]
	.balign 4, 0
_021E6BB8: .word 0x63A06BB0

	thumb_func_start MOD05_021E6BBC
MOD05_021E6BBC: ; 0x021E6BBC
	ldr r0, [r6, #0x38]
	bl FUN_020553A0
	str r0, [r4, #0x3c]
	cmp r5, #0
	beq _021E6BD4
	add r2, r4, #0
	add r2, #0x40
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
_021E6BD4:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021E6BD8
MOD05_021E6BD8: ; 0x021E6BD8
	push {r4, lr}
	mov r2, #0
	add r4, r0, #0
	bl MOD05_021E6BA4
	add r2, r0, #0
	ldr r1, _021E6BF0 ; =MOD05_021E6C30
	add r0, r4, #0
	bl FUN_020463CC
	pop {r4, pc}
	nop
_021E6BF0: .word MOD05_021E6C30

	thumb_func_start MOD05_021E6BF4
MOD05_021E6BF4: ; 0x021E6BF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	bl FUN_02046528
	add r4, r0, #0
	add r1, r7, #0
	bl MOD05_021E72E8
	add r1, r0, #0
	add r0, r4, #0
	add r2, sp, #0
	bl MOD05_021E7228
	add r0, r4, #0
	add r1, r6, #0
	add r2, sp, #0
	bl MOD05_021E6BA4
	add r2, r0, #0
	ldr r1, _021E6C2C ; =MOD05_021E6C30
	add r0, r5, #0
	bl FUN_0204640C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E6C2C: .word MOD05_021E6C30

	thumb_func_start MOD05_021E6C30
MOD05_021E6C30: ; 0x021E6C30
	push {r4, r5, r6, lr}
	bl FUN_0204652C
	ldr r6, _021E6C70 ; =0x021F7700
	ldr r4, _021E6C74 ; =0x021F76EC
	add r5, r0, #0
_021E6C3C:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _021E6C4E
	ldr r1, [r5]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	b _021E6C58
_021E6C4E:
	ldr r1, [r5]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	blx r1
_021E6C58:
	cmp r0, #2
	beq _021E6C3C
	cmp r0, #1
	bne _021E6C6A
	add r0, r5, #0
	bl MOD05_021E72DC
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E6C6A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021E6C70: .word 0x021F7700
_021E6C74: .word 0x021F76EC

	thumb_func_start MOD05_021E6C78
MOD05_021E6C78: ; 0x021E6C78
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _021E6C96
	add r1, r4, #0
	ldr r0, [r4, #0x34]
	add r1, #0x40
	bl MOD05_021E723C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	mov r0, #0
	pop {r4, pc}
_021E6C96:
	mov r0, #2
	str r0, [r4]
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E6CA0
MOD05_021E6CA0: ; 0x021E6CA0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x40
	bl MOD05_021E7250
	cmp r0, #1
	bne _021E6CBA
	ldr r0, _021E6CC0 ; =0x0000064D
	bl FUN_020054C8
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021E6CBA:
	mov r0, #0
	pop {r4, pc}
	nop
_021E6CC0: .word 0x0000064D

	thumb_func_start MOD05_021E6CC4
MOD05_021E6CC4: ; 0x021E6CC4
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	bl FUN_02058B2C
	add r4, r0, #0
	mov r0, #0
	bl FUN_02059BF4
	lsl r0, r0, #1
	add r4, r4, r0
	ldr r0, [r5, #0x3c]
	bl FUN_02058B4C
	add r6, r0, #0
	mov r0, #0
	bl FUN_02059C00
	lsl r0, r0, #1
	add r6, r6, r0
	add r2, r5, #0
	add r0, r4, #0
	add r1, r6, #0
	add r2, #0x28
	bl FUN_02059E60
	add r1, r5, #0
	ldr r0, [r5, #0x34]
	add r1, #0x28
	bl FUN_02059E9C
	str r4, [r5, #0xc]
	ldr r0, [r5, #0x2c]
	asr r1, r0, #3
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [r5, #0x10]
	str r6, [r5, #0x14]
	ldr r0, [r5, #0x3c]
	add r1, sp, #0xc
	bl FUN_02058B5C
	ldr r1, [sp, #0x14]
	ldr r0, [r5, #0x30]
	cmp r1, r0
	bgt _021E6D2A
	bl ErrorHandling
_021E6D2A:
	ldr r1, [sp, #0x10]
	ldr r0, [r5, #0x2c]
	cmp r1, r0
	blt _021E6D36
	bl ErrorHandling
_021E6D36:
	mov r0, #0
	str r0, [sp]
	ldr r1, [r5, #0x2c]
	ldr r0, [sp, #0x10]
	add r3, sp, #0
	sub r2, r1, r0
	ldr r1, [r5, #0x30]
	ldr r0, [sp, #0x14]
	str r2, [sp, #4]
	sub r1, r1, r0
	asr r0, r2, #5
	lsr r0, r0, #0x1a
	add r0, r2, r0
	asr r0, r0, #6
	str r0, [sp, #4]
	asr r0, r1, #5
	lsr r0, r0, #0x1a
	add r0, r1, r0
	add r2, r5, #0
	str r1, [sp, #8]
	asr r0, r0, #6
	str r0, [sp, #8]
	ldmia r3!, {r0, r1}
	add r2, #0x1c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r5, #0x34]
	bl FUN_0224ED94
	str r0, [r5, #0x50]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	mov r0, #0
	add sp, #0x18
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021E6D80
MOD05_021E6D80: ; 0x021E6D80
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl FUN_02058B5C
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x20]
	add r1, r1, r0
	str r1, [sp, #4]
	ldr r0, [r4, #0x2c]
	cmp r1, r0
	ble _021E6D9E
	str r0, [sp, #4]
_021E6D9E:
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl FUN_02058B6C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x20
	blt _021E6DBA
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021E6DBA:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}

	thumb_func_start MOD05_021E6DC0
MOD05_021E6DC0: ; 0x021E6DC0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl FUN_02058B5C
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x20]
	add r1, r1, r0
	str r1, [sp, #4]
	ldr r0, [r4, #0x2c]
	cmp r1, r0
	ble _021E6DDE
	str r0, [sp, #4]
_021E6DDE:
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x24]
	add r1, r1, r0
	str r1, [sp, #8]
	ldr r0, [r4, #0x30]
	cmp r1, r0
	bge _021E6DEE
	str r0, [sp, #8]
_021E6DEE:
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl FUN_02058B6C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x40
	bge _021E6E06
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021E6E06:
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x30]
	cmp r1, r0
	beq _021E6E12
	bl ErrorHandling
_021E6E12:
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x2c]
	cmp r1, r0
	beq _021E6E1E
	bl ErrorHandling
_021E6E1E:
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0xc]
	bl FUN_02058B30
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x10]
	bl FUN_02058B40
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x14]
	bl FUN_02058B50
	ldr r0, [r4, #0x3c]
	bl FUN_02059C60
	ldr r0, [r4, #0x50]
	bl FUN_0224EDA8
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}

	thumb_func_start MOD05_021E6E48
MOD05_021E6E48: ; 0x021E6E48
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	cmp r0, #1
	bne _021E6E66
	add r1, r4, #0
	ldr r0, [r4, #0x34]
	add r1, #0x40
	bl MOD05_021E723C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	mov r0, #0
	pop {r4, pc}
_021E6E66:
	mov r0, #2
	str r0, [r4]
	pop {r4, pc}

	thumb_func_start MOD05_021E6E6C
MOD05_021E6E6C: ; 0x021E6E6C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x40
	bl MOD05_021E7250
	cmp r0, #1
	bne _021E6E86
	ldr r0, _021E6E8C ; =0x0000064D
	bl FUN_020054C8
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021E6E86:
	mov r0, #0
	pop {r4, pc}
	nop
_021E6E8C: .word 0x0000064D

	thumb_func_start MOD05_021E6E90
MOD05_021E6E90: ; 0x021E6E90
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	bl FUN_02058B2C
	add r4, r0, #0
	mov r0, #1
	bl FUN_02059BF4
	lsl r0, r0, #1
	add r4, r4, r0
	ldr r0, [r5, #0x3c]
	bl FUN_02058B4C
	add r6, r0, #0
	mov r0, #1
	bl FUN_02059C00
	lsl r0, r0, #1
	add r6, r6, r0
	add r2, r5, #0
	add r0, r4, #0
	add r1, r6, #0
	add r2, #0x28
	bl FUN_02059E60
	add r1, r5, #0
	ldr r0, [r5, #0x34]
	add r1, #0x28
	bl FUN_02059E9C
	mov r0, #0
	str r0, [r5, #0x18]
	str r4, [r5, #0xc]
	ldr r0, [r5, #0x2c]
	asr r1, r0, #3
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	str r0, [r5, #0x10]
	str r6, [r5, #0x14]
	ldr r0, [r5, #0x3c]
	add r1, sp, #0xc
	bl FUN_02058B5C
	ldr r1, [sp, #0x14]
	ldr r0, [r5, #0x30]
	cmp r1, r0
	blt _021E6EFA
	bl ErrorHandling
_021E6EFA:
	ldr r1, [sp, #0x10]
	ldr r0, [r5, #0x2c]
	cmp r1, r0
	bgt _021E6F06
	bl ErrorHandling
_021E6F06:
	mov r0, #0
	str r0, [sp]
	ldr r1, [r5, #0x2c]
	ldr r0, [sp, #0x10]
	add r3, sp, #0
	sub r2, r1, r0
	ldr r1, [r5, #0x30]
	ldr r0, [sp, #0x14]
	str r2, [sp, #4]
	sub r1, r1, r0
	asr r0, r2, #5
	lsr r0, r0, #0x1a
	add r0, r2, r0
	asr r0, r0, #6
	str r0, [sp, #4]
	asr r0, r1, #5
	lsr r0, r0, #0x1a
	add r0, r1, r0
	add r2, r5, #0
	str r1, [sp, #8]
	asr r0, r0, #6
	str r0, [sp, #8]
	ldmia r3!, {r0, r1}
	add r2, #0x1c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r5, #0x34]
	bl FUN_0224ED94
	str r0, [r5, #0x50]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	mov r0, #0
	add sp, #0x18
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021E6F50
MOD05_021E6F50: ; 0x021E6F50
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl FUN_02058B5C
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x24]
	add r1, r1, r0
	str r1, [sp, #8]
	ldr r0, [r4, #0x30]
	cmp r1, r0
	ble _021E6F70
	str r0, [sp, #8]
	b _021E6F78
_021E6F70:
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x24]
	add r0, r1, r0
	str r0, [r4, #0x18]
_021E6F78:
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl FUN_02058B6C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x20
	blt _021E6F94
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
_021E6F94:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E6F9C
MOD05_021E6F9C: ; 0x021E6F9C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl FUN_02058B5C
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x20]
	add r1, r1, r0
	str r1, [sp, #4]
	ldr r0, [r4, #0x2c]
	cmp r1, r0
	bge _021E6FBA
	str r0, [sp, #4]
_021E6FBA:
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x24]
	add r1, r1, r0
	str r1, [sp, #8]
	ldr r0, [r4, #0x30]
	cmp r1, r0
	ble _021E6FCC
	str r0, [sp, #8]
	b _021E6FD4
_021E6FCC:
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x24]
	add r0, r1, r0
	str r0, [r4, #0x18]
_021E6FD4:
	ldr r0, [r4, #0x3c]
	add r1, sp, #0
	bl FUN_02058B6C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0x40
	bge _021E6FEC
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021E6FEC:
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x30]
	cmp r1, r0
	beq _021E6FF8
	bl ErrorHandling
_021E6FF8:
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x2c]
	cmp r1, r0
	beq _021E7004
	bl ErrorHandling
_021E7004:
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0xc]
	bl FUN_02058B30
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x10]
	bl FUN_02058B40
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #0x14]
	bl FUN_02058B50
	ldr r0, [r4, #0x3c]
	bl FUN_02059C60
	ldr r0, [r4, #0x50]
	bl FUN_0224EDA8
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E7030
MOD05_021E7030: ; 0x021E7030
	push {r3, lr}
	bl FUN_02046528
	bl MOD05_021E703C
	pop {r3, pc}

	thumb_func_start MOD05_021E703C
MOD05_021E703C: ; 0x021E703C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x18
	bl MOD05_021E72B8
	add r4, r0, #0
	str r5, [r4]
	ldr r0, [r5, #0x38]
	str r0, [r4, #4]
	bl FUN_020553A0
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	bl FUN_020553E8
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x10]
	ldr r1, _021E7068 ; =MOD05_021E706C
	add r2, r4, #0
	bl FUN_0204640C
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E7068: .word MOD05_021E706C

	thumb_func_start MOD05_021E706C
MOD05_021E706C: ; 0x021E706C
	push {r4, lr}
	bl FUN_0204652C
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021E7084
	cmp r0, #1
	beq _021E7096
	cmp r0, #2
	beq _021E70C8
	b _021E70E2
_021E7084:
	ldr r0, [r4, #8]
	ldr r1, _021E70E8 ; =0x021F7758
	bl FUN_0205AEA4
	str r0, [r4, #0x14]
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _021E70E2
_021E7096:
	ldr r0, [r4, #0x14]
	bl FUN_0205AEF0
	cmp r0, #1
	bne _021E70E2
	ldr r1, [r4, #0x10]
	mov r0, #5
	bl FUN_020555A0
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl MOD05_021E726C
	ldr r0, [r4, #0x14]
	bl FUN_0205AEFC
	ldr r0, [r4, #8]
	ldr r1, _021E70EC ; =0x021F77BC
	bl FUN_0205AEA4
	str r0, [r4, #0x14]
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _021E70E2
_021E70C8:
	ldr r0, [r4, #0x14]
	bl FUN_0205AEF0
	cmp r0, #1
	bne _021E70E2
	ldr r0, [r4, #0x14]
	bl FUN_0205AEFC
	add r0, r4, #0
	bl MOD05_021E72DC
	mov r0, #1
	pop {r4, pc}
_021E70E2:
	mov r0, #0
	pop {r4, pc}
	nop
_021E70E8: .word 0x021F7758
_021E70EC: .word 0x021F77BC

	thumb_func_start MOD05_021E70F0
MOD05_021E70F0: ; 0x021E70F0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl FUN_020553A0
	add r5, r0, #0
	bl FUN_02058934
	cmp r0, #0
	beq _021E7136
	add r0, r4, #0
	bl FUN_020553C4
	cmp r0, #0
	bne _021E7136
	add r0, r5, #0
	bl FUN_02058458
	sub r0, #0xc4
	cmp r0, #1
	bls _021E7136
	add r0, r4, #0
	bl FUN_020553E0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x40
	bl MOD05_021E5FD8
	add r0, r4, #0
	bl MOD05_021E5FE0
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021E5FD8
_021E7136:
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021E7138
MOD05_021E7138: ; 0x021E7138
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl FUN_020553A0
	add r5, r0, #0
	bl FUN_02058934
	cmp r0, #0
	beq _021E7180
	add r0, r4, #0
	bl FUN_020553C4
	cmp r0, #0
	bne _021E7180
	add r0, r5, #0
	bl FUN_02058458
	cmp r0, #0xc4
	beq _021E7162
	cmp r0, #0xc5
	bne _021E7180
_021E7162:
	add r0, r4, #0
	bl FUN_020553E0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl MOD05_021E5FD8
	add r0, r4, #0
	bl MOD05_021E5FE0
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021E5FD8
_021E7180:
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E7184
MOD05_021E7184: ; 0x021E7184
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r5, [r6, #0x38]
	add r0, r5, #0
	bl FUN_020553C4
	add r7, r0, #0
	beq _021E7198
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E7198:
	add r0, r5, #0
	bl FUN_020553A0
	str r0, [sp]
	mov r0, #4
	mov r1, #0x10
	bl FUN_020169D8
	add r4, r0, #0
	mov r0, #0
	str r0, [r4]
	str r6, [r4, #8]
	str r5, [r4, #0xc]
	ldr r0, [sp]
	str r7, [r4, #4]
	bl FUN_02058914
	add r0, r5, #0
	mov r1, #0x80
	bl MOD05_021E5FD8
	add r0, r5, #0
	bl MOD05_021E5FE0
	ldr r0, _021E71E0 ; =MOD05_021E7218
	ldr r2, _021E71E4 ; =0x0000FFFF
	add r1, r4, #0
	bl FUN_0200CA44
	add r4, r0, #0
	bne _021E71DA
	bl ErrorHandling
_021E71DA:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E71E0: .word MOD05_021E7218
_021E71E4: .word 0x0000FFFF

	thumb_func_start MOD05_021E71E8
MOD05_021E71E8: ; 0x021E71E8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	beq _021E7216
	bl FUN_0201B6C8
	add r6, r0, #0
	ldr r4, [r6, #0xc]
	add r0, r4, #0
	bl FUN_020553E8
	add r1, r0, #0
	mov r0, #0
	bl FUN_020555A0
	add r0, r4, #0
	bl MOD05_021E6014
	add r0, r6, #0
	bl FUN_02016A18
	add r0, r5, #0
	bl FUN_0200CAB4
_021E7216:
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021E7218
MOD05_021E7218: ; 0x021E7218
	push {r3, lr}
	ldr r0, [r1, #0xc]
	bl FUN_020553A0
	bl FUN_020586A0
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E7228
MOD05_021E7228: ; 0x021E7228
	push {r4, lr}
	add r4, r2, #0
	mov r2, #1
	str r2, [r4]
	str r1, [r4, #8]
	ldr r0, [r0, #0x38]
	bl FUN_020553E8
	str r0, [r4, #4]
	pop {r4, pc}

	thumb_func_start MOD05_021E723C
MOD05_021E723C: ; 0x021E723C
	push {r4, lr}
	add r4, r1, #0
	ldr r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r1, #0
	bl FUN_0224666C
	str r0, [r4, #0xc]
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E7250
MOD05_021E7250: ; 0x021E7250
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_022466A0
	cmp r0, #1
	bne _021E7268
	ldr r0, [r4, #0xc]
	bl FUN_022466AC
	mov r0, #1
	pop {r4, pc}
_021E7268:
	mov r0, #0
	pop {r4, pc}

	thumb_func_start MOD05_021E726C
MOD05_021E726C: ; 0x021E726C
	push {r4, lr}
	add r4, r1, #0
	bl FUN_020553A0
	add r1, r4, #0
	bl MOD05_021F3490
	pop {r4, pc}

	thumb_func_start MOD05_021E727C
MOD05_021E727C: ; 0x021E727C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	bl FUN_02055320
	add r6, r0, #0
	add r0, r5, #0
	bl FUN_02059BF4
	add r7, r0, #0
	add r0, r4, #0
	bl FUN_0205532C
	str r0, [sp]
	add r0, r5, #0
	bl FUN_02059C00
	add r5, r0, #0
	add r0, r4, #0
	bl FUN_020553A0
	bl FUN_02058578
	ldr r2, [sp]
	add r1, r6, r7
	add r2, r2, r5
	bl FUN_02058D74
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E72B8
MOD05_021E72B8: ; 0x021E72B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #4
	add r1, r5, #0
	bl FUN_020169D8
	add r4, r0, #0
	bne _021E72CC
	bl ErrorHandling
_021E72CC:
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	bl Call_FillMemWithValue
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E72DC
MOD05_021E72DC: ; 0x021E72DC
	ldr r3, _021E72E4 ; =0x02016A8D
	add r1, r0, #0
	mov r0, #4
	bx r3
	.balign 4, 0
_021E72E4: .word 0x02016A8D

	thumb_func_start MOD05_021E72E8
MOD05_021E72E8: ; 0x021E72E8
	push {r4, lr}
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	bl FUN_0206BB1C
	add r1, r4, #0
	bl FUN_0206B9B0
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E72FC
MOD05_021E72FC: ; 0x021E72FC
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl FUN_020553A0
	bl FUN_02058720
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	bl FUN_02054B30
	cmp r0, #1
	bne _021E731E
	mov r2, #3
	b _021E734C
_021E731E:
	add r0, r4, #0
	bl FUN_02054B3C
	cmp r0, #1
	bne _021E732C
	mov r2, #2
	b _021E734C
_021E732C:
	add r0, r4, #0
	bl FUN_02054B48
	cmp r0, #1
	bne _021E733A
	mov r2, #0
	b _021E734C
_021E733A:
	add r0, r4, #0
	bl FUN_02054B54
	cmp r0, #1
	bne _021E7348
	mov r2, #1
	b _021E734C
_021E7348:
	mov r0, #0
	pop {r4, r5, r6, pc}
_021E734C:
	add r0, r5, #0
	add r1, r6, #0
	bl MOD05_021E7358
	mov r0, #1
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021E7358
MOD05_021E7358: ; 0x021E7358
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x18
	add r6, r1, #0
	add r7, r2, #0
	bl MOD05_021E74D4
	add r4, r0, #0
	str r5, [r4, #0xc]
	str r6, [r4, #0x10]
	ldr r0, _021E7380 ; =0x00000658
	str r7, [r4]
	bl FUN_020054C8
	ldr r1, _021E7384 ; =MOD05_021E73B4
	add r0, r5, #0
	add r2, r4, #0
	bl FUN_020463CC
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E7380: .word 0x00000658
_021E7384: .word MOD05_021E73B4

	thumb_func_start MOD05_021E7388
MOD05_021E7388: ; 0x021E7388
	cmp r0, #3
	bhi _021E73B0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E7398: ; jump table
	.short _021E73A0 - _021E7398 - 2 ; case 0
	.short _021E73A8 - _021E7398 - 2 ; case 1
	.short _021E73A4 - _021E7398 - 2 ; case 2
	.short _021E73AC - _021E7398 - 2 ; case 3
_021E73A0:
	mov r0, #2
	bx lr
_021E73A4:
	mov r0, #1
	bx lr
_021E73A8:
	mov r0, #3
	bx lr
_021E73AC:
	mov r0, #0
	bx lr
_021E73B0:
	mov r0, #0
	bx lr

	thumb_func_start MOD05_021E73B4
MOD05_021E73B4: ; 0x021E73B4
	push {r4, r5, r6, lr}
	bl FUN_0204652C
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl FUN_020553A0
	add r6, r0, #0
	bl FUN_02058720
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021E73DC
	cmp r0, #1
	beq _021E73EE
	cmp r0, #2
	beq _021E741C
	b _021E74CA
_021E73DC:
	mov r1, #1
	add r0, r6, #0
	lsl r1, r1, #8
	bl FUN_02058410
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _021E74CA
_021E73EE:
	ldr r0, [r4, #0x10]
	bl FUN_02057254
	cmp r0, #0
	beq _021E74CA
	ldr r0, [r4]
	mov r1, #0xc
	bl FUN_0205AFDC
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	bl FUN_02057260
	ldr r0, [r4, #0x10]
	ldr r1, [r4]
	bl FUN_02055304
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #7
	str r0, [r4, #4]
	b _021E74CA
_021E741C:
	ldr r0, [r4, #4]
	cmp r0, #2
	beq _021E742A
	cmp r0, #4
	beq _021E742A
	cmp r0, #6
	bne _021E743A
_021E742A:
	ldr r0, [r4]
	bl MOD05_021E7388
	str r0, [r4]
	ldr r0, [r4, #0x10]
	ldr r1, [r4]
	bl FUN_02055304
_021E743A:
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	bne _021E74CA
	add r0, r5, #0
	bl FUN_02054B30
	cmp r0, #1
	bne _021E7452
	mov r0, #3
	str r0, [r4]
	b _021E748A
_021E7452:
	add r0, r5, #0
	bl FUN_02054B3C
	cmp r0, #1
	bne _021E7462
	mov r0, #2
	str r0, [r4]
	b _021E748A
_021E7462:
	add r0, r5, #0
	bl FUN_02054B48
	cmp r0, #1
	bne _021E7472
	mov r0, #0
	str r0, [r4]
	b _021E748A
_021E7472:
	add r0, r5, #0
	bl FUN_02054B54
	cmp r0, #1
	bne _021E7482
	mov r0, #1
	str r0, [r4]
	b _021E748A
_021E7482:
	ldr r0, [r4]
	bl MOD05_021E7388
	str r0, [r4]
_021E748A:
	ldr r0, [r4, #0x10]
	ldr r2, [r4]
	add r1, r6, #0
	bl FUN_02056B74
	cmp r0, #0
	bne _021E749E
	mov r0, #1
	str r0, [r4, #8]
	b _021E74CA
_021E749E:
	add r0, r6, #0
	mov r1, #0x80
	bl FUN_02058418
	mov r1, #1
	add r0, r6, #0
	lsl r1, r1, #8
	bl FUN_02058418
	ldr r0, [r4, #0x10]
	ldr r1, [r4]
	bl FUN_02055304
	add r0, r4, #0
	bl MOD05_021E74F8
	ldr r0, _021E74D0 ; =0x00000658
	mov r1, #0
	bl FUN_020054F0
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E74CA:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_021E74D0: .word 0x00000658

	thumb_func_start MOD05_021E74D4
MOD05_021E74D4: ; 0x021E74D4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #4
	add r1, r5, #0
	bl FUN_020169D8
	add r4, r0, #0
	bne _021E74E8
	bl ErrorHandling
_021E74E8:
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	bl Call_FillMemWithValue
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E74F8
MOD05_021E74F8: ; 0x021E74F8
	ldr r3, _021E7500 ; =0x02016A8D
	add r1, r0, #0
	mov r0, #4
	bx r3
	.balign 4, 0
_021E7500: .word 0x02016A8D

	thumb_func_start MOD05_021E7504
MOD05_021E7504: ; 0x021E7504
	add r1, r0, #0
	ldr r0, [r1, #0x10]
	cmp r0, #3
	bhi _021E7536
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E7518: ; jump table
	.short _021E7520 - _021E7518 - 2 ; case 0
	.short _021E752C - _021E7518 - 2 ; case 1
	.short _021E7526 - _021E7518 - 2 ; case 2
	.short _021E7532 - _021E7518 - 2 ; case 3
_021E7520:
	mov r0, #2
	str r0, [r1, #0x10]
	b _021E7536
_021E7526:
	mov r0, #1
	str r0, [r1, #0x10]
	b _021E7536
_021E752C:
	mov r0, #3
	str r0, [r1, #0x10]
	b _021E7536
_021E7532:
	mov r0, #0
	str r0, [r1, #0x10]
_021E7536:
	ldr r0, [r1]
	ldr r3, _021E7540 ; =0x02055305
	ldr r0, [r0, #0x38]
	ldr r1, [r1, #0x10]
	bx r3
	.balign 4, 0
_021E7540: .word 0x02055305

	thumb_func_start MOD05_021E7544
MOD05_021E7544: ; 0x021E7544
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	add r7, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #0x38]
	bl FUN_020553A0
	add r6, r0, #0
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021E7564
	cmp r0, #1
	beq _021E756E
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_021E7564:
	mov r0, #1
	str r0, [r5, #8]
	ldr r0, _021E760C ; =0x0000064F
	bl FUN_020054C8
_021E756E:
	ldr r0, [r5, #0xc]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	beq _021E7584
	add r0, r5, #0
	bl MOD05_021E7504
_021E7584:
	add r0, r6, #0
	add r1, sp, #0x18
	bl FUN_02058BA4
	ldr r4, [r5, #0xc]
	add r0, r4, #0
	bl _dflt
	str r0, [sp, #0x14]
	lsl r0, r4, #0xb
	str r1, [sp, #0x10]
	bl _dflt
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _021E7610 ; =0x9999999A
	ldr r1, _021E7614 ; =0x40C19999
	bl _dadd
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	bl _dmul
	bl _dfix
	str r0, [sp, #0x1c]
	add r0, r6, #0
	add r1, sp, #0x18
	bl FUN_02058BB4
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	cmp r0, #0x14
	bne _021E75EA
	mov r0, #6
	str r0, [sp]
	mov r1, #0
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #2
	add r2, r1, #0
	add r3, r1, #0
	bl FUN_0200E1D0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_021E75EA:
	ble _021E7606
	bl FUN_0200E308
	cmp r0, #0
	beq _021E7606
	ldr r0, [r5, #4]
	mov r1, #1
	str r1, [r0]
	add r0, r5, #0
	bl FUN_02016A18
	add r0, r7, #0
	bl FUN_0200CAB4
_021E7606:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021E760C: .word 0x0000064F
_021E7610: .word 0x9999999A
_021E7614: .word 0x40C19999

	thumb_func_start MOD05_021E7618
MOD05_021E7618: ; 0x021E7618
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #0x38]
	bl FUN_020553A0
	ldr r1, [r5, #8]
	add r4, r0, #0
	cmp r1, #0
	beq _021E763C
	cmp r1, #1
	beq _021E7694
	cmp r1, #2
	beq _021E771C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_021E763C:
	bl FUN_02058914
	add r0, r4, #0
	add r1, sp, #0x14
	bl FUN_02058BA4
	ldr r1, [r5, #0xc]
	mov r0, #0x14
	sub r6, r0, r1
	add r0, r6, #0
	bl _dflt
	str r0, [sp, #0xc]
	lsl r0, r6, #0xb
	add r7, r1, #0
	bl _dflt
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _021E7744 ; =0x9999999A
	ldr r1, _021E7748 ; =0x40C19999
	bl _dadd
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	bl _dmul
	bl _dfix
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r1, sp, #0x14
	bl FUN_02058BB4
	add r0, r4, #0
	bl MOD05_021F1D8C
	ldr r0, _021E774C ; =0x0000064F
	bl FUN_020054C8
	mov r0, #1
	str r0, [r5, #8]
_021E7694:
	ldr r0, [r5, #0xc]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	beq _021E76AA
	add r0, r5, #0
	bl MOD05_021E7504
_021E76AA:
	add r0, r4, #0
	add r1, sp, #0x14
	bl FUN_02058BA4
	ldr r1, [r5, #0xc]
	mov r0, #0x14
	sub r6, r0, r1
	add r0, r6, #0
	bl _dflt
	str r0, [sp, #0x10]
	lsl r0, r6, #0xb
	add r7, r1, #0
	bl _dflt
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _021E7744 ; =0x9999999A
	ldr r1, _021E7748 ; =0x40C19999
	bl _dadd
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	bl _dmul
	bl _dfix
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r1, sp, #0x14
	bl FUN_02058BB4
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	cmp r0, #2
	bne _021E770E
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	add r1, r0, #0
	add r2, r0, #0
	mov r3, #0
	bl FUN_0200E1D0
_021E770E:
	ldr r0, [r5, #0xc]
	cmp r0, #0x14
	ble _021E7740
	mov r0, #2
	add sp, #0x20
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_021E771C:
	bl FUN_0200E308
	cmp r0, #0
	beq _021E7740
	ldr r0, [r5]
	mov r1, #1
	ldr r0, [r0, #0x38]
	bl FUN_02055304
	ldr r0, [r5, #4]
	mov r1, #1
	str r1, [r0]
	add r0, r5, #0
	bl FUN_02016A18
	add r0, r6, #0
	bl FUN_0200CAB4
_021E7740:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E7744: .word 0x9999999A
_021E7748: .word 0x40C19999
_021E774C: .word 0x0000064F

	thumb_func_start MOD05_021E7750
MOD05_021E7750: ; 0x021E7750
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #4
	mov r1, #0x14
	add r7, r2, #0
	bl FUN_020169D8
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	str r5, [r4]
	str r7, [r4, #4]
	ldr r0, [r5, #0x38]
	bl FUN_020552F8
	str r0, [r4, #0x10]
	cmp r6, #0
	beq _021E7786
	ldr r0, _021E7794 ; =MOD05_021E7544
	add r1, r4, #0
	mov r2, #0x64
	bl FUN_0200CA44
	pop {r3, r4, r5, r6, r7, pc}
_021E7786:
	ldr r0, _021E7798 ; =MOD05_021E7618
	add r1, r4, #0
	mov r2, #0x64
	bl FUN_0200CA44
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7794: .word MOD05_021E7544
_021E7798: .word MOD05_021E7618

	thumb_func_start MOD05_021E779C
MOD05_021E779C: ; 0x021E779C
	push {r4, lr}
	mov r2, #0
	mov r1, #0x14
	add r3, r2, #0
	add r4, r0, #0
	bl MOD05_021E4BE8
	str r4, [r0, #0x10]
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E77B0
MOD05_021E77B0: ; 0x021E77B0
	push {r4, lr}
	add r4, r0, #0
	bl MOD05_021E78B4
	add r0, r4, #0
	bl MOD05_021E4C00
	pop {r4, pc}

	thumb_func_start MOD05_021E77C0
MOD05_021E77C0: ; 0x021E77C0
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	bx lr

	thumb_func_start MOD05_021E77C8
MOD05_021E77C8: ; 0x021E77C8
	push {r3, lr}
	ldr r1, [r0]
	sub r1, r1, #1
	str r1, [r0]
	bpl _021E77D6
	bl ErrorHandling
_021E77D6:
	pop {r3, pc}

	thumb_func_start MOD05_021E77D8
MOD05_021E77D8: ; 0x021E77D8
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
	bx lr

	thumb_func_start MOD05_021E77E0
MOD05_021E77E0: ; 0x021E77E0
	push {r3, lr}
	ldr r1, [r0, #4]
	sub r1, r1, #1
	str r1, [r0, #4]
	bpl _021E77EE
	bl ErrorHandling
_021E77EE:
	pop {r3, pc}

	thumb_func_start MOD05_021E77F0
MOD05_021E77F0: ; 0x021E77F0
	push {r3, lr}
	cmp r1, #0
	bne _021E77FC
	bl MOD05_021E77C0
	pop {r3, pc}
_021E77FC:
	bl MOD05_021E77D8
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E7804
MOD05_021E7804: ; 0x021E7804
	push {r3, lr}
	cmp r1, #0
	bne _021E7810
	bl MOD05_021E77C8
	pop {r3, pc}
_021E7810:
	bl MOD05_021E77E0
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E7818
MOD05_021E7818: ; 0x021E7818
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021E785C
	mov r1, #1
	str r1, [r4, #8]
	ldr r0, [r4, #0x10]
	mov r2, #0x55
	bl MOD05_021E5078
	ldr r0, [r4, #0x10]
	mov r1, #1
	mov r2, #0x75
	bl MOD05_021E50AC
	mov r1, #1
	ldr r0, [r4, #0x10]
	mov r2, #4
	add r3, r1, #0
	bl MOD05_021E50D4
	mov r1, #1
	str r1, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021E7860 ; =0x021F7854
	add r2, r1, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0x10]
	add r3, r1, #0
	bl MOD05_021E4EFC
_021E785C:
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_021E7860: .word 0x021F7854

	thumb_func_start MOD05_021E7864
MOD05_021E7864: ; 0x021E7864
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021E78AC
	mov r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x10]
	mov r1, #0xa
	mov r2, #0x6c
	bl MOD05_021E5078
	ldr r0, [r4, #0x10]
	mov r1, #0xa
	mov r2, #0x75
	bl MOD05_021E50AC
	ldr r0, [r4, #0x10]
	mov r1, #0xb
	mov r2, #0xd
	mov r3, #1
	bl MOD05_021E50D4
	mov r0, #0xb
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021E78B0 ; =0x021F7854
	mov r2, #0xa
	str r0, [sp, #8]
	ldr r0, [r4, #0x10]
	mov r1, #0xc
	add r3, r2, #0
	bl MOD05_021E4EFC
_021E78AC:
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_021E78B0: .word 0x021F7854

	thumb_func_start MOD05_021E78B4
MOD05_021E78B4: ; 0x021E78B4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _021E78E2
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl MOD05_021E50A0
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl MOD05_021E50C8
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl MOD05_021E5114
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl MOD05_021E506C
_021E78E2:
	pop {r4, pc}

	thumb_func_start MOD05_021E78E4
MOD05_021E78E4: ; 0x021E78E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _021E7912
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x10]
	mov r1, #0xa
	bl MOD05_021E50A0
	ldr r0, [r4, #0x10]
	mov r1, #0xa
	bl MOD05_021E50C8
	ldr r0, [r4, #0x10]
	mov r1, #0xb
	bl MOD05_021E5114
	ldr r0, [r4, #0x10]
	mov r1, #0xc
	bl MOD05_021E506C
_021E7912:
	pop {r4, pc}

	thumb_func_start MOD05_021E7914
MOD05_021E7914: ; 0x021E7914
	push {r3, lr}
	ldr r1, [r0]
	cmp r1, #0
	bne _021E7920
	bl MOD05_021E7818
_021E7920:
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E7924
MOD05_021E7924: ; 0x021E7924
	push {r3, lr}
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _021E7930
	bl MOD05_021E7864
_021E7930:
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E7934
MOD05_021E7934: ; 0x021E7934
	push {r3, lr}
	ldr r1, [r0]
	cmp r1, #0
	bne _021E7940
	bl MOD05_021E78B4
_021E7940:
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E7944
MOD05_021E7944: ; 0x021E7944
	push {r3, lr}
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _021E7950
	bl MOD05_021E78E4
_021E7950:
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E7954
MOD05_021E7954: ; 0x021E7954
	push {r3, lr}
	cmp r1, #0
	bne _021E7960
	bl MOD05_021E7914
	pop {r3, pc}
_021E7960:
	bl MOD05_021E7924
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E7968
MOD05_021E7968: ; 0x021E7968
	push {r3, lr}
	cmp r1, #0
	bne _021E7974
	bl MOD05_021E7934
	pop {r3, pc}
_021E7974:
	bl MOD05_021E7944
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E797C
MOD05_021E797C: ; 0x021E797C
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r3, _021E7998 ; =0x021F7824
	add r4, sp, #0
	ldr r5, [r3]
	ldr r3, [r3, #4]
	str r5, [sp]
	str r3, [sp, #4]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	bl MOD05_021E4EE4
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E7998: .word 0x021F7824

	thumb_func_start MOD05_021E799C
MOD05_021E799C: ; 0x021E799C
	push {r3, lr}
	bl FUN_02064738
	ldr r0, [r0, #0x14]
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E79A8
MOD05_021E79A8: ; 0x021E79A8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl FUN_0206475C
	add r2, r4, #0
	add r3, r0, #0
	add r2, #0x30
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x30]
	bl MOD05_021E7954
	add r0, r5, #0
	add r1, sp, #0
	bl FUN_0206477C
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x30]
	add r2, sp, #0
	bl MOD05_021E797C
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x30]
	bl MOD05_021E77F0
	add r0, r5, #0
	bl FUN_02064754
	cmp r0, #1
	bne _021E79FC
	ldr r0, _021E7A04 ; =0x000005DD
	bl FUN_020054C8
_021E79FC:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021E7A04: .word 0x000005DD

	thumb_func_start MOD05_021E7A08
MOD05_021E7A08: ; 0x021E7A08
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	add r5, r0, #0
	bl FUN_0206477C
	ldr r0, [r4]
	cmp r0, #0
	beq _021E7A24
	cmp r0, #1
	beq _021E7A46
	cmp r0, #2
	b _021E7A5E
_021E7A24:
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x28]
	add r0, r1, r0
	str r0, [r4, #0x1c]
	beq _021E7A3A
	mov r0, #2
	ldr r1, [r4, #0x28]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [r4, #0x28]
	b _021E7A5E
_021E7A3A:
	mov r0, #0
	str r0, [r4, #0x28]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E7A5E
_021E7A46:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x1e
	blt _021E7A5E
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	str r0, [r4, #0x14]
_021E7A5E:
	add r0, r5, #0
	add r1, sp, #0
	bl FUN_0206476C
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E7A6C
MOD05_021E7A6C: ; 0x021E7A6C
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x40]
	bl FUN_0201F744
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x30]
	bl MOD05_021E7804
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x30]
	bl MOD05_021E7968
	pop {r4, pc}

	thumb_func_start MOD05_021E7A88
MOD05_021E7A88: ; 0x021E7A88
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, [r4, #0x10]
	cmp r1, #1
	beq _021E7ABA
	add r1, sp, #0
	bl FUN_0206477C
	ldr r1, [sp]
	ldr r0, [r4, #0x18]
	add r0, r1, r0
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x1c]
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x20]
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [r4, #0x40]
	add r1, sp, #0
	bl FUN_0201F7C8
_021E7ABA:
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E7AC0
MOD05_021E7AC0: ; 0x021E7AC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl MOD05_021E4C24
	add r4, r0, #0
	mov r1, #0x16
	str r6, [sp, #0x14]
	str r4, [sp, #0x18]
	bl MOD05_021E4C08
	str r0, [sp, #0x1c]
	add r0, r5, #0
	add r1, sp, #8
	str r5, [sp, #0x20]
	bl FUN_02058B5C
	add r0, r5, #0
	bl FUN_02058744
	add r1, r0, #1
	add r0, sp, #0x14
	str r0, [sp]
	str r1, [sp, #4]
	ldr r1, _021E7B04 ; =0x021F7840
	add r0, r4, #0
	add r2, sp, #8
	add r3, r7, #0
	bl MOD05_021E4DC4
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E7B04: .word 0x021F7840

	thumb_func_start MOD05_021E7B08
MOD05_021E7B08: ; 0x021E7B08
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl FUN_0206475C
	add r2, r4, #0
	add r3, r0, #0
	add r2, #0x30
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x3c]
	bl FUN_02058448
	str r0, [r4, #8]
	ldr r0, [r4, #0x3c]
	bl FUN_02058450
	str r0, [r4, #0xc]
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x30]
	bl MOD05_021E7954
	add r0, r5, #0
	add r1, sp, #0
	bl FUN_0206477C
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x30]
	add r2, sp, #0
	bl MOD05_021E797C
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x30]
	bl MOD05_021E77F0
	add r0, r5, #0
	bl FUN_02064754
	cmp r0, #1
	bne _021E7B6C
	ldr r0, _021E7B74 ; =0x000005DD
	bl FUN_020054C8
_021E7B6C:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021E7B74: .word 0x000005DD

	thumb_func_start MOD05_021E7B78
MOD05_021E7B78: ; 0x021E7B78
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r6, [r4, #0x3c]
	ldr r1, [r4, #8]
	add r5, r0, #0
	ldr r2, [r4, #0xc]
	add r0, r6, #0
	bl FUN_020582A8
	cmp r0, #0
	bne _021E7B94
	bl ErrorHandling
_021E7B94:
	add r0, r6, #0
	add r1, sp, #0
	bl MOD05_021F1E64
	mov r0, #2
	ldr r1, [sp, #4]
	lsl r0, r0, #0x10
	add r1, r1, r0
	str r1, [sp, #4]
	ldr r2, [sp, #8]
	lsr r1, r0, #5
	add r1, r2, r1
	str r1, [sp, #8]
	ldr r1, [r4]
	cmp r1, #0
	beq _021E7BBC
	cmp r1, #1
	beq _021E7BDC
	cmp r1, #2
	b _021E7BF4
_021E7BBC:
	ldr r2, [r4, #0x1c]
	ldr r1, [r4, #0x28]
	add r1, r2, r1
	str r1, [r4, #0x1c]
	beq _021E7BD0
	ldr r1, [r4, #0x28]
	lsr r0, r0, #4
	sub r0, r1, r0
	str r0, [r4, #0x28]
	b _021E7BF4
_021E7BD0:
	mov r0, #0
	str r0, [r4, #0x28]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021E7BF4
_021E7BDC:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x1e
	blt _021E7BF4
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	str r0, [r4, #0x14]
_021E7BF4:
	add r0, r5, #0
	add r1, sp, #0
	bl FUN_0206476C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}

	thumb_func_start MOD05_021E7C00
MOD05_021E7C00: ; 0x021E7C00
	push {r4, lr}
	mov r1, #0x46
	lsl r1, r1, #6
	bl FUN_02016998
	add r4, r0, #0
	bl MOD05_021E7C1C
	add r0, r4, #0
	pop {r4, pc}

	thumb_func_start MOD05_021E7C14
MOD05_021E7C14: ; 0x021E7C14
	ldr r3, _021E7C18 ; =0x02016A19
	bx r3
	.balign 4, 0
_021E7C18: .word 0x02016A19

	thumb_func_start MOD05_021E7C1C
MOD05_021E7C1C: ; 0x021E7C1C
	push {r3, r4, r5, r6, r7}
	sub sp, #0xc
	mov r4, #0
	mov ip, r0
	add r7, sp, #0
	add r3, r4, #0
_021E7C28:
	str r3, [r7]
	str r3, [r7, #4]
	mov r0, #0x8c
	add r1, r4, #0
	mul r1, r0
	mov r0, ip
	add r2, r0, r1
	add r5, r2, #0
	str r3, [r7, #8]
	mov r0, ip
	str r3, [r0, r1]
	str r3, [r2, #4]
	str r3, [r2, #8]
	str r3, [r2, #0xc]
	add r6, r7, #0
	ldmia r6!, {r0, r1}
	add r5, #0x68
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	add r6, r7, #0
	str r0, [r5]
	add r5, r2, #0
	ldmia r6!, {r0, r1}
	add r5, #0x74
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	add r6, r7, #0
	str r0, [r5]
	add r5, r2, #0
	ldmia r6!, {r0, r1}
	add r5, #0x80
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	str r0, [r5]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	str r3, [r2, #0x64]
	cmp r4, #0x20
	blo _021E7C28
	add sp, #0xc
	pop {r3, r4, r5, r6, r7}
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021E7C80
MOD05_021E7C80: ; 0x021E7C80
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0x20
	blt _021E7C90
	bl ErrorHandling
_021E7C90:
	add r6, sp, #0
	mov r3, #0
	str r3, [r6]
	str r3, [r6, #4]
	mov r0, #0x8c
	mul r0, r5
	str r3, [r6, #8]
	str r3, [r4, r0]
	add r2, r4, r0
	str r3, [r2, #4]
	str r3, [r2, #8]
	add r4, r2, #0
	str r3, [r2, #0xc]
	add r5, r6, #0
	ldmia r5!, {r0, r1}
	add r4, #0x68
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	add r5, r6, #0
	str r0, [r4]
	add r4, r2, #0
	ldmia r5!, {r0, r1}
	add r4, #0x74
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	str r0, [r4]
	add r4, r2, #0
	ldmia r6!, {r0, r1}
	add r4, #0x80
	stmia r4!, {r0, r1}
	ldr r0, [r6]
	str r0, [r4]
	str r3, [r2, #0x64]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E7CD8
MOD05_021E7CD8: ; 0x021E7CD8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	ldr r0, [sp, #0x28]
	add r4, r1, #0
	str r0, [sp, #0x28]
	mov r0, #0
	add r7, r2, #0
	add r5, r3, #0
	str r0, [sp, #4]
	cmp r4, #0
	beq _021E7D0E
	mov r0, #4
	bl FUN_020169D8
	str r0, [sp, #4]
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r1, r4, #0
	bl FUN_02006864
	add r0, r4, #0
	mov r1, #0x30
	bl _u32_div_f
	str r0, [sp]
	b _021E7D10
_021E7D0E:
	str r0, [sp]
_021E7D10:
	ldr r4, [sp, #4]
	mov r6, #0
_021E7D14:
	ldr r0, [sp]
	cmp r6, r0
	bhs _021E7D82
	ldr r0, [r4]
	add r2, r5, #0
	str r0, [r5]
	mov r0, #1
	str r0, [r5, #4]
	mov r0, #0
	add r3, r4, #4
	str r0, [r5, #0xc]
	ldmia r3!, {r0, r1}
	add r2, #0x68
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r3, r4, #0
	str r0, [r2]
	add r3, #0x10
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0x74
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r3, r4, #0
	str r0, [r2]
	add r3, #0x1c
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0x80
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r3, r5, #0
	str r0, [r2]
	add r2, r5, #0
	ldr r0, [r5]
	add r1, r7, #0
	add r2, #0x10
	add r3, #0x64
	bl MOD05_021E7F10
	ldr r1, [r5]
	add r0, r7, #0
	bl MOD05_021F4CE4
	cmp r0, #0
	bne _021E7D74
	mov r0, #0
	str r0, [r5]
_021E7D74:
	add r1, r5, #0
	ldr r0, [r5]
	ldr r2, [sp, #0x28]
	add r1, #0x10
	bl MOD05_021D9E80
	b _021E7DBE
_021E7D82:
	mov r1, #0
	add r0, sp, #8
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	add r0, r1, #0
	str r0, [r5]
	str r0, [r5, #4]
	add r2, r5, #0
	add r3, sp, #8
	str r0, [r5, #0xc]
	ldmia r3!, {r0, r1}
	add r2, #0x68
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r3, sp, #8
	str r0, [r2]
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0x74
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r3, sp, #8
	str r0, [r2]
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0x80
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
_021E7DBE:
	add r6, r6, #1
	add r5, #0x8c
	add r4, #0x30
	cmp r6, #0x20
	blt _021E7D14
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _021E7DD2
	bl FUN_02016A18
_021E7DD2:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E7DD8
MOD05_021E7DD8: ; 0x021E7DD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	ldr r4, _021E7E94 ; =0x021F7878
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	add r6, r0, #0
	str r1, [sp, #8]
	add r3, sp, #0x18
	mov r2, #4
_021E7DEA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E7DEA
	ldr r0, [r4]
	ldr r5, [sp, #0x60]
	str r0, [r3]
	mov r7, #0
_021E7DFA:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021E7E86
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _021E7E86
	add r4, r5, #0
	add r4, #0x68
	ldmia r4!, {r0, r1}
	add r3, sp, #0x3c
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4]
	str r0, [r3]
	ldr r1, [sp, #0x3c]
	ldr r0, [r6]
	add r3, r5, #0
	add r0, r1, r0
	str r0, [sp, #0x3c]
	ldr r1, [sp, #0x44]
	ldr r0, [r6, #8]
	add r3, #0x80
	add r0, r1, r0
	str r0, [sp, #0x44]
	add r1, r2, #0
	ldr r0, [r5, #0x64]
	add r2, sp, #0x18
	bl FUN_0201B6D0
	cmp r0, #0
	beq _021E7E86
	ldr r0, [sp, #8]
	bl MOD05_021F4C9C
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _021E7E50
	ldr r0, [sp, #0x10]
	ldr r1, [r5, #0x64]
	ldr r2, _021E7E98 ; =0x00000F33
	bl MOD05_021DBB8C
_021E7E50:
	ldr r0, [r5]
	add r1, r4, #0
	add r2, sp, #0x14
	bl MOD05_021DB9D4
	add r0, sp, #0x14
	ldrh r0, [r0]
	add r1, sp, #0x3c
	cmp r0, #0
	bne _021E7E74
	add r0, r5, #0
	add r3, r5, #0
	add r0, #0x10
	add r2, sp, #0x18
	add r3, #0x80
	bl FUN_0201B26C
	b _021E7E86
_021E7E74:
	str r4, [sp]
	ldr r0, [r5]
	add r3, r5, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x64]
	add r2, sp, #0x18
	add r3, #0x80
	bl MOD05_021E7F34
_021E7E86:
	add r7, r7, #1
	add r5, #0x8c
	cmp r7, #0x20
	blt _021E7DFA
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7E94: .word 0x021F7878
_021E7E98: .word 0x00000F33

	thumb_func_start MOD05_021E7E9C
MOD05_021E7E9C: ; 0x021E7E9C
	add r0, #0x74
	bx lr

	thumb_func_start MOD05_021E7EA0
MOD05_021E7EA0: ; 0x021E7EA0
	add r2, r1, #0
	add r2, #0x68
	add r3, r0, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	bx lr

	thumb_func_start MOD05_021E7EB0
MOD05_021E7EB0: ; 0x021E7EB0
	add r3, r1, #0
	add r2, r0, #0
	ldmia r3!, {r0, r1}
	add r2, #0x68
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bx lr

	thumb_func_start MOD05_021E7EC0
MOD05_021E7EC0: ; 0x021E7EC0
	str r1, [r0, #8]
	bx lr

	thumb_func_start MOD05_021E7EC4
MOD05_021E7EC4: ; 0x021E7EC4
	ldr r0, [r0]
	bx lr

	thumb_func_start MOD05_021E7EC8
MOD05_021E7EC8: ; 0x021E7EC8
	add r0, #0x10
	bx lr

	thumb_func_start MOD05_021E7ECC
MOD05_021E7ECC: ; 0x021E7ECC
	ldr r0, [r0, #0x64]
	bx lr

	thumb_func_start MOD05_021E7ED0
MOD05_021E7ED0: ; 0x021E7ED0
	mov r2, #0x8c
	mul r2, r1
	add r0, r0, r2
	bx lr

	thumb_func_start MOD05_021E7ED8
MOD05_021E7ED8: ; 0x021E7ED8
	mov r3, #0
_021E7EDA:
	ldr r2, [r0]
	cmp r2, r1
	beq _021E7EEA
	add r3, r3, #1
	add r0, #0x8c
	cmp r3, #0x20
	blt _021E7EDA
	mov r0, #0
_021E7EEA:
	bx lr

	thumb_func_start MOD05_021E7EEC
MOD05_021E7EEC: ; 0x021E7EEC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0x20
	blt _021E7EFA
	bl ErrorHandling
_021E7EFA:
	mov r0, #0x8c
	mul r0, r4
	add r4, r5, r0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021E7F0A
	bl ErrorHandling
_021E7F0A:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E7F10
MOD05_021E7F10: ; 0x021E7F10
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	bl MOD05_021F4BD0
	ldr r0, [r0]
	bl FUN_020BC13C
	ldrh r1, [r0, #0xe]
	add r1, r0, r1
	ldr r1, [r1, #0xc]
	add r1, r0, r1
	add r0, r5, #0
	str r1, [r4]
	bl FUN_020B80B4
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E7F34
MOD05_021E7F34: ; 0x021E7F34
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	add r5, r3, #0
	bl FUN_020B8474
	ldr r1, _021E7FB4 ; =0x021CEDD4
	add r0, r4, #0
	bl MI_Copy36B
	ldr r1, _021E7FB8 ; =0x021CED98
	mov r0, #0xa4
	ldr r2, [r1, #0x7c]
	bic r2, r0
	add r0, r5, #0
	str r2, [r1, #0x7c]
	bl FUN_020B844C
	bl FUN_020B849C
	add r2, sp, #0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	add r2, #2
	add r3, sp, #0
	bl MOD05_021DB9E0
	add r0, sp, #0
	ldrh r0, [r0]
	ldr r1, [sp, #0x18]
	bl MOD05_021DB9F8
	add r6, r0, #0
	add r0, sp, #0
	ldrh r0, [r0, #2]
	mov r5, #0xff
	mov r4, #0
	cmp r0, #0
	ble _021E7FB0
_021E7F84:
	lsl r0, r4, #2
	add r2, r6, r0
	ldrh r0, [r6, r0]
	cmp r5, r0
	beq _021E7F96
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	mov r3, #1
	b _021E7F98
_021E7F96:
	mov r3, #0
_021E7F98:
	ldrh r2, [r2, #2]
	add r0, r7, #0
	add r1, r5, #0
	bl FUN_020BAFB8
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, sp, #0
	ldrh r0, [r0, #2]
	cmp r4, r0
	blt _021E7F84
_021E7FB0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7FB4: .word 0x021CEDD4
_021E7FB8: .word 0x021CED98

	thumb_func_start MOD05_021E7FBC
MOD05_021E7FBC: ; 0x021E7FBC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r5, _021E8058 ; =0x021F786C
	add r6, r0, #0
	add r7, r1, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #4
	stmia r4!, {r0, r1}
	ldr r0, [r5]
	str r0, [r4]
	mov r4, #0
	mov r0, #0x8c
_021E7FD4:
	add r1, r4, #0
	mul r1, r0
	add r5, r6, r1
	ldr r1, [r5, #4]
	cmp r1, #0
	bne _021E8044
	mov r0, #1
	str r0, [r5, #4]
	add r6, r5, #0
	ldmia r3!, {r0, r1}
	add r6, #0x68
	stmia r6!, {r0, r1}
	ldr r0, [r3]
	str r0, [r6]
	ldr r6, [sp, #0x28]
	cmp r6, #0
	beq _021E8008
	mov r0, #1
	str r0, [r5, #0xc]
	add r3, r5, #0
	ldmia r6!, {r0, r1}
	add r3, #0x74
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	str r0, [r3]
	b _021E800C
_021E8008:
	mov r0, #0
	str r0, [r5, #0xc]
_021E800C:
	add r6, sp, #4
	add r3, r5, #0
	ldmia r6!, {r0, r1}
	add r3, #0x80
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	add r1, r7, #0
	str r0, [r3]
	add r3, r5, #0
	str r2, [r5]
	add r0, r2, #0
	add r2, r5, #0
	add r2, #0x10
	add r3, #0x64
	bl MOD05_021E7F10
	ldr r0, [sp, #0x2c]
	mov r1, #0
	str r0, [sp]
	ldr r0, [r5]
	add r5, #0x10
	add r2, r1, #0
	add r3, r5, #0
	bl MOD05_021D9DC0
	add sp, #0x10
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E8044:
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #0x20
	blo _021E7FD4
	bl ErrorHandling
	mov r0, #0x20
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E8058: .word 0x021F786C

	thumb_func_start MOD05_021E805C
MOD05_021E805C: ; 0x021E805C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r4, _021E80F4 ; =0x021F789C
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r3, sp, #0x14
	mov r2, #4
_021E806A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E806A
	ldr r0, [r4]
	mov r4, #0
	str r0, [r3]
	add r7, sp, #0x14
_021E807A:
	mov r0, #0x8c
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #8]
	add r5, r0, r1
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021E80E4
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _021E80E4
	ldr r0, [sp, #0xc]
	bl MOD05_021F4C9C
	add r6, r0, #0
	ldr r0, [r5]
	add r1, r6, #0
	add r2, sp, #0x10
	bl MOD05_021DB9D4
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021E80B2
	add r1, r5, #0
	add r0, r7, #0
	add r1, #0x74
	bl FUN_0201CAA8
_021E80B2:
	add r0, sp, #0x10
	ldrh r0, [r0]
	cmp r0, #0
	bne _021E80CE
	add r0, r5, #0
	add r1, r5, #0
	add r5, #0x80
	add r0, #0x10
	add r1, #0x68
	add r2, r7, #0
	add r3, r5, #0
	bl FUN_0201B26C
	b _021E80E4
_021E80CE:
	str r6, [sp]
	ldr r0, [r5]
	add r1, r5, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x64]
	add r5, #0x80
	add r1, #0x68
	add r2, r7, #0
	add r3, r5, #0
	bl MOD05_021E7F34
_021E80E4:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x20
	blo _021E807A
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E80F4: .word 0x021F789C

	thumb_func_start MOD05_021E80F8
MOD05_021E80F8: ; 0x021E80F8
	push {r3, lr}
	mov r1, #0x14
	bl FUN_02016998
	add r3, r0, #0
	mov r2, #0x14
	mov r1, #0
_021E8106:
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _021E8106
	pop {r3, pc}

	thumb_func_start MOD05_021E8110
MOD05_021E8110: ; 0x021E8110
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #0x13]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	beq _021E8120
	bl FUN_02019178
_021E8120:
	add r0, r4, #0
	bl FUN_02016A18
	pop {r4, pc}

	thumb_func_start MOD05_021E8128
MOD05_021E8128: ; 0x021E8128
	strb r1, [r0, #0x12]
	strh r2, [r0, #0x10]
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021E8130
MOD05_021E8130: ; 0x021E8130
	ldrb r3, [r0, #0x13]
	mov r2, #0x7f
	bic r3, r2
	mov r2, #0x7f
	and r1, r2
	orr r1, r3
	strb r1, [r0, #0x13]
	bx lr

	thumb_func_start MOD05_021E8140
MOD05_021E8140: ; 0x021E8140
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021E8144
MOD05_021E8144: ; 0x021E8144
	ldrb r0, [r0, #0x12]
	bx lr

	thumb_func_start MOD05_021E8148
MOD05_021E8148: ; 0x021E8148
	ldrb r0, [r0, #0x13]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	bne _021E8154
	mov r0, #1
	bx lr
_021E8154:
	mov r0, #0
	bx lr

	thumb_func_start MOD05_021E8158
MOD05_021E8158: ; 0x021E8158
	push {r4, lr}
	ldr r4, [r0, #0x60]
	ldrb r1, [r4, #0x13]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x19
	cmp r1, #4
	bhi _021E81BA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E8172: ; jump table
	.short _021E81BA - _021E8172 - 2 ; case 0
	.short _021E817C - _021E8172 - 2 ; case 1
	.short _021E818A - _021E8172 - 2 ; case 2
	.short _021E819C - _021E8172 - 2 ; case 3
	.short _021E81AE - _021E8172 - 2 ; case 4
_021E817C:
	bl MOD05_021E81D0
	ldrb r1, [r4, #0x13]
	mov r0, #0x7f
	bic r1, r0
	strb r1, [r4, #0x13]
	pop {r4, pc}
_021E818A:
	bl MOD05_021E82A0
	cmp r0, #1
	bne _021E81BA
	ldrb r1, [r4, #0x13]
	mov r0, #0x7f
	bic r1, r0
	strb r1, [r4, #0x13]
	pop {r4, pc}
_021E819C:
	bl MOD05_021E8260
	cmp r0, #1
	bne _021E81BA
	ldrb r1, [r4, #0x13]
	mov r0, #0x7f
	bic r1, r0
	strb r1, [r4, #0x13]
	pop {r4, pc}
_021E81AE:
	bl MOD05_021E820C
	ldrb r1, [r4, #0x13]
	mov r0, #0x7f
	bic r1, r0
	strb r1, [r4, #0x13]
_021E81BA:
	pop {r4, pc}

	thumb_func_start MOD05_021E81BC
MOD05_021E81BC: ; 0x021E81BC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x60]
	bl MOD05_021E8130
	add r0, r4, #0
	bl MOD05_021E8158
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E81D0
MOD05_021E81D0: ; 0x021E81D0
	push {r4, lr}
	mov r1, #3
	add r4, r0, #0
	add r3, r1, #0
	ldr r0, [r4, #8]
	add r2, r1, #0
	sub r3, #0x33
	bl FUN_020179E0
	ldr r1, [r4, #0x60]
	ldrb r0, [r1, #0x13]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _021E8200
	ldrb r2, [r1, #0x12]
	ldr r0, [r4, #8]
	mov r3, #3
	bl FUN_020546E0
	ldr r2, [r4, #0x60]
	mov r0, #0x80
	ldrb r1, [r2, #0x13]
	orr r0, r1
	strb r0, [r2, #0x13]
_021E8200:
	ldr r0, [r4, #0x60]
	ldrb r1, [r0, #0x12]
	ldrh r2, [r0, #0x10]
	bl FUN_02054744
	pop {r4, pc}

	thumb_func_start MOD05_021E820C
MOD05_021E820C: ; 0x021E820C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #0x60]
	ldrb r1, [r0, #0x13]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	beq _021E825A
	bl FUN_02019178
	mov r0, #0x12
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	mov r2, #0
	ldr r0, [r4, #8]
	mov r1, #3
	add r3, r2, #0
	bl FUN_02018540
	ldr r0, [r4, #8]
	mov r1, #3
	bl FUN_02017CD0
	mov r1, #3
	ldr r0, [r4, #8]
	add r2, r1, #0
	mov r3, #0
	bl FUN_020179E0
	ldr r2, [r4, #0x60]
	mov r0, #0x80
	ldrb r1, [r2, #0x13]
	bic r1, r0
	strb r1, [r2, #0x13]
_021E825A:
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E8260
MOD05_021E8260: ; 0x021E8260
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	mov r1, #3
	bl FUN_02017B54
	cmp r0, #0
	bne _021E8274
	mov r0, #1
	pop {r4, pc}
_021E8274:
	mov r1, #0x2f
	mvn r1, r1
	cmp r0, r1
	ble _021E8280
	cmp r0, #0
	blt _021E828E
_021E8280:
	mov r1, #3
	add r3, r1, #0
	ldr r0, [r4, #8]
	add r2, r1, #0
	sub r3, #0x33
	bl FUN_020179E0
_021E828E:
	ldr r0, [r4, #8]
	mov r1, #3
	mov r2, #4
	mov r3, #0x10
	bl FUN_020179E0
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E82A0
MOD05_021E82A0: ; 0x021E82A0
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #8]
	mov r1, #3
	bl FUN_02017B54
	mov r1, #0x2f
	mvn r1, r1
	cmp r0, r1
	bne _021E82EC
	mov r0, #0x12
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	mov r2, #0
	ldr r0, [r4, #8]
	mov r1, #3
	add r3, r2, #0
	bl FUN_02018540
	ldr r0, [r4, #8]
	mov r1, #3
	bl FUN_02017CD0
	mov r1, #3
	ldr r0, [r4, #8]
	add r2, r1, #0
	mov r3, #0
	bl FUN_020179E0
	add sp, #0x10
	mov r0, #1
	pop {r4, pc}
_021E82EC:
	ble _021E82F2
	cmp r0, #0
	blt _021E82FE
_021E82F2:
	mov r1, #3
	ldr r0, [r4, #8]
	add r2, r1, #0
	mov r3, #0
	bl FUN_020179E0
_021E82FE:
	ldr r0, [r4, #8]
	mov r1, #3
	mov r2, #5
	mov r3, #0x10
	bl FUN_020179E0
	mov r0, #0
	add sp, #0x10
	pop {r4, pc}

	thumb_func_start MOD05_021E8310
MOD05_021E8310: ; 0x021E8310
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [r1, #0xc]
	add r5, r0, #0
	add r0, r4, #0
	bl FUN_02034E30
	bl FUN_02034DC0
	add r6, r0, #0
	add r0, r4, #0
	bl FUN_02024DA0
	add r7, r0, #0
	ldr r0, [r6]
	bl FUN_02034824
	str r0, [r5, #4]
	add r0, r7, #0
	bl FUN_02024D64
	cmp r0, #0
	beq _021E8344
	add r0, r7, #0
	bl FUN_02024440
	b _021E8346
_021E8344:
	mov r0, #0
_021E8346:
	str r0, [r5]
	add r0, r4, #0
	bl FUN_020238F4
	str r0, [r5, #8]
	add r0, r4, #0
	bl FUN_02023918
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E835C
MOD05_021E835C: ; 0x021E835C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r2, [r4, #4]
	mov r1, #0
	add r5, r0, #0
	bl FUN_0200AFF4
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl FUN_0200ABC0
	ldr r0, [r4, #8]
	bl FUN_020239F4
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	add r0, r5, #0
	mov r1, #2
	bl FUN_0200AD38
	ldr r2, [r4]
	cmp r2, #0x64
	blt _021E839A
	mov r3, #3
	mov r0, #0
	b _021E83A8
_021E839A:
	cmp r2, #0xa
	blt _021E83A4
	mov r3, #3
	mov r0, #1
	b _021E83A8
_021E83A4:
	mov r3, #2
	mov r0, #1
_021E83A8:
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #3
	bl FUN_0200AD38
	ldr r0, [r4, #0xc]
	bl FUN_02029EBC
	add r2, r0, #0
	cmp r2, #0x64
	blt _021E83C8
	mov r3, #3
	mov r0, #0
	b _021E83D6
_021E83C8:
	cmp r2, #0xa
	blt _021E83D2
	mov r3, #3
	mov r0, #1
	b _021E83D6
_021E83D2:
	mov r3, #2
	mov r0, #1
_021E83D6:
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #4
	bl FUN_0200AD38
	ldr r0, [r4, #0xc]
	bl FUN_02029EC0
	mov r3, #2
	add r2, r0, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #5
	bl FUN_0200AD38
	add sp, #8
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021E8400
MOD05_021E8400: ; 0x021E8400
	ldr r0, [r0]
	cmp r0, #0
	beq _021E840A
	mov r0, #0xa
	bx lr
_021E840A:
	mov r0, #8
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021E8410
MOD05_021E8410: ; 0x021E8410
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0
	mov r1, #1
	bl FUN_02002E4C
	add r4, r0, #0
	mov r0, #0
	mov r1, #3
	bl FUN_02002E4C
	add r0, r4, r0
	str r0, [sp, #0x14]
	mov r4, #0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r3, [r5, #4]
	add r2, r4, #0
	bl FUN_0200A9C4
	add r1, r4, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r5, #0x10]
	add r2, r6, #0
	add r3, r1, #0
	bl FUN_0201BD84
	add r0, r6, #0
	bl FUN_02021A20
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _021E84EC ; =0x021F78D4
	ldr r7, _021E84F0 ; =0x021F78C4
	str r0, [sp, #0xc]
_021E8460:
	ldr r0, [sp, #0xc]
	ldr r1, [r0]
	cmp r1, #3
	bne _021E846E
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _021E84D6
_021E846E:
	ldr r0, [sp, #0x14]
	add r4, r4, r0
	ldr r0, [r5, #0x18]
	bl FUN_0200A914
	add r6, r0, #0
	mov r1, #0
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x10]
	add r2, r6, #0
	add r3, r1, #0
	bl FUN_0201BD84
	add r0, r6, #0
	bl FUN_02021A20
	sub r2, r7, #4
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r2, [r2]
	ldr r3, [r5, #4]
	bl FUN_0200A9C4
	add r6, r0, #0
	mov r0, #0
	mov r1, #2
	bl FUN_02002E4C
	add r2, r0, #0
	mov r0, #0
	add r1, r6, #0
	bl FUN_02002E14
	mov r1, #0x68
	sub r3, r1, r0
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x10]
	mov r1, #0
	add r2, r6, #0
	bl FUN_0201BD84
	add r0, r6, #0
	bl FUN_02021A20
_021E84D6:
	ldr r0, [sp, #0xc]
	add r7, r7, #4
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #5
	blo _021E8460
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E84EC: .word 0x021F78D4
_021E84F0: .word 0x021F78C4

	thumb_func_start MOD05_021E84F4
MOD05_021E84F4: ; 0x021E84F4
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #4]
	mov r1, #0x10
	bl FUN_02016998
	str r0, [r4, #0x10]
	mov r3, #1
	str r3, [sp]
	ldr r0, [r4, #0x2c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r4, #0x30]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _021E8564 ; =0x0000027F
	str r0, [sp, #0x10]
	ldrb r2, [r4, #8]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	bl FUN_02019064
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r2, _021E8568 ; =0x000003D9
	str r0, [sp, #4]
	ldrb r1, [r4, #8]
	ldr r0, [r4, #0xc]
	mov r3, #0xb
	bl FUN_0200CB00
	mov r0, #0
	mov r1, #6
	bl FUN_02002E4C
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	bl FUN_02019620
	add r0, r4, #0
	bl MOD05_021E8410
	ldr r0, [r4, #0x10]
	ldr r2, _021E8568 ; =0x000003D9
	mov r1, #0
	mov r3, #0xb
	bl FUN_0200CCA4
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
_021E8564: .word 0x0000027F
_021E8568: .word 0x000003D9

	thumb_func_start MOD05_021E856C
MOD05_021E856C: ; 0x021E856C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl FUN_0200CCF8
	ldr r0, [r4, #0x10]
	bl FUN_02019178
	ldr r0, [r4, #0x10]
	bl FUN_02016A18
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E8588
MOD05_021E8588: ; 0x021E8588
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x34
	add r7, r2, #0
	bl FUN_02016998
	add r4, r0, #0
	str r6, [r4]
	str r5, [r4, #4]
	strb r7, [r4, #8]
	ldr r0, [r6, #8]
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl FUN_0200AA80
	str r0, [r4, #0x14]
	ldr r2, _021E85E0 ; =0x000001E3
	mov r0, #1
	mov r1, #0x1a
	add r3, r5, #0
	bl FUN_0200A86C
	str r0, [r4, #0x18]
	add r0, r4, #0
	ldr r1, [r4]
	add r0, #0x1c
	bl MOD05_021E8310
	add r1, r4, #0
	ldr r0, [r4, #0x14]
	add r1, #0x1c
	bl MOD05_021E835C
	mov r0, #0xd
	str r0, [r4, #0x2c]
	add r0, r4, #0
	add r0, #0x1c
	bl MOD05_021E8400
	str r0, [r4, #0x30]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E85E0: .word 0x000001E3

	thumb_func_start MOD05_021E85E4
MOD05_021E85E4: ; 0x021E85E4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl FUN_0200A8B8
	ldr r0, [r4, #0x14]
	bl FUN_0200AB18
	add r0, r4, #0
	bl FUN_02016A18
	pop {r4, pc}

	thumb_func_start MOD05_021E85FC
MOD05_021E85FC: ; 0x021E85FC
	push {r4, lr}
	add r4, r0, #0
	bl FUN_02034E48
	add r0, r4, #0
	mov r1, #4
	mov r2, #0
	bl MOD05_021EFA9C
	ldr r0, [r4, #0x38]
	bl FUN_02055320
	ldr r1, [r4, #0x1c]
	str r0, [r1, #8]
	ldr r0, [r4, #0x38]
	bl FUN_0205532C
	ldr r1, [r4, #0x1c]
	str r0, [r1, #0xc]
	mov r1, #0
	ldr r0, [r4, #0x1c]
	mvn r1, r1
	str r1, [r0, #4]
	ldr r0, [r4, #0x38]
	bl FUN_020552F8
	ldr r1, [r4, #0x1c]
	str r0, [r1, #0x10]
	ldr r0, [r4, #0xc]
	bl FUN_02022720
	cmp r0, #2
	bne _021E8642
	mov r0, #1
	pop {r4, pc}
_021E8642:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E8648
MOD05_021E8648: ; 0x021E8648
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021E8690 ; =MOD05_021E8728
	ldr r3, [r5, #0x28]
	mov r1, #0x38
	mov r2, #5
	bl FUN_020061E8
	add r6, r0, #0
	bl FUN_0201B6C8
	add r4, r0, #0
	add r2, r4, #4
	mov r3, #5
_021E8664:
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r3, r3, #1
	bne _021E8664
	ldr r0, [r5]
	str r0, [r2]
	str r6, [r4, #0x34]
	mov r0, #0
	str r0, [r4, #0x30]
	bl GX_GetBankForLCDC
	str r0, [r4]
	add r0, r4, #4
	bl MOD05_021E87C8
	ldr r0, _021E8694 ; =MOD05_021E8768
	add r1, r4, #0
	mov r2, #0
	bl FUN_0200CA98
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E8690: .word MOD05_021E8728
_021E8694: .word MOD05_021E8768

	thumb_func_start MOD05_021E8698
MOD05_021E8698: ; 0x021E8698
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	bl GX_SetGraphicsMode
	ldr r0, [r4]
	ldr r0, [r0]
	bl GX_SetBankForLCDC
	ldr r0, [r4]
	ldr r0, [r0, #4]
	cmp r0, #0xa
	bgt _021E86C8
	bge _021E86EC
	cmp r0, #6
	bgt _021E8708
	cmp r0, #2
	blt _021E8708
	beq _021E86CE
	cmp r0, #6
	beq _021E86DE
	b _021E8708
_021E86C8:
	cmp r0, #0xe
	beq _021E86FA
	b _021E8708
_021E86CE:
	mov r1, #0x1a
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021E870E
_021E86DE:
	mov r2, #2
	ldr r1, _021E871C ; =0x06820000
	mov r0, #0
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021E870E
_021E86EC:
	mov r2, #2
	ldr r1, _021E8720 ; =0x06840000
	mov r0, #0
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021E870E
_021E86FA:
	mov r2, #2
	ldr r1, _021E8724 ; =0x06860000
	mov r0, #0
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021E870E
_021E8708:
	mov r0, #0
	bl GX_SetBankForLCDC
_021E870E:
	ldr r0, [r4]
	ldr r0, [r0, #0x34]
	bl FUN_0200621C
	mov r0, #0
	str r0, [r4]
	pop {r4, pc}
	.balign 4, 0
_021E871C: .word 0x06820000
_021E8720: .word 0x06840000
_021E8724: .word 0x06860000

	thumb_func_start MOD05_021E8728
MOD05_021E8728: ; 0x021E8728
	push {r4, r5, r6, r7}
	ldr r0, [r1, #0x30]
	cmp r0, #0
	beq _021E8760
	ldr r6, [r1, #0x20]
	ldr r5, [r1, #0x10]
	ldr r4, [r1, #0x1c]
	ldr r3, [r1, #0x18]
	ldr r2, [r1, #0x14]
	ldr r0, [r1, #0x24]
	ldr r1, [r1, #0x28]
	lsl r5, r5, #0x14
	lsl r7, r1, #8
	lsl r1, r3, #0x18
	lsl r3, r2, #0x1d
	mov r2, #2
	lsl r2, r2, #0x1e
	orr r3, r2
	lsl r2, r4, #0x19
	orr r2, r3
	orr r1, r2
	lsl r6, r6, #0x10
	orr r1, r5
	orr r1, r6
	orr r1, r7
	orr r1, r0
	ldr r0, _021E8764 ; =0x04000064
	str r1, [r0]
_021E8760:
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0
_021E8764: .word 0x04000064

	thumb_func_start MOD05_021E8768
MOD05_021E8768: ; 0x021E8768
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0xa
	bgt _021E8786
	bge _021E879C
	cmp r0, #6
	bgt _021E87AC
	cmp r0, #2
	blt _021E87AC
	beq _021E878C
	cmp r0, #6
	beq _021E8794
	b _021E87AC
_021E8786:
	cmp r0, #0xe
	beq _021E87A4
	b _021E87AC
_021E878C:
	mov r0, #1
	bl GX_SetBankForLCDC
	b _021E87B2
_021E8794:
	mov r0, #2
	bl GX_SetBankForLCDC
	b _021E87B2
_021E879C:
	mov r0, #4
	bl GX_SetBankForLCDC
	b _021E87B2
_021E87A4:
	mov r0, #8
	bl GX_SetBankForLCDC
	b _021E87B2
_021E87AC:
	mov r0, #0
	bl GX_SetBankForLCDC
_021E87B2:
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	bl GX_SetGraphicsMode
	mov r0, #1
	str r0, [r4, #0x30]
	add r0, r5, #0
	bl FUN_0200CAB4
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021E87C8
MOD05_021E87C8: ; 0x021E87C8
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0xa
	bgt _021E87E4
	bge _021E8808
	cmp r0, #6
	bgt _021E8822
	cmp r0, #2
	blt _021E8822
	beq _021E87EA
	cmp r0, #6
	beq _021E87FA
	b _021E8822
_021E87E4:
	cmp r0, #0xe
	beq _021E8816
	b _021E8822
_021E87EA:
	mov r1, #0x1a
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021E8822
_021E87FA:
	mov r2, #2
	ldr r1, _021E8850 ; =0x06820000
	mov r0, #0
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021E8822
_021E8808:
	mov r2, #2
	ldr r1, _021E8854 ; =0x06840000
	mov r0, #0
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
	b _021E8822
_021E8816:
	mov r2, #2
	ldr r1, _021E8858 ; =0x06860000
	mov r0, #0
	lsl r2, r2, #0x10
	bl MIi_CpuClearFast
_021E8822:
	ldr r5, [r4, #0x10]
	ldr r1, [r4, #0x1c]
	ldr r3, [r4, #0x18]
	ldr r6, [r4, #0x14]
	ldr r0, [r4, #0xc]
	mov r4, #2
	lsl r2, r1, #0x10
	lsl r1, r0, #0x14
	lsl r5, r5, #0x1d
	lsl r4, r4, #0x1e
	orr r4, r5
	lsl r3, r3, #0x19
	lsl r0, r6, #0x18
	orr r3, r4
	orr r0, r3
	orr r0, r1
	add r1, r2, #0
	orr r1, r0
	mov r0, #0x10
	orr r1, r0
	ldr r0, _021E885C ; =0x04000064
	str r1, [r0]
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E8850: .word 0x06820000
_021E8854: .word 0x06840000
_021E8858: .word 0x06860000
_021E885C: .word 0x04000064

	thumb_func_start MOD05_021E8860
MOD05_021E8860: ; 0x021E8860
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #2
	mov r1, #0
	bl FUN_0201E6E4
	mov r0, #4
	mov r1, #0
	bl FUN_0201E6E4
	mov r0, #8
	mov r1, #0
	bl FUN_0201E6E4
	bl GX_ResetBankForBG
	mov r0, #4
	add r1, r0, #0
	bl FUN_02016998
	add r7, r0, #0
	mov r0, #0
	add r1, r7, #0
	mov r2, #4
	bl MIi_CpuClear32
	ldr r6, _021E88BC ; =0x021F78E4
	add r3, sp, #0
	mov r2, #5
_021E889E:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E889E
	ldr r0, [r6]
	str r0, [r3]
	add r0, sp, #0
	str r5, [sp, #0x20]
	str r4, [sp, #0x24]
	bl MOD05_021E8648
	str r0, [r7]
	add r0, r7, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E88BC: .word 0x021F78E4

	thumb_func_start MOD05_021E88C0
MOD05_021E88C0: ; 0x021E88C0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	ldr r0, [r4]
	mov r2, #0
	add r3, r1, #0
	bl MOD05_021E8698
	mov r0, #4
	bl GX_SetBankForBG
	mov r0, #0xe
	mov r1, #1
	bl FUN_0201E6E4
	ldr r1, [r4]
	mov r0, #4
	bl FUN_02016A8C
	pop {r4, pc}

	thumb_func_start MOD05_021E88E8
MOD05_021E88E8: ; 0x021E88E8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	ldr r5, [r4, #0xc]
	cmp r0, #5
	bls _021E88FA
	b _021E8A56
_021E88FA:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E8906: ; jump table
	.short _021E8912 - _021E8906 - 2 ; case 0
	.short _021E8936 - _021E8906 - 2 ; case 1
	.short _021E8952 - _021E8906 - 2 ; case 2
	.short _021E899C - _021E8906 - 2 ; case 3
	.short _021E89F4 - _021E8906 - 2 ; case 4
	.short _021E8A1C - _021E8906 - 2 ; case 5
_021E8912:
	mov r0, #4
	mov r1, #0x20
	bl FUN_02016998
	str r0, [r4, #0xc]
	mov r1, #0
	mov r2, #0x20
	bl Call_FillMemWithValue
	ldr r5, [r4, #0xc]
	bl MOD05_021E3768
	str r0, [r5, #0x1c]
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021E8936:
	mov r1, #0x10
	mov r0, #2
	add r2, r1, #0
	str r0, [sp]
	mov r0, #1
	sub r2, #0x20
	add r3, r4, #4
	bl MOD05_021E3474
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021E8952:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021E8A56
	mov r1, #0
	str r1, [r4, #4]
	ldr r0, [r4]
	mov r2, #2
	add r0, r0, #1
	str r0, [r4]
	ldr r0, _021E8A5C ; =0xFFFFD000
	str r1, [sp]
	str r0, [sp, #4]
	lsl r0, r0, #2
	str r0, [sp, #8]
	ldr r1, [r5, #0x1c]
	add r0, r4, #0
	mov r3, #7
	bl MOD05_021E37CC
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x20]
	str r0, [r5]
	bl FUN_0201F010
	mov r2, #0x32
	add r1, r0, #0
	mov r0, #6
	lsl r2, r2, #0xc
	mov r3, #0x1e
	str r0, [sp]
	add r0, r5, #4
	add r2, r1, r2
	lsl r3, r3, #0xc
	bl MOD05_021E3644
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021E899C:
	add r0, r5, #4
	bl MOD05_021E36A4
	add r6, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [r5]
	bl FUN_0201EFE0
	cmp r6, #1
	bne _021E8A56
	ldr r0, [r4]
	mov r2, #2
	add r0, r0, #1
	str r0, [r4]
	ldr r0, _021E8A5C ; =0xFFFFD000
	mov r3, #6
	str r0, [sp]
	mov r0, #0xff
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0x1e
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldr r1, [r5, #0x1c]
	add r0, r4, #0
	bl MOD05_021E3888
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x20]
	str r0, [r5]
	bl FUN_0201F010
	mov r2, #0x32
	add r1, r0, #0
	mov r0, #6
	lsl r2, r2, #0xc
	str r0, [sp]
	ldr r3, _021E8A60 ; =0xFFF01000
	add r0, r5, #4
	sub r2, r1, r2
	bl MOD05_021E3644
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021E89F4:
	add r0, r5, #4
	bl MOD05_021E36A4
	add r6, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [r5]
	bl FUN_0201EFE0
	cmp r6, #1
	bne _021E8A56
	add r0, r4, #0
	bl MOD05_021E35AC
	cmp r0, #1
	bne _021E8A56
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021E8A1C:
	mov r0, #0
	add r1, r0, #0
	bl FUN_0200E3A0
	mov r0, #1
	mov r1, #0
	bl FUN_0200E3A0
	ldr r0, _021E8A64 ; =0x04000010
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021E8A42
	mov r0, #1
	str r0, [r1]
_021E8A42:
	ldr r0, [r5, #0x1c]
	bl MOD05_021E37A4
	ldr r1, [r4, #0xc]
	mov r0, #4
	bl FUN_02016A8C
	add r0, r6, #0
	bl FUN_0200621C
_021E8A56:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021E8A5C: .word 0xFFFFD000
_021E8A60: .word 0xFFF01000
_021E8A64: .word 0x04000010

	thumb_func_start MOD05_021E8A68
MOD05_021E8A68: ; 0x021E8A68
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	ldr r5, [r4, #0xc]
	cmp r0, #5
	bls _021E8A7A
	b _021E8BD6
_021E8A7A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E8A86: ; jump table
	.short _021E8A92 - _021E8A86 - 2 ; case 0
	.short _021E8AB6 - _021E8A86 - 2 ; case 1
	.short _021E8AD2 - _021E8A86 - 2 ; case 2
	.short _021E8B1C - _021E8A86 - 2 ; case 3
	.short _021E8B74 - _021E8A86 - 2 ; case 4
	.short _021E8B9C - _021E8A86 - 2 ; case 5
_021E8A92:
	mov r0, #4
	mov r1, #0x20
	bl FUN_02016998
	str r0, [r4, #0xc]
	mov r1, #0
	mov r2, #0x20
	bl Call_FillMemWithValue
	ldr r5, [r4, #0xc]
	bl MOD05_021E3768
	str r0, [r5, #0x1c]
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021E8AB6:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	add r1, r0, #0
	sub r1, #0x11
	add r2, r1, #0
	add r3, r4, #4
	bl MOD05_021E3474
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021E8AD2:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021E8BD6
	mov r1, #0
	str r1, [r4, #4]
	ldr r0, [r4]
	mov r2, #5
	add r0, r0, #1
	str r0, [r4]
	ldr r0, _021E8BDC ; =0xFFFFE000
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, _021E8BE0 ; =0xFFFF4000
	mov r3, #7
	str r0, [sp, #8]
	ldr r1, [r5, #0x1c]
	add r0, r4, #0
	bl MOD05_021E37CC
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x20]
	str r0, [r5]
	bl FUN_0201F010
	mov r2, #0x32
	add r1, r0, #0
	mov r0, #6
	lsl r2, r2, #0xc
	mov r3, #0x1e
	str r0, [sp]
	add r0, r5, #4
	add r2, r1, r2
	lsl r3, r3, #0xc
	bl MOD05_021E3644
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021E8B1C:
	add r0, r5, #4
	bl MOD05_021E36A4
	add r6, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [r5]
	bl FUN_0201EFE0
	cmp r6, #1
	bne _021E8BD6
	ldr r0, [r4]
	mov r2, #5
	add r0, r0, #1
	str r0, [r4]
	ldr r0, _021E8BDC ; =0xFFFFE000
	mov r3, #6
	str r0, [sp]
	mov r0, #0xff
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0x1e
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldr r1, [r5, #0x1c]
	add r0, r4, #0
	bl MOD05_021E3888
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x20]
	str r0, [r5]
	bl FUN_0201F010
	mov r2, #0x1e
	add r1, r0, #0
	mov r0, #6
	lsl r2, r2, #0xc
	str r0, [sp]
	ldr r3, _021E8BE4 ; =0xFFF9C000
	add r0, r5, #4
	sub r2, r1, r2
	bl MOD05_021E3644
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021E8B74:
	add r0, r5, #4
	bl MOD05_021E36A4
	add r6, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [r5]
	bl FUN_0201EFE0
	cmp r6, #1
	bne _021E8BD6
	add r0, r4, #0
	bl MOD05_021E35AC
	cmp r0, #1
	bne _021E8BD6
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021E8B9C:
	mov r0, #0
	add r1, r0, #0
	bl FUN_0200E3A0
	mov r0, #1
	mov r1, #0
	bl FUN_0200E3A0
	ldr r0, _021E8BE8 ; =0x04000010
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021E8BC2
	mov r0, #1
	str r0, [r1]
_021E8BC2:
	ldr r0, [r5, #0x1c]
	bl MOD05_021E37A4
	ldr r1, [r4, #0xc]
	mov r0, #4
	bl FUN_02016A8C
	add r0, r6, #0
	bl FUN_0200621C
_021E8BD6:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021E8BDC: .word 0xFFFFE000
_021E8BE0: .word 0xFFFF4000
_021E8BE4: .word 0xFFF9C000
_021E8BE8: .word 0x04000010

	thumb_func_start MOD05_021E8BEC
MOD05_021E8BEC: ; 0x021E8BEC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	ldr r5, [r4, #0xc]
	cmp r0, #6
	bls _021E8BFE
	b _021E8D16
_021E8BFE:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E8C0A: ; jump table
	.short _021E8C18 - _021E8C0A - 2 ; case 0
	.short _021E8C4A - _021E8C0A - 2 ; case 1
	.short _021E8C6A - _021E8C0A - 2 ; case 2
	.short _021E8CA0 - _021E8C0A - 2 ; case 3
	.short _021E8CB2 - _021E8C0A - 2 ; case 4
	.short _021E8CD4 - _021E8C0A - 2 ; case 5
	.short _021E8CE6 - _021E8C0A - 2 ; case 6
_021E8C18:
	mov r0, #4
	mov r1, #0x10
	bl FUN_02016998
	str r0, [r4, #0xc]
	mov r2, #0x10
	mov r1, #0
_021E8C26:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _021E8C26
	ldr r0, [r4, #0xc]
	mov r1, #4
	bl MOD05_021E8E8C
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl MOD05_021F4608
	ldr r0, [r4]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021E8C4A:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	add r1, r0, #0
	sub r1, #0x11
	add r2, r1, #0
	add r3, r4, #4
	bl MOD05_021E3474
	mov r0, #0xa
	str r0, [r5, #0xc]
	ldr r0, [r4]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021E8C6A:
	ldr r0, [r5, #0xc]
	sub r0, r0, #1
	str r0, [r5, #0xc]
	bpl _021E8D16
	ldr r0, [r4]
	mov r3, #0x32
	add r0, r0, #1
	str r0, [r4]
	mov r0, #0xc
	str r0, [r5, #0xc]
	lsl r0, r0, #0xc
	str r0, [sp]
	lsl r3, r3, #4
	str r3, [sp, #4]
	ldr r0, _021E8D1C ; =0x04000010
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r2, #0xbf
	sub r3, #0x76
	bl MOD05_021E8EC0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
_021E8CA0:
	ldr r0, [r5, #0xc]
	sub r0, r0, #1
	str r0, [r5, #0xc]
	bpl _021E8D16
	ldr r0, [r4]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021E8CB2:
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #3
	mov r1, #0x1e
	add r3, r2, #0
	bl FUN_0200E1D0
	ldr r0, [r4]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021E8CD4:
	bl FUN_0200E308
	cmp r0, #0
	beq _021E8D16
	ldr r0, [r4]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021E8CE6:
	add r0, r5, #0
	bl MOD05_021E8EA8
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl MOD05_021F45E8
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021E8D00
	mov r0, #1
	str r0, [r1]
_021E8D00:
	ldr r1, [r4, #0xc]
	mov r0, #4
	bl FUN_02016A8C
	add r0, r6, #0
	bl FUN_0200621C
	mov r0, #1
	mov r1, #0
	bl FUN_0200E3A0
_021E8D16:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_021E8D1C: .word 0x04000010

	thumb_func_start MOD05_021E8D20
MOD05_021E8D20: ; 0x021E8D20
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	ldr r5, [r4, #0xc]
	cmp r0, #6
	bls _021E8D32
	b _021E8E4C
_021E8D32:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E8D3E: ; jump table
	.short _021E8D4C - _021E8D3E - 2 ; case 0
	.short _021E8D7E - _021E8D3E - 2 ; case 1
	.short _021E8D9E - _021E8D3E - 2 ; case 2
	.short _021E8DD6 - _021E8D3E - 2 ; case 3
	.short _021E8DE8 - _021E8D3E - 2 ; case 4
	.short _021E8E0A - _021E8D3E - 2 ; case 5
	.short _021E8E1C - _021E8D3E - 2 ; case 6
_021E8D4C:
	mov r0, #4
	mov r1, #0x10
	bl FUN_02016998
	str r0, [r4, #0xc]
	mov r2, #0x10
	mov r1, #0
_021E8D5A:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _021E8D5A
	ldr r0, [r4, #0xc]
	mov r1, #4
	bl MOD05_021E8E8C
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl MOD05_021F4608
	ldr r0, [r4]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021E8D7E:
	mov r1, #0x10
	mov r0, #2
	add r2, r1, #0
	str r0, [sp]
	mov r0, #1
	sub r2, #0x20
	add r3, r4, #4
	bl MOD05_021E3474
	mov r0, #0xa
	str r0, [r5, #0xc]
	ldr r0, [r4]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021E8D9E:
	ldr r0, [r5, #0xc]
	sub r0, r0, #1
	str r0, [r5, #0xc]
	bpl _021E8E4C
	ldr r0, [r4]
	mov r3, #0x32
	add r0, r0, #1
	str r0, [r4]
	mov r0, #0xc
	str r0, [r5, #0xc]
	mov r0, #0xf
	lsl r0, r0, #0xc
	str r0, [sp]
	lsl r3, r3, #4
	str r3, [sp, #4]
	ldr r0, _021E8E50 ; =0x04000010
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	add r0, r5, #0
	mov r2, #0xbf
	add r3, #0xdf
	bl MOD05_021E8EC0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
_021E8DD6:
	ldr r0, [r5, #0xc]
	sub r0, r0, #1
	str r0, [r5, #0xc]
	bpl _021E8E4C
	ldr r0, [r4]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021E8DE8:
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #3
	mov r1, #0x1e
	add r3, r2, #0
	bl FUN_0200E1D0
	ldr r0, [r4]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021E8E0A:
	bl FUN_0200E308
	cmp r0, #0
	beq _021E8E4C
	ldr r0, [r4]
	add sp, #0x14
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021E8E1C:
	add r0, r5, #0
	bl MOD05_021E8EA8
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl MOD05_021F45E8
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021E8E36
	mov r0, #1
	str r0, [r1]
_021E8E36:
	ldr r1, [r4, #0xc]
	mov r0, #4
	bl FUN_02016A8C
	add r0, r6, #0
	bl FUN_0200621C
	mov r0, #1
	mov r1, #0
	bl FUN_0200E3A0
_021E8E4C:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021E8E50: .word 0x04000010

	thumb_func_start MOD05_021E8E54
MOD05_021E8E54: ; 0x021E8E54
	ldr r3, _021E8E60 ; =0x0200CA61
	mov r2, #1
	add r1, r0, #0
	ldr r0, _021E8E64 ; =MOD05_021E8E68
	lsl r2, r2, #0xa
	bx r3
	.balign 4, 0
_021E8E60: .word 0x0200CA61
_021E8E64: .word MOD05_021E8E68

	thumb_func_start MOD05_021E8E68
MOD05_021E8E68: ; 0x021E8E68
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #8]
	cmp r0, #2
	blo _021E8E7C
	ldr r0, [r4]
	bl FUN_02012B30
	mov r0, #0
	str r0, [r4, #8]
_021E8E7C:
	ldr r0, [r4]
	bl FUN_02012B68
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E8E8C
MOD05_021E8E8C: ; 0x021E8E8C
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl FUN_02012A00
	str r0, [r4]
	mov r0, #0
	str r0, [r4, #8]
	add r0, r4, #0
	bl MOD05_021E8E54
	str r0, [r4, #4]
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E8EA8
MOD05_021E8EA8: ; 0x021E8EA8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl FUN_0200CAB4
	ldr r0, [r4]
	bl FUN_02012AC4
	ldr r0, [r4]
	bl FUN_02012B00
	pop {r4, pc}

	thumb_func_start MOD05_021E8EC0
MOD05_021E8EC0: ; 0x021E8EC0
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x20]
	add r5, sp, #0x10
	str r4, [sp]
	mov r4, #0x14
	ldrsh r4, [r5, r4]
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x30]
	str r4, [sp, #0x10]
	ldr r0, [r0]
	bl FUN_02012A30
	add sp, #0x14
	pop {r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E8EE8
MOD05_021E8EE8: ; 0x021E8EE8
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, [r0]
	add r7, r1, #0
	bl FUN_02012B20
	add r5, r0, #0
	mov r6, #0
_021E8EF6:
	ldr r0, [r5]
	add r1, r7, #0
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	add r0, r6, #0
	bl _u32_div_f
	mov r1, #1
	tst r0, r1
	bne _021E8F0E
	lsl r0, r4, #0x10
	b _021E8F12
_021E8F0E:
	neg r0, r4
	lsl r0, r0, #0x10
_021E8F12:
	lsr r0, r0, #0x10
	str r0, [r5]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #0xc0
	blt _021E8EF6
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021E8F20
MOD05_021E8F20: ; 0x021E8F20
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	ldr r5, [r4, #0xc]
	cmp r0, #5
	bhi _021E9026
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E8F3C: ; jump table
	.short _021E8F48 - _021E8F3C - 2 ; case 0
	.short _021E8F68 - _021E8F3C - 2 ; case 1
	.short _021E8F84 - _021E8F3C - 2 ; case 2
	.short _021E8F92 - _021E8F3C - 2 ; case 3
	.short _021E8FDC - _021E8F3C - 2 ; case 4
	.short _021E8FFC - _021E8F3C - 2 ; case 5
_021E8F48:
	mov r0, #4
	mov r1, #0x1c
	bl FUN_02016998
	str r0, [r4, #0xc]
	mov r2, #0x1c
	mov r1, #0
_021E8F56:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _021E8F56
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021E8F68:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	add r1, r0, #0
	sub r1, #0x11
	add r2, r1, #0
	add r3, r4, #4
	bl MOD05_021E3474
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021E8F84:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021E9026
	add r0, r0, #1
	add sp, #0xc
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021E8F92:
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl MOD05_021F4608
	mov r0, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r1, #0x10
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl FUN_0200E1D0
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x20]
	str r0, [r5]
	bl FUN_0201F010
	mov r2, #0x19
	add r1, r0, #0
	mov r0, #0xc
	lsl r2, r2, #0x10
	str r0, [sp]
	ldr r3, _021E902C ; =0xFFFFE000
	add r0, r5, #4
	sub r2, r1, r2
	bl MOD05_021E3644
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021E8FDC:
	add r0, r5, #4
	bl MOD05_021E36A4
	ldr r0, [r5, #4]
	ldr r1, [r5]
	bl FUN_0201EFE0
	bl FUN_0200E308
	cmp r0, #0
	beq _021E9026
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021E8FFC:
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl MOD05_021F45E8
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021E9010
	mov r0, #1
	str r0, [r1]
_021E9010:
	ldr r1, [r4, #0xc]
	mov r0, #4
	bl FUN_02016A8C
	add r0, r6, #0
	bl FUN_0200621C
	mov r0, #1
	mov r1, #0
	bl FUN_0200E3A0
_021E9026:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021E902C: .word 0xFFFFE000

	thumb_func_start MOD05_021E9030
MOD05_021E9030: ; 0x021E9030
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	ldr r5, [r4, #0xc]
	cmp r0, #5
	bhi _021E9136
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E904C: ; jump table
	.short _021E9058 - _021E904C - 2 ; case 0
	.short _021E9078 - _021E904C - 2 ; case 1
	.short _021E9094 - _021E904C - 2 ; case 2
	.short _021E90A2 - _021E904C - 2 ; case 3
	.short _021E90EC - _021E904C - 2 ; case 4
	.short _021E910C - _021E904C - 2 ; case 5
_021E9058:
	mov r0, #4
	mov r1, #0x1c
	bl FUN_02016998
	str r0, [r4, #0xc]
	mov r2, #0x1c
	mov r1, #0
_021E9066:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _021E9066
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021E9078:
	mov r1, #0x10
	mov r0, #2
	add r2, r1, #0
	str r0, [sp]
	mov r0, #1
	sub r2, #0x20
	add r3, r4, #4
	bl MOD05_021E3474
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021E9094:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021E9136
	add r0, r0, #1
	add sp, #0xc
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021E90A2:
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl MOD05_021F4608
	mov r0, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r1, #0x10
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl FUN_0200E1D0
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x20]
	str r0, [r5]
	bl FUN_0201F010
	mov r2, #0x32
	add r1, r0, #0
	mov r0, #0xc
	lsl r2, r2, #0x10
	str r0, [sp]
	ldr r3, _021E913C ; =0xFFFFB000
	add r0, r5, #4
	sub r2, r1, r2
	bl MOD05_021E3644
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021E90EC:
	add r0, r5, #4
	bl MOD05_021E36A4
	ldr r0, [r5, #4]
	ldr r1, [r5]
	bl FUN_0201EFE0
	bl FUN_0200E308
	cmp r0, #0
	beq _021E9136
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021E910C:
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl MOD05_021F45E8
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021E9120
	mov r0, #1
	str r0, [r1]
_021E9120:
	ldr r1, [r4, #0xc]
	mov r0, #4
	bl FUN_02016A8C
	add r0, r6, #0
	bl FUN_0200621C
	mov r0, #1
	mov r1, #0
	bl FUN_0200E3A0
_021E9136:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021E913C: .word 0xFFFFB000

	thumb_func_start MOD05_021E9140
MOD05_021E9140: ; 0x021E9140
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r7, r1, #0
	str r0, [sp, #0x10]
	ldr r0, [r7]
	ldr r4, [r7, #0xc]
	cmp r0, #7
	bls _021E9152
	b _021E948A
_021E9152:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E915E: ; jump table
	.short _021E916E - _021E915E - 2 ; case 0
	.short _021E9228 - _021E915E - 2 ; case 1
	.short _021E9242 - _021E915E - 2 ; case 2
	.short _021E924E - _021E915E - 2 ; case 3
	.short _021E92B2 - _021E915E - 2 ; case 4
	.short _021E931A - _021E915E - 2 ; case 5
	.short _021E93A6 - _021E915E - 2 ; case 6
	.short _021E9430 - _021E915E - 2 ; case 7
_021E916E:
	mov r1, #0x1e
	mov r0, #4
	lsl r1, r1, #4
	bl FUN_02016998
	mov r2, #0x1e
	str r0, [r7, #0xc]
	mov r1, #0
	lsl r2, r2, #4
	bl Call_FillMemWithValue
	ldr r0, [r7, #0x10]
	ldr r4, [r7, #0xc]
	ldr r1, [r0, #0x20]
	mov r0, #7
	lsl r0, r0, #6
	str r1, [r4, r0]
	bl MOD05_021E3768
	str r0, [r4, #0x44]
	add r0, r4, #0
	add r0, #0x48
	mov r1, #2
	mov r2, #1
	bl MOD05_021E3E14
	mov r0, #5
	str r0, [sp]
	mov r0, #7
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	ldr r0, _021E949C ; =0x000927C0
	mov r1, #0x61
	str r0, [sp, #0xc]
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #0x48
	add r1, r4, r1
	mov r2, #0
	mov r3, #1
	bl MOD05_021E3E64
	mov r0, #0
	str r0, [sp, #0x14]
	add r6, r0, #0
	add r0, r4, #0
	str r0, [sp, #0x1c]
	add r0, #0x48
	add r5, r4, #0
	str r0, [sp, #0x1c]
_021E91D4:
	mov r0, #0
	str r0, [sp]
	mov r1, #0x61
	str r0, [sp, #4]
	lsl r1, r1, #2
	mov r2, #2
	mov r3, #6
	ldr r0, [sp, #0x1c]
	add r1, r4, r1
	lsl r2, r2, #0x12
	lsl r3, r3, #0x10
	bl MOD05_021E3FC4
	mov r1, #0x6e
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl FUN_020200A0
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl FUN_02020310
	ldr r0, [sp, #0x14]
	add r5, r5, #4
	add r0, r0, #1
	add r6, r6, #2
	str r0, [sp, #0x14]
	cmp r0, #2
	blt _021E91D4
	mov r0, #0x10
	mov r1, #1
	bl FUN_0201E6E4
	ldr r0, [r7]
	add r0, r0, #1
	str r0, [r7]
	b _021E948A
_021E9228:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	add r1, r0, #0
	sub r1, #0x11
	add r2, r1, #0
	add r3, r7, #4
	bl MOD05_021E3474
	ldr r0, [r7]
	add r0, r0, #1
	str r0, [r7]
	b _021E948A
_021E9242:
	ldr r1, [r7, #4]
	cmp r1, #0
	beq _021E9310
	add r0, r0, #1
	str r0, [r7]
	b _021E948A
_021E924E:
	mov r0, #0xa
	mov r2, #1
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x29
	lsl r2, r2, #0xc
	mov r3, #2
	bl MOD05_021E3644
	ldr r1, [r4]
	add r0, sp, #0x50
	add r2, r1, #0
	add r3, r1, #0
	bl MOD05_021E3FF8
	mov r6, #0
	add r5, r4, #0
_021E9270:
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl FUN_020200A0
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #2
	bl FUN_020200EC
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, sp, #0x50
	bl FUN_02020064
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #2
	blt _021E9270
	add r0, r4, #0
	ldr r2, _021E94A0 ; =0x0000FFFF
	add r0, #0x18
	mov r1, #0
	mov r3, #0xa
	bl MOD05_021E35B0
	ldr r0, [r7]
	add r0, r0, #1
	str r0, [r7]
	b _021E948A
_021E92B2:
	add r0, r4, #0
	bl MOD05_021E36A4
	ldr r1, [r4]
	str r0, [sp, #0x18]
	add r0, sp, #0x50
	add r2, r1, #0
	add r3, r1, #0
	bl MOD05_021E3FF8
	add r0, r4, #0
	add r0, #0x18
	bl MOD05_021E35C0
	mov r6, #0
	add r5, r4, #0
_021E92D2:
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, sp, #0x50
	bl FUN_02020064
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #2
	blt _021E92D2
	mov r0, #0x6e
	ldr r1, [r4, #0x18]
	lsl r0, r0, #2
	lsl r1, r1, #0x10
	ldr r0, [r4, r0]
	lsr r1, r1, #0x10
	bl FUN_02020088
	mov r1, #0x6f
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	ldr r2, [r4, #0x18]
	sub r1, #0xbc
	sub r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl FUN_02020088
	ldr r0, [sp, #0x18]
	cmp r0, #1
	beq _021E9312
_021E9310:
	b _021E948A
_021E9312:
	ldr r0, [r7]
	add r0, r0, #1
	str r0, [r7]
	b _021E948A
_021E931A:
	mov r0, #0
	str r0, [sp]
	mov r0, #0xff
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0xa
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldr r1, [r4, #0x44]
	add r0, r7, #0
	mov r2, #0x60
	mov r3, #6
	bl MOD05_021E37CC
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl FUN_02020130
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl FUN_02020130
	mov r0, #6
	str r0, [sp]
	add r0, r4, #0
	mov r2, #0xff
	mov r3, #0xa
	add r0, #0x2c
	mov r1, #0
	lsl r2, r2, #0xc
	lsl r3, r3, #0xc
	bl MOD05_021E3644
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl FUN_0201F010
	add r1, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #0x71
	mov r2, #0x7d
	lsl r0, r0, #2
	lsl r2, r2, #0xe
	ldr r3, _021E94A4 ; =0xFFFF6000
	add r0, r4, r0
	sub r2, r1, r2
	bl MOD05_021E3644
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl FUN_02020088
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl FUN_02020088
	ldr r0, [r7]
	add r0, r0, #1
	str r0, [r7]
	b _021E948A
_021E93A6:
	add r0, r4, #0
	add r0, #0x2c
	bl MOD05_021E36A4
	mov r1, #2
	ldr r2, [r4, #0x2c]
	lsl r1, r1, #0x12
	sub r1, r1, r2
	mov r2, #6
	add r0, sp, #0x2c
	lsl r2, r2, #0x10
	mov r3, #0
	bl MOD05_021E3FF8
	add r3, sp, #0x2c
	ldmia r3!, {r0, r1}
	add r2, sp, #0x44
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #2
	str r0, [r2]
	ldr r2, [r4, #0x2c]
	lsl r1, r1, #0x12
	add r1, r2, r1
	mov r2, #6
	add r0, sp, #0x20
	lsl r2, r2, #0x10
	mov r3, #0
	bl MOD05_021E3FF8
	add r3, sp, #0x20
	ldmia r3!, {r0, r1}
	add r2, sp, #0x38
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, sp, #0x44
	str r0, [r2]
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02020044
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x38
	bl FUN_02020044
	mov r0, #0x71
	lsl r0, r0, #2
	add r0, r4, r0
	bl MOD05_021E36A4
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	sub r1, r1, #4
	ldr r1, [r4, r1]
	bl FUN_0201EFE0
	add r0, r7, #0
	bl MOD05_021E35AC
	cmp r0, #0
	beq _021E948A
	ldr r0, [r7]
	add r0, r0, #1
	str r0, [r7]
	b _021E948A
_021E9430:
	mov r0, #0
	add r1, r0, #0
	bl FUN_0200E3A0
	mov r0, #1
	mov r1, #0
	bl FUN_0200E3A0
	ldr r1, [r7, #0x14]
	cmp r1, #0
	beq _021E944A
	mov r0, #1
	str r0, [r1]
_021E944A:
	mov r6, #0
	add r5, r4, #0
_021E944E:
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0201FFC8
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #2
	blt _021E944E
	mov r1, #0x61
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #0x48
	add r1, r4, r1
	bl MOD05_021E3F3C
	add r0, r4, #0
	add r0, #0x48
	bl MOD05_021E3E44
	ldr r0, [r4, #0x44]
	bl MOD05_021E37A4
	ldr r1, [r7, #0xc]
	mov r0, #4
	bl FUN_02016A8C
	ldr r0, [sp, #0x10]
	bl FUN_0200621C
_021E948A:
	ldr r0, [r7]
	cmp r0, #7
	beq _021E9496
	ldr r0, [r4, #0x48]
	bl FUN_0201FDEC
_021E9496:
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_021E949C: .word 0x000927C0
_021E94A0: .word 0x0000FFFF
_021E94A4: .word 0xFFFF6000

	thumb_func_start MOD05_021E94A8
MOD05_021E94A8: ; 0x021E94A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x78
	add r6, r1, #0
	str r0, [sp, #0x10]
	ldr r0, [r6]
	ldr r4, [r6, #0xc]
	cmp r0, #7
	bhi _021E95A2
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E94C4: ; jump table
	.short _021E94D4 - _021E94C4 - 2 ; case 0
	.short _021E9582 - _021E94C4 - 2 ; case 1
	.short _021E959C - _021E94C4 - 2 ; case 2
	.short _021E95AA - _021E94C4 - 2 ; case 3
	.short _021E9638 - _021E94C4 - 2 ; case 4
	.short _021E96C8 - _021E94C4 - 2 ; case 5
	.short _021E9702 - _021E94C4 - 2 ; case 6
	.short _021E972C - _021E94C4 - 2 ; case 7
_021E94D4:
	mov r1, #0x71
	mov r0, #4
	lsl r1, r1, #2
	bl FUN_02016998
	mov r2, #0x71
	str r0, [r6, #0xc]
	mov r1, #0
	lsl r2, r2, #2
	bl Call_FillMemWithValue
	ldr r0, [r6, #0x10]
	ldr r4, [r6, #0xc]
	ldr r1, [r0, #0x20]
	mov r0, #0x69
	lsl r0, r0, #2
	str r1, [r4, r0]
	bl MOD05_021E39FC
	str r0, [r4, #0x28]
	add r0, r4, #0
	add r0, #0x2c
	mov r1, #2
	mov r2, #1
	bl MOD05_021E3E14
	mov r0, #2
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	ldr r0, _021E9798 ; =0x000927C0
	mov r1, #0x5a
	str r0, [sp, #0xc]
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #0x2c
	add r1, r4, r1
	mov r2, #0
	mov r3, #1
	bl MOD05_021E3E64
	add r0, r4, #0
	str r0, [sp, #0x14]
	add r0, #0x2c
	mov r7, #0
	add r5, r4, #0
	str r0, [sp, #0x14]
_021E9536:
	mov r0, #0
	str r0, [sp]
	mov r1, #0x5a
	str r0, [sp, #4]
	lsl r1, r1, #2
	mov r2, #2
	ldr r0, [sp, #0x14]
	add r1, r4, r1
	lsl r2, r2, #0x12
	mov r3, #0
	bl MOD05_021E3FC4
	mov r1, #0x67
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl FUN_020200A0
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #2
	bl FUN_020200EC
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, #2
	blt _021E9536
	mov r0, #0x10
	mov r1, #1
	bl FUN_0201E6E4
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b _021E9786
_021E9582:
	mov r1, #0x10
	mov r0, #2
	add r2, r1, #0
	str r0, [sp]
	mov r0, #1
	sub r2, #0x20
	add r3, r6, #4
	bl MOD05_021E3474
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b _021E9786
_021E959C:
	ldr r1, [r6, #4]
	cmp r1, #0
	bne _021E95A4
_021E95A2:
	b _021E9786
_021E95A4:
	add r0, r0, #1
	str r0, [r6]
	b _021E9786
_021E95AA:
	mov r2, #3
	ldr r1, _021E979C ; =0xFFF40000
	add r0, r4, #0
	lsl r2, r2, #0x12
	mov r3, #8
	bl MOD05_021E35EC
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl FUN_020200A0
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl FUN_020200A0
	mov r2, #2
	ldr r1, [r4]
	lsl r2, r2, #0x12
	sub r1, r2, r1
	add r0, sp, #0x3c
	lsr r2, r2, #1
	mov r3, #0
	bl MOD05_021E3FF8
	add r3, sp, #0x3c
	ldmia r3!, {r0, r1}
	add r2, sp, #0x6c
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r3, #0
	str r0, [r2]
	mov r2, #2
	ldr r1, [r4]
	lsl r2, r2, #0x12
	add r0, sp, #0x30
	add r1, r1, r2
	bl MOD05_021E3FF8
	add r3, sp, #0x30
	ldmia r3!, {r0, r1}
	add r2, sp, #0x60
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, sp, #0x6c
	str r0, [r2]
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02020044
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0x60
	bl FUN_02020044
	add r0, r4, #0
	ldr r2, _021E97A0 ; =0x0001FFFE
	add r0, #0x14
	mov r1, #0
	mov r3, #8
	bl MOD05_021E35B0
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b _021E9786
_021E9638:
	add r0, r4, #0
	bl MOD05_021E35FC
	mov r2, #2
	add r5, r0, #0
	ldr r1, [r4]
	lsl r2, r2, #0x12
	sub r1, r2, r1
	add r0, sp, #0x24
	lsr r2, r2, #1
	mov r3, #0
	bl MOD05_021E3FF8
	add r3, sp, #0x24
	ldmia r3!, {r0, r1}
	add r2, sp, #0x54
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r3, #0
	str r0, [r2]
	mov r2, #2
	ldr r1, [r4]
	lsl r2, r2, #0x12
	add r0, sp, #0x18
	add r1, r1, r2
	bl MOD05_021E3FF8
	add r3, sp, #0x18
	ldmia r3!, {r0, r1}
	add r2, sp, #0x48
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, sp, #0x54
	str r0, [r2]
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02020044
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0x48
	bl FUN_02020044
	add r0, r4, #0
	add r0, #0x14
	bl MOD05_021E35C0
	mov r0, #0x67
	ldr r1, [r4, #0x14]
	lsl r0, r0, #2
	lsl r1, r1, #0x10
	ldr r0, [r4, r0]
	lsr r1, r1, #0x10
	bl FUN_02020088
	ldr r1, [r4, #0x14]
	mov r0, #0x1a
	lsl r0, r0, #4
	neg r1, r1
	lsl r1, r1, #0x10
	ldr r0, [r4, r0]
	lsr r1, r1, #0x10
	bl FUN_02020088
	cmp r5, #1
	bne _021E9786
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b _021E9786
_021E96C8:
	mov r3, #1
	lsl r3, r3, #0xc
	str r3, [sp]
	ldr r1, [r4, #0x28]
	add r0, r6, #0
	mov r2, #8
	bl MOD05_021E3A70
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0201F010
	add r1, r0, #0
	mov r0, #8
	str r0, [sp]
	mov r0, #0x6a
	mov r2, #0x7d
	lsl r0, r0, #2
	lsl r2, r2, #0xe
	ldr r3, _021E97A4 ; =0xFFFF6000
	add r0, r4, r0
	sub r2, r1, r2
	bl MOD05_021E3644
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b _021E9786
_021E9702:
	mov r0, #0x6a
	lsl r0, r0, #2
	add r0, r4, r0
	bl MOD05_021E36A4
	mov r1, #0x6a
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	sub r1, r1, #4
	ldr r1, [r4, r1]
	bl FUN_0201EFE0
	add r0, r6, #0
	bl MOD05_021E35AC
	cmp r0, #1
	bne _021E9786
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b _021E9786
_021E972C:
	mov r0, #0
	add r1, r0, #0
	bl FUN_0200E3A0
	mov r0, #1
	mov r1, #0
	bl FUN_0200E3A0
	ldr r1, [r6, #0x14]
	cmp r1, #0
	beq _021E9746
	mov r0, #1
	str r0, [r1]
_021E9746:
	mov r7, #0
	add r5, r4, #0
_021E974A:
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0201FFC8
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, #2
	blt _021E974A
	mov r1, #0x5a
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #0x2c
	add r1, r4, r1
	bl MOD05_021E3F3C
	add r0, r4, #0
	add r0, #0x2c
	bl MOD05_021E3E44
	ldr r0, [r4, #0x28]
	bl MOD05_021E3A48
	ldr r1, [r6, #0xc]
	mov r0, #4
	bl FUN_02016A8C
	ldr r0, [sp, #0x10]
	bl FUN_0200621C
_021E9786:
	ldr r0, [r6]
	cmp r0, #7
	beq _021E9792
	ldr r0, [r4, #0x2c]
	bl FUN_0201FDEC
_021E9792:
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E9798: .word 0x000927C0
_021E979C: .word 0xFFF40000
_021E97A0: .word 0x0001FFFE
_021E97A4: .word 0xFFFF6000

	thumb_func_start MOD05_021E97A8
MOD05_021E97A8: ; 0x021E97A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r7, r1, #0
	str r0, [sp, #0x14]
	ldr r0, [r7]
	ldr r4, [r7, #0xc]
	cmp r0, #7
	bls _021E97BA
	b _021E9B2A
_021E97BA:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E97C6: ; jump table
	.short _021E97D6 - _021E97C6 - 2 ; case 0
	.short _021E9892 - _021E97C6 - 2 ; case 1
	.short _021E98AC - _021E97C6 - 2 ; case 2
	.short _021E98F2 - _021E97C6 - 2 ; case 3
	.short _021E9958 - _021E97C6 - 2 ; case 4
	.short _021E99E4 - _021E97C6 - 2 ; case 5
	.short _021E9A68 - _021E97C6 - 2 ; case 6
	.short _021E9AD0 - _021E97C6 - 2 ; case 7
_021E97D6:
	mov r1, #0x7a
	mov r0, #4
	lsl r1, r1, #2
	bl FUN_02016998
	mov r2, #0x7a
	str r0, [r7, #0xc]
	mov r1, #0
	lsl r2, r2, #2
	bl Call_FillMemWithValue
	ldr r0, [r7, #0x10]
	ldr r4, [r7, #0xc]
	ldr r1, [r0, #0x20]
	mov r0, #0x72
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	add r0, #0x40
	mov r1, #4
	bl MOD05_021E8E8C
	mov r0, #0x79
	mov r1, #0xc
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	add r0, #0x50
	mov r1, #2
	mov r2, #1
	bl MOD05_021E3E14
	mov r0, #5
	str r0, [sp]
	mov r0, #7
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	ldr r0, _021E9B4C ; =0x000927C0
	mov r1, #0x63
	str r0, [sp, #0xc]
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #0x50
	add r1, r4, r1
	mov r2, #0
	mov r3, #1
	bl MOD05_021E3E64
	add r0, r4, #0
	str r0, [sp, #0x1c]
	add r0, #0x50
	mov r6, #0
	add r5, r4, #0
	str r0, [sp, #0x1c]
_021E9844:
	mov r0, #0
	str r0, [sp]
	mov r1, #0x63
	str r0, [sp, #4]
	lsl r1, r1, #2
	mov r2, #2
	mov r3, #6
	ldr r0, [sp, #0x1c]
	add r1, r4, r1
	lsl r2, r2, #0x12
	lsl r3, r3, #0x10
	bl MOD05_021E3FC4
	mov r1, #7
	lsl r1, r1, #6
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl FUN_020200A0
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl FUN_02020310
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #2
	blt _021E9844
	mov r0, #0x10
	mov r1, #1
	bl FUN_0201E6E4
	ldr r0, [r7]
	add r0, r0, #1
	str r0, [r7]
	b _021E9B2A
_021E9892:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	add r1, r0, #0
	sub r1, #0x11
	add r2, r1, #0
	add r3, r7, #4
	bl MOD05_021E3474
	ldr r0, [r7]
	add r0, r0, #1
	str r0, [r7]
	b _021E9B2A
_021E98AC:
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021E98E4
	mov r0, #3
	lsl r0, r0, #0xe
	mov r3, #0x32
	str r0, [sp]
	lsl r3, r3, #4
	str r3, [sp, #4]
	ldr r0, _021E9B50 ; =0x04000010
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0x40
	mov r2, #0xbf
	sub r3, #0x76
	bl MOD05_021E8EC0
	mov r0, #1
	str r0, [r4, #0x4c]
_021E98E4:
	ldr r0, [r7, #4]
	cmp r0, #0
	beq _021E99BE
	ldr r0, [r7]
	add r0, r0, #1
	str r0, [r7]
	b _021E9B2A
_021E98F2:
	add r0, r4, #0
	add r0, #0x18
	mov r1, #0
	mov r2, #0x10
	mov r3, #8
	bl MOD05_021E35B0
	ldr r3, [r4, #0x18]
	mov r0, #0x10
	sub r0, r0, r3
	str r0, [sp]
	ldr r0, _021E9B54 ; =0x04000050
	mov r1, #0
	mov r2, #0xf
	bl G2x_SetBlendAlpha_
	mov r6, #0
	add r5, r4, #0
_021E9916:
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #1
	bl FUN_020200A0
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #2
	bl FUN_020200EC
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #1
	bl FUN_02020398
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #2
	blt _021E9916
	add r0, r4, #0
	ldr r2, _021E9B58 ; =0x0000FFFF
	add r0, #0x2c
	mov r1, #0
	mov r3, #8
	bl MOD05_021E35B0
	ldr r0, [r7]
	add r0, r0, #1
	str r0, [r7]
	b _021E9B2A
_021E9958:
	add r0, r4, #0
	add r0, #0x18
	bl MOD05_021E35C0
	add r6, r0, #0
	ldr r1, [r4, #0x18]
	mov r0, #0x10
	sub r0, r0, r1
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _021E9B5C ; =0x04000052
	strh r1, [r0]
	ldr r0, [r4, #0x2c]
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, #0
	add r0, #0x2c
	bl MOD05_021E35C0
	cmp r0, #0
	bne _021E99A2
	mov r0, #7
	ldr r1, [r4, #0x2c]
	lsl r0, r0, #6
	lsl r1, r1, #0x10
	ldr r0, [r4, r0]
	lsr r1, r1, #0x10
	bl FUN_02020088
	mov r0, #0x71
	lsl r0, r0, #2
	lsl r1, r5, #0x10
	ldr r0, [r4, r0]
	lsr r1, r1, #0x10
	bl FUN_02020088
	b _021E99BA
_021E99A2:
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl FUN_02020088
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl FUN_02020088
_021E99BA:
	cmp r6, #1
	beq _021E99C0
_021E99BE:
	b _021E9B2A
_021E99C0:
	ldr r0, _021E9B54 ; =0x04000050
	mov r6, #0
	strh r6, [r0]
	add r5, r4, #0
_021E99C8:
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0
	bl FUN_02020398
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #2
	blt _021E99C8
	ldr r0, [r7]
	add r0, r0, #1
	str r0, [r7]
	b _021E9B2A
_021E99E4:
	mov r1, #8
	str r1, [sp]
	ldr r3, _021E9B60 ; =0x0000019A
	add r0, r4, #0
	lsl r1, r1, #9
	mov r2, #0x29
	bl MOD05_021E3644
	ldr r1, [r4]
	add r0, sp, #0x34
	add r2, r1, #0
	add r3, r1, #0
	bl MOD05_021E3FF8
	add r3, sp, #0x34
	add r2, sp, #0x4c
	ldmia r3!, {r0, r1}
	str r2, [sp, #0x20]
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r6, #0
	str r0, [r2]
	add r5, r4, #0
_021E9A12:
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x20]
	bl FUN_02020064
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #2
	blt _021E9A12
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0201F010
	add r1, r0, #0
	mov r0, #8
	str r0, [sp]
	mov r0, #0x73
	mov r2, #0x7d
	lsl r0, r0, #2
	lsl r2, r2, #0xe
	ldr r3, _021E9B64 ; =0xFFFF6000
	add r0, r4, r0
	sub r2, r1, r2
	bl MOD05_021E3644
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #3
	mov r1, #0x18
	add r3, r2, #0
	bl FUN_0200E1D0
	ldr r0, [r7]
	add r0, r0, #1
	str r0, [r7]
	b _021E9B2A
_021E9A68:
	add r0, r4, #0
	bl MOD05_021E36A4
	ldr r1, [r4]
	str r0, [sp, #0x18]
	add r0, sp, #0x28
	add r2, r1, #0
	add r3, r1, #0
	bl MOD05_021E3FF8
	add r3, sp, #0x28
	add r2, sp, #0x40
	ldmia r3!, {r0, r1}
	str r2, [sp, #0x24]
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r6, #0
	str r0, [r2]
	add r5, r4, #0
_021E9A8E:
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x24]
	bl FUN_02020064
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #2
	blt _021E9A8E
	mov r0, #0x73
	lsl r0, r0, #2
	add r0, r4, r0
	bl MOD05_021E36A4
	mov r1, #0x73
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	sub r1, r1, #4
	ldr r1, [r4, r1]
	bl FUN_0201EFE0
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _021E9B2A
	bl FUN_0200E308
	cmp r0, #1
	bne _021E9B2A
	ldr r0, [r7]
	add r0, r0, #1
	str r0, [r7]
	b _021E9B2A
_021E9AD0:
	mov r0, #1
	mov r1, #0
	bl FUN_0200E3A0
	ldr r1, [r7, #0x14]
	cmp r1, #0
	beq _021E9AE2
	mov r0, #1
	str r0, [r1]
_021E9AE2:
	add r0, r4, #0
	add r0, #0x40
	bl MOD05_021E8EA8
	mov r6, #0
	str r6, [r4, #0x4c]
	add r5, r4, #0
_021E9AF0:
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl FUN_0201FFC8
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #2
	blt _021E9AF0
	mov r1, #0x63
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #0x50
	add r1, r4, r1
	bl MOD05_021E3F3C
	add r4, #0x50
	add r0, r4, #0
	bl MOD05_021E3E44
	ldr r1, [r7, #0xc]
	mov r0, #4
	bl FUN_02016A8C
	ldr r0, [sp, #0x14]
	bl FUN_0200621C
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
_021E9B2A:
	ldr r0, [r4, #0x4c]
	cmp r0, #1
	bne _021E9B3A
	add r0, r4, #0
	add r0, #0x40
	mov r1, #2
	bl MOD05_021E8EE8
_021E9B3A:
	ldr r0, [r7]
	cmp r0, #7
	beq _021E9B46
	ldr r0, [r4, #0x50]
	bl FUN_0201FDEC
_021E9B46:
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E9B4C: .word 0x000927C0
_021E9B50: .word 0x04000010
_021E9B54: .word 0x04000050
_021E9B58: .word 0x0000FFFF
_021E9B5C: .word 0x04000052
_021E9B60: .word 0x0000019A
_021E9B64: .word 0xFFFF6000

	thumb_func_start MOD05_021E9B68
MOD05_021E9B68: ; 0x021E9B68
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp, #0x18]
	add r0, r1, #0
	ldr r0, [r0]
	str r1, [sp, #0x1c]
	ldr r4, [r1, #0xc]
	cmp r0, #7
	bls _021E9B7C
	b _021EA01A
_021E9B7C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E9B88: ; jump table
	.short _021E9B98 - _021E9B88 - 2 ; case 0
	.short _021E9CAA - _021E9B88 - 2 ; case 1
	.short _021E9CCA - _021E9B88 - 2 ; case 2
	.short _021E9D24 - _021E9B88 - 2 ; case 3
	.short _021E9DE4 - _021E9B88 - 2 ; case 4
	.short _021E9E82 - _021E9B88 - 2 ; case 5
	.short _021E9F1C - _021E9B88 - 2 ; case 6
	.short _021E9F70 - _021E9B88 - 2 ; case 7
_021E9B98:
	mov r1, #9
	mov r0, #4
	lsl r1, r1, #6
	bl FUN_02016998
	ldr r1, [sp, #0x1c]
	mov r2, #9
	str r0, [r1, #0xc]
	mov r1, #0
	lsl r2, r2, #6
	bl Call_FillMemWithValue
	ldr r0, [sp, #0x1c]
	ldr r4, [r0, #0xc]
	ldr r0, [r0, #0x10]
	ldr r1, [r0, #0x20]
	mov r0, #0x22
	lsl r0, r0, #4
	str r1, [r4, r0]
	sub r0, #0x10
	add r0, r4, r0
	mov r1, #4
	bl MOD05_021E8E8C
	mov r0, #0x8f
	mov r1, #0xe
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #3
	mov r2, #1
	bl MOD05_021E3E14
	mov r0, #2
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	ldr r0, _021E9F5C ; =0x000927C0
	mov r1, #0x4f
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #0
	mov r3, #1
	bl MOD05_021E3E64
	mov r7, #0x4f
	mov r6, #0
	add r5, r4, #0
	lsl r7, r7, #2
_021E9C02:
	mov r0, #0
	str r0, [sp]
	mov r2, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r4, r7
	add r3, r2, #0
	bl MOD05_021E3FC4
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl FUN_020200A0
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #2
	bl FUN_020200EC
	mov r0, #4
	bl MOD05_021E4140
	mov r1, #0x7d
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #3
	blt _021E9C02
	mov r0, #0x10
	mov r1, #1
	bl FUN_0201E6E4
	mov r0, #4
	mov r1, #1
	bl FUN_02018FF4
	mov r1, #0x83
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	ldr r1, [r4, r1]
	ldr r0, [r0, #0x10]
	mov r2, #3
	ldr r0, [r0, #8]
	bl FUN_02019064
	mov r1, #0
	add r0, sp, #0x28
	strh r1, [r0]
	mov r0, #3
	add r1, sp, #0x28
	mov r2, #2
	mov r3, #0x1e
	bl FUN_02017FB4
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl FUN_02019620
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02019220
	ldr r0, [sp, #0x1c]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x1c]
	str r1, [r0]
	b _021EA01A
_021E9CAA:
	mov r1, #0x10
	ldr r3, [sp, #0x1c]
	mov r0, #2
	add r2, r1, #0
	str r0, [sp]
	mov r0, #1
	sub r2, #0x20
	add r3, r3, #4
	bl MOD05_021E3474
	ldr r0, [sp, #0x1c]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x1c]
	str r1, [r0]
	b _021EA01A
_021E9CCA:
	mov r3, #0x8f
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	sub r0, r0, #1
	str r0, [r4, r3]
	ldr r0, [r4, r3]
	cmp r0, #0
	bne _021E9D08
	mov r0, #3
	lsl r0, r0, #0xe
	str r0, [sp]
	add r0, r3, #0
	add r0, #0xe4
	str r0, [sp, #4]
	ldr r0, _021E9F60 ; =0x04000010
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	add r0, r3, #0
	sub r0, #0x2c
	add r0, r4, r0
	mov r2, #0xbf
	add r3, #0x6e
	bl MOD05_021E8EC0
	mov r0, #0x87
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
_021E9D08:
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021E9D34
	mov r0, #0x8f
	mov r1, #6
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [sp, #0x1c]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x1c]
	str r1, [r0]
	b _021EA01A
_021E9D24:
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0
	blt _021E9D36
_021E9D34:
	b _021EA01A
_021E9D36:
	sub r0, #0x1c
	ldr r0, [r4, r0]
	bl FUN_0201F010
	add r1, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x89
	mov r2, #0x7d
	lsl r0, r0, #2
	lsl r2, r2, #0xe
	ldr r3, _021E9F64 ; =0xFFFF6000
	add r0, r4, r0
	sub r2, r1, r2
	bl MOD05_021E3644
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r2, _021E9F68 ; =0x0000FFFF
	add r0, r4, r0
	mov r1, #0
	mov r3, #6
	bl MOD05_021E35B0
	mov r0, #0x5f
	lsl r0, r0, #2
	mov r2, #0x1f
	add r0, r4, r0
	mov r1, #0xe7
	mvn r2, r2
	mov r3, #6
	bl MOD05_021E35B0
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r3, #0x40
	str r1, [sp, #8]
	mov r1, #0x56
	str r1, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r1, #0xf
	str r1, [sp, #0x14]
	sub r0, #0x18
	mov r1, #0x2b
	ldr r0, [r4, r0]
	add r2, r1, #0
	add r3, #0xf8
	bl MOD05_021E4160
	mov r1, #0x2b
	mov r2, #0xe7
	add r0, sp, #0x38
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	mov r3, #0
	bl MOD05_021E3FF8
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0x38
	bl FUN_02020044
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl FUN_020200A0
	mov r1, #1
	lsl r0, r1, #9
	str r1, [r4, r0]
	ldr r0, [sp, #0x1c]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x1c]
	str r1, [r0]
	mov r0, #0x8f
	mov r1, #4
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _021EA01A
_021E9DE4:
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0
	bge _021E9E92
	sub r0, #0xac
	mov r2, #0x1f
	add r0, r4, r0
	mov r1, #0xe7
	mvn r2, r2
	mov r3, #6
	bl MOD05_021E35B0
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r2, _021E9F6C ; =0xFFFF0001
	add r0, r4, r0
	mov r1, #0
	mov r3, #6
	bl MOD05_021E35B0
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r0, #0x14
	str r1, [sp, #8]
	mov r1, #0x56
	str r1, [sp, #0xc]
	mov r1, #0x40
	str r1, [sp, #0x10]
	mov r1, #0xf
	str r1, [sp, #0x14]
	mov r1, #0xd7
	add r3, r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	add r3, #0x61
	bl MOD05_021E4160
	mov r1, #0xd7
	mov r2, #0xe7
	add r0, sp, #0x38
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	mov r3, #1
	bl MOD05_021E3FF8
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x38
	bl FUN_02020044
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl FUN_020200A0
	mov r1, #0x81
	mov r0, #1
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp, #0x1c]
	add r1, #0x38
	ldr r0, [r0]
	add r2, r0, #1
	ldr r0, [sp, #0x1c]
	str r2, [r0]
	mov r0, #2
	str r0, [r4, r1]
	b _021EA01A
_021E9E82:
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0
	blt _021E9E94
_021E9E92:
	b _021EA01A
_021E9E94:
	sub r0, #0x98
	mov r2, #0x1f
	add r0, r4, r0
	mov r1, #0xe7
	mvn r2, r2
	mov r3, #6
	bl MOD05_021E35B0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r2, _021E9F68 ; =0x0000FFFF
	add r0, r4, r0
	mov r1, #0
	mov r3, #6
	bl MOD05_021E35B0
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r0, #0x10
	str r1, [sp, #8]
	mov r1, #0x56
	str r1, [sp, #0xc]
	mov r1, #0x40
	str r1, [sp, #0x10]
	mov r1, #0xf
	str r1, [sp, #0x14]
	mov r1, #0x81
	add r3, r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	add r3, #0xb7
	bl MOD05_021E4160
	mov r1, #0x81
	mov r2, #0xe7
	add r0, sp, #0x38
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	mov r3, #2
	bl MOD05_021E3FF8
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x38
	bl FUN_02020044
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl FUN_020200A0
	mov r0, #0x82
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [sp, #0x1c]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x1c]
	str r1, [r0]
	b _021EA01A
_021E9F1C:
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r4, r0
	bl MOD05_021E36A4
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	sub r1, r1, #4
	ldr r1, [r4, r1]
	bl FUN_0201EFE0
	mov r1, #2
	lsl r1, r1, #8
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021EA01A
	add r0, r1, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021EA01A
	add r1, #8
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021EA01A
	ldr r0, [sp, #0x1c]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x1c]
	str r1, [r0]
	b _021EA01A
	nop
_021E9F5C: .word 0x000927C0
_021E9F60: .word 0x04000010
_021E9F64: .word 0xFFFF6000
_021E9F68: .word 0x0000FFFF
_021E9F6C: .word 0xFFFF0001
_021E9F70:
	mov r0, #0
	add r1, r0, #0
	bl FUN_0200E3A0
	mov r0, #1
	mov r1, #0
	bl FUN_0200E3A0
	ldr r0, [sp, #0x1c]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021E9F8C
	mov r0, #1
	str r0, [r1]
_021E9F8C:
	mov r0, #0x21
	lsl r0, r0, #4
	add r0, r4, r0
	bl MOD05_021E8EA8
	mov r0, #0x87
	lsl r0, r0, #2
	mov r6, #0
	add r7, r0, #0
	str r6, [r4, r0]
	add r5, r4, #0
	sub r7, #0x28
_021E9FA4:
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_0201FFC8
	ldr r0, [r5, r7]
	bl MOD05_021E4158
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #3
	blt _021E9FA4
	mov r1, #0x4f
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl MOD05_021E3F3C
	add r0, r4, #0
	bl MOD05_021E3E44
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02019570
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02019178
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl FUN_020191A4
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	mov r3, #4
	bl FUN_02017F18
	ldr r0, [sp, #0x1c]
	mov r1, #3
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #8]
	bl FUN_02018744
	ldr r1, [sp, #0x1c]
	mov r0, #4
	ldr r1, [r1, #0xc]
	bl FUN_02016A8C
	ldr r0, [sp, #0x18]
	bl FUN_0200621C
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
_021EA01A:
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #1
	bne _021EA02E
	sub r0, #0xc
	add r0, r4, r0
	mov r1, #2
	bl MOD05_021E8EE8
_021EA02E:
	mov r1, #0x5f
	mov r0, #0
	lsl r1, r1, #2
	str r0, [sp, #0x20]
	add r0, r4, r1
	add r1, #0x3c
	add r5, r4, #0
	str r0, [sp, #0x24]
	add r7, r4, r1
	add r6, r4, #0
_021EA042:
	mov r0, #2
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021EA0B0
	mov r0, #0x7d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl MOD05_021E41B8
	cmp r0, #0
	beq _021EA062
	mov r0, #2
	mov r1, #0
	lsl r0, r0, #8
	str r1, [r5, r0]
_021EA062:
	ldr r0, [sp, #0x24]
	bl MOD05_021E35C0
	add r0, r7, #0
	bl MOD05_021E35C0
	mov r1, #0x6e
	lsl r1, r1, #2
	mov r0, #0x17
	ldr r1, [r6, r1]
	lsl r0, r0, #4
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0x10
	bl FUN_02020088
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_0202011C
	add r3, r0, #0
	add r2, sp, #0x2c
	ldmia r3!, {r0, r1}
	mov ip, r2
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, ip
	str r0, [r2]
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	lsl r0, r0, #0xc
	str r0, [sp, #0x30]
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_02020044
_021EA0B0:
	ldr r0, [sp, #0x24]
	add r5, r5, #4
	add r0, #0x14
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r7, #0x14
	add r0, r0, #1
	add r6, #0x14
	str r0, [sp, #0x20]
	cmp r0, #3
	blt _021EA042
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02019220
	ldr r0, [sp, #0x1c]
	ldr r0, [r0]
	cmp r0, #7
	beq _021EA0DE
	ldr r0, [r4]
	bl FUN_0201FDEC
_021EA0DE:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EA0E4
MOD05_021EA0E4: ; 0x021EA0E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	ldr r4, [r5, #0xc]
	cmp r0, #7
	bhi _021EA1B8
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EA100: ; jump table
	.short _021EA110 - _021EA100 - 2 ; case 0
	.short _021EA198 - _021EA100 - 2 ; case 1
	.short _021EA1B2 - _021EA100 - 2 ; case 2
	.short _021EA1C0 - _021EA100 - 2 ; case 3
	.short _021EA236 - _021EA100 - 2 ; case 4
	.short _021EA2C2 - _021EA100 - 2 ; case 5
	.short _021EA310 - _021EA100 - 2 ; case 6
	.short _021EA338 - _021EA100 - 2 ; case 7
_021EA110:
	mov r1, #0x1f
	mov r0, #4
	lsl r1, r1, #4
	bl FUN_02016998
	mov r2, #0x1f
	str r0, [r5, #0xc]
	mov r1, #0
	lsl r2, r2, #4
	bl Call_FillMemWithValue
	ldr r0, [r5, #0x10]
	ldr r4, [r5, #0xc]
	ldr r1, [r0, #0x20]
	mov r0, #0x1d
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	add r0, #0x5c
	add r2, r1, #0
	bl MOD05_021E3E14
	mov r0, #2
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	ldr r0, _021EA394 ; =0x000927C0
	mov r1, #0x66
	str r0, [sp, #0xc]
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #0x5c
	add r1, r4, r1
	mov r2, #0
	mov r3, #1
	bl MOD05_021E3E64
	mov r0, #0
	str r0, [sp]
	mov r1, #0x66
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #2
	ldr r3, _021EA398 ; =0xFFFE0000
	add r0, #0x5c
	add r1, r4, r1
	lsl r2, r2, #0x12
	bl MOD05_021E3FC4
	mov r1, #0x73
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	bl FUN_020200A0
	mov r0, #0x10
	mov r1, #1
	bl FUN_0201E6E4
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EA382
_021EA198:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	add r1, r0, #0
	sub r1, #0x11
	add r2, r1, #0
	add r3, r5, #4
	bl MOD05_021E3474
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EA382
_021EA1B2:
	ldr r1, [r5, #4]
	cmp r1, #0
	bne _021EA1BA
_021EA1B8:
	b _021EA382
_021EA1BA:
	add r0, r0, #1
	str r0, [r5]
	b _021EA382
_021EA1C0:
	mov r2, #1
	mov r0, #0xc
	lsl r2, r2, #0x14
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	lsr r3, r2, #7
	bl MOD05_021E3644
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl FUN_020200A0
	mov r0, #0xc
	str r0, [sp]
	add r0, r4, #0
	mov r2, #2
	ldr r1, _021EA39C ; =0x0000019A
	add r0, #0x18
	lsl r2, r2, #0xc
	mov r3, #0
	bl MOD05_021E3644
	mov r0, #0xc
	str r0, [sp]
	add r0, r4, #0
	mov r2, #2
	ldr r1, _021EA39C ; =0x0000019A
	add r0, #0x30
	lsl r2, r2, #0xc
	mov r3, #0
	bl MOD05_021E3644
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x30]
	add r0, sp, #0x28
	mov r3, #0
	bl MOD05_021E3FF8
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x28
	mov r2, #2
	bl FUN_02020074
	add r0, r4, #0
	ldr r2, _021EA3A0 ; =0x0000FFFF
	add r0, #0x48
	mov r1, #0
	mov r3, #0xc
	bl MOD05_021E35B0
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EA382
_021EA236:
	add r0, r4, #0
	bl MOD05_021E36A4
	mov r1, #2
	lsl r1, r1, #0x12
	add r6, r0, #0
	ldr r3, [r4]
	lsr r2, r1, #2
	sub r2, r3, r2
	add r0, sp, #0x10
	mov r3, #0
	bl MOD05_021E3FF8
	add r3, sp, #0x10
	add r2, sp, #0x1c
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, r7, #0
	str r0, [r2]
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02020044
	add r0, r4, #0
	add r0, #0x18
	bl MOD05_021E36A4
	add r0, r4, #0
	add r0, #0x30
	bl MOD05_021E36A4
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x30]
	add r0, sp, #0x28
	mov r3, #0
	bl MOD05_021E3FF8
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x28
	bl FUN_02020064
	add r0, r4, #0
	add r0, #0x48
	bl MOD05_021E35C0
	mov r0, #0x73
	ldr r1, [r4, #0x48]
	lsl r0, r0, #2
	lsl r1, r1, #0x10
	ldr r0, [r4, r0]
	lsr r1, r1, #0x10
	bl FUN_02020088
	cmp r6, #1
	bne _021EA382
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl FUN_020200A0
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EA382
_021EA2C2:
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl MOD05_021F4608
	mov r0, #0x1d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_0201F010
	add r1, r0, #0
	mov r0, #8
	str r0, [sp]
	mov r0, #0x75
	mov r2, #0xfa
	lsl r0, r0, #2
	lsl r2, r2, #0xe
	mov r3, #0xa
	add r0, r4, r0
	sub r2, r1, r2
	lsl r3, r3, #0xc
	bl MOD05_021E3644
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #3
	mov r1, #0x12
	add r3, r2, #0
	bl FUN_0200E1D0
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EA382
_021EA310:
	mov r0, #0x75
	lsl r0, r0, #2
	add r0, r4, r0
	bl MOD05_021E36A4
	mov r1, #0x75
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	sub r1, r1, #4
	ldr r1, [r4, r1]
	bl FUN_0201EFE0
	bl FUN_0200E308
	cmp r0, #0
	beq _021EA382
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EA382
_021EA338:
	mov r0, #1
	mov r1, #0
	bl FUN_0200E3A0
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl MOD05_021F45E8
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _021EA354
	mov r0, #1
	str r0, [r1]
_021EA354:
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0201FFC8
	mov r1, #0x66
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #0x5c
	add r1, r4, r1
	bl MOD05_021E3F3C
	add r0, r4, #0
	add r0, #0x5c
	bl MOD05_021E3E44
	ldr r1, [r5, #0xc]
	mov r0, #4
	bl FUN_02016A8C
	add r0, r6, #0
	bl FUN_0200621C
_021EA382:
	ldr r0, [r5]
	cmp r0, #7
	beq _021EA38E
	ldr r0, [r4, #0x5c]
	bl FUN_0201FDEC
_021EA38E:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021EA394: .word 0x000927C0
_021EA398: .word 0xFFFE0000
_021EA39C: .word 0x0000019A
_021EA3A0: .word 0x0000FFFF

	thumb_func_start MOD05_021EA3A4
MOD05_021EA3A4: ; 0x021EA3A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp, #0x14]
	add r0, r1, #0
	ldr r0, [r0]
	str r1, [sp, #0x18]
	ldr r4, [r1, #0xc]
	cmp r0, #9
	bls _021EA3B8
	b _021EA7DE
_021EA3B8:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EA3C4: ; jump table
	.short _021EA3D8 - _021EA3C4 - 2 ; case 0
	.short _021EA4CE - _021EA3C4 - 2 ; case 1
	.short _021EA4EE - _021EA3C4 - 2 ; case 2
	.short _021EA506 - _021EA3C4 - 2 ; case 3
	.short _021EA582 - _021EA3C4 - 2 ; case 4
	.short _021EA5FE - _021EA3C4 - 2 ; case 5
	.short _021EA674 - _021EA3C4 - 2 ; case 6
	.short _021EA6B4 - _021EA3C4 - 2 ; case 7
	.short _021EA6FA - _021EA3C4 - 2 ; case 8
	.short _021EA748 - _021EA3C4 - 2 ; case 9
_021EA3D8:
	mov r1, #0x8a
	mov r0, #4
	lsl r1, r1, #2
	bl FUN_02016998
	ldr r1, [sp, #0x18]
	mov r2, #0x8a
	str r0, [r1, #0xc]
	mov r1, #0
	lsl r2, r2, #2
	bl Call_FillMemWithValue
	ldr r0, [sp, #0x18]
	mov r2, #1
	ldr r4, [r0, #0xc]
	ldr r0, [r0, #0x10]
	ldr r1, [r0, #0x20]
	mov r0, #0x82
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #3
	bl MOD05_021E3E14
	mov r0, #2
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	ldr r0, _021EA738 ; =0x000927C0
	mov r1, #0x4f
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #0
	mov r3, #1
	bl MOD05_021E3E64
	mov r7, #0x4f
	mov r6, #0
	add r5, r4, #0
	lsl r7, r7, #2
_021EA430:
	mov r0, #0
	mov r2, #0
	str r0, [sp]
	add r3, r2, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r4, r7
	sub r3, #0x20
	bl MOD05_021E3FC4
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl FUN_020200A0
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #3
	blt _021EA430
	mov r0, #0x10
	mov r1, #1
	bl FUN_0201E6E4
	mov r0, #4
	mov r1, #1
	bl FUN_02018FF4
	mov r1, #2
	lsl r1, r1, #8
	str r0, [r4, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [sp, #0x18]
	ldr r1, [r4, r1]
	ldr r0, [r0, #0x10]
	mov r2, #3
	ldr r0, [r0, #8]
	bl FUN_02019064
	mov r1, #0
	add r0, sp, #0x28
	strh r1, [r0]
	mov r0, #3
	add r1, sp, #0x28
	mov r2, #2
	mov r3, #0x1e
	bl FUN_02017FB4
	mov r0, #2
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #0
	bl FUN_02019620
	mov r0, #2
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl FUN_02019220
	mov r0, #4
	bl MOD05_021E4394
	mov r1, #0x81
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp, #0x18]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [r0]
	b _021EA7DE
_021EA4CE:
	mov r1, #0x10
	ldr r3, [sp, #0x18]
	mov r0, #2
	add r2, r1, #0
	str r0, [sp]
	mov r0, #1
	sub r2, #0x20
	add r3, r3, #4
	bl MOD05_021E3474
	ldr r0, [sp, #0x18]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [r0]
	b _021EA7DE
_021EA4EE:
	ldr r1, [sp, #0x18]
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _021EA516
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [r0]
	mov r0, #0x89
	mov r1, #0
	lsl r0, r0, #2
	strh r1, [r4, r0]
	b _021EA7DE
_021EA506:
	mov r0, #0x89
	lsl r0, r0, #2
	ldrsh r1, [r4, r0]
	sub r1, r1, #1
	strh r1, [r4, r0]
	ldrsh r1, [r4, r0]
	cmp r1, #0
	ble _021EA518
_021EA516:
	b _021EA7DE
_021EA518:
	sub r0, #0xa8
	mov r1, #0x1f
	add r0, r4, r0
	mvn r1, r1
	mov r2, #0xe0
	mov r3, #5
	bl MOD05_021E35B0
	mov r1, #2
	ldr r2, _021EA73C ; =0xFFFE0000
	add r0, sp, #0x38
	lsl r1, r1, #0x12
	mov r3, #0
	bl MOD05_021E3FF8
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0x38
	bl FUN_02020044
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl FUN_020200A0
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r2, _021EA740 ; =0x0000FFFF
	add r0, r4, r0
	mov r1, #0
	mov r3, #5
	bl MOD05_021E35B0
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #2
	bl FUN_020200EC
	mov r1, #0x7d
	mov r3, #1
	lsl r1, r1, #2
	str r3, [r4, r1]
	ldr r0, [sp, #0x18]
	add r1, #0x30
	ldr r0, [r0]
	add r2, r0, #1
	ldr r0, [sp, #0x18]
	str r2, [r0]
	strh r3, [r4, r1]
	b _021EA7DE
_021EA582:
	mov r0, #0x89
	lsl r0, r0, #2
	ldrsh r1, [r4, r0]
	sub r1, r1, #1
	strh r1, [r4, r0]
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bgt _021EA68E
	sub r0, #0x94
	mov r1, #0x1f
	add r0, r4, r0
	mvn r1, r1
	mov r2, #0xe0
	mov r3, #5
	bl MOD05_021E35B0
	mov r1, #0xd
	ldr r2, _021EA73C ; =0xFFFE0000
	add r0, sp, #0x38
	lsl r1, r1, #0x10
	mov r3, #0
	bl MOD05_021E3FF8
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x38
	bl FUN_02020044
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl FUN_020200A0
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r2, _021EA744 ; =0xFFFF0001
	add r0, r4, r0
	mov r1, #0
	mov r3, #5
	bl MOD05_021E35B0
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl FUN_020200EC
	mov r1, #0x7e
	mov r0, #1
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp, #0x18]
	add r1, #0x2c
	ldr r0, [r0]
	add r2, r0, #1
	ldr r0, [sp, #0x18]
	str r2, [r0]
	mov r0, #3
	strh r0, [r4, r1]
	b _021EA7DE
_021EA5FE:
	mov r0, #0x89
	lsl r0, r0, #2
	ldrsh r1, [r4, r0]
	sub r1, r1, #1
	strh r1, [r4, r0]
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bgt _021EA68E
	sub r0, #0x80
	mov r1, #0x1f
	add r0, r4, r0
	mvn r1, r1
	mov r2, #0xe0
	mov r3, #5
	bl MOD05_021E35B0
	mov r1, #3
	ldr r2, _021EA73C ; =0xFFFE0000
	add r0, sp, #0x38
	lsl r1, r1, #0x10
	mov r3, #0
	bl MOD05_021E3FF8
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x38
	bl FUN_02020044
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl FUN_020200A0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r2, _021EA740 ; =0x0000FFFF
	add r0, r4, r0
	mov r1, #0
	mov r3, #5
	bl MOD05_021E35B0
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl FUN_020200EC
	mov r0, #0x7f
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [sp, #0x18]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [r0]
	b _021EA7DE
_021EA674:
	mov r1, #0x7d
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021EA68E
	add r0, r1, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021EA68E
	add r1, #8
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _021EA690
_021EA68E:
	b _021EA7DE
_021EA690:
	mov r7, #0x17
	mov r6, #0
	add r5, r4, #0
	lsl r7, r7, #4
_021EA698:
	ldr r0, [r5, r7]
	mov r1, #0
	bl FUN_020200A0
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #3
	blt _021EA698
	ldr r0, [sp, #0x18]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [r0]
	b _021EA7DE
_021EA6B4:
	mov r0, #0xf
	mov r1, #1
	str r0, [sp]
	mov r0, #0x81
	lsl r0, r0, #2
	lsl r3, r1, #9
	ldr r0, [r4, r0]
	ldr r3, [r4, r3]
	add r2, r1, #0
	bl MOD05_021E43E4
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0201F010
	add r1, r0, #0
	mov r0, #0x40
	str r0, [sp]
	mov r0, #0x83
	mov r2, #0xfa
	lsl r0, r0, #2
	lsl r2, r2, #0xe
	mov r3, #0xa
	add r0, r4, r0
	sub r2, r1, r2
	lsl r3, r3, #0xc
	bl MOD05_021E3644
	ldr r0, [sp, #0x18]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [r0]
	b _021EA7DE
_021EA6FA:
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl MOD05_021E4424
	add r5, r0, #0
	mov r0, #2
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl FUN_02019220
	mov r0, #0x83
	lsl r0, r0, #2
	add r0, r4, r0
	bl MOD05_021E36A4
	mov r1, #0x83
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	sub r1, r1, #4
	ldr r1, [r4, r1]
	bl FUN_0201EFE0
	cmp r5, #1
	bne _021EA7DE
	ldr r0, [sp, #0x18]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [r0]
	b _021EA7DE
	.balign 4, 0
_021EA738: .word 0x000927C0
_021EA73C: .word 0xFFFE0000
_021EA740: .word 0x0000FFFF
_021EA744: .word 0xFFFF0001
_021EA748:
	mov r0, #0
	add r1, r0, #0
	bl FUN_0200E3A0
	mov r0, #1
	mov r1, #0
	bl FUN_0200E3A0
	ldr r0, [sp, #0x18]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021EA764
	mov r0, #1
	str r0, [r1]
_021EA764:
	mov r7, #0x17
	mov r6, #0
	add r5, r4, #0
	lsl r7, r7, #4
_021EA76C:
	ldr r0, [r5, r7]
	bl FUN_0201FFC8
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #3
	blt _021EA76C
	mov r1, #0x4f
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl MOD05_021E3F3C
	add r0, r4, #0
	bl MOD05_021E3E44
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl MOD05_021E43C4
	mov r0, #2
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl FUN_02019570
	mov r0, #2
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	bl FUN_02019178
	mov r0, #2
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #1
	bl FUN_020191A4
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	mov r3, #4
	bl FUN_02017F18
	ldr r0, [sp, #0x18]
	mov r1, #3
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #8]
	bl FUN_02018744
	ldr r1, [sp, #0x18]
	mov r0, #4
	ldr r1, [r1, #0xc]
	bl FUN_02016A8C
	ldr r0, [sp, #0x14]
	bl FUN_0200621C
_021EA7DE:
	mov r1, #0x5f
	mov r0, #0
	lsl r1, r1, #2
	str r0, [sp, #0x1c]
	add r0, r4, r1
	add r1, #0x3c
	add r5, r4, #0
	str r0, [sp, #0x20]
	add r7, r4, r1
	add r6, r4, #0
_021EA7F2:
	mov r0, #0x7d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021EA85A
	ldr r0, [sp, #0x20]
	bl MOD05_021E35C0
	str r0, [sp, #0x24]
	add r0, r7, #0
	bl MOD05_021E35C0
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _021EA818
	mov r0, #0x7d
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_021EA818:
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_0202011C
	add r3, r0, #0
	add r2, sp, #0x2c
	ldmia r3!, {r0, r1}
	mov ip, r2
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, ip
	str r0, [r2]
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	lsl r0, r0, #0xc
	str r0, [sp, #0x30]
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_02020044
	mov r1, #0x6e
	lsl r1, r1, #2
	mov r0, #0x17
	ldr r1, [r6, r1]
	lsl r0, r0, #4
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0x10
	bl FUN_02020088
_021EA85A:
	ldr r0, [sp, #0x20]
	add r5, r5, #4
	add r0, #0x14
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r7, #0x14
	add r0, r0, #1
	add r6, #0x14
	str r0, [sp, #0x1c]
	cmp r0, #3
	blt _021EA7F2
	ldr r0, [sp, #0x18]
	ldr r0, [r0]
	cmp r0, #9
	beq _021EA87E
	ldr r0, [r4]
	bl FUN_0201FDEC
_021EA87E:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EA884
MOD05_021EA884: ; 0x021EA884
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	ldr r5, [r4, #0xc]
	cmp r0, #7
	bls _021EA896
	b _021EAAC6
_021EA896:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EA8A2: ; jump table
	.short _021EA8B2 - _021EA8A2 - 2 ; case 0
	.short _021EA93E - _021EA8A2 - 2 ; case 1
	.short _021EA958 - _021EA8A2 - 2 ; case 2
	.short _021EA964 - _021EA8A2 - 2 ; case 3
	.short _021EA996 - _021EA8A2 - 2 ; case 4
	.short _021EA9C8 - _021EA8A2 - 2 ; case 5
	.short _021EAA38 - _021EA8A2 - 2 ; case 6
	.short _021EAA7C - _021EA8A2 - 2 ; case 7
_021EA8B2:
	mov r1, #0x69
	mov r0, #4
	lsl r1, r1, #2
	bl FUN_02016998
	mov r2, #0x69
	str r0, [r4, #0xc]
	mov r1, #0
	lsl r2, r2, #2
	bl Call_FillMemWithValue
	ldr r5, [r4, #0xc]
	mov r1, #1
	add r0, r5, #0
	add r0, #0x2c
	add r2, r1, #0
	bl MOD05_021E3E14
	mov r0, #5
	str r0, [sp]
	mov r0, #7
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	ldr r0, _021EAAD8 ; =0x000927C0
	mov r1, #0x5a
	str r0, [sp, #0xc]
	add r0, r5, #0
	lsl r1, r1, #2
	add r0, #0x2c
	add r1, r5, r1
	mov r2, #0
	mov r3, #1
	bl MOD05_021E3E64
	mov r0, #0
	str r0, [sp]
	mov r1, #0x5a
	str r0, [sp, #4]
	add r0, r5, #0
	lsl r1, r1, #2
	mov r2, #2
	mov r3, #6
	add r0, #0x2c
	add r1, r5, r1
	lsl r2, r2, #0x12
	lsl r3, r3, #0x10
	bl MOD05_021E3FC4
	mov r1, #0x67
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0
	bl FUN_020200A0
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl FUN_02020398
	mov r0, #0x10
	mov r1, #1
	bl FUN_0201E6E4
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021EAAC6
_021EA93E:
	mov r1, #0x10
	mov r0, #2
	add r2, r1, #0
	str r0, [sp]
	mov r0, #1
	sub r2, #0x20
	add r3, r4, #4
	bl MOD05_021E3474
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021EAAC6
_021EA958:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021EA9AE
	add r0, r0, #1
	str r0, [r4]
	b _021EAAC6
_021EA964:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x10
	mov r3, #0xc
	bl MOD05_021E35B0
	ldr r3, [r5]
	mov r0, #0x10
	sub r0, r0, r3
	str r0, [sp]
	ldr r0, _021EAADC ; =0x04000050
	mov r1, #0
	mov r2, #0xf
	bl G2x_SetBlendAlpha_
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl FUN_020200A0
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021EAAC6
_021EA996:
	add r0, r5, #0
	bl MOD05_021E35C0
	ldr r2, [r5]
	mov r1, #0x10
	sub r1, r1, r2
	lsl r1, r1, #8
	orr r1, r2
	ldr r2, _021EAAE0 ; =0x04000052
	cmp r0, #1
	strh r1, [r2]
	beq _021EA9B0
_021EA9AE:
	b _021EAAC6
_021EA9B0:
	mov r1, #0
	sub r0, r2, #2
	strh r1, [r0]
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02020398
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021EAAC6
_021EA9C8:
	mov r0, #6
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	ldr r2, _021EAAE4 ; =0x0000019A
	add r0, #0x14
	lsl r1, r1, #0xc
	mov r3, #1
	bl MOD05_021E3644
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #2
	bl FUN_020200EC
	ldr r1, [r5, #0x14]
	add r0, sp, #0x1c
	add r2, r1, #0
	add r3, r1, #0
	bl MOD05_021E3FF8
	add r6, sp, #0x1c
	add r3, sp, #0x34
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	add r1, r2, #0
	str r0, [r3]
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02020064
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl MOD05_021F4608
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #3
	mov r1, #0x10
	add r3, r2, #0
	bl FUN_0200E1D0
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021EAAC6
_021EAA38:
	add r0, r5, #0
	add r0, #0x14
	bl MOD05_021E36A4
	ldr r1, [r5, #0x14]
	add r6, r0, #0
	add r0, sp, #0x10
	add r2, r1, #0
	add r3, r1, #0
	bl MOD05_021E3FF8
	add r3, sp, #0x10
	add r2, sp, #0x28
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, r7, #0
	str r0, [r2]
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02020064
	cmp r6, #1
	bne _021EAAC6
	bl FUN_0200E308
	cmp r0, #1
	bne _021EAAC6
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021EAAC6
_021EAA7C:
	mov r0, #1
	mov r1, #0
	bl FUN_0200E3A0
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl MOD05_021F45E8
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021EAA98
	mov r0, #1
	str r0, [r1]
_021EAA98:
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0201FFC8
	mov r1, #0x5a
	add r0, r5, #0
	lsl r1, r1, #2
	add r0, #0x2c
	add r1, r5, r1
	bl MOD05_021E3F3C
	add r0, r5, #0
	add r0, #0x2c
	bl MOD05_021E3E44
	ldr r1, [r4, #0xc]
	mov r0, #4
	bl FUN_02016A8C
	add r0, r6, #0
	bl FUN_0200621C
_021EAAC6:
	ldr r0, [r4]
	cmp r0, #7
	beq _021EAAD2
	ldr r0, [r5, #0x2c]
	bl FUN_0201FDEC
_021EAAD2:
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EAAD8: .word 0x000927C0
_021EAADC: .word 0x04000050
_021EAAE0: .word 0x04000052
_021EAAE4: .word 0x0000019A

	thumb_func_start MOD05_021EAAE8
MOD05_021EAAE8: ; 0x021EAAE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r1, #0
	str r0, [sp, #0x10]
	ldr r0, [r6]
	ldr r4, [r6, #0xc]
	cmp r0, #7
	bhi _021EABBC
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EAB04: ; jump table
	.short _021EAB14 - _021EAB04 - 2 ; case 0
	.short _021EAB9C - _021EAB04 - 2 ; case 1
	.short _021EABB6 - _021EAB04 - 2 ; case 2
	.short _021EABC4 - _021EAB04 - 2 ; case 3
	.short _021EAC0E - _021EAB04 - 2 ; case 4
	.short _021EACC0 - _021EAB04 - 2 ; case 5
	.short _021EACEA - _021EAB04 - 2 ; case 6
	.short _021EACFA - _021EAB04 - 2 ; case 7
_021EAB14:
	mov r1, #0x1b
	mov r0, #4
	lsl r1, r1, #4
	bl FUN_02016998
	mov r2, #0x1b
	str r0, [r6, #0xc]
	mov r1, #0
	lsl r2, r2, #4
	bl Call_FillMemWithValue
	ldr r4, [r6, #0xc]
	mov r1, #4
	add r0, r4, #0
	mov r2, #1
	bl MOD05_021E3E14
	mov r0, #2
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	ldr r0, _021EAD5C ; =0x000927C0
	mov r1, #0x4f
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #0
	mov r3, #1
	bl MOD05_021E3E64
	mov r7, #0
	add r5, r4, #0
_021EAB5A:
	mov r0, #0
	mov r1, #0x4f
	str r0, [sp]
	lsl r1, r1, #2
	mov r2, #2
	mov r3, #6
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r4, r1
	lsl r2, r2, #0x12
	lsl r3, r3, #0x10
	bl MOD05_021E3FC4
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl FUN_020200A0
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, #4
	blt _021EAB5A
	mov r0, #0x10
	mov r1, #1
	bl FUN_0201E6E4
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b _021EAD4C
_021EAB9C:
	mov r1, #0x10
	mov r0, #2
	add r2, r1, #0
	str r0, [sp]
	mov r0, #1
	sub r2, #0x20
	add r3, r6, #4
	bl MOD05_021E3474
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b _021EAD4C
_021EABB6:
	ldr r1, [r6, #4]
	cmp r1, #0
	bne _021EABBE
_021EABBC:
	b _021EAD4C
_021EABBE:
	add r0, r0, #1
	str r0, [r6]
	b _021EAD4C
_021EABC4:
	mov r3, #6
	mov r2, #4
	lsl r3, r3, #6
	str r2, [sp]
	add r0, r4, r3
	mov r1, #0
	lsl r2, r2, #0x11
	add r3, #0x1a
	bl MOD05_021E3644
	mov r3, #0x66
	mov r0, #4
	mov r2, #0xa
	lsl r3, r3, #2
	str r0, [sp]
	add r0, r4, r3
	mov r1, #0
	lsl r2, r2, #0x10
	add r3, r3, #2
	bl MOD05_021E3644
	mov r7, #0
	add r5, r4, #0
_021EABF2:
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl FUN_020200A0
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, #4
	blt _021EABF2
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b _021EAD4C
_021EAC0E:
	mov r0, #6
	lsl r0, r0, #6
	mov r7, #0
	add r5, r4, r0
_021EAC16:
	add r0, r5, #0
	bl MOD05_021E36A4
	add r7, r7, #1
	add r5, #0x18
	str r0, [sp, #0x14]
	cmp r7, #2
	blt _021EAC16
	mov r2, #6
	lsl r2, r2, #6
	ldr r3, [r4, r2]
	mov r1, #2
	lsl r2, r2, #0xa
	sub r2, r2, r3
	add r0, sp, #0x18
	lsl r1, r1, #0x12
	mov r3, #0
	bl MOD05_021E3FF8
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0x18
	bl FUN_02020044
	mov r2, #6
	lsl r2, r2, #6
	ldr r3, [r4, r2]
	mov r1, #2
	lsl r2, r2, #0xa
	add r2, r3, r2
	add r0, sp, #0x18
	lsl r1, r1, #0x12
	mov r3, #0
	bl MOD05_021E3FF8
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x18
	bl FUN_02020044
	mov r1, #0x66
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r1, #2
	lsl r1, r1, #0x12
	sub r1, r1, r2
	mov r2, #6
	add r0, sp, #0x18
	lsl r2, r2, #0x10
	mov r3, #0
	bl MOD05_021E3FF8
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x18
	bl FUN_02020044
	mov r1, #0x66
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r1, #2
	lsl r1, r1, #0x12
	add r1, r2, r1
	mov r2, #6
	add r0, sp, #0x18
	lsl r2, r2, #0x10
	mov r3, #0
	bl MOD05_021E3FF8
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x18
	bl FUN_02020044
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _021EAD4C
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b _021EAD4C
_021EACC0:
	ldr r0, [r6, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl MOD05_021F4608
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #3
	mov r1, #0x22
	add r3, r2, #0
	bl FUN_0200E1D0
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b _021EAD4C
_021EACEA:
	bl FUN_0200E308
	cmp r0, #1
	bne _021EAD4C
	ldr r0, [r6]
	add r0, r0, #1
	str r0, [r6]
	b _021EAD4C
_021EACFA:
	mov r0, #1
	mov r1, #0
	bl FUN_0200E3A0
	ldr r0, [r6, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl MOD05_021F45E8
	ldr r1, [r6, #0x14]
	cmp r1, #0
	beq _021EAD16
	mov r0, #1
	str r0, [r1]
_021EAD16:
	mov r7, #0
	add r5, r4, #0
_021EAD1A:
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_0201FFC8
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, #4
	blt _021EAD1A
	mov r1, #0x4f
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl MOD05_021E3F3C
	add r0, r4, #0
	bl MOD05_021E3E44
	ldr r1, [r6, #0xc]
	mov r0, #4
	bl FUN_02016A8C
	ldr r0, [sp, #0x10]
	bl FUN_0200621C
_021EAD4C:
	ldr r0, [r6]
	cmp r0, #7
	beq _021EAD58
	ldr r0, [r4]
	bl FUN_0201FDEC
_021EAD58:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021EAD5C: .word 0x000927C0

	thumb_func_start MOD05_021EAD60
MOD05_021EAD60: ; 0x021EAD60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r0, [sp, #0x10]
	add r0, r1, #0
	ldr r0, [r0]
	str r1, [sp, #0x14]
	ldr r4, [r1, #0xc]
	cmp r0, #7
	bhi _021EAE6E
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EAD7E: ; jump table
	.short _021EAD8E - _021EAD7E - 2 ; case 0
	.short _021EAE1A - _021EAD7E - 2 ; case 1
	.short _021EAE3A - _021EAD7E - 2 ; case 2
	.short _021EAE5E - _021EAD7E - 2 ; case 3
	.short _021EAF9C - _021EAD7E - 2 ; case 4
	.short _021EAFAE - _021EAD7E - 2 ; case 5
	.short _021EAFDE - _021EAD7E - 2 ; case 6
	.short _021EAFF2 - _021EAD7E - 2 ; case 7
_021EAD8E:
	mov r1, #0x3d
	mov r0, #4
	lsl r1, r1, #4
	bl FUN_02016998
	ldr r1, [sp, #0x14]
	mov r2, #0x3d
	str r0, [r1, #0xc]
	mov r1, #0
	lsl r2, r2, #4
	bl Call_FillMemWithValue
	ldr r0, [sp, #0x14]
	mov r1, #6
	ldr r4, [r0, #0xc]
	mov r2, #1
	add r0, r4, #0
	bl MOD05_021E3E14
	mov r0, #2
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	ldr r0, _021EB138 ; =0x000927C0
	mov r1, #0x4f
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #0
	mov r3, #1
	bl MOD05_021E3E64
	mov r7, #0x4f
	mov r6, #0
	add r5, r4, #0
	lsl r7, r7, #2
_021EADDC:
	mov r0, #0
	str r0, [sp]
	mov r2, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r4, r7
	add r3, r2, #0
	bl MOD05_021E3FC4
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl FUN_020200A0
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #6
	blt _021EADDC
	mov r0, #0x10
	mov r1, #1
	bl FUN_0201E6E4
	ldr r0, [sp, #0x14]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x14]
	str r1, [r0]
	b _021EB04A
_021EAE1A:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	add r1, r0, #0
	ldr r3, [sp, #0x14]
	sub r1, #0x11
	add r2, r1, #0
	add r3, r3, #4
	bl MOD05_021E3474
	ldr r0, [sp, #0x14]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x14]
	str r1, [r0]
	b _021EB04A
_021EAE3A:
	ldr r1, [sp, #0x14]
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _021EAE6E
	add r1, r0, #1
	ldr r0, [sp, #0x14]
	str r1, [r0]
	mov r0, #0xf2
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	add r0, r0, #4
	lsl r2, r1, #5
	ldr r1, _021EB13C ; =0x021F7A50
	ldr r1, [r1, r2]
	str r1, [r4, r0]
	b _021EB04A
_021EAE5E:
	mov r0, #0xf3
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0
	blt _021EAE70
_021EAE6E:
	b _021EB04A
_021EAE70:
	sub r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #8
	str r1, [sp]
	mov r1, #0x86
	lsl r1, r1, #2
	add r2, r4, r1
	mov r1, #0x18
	mul r1, r0
	lsl r3, r0, #5
	add r0, r2, r1
	ldr r1, _021EB140 ; =0x021F7A38
	ldr r2, _021EB144 ; =0x021F7A3C
	ldr r5, _021EB148 ; =0x021F7A40
	ldr r1, [r1, r3]
	ldr r2, [r2, r3]
	ldr r3, [r5, r3]
	bl MOD05_021E3644
	mov r0, #0xf2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #8
	str r1, [sp]
	mov r1, #0xaa
	lsl r1, r1, #2
	add r2, r4, r1
	mov r1, #0x18
	mul r1, r0
	lsl r3, r0, #5
	add r0, r2, r1
	ldr r1, _021EB14C ; =0x021F7A44
	ldr r2, _021EB150 ; =0x021F7A48
	ldr r5, _021EB154 ; =0x021F7A4C
	ldr r1, [r1, r3]
	ldr r2, [r2, r3]
	ldr r3, [r5, r3]
	bl MOD05_021E3644
	mov r0, #0x62
	lsl r0, r0, #2
	mov r1, #8
	add r3, r4, r0
	mov r0, #0xf2
	str r1, [sp]
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	mov r0, #0x18
	mul r0, r2
	add r0, r3, r0
	ldr r3, _021EB158 ; =0xFFFFF99A
	lsl r1, r1, #0xa
	mov r2, #0x29
	bl MOD05_021E3644
	mov r0, #0xf2
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	sub r0, #0x90
	add r1, r4, r0
	mov r0, #0x14
	mul r0, r2
	lsl r3, r2, #5
	ldr r2, _021EB15C ; =0x021F7A54
	add r0, r1, r0
	ldr r2, [r2, r3]
	mov r1, #0
	mov r3, #8
	bl MOD05_021E35B0
	mov r0, #0xf2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl FUN_020200A0
	mov r0, #0xf2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, _021EB140 ; =0x021F7A38
	lsl r3, r0, #5
	ldr r2, _021EB14C ; =0x021F7A44
	ldr r1, [r1, r3]
	ldr r2, [r2, r3]
	add r0, sp, #0x3c
	mov r3, #0
	bl MOD05_021E3FF8
	mov r0, #0xf2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, sp, #0x3c
	bl FUN_02020044
	mov r1, #2
	lsl r1, r1, #0xc
	add r0, sp, #0x30
	add r2, r1, #0
	mov r3, #0
	bl MOD05_021E3FF8
	mov r0, #0xf2
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #2
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, sp, #0x30
	bl FUN_02020074
	mov r1, #0xf2
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	mov r3, #1
	lsl r0, r0, #2
	add r2, r4, r0
	add r0, r1, #0
	sub r0, #0x18
	str r3, [r2, r0]
	ldr r0, [r4, r1]
	add r0, r0, #1
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #6
	blt _021EAF90
	ldr r0, [sp, #0x14]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x14]
	str r1, [r0]
	b _021EB04A
_021EAF90:
	lsl r2, r0, #5
	ldr r0, _021EB13C ; =0x021F7A50
	ldr r2, [r0, r2]
	add r0, r1, #4
	str r2, [r4, r0]
	b _021EB04A
_021EAF9C:
	mov r1, #0xf1
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _021EB04A
	add r1, r0, #1
	ldr r0, [sp, #0x14]
	str r1, [r0]
	b _021EB04A
_021EAFAE:
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl MOD05_021F4608
	mov r0, #0xc
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r2, #0
	str r0, [sp, #8]
	mov r0, #3
	mov r1, #0x22
	add r3, r2, #0
	bl FUN_0200E1D0
	ldr r0, [sp, #0x14]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x14]
	str r1, [r0]
	b _021EB04A
_021EAFDE:
	bl FUN_0200E308
	cmp r0, #0
	beq _021EB04A
	ldr r0, [sp, #0x14]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0x14]
	str r1, [r0]
	b _021EB04A
_021EAFF2:
	mov r0, #1
	mov r1, #0
	bl FUN_0200E3A0
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x10]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl MOD05_021F45E8
	ldr r0, [sp, #0x14]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021EB012
	mov r0, #1
	str r0, [r1]
_021EB012:
	mov r7, #0x17
	mov r6, #0
	add r5, r4, #0
	lsl r7, r7, #4
_021EB01A:
	ldr r0, [r5, r7]
	bl FUN_0201FFC8
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #6
	blt _021EB01A
	mov r1, #0x4f
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	bl MOD05_021E3F3C
	add r0, r4, #0
	bl MOD05_021E3E44
	ldr r1, [sp, #0x14]
	mov r0, #4
	ldr r1, [r1, #0xc]
	bl FUN_02016A8C
	ldr r0, [sp, #0x10]
	bl FUN_0200621C
_021EB04A:
	mov r1, #0x86
	mov r0, #0
	lsl r1, r1, #2
	str r0, [sp, #0x18]
	add r0, r4, r1
	str r0, [sp, #0x28]
	add r0, r1, #0
	add r0, #0x90
	add r0, r4, r0
	sub r1, #0x90
	str r0, [sp, #0x24]
	add r0, r4, r1
	str r0, [sp, #0x20]
	mov r0, #0xce
	lsl r0, r0, #2
	add r0, r4, r0
	add r5, r4, #0
	str r0, [sp, #0x1c]
	add r6, r4, #0
	add r7, r4, #0
_021EB072:
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _021EB0FE
	ldr r0, [sp, #0x28]
	bl MOD05_021E36A4
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x24]
	bl MOD05_021E36A4
	ldr r0, [sp, #0x20]
	bl MOD05_021E36A4
	ldr r0, [sp, #0x1c]
	bl MOD05_021E35C0
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _021EB0AE
	mov r0, #0x3b
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_020200A0
_021EB0AE:
	mov r1, #0x86
	mov r2, #0xaa
	lsl r1, r1, #2
	lsl r2, r2, #2
	ldr r1, [r6, r1]
	ldr r2, [r6, r2]
	add r0, sp, #0x3c
	mov r3, #0
	bl MOD05_021E3FF8
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, sp, #0x3c
	bl FUN_02020044
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	add r0, sp, #0x30
	add r2, r1, #0
	mov r3, #0
	bl MOD05_021E3FF8
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, sp, #0x30
	bl FUN_02020064
	mov r1, #0xce
	lsl r1, r1, #2
	mov r0, #0x17
	ldr r1, [r7, r1]
	lsl r0, r0, #4
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0x10
	bl FUN_02020088
_021EB0FE:
	ldr r0, [sp, #0x28]
	add r5, r5, #4
	add r0, #0x18
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	add r6, #0x18
	add r0, #0x18
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r7, #0x14
	add r0, #0x18
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r0, #0x14
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #6
	blt _021EB072
	ldr r0, [sp, #0x14]
	ldr r0, [r0]
	cmp r0, #7
	beq _021EB134
	ldr r0, [r4]
	bl FUN_0201FDEC
_021EB134:
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EB138: .word 0x000927C0
_021EB13C: .word 0x021F7A50
_021EB140: .word 0x021F7A38
_021EB144: .word 0x021F7A3C
_021EB148: .word 0x021F7A40
_021EB14C: .word 0x021F7A44
_021EB150: .word 0x021F7A48
_021EB154: .word 0x021F7A4C
_021EB158: .word 0xFFFFF99A
_021EB15C: .word 0x021F7A54

	thumb_func_start MOD05_021EB160
MOD05_021EB160: ; 0x021EB160
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	ldr r4, [r5, #0xc]
	cmp r0, #7
	bls _021EB172
	b _021EB3F2
_021EB172:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EB17E: ; jump table
	.short _021EB18E - _021EB17E - 2 ; case 0
	.short _021EB272 - _021EB17E - 2 ; case 1
	.short _021EB28C - _021EB17E - 2 ; case 2
	.short _021EB29A - _021EB17E - 2 ; case 3
	.short _021EB2D4 - _021EB17E - 2 ; case 4
	.short _021EB312 - _021EB17E - 2 ; case 5
	.short _021EB344 - _021EB17E - 2 ; case 6
	.short _021EB374 - _021EB17E - 2 ; case 7
_021EB18E:
	mov r1, #0x6f
	mov r0, #4
	lsl r1, r1, #2
	bl FUN_02016998
	mov r2, #0x6f
	str r0, [r5, #0xc]
	mov r1, #0
	lsl r2, r2, #2
	bl Call_FillMemWithValue
	ldr r4, [r5, #0xc]
	mov r1, #1
	add r0, r4, #0
	add r0, #8
	add r2, r1, #0
	bl MOD05_021E3E14
	mov r0, #8
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #9
	str r0, [sp, #8]
	ldr r0, _021EB404 ; =0x000927C0
	mov r1, #0x51
	str r0, [sp, #0xc]
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #1
	add r0, #8
	add r1, r4, r1
	add r3, r2, #0
	bl MOD05_021E3E64
	mov r0, #0
	str r0, [sp]
	mov r1, #0x51
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #2
	mov r3, #6
	add r0, #8
	add r1, r4, r1
	lsl r2, r2, #0x12
	lsl r3, r3, #0x10
	bl MOD05_021E3FC4
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	bl FUN_020200A0
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl FUN_02020398
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl FUN_02020238
	mov r0, #0x10
	mov r1, #1
	bl FUN_0201E6E4
	mov r0, #4
	bl MOD05_021E4688
	str r0, [r4, #4]
	mov r0, #4
	mov r1, #1
	bl FUN_02018FF4
	str r0, [r4]
	mov r3, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [r5, #0x10]
	ldr r1, [r4]
	ldr r0, [r0, #8]
	mov r2, #3
	bl FUN_02019064
	mov r1, #0
	add r0, sp, #0x14
	strh r1, [r0]
	mov r0, #3
	add r1, sp, #0x14
	mov r2, #2
	mov r3, #0x1e
	bl FUN_02017FB4
	ldr r0, [r4]
	mov r1, #0
	bl FUN_02019620
	ldr r0, [r4]
	bl FUN_02019220
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EB3F2
_021EB272:
	mov r1, #0x10
	mov r0, #2
	add r2, r1, #0
	str r0, [sp]
	mov r0, #1
	sub r2, #0x20
	add r3, r5, #4
	bl MOD05_021E3474
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EB3F2
_021EB28C:
	ldr r1, [r5, #4]
	cmp r1, #0
	bne _021EB294
	b _021EB3F2
_021EB294:
	add r0, r0, #1
	str r0, [r5]
	b _021EB3F2
_021EB29A:
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	mov r2, #0x10
	mov r3, #0xf
	bl MOD05_021E35B0
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl FUN_020200A0
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r3, [r4, r0]
	mov r0, #0x10
	sub r0, r0, r3
	str r0, [sp]
	ldr r0, _021EB408 ; =0x04000050
	mov r1, #0
	mov r2, #0xf
	bl G2x_SetBlendAlpha_
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EB3F2
_021EB2D4:
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r4, r0
	bl MOD05_021E35C0
	mov r2, #0x19
	lsl r2, r2, #4
	ldr r1, [r4, r2]
	mov r3, #0x10
	sub r3, r3, r1
	lsl r3, r3, #8
	orr r1, r3
	ldr r3, _021EB40C ; =0x04000052
	cmp r0, #1
	strh r1, [r3]
	bne _021EB3F2
	mov r1, #0
	sub r0, r3, #2
	sub r2, #0x18
	strh r1, [r0]
	ldr r0, [r4, r2]
	bl FUN_02020398
	ldr r0, [r5]
	mov r1, #0x10
	add r0, r0, #1
	str r0, [r5]
	mov r0, #0x6e
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _021EB3F2
_021EB312:
	mov r0, #0x6e
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0
	bgt _021EB3F2
	sub r0, #0x3c
	add r0, r4, r0
	mov r1, #0
	mov r2, #0xe
	mov r3, #0x10
	bl MOD05_021E35B0
	ldr r0, [r4, #4]
	ldr r2, [r4]
	mov r1, #0x10
	mov r3, #0xf
	bl MOD05_021E46D4
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EB3F2
_021EB344:
	mov r0, #0x5f
	lsl r0, r0, #2
	add r0, r4, r0
	bl MOD05_021E35C0
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	lsl r0, r1, #4
	orr r1, r0
	ldr r0, _021EB410 ; =0x0400004D
	strb r1, [r0]
	ldr r0, [r4, #4]
	bl MOD05_021E4754
	cmp r0, #0
	beq _021EB36C
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
_021EB36C:
	ldr r0, [r4]
	bl FUN_02019220
	b _021EB3F2
_021EB374:
	mov r0, #0
	add r1, r0, #0
	bl FUN_0200E3A0
	mov r0, #1
	mov r1, #0
	bl FUN_0200E3A0
	ldr r0, [r4, #4]
	bl MOD05_021E46B4
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _021EB394
	mov r0, #1
	str r0, [r1]
_021EB394:
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0201FFC8
	mov r1, #0x51
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #8
	add r1, r4, r1
	bl MOD05_021E3F3C
	add r0, r4, #0
	add r0, #8
	bl MOD05_021E3E44
	ldr r0, [r4]
	bl FUN_02019570
	ldr r0, [r4]
	bl FUN_02019178
	ldr r0, [r4]
	mov r1, #1
	bl FUN_020191A4
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	mov r3, #4
	bl FUN_02017F18
	ldr r0, [r5, #0x10]
	mov r1, #3
	ldr r0, [r0, #8]
	bl FUN_02018744
	ldr r0, _021EB410 ; =0x0400004D
	mov r1, #0
	strb r1, [r0]
	ldr r1, [r5, #0xc]
	mov r0, #4
	bl FUN_02016A8C
	add r0, r6, #0
	bl FUN_0200621C
_021EB3F2:
	ldr r0, [r5]
	cmp r0, #7
	beq _021EB3FE
	ldr r0, [r4, #8]
	bl FUN_0201FDEC
_021EB3FE:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_021EB404: .word 0x000927C0
_021EB408: .word 0x04000050
_021EB40C: .word 0x04000052
_021EB410: .word 0x0400004D

	thumb_func_start MOD05_021EB414
MOD05_021EB414: ; 0x021EB414
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4, #8]
	ldr r1, [r5, #0x20]
	bl FUN_0201EEF0
	ldr r0, [r4]
	ldr r1, [r5, #0x20]
	bl FUN_0201EFE0
	ldrh r1, [r4, #4]
	add r0, sp, #0
	strh r1, [r0]
	ldrh r1, [r4, #6]
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	ldr r1, [r5, #0x20]
	add r0, sp, #0
	bl FUN_0201EF90
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EB448
MOD05_021EB448: ; 0x021EB448
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	ldr r5, [r4, #0xc]
	cmp r0, #7
	bls _021EB45A
	b _021EB5A0
_021EB45A:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EB466: ; jump table
	.short _021EB476 - _021EB466 - 2 ; case 0
	.short _021EB4AE - _021EB466 - 2 ; case 1
	.short _021EB4C6 - _021EB466 - 2 ; case 2
	.short _021EB4D4 - _021EB466 - 2 ; case 3
	.short _021EB4F8 - _021EB466 - 2 ; case 4
	.short _021EB534 - _021EB466 - 2 ; case 5
	.short _021EB556 - _021EB466 - 2 ; case 6
	.short _021EB56C - _021EB466 - 2 ; case 7
_021EB476:
	mov r0, #4
	mov r1, #0x10
	bl FUN_02016998
	str r0, [r4, #0xc]
	mov r2, #0x10
	mov r1, #0
_021EB484:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _021EB484
	mov r0, #2
	mov r1, #0
	bl FUN_0201E6E4
	mov r0, #4
	mov r1, #0
	bl FUN_0201E6E4
	mov r0, #8
	mov r1, #0
	bl FUN_0201E6E4
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021EB4AE:
	mov r0, #1
	mov r1, #0x10
	str r0, [sp]
	add r2, r1, #0
	add r3, r4, #4
	bl MOD05_021E3474
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021EB4C6:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021EB5A0
	add r0, r0, #1
	add sp, #0xc
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021EB4D4:
	mov r0, #3
	mov r1, #0xf
	bl MOD05_021E8860
	mov r2, #0
	str r0, [r5]
	mov r0, #0xc
	add r1, r2, #0
	mul r1, r0
	ldr r0, _021EB5A4 ; =0x021F7982
	str r2, [r5, #8]
	ldrh r0, [r0, r1]
	add sp, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021EB4F8:
	ldr r0, [r5, #0xc]
	sub r0, r0, #1
	str r0, [r5, #0xc]
	bpl _021EB5A0
	ldr r2, [r5, #8]
	mov r1, #0xc
	ldr r3, _021EB5A8 ; =0x021F7978
	mul r1, r2
	ldr r0, [r4, #0x10]
	add r1, r3, r1
	bl MOD05_021EB414
	ldr r0, [r5, #8]
	add r2, r0, #1
	str r2, [r5, #8]
	cmp r2, #0x10
	blo _021EB524
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021EB524:
	mov r0, #0xc
	add r1, r2, #0
	mul r1, r0
	ldr r0, _021EB5A4 ; =0x021F7982
	add sp, #0xc
	ldrh r0, [r0, r1]
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, pc}
_021EB534:
	mov r0, #0xa
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r1, #0
	str r0, [sp, #8]
	ldr r3, _021EB5AC ; =0x00007FFF
	mov r0, #3
	add r2, r1, #0
	bl FUN_0200E1D0
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021EB556:
	bl FUN_0200E308
	cmp r0, #0
	beq _021EB5A0
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021EB56C:
	mov r0, #1
	mov r1, #0
	bl FUN_0200E3A0
	add r0, r5, #0
	bl MOD05_021E88C0
	ldr r0, _021EB5B0 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021EB58A
	mov r0, #1
	str r0, [r1]
_021EB58A:
	ldr r1, [r4, #0xc]
	mov r0, #4
	bl FUN_02016A8C
	add r0, r6, #0
	bl FUN_0200621C
	mov r0, #1
	mov r1, #0
	bl FUN_0200E3A0
_021EB5A0:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021EB5A4: .word 0x021F7982
_021EB5A8: .word 0x021F7978
_021EB5AC: .word 0x00007FFF
_021EB5B0: .word 0x04000050

	thumb_func_start MOD05_021EB5B4
MOD05_021EB5B4: ; 0x021EB5B4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	ldr r5, [r4, #0xc]
	cmp r0, #9
	bhi _021EB636
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EB5D0: ; jump table
	.short _021EB5E4 - _021EB5D0 - 2 ; case 0
	.short _021EB618 - _021EB5D0 - 2 ; case 1
	.short _021EB630 - _021EB5D0 - 2 ; case 2
	.short _021EB640 - _021EB5D0 - 2 ; case 3
	.short _021EB66E - _021EB5D0 - 2 ; case 4
	.short _021EB698 - _021EB5D0 - 2 ; case 5
	.short _021EB6C6 - _021EB5D0 - 2 ; case 6
	.short _021EB6E8 - _021EB5D0 - 2 ; case 7
	.short _021EB70A - _021EB5D0 - 2 ; case 8
	.short _021EB720 - _021EB5D0 - 2 ; case 9
_021EB5E4:
	mov r0, #4
	mov r1, #0x38
	bl FUN_02016998
	mov r1, #0
	mov r2, #0x38
	str r0, [r4, #0xc]
	bl Call_FillMemWithValue
	mov r0, #2
	mov r1, #0
	bl FUN_0201E6E4
	mov r0, #4
	mov r1, #0
	bl FUN_0201E6E4
	mov r0, #8
	mov r1, #0
	bl FUN_0201E6E4
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021EB618:
	mov r0, #1
	mov r1, #0x10
	str r0, [sp]
	add r2, r1, #0
	add r3, r4, #4
	bl MOD05_021E3474
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021EB630:
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _021EB638
_021EB636:
	b _021EB754
_021EB638:
	add r0, r0, #1
	add sp, #0xc
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021EB640:
	mov r0, #5
	mov r1, #0xd
	bl MOD05_021E8860
	str r0, [r5]
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x20]
	bl FUN_0201F008
	mov r2, #1
	add r1, r0, #0
	add r5, #8
	lsl r2, r2, #8
	add r0, r5, #0
	add r2, r1, r2
	mov r3, #0x28
	bl MOD05_021E35B0
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021EB66E:
	add r0, r5, #0
	add r0, #8
	bl MOD05_021E35C0
	add r6, r0, #0
	ldr r0, [r5, #8]
	ldr r1, [r4, #0x10]
	lsl r0, r0, #0x10
	ldr r1, [r1, #0x20]
	lsr r0, r0, #0x10
	bl FUN_0201EEF0
	cmp r6, #1
	bne _021EB754
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	mov r0, #5
	str r0, [r5, #0x34]
	pop {r3, r4, r5, r6, pc}
_021EB698:
	ldr r0, [r5, #0x34]
	sub r0, r0, #1
	str r0, [r5, #0x34]
	bpl _021EB754
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x20]
	bl FUN_0201F010
	mov r3, #8
	str r3, [sp]
	ldr r2, _021EB758 ; =0x0092E000
	add r1, r0, #0
	add r5, #0x1c
	add r0, r5, #0
	sub r2, r1, r2
	lsl r3, r3, #8
	bl MOD05_021E3644
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021EB6C6:
	add r0, r5, #0
	add r0, #0x1c
	bl MOD05_021E36A4
	ldr r1, [r4, #0x10]
	add r6, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r1, [r1, #0x20]
	bl FUN_0201EFE0
	cmp r6, #1
	bne _021EB754
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021EB6E8:
	mov r0, #0x3c
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r1, #0
	str r0, [sp, #8]
	ldr r3, _021EB75C ; =0x00007FFF
	mov r0, #3
	add r2, r1, #0
	bl FUN_0200E1D0
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021EB70A:
	bl FUN_0200E308
	cmp r0, #0
	beq _021EB754
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_021EB720:
	mov r0, #1
	mov r1, #0
	bl FUN_0200E3A0
	add r0, r5, #0
	bl MOD05_021E88C0
	ldr r0, _021EB760 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _021EB73E
	mov r0, #1
	str r0, [r1]
_021EB73E:
	ldr r1, [r4, #0xc]
	mov r0, #4
	bl FUN_02016A8C
	add r0, r6, #0
	bl FUN_0200621C
	mov r0, #1
	mov r1, #0
	bl FUN_0200E3A0
_021EB754:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021EB758: .word 0x0092E000
_021EB75C: .word 0x00007FFF
_021EB760: .word 0x04000050

	thumb_func_start MOD05_021EB764
MOD05_021EB764: ; 0x021EB764
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	str r1, [sp, #0x14]
	ldr r1, [r5]
	add r6, r2, #0
	ldr r4, [r5, #0xc]
	cmp r1, #0xe
	bls _021EB778
	b _021EBB72
_021EB778:
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021EB784: ; jump table
	.short _021EB7A2 - _021EB784 - 2 ; case 0
	.short _021EB848 - _021EB784 - 2 ; case 1
	.short _021EB85E - _021EB784 - 2 ; case 2
	.short _021EB86A - _021EB784 - 2 ; case 3
	.short _021EB8B8 - _021EB784 - 2 ; case 4
	.short _021EB8D6 - _021EB784 - 2 ; case 5
	.short _021EB99C - _021EB784 - 2 ; case 6
	.short _021EB9EE - _021EB784 - 2 ; case 7
	.short _021EBA04 - _021EB784 - 2 ; case 8
	.short _021EBA34 - _021EB784 - 2 ; case 9
	.short _021EBA4A - _021EB784 - 2 ; case 10
	.short _021EBA72 - _021EB784 - 2 ; case 11
	.short _021EBA8A - _021EB784 - 2 ; case 12
	.short _021EBAAA - _021EB784 - 2 ; case 13
	.short _021EBB0E - _021EB784 - 2 ; case 14
_021EB7A2:
	mov r1, #0x1f
	ldr r0, [sp, #0x14]
	lsl r1, r1, #4
	bl FUN_02016998
	mov r2, #0x1f
	str r0, [r5, #0xc]
	mov r1, #0
	lsl r2, r2, #4
	bl Call_FillMemWithValue
	ldr r4, [r5, #0xc]
	mov r1, #1
	add r0, r4, #0
	add r0, #0x44
	add r2, r1, #0
	bl MOD05_021E3E14
	mov r0, #0x17
	str r0, [sp]
	mov r1, #0x18
	str r1, [sp, #4]
	mov r0, #0x19
	str r0, [sp, #8]
	ldr r0, _021EBB4C ; =0x000927C0
	lsl r1, r1, #4
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0x44
	add r1, r4, r1
	mov r2, #0x16
	mov r3, #1
	bl MOD05_021E3E64
	mov r0, #0
	str r0, [sp]
	mov r1, #6
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r1, r1, #6
	mov r3, #0x11
	ldr r2, _021EBB50 ; =0xFFFE0000
	add r0, #0x44
	add r1, r4, r1
	lsl r3, r3, #0xe
	bl MOD05_021E3FC4
	mov r1, #0x6d
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	bl FUN_020200A0
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl FUN_020200EC
	mov r0, #0
	str r0, [sp]
	ldrh r0, [r6, #6]
	ldr r1, [sp, #0x14]
	mov r3, #0xa
	str r0, [sp, #4]
	mov r0, #0x6d
	lsl r0, r0, #2
	ldrh r2, [r6, #4]
	ldr r0, [r4, r0]
	bl MOD05_021E4014
	ldr r0, [r5, #0x10]
	ldr r0, [r0, #8]
	bl MOD05_021E3C00
	bl MOD05_021E4788
	str r0, [r4, #0x40]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EBB72
_021EB848:
	mov r0, #1
	mov r1, #0x10
	str r0, [sp]
	add r2, r1, #0
	add r3, r5, #4
	bl MOD05_021E3474
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EBB72
_021EB85E:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021EB8E6
	add r0, r1, #1
	str r0, [r5]
	b _021EBB72
_021EB86A:
	ldr r3, [r5, #0x10]
	mov r0, #0xd
	ldr r3, [r3, #8]
	mov r1, #0xc
	mov r2, #0xb
	bl MOD05_021E3D20
	mov r0, #0x79
	mov r2, #8
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x1f
	str r0, [sp, #4]
	mov r0, #0x17
	str r0, [sp, #8]
	ldr r1, [r4, #0x40]
	add r0, r5, #0
	add r3, r2, #0
	bl MOD05_021E47BC
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	add r0, #0x2c
	add r2, r1, #0
	mov r3, #0xf
	bl MOD05_021E35EC
	mov r0, #8
	mov r1, #1
	bl FUN_0201E6E4
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EBB72
_021EB8B8:
	bl MOD05_021E35AC
	cmp r0, #0
	beq _021EB8E6
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	ldr r0, [r4, #0x40]
	bl MOD05_021E47A0
	mov r0, #0x7b
	mov r1, #0xa
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _021EBB72
_021EB8D6:
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	blt _021EB8E8
_021EB8E6:
	b _021EBB72
_021EB8E8:
	mov r1, #2
	lsl r1, r1, #0xc
	add r0, sp, #0x18
	add r2, r1, #0
	mov r3, #0
	bl MOD05_021E3FF8
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x18
	bl FUN_02020064
	mov r0, #0
	str r0, [sp]
	mov r0, #0x6e
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #4]
	mov r0, #0x11
	mov r2, #2
	lsl r0, r0, #0xe
	mov r1, #0x62
	lsl r2, r2, #0xc
	mov r3, #0x40
	bl MOD05_021E49F0
	ldr r3, _021EBB54 ; =0x04000048
	mov r0, #0x3f
	ldrh r2, [r3]
	mov r1, #0x1f
	bic r2, r0
	orr r2, r1
	mov r1, #0x20
	orr r2, r1
	strh r2, [r3]
	ldrh r2, [r3, #2]
	bic r2, r0
	mov r0, #0xf
	orr r0, r2
	orr r0, r1
	strh r0, [r3, #2]
	lsl r0, r1, #0x15
	ldr r3, [r0]
	ldr r2, _021EBB58 ; =0xFFFF1FFF
	lsl r1, r1, #8
	and r2, r3
	orr r1, r2
	str r1, [r0]
	mov r3, #4
	str r3, [sp]
	ldr r1, _021EBB50 ; =0xFFFE0000
	ldr r2, [r6]
	add r0, r4, #0
	lsl r3, r3, #0x10
	bl MOD05_021E3644
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl FUN_020200A0
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl FUN_02020238
	mov r0, #0x10
	mov r1, #1
	bl FUN_0201E6E4
	mov r2, #0x11
	ldr r1, [r4]
	add r0, sp, #0x24
	lsl r2, r2, #0xe
	mov r3, #0
	bl MOD05_021E3FF8
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x24
	bl FUN_02020044
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EBB72
_021EB99C:
	add r0, r4, #0
	bl MOD05_021E36A4
	mov r2, #0x11
	add r6, r0, #0
	ldr r1, [r4]
	add r0, sp, #0x24
	lsl r2, r2, #0xe
	mov r3, #0
	bl MOD05_021E3FF8
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x24
	bl FUN_02020044
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0202011C
	mov r1, #0
	str r1, [sp]
	mov r1, #0x6e
	lsl r1, r1, #2
	add r1, r4, r1
	str r1, [sp, #4]
	mov r2, #2
	ldr r0, [r0, #4]
	mov r1, #0x62
	lsl r2, r2, #0xc
	mov r3, #0x40
	bl MOD05_021E49F0
	cmp r6, #1
	bne _021EBA60
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EBB72
_021EB9EE:
	add r0, r4, #0
	add r0, #0x18
	mov r1, #0
	mov r2, #0x10
	mov r3, #3
	bl MOD05_021E35B0
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EBB72
_021EBA04:
	add r0, r4, #0
	add r0, #0x18
	bl MOD05_021E35C0
	add r7, r0, #0
	add r0, r4, #0
	add r0, #0x18
	bl MOD05_021E4AD0
	cmp r7, #1
	bne _021EBA60
	mov r3, #0
	str r3, [sp]
	mov r0, #0x6d
	lsl r0, r0, #2
	ldrh r2, [r6, #4]
	ldr r0, [r4, r0]
	ldr r1, [sp, #0x14]
	bl MOD05_021E3F68
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EBB72
_021EBA34:
	add r0, r4, #0
	add r0, #0x18
	mov r1, #0x10
	mov r2, #0
	mov r3, #3
	bl MOD05_021E35B0
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EBB72
_021EBA4A:
	add r0, r4, #0
	add r0, #0x18
	bl MOD05_021E35C0
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x18
	bl MOD05_021E4AD0
	cmp r6, #1
	beq _021EBA62
_021EBA60:
	b _021EBB72
_021EBA62:
	ldr r0, [r5]
	mov r1, #0x1a
	add r0, r0, #1
	str r0, [r5]
	mov r0, #0x7b
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _021EBB72
_021EBA72:
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bge _021EBB72
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EBB72
_021EBA8A:
	mov r0, #0xf
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r1, #0
	str r0, [sp, #8]
	ldr r3, _021EBB5C ; =0x00007FFF
	mov r0, #3
	add r2, r1, #0
	bl FUN_0200E1D0
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EBB72
_021EBAAA:
	add r0, r4, #0
	add r0, #0x2c
	bl MOD05_021E35FC
	mov r2, #1
	ldr r3, [r4, #0x2c]
	lsl r2, r2, #0xc
	add r1, r3, r2
	add r2, r3, r2
	add r0, sp, #0x18
	mov r3, #0
	bl MOD05_021E3FF8
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x18
	bl FUN_02020064
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0202011C
	add r6, r0, #0
	ldr r0, [r4, #0x2c]
	mov r1, #0x44
	mov r2, #0x1e
	bl MOD05_021E4A3C
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x6e
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #4]
	ldr r0, [r6, #4]
	ldr r2, [sp, #0x1c]
	mov r3, #0x40
	bl MOD05_021E49F0
	bl FUN_0200E308
	cmp r0, #0
	beq _021EBB72
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EBB72
_021EBB0E:
	ldr r1, _021EBB5C ; =0x00007FFF
	mov r0, #1
	bl FUN_0200E3A0
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _021EBB20
	mov r0, #1
	str r0, [r1]
_021EBB20:
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0201FFC8
	mov r1, #6
	add r0, r4, #0
	lsl r1, r1, #6
	add r0, #0x44
	add r1, r4, r1
	bl MOD05_021E3F3C
	add r4, #0x44
	add r0, r4, #0
	bl MOD05_021E3E44
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021EBB58 ; =0xFFFF1FFF
	b _021EBB60
	nop
_021EBB4C: .word 0x000927C0
_021EBB50: .word 0xFFFE0000
_021EBB54: .word 0x04000048
_021EBB58: .word 0xFFFF1FFF
_021EBB5C: .word 0x00007FFF
_021EBB60:
	and r0, r1
	str r0, [r2]
	ldr r1, [r5, #0xc]
	mov r0, #4
	bl FUN_02016A8C
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EBB72:
	mov r1, #0x79
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #1
	bne _021EBBB6
	ldr r3, [r4, #0x2c]
	mov r0, #0
	str r3, [sp]
	str r0, [sp, #4]
	mov r0, #0x80
	str r0, [sp, #8]
	mov r0, #0x44
	str r0, [sp, #0xc]
	add r0, r1, #4
	ldr r0, [r4, r0]
	sub r1, #0x24
	str r0, [sp, #0x10]
	add r0, r4, r1
	ldr r1, [r5, #0x10]
	mov r2, #3
	ldr r1, [r1, #8]
	bl MOD05_021E3DA0
	mov r3, #0x7a
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	sub r0, #0xf
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x17
	sub r1, r1, r2
	mov r0, #0x17
	ror r1, r0
	add r0, r2, r1
	str r0, [r4, r3]
_021EBBB6:
	ldr r0, [r5]
	cmp r0, #0xe
	beq _021EBBC2
	ldr r0, [r4, #0x44]
	bl FUN_0201FDEC
_021EBBC2:
	mov r0, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021EBBC8
MOD05_021EBBC8: ; 0x021EBBC8
	push {r4, lr}
	ldr r2, _021EBBE4 ; =0x021F7938
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl MOD05_021EB764
	cmp r0, #1
	bne _021EBBE0
	add r0, r4, #0
	bl FUN_0200621C
_021EBBE0:
	pop {r4, pc}
	nop
_021EBBE4: .word 0x021F7938

	thumb_func_start MOD05_021EBBE8
MOD05_021EBBE8: ; 0x021EBBE8
	push {r4, lr}
	ldr r2, _021EBC04 ; =0x021F7940
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl MOD05_021EB764
	cmp r0, #1
	bne _021EBC00
	add r0, r4, #0
	bl FUN_0200621C
_021EBC00:
	pop {r4, pc}
	nop
_021EBC04: .word 0x021F7940

	thumb_func_start MOD05_021EBC08
MOD05_021EBC08: ; 0x021EBC08
	push {r4, lr}
	ldr r2, _021EBC24 ; =0x021F7948
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl MOD05_021EB764
	cmp r0, #1
	bne _021EBC20
	add r0, r4, #0
	bl FUN_0200621C
_021EBC20:
	pop {r4, pc}
	nop
_021EBC24: .word 0x021F7948

	thumb_func_start MOD05_021EBC28
MOD05_021EBC28: ; 0x021EBC28
	push {r4, lr}
	ldr r2, _021EBC44 ; =0x021F7950
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl MOD05_021EB764
	cmp r0, #1
	bne _021EBC40
	add r0, r4, #0
	bl FUN_0200621C
_021EBC40:
	pop {r4, pc}
	nop
_021EBC44: .word 0x021F7950

	thumb_func_start MOD05_021EBC48
MOD05_021EBC48: ; 0x021EBC48
	push {r4, lr}
	ldr r2, _021EBC64 ; =0x021F7958
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl MOD05_021EB764
	cmp r0, #1
	bne _021EBC60
	add r0, r4, #0
	bl FUN_0200621C
_021EBC60:
	pop {r4, pc}
	nop
_021EBC64: .word 0x021F7958

	thumb_func_start MOD05_021EBC68
MOD05_021EBC68: ; 0x021EBC68
	push {r4, lr}
	ldr r2, _021EBC84 ; =0x021F7960
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl MOD05_021EB764
	cmp r0, #1
	bne _021EBC80
	add r0, r4, #0
	bl FUN_0200621C
_021EBC80:
	pop {r4, pc}
	nop
_021EBC84: .word 0x021F7960

	thumb_func_start MOD05_021EBC88
MOD05_021EBC88: ; 0x021EBC88
	push {r4, lr}
	ldr r2, _021EBCA4 ; =0x021F7968
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl MOD05_021EB764
	cmp r0, #1
	bne _021EBCA0
	add r0, r4, #0
	bl FUN_0200621C
_021EBCA0:
	pop {r4, pc}
	nop
_021EBCA4: .word 0x021F7968

	thumb_func_start MOD05_021EBCA8
MOD05_021EBCA8: ; 0x021EBCA8
	push {r4, lr}
	ldr r2, _021EBCC4 ; =0x021F7970
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl MOD05_021EB764
	cmp r0, #1
	bne _021EBCC0
	add r0, r4, #0
	bl FUN_0200621C
_021EBCC0:
	pop {r4, pc}
	nop
_021EBCC4: .word 0x021F7970

	thumb_func_start MOD05_021EBCC8
MOD05_021EBCC8: ; 0x021EBCC8
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl FUN_020238F4
	bl FUN_020239CC
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EBCD8
MOD05_021EBCD8: ; 0x021EBCD8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r5, r0, #0
	ldr r0, [r5]
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	ldr r4, [r5, #0xc]
	cmp r0, #0x13
	bls _021EBCEC
	b _021EC3A0
_021EBCEC:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EBCF8: ; jump table
	.short _021EBD20 - _021EBCF8 - 2 ; case 0
	.short _021EBEC0 - _021EBCF8 - 2 ; case 1
	.short _021EBED6 - _021EBCF8 - 2 ; case 2
	.short _021EBEE4 - _021EBCF8 - 2 ; case 3
	.short _021EBF6C - _021EBCF8 - 2 ; case 4
	.short _021EBFBA - _021EBCF8 - 2 ; case 5
	.short _021EBFD0 - _021EBCF8 - 2 ; case 6
	.short _021EC002 - _021EBCF8 - 2 ; case 7
	.short _021EC018 - _021EBCF8 - 2 ; case 8
	.short _021EC038 - _021EBCF8 - 2 ; case 9
	.short _021EC0D4 - _021EBCF8 - 2 ; case 10
	.short _021EC122 - _021EBCF8 - 2 ; case 11
	.short _021EC138 - _021EBCF8 - 2 ; case 12
	.short _021EC16A - _021EBCF8 - 2 ; case 13
	.short _021EC180 - _021EBCF8 - 2 ; case 14
	.short _021EC19E - _021EBCF8 - 2 ; case 15
	.short _021EC1E8 - _021EBCF8 - 2 ; case 16
	.short _021EC21C - _021EBCF8 - 2 ; case 17
	.short _021EC284 - _021EBCF8 - 2 ; case 18
	.short _021EC342 - _021EBCF8 - 2 ; case 19
_021EBD20:
	mov r1, #0x9b
	ldr r0, [sp, #0x10]
	lsl r1, r1, #2
	bl FUN_02016998
	mov r2, #0x9b
	str r0, [r5, #0xc]
	mov r1, #0
	lsl r2, r2, #2
	bl Call_FillMemWithValue
	ldr r4, [r5, #0xc]
	mov r1, #4
	add r0, r4, #0
	add r0, #0x44
	mov r2, #3
	bl MOD05_021E3E14
	mov r0, #0x17
	str r0, [sp]
	mov r1, #0x18
	str r1, [sp, #4]
	mov r0, #0x19
	str r0, [sp, #8]
	ldr r0, _021EC0C0 ; =0x000927C0
	lsl r1, r1, #4
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0x44
	add r1, r4, r1
	mov r2, #0x16
	mov r3, #1
	bl MOD05_021E3E64
	mov r0, #0x17
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x19
	str r0, [sp, #8]
	ldr r0, _021EC0C4 ; =0x000927C1
	mov r1, #0x6d
	str r0, [sp, #0xc]
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #0x44
	add r1, r4, r1
	mov r2, #0x16
	mov r3, #1
	bl MOD05_021E3E64
	mov r0, #0xf
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	ldr r0, _021EC0C8 ; =0x000927C2
	mov r1, #0x7a
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x14]
	add r0, r4, #0
	lsl r1, r1, #2
	ldrb r2, [r2, #6]
	add r0, #0x44
	add r1, r4, r1
	mov r3, #0xc
	bl MOD05_021E3E64
	mov r1, #2
	lsl r1, r1, #0xc
	add r0, sp, #0x34
	add r2, r1, #0
	mov r3, #0
	bl MOD05_021E3FF8
	mov r0, #6
	lsl r0, r0, #6
	add r0, r4, r0
	str r0, [sp, #0x18]
	str r0, [sp, #0x20]
	add r0, r4, #0
	str r0, [sp, #0x24]
	add r0, #0x44
	mov r7, #0
	add r6, r4, #0
	str r0, [sp, #0x24]
_021EBDCE:
	cmp r7, #3
	bge _021EBDDA
	mov r0, #0
	ldr r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	b _021EBDEA
_021EBDDA:
	sub r1, r7, #1
	mov r0, #0x34
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x20]
	add r1, r0, r2
	mov r0, #1
	str r0, [sp, #0x1c]
_021EBDEA:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r2, #0
	ldr r0, [sp, #0x24]
	add r3, r2, #0
	bl MOD05_021E3FC4
	mov r1, #0x87
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r0, r1, #0
	ldr r0, [r6, r0]
	mov r1, #0
	bl FUN_020200A0
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x1c]
	bl FUN_02020130
	ldr r0, [sp, #0x18]
	add r7, r7, #1
	add r0, #0x34
	add r6, r6, #4
	str r0, [sp, #0x18]
	cmp r7, #4
	blt _021EBDCE
	ldr r0, [r5, #0x10]
	bl MOD05_021EBCC8
	cmp r0, #0
	bne _021EBE48
	mov r2, #0
	str r2, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [sp, #0x10]
	mov r3, #0xa
	bl MOD05_021E4014
	mov r1, #0
	b _021EBE60
_021EBE48:
	mov r0, #0
	str r0, [sp]
	mov r2, #1
	mov r0, #0x87
	str r2, [sp, #4]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [sp, #0x10]
	mov r3, #0xa
	bl MOD05_021E4014
	mov r1, #1
_021EBE60:
	mov r0, #0x99
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl FUN_020200EC
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x34
	bl FUN_02020064
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0x14]
	mov r0, #0x22
	lsl r0, r0, #4
	ldrb r2, [r2, #5]
	ldr r0, [r4, r0]
	ldr r1, [sp, #0x10]
	mov r3, #0xa
	bl MOD05_021E4014
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #2
	bl FUN_020200EC
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0x34
	bl FUN_02020064
	mov r0, #0x10
	mov r1, #1
	bl FUN_0201E6E4
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EC3A0
_021EBEC0:
	mov r0, #1
	mov r1, #0x10
	str r0, [sp]
	add r2, r1, #0
	add r3, r5, #4
	bl MOD05_021E3474
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EC3A0
_021EBED6:
	ldr r1, [r5, #4]
	cmp r1, #0
	bne _021EBEDE
	b _021EC3A0
_021EBEDE:
	add r0, r0, #1
	str r0, [r5]
	b _021EC3A0
_021EBEE4:
	mov r0, #6
	mov r2, #0x2e
	mov r3, #1
	str r0, [sp]
	ldr r1, _021EC0CC ; =0xFFFB0000
	add r0, r4, #0
	lsl r2, r2, #0xc
	lsl r3, r3, #0x12
	bl MOD05_021E3644
	mov r2, #0x72
	ldr r1, [r4]
	add r0, sp, #0x40
	lsl r2, r2, #0xc
	mov r3, #0
	bl MOD05_021E3FF8
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x40
	bl FUN_02020044
	mov r0, #9
	ldr r1, [sp, #0x44]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x44]
	mov r0, #1
	ldr r1, [sp, #0x40]
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #0x40]
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x40
	bl FUN_02020044
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl FUN_020200A0
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl FUN_020200A0
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl FUN_020200BC
	mov r0, #0x89
	lsl r0, r0, #2
	mov r1, #1
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl FUN_020200D8
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EC3A0
_021EBF6C:
	add r0, r4, #0
	bl MOD05_021E36A4
	mov r2, #0x72
	add r6, r0, #0
	ldr r1, [r4]
	add r0, sp, #0x40
	lsl r2, r2, #0xc
	mov r3, #0
	bl MOD05_021E3FF8
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x40
	bl FUN_02020044
	mov r0, #9
	ldr r1, [sp, #0x44]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x44]
	mov r0, #1
	ldr r1, [sp, #0x40]
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #0x40]
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x40
	bl FUN_02020044
	cmp r6, #1
	bne _021EC02E
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EC3A0
_021EBFBA:
	add r0, r4, #0
	add r0, #0x30
	mov r1, #0
	mov r2, #0x10
	mov r3, #3
	bl MOD05_021E35B0
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EC3A0
_021EBFD0:
	add r0, r4, #0
	add r0, #0x30
	bl MOD05_021E35C0
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x30
	bl MOD05_021E4AD0
	cmp r6, #1
	bne _021EC02E
	mov r3, #0
	mov r2, #0x87
	str r3, [sp]
	lsl r2, r2, #2
	ldr r0, [r4, r2]
	add r2, #0x48
	ldr r1, [sp, #0x10]
	ldr r2, [r4, r2]
	bl MOD05_021E3F68
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EC3A0
_021EC002:
	add r0, r4, #0
	add r0, #0x30
	mov r1, #0x10
	mov r2, #0
	mov r3, #3
	bl MOD05_021E35B0
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EC3A0
_021EC018:
	add r0, r4, #0
	add r0, #0x30
	bl MOD05_021E35C0
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x30
	bl MOD05_021E4AD0
	cmp r6, #1
	beq _021EC030
_021EC02E:
	b _021EC3A0
_021EC030:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EC3A0
_021EC038:
	mov r0, #6
	mov r1, #0x15
	mov r2, #0xd
	str r0, [sp]
	ldr r3, _021EC0D0 ; =0xFFFC0000
	add r0, r4, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	bl MOD05_021E3644
	mov r2, #0x11
	ldr r1, [r4]
	add r0, sp, #0x40
	lsl r2, r2, #0xe
	mov r3, #0
	bl MOD05_021E3FF8
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0x40
	bl FUN_02020044
	mov r0, #9
	ldr r1, [sp, #0x44]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x44]
	mov r0, #1
	ldr r1, [sp, #0x40]
	lsl r0, r0, #0x10
	sub r0, r1, r0
	str r0, [sp, #0x40]
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x40
	bl FUN_02020044
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl FUN_020200A0
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl FUN_020200A0
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl FUN_020200BC
	mov r0, #0x8a
	lsl r0, r0, #2
	mov r1, #1
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl FUN_020200D8
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EC3A0
	.balign 4, 0
_021EC0C0: .word 0x000927C0
_021EC0C4: .word 0x000927C1
_021EC0C8: .word 0x000927C2
_021EC0CC: .word 0xFFFB0000
_021EC0D0: .word 0xFFFC0000
_021EC0D4:
	add r0, r4, #0
	bl MOD05_021E36A4
	mov r2, #0x11
	add r6, r0, #0
	ldr r1, [r4]
	add r0, sp, #0x40
	lsl r2, r2, #0xe
	mov r3, #0
	bl MOD05_021E3FF8
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0x40
	bl FUN_02020044
	mov r0, #9
	ldr r1, [sp, #0x44]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x44]
	mov r0, #1
	ldr r1, [sp, #0x40]
	lsl r0, r0, #0x10
	sub r0, r1, r0
	str r0, [sp, #0x40]
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x40
	bl FUN_02020044
	cmp r6, #1
	bne _021EC212
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EC3A0
_021EC122:
	add r0, r4, #0
	add r0, #0x30
	mov r1, #0
	mov r2, #0x10
	mov r3, #3
	bl MOD05_021E35B0
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EC3A0
_021EC138:
	add r0, r4, #0
	add r0, #0x30
	bl MOD05_021E35C0
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x30
	bl MOD05_021E4AD0
	cmp r6, #1
	bne _021EC212
	mov r3, #0
	mov r0, #0x22
	ldr r2, [sp, #0x14]
	str r3, [sp]
	lsl r0, r0, #4
	ldrb r2, [r2, #5]
	ldr r0, [r4, r0]
	ldr r1, [sp, #0x10]
	bl MOD05_021E3F68
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EC3A0
_021EC16A:
	add r0, r4, #0
	add r0, #0x30
	mov r1, #0x10
	mov r2, #0
	mov r3, #3
	bl MOD05_021E35B0
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EC3A0
_021EC180:
	add r0, r4, #0
	add r0, #0x30
	bl MOD05_021E35C0
	add r6, r0, #0
	add r0, r4, #0
	add r0, #0x30
	bl MOD05_021E4AD0
	cmp r6, #1
	bne _021EC212
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EC3A0
_021EC19E:
	ldr r0, [r5, #0x10]
	mov r1, #0x8b
	ldr r0, [r0, #0x20]
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	add r0, sp, #0x2c
	bl FUN_0201F014
	add r1, sp, #0x2c
	mov r2, #0x92
	ldrh r0, [r1]
	lsl r2, r2, #2
	strh r0, [r4, r2]
	ldrh r3, [r1, #2]
	add r0, r2, #2
	strh r3, [r4, r0]
	ldrh r3, [r1, #4]
	add r0, r2, #4
	strh r3, [r4, r0]
	ldrh r1, [r1, #6]
	add r0, r2, #6
	ldr r3, [sp, #0x14]
	strh r1, [r4, r0]
	ldrh r1, [r4, r2]
	add r2, #8
	add r0, r4, r2
	ldr r2, [sp, #0x14]
	ldrb r3, [r3, #4]
	ldr r2, [r2]
	add r2, r1, r2
	bl MOD05_021E35B0
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EC3A0
_021EC1E8:
	mov r0, #0x25
	lsl r0, r0, #4
	add r0, r4, r0
	bl MOD05_021E35C0
	mov r1, #0x25
	lsl r1, r1, #4
	add r6, r0, #0
	add r0, r1, #0
	ldr r2, [r4, r1]
	sub r0, #8
	strh r2, [r4, r0]
	add r0, r1, #0
	sub r1, #0x24
	sub r0, #8
	ldr r1, [r4, r1]
	add r0, r4, r0
	bl FUN_0201EF90
	cmp r6, #1
	beq _021EC214
_021EC212:
	b _021EC3A0
_021EC214:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EC3A0
_021EC21C:
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0201F010
	add r1, r0, #0
	mov r0, #0x1e
	str r0, [sp]
	mov r0, #0x23
	mov r2, #0xfa
	lsl r0, r0, #4
	lsl r2, r2, #0xc
	add r0, r4, r0
	sub r2, r1, r2
	mov r3, #0
	bl MOD05_021E3644
	mov r0, #0x1e
	mov r1, #0
	mov r2, #6
	str r0, [sp]
	add r0, r4, #0
	lsl r2, r2, #0x10
	add r3, r1, #0
	bl MOD05_021E3644
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #6
	add r0, #0x18
	lsl r2, r2, #0x10
	add r3, r1, #0
	bl MOD05_021E3644
	mov r0, #0x1e
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r1, #0
	str r0, [sp, #8]
	ldr r3, _021EC3B4 ; =0x00007FFF
	mov r0, #3
	add r2, r1, #0
	bl FUN_0200E1D0
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EC3A0
_021EC284:
	mov r0, #0x23
	lsl r0, r0, #4
	add r0, r4, r0
	bl MOD05_021E36A4
	add r0, r4, #0
	bl MOD05_021E36A4
	add r0, r4, #0
	add r0, #0x18
	bl MOD05_021E36A4
	mov r1, #0x23
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	sub r1, r1, #4
	ldr r1, [r4, r1]
	bl FUN_0201EFE0
	mov r1, #0x2e
	ldr r2, [r4]
	lsl r1, r1, #0xc
	sub r1, r1, r2
	mov r2, #0x72
	ldr r3, [r4, #0x18]
	lsl r2, r2, #0xc
	add r2, r3, r2
	add r0, sp, #0x40
	mov r3, #0
	bl MOD05_021E3FF8
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x40
	bl FUN_02020044
	mov r0, #9
	ldr r1, [sp, #0x44]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x44]
	mov r0, #1
	ldr r1, [sp, #0x40]
	lsl r0, r0, #0x10
	add r0, r1, r0
	str r0, [sp, #0x40]
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x40
	bl FUN_02020044
	mov r1, #0xd
	ldr r2, [r4]
	lsl r1, r1, #0x10
	add r1, r2, r1
	mov r2, #0x11
	ldr r3, [r4, #0x18]
	lsl r2, r2, #0xe
	sub r2, r2, r3
	add r0, sp, #0x40
	mov r3, #0
	bl MOD05_021E3FF8
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0x40
	bl FUN_02020044
	mov r0, #9
	ldr r1, [sp, #0x44]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x44]
	mov r0, #1
	ldr r1, [sp, #0x40]
	lsl r0, r0, #0x10
	sub r0, r1, r0
	str r0, [sp, #0x40]
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x40
	bl FUN_02020044
	bl FUN_0200E308
	cmp r0, #0
	beq _021EC3A0
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _021EC3A0
_021EC342:
	ldr r1, _021EC3B4 ; =0x00007FFF
	mov r0, #1
	bl FUN_0200E3A0
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _021EC354
	mov r0, #1
	str r0, [r1]
_021EC354:
	mov r7, #0
	add r6, r4, #0
_021EC358:
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_0201FFC8
	add r7, r7, #1
	add r6, r6, #4
	cmp r7, #4
	blt _021EC358
	mov r0, #6
	lsl r0, r0, #6
	add r6, r4, r0
	add r0, r4, #0
	str r0, [sp, #0x28]
	add r0, #0x44
	mov r7, #0
	str r0, [sp, #0x28]
_021EC37A:
	ldr r0, [sp, #0x28]
	add r1, r6, #0
	bl MOD05_021E3F3C
	add r7, r7, #1
	add r6, #0x34
	cmp r7, #3
	blt _021EC37A
	add r4, #0x44
	add r0, r4, #0
	bl MOD05_021E3E44
	ldr r1, [r5, #0xc]
	mov r0, #4
	bl FUN_02016A8C
	add sp, #0x4c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021EC3A0:
	ldr r0, [r5]
	cmp r0, #0x13
	beq _021EC3AC
	ldr r0, [r4, #0x44]
	bl FUN_0201FDEC
_021EC3AC:
	mov r0, #0
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_021EC3B4: .word 0x00007FFF

	thumb_func_start MOD05_021EC3B8
MOD05_021EC3B8: ; 0x021EC3B8
	push {r4, lr}
	ldr r2, _021EC3D4 ; =0x021F7910
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl MOD05_021EBCD8
	cmp r0, #1
	bne _021EC3D0
	add r0, r4, #0
	bl FUN_0200621C
_021EC3D0:
	pop {r4, pc}
	nop
_021EC3D4: .word 0x021F7910

	thumb_func_start MOD05_021EC3D8
MOD05_021EC3D8: ; 0x021EC3D8
	push {r4, lr}
	ldr r2, _021EC3F4 ; =0x021F7918
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl MOD05_021EBCD8
	cmp r0, #1
	bne _021EC3F0
	add r0, r4, #0
	bl FUN_0200621C
_021EC3F0:
	pop {r4, pc}
	nop
_021EC3F4: .word 0x021F7918

	thumb_func_start MOD05_021EC3F8
MOD05_021EC3F8: ; 0x021EC3F8
	push {r4, lr}
	ldr r2, _021EC414 ; =0x021F7920
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl MOD05_021EBCD8
	cmp r0, #1
	bne _021EC410
	add r0, r4, #0
	bl FUN_0200621C
_021EC410:
	pop {r4, pc}
	nop
_021EC414: .word 0x021F7920

	thumb_func_start MOD05_021EC418
MOD05_021EC418: ; 0x021EC418
	push {r4, lr}
	ldr r2, _021EC434 ; =0x021F7928
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl MOD05_021EBCD8
	cmp r0, #1
	bne _021EC430
	add r0, r4, #0
	bl FUN_0200621C
_021EC430:
	pop {r4, pc}
	nop
_021EC434: .word 0x021F7928

	thumb_func_start MOD05_021EC438
MOD05_021EC438: ; 0x021EC438
	push {r4, lr}
	ldr r2, _021EC454 ; =0x021F7930
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #4
	bl MOD05_021EBCD8
	cmp r0, #1
	bne _021EC450
	add r0, r4, #0
	bl FUN_0200621C
_021EC450:
	pop {r4, pc}
	nop
_021EC454: .word 0x021F7930

	thumb_func_start MOD05_021EC458
MOD05_021EC458: ; 0x021EC458
	push {r3, lr}
	bl FUN_02023C74
	bl FUN_02023C7C
	pop {r3, pc}

	thumb_func_start MOD05_021EC464
MOD05_021EC464: ; 0x021EC464
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r6, r0, #0
	add r5, r4, #0
	mov r7, #5
_021EC46E:
	add r0, r6, #0
	add r1, r5, #0
	bl FUN_02023C74
	bl FUN_02023C7C
	add r1, r7, #0
	mov r2, #0
	bl FUN_020672BC
	cmp r0, #0
	beq _021EC48C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_021EC48C:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #2
	blo _021EC46E
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EC49C
MOD05_021EC49C: ; 0x021EC49C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021EC4D8 ; =0x021FD680
	mov r4, #0
	str r5, [r0]
	mov r6, #5
	add r7, r4, #0
_021EC4AA:
	add r0, r5, #0
	add r1, r4, #0
	bl FUN_02023C74
	bl FUN_02023C7C
	add r1, r6, #0
	add r2, r7, #0
	bl FUN_020672BC
	cmp r0, #0
	bne _021EC4C6
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EC4C6:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021EC4AA
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EC4D8: .word 0x021FD680

	thumb_func_start MOD05_021EC4DC
MOD05_021EC4DC: ; 0x021EC4DC
	push {r3, lr}
	mov r1, #6
	mov r2, #0
	bl FUN_020672BC
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl FUN_0206EA98
	pop {r3, pc}

	thumb_func_start MOD05_021EC4F0
MOD05_021EC4F0: ; 0x021EC4F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r2, #0
	add r6, r0, #0
	str r1, [sp]
	add r7, r3, #0
	bl FUN_0206B9B0
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_02023C80
	str r0, [sp, #8]
	add r0, r5, #0
	bl FUN_02023C7C
	str r0, [sp, #4]
	add r0, r7, #0
	bl FUN_020238F4
	bl FUN_0202398C
	add r0, r4, #0
	mov r1, #0x74
	add r2, sp, #0xc
	bl FUN_020671BC
	add r0, r4, #0
	bl FUN_020690E4
	bl MOD05_021EC4DC
	cmp r0, #0
	beq _021EC544
	ldr r0, [sp, #8]
	bl FUN_02023C8C
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0xa9
	bl FUN_020671BC
_021EC544:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl FUN_02069BB4
	add r0, r5, #0
	mov r1, #0
	bl FUN_02023CA0
	ldr r1, [sp]
	add r0, r6, #0
	bl FUN_0206B938
	ldr r1, _021EC578 ; =0x000001B9
	add r0, r6, #0
	bl FUN_0206BAE4
	cmp r0, #0
	bne _021EC572
	add r0, r7, #0
	bl FUN_02029EF8
	bl FUN_02029F08
_021EC572:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_021EC578: .word 0x000001B9

	thumb_func_start MOD05_021EC57C
MOD05_021EC57C: ; 0x021EC57C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r3, #0
	add r5, r0, #0
	add r0, r7, #0
	add r6, r1, #0
	add r4, r2, #0
	bl FUN_02029FC8
	mov r1, #0x28
	bl FUN_0202A0E8
	add r0, r4, #0
	bl MOD05_021EC49C
	add r1, r0, #0
	add r0, r4, #0
	bl FUN_02023C74
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl MOD05_021EC4F0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EC5B0
MOD05_021EC5B0: ; 0x021EC5B0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov r1, #0
	bl FUN_02023C74
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl FUN_02023C74
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_02023C7C
	add r6, r0, #0
	add r0, r4, #0
	bl FUN_02023C7C
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl FUN_020672BC
	cmp r0, #0
	bne _021EC600
	add r0, r7, #0
	mov r1, #5
	mov r2, #0
	bl FUN_020672BC
	cmp r0, #0
	beq _021EC600
	add r0, r5, #0
	add r1, r4, #0
	bl FUN_02023CF0
	add r0, r4, #0
	bl FUN_02023D3C
_021EC600:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EC604
MOD05_021EC604: ; 0x021EC604
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #8]
	add r4, sp, #8
	add r6, sp, #4
	add r7, sp, #4
_021EC616:
	add r0, r5, #0
	bl FUN_020690E8
	cmp r0, #0
	beq _021EC658
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl FUN_02069818
	cmp r0, #0
	beq _021EC64E
_021EC632:
	ldr r1, _021EC664 ; =0x0000FFFF
	cmp r0, r1
	bne _021EC640
	ldrh r1, [r7]
	add r0, r5, #0
	bl FUN_02069708
_021EC640:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl FUN_02069818
	cmp r0, #0
	bne _021EC632
_021EC64E:
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #0x64
	blt _021EC616
_021EC658:
	add r0, r5, #0
	bl FUN_02066ED8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021EC664: .word 0x0000FFFF

	thumb_func_start MOD05_021EC668
MOD05_021EC668: ; 0x021EC668
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r6, r1, #0
	mov r0, #4
	add r7, r2, #0
	bl FUN_020669C0
	add r4, r0, #0
	add r0, r6, #0
	bl FUN_02023C7C
	add r5, r0, #0
	add r0, r6, #0
	bl FUN_02023C80
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0
	add r2, r5, #0
	bl FUN_0200ACF8
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl FUN_020672BC
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r0, r5, #0
	add r1, r4, #0
	bl FUN_02069A64
	add r0, r4, #0
	mov r1, #0xa0
	mov r2, #0
	bl FUN_020671BC
	cmp r0, #0x64
	beq _021EC6E0
	add r0, r4, #0
	mov r1, #8
	mov r2, #0
	bl FUN_020671BC
	str r0, [sp, #8]
	add r0, r6, #0
	bl FUN_02023C84
	ldr r1, [sp, #8]
	add r2, sp, #8
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #8
	bl FUN_02067830
	add r0, r4, #0
	bl MOD05_021EC604
_021EC6E0:
	add r0, r5, #0
	bl MOD05_021EC4DC
	cmp r0, #0
	beq _021EC6FA
	ldr r0, [sp, #4]
	bl FUN_02023C8C
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0xa9
	bl FUN_02067830
_021EC6FA:
	ldr r0, [sp]
	add r1, r4, #0
	bl FUN_0206B900
	add r0, r5, #0
	bl FUN_020669A0
	add r0, r6, #0
	mov r1, #0
	bl FUN_02023CA0
	add r0, r4, #0
	bl FUN_02016A18
	add r0, r7, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021EC71C
MOD05_021EC71C: ; 0x021EC71C
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	add r0, r6, #0
	add r1, r3, #0
	bl FUN_02023C74
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl MOD05_021EC668
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r6, #0
	bl MOD05_021EC5B0
	add r0, r4, #0
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021EC744
MOD05_021EC744: ; 0x021EC744
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #4
	add r5, r1, #0
	bl FUN_020669C0
	add r7, r0, #0
	bl FUN_020690E4
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl FUN_02069BA0
	add r0, r4, #0
	mov r1, #8
	mov r2, #0
	bl FUN_020672BC
	str r0, [sp]
	add r0, r0, r5
	str r0, [sp]
	add r0, r4, #0
	mov r1, #8
	add r2, sp, #0
	bl FUN_02067960
	add r0, r4, #0
	bl FUN_020687C8
	add r4, r0, #0
	add r0, r7, #0
	bl FUN_02016A18
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021EC78C
MOD05_021EC78C: ; 0x021EC78C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl FUN_02023C7C
	add r6, r0, #0
	bl FUN_020687C8
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	bl FUN_02023C84
	add r1, r0, #0
	add r0, r6, #0
	bl MOD05_021EC744
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	sub r0, r0, r4
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021EC7B4
MOD05_021EC7B4: ; 0x021EC7B4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl FUN_02023C7C
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_02023C84
	add r1, r0, #0
	add r0, r4, #0
	bl MOD05_021EC744
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EC7D4
MOD05_021EC7D4: ; 0x021EC7D4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	add r5, r1, #0
	bl FUN_02023C7C
	add r6, r0, #0
	add r0, r4, #0
	bl MOD05_021EC78C
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #3
	str r1, [sp, #4]
	bl FUN_0200AD38
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl FUN_0200ACF8
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EC810
MOD05_021EC810: ; 0x021EC810
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	add r5, r1, #0
	bl FUN_02023C7C
	add r6, r0, #0
	add r0, r4, #0
	bl MOD05_021EC78C
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl FUN_0200ACF8
	add r1, r4, #1
	mov r0, #0x64
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #5
	str r1, [sp, #4]
	bl FUN_0200AD38
	add r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021EC854
MOD05_021EC854: ; 0x021EC854
	push {r4, lr}
	add r4, r2, #0
	bl FUN_02023C74
	add r1, r4, #0
	bl MOD05_021EC810
	pop {r4, pc}

	thumb_func_start MOD05_021EC864
MOD05_021EC864: ; 0x021EC864
	push {r3, r4, r5, lr}
	add r5, r2, #0
	bl FUN_02023C74
	add r4, r0, #0
	bl FUN_02023C7C
	mov r1, #5
	mov r2, #0
	bl FUN_020672BC
	cmp r0, #0
	beq _021EC888
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021EC7D4
	pop {r3, r4, r5, pc}
_021EC888:
	mov r0, #0
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021EC88C
MOD05_021EC88C: ; 0x021EC88C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	bl MOD05_021EC458
	str r0, [r4]
	add r0, r5, #0
	mov r1, #1
	bl MOD05_021EC458
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EC8A8
MOD05_021EC8A8: ; 0x021EC8A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r1, #0
	mvn r1, r1
	str r1, [sp]
	add r1, sp, #4
	bl MOD05_021EC88C
	mov r4, #0
	add r5, sp, #4
_021EC8BC:
	ldr r0, [r5]
	bl FUN_020689E8
	cmp r0, #1
	bne _021EC8C8
	str r4, [sp]
_021EC8C8:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _021EC8BC
	mov r7, #0
	add r6, r7, #0
	add r4, sp, #4
	add r5, sp, #0xc
_021EC8D8:
	ldr r0, [r4]
	mov r1, #5
	mov r2, #0
	bl FUN_020672BC
	str r0, [r5]
	cmp r0, #0x84
	bne _021EC8EC
	add r7, r7, #1
	str r6, [sp]
_021EC8EC:
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #2
	blt _021EC8D8
	cmp r7, #2
	bne _021EC90E
	bl FUN_0201B9EC
	ldr r1, _021EC940 ; =0x00007FFF
	cmp r0, r1
	blo _021EC90A
	mov r0, #0
	str r0, [sp]
	b _021EC90E
_021EC90A:
	mov r0, #1
	str r0, [sp]
_021EC90E:
	ldr r0, [sp]
	mov r2, #0
	lsl r1, r0, #2
	add r0, sp, #4
	ldr r0, [r0, r1]
	mov r1, #6
	bl FUN_020672BC
	cmp r0, #0xe5
	bne _021EC938
	bl FUN_0201B9EC
	ldr r1, _021EC940 ; =0x00007FFF
	cmp r0, r1
	blo _021EC932
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
_021EC932:
	ldr r0, [sp]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021EC938:
	mov r0, #0
	mvn r0, r0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021EC940: .word 0x00007FFF

	thumb_func_start MOD05_021EC944
MOD05_021EC944: ; 0x021EC944
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	mov r5, #0
	bl MOD05_021EC8A8
	add r1, r0, #0
	bpl _021EC960
	bl FUN_0201BA60
	add r1, r0, #0
	ldr r0, [sp]
	bl FUN_02023CB8
	pop {r3, r4, r5, r6, r7, pc}
_021EC960:
	ldr r0, [sp]
	bl MOD05_021EC458
	add r1, r5, #0
	add r2, r1, #0
	bl FUN_020672BC
	bl FUN_02068884
	mov r7, #0x96
	add r6, r0, #0
	lsl r7, r7, #4
_021EC978:
	bl FUN_0201BA60
	add r4, r0, #0
	bl FUN_02068884
	cmp r6, r0
	bne _021EC98A
	cmp r4, #0
	bne _021EC990
_021EC98A:
	add r5, r5, #1
	cmp r5, r7
	ble _021EC978
_021EC990:
	ldr r0, [sp]
	add r1, r4, #0
	bl FUN_02023CB8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EC99C
MOD05_021EC99C: ; 0x021EC99C
	push {r3, r4}
	sub sp, #8
	mov r2, #0xff
	strb r2, [r0, r1]
	mov r2, #0
	add r3, sp, #0
_021EC9A8:
	ldrb r1, [r0, r2]
	add r2, r2, #1
	strb r1, [r3]
	add r3, r3, #1
	cmp r2, #6
	blt _021EC9A8
	mov r2, #0
	add r4, r2, #0
	add r3, sp, #0
_021EC9BA:
	ldrb r1, [r3]
	cmp r1, #0xff
	beq _021EC9C4
	strb r1, [r0, r2]
	add r2, r2, #1
_021EC9C4:
	add r4, r4, #1
	add r3, r3, #1
	cmp r4, #6
	blt _021EC9BA
	add sp, #8
	pop {r3, r4}
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021EC9D4
MOD05_021EC9D4: ; 0x021EC9D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0
	add r1, sp, #8
_021EC9E0:
	strb r0, [r1, r0]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #6
	blo _021EC9E0
	add r7, sp, #0xc
	mov r5, #0
	add r6, sp, #8
	add r7, #2
_021EC9F4:
	bl FUN_0201B9EC
	mov r1, #6
	sub r1, r1, r5
	bl _s32_div_f
	ldrb r0, [r6, r1]
	add r1, r5, #0
	strb r0, [r7, r5]
	add r0, r6, #0
	bl MOD05_021EC99C
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	blo _021EC9F4
	add r6, sp, #4
	mov r5, #0
	add r6, #1
	mov r7, #0x1f
_021ECA1E:
	bl FUN_0201B9EC
	lsr r1, r0, #0x1f
	lsl r0, r0, #0x1f
	sub r0, r0, r1
	ror r0, r7
	add r0, r1, r0
	strb r0, [r6, r5]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	blo _021ECA1E
	mov r5, #0
	add r7, sp, #4
	add r6, sp, #4
_021ECA3E:
	add r1, sp, #4
	add r1, #1
	ldrb r1, [r1, r5]
	ldr r0, [sp]
	bl MOD05_021EC458
	add r1, sp, #0xc
	add r1, #2
	ldrb r1, [r1, r5]
	cmp r1, #5
	bhi _021ECAEE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021ECA60: ; jump table
	.short _021ECA6C - _021ECA60 - 2 ; case 0
	.short _021ECA82 - _021ECA60 - 2 ; case 1
	.short _021ECA98 - _021ECA60 - 2 ; case 2
	.short _021ECAAE - _021ECA60 - 2 ; case 3
	.short _021ECAC4 - _021ECA60 - 2 ; case 4
	.short _021ECADA - _021ECA60 - 2 ; case 5
_021ECA6C:
	mov r1, #0x46
	mov r2, #0
	bl FUN_020672BC
	strb r0, [r6]
	add r0, r4, #0
	mov r1, #0x46
	add r2, r7, #0
	bl FUN_02067830
	b _021ECAEE
_021ECA82:
	mov r1, #0x47
	mov r2, #0
	bl FUN_020672BC
	strb r0, [r6]
	add r0, r4, #0
	mov r1, #0x47
	add r2, r7, #0
	bl FUN_02067830
	b _021ECAEE
_021ECA98:
	mov r1, #0x48
	mov r2, #0
	bl FUN_020672BC
	strb r0, [r6]
	add r0, r4, #0
	mov r1, #0x48
	add r2, r7, #0
	bl FUN_02067830
	b _021ECAEE
_021ECAAE:
	mov r1, #0x49
	mov r2, #0
	bl FUN_020672BC
	strb r0, [r6]
	add r0, r4, #0
	mov r1, #0x49
	add r2, r7, #0
	bl FUN_02067830
	b _021ECAEE
_021ECAC4:
	mov r1, #0x4a
	mov r2, #0
	bl FUN_020672BC
	strb r0, [r6]
	add r0, r4, #0
	mov r1, #0x4a
	add r2, r7, #0
	bl FUN_02067830
	b _021ECAEE
_021ECADA:
	mov r1, #0x4b
	mov r2, #0
	bl FUN_020672BC
	strb r0, [r6]
	add r0, r4, #0
	mov r1, #0x4b
	add r2, r7, #0
	bl FUN_02067830
_021ECAEE:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #3
	blo _021ECA3E
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021ECAFC
MOD05_021ECAFC: ; 0x021ECAFC
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r1, #0
	mov r1, #5
	add r2, r4, #0
	add r6, r4, #0
	bl FUN_020671BC
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, _021ECB60 ; =0x00004E20
	ldr r3, _021ECB64 ; =0x00000775
	add r2, r2, r0
	ldr r0, _021ECB68 ; =0x021F7B48
	add r1, r4, #0
_021ECB1A:
	lsl r7, r1, #1
	ldrh r7, [r0, r7]
	cmp r2, r7
	bne _021ECB2A
	add r0, r1, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	b _021ECB34
_021ECB2A:
	add r1, r1, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, r3
	blo _021ECB1A
_021ECB34:
	ldr r2, _021ECB68 ; =0x021F7B48
	lsl r0, r6, #1
	ldr r3, _021ECB60 ; =0x00004E20
	mov r1, #0
	add r0, r2, r0
_021ECB3E:
	lsl r6, r1, #1
	ldrh r2, [r0, r6]
	cmp r2, r3
	bhi _021ECB58
	add r1, r1, #1
	strh r2, [r5, r6]
	add r2, r4, #1
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsr r1, r1, #0x10
	lsr r4, r2, #0x10
	cmp r1, #0x10
	blo _021ECB3E
_021ECB58:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ECB60: .word 0x00004E20
_021ECB64: .word 0x00000775
_021ECB68: .word 0x021F7B48

	thumb_func_start MOD05_021ECB6C
MOD05_021ECB6C: ; 0x021ECB6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r0, #0
	str r1, [sp]
	mov r0, #4
	mov r1, #0xb4
	str r2, [sp, #4]
	bl FUN_02016998
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0xb4
	str r0, [sp, #0x1c]
	bl MIi_CpuClearFast
	add r0, r7, #0
	mov r1, #5
	mov r2, #0
	bl FUN_020671BC
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x18]
	add r0, r7, #0
	mov r1, #0x70
	mov r2, #0
	bl FUN_020671BC
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	add r2, r4, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0xc]
	add r2, #0x30
	bl FUN_02069BFC
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	mov r5, #0
_021ECBC0:
	lsl r0, r5, #2
	add r6, r5, #0
	str r0, [sp, #0x20]
	add r0, r4, r0
	add r6, #0x36
	str r0, [sp, #0x10]
	ldr r0, [sp]
	add r1, r6, #0
	mov r2, #0
	bl FUN_020672BC
	ldr r1, [sp, #0x20]
	mov r2, #0
	str r0, [r4, r1]
	ldr r0, [sp, #4]
	add r1, r6, #0
	bl FUN_020672BC
	ldr r1, [sp, #0x10]
	str r0, [r1, #0x20]
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #4
	blo _021ECBC0
	add r1, r4, #0
	add r0, r7, #0
	add r1, #0x94
	bl MOD05_021ECAFC
	add r5, r0, #0
	mov r6, #0
_021ECC00:
	lsl r0, r6, #2
	ldr r1, [r4, r0]
	str r0, [sp, #0x24]
	cmp r1, #0
	beq _021ECC50
	mov r0, #0
	cmp r5, #0
	bls _021ECC46
_021ECC10:
	lsl r2, r0, #1
	add r2, r4, r2
	add r2, #0x94
	ldrh r2, [r2]
	cmp r1, r2
	bne _021ECC3C
	lsl r1, r1, #0x10
	add r0, r7, #0
	lsr r1, r1, #0x10
	bl FUN_02069698
	ldr r1, _021ECD60 ; =0x0000FFFF
	cmp r0, r1
	bne _021ECC46
	ldr r1, [sp, #0x24]
	add r0, r7, #0
	ldr r1, [r4, r1]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl FUN_02069708
	b _021ECC46
_021ECC3C:
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, r5
	blo _021ECC10
_021ECC46:
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #4
	blo _021ECC00
_021ECC50:
	mov r0, #0
	str r0, [sp, #8]
_021ECC54:
	ldr r0, [sp, #8]
	lsl r6, r0, #2
	ldr r0, [r4, r6]
	cmp r0, #0
	beq _021ECCAC
	mov r5, #0
_021ECC60:
	mov r0, #0x52
	lsl r0, r0, #2
	add r0, r5, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl FUN_0206EA30
	ldr r1, [r4, r6]
	cmp r1, r0
	bne _021ECCA2
	lsl r2, r5, #0x18
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0xc]
	lsr r2, r2, #0x18
	bl FUN_0206A16C
	cmp r0, #0
	beq _021ECCA2
	ldr r1, [r4, r6]
	add r0, r7, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl FUN_02069698
	ldr r1, _021ECD60 ; =0x0000FFFF
	cmp r0, r1
	bne _021ECCA2
	ldr r1, [r4, r6]
	add r0, r7, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl FUN_02069708
_021ECCA2:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0x64
	blo _021ECC60
_021ECCAC:
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	cmp r0, #4
	blo _021ECC54
	mov r6, #0
_021ECCBC:
	lsl r1, r6, #2
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _021ECCFC
	mov r3, #0
_021ECCC6:
	lsl r2, r3, #2
	add r2, r4, r2
	ldr r0, [r4, r1]
	ldr r2, [r2, #0x20]
	cmp r0, r2
	bne _021ECCE8
	cmp r0, #0
	beq _021ECCE8
	ldr r2, [sp, #0x1c]
	add r5, r2, #0
	add r5, r5, #1
	lsl r5, r5, #0x10
	lsr r5, r5, #0x10
	lsl r2, r2, #2
	str r5, [sp, #0x1c]
	add r2, r4, r2
	str r0, [r2, #0x10]
_021ECCE8:
	add r0, r3, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	cmp r3, #4
	blo _021ECCC6
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #4
	blo _021ECCBC
_021ECCFC:
	mov r6, #0
_021ECCFE:
	lsl r0, r6, #2
	add r5, r4, r0
	ldr r3, [r5, #0x10]
	cmp r3, #0
	beq _021ECD54
	ldr r0, [sp, #0x14]
	mov r2, #0
	cmp r0, #0
	bls _021ECD4A
_021ECD10:
	lsl r0, r2, #1
	add r0, r4, r0
	ldrh r1, [r0, #0x30]
	cmp r1, #0
	beq _021ECD3E
	ldr r0, [r5, #0x10]
	cmp r0, r1
	bne _021ECD3E
	lsl r1, r3, #0x10
	add r0, r7, #0
	lsr r1, r1, #0x10
	bl FUN_02069698
	ldr r1, _021ECD60 ; =0x0000FFFF
	cmp r0, r1
	bne _021ECD4A
	ldr r1, [r5, #0x10]
	add r0, r7, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl FUN_02069708
	b _021ECD4A
_021ECD3E:
	add r0, r2, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, [sp, #0x14]
	cmp r2, r0
	blo _021ECD10
_021ECD4A:
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #4
	blo _021ECCFE
_021ECD54:
	add r0, r4, #0
	bl FUN_02016A18
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ECD60: .word 0x0000FFFF

	thumb_func_start MOD05_021ECD64
MOD05_021ECD64: ; 0x021ECD64
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	bl FUN_02023CB8
	add r0, r4, #0
	mov r1, #0
	bl FUN_02023CC0
	pop {r4, pc}

	thumb_func_start MOD05_021ECD78
MOD05_021ECD78: ; 0x021ECD78
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r1, #0
	add r1, sp, #0
	bl MOD05_021EC88C
	ldr r2, _021ECDE8 ; =0x021F7B12
	mov r3, #0
	mov r1, #6
_021ECD8C:
	add r0, r3, #0
	mul r0, r1
	ldrh r0, [r2, r0]
	cmp r5, r0
	bne _021ECD9A
	add r6, r3, #0
	b _021ECDA4
_021ECD9A:
	add r0, r3, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	cmp r3, #9
	blo _021ECD8C
_021ECDA4:
	cmp r3, #9
	bne _021ECDAE
	add sp, #8
	add r0, r5, #0
	pop {r4, r5, r6, pc}
_021ECDAE:
	ldr r0, [sp]
	mov r1, #6
	mov r2, #0
	bl FUN_020672BC
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [sp, #4]
	mov r1, #6
	mov r2, #0
	bl FUN_020672BC
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	mov r0, #6
	add r1, r6, #0
	mul r1, r0
	ldr r0, _021ECDEC ; =0x021F7B14
	ldrh r0, [r0, r1]
	cmp r4, r0
	beq _021ECDE0
	cmp r2, r0
	beq _021ECDE0
	ldr r0, _021ECDF0 ; =0x021F7B16
	ldrh r5, [r0, r1]
_021ECDE0:
	add r0, r5, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_021ECDE8: .word 0x021F7B12
_021ECDEC: .word 0x021F7B14
_021ECDF0: .word 0x021F7B16

	thumb_func_start MOD05_021ECDF4
MOD05_021ECDF4: ; 0x021ECDF4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, r1, #0
	add r1, sp, #0
	bl MOD05_021EC88C
	ldr r0, [sp]
	mov r1, #6
	mov r2, #0
	bl FUN_020672BC
	add r5, r0, #0
	ldr r0, [sp, #4]
	mov r1, #6
	mov r2, #0
	bl FUN_020672BC
	cmp r5, #0xec
	beq _021ECE20
	cmp r0, #0xec
	bne _021ECE3A
_021ECE20:
	mov r1, #0x56
	add r0, r4, #0
	lsl r1, r1, #2
	bl FUN_02069698
	ldr r1, _021ECE40 ; =0x0000FFFF
	cmp r0, r1
	bne _021ECE3A
	mov r1, #0x56
	add r0, r4, #0
	lsl r1, r1, #2
	bl FUN_02069708
_021ECE3A:
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021ECE40: .word 0x0000FFFF

	thumb_func_start MOD05_021ECE44
MOD05_021ECE44: ; 0x021ECE44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r1, sp, #4
	str r0, [sp]
	bl MOD05_021EC88C
	mov r4, #0
	add r7, sp, #4
_021ECE56:
	lsl r6, r4, #2
	ldr r0, [r7, r6]
	mov r1, #5
	mov r2, #0
	bl FUN_020672BC
	lsl r1, r4, #1
	add r2, sp, #0xc
	strh r0, [r2, r1]
	add r0, r2, #0
	ldrh r0, [r0, r1]
	cmp r0, #0x84
	bne _021ECE7A
	mov r0, #1
	eor r0, r4
	strb r0, [r5]
	strb r4, [r5, #1]
	b _021ECE8C
_021ECE7A:
	ldr r0, [r7, r6]
	bl FUN_020689E8
	cmp r0, #1
	bne _021ECE8C
	mov r0, #1
	strb r4, [r5]
	eor r0, r4
	strb r0, [r5, #1]
_021ECE8C:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #2
	blo _021ECE56
	ldrb r0, [r5]
	lsl r1, r0, #1
	add r0, sp, #0xc
	ldrh r0, [r0, r1]
	bl FUN_02069558
	add r4, r0, #0
	cmp r4, #0x1d
	bne _021ECEBC
	ldr r0, [sp]
	bl FUN_02023C90
	mov r1, #2
	lsl r1, r1, #0xe
	tst r0, r1
	beq _021ECEBA
	mov r4, #0x20
	b _021ECEBC
_021ECEBA:
	mov r4, #0x1d
_021ECEBC:
	ldr r0, _021ECF08 ; =0x0000013A
	cmp r4, r0
	bne _021ECED6
	ldr r0, [sp]
	bl FUN_02023C90
	mov r1, #2
	lsl r1, r1, #0xe
	tst r0, r1
	beq _021ECED4
	ldr r4, _021ECF0C ; =0x00000139
	b _021ECED6
_021ECED4:
	ldr r4, _021ECF08 ; =0x0000013A
_021ECED6:
	ldr r0, _021ECF10 ; =0x000001EA
	cmp r4, r0
	bne _021ECEDE
	sub r4, r0, #1
_021ECEDE:
	ldrb r0, [r5, #1]
	lsl r1, r0, #1
	add r0, sp, #0xc
	ldrh r0, [r0, r1]
	cmp r0, #0x84
	bne _021ECF02
	ldrb r0, [r5]
	lsl r1, r0, #2
	add r0, sp, #4
	ldr r0, [r0, r1]
	bl FUN_020689E8
	cmp r0, #1
	beq _021ECF02
	ldrb r1, [r5, #1]
	ldrb r0, [r5]
	strb r0, [r5, #1]
	strb r1, [r5]
_021ECF02:
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021ECF08: .word 0x0000013A
_021ECF0C: .word 0x00000139
_021ECF10: .word 0x000001EA

	thumb_func_start MOD05_021ECF14
MOD05_021ECF14: ; 0x021ECF14
	push {r0, r1, r2, r3}
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0x13
	add r4, r3, #0
	bl FUN_02068678
	add r1, sp, #0x10
	strb r0, [r1]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	mov r3, #0x20
	bl FUN_02066ACC
	mov r1, #0
	add r0, sp, #0x10
	strb r1, [r0, #2]
	mov r1, #4
	strh r1, [r0, #4]
	add r0, r5, #0
	mov r1, #0x9a
	add r2, sp, #0x14
	bl FUN_02067830
	add r0, r5, #0
	mov r1, #9
	add r2, sp, #0x10
	bl FUN_02067830
	add r2, sp, #0x10
	add r0, r5, #0
	mov r1, #0x9b
	add r2, #2
	bl FUN_02067830
	add r0, sp, #0x30
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _021ECF7E
	add r0, r5, #0
	mov r1, #0x97
	add r2, sp, #0x38
	bl FUN_02067830
_021ECF7E:
	add r2, sp, #0x10
	mov r1, #1
	add r0, sp, #0x10
	strb r1, [r0, #1]
	add r0, r5, #0
	mov r1, #0x4c
	add r2, #1
	bl FUN_02067830
	ldr r0, _021ED008 ; =0x000001EE
	mov r1, #4
	bl FUN_0200AA50
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x76
	add r2, r6, #0
	bl FUN_02067830
	add r0, r6, #0
	bl FUN_02021A20
	ldr r0, [sp, #0x40]
	cmp r0, #4
	bne _021ECFEE
	add r0, r4, #0
	bl FUN_020239BC
	str r0, [sp, #0x1c]
	add r0, r4, #0
	bl FUN_020239CC
	str r0, [sp, #0x18]
	add r0, r4, #0
	mov r1, #0x20
	bl FUN_020239A0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x90
	add r2, r6, #0
	bl FUN_02067830
	add r0, r5, #0
	mov r1, #7
	add r2, sp, #0x1c
	bl FUN_02067830
	add r0, r5, #0
	mov r1, #0x9c
	add r2, sp, #0x18
	bl FUN_02067830
	add r0, r6, #0
	bl FUN_02021A20
_021ECFEE:
	mov r0, #0
	str r0, [sp]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	add r0, r5, #0
	add r1, r4, #0
	bl FUN_0208089C
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r3}
	add sp, #0x10
	bx r3
	.balign 4, 0
_021ED008: .word 0x000001EE

	thumb_func_start MOD05_021ED00C
MOD05_021ED00C: ; 0x021ED00C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #0x10]
	add r7, r0, #0
	ldr r0, [sp, #0x10]
	mov r1, #0x13
	add r5, r2, #0
	add r6, r3, #0
	bl FUN_02068678
	add r1, sp, #0x14
	strb r0, [r1]
	add r0, r5, #0
	bl FUN_02023C90
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_02023CC8
	cmp r0, #0
	beq _021ED05E
	add r0, r6, #0
	add r1, r4, #0
	bl FUN_02068AAC
	cmp r0, #0
	bne _021ED05E
	mov r5, #0
_021ED044:
	add r0, r4, #0
	bl FUN_0201BA10
	add r4, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl FUN_02068AAC
	cmp r0, #0
	bne _021ED05E
	add r5, r5, #1
	cmp r5, #4
	blt _021ED044
_021ED05E:
	mov r2, #1
	str r2, [sp]
	str r4, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	mov r3, #0x20
	bl FUN_02066ACC
	add r2, sp, #0x14
	mov r1, #0
	add r0, sp, #0x14
	strb r1, [r0, #1]
	mov r1, #4
	strh r1, [r0, #2]
	add r0, r7, #0
	mov r1, #0x9a
	add r2, #2
	bl FUN_02067830
	add r0, r7, #0
	mov r1, #9
	add r2, sp, #0x14
	bl FUN_02067830
	add r2, sp, #0x14
	add r0, r7, #0
	mov r1, #0x9b
	add r2, #1
	bl FUN_02067830
	add r0, r7, #0
	mov r1, #0x70
	add r2, sp, #0x30
	bl FUN_02067830
	ldr r0, _021ED0C8 ; =0x000001EE
	mov r1, #4
	bl FUN_0200AA50
	add r4, r0, #0
	add r0, r7, #0
	mov r1, #0x76
	add r2, r4, #0
	bl FUN_02067830
	add r0, r4, #0
	bl FUN_02021A20
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021ED0C8: .word 0x000001EE

	thumb_func_start MOD05_021ED0CC
MOD05_021ED0CC: ; 0x021ED0CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #4
	str r1, [sp, #4]
	add r7, r2, #0
	bl FUN_020669C0
	add r1, sp, #0x10
	add r4, r0, #0
	add r0, r5, #0
	add r1, #1
	bl MOD05_021ECE44
	add r1, r5, #0
	bl MOD05_021ECD78
	add r6, r0, #0
	add r0, r7, #0
	bl FUN_020239BC
	add r1, sp, #0x10
	str r0, [sp, #8]
	ldrb r1, [r1, #1]
	add r0, r5, #0
	bl MOD05_021EC458
	mov r1, #0x70
	mov r2, #0
	bl FUN_020672BC
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r3, [sp, #8]
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl MOD05_021ED00C
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021EC9D4
	add r1, sp, #0x10
	ldrb r1, [r1, #2]
	add r0, r5, #0
	bl MOD05_021EC458
	add r1, sp, #0x10
	str r0, [sp, #0xc]
	ldrb r1, [r1, #1]
	add r0, r5, #0
	bl MOD05_021EC458
	add r2, r0, #0
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl MOD05_021ECB6C
	mov r0, #1
	mov r1, #0
	bl FUN_02015CF8
	add r3, r0, #0
	mov r0, #4
	str r0, [sp]
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #3
	bl FUN_0208089C
	cmp r6, #0xac
	bne _021ED168
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021ECDF4
_021ED168:
	mov r1, #1
	add r0, sp, #0x10
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0x4c
	add r2, sp, #0x10
	bl FUN_02067830
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl FUN_0206B900
	add r0, r5, #0
	bl MOD05_021ECD64
	add r0, r4, #0
	bl FUN_02016A18
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021ED190
MOD05_021ED190: ; 0x021ED190
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl FUN_0206B9AC
	add r6, r0, #0
	mov r4, #0
	cmp r6, #0
	ble _021ED1E0
	mov r7, #0xac
_021ED1A2:
	add r0, r5, #0
	add r1, r4, #0
	bl FUN_0206B9B0
	add r1, r7, #0
	mov r2, #0
	bl FUN_020671BC
	cmp r0, #0
	bne _021ED1D6
	add r0, r5, #0
	add r1, r4, #0
	bl FUN_0206B9B0
	mov r1, #0xa
	mov r2, #0
	bl FUN_020671BC
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x28
	beq _021ED1D2
	cmp r0, #0x31
	bne _021ED1D6
_021ED1D2:
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021ED1D6:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r6
	blt _021ED1A2
_021ED1E0:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021ED1E4
MOD05_021ED1E4: ; 0x021ED1E4
	push {r4, r5, r6, r7}
	mov r4, #0
	add r3, r4, #0
_021ED1EA:
	ldrh r7, [r0]
	add r5, r3, #0
	add r6, r1, #0
_021ED1F0:
	ldrh r2, [r6]
	cmp r7, r2
	bne _021ED1FC
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_021ED1FC:
	add r5, r5, #1
	add r6, r6, #2
	cmp r5, #2
	blt _021ED1F0
	add r4, r4, #1
	add r0, r0, #2
	cmp r4, #2
	blt _021ED1EA
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021ED214
MOD05_021ED214: ; 0x021ED214
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	add r0, sp, #0x10
	add r4, sp, #0x18
	str r0, [sp]
	add r7, sp, #8
	add r6, sp, #0x1c
_021ED228:
	ldr r0, [r5]
	mov r1, #5
	mov r2, #0
	bl FUN_020672BC
	strh r0, [r4]
	ldr r0, [r5]
	mov r1, #7
	mov r2, #0
	bl FUN_020672BC
	ldr r1, [sp]
	str r0, [r1]
	mov r1, #0
	ldr r0, [r5]
	add r2, r1, #0
	bl FUN_020672BC
	add r1, r0, #0
	ldrh r0, [r4]
	bl FUN_02068A20
	stmia r7!, {r0}
	ldrh r0, [r4]
	mov r1, #0x16
	bl FUN_02068678
	strh r0, [r6]
	ldrh r0, [r4]
	mov r1, #0x17
	bl FUN_02068678
	strh r0, [r6, #2]
	ldr r0, [sp]
	add r5, r5, #4
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #4]
	add r4, r4, #2
	add r0, r0, #1
	add r6, r6, #4
	str r0, [sp, #4]
	cmp r0, #2
	blo _021ED228
	add r0, sp, #8
	ldrh r1, [r0, #0x14]
	cmp r1, #0xf
	beq _021ED28E
	ldrh r0, [r0, #0x18]
	cmp r0, #0xf
	bne _021ED294
_021ED28E:
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021ED294:
	cmp r1, #0xd
	bne _021ED2A2
	cmp r0, #0xd
	bne _021ED2A2
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021ED2A2:
	cmp r1, #0xd
	beq _021ED2AA
	cmp r0, #0xd
	bne _021ED2BE
_021ED2AA:
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bne _021ED2B8
	add sp, #0x24
	mov r0, #0x14
	pop {r4, r5, r6, r7, pc}
_021ED2B8:
	add sp, #0x24
	mov r0, #0x32
	pop {r4, r5, r6, r7, pc}
_021ED2BE:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	cmp r0, r1
	bne _021ED2CC
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021ED2CC:
	cmp r0, #2
	beq _021ED2D4
	cmp r1, #2
	bne _021ED2DA
_021ED2D4:
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021ED2DA:
	add r0, sp, #0x1c
	add r1, sp, #0x20
	bl MOD05_021ED1E4
	cmp r0, #0
	bne _021ED2EC
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021ED2EC:
	add r0, sp, #8
	ldrh r1, [r0, #0x10]
	ldrh r0, [r0, #0x12]
	cmp r1, r0
	bne _021ED30A
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	beq _021ED304
	add sp, #0x24
	mov r0, #0x46
	pop {r4, r5, r6, r7, pc}
_021ED304:
	add sp, #0x24
	mov r0, #0x32
	pop {r4, r5, r6, r7, pc}
_021ED30A:
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	beq _021ED318
	add sp, #0x24
	mov r0, #0x32
	pop {r4, r5, r6, r7, pc}
_021ED318:
	mov r0, #0x14
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021ED320
MOD05_021ED320: ; 0x021ED320
	push {r3, lr}
	sub sp, #8
	add r1, sp, #0
	bl MOD05_021EC88C
	add r0, sp, #0
	bl MOD05_021ED214
	add sp, #8
	pop {r3, pc}

	thumb_func_start MOD05_021ED334
MOD05_021ED334: ; 0x021ED334
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl FUN_0204B2C0
	add r5, r0, #0
	add r0, r4, #0
	bl FUN_0204B2B4
	mov r1, #0x64
	mul r1, r0
	add r0, r4, #0
	add r5, r5, r1
	bl FUN_0204B33C
	cmp r0, #0
	beq _021ED358
	mov r0, #0xff
	pop {r3, r4, r5, pc}
_021ED358:
	ldr r2, _021ED374 ; =0x021F7AF8
	mov r1, #0
_021ED35C:
	ldrh r0, [r2]
	cmp r5, r0
	bne _021ED366
	mov r0, #0xe6
	pop {r3, r4, r5, pc}
_021ED366:
	add r1, r1, #1
	add r2, r2, #2
	cmp r1, #0xd
	blo _021ED35C
	mov r0, #0xff
	pop {r3, r4, r5, pc}
	nop
_021ED374: .word 0x021F7AF8

	thumb_func_start MOD05_021ED378
MOD05_021ED378: ; 0x021ED378
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	add r1, sp, #8
	str r0, [sp]
	str r2, [sp, #4]
	bl MOD05_021EC88C
	mov r6, #0
	add r4, r6, #0
	add r5, sp, #8
_021ED38E:
	ldr r0, [r5]
	mov r1, #0xab
	mov r2, #0
	bl FUN_020672BC
	cmp r0, #0
	beq _021ED3AC
	ldr r0, [sp]
	add r1, r4, #0
	bl FUN_02023C74
	mov r1, #1
	bl FUN_02023CA8
	add r6, r6, #1
_021ED3AC:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blo _021ED38E
	ldr r0, [sp]
	bl FUN_02023C90
	cmp r0, #0
	bne _021ED3F8
	cmp r6, #2
	bne _021ED3F8
	ldr r0, [sp]
	mov r1, #1
	bl FUN_02023C74
	bl FUN_02023C84
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0xff
	bne _021ED3F8
	ldr r0, [sp]
	bl MOD05_021ED320
	add r4, r0, #0
	bl FUN_0201B9EC
	mov r1, #0x64
	mul r1, r0
	add r0, r1, #0
	ldr r1, _021ED498 ; =0x0000FFFF
	bl _u32_div_f
	cmp r4, r0
	bls _021ED3F8
	ldr r0, [sp]
	bl MOD05_021EC944
_021ED3F8:
	ldr r0, [sp]
	bl FUN_02023C98
	add r4, r0, #0
	ldr r0, [sp]
	add r1, r4, #1
	bl FUN_02023CC0
	ldr r0, [sp, #4]
	bl MOD05_021ED334
	add r1, r4, #1
	cmp r1, r0
	bne _021ED490
	ldr r0, [sp]
	mov r1, #0
	bl FUN_02023CC0
	add r0, r7, #0
	bl MOD05_021ED190
	add r6, r0, #0
	add r0, r7, #0
	mov r5, #0
	bl FUN_0206B9AC
	cmp r0, #0
	bls _021ED490
_021ED430:
	add r0, r7, #0
	add r1, r5, #0
	bl FUN_0206B9B0
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl FUN_020671BC
	cmp r0, #0
	beq _021ED484
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl FUN_020671BC
	cmp r0, #0
	bne _021ED484
	add r0, r4, #0
	mov r1, #9
	mov r2, #0
	bl FUN_020671BC
	str r0, [sp, #0x10]
	cmp r0, #0
	beq _021ED47E
	cmp r0, r6
	blo _021ED46E
	sub r0, r0, r6
	str r0, [sp, #0x10]
	b _021ED472
_021ED46E:
	sub r0, r0, #1
	str r0, [sp, #0x10]
_021ED472:
	add r0, r4, #0
	mov r1, #9
	add r2, sp, #0x10
	bl FUN_02067830
	b _021ED484
_021ED47E:
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021ED484:
	add r0, r7, #0
	add r5, r5, #1
	bl FUN_0206B9AC
	cmp r5, r0
	blo _021ED430
_021ED490:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021ED498: .word 0x0000FFFF

	thumb_func_start MOD05_021ED49C
MOD05_021ED49C: ; 0x021ED49C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl FUN_0206B9AC
	add r6, r0, #0
	mov r5, #0
	cmp r6, #0
	ble _021ED4DA
_021ED4AC:
	add r0, r7, #0
	add r1, r5, #0
	bl FUN_0206B9B0
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl FUN_020671BC
	cmp r0, #0
	beq _021ED4D4
	add r0, r4, #0
	mov r1, #9
	mov r2, #0
	bl FUN_020671BC
	cmp r0, #0
	bne _021ED4D4
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021ED4D4:
	add r5, r5, #1
	cmp r5, r6
	blt _021ED4AC
_021ED4DA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021ED4E0
MOD05_021ED4E0: ; 0x021ED4E0
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	add r1, sp, #0
	bl MOD05_021EC88C
	ldr r0, [sp]
	mov r1, #5
	mov r2, #0
	bl FUN_020672BC
	cmp r0, #0
	beq _021ED50E
	ldr r2, [sp]
	add r0, r4, #0
	mov r1, #0
	bl FUN_0200ACF8
	ldr r2, [sp]
	add r0, r4, #0
	mov r1, #2
	bl FUN_0200AD18
_021ED50E:
	ldr r0, [sp, #4]
	mov r1, #5
	mov r2, #0
	bl FUN_020672BC
	cmp r0, #0
	beq _021ED526
	ldr r2, [sp, #4]
	add r0, r4, #0
	mov r1, #1
	bl FUN_0200ACF8
_021ED526:
	add sp, #8
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021ED52C
MOD05_021ED52C: ; 0x021ED52C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r1, sp, #0x18
	ldrb r6, [r1, #0x10]
	add r5, r0, #0
	add r7, r2, #0
	add r1, r6, #0
	str r3, [sp, #8]
	bl FUN_02023C74
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	bl MOD05_021EC458
	add r5, r0, #0
	ldr r0, [sp, #0x2c]
	add r1, r4, #0
	add r2, r5, #0
	bl FUN_0200ACF8
	ldr r0, [sp, #0xc]
	bl FUN_02023C84
	add r1, r0, #0
	add r0, r5, #0
	bl MOD05_021EC744
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r1, r7, #0
	mov r3, #3
	bl FUN_0200AD38
	add r0, r5, #0
	mov r1, #0x6f
	mov r2, #0
	bl FUN_020672BC
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	beq _021ED5B4
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl FUN_020672BC
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0x1d
	beq _021ED5A4
	cmp r0, #0x20
	bne _021ED5B4
_021ED5A4:
	add r0, r5, #0
	mov r1, #0x4d
	mov r2, #0
	bl FUN_020672BC
	cmp r0, #0
	bne _021ED5B4
	mov r4, #2
_021ED5B4:
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #8]
	add r2, r4, #0
	bl FUN_0200B3C0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021ED5C4
MOD05_021ED5C4: ; 0x021ED5C4
	push {r3, r4, r5, lr}
	add r5, r2, #0
	bl FUN_0206B9B0
	add r4, r0, #0
	bl FUN_020690E4
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl FUN_0200ACF8
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl FUN_020671BC
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021ED5EC
MOD05_021ED5EC: ; 0x021ED5EC
	push {r4, lr}
	add r4, r0, #0
	bl FUN_02023C90
	cmp r0, #0
	beq _021ED5FC
	mov r0, #1
	pop {r4, pc}
_021ED5FC:
	add r0, r4, #0
	bl MOD05_021EC464
	cmp r0, #0
	beq _021ED60E
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4, pc}
_021ED60E:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021ED614
MOD05_021ED614: ; 0x021ED614
	cmp r0, #0x14
	bhi _021ED620
	bhs _021ED632
	cmp r0, #0
	beq _021ED62E
	b _021ED63E
_021ED620:
	cmp r0, #0x32
	bhi _021ED628
	beq _021ED636
	b _021ED63E
_021ED628:
	cmp r0, #0x46
	beq _021ED63A
	b _021ED63E
_021ED62E:
	mov r0, #3
	bx lr
_021ED632:
	mov r0, #2
	bx lr
_021ED636:
	mov r0, #1
	bx lr
_021ED63A:
	mov r0, #0
	bx lr
_021ED63E:
	mov r0, #0
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021ED644
MOD05_021ED644: ; 0x021ED644
	push {r3, lr}
	bl MOD05_021ED320
	bl MOD05_021ED614
	pop {r3, pc}

	thumb_func_start MOD05_021ED650
MOD05_021ED650: ; 0x021ED650
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r4, r0, #0
	add r5, r1, #0
	mov r0, #8
	bl FUN_020219F4
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl FUN_020669C0
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl FUN_020671BC
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
	mov r5, #0
	add r7, sp, #0x34
_021ED67C:
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x36
	mov r2, #0
	bl FUN_020671BC
	lsl r1, r5, #1
	strh r0, [r7, r1]
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x3a
	mov r2, #0
	bl FUN_020671BC
	add r1, sp, #0x30
	strb r0, [r1, r5]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021ED67C
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl FUN_020671BC
	add r7, r0, #0
	mov r5, #0
_021ED6B4:
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x46
	mov r2, #0
	bl FUN_020671BC
	add r1, sp, #0x24
	add r1, #2
	strb r0, [r1, r5]
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #6
	blo _021ED6B4
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0
	bl FUN_020671BC
	add r1, sp, #0x18
	strb r0, [r1, #9]
	add r0, r4, #0
	mov r1, #0x79
	mov r2, #0
	bl FUN_020671BC
	add r1, sp, #0x18
	strb r0, [r1, #8]
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0
	bl FUN_020671BC
	add r1, sp, #0x18
	strb r0, [r1, #7]
	add r0, r4, #0
	mov r1, #0x99
	mov r2, #0
	bl FUN_020671BC
	add r1, sp, #0x18
	strb r0, [r1, #0xa]
	add r0, r4, #0
	mov r1, #0x6e
	mov r2, #0
	bl FUN_020671BC
	add r1, sp, #0x18
	strb r0, [r1, #5]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	mov r1, #0x90
	bl FUN_020671BC
	add r0, r4, #0
	mov r1, #0x9c
	mov r2, #0
	bl FUN_020671BC
	add r1, sp, #0x18
	strb r0, [r1, #3]
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl FUN_020671BC
	str r0, [sp, #0x2c]
	add r0, r4, #0
	mov r1, #0x70
	mov r2, #0
	bl FUN_020671BC
	add r1, sp, #0x18
	strb r0, [r1, #4]
	ldr r1, _021ED93C ; =0x000001EA
	ldr r0, [sp, #0x14]
	cmp r0, r1
	bne _021ED788
	add r0, r4, #0
	mov r1, #0x97
	mov r2, #0
	bl FUN_020671BC
	add r5, r0, #0
	mov r0, #2
	mov r1, #1
	bl FUN_02015CF8
	cmp r5, r0
	bne _021ED788
	ldr r0, [sp, #0x2c]
	add r1, r7, #0
	bl FUN_02068AAC
	cmp r0, #0
	beq _021ED788
_021ED774:
	add r0, r7, #0
	bl FUN_0201BA10
	add r7, r0, #0
	ldr r0, [sp, #0x2c]
	add r1, r7, #0
	bl FUN_02068AAC
	cmp r0, #0
	bne _021ED774
_021ED788:
	mov r2, #1
	str r2, [sp]
	str r7, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	add r0, r6, #0
	mov r3, #0x20
	bl FUN_02066ACC
	mov r5, #0
	add r7, sp, #0x34
_021ED7A2:
	add r1, r5, #0
	lsl r2, r5, #1
	add r0, r6, #0
	add r1, #0x36
	add r2, r7, r2
	bl FUN_02067830
	add r1, r5, #0
	add r2, sp, #0x30
	add r0, r6, #0
	add r1, #0x3a
	add r2, r2, r5
	bl FUN_02067830
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #4
	blo _021ED7A2
	add r7, sp, #0x24
	mov r5, #0
	add r7, #2
_021ED7CE:
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0x46
	add r2, r7, r5
	bl FUN_02067830
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #6
	blo _021ED7CE
	add r2, sp, #0x20
	add r0, r6, #0
	mov r1, #0xc
	add r2, #1
	bl FUN_02067830
	add r0, r6, #0
	mov r1, #0x79
	add r2, sp, #0x20
	bl FUN_02067830
	add r2, sp, #0x1c
	add r0, r6, #0
	mov r1, #0xb
	add r2, #3
	bl FUN_02067830
	add r2, sp, #0x1c
	mov r1, #0x78
	add r0, sp, #0x18
	strb r1, [r0, #6]
	add r0, r6, #0
	mov r1, #9
	add r2, #2
	bl FUN_02067830
	add r2, sp, #0x20
	add r0, r6, #0
	mov r1, #0x99
	add r2, #2
	bl FUN_02067830
	add r2, sp, #0x1c
	add r0, r6, #0
	mov r1, #0x6e
	add r2, #1
	bl FUN_02067830
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	mov r1, #0x90
	bl FUN_02067830
	add r2, sp, #0x18
	add r0, r6, #0
	mov r1, #0x9c
	add r2, #3
	bl FUN_02067830
	add r0, r6, #0
	mov r1, #7
	add r2, sp, #0x2c
	bl FUN_02067830
	add r0, r6, #0
	mov r1, #0x70
	add r2, sp, #0x1c
	bl FUN_02067830
	add r0, r4, #0
	mov r1, #0x97
	mov r2, #0
	bl FUN_020671BC
	add r1, sp, #0x18
	strh r0, [r1, #0xc]
	add r0, r4, #0
	mov r1, #0x91
	mov r2, #0
	bl FUN_020671BC
	add r1, sp, #0x18
	strb r0, [r1, #2]
	add r0, r4, #0
	mov r1, #0x92
	mov r2, #0
	bl FUN_020671BC
	add r1, sp, #0x18
	strb r0, [r1, #1]
	add r0, r4, #0
	mov r1, #0x93
	mov r2, #0
	bl FUN_020671BC
	add r1, sp, #0x18
	strb r0, [r1]
	add r0, r6, #0
	mov r1, #0x97
	add r2, sp, #0x24
	bl FUN_02067830
	add r2, sp, #0x18
	add r0, r6, #0
	mov r1, #0x91
	add r2, #2
	bl FUN_02067830
	add r2, sp, #0x18
	add r0, r6, #0
	mov r1, #0x92
	add r2, #1
	bl FUN_02067830
	add r0, r6, #0
	mov r1, #0x93
	add r2, sp, #0x18
	bl FUN_02067830
	add r0, r4, #0
	mov r1, #0x98
	mov r2, #0
	bl FUN_020671BC
	add r1, sp, #0x18
	strh r0, [r1, #0xc]
	add r0, r4, #0
	mov r1, #0x94
	mov r2, #0
	bl FUN_020671BC
	add r1, sp, #0x18
	strb r0, [r1, #2]
	add r0, r4, #0
	mov r1, #0x95
	mov r2, #0
	bl FUN_020671BC
	add r1, sp, #0x18
	strb r0, [r1, #1]
	add r0, r4, #0
	mov r1, #0x96
	mov r2, #0
	bl FUN_020671BC
	add r1, sp, #0x18
	strb r0, [r1]
	add r0, r6, #0
	mov r1, #0x98
	add r2, sp, #0x24
	bl FUN_02067830
	add r2, sp, #0x18
	add r0, r6, #0
	mov r1, #0x94
	add r2, #2
	bl FUN_02067830
	add r2, sp, #0x18
	add r0, r6, #0
	mov r1, #0x95
	add r2, #1
	bl FUN_02067830
	add r0, r6, #0
	mov r1, #0x96
	add r2, sp, #0x18
	bl FUN_02067830
	add r0, r6, #0
	add r1, r4, #0
	bl FUN_02069B88
	ldr r0, [sp, #0x10]
	bl FUN_02021A20
	add r0, r6, #0
	bl FUN_02016A18
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_021ED93C: .word 0x000001EA

	thumb_func_start MOD05_021ED940
MOD05_021ED940: ; 0x021ED940
	push {r4, r5, lr}
	sub sp, #0x1c
	mov r3, #0x46
	add r2, sp, #0
	strb r3, [r2, #3]
	mov r5, #0
	strb r5, [r2, #2]
	mov r3, #4
	strb r3, [r2, #1]
	add r4, r0, #0
	strb r5, [r2]
	bl MOD05_021ED650
	add r2, sp, #0
	add r0, r4, #0
	mov r1, #0x4c
	add r2, #3
	bl FUN_02067830
	add r0, r4, #0
	mov r1, #5
	add r2, r5, #0
	bl FUN_020671BC
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r1, r5, #0
	add r2, sp, #4
	bl FUN_0200A99C
	add r0, r4, #0
	mov r1, #0x74
	add r2, sp, #4
	bl FUN_02067830
	add r2, sp, #0
	add r0, r4, #0
	mov r1, #0x4d
	add r2, #2
	bl FUN_02067830
	add r2, sp, #0
	add r0, r4, #0
	mov r1, #0x9a
	add r2, #1
	bl FUN_02067830
	add r0, r4, #0
	mov r1, #0x9b
	add r2, sp, #0
	bl FUN_02067830
	add r0, r4, #0
	bl FUN_02066ED8
	add sp, #0x1c
	pop {r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021ED9B4
MOD05_021ED9B4: ; 0x021ED9B4
	push {r3, lr}
	bl MOD05_021ED214
	bl MOD05_021ED614
	pop {r3, pc}

	thumb_func_start MOD05_021ED9C0
MOD05_021ED9C0: ; 0x021ED9C0
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #4
	add r3, r2, #0
	add r5, r0, #0
	bl MOD05_021E4BE8
	add r4, r0, #0
	str r5, [r4]
	bl MOD05_021ED9EC
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021ED9DC
MOD05_021ED9DC: ; 0x021ED9DC
	push {r4, lr}
	add r4, r0, #0
	bl MOD05_021EDA28
	add r0, r4, #0
	bl MOD05_021E4C00
	pop {r4, pc}

	thumb_func_start MOD05_021ED9EC
MOD05_021ED9EC: ; 0x021ED9EC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #4
	mov r2, #0x57
	bl MOD05_021E5078
	ldr r0, [r4]
	mov r1, #3
	mov r2, #6
	mov r3, #1
	bl MOD05_021E50D4
	mov r0, #3
	str r0, [sp]
	mov r3, #0
	mov r1, #4
	ldr r0, _021EDA24 ; =0x021F8A48
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	add r2, r1, #0
	bl MOD05_021E4EFC
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021EDA24: .word 0x021F8A48

	thumb_func_start MOD05_021EDA28
MOD05_021EDA28: ; 0x021EDA28
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #4
	bl MOD05_021E50A0
	ldr r0, [r4]
	mov r1, #3
	bl MOD05_021E5114
	ldr r0, [r4]
	mov r1, #4
	bl MOD05_021E506C
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EDA48
MOD05_021EDA48: ; 0x021EDA48
	push {r4, r5, lr}
	sub sp, #0x24
	add r5, r0, #0
	bl MOD05_021E4C24
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_02058738
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r1, #0x18
	str r4, [sp, #0x18]
	bl MOD05_021E4C08
	str r0, [sp, #0x1c]
	add r1, sp, #8
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r5, #0
	mov r1, #2
	str r5, [sp, #0x20]
	bl FUN_0205829C
	add r1, sp, #0x14
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021EDA94 ; =0x021F8A34
	add r0, r4, #0
	add r2, sp, #8
	mov r3, #0
	bl MOD05_021E4DC4
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_021EDA94: .word 0x021F8A34

	thumb_func_start MOD05_021EDA98
MOD05_021EDA98: ; 0x021EDA98
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r2, sp, #0
	mov r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	add r5, r0, #0
	str r1, [r2, #8]
	bl FUN_0206475C
	add r2, r4, #0
	add r3, r0, #0
	add r2, #0x10
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x1c]
	bl FUN_02058448
	str r0, [r4, #4]
	ldr r0, [r4, #0x1c]
	bl FUN_02058450
	str r0, [r4, #8]
	add r0, r5, #0
	add r1, sp, #0
	bl FUN_0206476C
	ldr r0, [r4, #0x14]
	mov r1, #4
	add r2, sp, #0
	bl MOD05_021E4EE4
	str r0, [r4, #0x20]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EDAE8
MOD05_021EDAE8: ; 0x021EDAE8
	ldr r3, _021EDAF0 ; =0x0201F745
	ldr r0, [r1, #0x20]
	bx r3
	nop
_021EDAF0: .word 0x0201F745

	thumb_func_start MOD05_021EDAF4
MOD05_021EDAF4: ; 0x021EDAF4
	push {r4, lr}
	add r2, r1, #0
	add r4, r0, #0
	ldr r0, [r2, #0x1c]
	ldr r1, [r2, #4]
	ldr r2, [r2, #8]
	bl FUN_020582A8
	cmp r0, #0
	bne _021EDB0E
	add r0, r4, #0
	bl MOD05_021E4DE4
_021EDB0E:
	pop {r4, pc}

	thumb_func_start MOD05_021EDB10
MOD05_021EDB10: ; 0x021EDB10
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r1, #0
	ldr r4, [r5, #0x1c]
	ldr r1, [r5, #4]
	add r6, r0, #0
	ldr r2, [r5, #8]
	add r0, r4, #0
	bl FUN_020582A8
	cmp r0, #0
	bne _021EDB32
	add r0, r6, #0
	bl MOD05_021E4DE4
	add sp, #0x18
	pop {r4, r5, r6, pc}
_021EDB32:
	add r0, r4, #0
	add r1, sp, #0xc
	bl FUN_02058B5C
	add r0, r4, #0
	add r1, sp, #0
	bl FUN_02058B84
	ldr r1, [sp, #0xc]
	ldr r0, [sp]
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #4]
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #8]
	add r1, r1, r0
	mov r0, #3
	lsl r0, r0, #0xe
	str r1, [sp, #0x14]
	add r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x20]
	add r1, sp, #0xc
	bl FUN_0201F7C8
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EDB70
MOD05_021EDB70: ; 0x021EDB70
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #0x60
	add r3, r2, #0
	add r5, r0, #0
	bl MOD05_021E4BE8
	add r4, r0, #0
	str r5, [r4]
	bl MOD05_021EDB9C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EDB8C
MOD05_021EDB8C: ; 0x021EDB8C
	push {r4, lr}
	add r4, r0, #0
	bl MOD05_021EDBBC
	add r0, r4, #0
	bl MOD05_021E4C00
	pop {r4, pc}

	thumb_func_start MOD05_021EDB9C
MOD05_021EDB9C: ; 0x021EDB9C
	push {r3, lr}
	sub sp, #8
	add r3, r0, #0
	add r0, #0x58
	str r0, [sp]
	add r0, r3, #0
	add r0, #0x5c
	str r0, [sp, #4]
	ldr r0, [r3]
	mov r1, #0x50
	mov r2, #0
	add r3, r3, #4
	bl MOD05_021E51EC
	add sp, #8
	pop {r3, pc}

	thumb_func_start MOD05_021EDBBC
MOD05_021EDBBC: ; 0x021EDBBC
	ldr r3, _021EDBC4 ; =MOD05_021E4C00
	ldr r0, [r0, #0x5c]
	bx r3
	nop
_021EDBC4: .word MOD05_021E4C00

	thumb_func_start MOD05_021EDBC8
MOD05_021EDBC8: ; 0x021EDBC8
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r2, sp, #8
	mov r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	add r5, r0, #0
	str r1, [r2, #8]
	bl FUN_020553A0
	add r4, r0, #0
	bl MOD05_021E4C24
	add r6, r0, #0
	mov r1, #0x10
	str r6, [sp, #0x14]
	bl MOD05_021E4C08
	str r0, [sp, #0x18]
	add r0, r4, #0
	mov r1, #2
	str r5, [sp, #0x1c]
	bl FUN_0205829C
	add r1, sp, #0x14
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021EDC10 ; =0x021F8A6C
	add r0, r6, #0
	add r2, sp, #8
	mov r3, #0
	bl MOD05_021E4DC4
	add sp, #0x20
	pop {r4, r5, r6, pc}
	nop
_021EDC10: .word 0x021F8A6C

	thumb_func_start MOD05_021EDC14
MOD05_021EDC14: ; 0x021EDC14
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl FUN_0206475C
	add r4, r0, #0
	add r3, r4, #0
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0x24
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r4, #8]
	bl FUN_020553A0
	mov r1, #0
	mvn r1, r1
	add r4, r0, #0
	str r1, [r5, #4]
	bl FUN_02058448
	str r0, [r5, #0x14]
	add r0, r4, #0
	bl FUN_02058450
	str r0, [r5, #0x18]
	mov r0, #1
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021EDC4C
MOD05_021EDC4C: ; 0x021EDC4C
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021EDC50
MOD05_021EDC50: ; 0x021EDC50
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #4]
	bl FUN_020553A0
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	add r6, r0, #0
	bl FUN_020582A8
	cmp r0, #0
	bne _021EDC78
	ldr r0, [sp]
	bl MOD05_021E4DE4
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_021EDC78:
	ldr r7, [r5, #4]
	add r0, r6, #0
	bl FUN_02058720
	strb r0, [r5, #8]
	ldrb r0, [r5, #8]
	bl MOD05_021EDDF4
	str r0, [r5, #4]
	mov r0, #0
	str r0, [r5]
	ldr r4, [r5, #4]
	sub r0, r0, #1
	cmp r4, r0
	beq _021EDCA0
	ldr r0, [sp, #4]
	bl FUN_020552F8
	cmp r4, r0
	beq _021EDCAE
_021EDCA0:
	mov r0, #0
	str r0, [r5, #0x1c]
	str r0, [r5, #0x20]
	mov r0, #1
	add sp, #0x24
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021EDCAE:
	cmp r7, r4
	beq _021EDCB8
	mov r0, #0
	str r0, [r5, #0x1c]
	str r0, [r5, #0x20]
_021EDCB8:
	add r0, r6, #0
	bl FUN_02058B2C
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl FUN_02059BF4
	add r7, r0, #0
	add r0, r6, #0
	bl FUN_02058B4C
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	bl FUN_02059C00
	add r2, r0, #0
	ldr r1, [sp, #8]
	add r0, r4, r7
	add r1, r1, r2
	add r2, sp, #0xc
	bl FUN_02059E60
	add r0, r6, #0
	add r1, sp, #0x18
	bl FUN_02058B5C
	ldr r0, [sp, #0x1c]
	add r1, sp, #0xc
	str r0, [sp, #0x10]
	ldr r0, [sp]
	bl FUN_0206476C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021EDCFC
MOD05_021EDCFC: ; 0x021EDCFC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x3c
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	cmp r0, #1
	beq _021EDDE2
	mov r0, #0
	ldr r1, [r4, #4]
	mvn r0, r0
	cmp r1, r0
	beq _021EDDE2
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	cmp r0, #0xf
	ble _021EDD34
	mov r0, #0
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	str r0, [r4, #0x20]
_021EDD34:
	ldr r3, _021EDDE8 ; =0x021F8A60
	add r2, sp, #0x24
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r5, _021EDDEC ; =0x021F8A80
	str r0, [r2]
	add r3, sp, #0
	mov r2, #4
_021EDD46:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021EDD46
	ldr r0, [r5]
	mov r2, #0x18
	str r0, [r3]
	ldr r1, [r4, #4]
	ldr r3, _021EDDF0 ; =0x021F8AA4
	add r0, r1, #0
	mul r0, r2
	add r0, r3, r0
	ldr r5, [r4, #0x20]
	mov r3, #0xc
	mul r3, r5
	add r5, r0, r3
	cmp r1, #3
	bhi _021EDDB4
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EDD76: ; jump table
	.short _021EDD7E - _021EDD76 - 2 ; case 0
	.short _021EDD8C - _021EDD76 - 2 ; case 1
	.short _021EDD9A - _021EDD76 - 2 ; case 2
	.short _021EDDA8 - _021EDD76 - 2 ; case 3
_021EDD7E:
	mov r1, #0
	add r0, sp, #0
	mov r2, #0xb4
	add r3, r1, #0
	bl FUN_0201CB20
	b _021EDDB4
_021EDD8C:
	mov r1, #0
	add r0, sp, #0
	add r2, r1, #0
	add r3, r1, #0
	bl FUN_0201CB20
	b _021EDDB4
_021EDD9A:
	mov r1, #0
	add r0, sp, #0
	add r2, #0xf6
	add r3, r1, #0
	bl FUN_0201CB20
	b _021EDDB4
_021EDDA8:
	mov r1, #0
	add r0, sp, #0
	mov r2, #0x5a
	add r3, r1, #0
	bl FUN_0201CB20
_021EDDB4:
	add r0, r6, #0
	add r1, sp, #0x30
	bl FUN_0206477C
	ldr r1, [sp, #0x30]
	ldr r0, [r5]
	add r2, sp, #0
	add r0, r1, r0
	str r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	ldr r0, [r5, #4]
	add r3, sp, #0x24
	add r0, r1, r0
	str r0, [sp, #0x34]
	ldr r1, [sp, #0x38]
	ldr r0, [r5, #8]
	add r0, r1, r0
	str r0, [sp, #0x38]
	ldr r0, [r4, #0x28]
	add r1, sp, #0x30
	add r0, r0, #4
	bl FUN_0201B26C
_021EDDE2:
	add sp, #0x3c
	pop {r3, r4, r5, r6, pc}
	nop
_021EDDE8: .word 0x021F8A60
_021EDDEC: .word 0x021F8A80
_021EDDF0: .word 0x021F8AA4

	thumb_func_start MOD05_021EDDF4
MOD05_021EDDF4: ; 0x021EDDF4
	push {r4, lr}
	add r4, r0, #0
	bl FUN_020547D4
	cmp r0, #0
	beq _021EDE04
	mov r0, #0
	pop {r4, pc}
_021EDE04:
	add r0, r4, #0
	bl FUN_020547E0
	cmp r0, #0
	beq _021EDE12
	mov r0, #1
	pop {r4, pc}
_021EDE12:
	add r0, r4, #0
	bl FUN_020547C8
	cmp r0, #0
	beq _021EDE20
	mov r0, #2
	pop {r4, pc}
_021EDE20:
	add r0, r4, #0
	bl FUN_020547BC
	cmp r0, #0
	beq _021EDE2E
	mov r0, #3
	pop {r4, pc}
_021EDE2E:
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}

	thumb_func_start MOD05_021EDE34
MOD05_021EDE34: ; 0x021EDE34
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r1, #0
	add r1, r6, #0
	bl _s32_div_f
	add r4, r1, #0
	add r0, r5, #0
	add r1, r6, #0
	bl _s32_div_f
	cmp r4, r1
	bne _021EDE52
	mov r0, #1
	pop {r4, r5, r6, pc}
_021EDE52:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EDE58
MOD05_021EDE58: ; 0x021EDE58
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r1, #0
	add r1, r6, #0
	bl _s32_div_f
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl _s32_div_f
	cmp r4, r0
	bne _021EDE76
	mov r0, #1
	pop {r4, r5, r6, pc}
_021EDE76:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EDE7C
MOD05_021EDE7C: ; 0x021EDE7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x30
	add r4, r1, #0
	mul r4, r0
	add r1, r5, r4
	ldr r0, [r1, #0x14]
	cmp r0, #0
	beq _021EDE94
	ldr r0, [r1, #0xc]
	bl MOD05_021EF8F8
_021EDE94:
	add r1, r5, r4
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq _021EDEA2
	ldr r0, [r1, #0x10]
	bl MOD05_021F4444
_021EDEA2:
	mov r1, #1
	add r0, r5, r4
	str r1, [r0, #0x28]
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EDEAC
MOD05_021EDEAC: ; 0x021EDEAC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021EDEBC
	ldr r0, [r4, #8]
	bl MOD05_021EF8F8
_021EDEBC:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021EDEC8
	ldr r0, [r4, #0xc]
	bl MOD05_021F4444
_021EDEC8:
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	pop {r4, pc}

	thumb_func_start MOD05_021EDED0
MOD05_021EDED0: ; 0x021EDED0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r2, #0
	asr r2, r0, #4
	lsr r2, r2, #0x1b
	add r2, r0, r2
	asr r7, r2, #5
	asr r2, r1, #4
	lsr r2, r2, #0x1b
	add r2, r1, r2
	asr r6, r2, #5
	ldr r2, [sp, #0x18]
	str r3, [sp]
	ldr r4, [sp, #0x1c]
	bl MOD05_021EEE08
	ldr r1, [sp, #0x18]
	bl MOD05_021EF620
	add r1, r6, #0
	mul r1, r5
	add r1, r7, r1
	cmp r0, #3
	bhi _021EDFB6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EDF0A: ; jump table
	.short _021EDF12 - _021EDF0A - 2 ; case 0
	.short _021EDF38 - _021EDF0A - 2 ; case 1
	.short _021EDF60 - _021EDF0A - 2 ; case 2
	.short _021EDF8A - _021EDF0A - 2 ; case 3
_021EDF12:
	sub r2, r1, r5
	str r1, [r4, #0xc]
	sub r0, r2, #1
	str r0, [r4]
	str r2, [r4, #4]
	sub r0, r1, #1
	str r0, [r4, #8]
	sub r0, r7, #1
	bpl _021EDF2C
	mov r0, #0
	mvn r0, r0
	str r0, [r4]
	str r0, [r4, #8]
_021EDF2C:
	sub r0, r6, #1
	bpl _021EDFBA
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_021EDF38:
	str r1, [r4, #8]
	sub r0, r1, r5
	str r0, [r4]
	add r0, r0, #1
	str r0, [r4, #4]
	add r0, r1, #1
	str r0, [r4, #0xc]
	add r0, r7, #1
	cmp r0, r5
	blt _021EDF54
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #4]
	str r0, [r4, #0xc]
_021EDF54:
	sub r0, r6, #1
	bpl _021EDFBA
	mov r0, #0
	mvn r0, r0
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021EDF60:
	str r1, [r4, #4]
	sub r0, r1, #1
	add r1, r1, r5
	str r0, [r4]
	sub r0, r1, #1
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	sub r0, r7, #1
	bpl _021EDF7A
	mov r0, #0
	mvn r0, r0
	str r0, [r4]
	str r0, [r4, #8]
_021EDF7A:
	ldr r0, [sp]
	add r1, r6, #1
	cmp r1, r0
	ble _021EDFBA
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_021EDF8A:
	str r1, [r4]
	add r0, r1, #1
	str r0, [r4, #4]
	add r0, r1, r5
	str r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #0xc]
	add r0, r7, #1
	cmp r0, r5
	blt _021EDFA6
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #4]
	str r0, [r4, #0xc]
_021EDFA6:
	ldr r0, [sp]
	add r1, r6, #1
	cmp r1, r0
	ble _021EDFBA
	mov r0, #0
	mvn r0, r0
	str r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_021EDFB6:
	bl ErrorHandling
_021EDFBA:
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021EDFBC
MOD05_021EDFBC: ; 0x021EDFBC
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	add r5, r0, #0
	sub r7, r6, #1
_021EDFC4:
	ldr r1, _021EE03C ; =0x0000086C
	mov r0, #4
	bl FUN_02016998
	lsl r4, r6, #2
	add r1, r5, r4
	add r1, #0x90
	str r0, [r1]
	add r0, r5, r4
	add r0, #0x90
	ldr r2, [r0]
	ldr r0, _021EE040 ; =0x00000864
	mov r1, #0
	str r1, [r2, r0]
	add r2, r5, r4
	add r2, #0x90
	ldr r3, [r2]
	ldr r2, _021EE044 ; =0x00000854
	ldr r1, [r5]
	add r0, r6, #0
	add r2, r3, r2
	bl MOD05_021F3C60
	add r2, r5, r4
	add r2, #0x90
	ldr r3, [r2]
	ldr r2, _021EE048 ; =0x00000858
	ldr r1, [r5]
	add r0, r6, #0
	add r2, r3, r2
	bl MOD05_021F3C68
	mov r0, #4
	bl MOD05_021E7C00
	add r1, r5, r4
	add r1, #0x90
	ldr r2, [r1]
	ldr r1, _021EE04C ; =0x00000868
	str r0, [r2, r1]
	add r0, r5, r4
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #0x86
	lsl r0, r0, #4
	str r7, [r1, r0]
	add r1, r5, r4
	add r1, #0x90
	mov r2, #2
	ldr r1, [r1]
	add r0, r7, #0
	lsl r2, r2, #0xa
	bl MIi_CpuClearFast
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021EDFC4
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EE03C: .word 0x0000086C
_021EE040: .word 0x00000864
_021EE044: .word 0x00000854
_021EE048: .word 0x00000858
_021EE04C: .word 0x00000868

	thumb_func_start MOD05_021EE050
MOD05_021EE050: ; 0x021EE050
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	add r5, r0, #0
	add r7, r6, #0
_021EE058:
	ldr r1, _021EE0B0 ; =0x0000086C
	mov r0, #4
	bl FUN_02016998
	lsl r4, r6, #2
	add r1, r5, r4
	add r1, #0x90
	str r0, [r1]
	add r0, r5, r4
	add r0, #0x90
	ldr r1, [r0]
	ldr r0, _021EE0B4 ; =0x00000864
	add r2, r5, r4
	str r7, [r1, r0]
	add r2, #0x90
	ldr r3, [r2]
	ldr r2, _021EE0B8 ; =0x00000854
	ldr r1, [r5]
	add r0, r6, #0
	add r2, r3, r2
	bl MOD05_021F3C60
	mov r0, #4
	bl MOD05_021E7C00
	add r1, r5, r4
	add r1, #0x90
	ldr r2, [r1]
	ldr r1, _021EE0BC ; =0x00000868
	str r0, [r2, r1]
	add r0, r5, r4
	add r0, #0x90
	ldr r2, [r0]
	mov r1, #0
	mov r0, #0x86
	mvn r1, r1
	lsl r0, r0, #4
	str r1, [r2, r0]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021EE058
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EE0B0: .word 0x0000086C
_021EE0B4: .word 0x00000864
_021EE0B8: .word 0x00000854
_021EE0BC: .word 0x00000868

	thumb_func_start MOD05_021EE0C0
MOD05_021EE0C0: ; 0x021EE0C0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	cmp r6, #0
	beq _021EE0E6
	mov r0, #4
	mov r1, #0x10
	bl FUN_020169D8
	add r4, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #0
	mov r3, #0x10
	str r4, [sp]
	bl FUN_02006814
	b _021EE0FC
_021EE0E6:
	bl ErrorHandling
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x43
	add r1, r7, #0
	mov r2, #4
	mov r3, #0
	bl FUN_02006584
	add r4, r0, #0
_021EE0FC:
	ldr r0, [r4]
	str r0, [r5]
	ldr r0, [r4, #4]
	str r0, [r5, #0xc]
	ldr r0, [r4, #8]
	str r0, [r5, #4]
	ldr r0, [r4, #0xc]
	str r0, [r5, #8]
	add r0, r4, #0
	bl FUN_02016A18
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021EE114
MOD05_021EE114: ; 0x021EE114
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r4, [sp, #0x40]
	lsl r7, r0, #2
	add r0, r4, r7
	ldr r0, [r0, #0x18]
	str r1, [sp, #0xc]
	ldr r5, [sp, #0x3c]
	cmp r0, #0
	blt _021EE1D0
	ldr r1, [sp, #0x38]
	mul r1, r3
	cmp r0, r1
	bge _021EE1D0
	add r1, r2, #0
	bl FUN_02034660
	add r1, r0, #0
	ldr r0, _021EE1D4 ; =0x0000FFFF
	cmp r1, r0
	beq _021EE1D0
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	add r2, sp, #0x10
	bl MOD05_021EE0C0
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	ldr r1, [sp, #0x10]
	ldr r2, [r4, r7]
	bl FUN_02006864
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	ldr r3, _021EE1D8 ; =0x00000868
	str r0, [sp]
	add r0, r5, #0
	ldr r6, [r4, r7]
	add r0, #0xf8
	ldr r0, [r0]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0xc]
	ldr r3, [r6, r3]
	bl MOD05_021E7CD8
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	ldr r0, [sp, #0xc]
	ldr r6, [r4, r7]
	bl MOD05_021F4C74
	ldr r3, _021EE1DC ; =0x00000864
	str r0, [sp]
	add r0, r6, r3
	add r2, r3, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x10
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xf8
	sub r2, #0x64
	sub r3, #0x10
	ldr r0, [r0]
	ldr r1, [sp, #0x14]
	add r2, r6, r2
	add r3, r6, r3
	bl MOD05_021EFA00
	str r0, [r4, #8]
	ldr r0, [r4, #0x14]
	add r3, r4, #0
	add r0, r0, #1
	str r0, [r4, #0x14]
	ldr r2, [r4, r7]
	ldr r6, _021EE1E0 ; =0x00000858
	add r5, #0xf8
	add r0, r2, r6
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r5]
	add r5, r6, #4
	ldr r1, [sp, #0x18]
	ldr r2, [r2, r5]
	add r3, #0x14
	bl MOD05_021F43E4
	str r0, [r4, #0xc]
_021EE1D0:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EE1D4: .word 0x0000FFFF
_021EE1D8: .word 0x00000868
_021EE1DC: .word 0x00000864
_021EE1E0: .word 0x00000858

	thumb_func_start MOD05_021EE1E4
MOD05_021EE1E4: ; 0x021EE1E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x30
	str r1, [sp, #0xc]
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _021EE294 ; =0x00000828
	lsl r7, r0, #2
	add r3, sp
	ldr r4, [r3, #0x18]
	ldr r5, [r3, #0x14]
	add r0, r4, r7
	ldr r0, [r0, #0x18]
	cmp r0, #0
	blt _021EE286
	ldr r3, [r3, #0x10]
	mul r3, r2
	cmp r0, r3
	bge _021EE286
	bl FUN_02034660
	add r1, r0, #0
	ldr r0, _021EE298 ; =0x0000FFFF
	cmp r1, r0
	beq _021EE286
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	add r2, sp, #0x10
	bl MOD05_021EE0C0
	add r0, r5, #0
	add r0, #0xf8
	mov r1, #2
	ldr r0, [r0]
	lsl r1, r1, #0xa
	add r2, sp, #0x20
	bl FUN_02006864
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	ldr r3, _021EE29C ; =0x00000868
	str r0, [sp]
	add r0, r5, #0
	ldr r6, [r4, r7]
	add r0, #0xf8
	ldr r0, [r0]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0xc]
	ldr r3, [r6, r3]
	bl MOD05_021E7CD8
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	ldr r0, [sp, #0xc]
	ldr r6, [r4, r7]
	bl MOD05_021F4C74
	ldr r3, _021EE2A0 ; =0x00000864
	str r0, [sp]
	add r0, r6, r3
	add r2, r3, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x10
	str r0, [sp, #8]
	add r5, #0xf8
	sub r2, #0x64
	sub r3, #0x10
	ldr r0, [r5]
	ldr r1, [sp, #0x14]
	add r2, r6, r2
	add r3, r6, r3
	bl MOD05_021EFA00
	str r0, [r4, #8]
_021EE286:
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EE294: .word 0x00000828
_021EE298: .word 0x0000FFFF
_021EE29C: .word 0x00000868
_021EE2A0: .word 0x00000864

	thumb_func_start MOD05_021EE2A4
MOD05_021EE2A4: ; 0x021EE2A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r1, #0
	str r0, [sp, #4]
	str r2, [sp, #8]
	ldr r7, [sp, #0x3c]
	add r1, r0, #0
	bmi _021EE37A
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x34]
	add r5, r2, #0
	mul r5, r1
	add r1, r0, #0
	cmp r1, r5
	bge _021EE37A
	add r1, r3, #0
	bl FUN_02034660
	add r1, r0, #0
	ldr r0, _021EE380 ; =0x0000FFFF
	cmp r1, r0
	beq _021EE37A
	add r0, r7, #0
	add r0, #0xf8
	ldr r0, [r0]
	add r2, sp, #0xc
	bl MOD05_021EE0C0
	lsl r5, r4, #2
	add r4, r7, #0
	add r0, r7, #0
	add r4, #0x90
	add r0, #0xf8
	ldr r0, [r0]
	ldr r1, [sp, #0xc]
	ldr r2, [r4, r5]
	bl FUN_02006864
	add r0, r7, #0
	add r0, #0xf0
	ldr r0, [r0]
	ldr r3, _021EE384 ; =0x00000868
	str r0, [sp]
	add r0, r7, #0
	ldr r6, [r4, r5]
	add r0, #0xf8
	ldr r0, [r0]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #8]
	ldr r3, [r6, r3]
	bl MOD05_021E7CD8
	ldr r6, [r4, r5]
	ldr r0, [sp, #8]
	bl MOD05_021F4C74
	str r0, [sp]
	add r0, r7, #0
	mov r3, #2
	add r0, #0xf8
	lsl r3, r3, #0xa
	add r2, r6, r3
	add r3, #0x54
	ldr r0, [r0]
	ldr r1, [sp, #0x10]
	add r3, r6, r3
	bl MOD05_021EFA40
	ldr r1, [sp, #0x38]
	cmp r1, #1
	bne _021EE336
	bl MOD05_021DB5EC
_021EE336:
	ldr r6, _021EE388 ; =0x00000864
	ldr r0, [r4, r5]
	mov r1, #1
	str r1, [r0, r6]
	add r2, r6, #0
	add r0, r7, #0
	add r0, #0xf8
	ldr r3, [r4, r5]
	sub r2, #8
	sub r6, #0xc
	ldr r2, [r3, r2]
	ldr r0, [r0]
	ldr r1, [sp, #0x14]
	ldr r3, [r3, r6]
	bl MOD05_021F4344
	mov r2, #0x86
	ldr r1, [r4, r5]
	ldr r0, [sp, #4]
	lsl r2, r2, #4
	str r0, [r1, r2]
	add r0, r7, #0
	add r0, #0xfc
	ldr r3, [r0]
	cmp r3, #0
	beq _021EE37A
	mov r0, #1
	lsl r0, r0, #8
	ldr r4, [r4, r5]
	add r2, #8
	ldr r0, [r7, r0]
	ldr r1, [sp, #4]
	ldr r2, [r4, r2]
	blx r3
_021EE37A:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021EE380: .word 0x0000FFFF
_021EE384: .word 0x00000868
_021EE388: .word 0x00000864

	thumb_func_start MOD05_021EE38C
MOD05_021EE38C: ; 0x021EE38C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x2c
	str r2, [sp, #8]
	ldr r2, _021EE44C ; =0x00000820
	add r4, r1, #0
	add r2, sp
	str r0, [sp, #4]
	ldr r5, [r2, #0x1c]
	add r1, r0, #0
	bmi _021EE43E
	ldr r6, [r2, #0x10]
	ldr r1, [r2, #0x14]
	add r2, r6, #0
	mul r2, r1
	add r1, r0, #0
	cmp r1, r2
	bge _021EE43E
	add r1, r3, #0
	bl FUN_02034660
	add r1, r0, #0
	ldr r0, _021EE450 ; =0x0000FFFF
	cmp r1, r0
	beq _021EE43E
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	add r2, sp, #0xc
	bl MOD05_021EE0C0
	add r0, r5, #0
	add r0, #0xf8
	mov r1, #2
	ldr r0, [r0]
	lsl r1, r1, #0xa
	add r2, sp, #0x1c
	bl FUN_02006864
	add r0, r5, #0
	add r0, #0xf0
	ldr r0, [r0]
	add r7, r5, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xf8
	lsl r4, r4, #2
	add r7, #0x90
	ldr r6, [r7, r4]
	ldr r3, _021EE454 ; =0x00000868
	ldr r0, [r0]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #8]
	ldr r3, [r6, r3]
	bl MOD05_021E7CD8
	ldr r0, [sp, #8]
	ldr r6, [r7, r4]
	bl MOD05_021F4C74
	mov r3, #2
	str r0, [sp]
	add r5, #0xf8
	lsl r3, r3, #0xa
	add r2, r6, r3
	add r3, #0x54
	ldr r0, [r5]
	ldr r1, [sp, #0x10]
	add r3, r6, r3
	bl MOD05_021EFA40
	ldr r1, _021EE44C ; =0x00000820
	add r1, sp
	ldr r1, [r1, #0x18]
	cmp r1, #1
	bne _021EE42E
	bl MOD05_021DB5EC
_021EE42E:
	ldr r1, [r7, r4]
	ldr r0, _021EE458 ; =0x00000864
	mov r2, #1
	str r2, [r1, r0]
	sub r1, r0, #4
	ldr r2, [r7, r4]
	ldr r0, [sp, #4]
	str r0, [r2, r1]
_021EE43E:
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021EE44C: .word 0x00000820
_021EE450: .word 0x0000FFFF
_021EE454: .word 0x00000868
_021EE458: .word 0x00000864

	thumb_func_start MOD05_021EE45C
MOD05_021EE45C: ; 0x021EE45C
	ldr r1, [r0]
	cmp r1, #0
	bne _021EE46C
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _021EE46C
	mov r0, #1
	bx lr
_021EE46C:
	mov r0, #0
	bx lr

	thumb_func_start MOD05_021EE470
MOD05_021EE470: ; 0x021EE470
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	str r3, [sp]
	add r0, sp, #0x10
	add r7, r1, #0
	ldrb r1, [r0, #0x14]
	mov r0, #0x30
	str r2, [sp, #8]
	add r5, r1, #0
	mul r5, r0
	add r0, r4, #0
	str r0, [sp, #4]
	add r0, #0x2c
	str r0, [sp, #4]
	ldr r0, [r0, r5]
	cmp r0, #0
	beq _021EE498
	bl ErrorHandling
_021EE498:
	ldr r0, [sp, #4]
	mov r1, #1
	str r1, [r0, r5]
	add r0, sp, #0x10
	add r5, r4, r5
	add r1, r5, #0
	ldrb r2, [r0, #0x18]
	add r1, #0x30
	add r3, r4, #0
	strb r2, [r1]
	add r2, r5, #0
	ldr r1, [sp, #8]
	str r7, [r5, #0x1c]
	str r1, [r5, #0x20]
	ldr r1, [sp]
	add r2, #0x24
	strb r1, [r2]
	add r1, r5, #0
	ldrb r0, [r0, #0x10]
	add r1, #0x25
	add r3, #0x90
	strb r0, [r1]
	ldr r1, [sp]
	mov r6, #0
	lsl r2, r1, #2
	ldr r1, [r3, r2]
	str r1, [r5, #4]
	lsl r1, r0, #2
	ldr r0, [r3, r1]
	str r0, [r5, #8]
	add r0, r5, #0
	add r0, #0x26
	strb r6, [r0]
	add r0, r6, #0
	str r0, [r5, #0x28]
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #0
	bne _021EE4F0
	add r5, r4, #0
	add r5, #0xb4
	add r0, r6, #0
	str r0, [r5]
_021EE4F0:
	ldr r0, [r3, r2]
	mov r2, #0x86
	lsl r2, r2, #4
	str r7, [r0, r2]
	ldr r1, [r3, r1]
	ldr r0, [sp, #8]
	str r0, [r1, r2]
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xa0
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xa1
	ldrb r0, [r0]
	add r4, #0xa1
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	strb r0, [r4]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EE52C
MOD05_021EE52C: ; 0x021EE52C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r0, r5, #0
	add r0, #0xa2
	ldrb r1, [r0]
	mov r0, #0x30
	add r4, r5, #0
	add r2, r5, #4
	mul r0, r1
	add r4, #0xcc
	add r6, r2, r0
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _021EE572
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _021EE5D0
	ldr r0, [r4, #0x14]
	ldr r1, [r0]
	ldr r0, [r4, #0x10]
	ldr r0, [r0]
	cmp r1, r0
	ble _021EE560
	bl ErrorHandling
_021EE560:
	ldr r0, [r4, #0x10]
	ldr r1, [r0]
	ldr r0, [r4, #0x14]
	ldr r0, [r0]
	sub r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0x10
	cmp r1, r0
	bge _021EE574
_021EE572:
	b _021EE6B0
_021EE574:
	ldr r1, [r4, #0xc]
	add r2, sp, #0x10
	ldr r0, [r1]
	ldr r1, [r1, #8]
	add r3, sp, #0xc
	bl MOD05_021EF4F8
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	add r2, r5, #0
	bl MOD05_021EF2AC
	ldr r3, [r4, #0xc]
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r4, #8]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	beq _021EE5B2
	mov r0, #1
	bl FUN_020336A0
	cmp r0, #0
	bne _021EE692
_021EE5B2:
	ldr r0, [r4, #8]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	beq _021EE5C6
	bl ErrorHandling
_021EE5C6:
	mov r0, #0
	str r0, [r4, #0x18]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	b _021EE6B0
_021EE5D0:
	ldr r2, [r4, #0xc]
	ldr r3, [r4]
	ldr r7, [r2]
	cmp r3, r7
	beq _021EE5E8
	ldr r1, [r4, #8]
	ldr r0, [r2, #8]
	cmp r1, r0
	beq _021EE5E8
	bl ErrorHandling
	b _021EE6B0
_021EE5E8:
	cmp r3, r7
	bne _021EE5F4
	ldr r1, [r4, #8]
	ldr r0, [r2, #8]
	cmp r1, r0
	beq _021EE6B0
_021EE5F4:
	mov r3, #1
	str r3, [r4, #0x18]
	ldr r2, [r4, #0xc]
	ldr r0, [r4]
	ldr r1, [r2]
	cmp r0, r1
	beq _021EE648
	cmp r0, r1
	ble _021EE612
	str r4, [r4, #0x10]
	ldr r0, [r4, #0xc]
	str r0, [r4, #0x14]
	mov r0, #3
	strb r0, [r4, #0x1c]
	b _021EE618
_021EE612:
	str r2, [r4, #0x10]
	str r4, [r4, #0x14]
	strb r3, [r4, #0x1c]
_021EE618:
	ldr r0, [r4]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	beq _021EE632
	mov r0, #1
	bl FUN_020336A0
	cmp r0, #0
	bne _021EE692
_021EE632:
	ldr r0, [r4]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	beq _021EE6A8
	bl ErrorHandling
	b _021EE6A8
_021EE648:
	add r1, r5, #0
	add r1, #0xd8
	add r0, r5, #0
	ldr r1, [r1]
	add r0, #0xd4
	ldr r0, [r0]
	ldr r1, [r1, #8]
	cmp r0, r1
	ble _021EE66A
	add r0, r4, #0
	add r0, #8
	str r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	add r0, #8
	str r0, [r4, #0x14]
	mov r0, #4
	b _021EE676
_021EE66A:
	add r2, #8
	add r0, r4, #0
	str r2, [r4, #0x10]
	add r0, #8
	str r0, [r4, #0x14]
	mov r0, #2
_021EE676:
	strb r0, [r4, #0x1c]
	ldr r0, [r4, #8]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	beq _021EE694
	mov r0, #1
	bl FUN_020336A0
	cmp r0, #0
	beq _021EE694
_021EE692:
	b _021EE8C2
_021EE694:
	ldr r0, [r4, #8]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x11
	sub r1, r1, r2
	mov r0, #0x11
	ror r1, r0
	add r0, r2, r1
	beq _021EE6A8
	bl ErrorHandling
_021EE6A8:
	ldrb r0, [r4, #0x1c]
	add r1, r5, #0
	bl MOD05_021EF458
_021EE6B0:
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #3
	bls _021EE6BC
	b _021EE818
_021EE6BC:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EE6C8: ; jump table
	.short _021EE6D0 - _021EE6C8 - 2 ; case 0
	.short _021EE726 - _021EE6C8 - 2 ; case 1
	.short _021EE818 - _021EE6C8 - 2 ; case 2
	.short _021EE804 - _021EE6C8 - 2 ; case 3
_021EE6D0:
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	add r1, r6, r0
	add r1, #0x20
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0x80
	ldr r1, [r1]
	cmp r1, #1
	beq _021EE710
	add r1, r5, #0
	add r1, #0xc4
	ldr r1, [r1]
	add r4, r5, #0
	str r1, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	add r4, #0xf4
	add r1, r5, #0
	add r2, r5, #0
	add r3, r5, #0
	ldr r4, [r4]
	add r1, #0xb8
	add r2, #0xbc
	add r3, #0xc0
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	ldr r4, [r4, #4]
	blx r4
_021EE710:
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	add r6, #0x22
	mov r1, #1
	add r0, r0, #1
	strb r0, [r6]
	add r0, r5, #0
	add r0, #0xb4
	str r1, [r0]
	b _021EE818
_021EE726:
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	sub r0, r0, #1
	add r0, r6, r0
	add r0, #0x20
	ldrb r0, [r0]
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, #0x80
	ldr r0, [r0]
	cmp r0, #1
	bne _021EE75E
	add r0, r6, #0
	bl MOD05_021EDEAC
	add r1, r6, #0
	add r1, #0x22
	ldrb r1, [r1]
	mov r0, #0
	sub r1, r1, #1
	add r1, r6, r1
	add r1, #0x20
	ldrb r1, [r1]
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0x80
	str r0, [r1]
_021EE75E:
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #2
	bhi _021EE818
	add r0, r6, #0
	add r0, #0x10
	bl MOD05_021EE45C
	cmp r0, #1
	bne _021EE818
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #2
	blo _021EE784
	mov r0, #1
	str r0, [r6, #0x24]
	b _021EE78C
_021EE784:
	add r0, r5, #0
	mov r1, #0
	add r0, #0xb4
	str r1, [r0]
_021EE78C:
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	sub r0, r0, #1
	lsl r0, r0, #2
	ldr r2, [r6, r0]
	ldr r0, _021EE8C8 ; =0x00000864
	ldr r1, [r2, r0]
	cmp r1, #1
	bne _021EE7C4
	sub r0, #0x10
	ldr r0, [r2, r0]
	bl FUN_020BC13C
	add r7, r0, #0
	ldrh r0, [r7, #0xe]
	add r0, r7, r0
	ldr r4, [r0, #0xc]
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl MOD05_021F4CA8
	cmp r0, #1
	bne _021EE7C4
	add r0, r7, r4
	bl MOD05_021DB5EC
_021EE7C4:
	add r0, r5, #0
	add r0, #0xfc
	ldr r3, [r0]
	cmp r3, #0
	beq _021EE818
	add r0, r6, #0
	add r0, #0x22
	ldrb r0, [r0]
	mov r2, #0x86
	lsl r2, r2, #4
	sub r0, r0, #1
	lsl r0, r0, #2
	ldr r4, [r6, r0]
	ldr r1, [r4, r2]
	cmp r1, #0
	blt _021EE818
	add r0, r5, #0
	add r6, r5, #0
	add r0, #0xc0
	add r6, #0xc4
	ldr r0, [r0]
	ldr r6, [r6]
	mul r6, r0
	cmp r1, r6
	bge _021EE818
	mov r0, #1
	lsl r0, r0, #8
	add r2, #8
	ldr r0, [r5, r0]
	ldr r2, [r4, r2]
	blx r3
	b _021EE818
_021EE804:
	add r6, #0x10
	add r0, r6, #0
	bl MOD05_021EE45C
	cmp r0, #1
	bne _021EE818
	add r0, r5, #0
	mov r1, #0
	add r0, #0xa0
	strb r1, [r0]
_021EE818:
	add r0, r5, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #0
	bne _021EE83A
	add r0, r5, #0
	mov r1, #0
	add r0, #0xa2
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa1
	strb r1, [r0]
	mov r0, #2
	add r5, #0xb4
	add sp, #0x14
	str r0, [r5]
	pop {r4, r5, r6, r7, pc}
_021EE83A:
	add r0, r5, #0
	bl MOD05_021EF0F0
	cmp r0, #1
	bne _021EE8C2
	add r0, r5, #0
	add r0, #0xa2
	ldrb r1, [r0]
	mov r0, #0x30
	mov r2, #0
	mul r0, r1
	add r0, r5, r0
	str r2, [r0, #0x2c]
	add r0, r5, #0
	bl MOD05_021EF100
	add r0, r5, #0
	add r0, #0xa0
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0xa0
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa2
	ldrb r0, [r0]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r5, #0
	add r1, r2, r1
	add r0, #0xa2
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #0
	beq _021EE890
	mov r1, #0
	b _021EE8A0
_021EE890:
	add r0, r5, #0
	mov r1, #0
	add r0, #0xa2
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa1
	strb r1, [r0]
	mov r1, #2
_021EE8A0:
	add r0, r5, #0
	add r0, #0xb4
	str r1, [r0]
	ldr r0, [r5, #0x6c]
	cmp r0, #1
	bne _021EE8C2
	mov r0, #0
	str r0, [r5, #0x6c]
	add r0, r5, #0
	add r0, #0x70
	ldrb r0, [r0]
	add r1, r5, #0
	bl MOD05_021EF118
	add r0, r5, #0
	bl MOD05_021EF094
_021EE8C2:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021EE8C8: .word 0x00000864

	thumb_func_start MOD05_021EE8CC
MOD05_021EE8CC: ; 0x021EE8CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r4, [sp, #0x34]
	str r2, [sp, #0x10]
	add r7, r0, #0
	ldr r0, [r4, #0x6c]
	add r5, r3, #0
	str r1, [sp, #0xc]
	ldr r6, [sp, #0x30]
	cmp r0, #1
	bne _021EE8E6
	bl ErrorHandling
_021EE8E6:
	add r0, r6, #0
	add r1, r4, #0
	add r2, sp, #0x14
	bl MOD05_021EEF9C
	cmp r0, #1
	bne _021EE964
	add r1, sp, #0x14
	ldrb r1, [r1]
	add r0, r4, #0
	bl MOD05_021EDE7C
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #2
	blo _021EE948
	mov r0, #1
	str r0, [r4, #0x6c]
	ldr r0, [sp, #0xc]
	str r7, [r4, #0x74]
	str r0, [r4, #0x78]
	add r1, r4, #0
	ldr r0, [sp, #0x10]
	add r1, #0x7c
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0x7d
	strb r5, [r0]
	ldr r0, [sp, #0x10]
	add r2, r4, #0
	add r2, #0x90
	lsl r1, r0, #2
	ldr r0, [r2, r1]
	str r0, [r4, #0x64]
	lsl r0, r5, #2
	ldr r3, [r2, r0]
	str r3, [r4, #0x68]
	add r4, #0x70
	strb r6, [r4]
	ldr r3, [r2, r1]
	mov r1, #0x86
	lsl r1, r1, #4
	str r7, [r3, r1]
	ldr r2, [r2, r0]
	ldr r0, [sp, #0xc]
	add sp, #0x18
	str r0, [r2, r1]
	pop {r3, r4, r5, r6, r7, pc}
_021EE948:
	add r0, r4, #0
	str r5, [sp]
	add r0, #0xa1
	ldrb r0, [r0]
	ldr r2, [sp, #0xc]
	add r1, r7, #0
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r3, [sp, #0x10]
	add r0, r4, #0
	bl MOD05_021EE470
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021EE964:
	add r0, r4, #0
	str r5, [sp]
	add r0, #0xa1
	ldrb r0, [r0]
	ldr r2, [sp, #0xc]
	add r1, r7, #0
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r3, [sp, #0x10]
	add r0, r4, #0
	bl MOD05_021EE470
	cmp r0, #1
	beq _021EE984
	bl ErrorHandling
_021EE984:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021EE988
MOD05_021EE988: ; 0x021EE988
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r4, r6, #0
	lsl r5, r0, #2
	add r4, #0x90
	ldr r1, [r4, r5]
	ldr r0, _021EE9CC ; =0x00000864
	mov r2, #0
	str r2, [r1, r0]
	ldr r1, [r4, r5]
	sub r0, #8
	ldr r0, [r1, r0]
	bl MOD05_021F43CC
	ldr r1, [r4, r5]
	ldr r0, _021EE9D0 ; =0x00000868
	ldr r0, [r1, r0]
	bl MOD05_021E7C1C
	mov r0, #0
	mov r2, #0x86
	ldr r1, [r4, r5]
	mvn r0, r0
	lsl r2, r2, #4
	str r0, [r1, r2]
	ldr r1, [r4, r5]
	sub r2, #0x60
	bl MIi_CpuClearFast
	add r0, r6, r5
	mov r1, #1
	add r0, #0x80
	str r1, [r0]
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EE9CC: .word 0x00000864
_021EE9D0: .word 0x00000868

	thumb_func_start MOD05_021EE9D4
MOD05_021EE9D4: ; 0x021EE9D4
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x18]
	add r5, r1, #0
	add r1, r4, #0
	add r6, r0, #0
	add r7, r2, #0
	str r3, [sp]
	bl MOD05_021EE988
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021EE988
	add r4, #0x90
	lsl r1, r6, #2
	lsl r5, r5, #2
	lsl r2, r7, #2
	ldr r0, [r4, r1]
	ldr r3, [r4, r5]
	ldr r6, [r4, r2]
	str r6, [r4, r1]
	ldr r1, [sp]
	lsl r6, r1, #2
	ldr r1, [r4, r6]
	str r1, [r4, r5]
	str r0, [r4, r2]
	str r3, [r4, r6]
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021EEA0C
MOD05_021EEA0C: ; 0x021EEA0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r1, [sp, #8]
	add r7, r0, #0
	ldr r0, [sp, #8]
	add r6, r2, #0
	cmp r0, #4
	bls _021EEA1E
	b _021EED32
_021EEA1E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EEA2A: ; jump table
	.short _021EED32 - _021EEA2A - 2 ; case 0
	.short _021EEBA4 - _021EEA2A - 2 ; case 1
	.short _021EEC80 - _021EEA2A - 2 ; case 2
	.short _021EEAD2 - _021EEA2A - 2 ; case 3
	.short _021EEA34 - _021EEA2A - 2 ; case 4
_021EEA34:
	mov r0, #2
	mov r1, #3
	mov r2, #0
	mov r3, #1
	str r6, [sp]
	bl MOD05_021EE9D4
	add r0, r6, #0
	add r0, #0xad
	ldrb r0, [r0]
	cmp r0, #2
	bne _021EEA7E
	add r0, r6, #0
	add r0, #0xc0
	ldr r2, [r0]
	mov r0, #1
	sub r5, r7, r2
	str r0, [sp, #0x10]
	mov r0, #0
	sub r4, r5, #1
	str r0, [sp, #0xc]
	cmp r5, #0
	bge _021EEA68
	sub r5, r0, #1
	add r4, r5, #0
	b _021EEAB4
_021EEA68:
	cmp r4, #0
	blt _021EEA78
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021EDE58
	cmp r0, #0
	bne _021EEAB4
_021EEA78:
	mov r4, #0
	mvn r4, r4
	b _021EEAB4
_021EEA7E:
	cmp r0, #3
	bne _021EEAB0
	add r0, r6, #0
	add r0, #0xc0
	ldr r2, [r0]
	mov r0, #0
	sub r5, r7, r2
	str r0, [sp, #0x10]
	mov r0, #1
	add r4, r5, #1
	str r0, [sp, #0xc]
	cmp r5, #0
	bge _021EEA9E
	sub r5, r0, #2
	add r4, r5, #0
	b _021EEAB4
_021EEA9E:
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021EDE58
	cmp r0, #0
	bne _021EEAB4
	mov r4, #0
	mvn r4, r4
	b _021EEAB4
_021EEAB0:
	bl ErrorHandling
_021EEAB4:
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #8]
	lsl r2, r2, #0x18
	str r0, [sp]
	lsl r3, r3, #0x18
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	str r6, [sp, #4]
	bl MOD05_021EE8CC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021EEAD2:
	mov r0, #1
	mov r1, #3
	mov r2, #0
	mov r3, #2
	str r6, [sp]
	bl MOD05_021EE9D4
	add r0, r6, #0
	add r0, #0xad
	ldrb r0, [r0]
	cmp r0, #1
	bne _021EEB30
	add r0, r6, #0
	add r0, #0xc0
	ldr r2, [r0]
	sub r5, r7, #1
	sub r0, r7, r2
	sub r4, r0, #1
	mov r0, #2
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0xc]
	cmp r5, #0
	blt _021EEB0E
	add r0, r5, #0
	add r1, r7, #0
	bl MOD05_021EDE58
	cmp r0, #0
	bne _021EEB14
_021EEB0E:
	mov r5, #0
	mvn r5, r5
	add r4, r5, #0
_021EEB14:
	cmp r4, #0
	blt _021EEB2A
	add r2, r6, #0
	add r2, #0xc0
	ldr r2, [r2]
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021EDE34
	cmp r0, #0
	bne _021EEB86
_021EEB2A:
	mov r4, #0
	mvn r4, r4
	b _021EEB86
_021EEB30:
	cmp r0, #3
	bne _021EEB82
	add r0, r6, #0
	add r0, #0xc0
	ldr r2, [r0]
	sub r5, r7, #1
	add r0, r7, r2
	sub r4, r0, #1
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0xc]
	cmp r5, #0
	blt _021EEB58
	add r0, r5, #0
	add r1, r7, #0
	bl MOD05_021EDE58
	cmp r0, #0
	bne _021EEB5E
_021EEB58:
	mov r5, #0
	mvn r5, r5
	add r4, r5, #0
_021EEB5E:
	add r0, r6, #0
	add r0, #0xc0
	ldr r2, [r0]
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r0]
	mul r0, r2
	cmp r0, r4
	ble _021EEB7C
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021EDE34
	cmp r0, #0
	bne _021EEB86
_021EEB7C:
	mov r4, #0
	mvn r4, r4
	b _021EEB86
_021EEB82:
	bl ErrorHandling
_021EEB86:
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #8]
	lsl r2, r2, #0x18
	str r0, [sp]
	lsl r3, r3, #0x18
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	str r6, [sp, #4]
	bl MOD05_021EE8CC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021EEBA4:
	mov r0, #0
	mov r1, #2
	mov r2, #1
	mov r3, #3
	str r6, [sp]
	bl MOD05_021EE9D4
	add r0, r6, #0
	add r0, #0xad
	ldrb r0, [r0]
	cmp r0, #0
	bne _021EEC12
	add r0, r6, #0
	add r0, #0xc0
	ldr r2, [r0]
	add r5, r7, #1
	sub r0, r7, r2
	add r4, r0, #1
	mov r0, #3
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r0]
	mul r0, r2
	cmp r0, r5
	ble _021EEBE8
	add r0, r5, #0
	add r1, r7, #0
	bl MOD05_021EDE58
	cmp r0, #0
	bne _021EEBEE
_021EEBE8:
	mov r5, #0
	mvn r5, r5
	add r4, r5, #0
_021EEBEE:
	add r0, r6, #0
	add r0, #0xc0
	ldr r2, [r0]
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r0]
	mul r0, r2
	cmp r0, r4
	ble _021EEC0C
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021EDE34
	cmp r0, #0
	bne _021EEC62
_021EEC0C:
	mov r4, #0
	mvn r4, r4
	b _021EEC62
_021EEC12:
	cmp r0, #2
	bne _021EEC62
	add r0, r6, #0
	add r0, #0xc0
	ldr r2, [r0]
	add r5, r7, #1
	add r0, r7, r2
	add r4, r0, #1
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r0]
	mul r0, r2
	cmp r0, r5
	ble _021EEC42
	add r0, r5, #0
	add r1, r7, #0
	bl MOD05_021EDE58
	cmp r0, #0
	bne _021EEC48
_021EEC42:
	mov r5, #0
	mvn r5, r5
	add r4, r5, #0
_021EEC48:
	cmp r4, #0
	blt _021EEC5E
	add r2, r6, #0
	add r2, #0xc0
	ldr r2, [r2]
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021EDE34
	cmp r0, #0
	bne _021EEC62
_021EEC5E:
	mov r4, #0
	mvn r4, r4
_021EEC62:
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #8]
	lsl r2, r2, #0x18
	str r0, [sp]
	lsl r3, r3, #0x18
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	str r6, [sp, #4]
	bl MOD05_021EE8CC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021EEC80:
	mov r0, #0
	mov r1, #1
	mov r2, #2
	mov r3, #3
	str r6, [sp]
	bl MOD05_021EE9D4
	add r0, r6, #0
	add r0, #0xad
	ldrb r0, [r0]
	cmp r0, #0
	bne _021EECD0
	add r0, r6, #0
	add r0, #0xc0
	ldr r2, [r0]
	mov r0, #3
	str r0, [sp, #0x10]
	mov r0, #2
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r0]
	add r5, r7, r2
	mul r0, r2
	sub r4, r5, #1
	cmp r0, r5
	bgt _021EECBE
	ldr r0, [sp, #0xc]
	sub r5, r0, #3
	add r4, r5, #0
	b _021EED14
_021EECBE:
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021EDE58
	cmp r0, #0
	bne _021EED14
	mov r4, #0
	mvn r4, r4
	b _021EED14
_021EECD0:
	cmp r0, #1
	bne _021EED10
	add r0, r6, #0
	add r0, #0xc0
	ldr r2, [r0]
	mov r0, #2
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r0]
	add r5, r7, r2
	mul r0, r2
	add r4, r5, #1
	cmp r0, r5
	bgt _021EECFA
	ldr r0, [sp, #0xc]
	sub r5, r0, #4
	add r4, r5, #0
	b _021EED14
_021EECFA:
	cmp r0, r4
	ble _021EED0A
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021EDE58
	cmp r0, #0
	bne _021EED14
_021EED0A:
	mov r4, #0
	mvn r4, r4
	b _021EED14
_021EED10:
	bl ErrorHandling
_021EED14:
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #8]
	lsl r2, r2, #0x18
	str r0, [sp]
	lsl r3, r3, #0x18
	add r0, r5, #0
	add r1, r4, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	str r6, [sp, #4]
	bl MOD05_021EE8CC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021EED32:
	bl ErrorHandling
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EED3C
MOD05_021EED3C: ; 0x021EED3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r5, r1, #0
	add r4, r5, #0
	lsl r6, r0, #2
	mov r0, #0x86
	add r3, sp, #0x38
	mov r1, #0
	str r1, [r3]
	str r1, [r3, #4]
	str r2, [sp, #4]
	add r2, r5, #0
	add r4, #0x90
	str r1, [r3, #8]
	add r2, #0xbc
	ldr r1, [r4, r6]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, r5, #0
	add r1, #0xc0
	ldr r1, [r1]
	ldr r2, [r2]
	bl MOD05_021EF300
	ldr r1, [r4, r6]
	ldr r0, _021EEDD4 ; =0x00000864
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _021EEDA6
	ldr r3, _021EEDD8 ; =0x021F8B14
	add r2, sp, #0x2c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _021EEDDC ; =0x021F8B20
	str r0, [r2]
	add r2, sp, #8
	mov r7, #4
_021EED88:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r7, r7, #1
	bne _021EED88
	ldr r0, [r3]
	add r3, sp, #0x2c
	str r0, [r2]
	mov r0, #2
	ldr r1, [r4, r6]
	lsl r0, r0, #0xa
	add r0, r1, r0
	add r1, sp, #0x38
	add r2, sp, #8
	bl FUN_0201B26C
_021EEDA6:
	ldr r4, [r4, r6]
	ldr r0, _021EEDD4 ; =0x00000864
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _021EEDCE
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl MOD05_021F4CA8
	add r2, r0, #0
	ldr r0, _021EEDE0 ; =0x00000868
	add r5, #0xb8
	ldr r0, [r4, r0]
	ldr r3, [sp, #4]
	str r0, [sp]
	ldr r1, [r5]
	add r0, sp, #0x38
	bl MOD05_021E7DD8
_021EEDCE:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021EEDD4: .word 0x00000864
_021EEDD8: .word 0x021F8B14
_021EEDDC: .word 0x021F8B20
_021EEDE0: .word 0x00000868

	thumb_func_start MOD05_021EEDE4
MOD05_021EEDE4: ; 0x021EEDE4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r1, #0
	add r6, r0, #0
	add r1, r7, #0
	bl _u32_div_f
	add r4, r1, #0
	add r0, r6, #0
	add r1, r7, #0
	bl _u32_div_f
	lsr r0, r0, #5
	add r1, r0, #0
	lsr r2, r4, #5
	mul r1, r5
	add r0, r2, r1
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021EEE08
MOD05_021EEE08: ; 0x021EEE08
	mul r2, r1
	add r0, r0, r2
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021EEE10
MOD05_021EEE10: ; 0x021EEE10
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r1, #0
	add r6, r0, #0
	add r1, r7, #0
	bl _u32_div_f
	add r4, r1, #0
	add r0, r6, #0
	add r1, r7, #0
	bl _u32_div_f
	lsr r0, r0, #5
	add r1, r0, #0
	lsr r2, r4, #5
	mul r1, r5
	add r0, r2, r1
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021EEE34
MOD05_021EEE34: ; 0x021EEE34
	push {r3, lr}
	cmp r0, #0
	bne _021EEE3E
	mov r0, #3
	pop {r3, pc}
_021EEE3E:
	cmp r0, #1
	bne _021EEE46
	mov r0, #2
	pop {r3, pc}
_021EEE46:
	cmp r0, #2
	bne _021EEE4E
	mov r0, #1
	pop {r3, pc}
_021EEE4E:
	cmp r0, #3
	bne _021EEE56
	mov r0, #0
	pop {r3, pc}
_021EEE56:
	bl ErrorHandling
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EEE60
MOD05_021EEE60: ; 0x021EEE60
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	cmp r0, #4
	bhi _021EEEC0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EEE76: ; jump table
	.short _021EEEC0 - _021EEE76 - 2 ; case 0
	.short _021EEE80 - _021EEE76 - 2 ; case 1
	.short _021EEE96 - _021EEE76 - 2 ; case 2
	.short _021EEEA4 - _021EEE76 - 2 ; case 3
	.short _021EEEB8 - _021EEE76 - 2 ; case 4
_021EEE80:
	add r0, r4, #0
	add r1, r5, #0
	bl _s32_div_f
	add r0, r1, #1
	cmp r0, r5
	blt _021EEE92
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021EEE92:
	add r0, r4, #1
	pop {r3, r4, r5, pc}
_021EEE96:
	lsl r1, r1, #5
	add r0, r4, r5
	mul r1, r5
	cmp r0, r1
	blt _021EEEC6
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021EEEA4:
	add r0, r4, #0
	add r1, r5, #0
	bl _s32_div_f
	sub r0, r1, #1
	bpl _021EEEB4
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021EEEB4:
	sub r0, r4, #1
	pop {r3, r4, r5, pc}
_021EEEB8:
	sub r0, r4, r5
	bpl _021EEEC6
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021EEEC0:
	bl ErrorHandling
	mov r0, #0
_021EEEC6:
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021EEEC8
MOD05_021EEEC8: ; 0x021EEEC8
	cmp r0, #4
	bhi _021EEF00
	add r2, r0, r0
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021EEED8: ; jump table
	.short _021EEF00 - _021EEED8 - 2 ; case 0
	.short _021EEEFA - _021EEED8 - 2 ; case 1
	.short _021EEEEA - _021EEED8 - 2 ; case 2
	.short _021EEEF2 - _021EEED8 - 2 ; case 3
	.short _021EEEE2 - _021EEED8 - 2 ; case 4
_021EEEE2:
	sub r0, r1, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_021EEEEA:
	add r0, r1, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_021EEEF2:
	sub r0, r1, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_021EEEFA:
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
_021EEF00:
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021EEF04
MOD05_021EEF04: ; 0x021EEF04
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl MOD05_021EEEC8
	cmp r5, r0
	bge _021EEF36
	sub r0, r0, r5
	cmp r0, #1
	bne _021EEF22
	ldrb r0, [r4]
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	b _021EEF62
_021EEF22:
	cmp r0, #2
	bne _021EEF30
	ldrb r0, [r4]
	sub r0, r0, #2
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	b _021EEF62
_021EEF30:
	bl ErrorHandling
	b _021EEF62
_021EEF36:
	cmp r5, r0
	ble _021EEF5E
	sub r0, r5, r0
	cmp r0, #1
	bne _021EEF4A
	ldrb r0, [r4]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	b _021EEF62
_021EEF4A:
	cmp r0, #2
	bne _021EEF58
	ldrb r0, [r4]
	add r0, r0, #2
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	b _021EEF62
_021EEF58:
	bl ErrorHandling
	b _021EEF62
_021EEF5E:
	bl ErrorHandling
_021EEF62:
	strb r6, [r4]
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EEF68
MOD05_021EEF68: ; 0x021EEF68
	push {r3, lr}
	cmp r0, #4
	bhi _021EEF94
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EEF7A: ; jump table
	.short _021EEF94 - _021EEF7A - 2 ; case 0
	.short _021EEF8C - _021EEF7A - 2 ; case 1
	.short _021EEF88 - _021EEF7A - 2 ; case 2
	.short _021EEF90 - _021EEF7A - 2 ; case 3
	.short _021EEF84 - _021EEF7A - 2 ; case 4
_021EEF84:
	mov r0, #2
	pop {r3, pc}
_021EEF88:
	mov r0, #4
	pop {r3, pc}
_021EEF8C:
	mov r0, #3
	pop {r3, pc}
_021EEF90:
	mov r0, #1
	pop {r3, pc}
_021EEF94:
	bl ErrorHandling
	mov r0, #0
	pop {r3, pc}

	thumb_func_start MOD05_021EEF9C
MOD05_021EEF9C: ; 0x021EEF9C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	mov r4, #0
_021EEFA6:
	ldr r0, [r5, #0x2c]
	cmp r0, #1
	bne _021EEFC2
	add r0, r6, #0
	bl MOD05_021EEF68
	add r1, r5, #0
	add r1, #0x30
	ldrb r1, [r1]
	cmp r1, r0
	bne _021EEFC2
	strb r4, [r7]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EEFC2:
	add r4, r4, #1
	add r5, #0x30
	cmp r4, #2
	blt _021EEFA6
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EEFD0
MOD05_021EEFD0: ; 0x021EEFD0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0xa1
	ldrb r1, [r0]
	mov r0, #0x30
	add r4, r5, #0
	mul r0, r1
	add r0, r5, r0
	ldr r0, [r0, #0x2c]
	add r4, #0x64
	cmp r0, #0
	beq _021EEFEC
	bl ErrorHandling
_021EEFEC:
	add r1, r5, #0
	add r1, #0xa1
	ldrb r2, [r1]
	mov r1, #0x30
	mov r0, #1
	add r3, r2, #0
	mul r3, r1
	add r2, r5, r3
	add r3, r5, #0
	str r0, [r2, #0x2c]
	add r3, #0xa1
	ldrb r3, [r3]
	ldrb r2, [r4, #0xc]
	add r6, r3, #0
	mul r6, r1
	add r3, r5, r6
	add r3, #0x30
	strb r2, [r3]
	add r3, r5, #0
	add r3, #0xa1
	ldrb r3, [r3]
	ldr r2, [r4, #0x10]
	add r6, r3, #0
	mul r6, r1
	add r3, r5, r6
	str r2, [r3, #0x1c]
	add r3, r5, #0
	add r3, #0xa1
	ldrb r3, [r3]
	ldr r2, [r4, #0x14]
	add r6, r3, #0
	mul r6, r1
	add r3, r5, r6
	str r2, [r3, #0x20]
	add r3, r5, #0
	add r3, #0xa1
	ldrb r3, [r3]
	ldrb r2, [r4, #0x18]
	add r6, r3, #0
	mul r6, r1
	add r3, r5, r6
	add r3, #0x24
	strb r2, [r3]
	add r3, r5, #0
	add r3, #0xa1
	ldrb r3, [r3]
	ldrb r2, [r4, #0x19]
	add r6, r3, #0
	mul r6, r1
	add r3, r5, r6
	add r3, #0x25
	strb r2, [r3]
	add r3, r5, #0
	add r3, #0xa1
	ldrb r3, [r3]
	ldr r2, [r4]
	add r6, r3, #0
	mul r6, r1
	add r3, r5, r6
	str r2, [r3, #4]
	add r2, r5, #0
	add r2, #0xa1
	ldrb r2, [r2]
	ldr r4, [r4, #4]
	add r3, r2, #0
	mul r3, r1
	add r2, r5, r3
	add r3, r5, #0
	str r4, [r2, #8]
	add r3, #0xa1
	ldrb r3, [r3]
	mov r2, #0
	add r4, r3, #0
	mul r4, r1
	add r3, r5, r4
	add r3, #0x26
	strb r2, [r3]
	add r3, r5, #0
	add r3, #0xa1
	ldrb r3, [r3]
	mul r1, r3
	add r1, r5, r1
	str r2, [r1, #0x28]
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021EF094
MOD05_021EF094: ; 0x021EF094
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xa0
	ldrb r0, [r0]
	add r4, r5, #0
	add r4, #0x64
	cmp r0, #2
	blo _021EF0A8
	bl ErrorHandling
_021EF0A8:
	add r0, r5, #0
	bl MOD05_021EEFD0
	cmp r0, #1
	beq _021EF0B6
	bl ErrorHandling
_021EF0B6:
	mov r0, #0x86
	ldr r2, [r4, #0x10]
	ldr r1, [r4]
	lsl r0, r0, #4
	str r2, [r1, r0]
	ldr r2, [r4, #0x14]
	ldr r1, [r4, #4]
	str r2, [r1, r0]
	add r0, r5, #0
	add r0, #0xa0
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xa0
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xa1
	ldrb r0, [r0]
	add r5, #0xa1
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	strb r0, [r5]
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EF0F0
MOD05_021EF0F0: ; 0x021EF0F0
	add r1, r0, #0
	add r1, #0xa2
	ldrb r2, [r1]
	mov r1, #0x30
	mul r1, r2
	add r0, r0, r1
	ldr r0, [r0, #0x28]
	bx lr

	thumb_func_start MOD05_021EF100
MOD05_021EF100: ; 0x021EF100
	mov r3, #0
	add r2, r3, #0
_021EF104:
	lsl r1, r3, #2
	add r1, r0, r1
	add r1, #0x80
	str r2, [r1]
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #4
	blo _021EF104
	bx lr

	thumb_func_start MOD05_021EF118
MOD05_021EF118: ; 0x021EF118
	cmp r0, #4
	bhi _021EF168
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EF128: ; jump table
	.short _021EF168 - _021EF128 - 2 ; case 0
	.short _021EF140 - _021EF128 - 2 ; case 1
	.short _021EF14E - _021EF128 - 2 ; case 2
	.short _021EF15C - _021EF128 - 2 ; case 3
	.short _021EF132 - _021EF128 - 2 ; case 4
_021EF132:
	add r0, r1, #0
	mov r2, #1
	add r0, #0x88
	str r2, [r0]
	add r1, #0x8c
	str r2, [r1]
	bx lr
_021EF140:
	add r0, r1, #0
	mov r2, #1
	add r0, #0x80
	str r2, [r0]
	add r1, #0x88
	str r2, [r1]
	bx lr
_021EF14E:
	add r0, r1, #0
	mov r2, #1
	add r0, #0x80
	str r2, [r0]
	add r1, #0x84
	str r2, [r1]
	bx lr
_021EF15C:
	add r0, r1, #0
	mov r2, #1
	add r0, #0x84
	str r2, [r0]
	add r1, #0x8c
	str r2, [r1]
_021EF168:
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021EF16C
MOD05_021EF16C: ; 0x021EF16C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r3, #0
	add r6, r1, #0
	add r7, r2, #0
	bl MOD05_021EDFBC
	add r2, r5, #0
	add r3, r5, #0
	str r4, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r2, #0xc0
	add r3, #0xc4
	ldr r2, [r2]
	ldr r3, [r3]
	add r0, r6, #0
	add r1, r7, #0
	bl MOD05_021EDED0
	mov r6, #0
	add r7, sp, #0x10
_021EF19A:
	lsl r4, r6, #2
	bl MOD05_021F4328
	add r1, r5, r4
	add r1, #0x90
	ldr r2, [r1]
	ldr r1, _021EF1F8 ; =0x0000085C
	str r0, [r2, r1]
	add r0, r5, r4
	add r0, #0x90
	ldr r1, [r0]
	ldr r0, _021EF1F8 ; =0x0000085C
	ldr r0, [r1, r0]
	bl MOD05_021F4454
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl MOD05_021F4CA8
	add r1, r5, #0
	add r1, #0xc0
	ldr r1, [r1]
	add r2, r5, #0
	str r1, [sp]
	add r1, r5, #0
	add r1, #0xc4
	ldr r1, [r1]
	add r3, r5, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	add r2, #0xb8
	add r3, #0xbc
	ldr r0, [r7, r4]
	ldr r2, [r2]
	ldr r3, [r3]
	add r1, r6, #0
	bl MOD05_021EE2A4
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021EF19A
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EF1F8: .word 0x0000085C

	thumb_func_start MOD05_021EF1FC
MOD05_021EF1FC: ; 0x021EF1FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r3, #0
	add r6, r1, #0
	add r7, r2, #0
	bl MOD05_021EE050
	add r2, r5, #0
	add r3, r5, #0
	str r4, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r2, #0xc0
	add r3, #0xc4
	ldr r2, [r2]
	ldr r3, [r3]
	add r0, r6, #0
	add r1, r7, #0
	bl MOD05_021EDED0
	mov r4, #0
	add r7, r4, #0
_021EF22A:
	lsl r6, r4, #2
	add r0, r5, r6
	add r0, #0x90
	ldr r1, [r0]
	ldr r0, _021EF278 ; =0x0000085C
	str r7, [r1, r0]
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0]
	bl MOD05_021F4CA8
	add r1, r5, #0
	add r1, #0xc0
	ldr r1, [r1]
	add r2, r5, #0
	str r1, [sp]
	add r1, r5, #0
	add r1, #0xc4
	ldr r1, [r1]
	add r3, r5, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	add r0, sp, #0x10
	add r2, #0xb8
	add r3, #0xbc
	ldr r0, [r0, r6]
	ldr r2, [r2]
	ldr r3, [r3]
	add r1, r4, #0
	bl MOD05_021EE38C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021EF22A
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EF278: .word 0x0000085C

	thumb_func_start MOD05_021EF27C
MOD05_021EF27C: ; 0x021EF27C
	push {r4, lr}
	add r1, r0, #0
	mov r3, #0
	add r1, #0xa2
	strb r3, [r1]
	add r1, r0, #0
	add r1, #0xa1
	strb r3, [r1]
	add r1, r0, #0
	add r1, #0xa0
	strb r3, [r1]
	add r4, r0, #0
	add r2, r3, #0
	mov r1, #1
_021EF298:
	str r2, [r4, #0x2c]
	str r1, [r4, #0x28]
	add r3, r3, #1
	add r4, #0x30
	cmp r3, #2
	blt _021EF298
	bl MOD05_021EF100
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EF2AC
MOD05_021EF2AC: ; 0x021EF2AC
	push {r4, lr}
	add r4, r2, #0
	add r2, #0xc8
	ldr r2, [r2]
	bl MOD05_021EEE08
	add r1, r4, #0
	add r1, #0xa8
	str r0, [r1]
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xa8
	add r1, #0xc8
	ldr r0, [r0]
	ldr r1, [r1]
	bl MOD05_021EF620
	add r1, r4, #0
	add r1, #0xad
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0xad
	ldrb r0, [r0]
	bl MOD05_021EEE34
	add r1, r4, #0
	add r1, #0xac
	strb r0, [r1]
	add r0, r4, #0
	add r1, r4, #0
	add r2, r4, #0
	add r0, #0xa8
	add r1, #0xc0
	add r2, #0xc8
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	bl MOD05_021EEE10
	add r4, #0xa4
	str r0, [r4]
	pop {r4, pc}

	thumb_func_start MOD05_021EF300
MOD05_021EF300: ; 0x021EF300
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r2, #0
	mov r2, #1
	add r5, r3, #0
	lsl r2, r2, #0x14
	str r2, [r5]
	str r2, [r5, #8]
	mov r2, #0
	add r4, r0, #0
	mvn r2, r2
	str r1, [sp, #4]
	cmp r4, r2
	beq _021EF362
	bl _s32_div_f
	lsl r0, r1, #0x10
	lsr r6, r0, #0x10
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r7, #0
	bl FUN_020344FC
	str r0, [sp, #8]
	add r0, r7, #0
	bl FUN_02034574
	add r1, r0, #0
	ldr r0, [sp, #8]
	add r2, r6, #0
	str r0, [sp]
	add r0, r7, #0
	add r3, r4, #0
	bl FUN_02034578
	lsl r0, r0, #0xf
	str r0, [r5, #4]
	ldr r1, [r5]
	lsl r0, r6, #0x15
	add r0, r1, r0
	str r0, [r5]
	ldr r1, [r5, #8]
	lsl r0, r4, #0x15
	add r0, r1, r0
	str r0, [r5, #8]
_021EF362:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EF368
MOD05_021EF368: ; 0x021EF368
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r1, [sp]
	mov r1, #0x41
	add r5, r0, #0
	mov r0, #4
	lsl r1, r1, #2
	str r2, [sp, #4]
	add r6, r3, #0
	bl FUN_02016998
	mov r2, #0x41
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl MI_CpuFill8
	cmp r6, #0
	bne _021EF39A
	add r0, r4, #0
	ldr r1, _021EF42C ; =0x021F8B04
	add r0, #0xf4
	str r1, [r0]
	mov r7, #1
	b _021EF3AE
_021EF39A:
	cmp r6, #1
	bne _021EF3AA
	add r0, r4, #0
	ldr r1, _021EF430 ; =0x021F8B0C
	add r0, #0xf4
	str r1, [r0]
	mov r7, #0
	b _021EF3AE
_021EF3AA:
	bl ErrorHandling
_021EF3AE:
	add r0, r7, #0
	bl MOD05_021F3BC0
	str r0, [r4]
	add r1, r4, #0
	ldr r0, [sp]
	add r1, #0xb8
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xbc
	str r5, [r0]
	add r0, r5, #0
	bl FUN_020344FC
	add r1, r4, #0
	add r1, #0xc0
	str r0, [r1]
	add r0, r5, #0
	bl FUN_0203450C
	add r1, r4, #0
	add r1, #0xc4
	str r0, [r1]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	lsl r1, r0, #5
	add r0, r4, #0
	add r0, #0xc8
	str r1, [r0]
	add r1, r4, #0
	ldr r0, [sp, #4]
	add r1, #0xf0
	str r0, [r1]
	add r0, r4, #0
	mov r1, #1
	add r0, #0xec
	str r1, [r0]
	add r0, r4, #0
	bl MOD05_021EF27C
	add r0, r4, #0
	mov r1, #0
	add r0, #0xb0
	str r1, [r0]
	add r0, r4, #0
	mov r1, #2
	add r0, #0xb4
	str r1, [r0]
	mov r0, #0x43
	mov r1, #4
	bl FUN_02006670
	add r1, r4, #0
	add r1, #0xf8
	str r0, [r1]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xfc
	str r1, [r0]
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EF42C: .word 0x021F8B04
_021EF430: .word 0x021F8B0C

	thumb_func_start MOD05_021EF434
MOD05_021EF434: ; 0x021EF434
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r5, #0
	add r6, #0xf4
	add r3, r5, #0
	ldr r6, [r6]
	add r3, #0xc8
	ldr r3, [r3]
	ldr r6, [r6]
	add r4, r1, #0
	add r7, r2, #0
	blx r6
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl MOD05_021EF2AC
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021EF458
MOD05_021EF458: ; 0x021EF458
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r2, r5, #0
	add r3, r5, #0
	add r1, #0xc4
	add r2, #0xc8
	add r3, #0xa8
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	add r6, r0, #0
	bl MOD05_021EEE60
	add r1, r5, #0
	add r2, r5, #0
	add r1, #0xc0
	add r2, #0xc8
	ldr r1, [r1]
	ldr r2, [r2]
	add r7, r0, #0
	bl MOD05_021EEDE4
	add r1, r5, #0
	add r1, #0xc8
	add r4, r0, #0
	ldr r1, [r1]
	add r0, r7, #0
	bl MOD05_021EF620
	add r1, r5, #0
	add r1, #0xa4
	ldr r1, [r1]
	cmp r1, r4
	bne _021EF4C0
	add r1, r5, #0
	add r1, #0xad
	ldrb r1, [r1]
	cmp r1, r0
	beq _021EF4C0
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl MOD05_021EEA0C
	add r1, r5, #0
	add r1, #0xad
	add r5, #0xac
	ldrb r1, [r1]
	add r0, r6, #0
	add r2, r5, #0
	bl MOD05_021EEF04
_021EF4C0:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EF4C4
MOD05_021EF4C4: ; 0x021EF4C4
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r1, #0
	sub r7, r4, #1
_021EF4CE:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, r7
	beq _021EF4EA
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl MOD05_021EED3C
_021EF4EA:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #4
	blo _021EF4CE
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EF4F8
MOD05_021EF4F8: ; 0x021EF4F8
	push {r3, r4}
	asr r4, r0, #0xf
	lsr r4, r4, #0x10
	add r4, r0, r4
	asr r0, r4, #0x10
	str r0, [r2]
	asr r0, r1, #0xf
	lsr r0, r0, #0x10
	add r0, r1, r0
	asr r0, r0, #0x10
	str r0, [r3]
	pop {r3, r4}
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021EF514
MOD05_021EF514: ; 0x021EF514
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl FUN_020162FC
	bl FUN_020AF6A4
	bl FUN_020AFA30
	mov r4, #0
	add r6, r5, #4
	mov r7, #0x30
_021EF52A:
	add r0, r4, #0
	mul r0, r7
	add r0, r6, r0
	bl MOD05_021EDEAC
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _021EF52A
	mov r6, #0
	add r7, r6, #0
_021EF542:
	lsl r4, r6, #2
	add r0, r5, r4
	add r0, #0x90
	ldr r2, [r0]
	ldr r0, _021EF59C ; =0x00000864
	mov r1, #0
	str r1, [r2, r0]
	add r0, r5, r4
	add r0, #0x90
	ldr r1, [r0]
	ldr r0, _021EF5A0 ; =0x0000085C
	ldr r0, [r1, r0]
	bl MOD05_021F43C0
	add r0, r5, r4
	add r0, #0x90
	ldr r1, [r0]
	ldr r0, _021EF5A4 ; =0x00000868
	ldr r0, [r1, r0]
	bl MOD05_021E7C14
	add r0, r5, r4
	add r0, #0x90
	ldr r0, [r0]
	bl FUN_02016A18
	add r0, r5, r4
	add r0, #0x90
	str r7, [r0]
	add r0, r6, #1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #4
	blo _021EF542
	add r0, r5, #0
	mov r1, #3
	add r0, #0xb4
	str r1, [r0]
	add r0, r5, #0
	mov r1, #1
	add r0, #0xb0
	str r1, [r0]
	add r5, #0xec
	str r7, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EF59C: .word 0x00000864
_021EF5A0: .word 0x0000085C
_021EF5A4: .word 0x00000868

	thumb_func_start MOD05_021EF5A8
MOD05_021EF5A8: ; 0x021EF5A8
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl FUN_020066F4
	ldr r0, [r4]
	bl MOD05_021F3C30
	add r0, r4, #0
	bl FUN_02016A18
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EF5C4
MOD05_021EF5C4: ; 0x021EF5C4
	add r1, r0, #0
	add r1, #0xb0
	ldr r1, [r1]
	cmp r1, #1
	bne _021EF5DA
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #0
	bne _021EF5DA
	mov r0, #1
	bx lr
_021EF5DA:
	mov r0, #0
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021EF5E0
MOD05_021EF5E0: ; 0x021EF5E0
	push {r4, r5}
	add r5, r0, #0
	add r4, r1, #0
	add r2, r4, #0
	add r3, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0xcc
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r4, #0xd8
	str r0, [r2]
	str r5, [r4]
	pop {r4, r5}
	bx lr

	thumb_func_start MOD05_021EF5FC
MOD05_021EF5FC: ; 0x021EF5FC
	mov r1, #0
	add r0, #0xd8
	str r1, [r0]
	bx lr

	thumb_func_start MOD05_021EF604
MOD05_021EF604: ; 0x021EF604
	lsl r0, r0, #2
	add r0, r1, r0
	add r0, #0x90
	ldr r1, [r0]
	ldr r0, _021EF614 ; =0x00000868
	ldr r0, [r1, r0]
	str r0, [r2]
	bx lr
	.balign 4, 0
_021EF614: .word 0x00000868

	thumb_func_start MOD05_021EF618
MOD05_021EF618: ; 0x021EF618
	add r0, #0xac
	ldrb r0, [r0]
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021EF620
MOD05_021EF620: ; 0x021EF620
	push {r4, lr}
	add r4, r0, #0
	bl _u32_div_f
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1b
	sub r1, r1, r2
	mov r0, #0x1b
	ror r1, r0
	mov r0, #0x1f
	and r0, r4
	add r1, r2, r1
	cmp r0, #0x10
	bge _021EF648
	cmp r1, #0x10
	bge _021EF644
	mov r0, #0
	pop {r4, pc}
_021EF644:
	mov r0, #2
	pop {r4, pc}
_021EF648:
	cmp r1, #0x10
	bge _021EF650
	mov r0, #1
	pop {r4, pc}
_021EF650:
	mov r0, #3
	pop {r4, pc}

	thumb_func_start MOD05_021EF654
MOD05_021EF654: ; 0x021EF654
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	cmp r0, r5
	bne _021EF66A
	add r4, #0xac
	ldrb r0, [r4]
	pop {r3, r4, r5, pc}
_021EF66A:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _021EF676
	bl ErrorHandling
_021EF676:
	add r0, r4, #0
	add r0, #0xac
	ldrb r1, [r0]
	cmp r1, #3
	bls _021EF682
	b _021EF820
_021EF682:
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EF68E: ; jump table
	.short _021EF696 - _021EF68E - 2 ; case 0
	.short _021EF6F8 - _021EF68E - 2 ; case 1
	.short _021EF75C - _021EF68E - 2 ; case 2
	.short _021EF7BE - _021EF68E - 2 ; case 3
_021EF696:
	add r0, r4, #0
	add r0, #0xa4
	add r2, r4, #0
	ldr r0, [r0]
	add r2, #0xc0
	ldr r2, [r2]
	sub r3, r5, r0
	cmp r2, r3
	bne _021EF6B0
	add r0, r1, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021EF6B0:
	cmp r3, #1
	bne _021EF6CA
	add r1, r5, #0
	bl MOD05_021EDE58
	cmp r0, #0
	beq _021EF6CA
	add r4, #0xac
	ldrb r0, [r4]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021EF6CA:
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xa4
	add r1, #0xc0
	ldr r2, [r1]
	ldr r0, [r0]
	add r3, r2, #1
	sub r1, r5, r0
	cmp r3, r1
	bne _021EF6F4
	add r1, r5, #0
	bl MOD05_021EDE58
	cmp r0, #0
	bne _021EF6F4
	add r4, #0xac
	ldrb r0, [r4]
	add r0, r0, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021EF6F4:
	mov r0, #4
	pop {r3, r4, r5, pc}
_021EF6F8:
	add r0, r4, #0
	add r0, #0xa4
	add r2, r4, #0
	ldr r0, [r0]
	add r2, #0xc0
	ldr r2, [r2]
	sub r3, r5, r0
	cmp r2, r3
	bne _021EF712
	add r0, r1, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021EF712:
	sub r1, r0, r5
	cmp r1, #1
	bne _021EF72E
	add r1, r5, #0
	bl MOD05_021EDE58
	cmp r0, #0
	beq _021EF72E
	add r4, #0xac
	ldrb r0, [r4]
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021EF72E:
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xa4
	add r1, #0xc0
	ldr r2, [r1]
	ldr r0, [r0]
	sub r3, r2, #1
	sub r1, r5, r0
	cmp r3, r1
	bne _021EF758
	add r1, r5, #0
	bl MOD05_021EDE58
	cmp r0, #0
	bne _021EF758
	add r4, #0xac
	ldrb r0, [r4]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021EF758:
	mov r0, #4
	pop {r3, r4, r5, pc}
_021EF75C:
	add r0, r4, #0
	add r0, #0xa4
	add r2, r4, #0
	ldr r0, [r0]
	add r2, #0xc0
	ldr r2, [r2]
	sub r3, r0, r5
	cmp r2, r3
	bne _021EF776
	sub r0, r1, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021EF776:
	sub r1, r2, #1
	cmp r1, r3
	bne _021EF792
	add r1, r5, #0
	bl MOD05_021EDE58
	cmp r0, #0
	bne _021EF792
	add r4, #0xac
	ldrb r0, [r4]
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021EF792:
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	sub r1, r5, r0
	cmp r1, #1
	bne _021EF7BA
	add r2, r4, #0
	add r2, #0xc0
	ldr r2, [r2]
	add r1, r5, #0
	bl MOD05_021EDE58
	cmp r0, #0
	beq _021EF7BA
	add r4, #0xac
	ldrb r0, [r4]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021EF7BA:
	mov r0, #4
	pop {r3, r4, r5, pc}
_021EF7BE:
	add r0, r4, #0
	add r0, #0xa4
	add r2, r4, #0
	ldr r0, [r0]
	add r2, #0xc0
	ldr r2, [r2]
	sub r3, r0, r5
	cmp r2, r3
	bne _021EF7D8
	sub r0, r1, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021EF7D8:
	add r1, r2, #1
	cmp r1, r3
	bne _021EF7F4
	add r1, r5, #0
	bl MOD05_021EDE58
	cmp r0, #0
	bne _021EF7F4
	add r4, #0xac
	ldrb r0, [r4]
	sub r0, r0, #3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021EF7F4:
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	sub r1, r0, r5
	cmp r1, #1
	bne _021EF81C
	add r2, r4, #0
	add r2, #0xc0
	ldr r2, [r2]
	add r1, r5, #0
	bl MOD05_021EDE58
	cmp r0, #0
	beq _021EF81C
	add r4, #0xac
	ldrb r0, [r4]
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
_021EF81C:
	mov r0, #4
	pop {r3, r4, r5, pc}
_021EF820:
	mov r0, #4
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021EF824
MOD05_021EF824: ; 0x021EF824
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #4
	blo _021EF832
	bl ErrorHandling
_021EF832:
	lsl r0, r5, #2
	add r0, r4, r0
	add r0, #0x90
	ldr r1, [r0]
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EF844
MOD05_021EF844: ; 0x021EF844
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	asr r2, r6, #4
	add r5, r0, #0
	lsr r2, r2, #0x1b
	add r2, r6, r2
	add r4, r1, #0
	add r0, #0xc0
	ldr r1, [r0]
	asr r0, r4, #4
	lsr r0, r0, #0x1b
	add r0, r4, r0
	asr r2, r2, #5
	str r3, [sp]
	add r3, r2, #0
	asr r0, r0, #5
	mul r3, r1
	add r7, r0, r3
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0]
	mul r0, r1
	cmp r7, r0
	blo _021EF882
	mov r0, #1
	bl FUN_020336A0
	cmp r0, #0
	beq _021EF882
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EF882:
	add r0, r5, #0
	add r0, #0xc0
	ldr r1, [r0]
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0]
	mul r0, r1
	cmp r7, r0
	blo _021EF898
	bl ErrorHandling
_021EF898:
	add r0, r5, #0
	add r0, #0xc8
	ldr r1, [r0]
	add r0, r6, #0
	mul r0, r1
	add r0, r4, r0
	bl MOD05_021EF620
	add r1, r0, #0
	add r0, r7, #0
	add r2, r5, #0
	bl MOD05_021EF654
	ldr r1, [sp]
	cmp r1, #0
	beq _021EF8BA
	strb r0, [r1]
_021EF8BA:
	cmp r0, #3
	bls _021EF8C2
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EF8C2:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EF8C8
MOD05_021EF8C8: ; 0x021EF8C8
	lsl r1, r1, #2
	add r0, r0, r1
	add r0, #0x90
	ldr r1, [r0]
	ldr r0, _021EF8D8 ; =0x0000085C
	ldr r0, [r1, r0]
	bx lr
	nop
_021EF8D8: .word 0x0000085C

	thumb_func_start MOD05_021EF8DC
MOD05_021EF8DC: ; 0x021EF8DC
	lsl r1, r1, #2
	add r0, r0, r1
	add r0, #0x90
	ldr r0, [r0]
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021EF8E8
MOD05_021EF8E8: ; 0x021EF8E8
	add r3, r0, #0
	add r3, #0xfc
	str r1, [r3]
	mov r1, #1
	lsl r1, r1, #8
	str r2, [r0, r1]
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021EF8F8
MOD05_021EF8F8: ; 0x021EF8F8
	push {r3, lr}
	bl FUN_0201B6C8
	mov r1, #1
	str r1, [r0, #0x1c]
	pop {r3, pc}

	thumb_func_start MOD05_021EF904
MOD05_021EF904: ; 0x021EF904
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	bne _021EF914
	mov r0, #5
	strb r0, [r4, #0x14]
_021EF914:
	ldrb r0, [r4, #0x14]
	cmp r0, #5
	bhi _021EF9FE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EF926: ; jump table
	.short _021EF932 - _021EF926 - 2 ; case 0
	.short _021EF962 - _021EF926 - 2 ; case 1
	.short _021EF998 - _021EF926 - 2 ; case 2
	.short _021EF9B6 - _021EF926 - 2 ; case 3
	.short _021EF9FE - _021EF926 - 2 ; case 4
	.short _021EF9EC - _021EF926 - 2 ; case 5
_021EF932:
	mov r0, #0
	str r0, [r4, #0x24]
	mov r0, #0xe
	ldr r5, [r4, #4]
	lsl r0, r0, #0xc
	cmp r5, r0
	bgt _021EF944
	mov r0, #2
	b _021EF948
_021EF944:
	add r5, r0, #0
	mov r0, #1
_021EF948:
	strb r0, [r4, #0x14]
	ldr r2, [r4, #0xc]
	ldr r0, [r4]
	ldr r3, [r2]
	ldr r2, [r4, #0x24]
	add r1, r5, #0
	add r2, r3, r2
	bl FUN_02006864
	ldr r0, [r4, #0x24]
	add r0, r0, r5
	str r0, [r4, #0x24]
	pop {r4, r5, r6, pc}
_021EF962:
	ldr r2, [r4, #0x24]
	ldr r0, [r4, #4]
	sub r5, r0, r2
	mov r0, #0xe
	lsl r0, r0, #0xc
	cmp r5, r0
	ble _021EF976
	add r5, r0, #0
	mov r6, #0
	b _021EF978
_021EF976:
	mov r6, #1
_021EF978:
	ldr r3, [r4, #0xc]
	ldr r0, [r4]
	ldr r3, [r3]
	add r1, r5, #0
	add r2, r3, r2
	bl FUN_02006864
	cmp r6, #0
	beq _021EF990
	mov r0, #2
	strb r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_021EF990:
	ldr r0, [r4, #0x24]
	add r0, r0, r5
	str r0, [r4, #0x24]
	pop {r4, r5, r6, pc}
_021EF998:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021EF9B0
	bl FUN_0201B254
	cmp r0, #1
	bne _021EF9B0
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	ldr r0, [r0]
	bl FUN_0201B3A8
_021EF9B0:
	mov r0, #3
	strb r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_021EF9B6:
	ldr r0, [r4, #0xc]
	ldr r0, [r0]
	bl FUN_020BC13C
	add r5, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, #1
	beq _021EF9CA
	bl ErrorHandling
_021EF9CA:
	ldrh r0, [r5, #0xe]
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	add r5, r5, r0
	bne _021EF9D8
	bl ErrorHandling
_021EF9D8:
	ldr r0, [r4, #8]
	add r1, r5, #0
	bl FUN_020B80B4
	ldr r0, [r4, #0x18]
	mov r1, #1
	str r1, [r0]
	mov r0, #5
	strb r0, [r4, #0x14]
	pop {r4, r5, r6, pc}
_021EF9EC:
	ldr r0, [r4, #0x20]
	mov r1, #0
	str r1, [r0]
	add r0, r4, #0
	bl FUN_02016A18
	add r0, r5, #0
	bl FUN_0200CAB4
_021EF9FE:
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021EFA00
MOD05_021EFA00: ; 0x021EFA00
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #4

	thumb_func_start MOD05_021EFA08
MOD05_021EFA08: ; 0x021EFA08
	mov r1, #0x28
	add r6, r2, #0
	add r7, r3, #0
	bl FUN_020169D8
	add r1, r0, #0
	str r5, [r1]
	str r4, [r1, #4]
	str r6, [r1, #8]
	ldr r0, [sp, #0x18]
	str r7, [r1, #0xc]
	str r0, [r1, #0x10]
	mov r2, #0
	ldr r0, [sp, #0x1c]
	strb r2, [r1, #0x14]
	str r0, [r1, #0x18]
	str r2, [r0]
	ldr r0, [sp, #0x20]
	str r0, [r1, #0x20]
	str r2, [r1, #0x1c]
	ldr r0, _021EFA3C ; =MOD05_021EF904
	mov r2, #1
	bl FUN_0200CA44
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EFA3C: .word MOD05_021EF904

	thumb_func_start MOD05_021EFA40
MOD05_021EFA40: ; 0x021EFA40
	push {r3, r4, r5, lr}
	add r4, r3, #0
	add r5, r2, #0
	ldr r2, [r4]
	bl FUN_02006864
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _021EFA6A
	bl FUN_0201B254
	cmp r0, #1
	bne _021EFA6A
	ldr r0, [r4]
	ldr r1, [sp, #0x10]
	bl FUN_0201B3A8
	cmp r0, #0
	bne _021EFA6A
	bl ErrorHandling
_021EFA6A:
	ldr r0, [r4]
	bl FUN_020BC13C
	ldrb r0, [r0, #9]
	cmp r0, #1
	beq _021EFA7A
	bl ErrorHandling
_021EFA7A:
	ldr r0, [r4]
	bl FUN_020BC13C
	ldrh r1, [r0, #0xe]
	add r1, r0, r1
	ldr r1, [r1, #0xc]
	add r4, r0, r1
	bne _021EFA8E
	bl ErrorHandling
_021EFA8E:
	add r0, r5, #0
	add r1, r4, #0
	bl FUN_020B80B4
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EFA9C
MOD05_021EFA9C: ; 0x021EFA9C
	push {r3, lr}
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _021EFAAA
	bl FUN_022524DC
_021EFAAA:
	pop {r3, pc}

	thumb_func_start MOD05_021EFAAC
MOD05_021EFAAC: ; 0x021EFAAC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl FUN_0204C1A8
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl FUN_020462AC
	add r6, r0, #0
	add r0, r4, #0
	bl FUN_0204BEC8
	cmp r0, #0
	beq _021EFAF8
	add r0, r6, #0
	bl FUN_0205F1E4
	cmp r0, #0
	bne _021EFAF8
	ldr r0, _021EFB0C ; =0x00000014
	mov r1, #2
	bl FUN_02005FDC
	mov r0, #1
	bl FUN_0200A03C
	str r0, [sp]
	ldr r1, [r5, #4]
	ldr r2, [r5, #0xc]
	ldr r3, [r5, #8]
	add r0, r5, #0
	add r1, #0x14
	bl FUN_02252448
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021EFAF8:
	ldr r0, _021EFB10 ; =0x00000013
	mov r1, #2
	bl FUN_02005FDC
	ldr r0, [r5, #8]
	bl FUN_02252440
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021EFB0C: .word 0x00000014
_021EFB10: .word 0x00000013

	thumb_func_start MOD05_021EFB14
MOD05_021EFB14: ; 0x021EFB14
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl FUN_0204C1A8
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl FUN_020462AC
	add r6, r0, #0
	add r0, r4, #0
	bl FUN_0204BEC8
	cmp r0, #0
	beq _021EFB46
	add r0, r6, #0
	bl FUN_0205F1E4
	cmp r0, #0
	bne _021EFB46
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x14]
	bl FUN_022524BC
	pop {r4, r5, r6, pc}
_021EFB46:
	ldr r0, [r5, #8]
	bl FUN_022524F4
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EFB50
MOD05_021EFB50: ; 0x021EFB50
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl FUN_0204C1A8
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl FUN_020462AC
	add r6, r0, #0
	add r0, r4, #0
	bl FUN_0204BEC8
	cmp r0, #0
	beq _021EFB94
	add r0, r6, #0
	bl FUN_0205F1E4
	cmp r0, #0
	bne _021EFB94
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x14]
	bl FUN_022524D0
	cmp r0, #0
	beq _021EFBA8
	ldr r0, [r5, #4]
	mov r1, #0
	str r1, [r0, #0x14]
	ldr r0, _021EFBAC ; =0x00000014
	bl FUN_02005F60
	mov r0, #1
	pop {r4, r5, r6, pc}
_021EFB94:
	ldr r0, [r5, #8]
	bl FUN_02252504
	cmp r0, #0
	beq _021EFBA8
	ldr r0, _021EFBB0 ; =0x00000013
	bl FUN_02005F60
	mov r0, #1
	pop {r4, r5, r6, pc}
_021EFBA8:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021EFBAC: .word 0x00000014
_021EFBB0: .word 0x00000013

	thumb_func_start MOD05_021EFBB4
MOD05_021EFBB4: ; 0x021EFBB4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021EFBC8 ; =0x00000013
	mov r1, #2
	bl FUN_02005FDC
	ldr r0, [r4, #8]
	bl FUN_02252440
	pop {r4, pc}
	.balign 4, 0
_021EFBC8: .word 0x00000013

	thumb_func_start MOD05_021EFBCC
MOD05_021EFBCC: ; 0x021EFBCC
	ldr r3, _021EFBD4 ; =FUN_022524F4
	ldr r0, [r0, #8]
	bx r3
	nop
_021EFBD4: .word FUN_022524F4 + 1

	thumb_func_start MOD05_021EFBD8
MOD05_021EFBD8: ; 0x021EFBD8
	push {r3, lr}
	ldr r0, [r0, #8]
	bl FUN_02252504
	cmp r0, #0
	beq _021EFBEE
	ldr r0, _021EFBF4 ; =0x00000013
	bl FUN_02005F60
	mov r0, #1
	pop {r3, pc}
_021EFBEE:
	mov r0, #0
	pop {r3, pc}
	nop
_021EFBF4: .word 0x00000013

	thumb_func_start MOD05_021EFBF8
MOD05_021EFBF8: ; 0x021EFBF8
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	bl FUN_020286EC
	mov r1, #0
	bl FUN_0202838C
	add r1, r4, #0
	ldr r0, [r4, #0x34]
	add r1, #0x4c
	mov r2, #4
	bl FUN_020339B4
	cmp r0, #0
	bne _021EFC20
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_021EFC20:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x8c
	str r1, [r0]
	ldr r0, [r4, #0x34]
	bl LoadPlayerDataAddress
	bl FUN_02025084
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r4, #0x30]
	ldr r2, _021EFC6C ; =0x000001E2
	ldr r0, [r0, #8]
	mov r1, #3
	mov r3, #0xa
	bl FUN_0200CD68
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r4, #0x30]
	ldr r2, _021EFC70 ; =0x000003D9
	ldr r0, [r0, #8]
	mov r1, #3
	mov r3, #0xb
	bl FUN_0200CB00
	mov r0, #1
	str r0, [r4, #0x48]
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	nop
_021EFC6C: .word 0x000001E2
_021EFC70: .word 0x000003D9

	thumb_func_start MOD05_021EFC74
MOD05_021EFC74: ; 0x021EFC74
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r1, #0
	add r6, r0, #0
	mvn r1, r1
	add r0, #0x8c
	str r1, [r0]
	mov r4, #0
	bl FUN_02030F20
	cmp r0, #0
	ble _021EFCB0
	add r5, r6, #0
_021EFC8E:
	ldr r0, [r5, #0x4c]
	cmp r0, #2
	bne _021EFCA4
	add r0, r6, #0
	add r0, #0x8c
	str r4, [r0]
	lsl r0, r4, #2
	mov r1, #0
	add r0, r6, r0
	str r1, [r0, #0x4c]
	b _021EFCB0
_021EFCA4:
	add r5, r5, #4
	add r4, r4, #1
	bl FUN_02030F20
	cmp r4, r0
	blt _021EFC8E
_021EFCB0:
	add r0, r6, #0
	add r0, #0x8c
	ldr r1, [r0]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _021EFCC4
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021EFCC4:
	ldr r0, [r6, #0x34]
	bl FUN_0206F158
	ldr r1, _021EFD3C ; =0x000001B5
	mov r2, #1
	mov r3, #4
	bl FUN_0206EE50
	cmp r0, #1
	bne _021EFCFE
	add r0, r6, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl FUN_0202DFA4
	add r2, r0, #0
	ldr r0, [r6, #0x38]
	mov r1, #0
	bl FUN_0200ABC0
	add r0, r6, #0
	mov r1, #0x21
	bl MOD05_021F01EC
	mov r0, #2
	str r0, [r6, #0x48]
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021EFCFE:
	ldr r0, [r6, #0x34]
	bl FUN_020286EC
	add r4, r0, #0
	mov r5, #0
_021EFD08:
	add r0, r4, #0
	add r1, r5, #0
	bl FUN_0202842C
	cmp r0, #0
	bne _021EFD2A
	mov r0, #0
	add r1, r6, #0
	str r0, [sp]
	add r1, #0x8c
	ldr r0, [r6, #0x34]
	ldr r1, [r1]
	add r2, r5, #0
	mov r3, #4
	bl FUN_02033A70
	b _021EFD30
_021EFD2A:
	add r5, r5, #1
	cmp r5, #0x20
	blt _021EFD08
_021EFD30:
	mov r0, #1
	str r0, [r6, #0x48]
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021EFD3C: .word 0x000001B5

	thumb_func_start MOD05_021EFD40
MOD05_021EFD40: ; 0x021EFD40
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl FUN_0201BD70
	cmp r0, #0
	bne _021EFD6C
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #0x30]
	ldr r1, _021EFD74 ; =0x021F8B44
	ldr r0, [r0, #8]
	ldr r2, _021EFD78 ; =0x000003D9
	mov r3, #0xb
	bl FUN_02002198
	str r0, [r4, #0x44]
	mov r0, #3
	str r0, [r4, #0x48]
_021EFD6C:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_021EFD74: .word 0x021F8B44
_021EFD78: .word 0x000003D9

	thumb_func_start MOD05_021EFD7C
MOD05_021EFD7C: ; 0x021EFD7C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	ldr r0, [r6, #0x44]
	mov r1, #4
	bl FUN_020021AC
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021EFD98
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021EFD98:
	cmp r0, #0
	bne _021EFDE4
	ldr r0, [r6, #0x34]
	bl FUN_020286EC
	add r5, r0, #0
	mov r4, #0
_021EFDA6:
	add r0, r5, #0
	add r1, r4, #0
	bl FUN_0202842C
	cmp r0, #0
	bne _021EFDC8
	mov r0, #0
	add r1, r6, #0
	str r0, [sp]
	add r1, #0x8c
	ldr r0, [r6, #0x34]
	ldr r1, [r1]
	add r2, r4, #0
	mov r3, #4
	bl FUN_02033A70
	b _021EFDCE
_021EFDC8:
	add r4, r4, #1
	cmp r4, #0x20
	blt _021EFDA6
_021EFDCE:
	cmp r4, #0x20
	bne _021EFDE4
	add r0, r6, #0
	mov r1, #0x22
	bl MOD05_021F01EC
	mov r0, #4
	str r0, [r6, #0x48]
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_021EFDE4:
	mov r0, #1
	str r0, [r6, #0x48]
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021EFDF0
MOD05_021EFDF0: ; 0x021EFDF0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl FUN_0201BD70
	cmp r0, #0
	bne _021EFE1C
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #0x30]
	ldr r1, _021EFE24 ; =0x021F8B44
	ldr r0, [r0, #8]
	ldr r2, _021EFE28 ; =0x000003D9
	mov r3, #0xb
	bl FUN_02002198
	str r0, [r4, #0x44]
	mov r0, #5
	str r0, [r4, #0x48]
_021EFE1C:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_021EFE24: .word 0x021F8B44
_021EFE28: .word 0x000003D9

	thumb_func_start MOD05_021EFE2C
MOD05_021EFE2C: ; 0x021EFE2C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	mov r1, #4
	bl FUN_020021AC
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021EFE44
	mov r0, #0
	pop {r4, pc}
_021EFE44:
	cmp r0, #0
	bne _021EFE4C
	mov r0, #8
	b _021EFE6A
_021EFE4C:
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl FUN_0202DFA4
	add r2, r0, #0
	ldr r0, [r4, #0x38]
	mov r1, #0
	bl FUN_0200ABC0
	add r0, r4, #0
	mov r1, #0x23
	bl MOD05_021F01EC
	mov r0, #6
_021EFE6A:
	str r0, [r4, #0x48]
	mov r0, #0
	pop {r4, pc}

	thumb_func_start MOD05_021EFE70
MOD05_021EFE70: ; 0x021EFE70
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl FUN_0201BD70
	cmp r0, #0
	bne _021EFE9C
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #0x30]
	ldr r1, _021EFEA4 ; =0x021F8B44
	ldr r0, [r0, #8]
	ldr r2, _021EFEA8 ; =0x000003D9
	mov r3, #0xb
	bl FUN_02002198
	str r0, [r4, #0x44]
	mov r0, #7
	str r0, [r4, #0x48]
_021EFE9C:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_021EFEA4: .word 0x021F8B44
_021EFEA8: .word 0x000003D9

	thumb_func_start MOD05_021EFEAC
MOD05_021EFEAC: ; 0x021EFEAC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	mov r1, #4
	bl FUN_020021AC
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021EFEC4
	mov r0, #0
	pop {r4, pc}
_021EFEC4:
	cmp r0, #0
	bne _021EFECC
	mov r0, #0xc
	b _021EFED6
_021EFECC:
	add r0, r4, #0
	mov r1, #0x22
	bl MOD05_021F01EC
	mov r0, #4
_021EFED6:
	str r0, [r4, #0x48]
	mov r0, #0
	pop {r4, pc}

	thumb_func_start MOD05_021EFEDC
MOD05_021EFEDC: ; 0x021EFEDC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	bl FUN_020286EC
	add r6, r0, #0
	bl FUN_02028448
	add r7, r0, #0
	add r0, r7, #1
	mov r1, #4
	bl FUN_02012838
	str r0, [r5]
	mov r0, #1
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _021EFFB8 ; =0x000002A1
	add r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x30]
	add r1, #0x20
	ldr r0, [r0, #8]
	mov r2, #3
	mov r3, #0x13
	bl FUN_02019064
	add r0, r5, #0
	ldr r2, _021EFFBC ; =0x000003D9
	add r0, #0x20
	mov r1, #1
	mov r3, #0xb
	bl FUN_0200CCA4
	mov r4, #0
_021EFF2E:
	add r0, r6, #0
	add r1, r4, #0
	bl FUN_0202842C
	cmp r0, #0
	beq _021EFF54
	add r0, r6, #0
	add r1, r4, #0
	bl FUN_020283A4
	add r1, r0, #0
	ldr r0, [r5, #8]
	bl FUN_02021E28
	ldr r0, [r5]
	ldr r1, [r5, #8]
	add r2, r4, #0
	bl FUN_020128A0
_021EFF54:
	add r4, r4, #1
	cmp r4, #0x20
	blt _021EFF2E
	mov r2, #0xb
	add r3, r2, #0
	ldr r0, [r5]
	ldr r1, [r5, #0x3c]
	sub r3, #0xd
	bl FUN_02012880
	ldr r4, _021EFFC0 ; =0x021F8B4C
	add r3, sp, #0x14
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r7, #1
	add r0, sp, #0x14
	strh r1, [r0, #0x10]
	mov r1, #5
	strh r1, [r0, #0x12]
	ldr r0, [r5]
	mov r1, #0
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0x20
	str r0, [sp, #0x20]
	ldr r0, _021EFFC4 ; =MOD05_021F0304
	str r5, [sp, #0x30]
	str r0, [sp, #0x18]
	add r0, r2, #0
	add r2, r1, #0
	mov r3, #4
	bl FUN_020010A8
	str r0, [r5, #4]
	add r0, r5, #0
	add r0, #0x20
	bl FUN_020191D0
	mov r0, #9
	str r0, [r5, #0x48]
	mov r0, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021EFFB8: .word 0x000002A1
_021EFFBC: .word 0x000003D9
_021EFFC0: .word 0x021F8B4C
_021EFFC4: .word MOD05_021F0304

	thumb_func_start MOD05_021EFFC8
MOD05_021EFFC8: ; 0x021EFFC8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl FUN_02001204
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _021EFFE6
	add r0, r0, #1
	cmp r4, r0
	bne _021F000E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EFFE6:
	ldr r0, _021F007C ; =0x000005DC
	bl FUN_020054C8
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl FUN_0202DFA4
	add r2, r0, #0
	ldr r0, [r5, #0x38]
	mov r1, #0
	bl FUN_0200ABC0
	add r0, r5, #0
	mov r1, #0x23
	bl MOD05_021F01EC
	mov r0, #6
	str r0, [r5, #0x48]
	b _021F0056
_021F000E:
	ldr r0, _021F007C ; =0x000005DC
	bl FUN_020054C8
	add r0, r5, #0
	add r0, #0x90
	str r4, [r0]
	ldr r0, [r5, #0x34]
	bl FUN_020286EC
	add r7, r0, #0
	mov r0, #4
	bl FUN_02023928
	add r6, r0, #0
	add r0, r7, #0
	add r1, r4, #0
	bl FUN_020283A4
	add r1, r0, #0
	add r0, r6, #0
	bl FUN_0202395C
	ldr r0, [r5, #0x38]
	mov r1, #0
	add r2, r6, #0
	bl FUN_0200ABC0
	add r0, r6, #0
	bl FUN_02016A18
	add r0, r5, #0
	mov r1, #0x24
	bl MOD05_021F01EC
	mov r0, #0xa
	str r0, [r5, #0x48]
_021F0056:
	add r0, r5, #0
	add r0, #0x20
	mov r1, #0
	bl FUN_0200CCF8
	add r0, r5, #0
	add r0, #0x20
	bl FUN_02019178
	mov r1, #0
	ldr r0, [r5, #4]
	add r2, r1, #0
	bl FUN_02001300
	ldr r0, [r5]
	bl FUN_02012870
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F007C: .word 0x000005DC

	thumb_func_start MOD05_021F0080
MOD05_021F0080: ; 0x021F0080
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl FUN_0201BD70
	cmp r0, #0
	bne _021F00AC
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4, #0x30]
	ldr r1, _021F00B4 ; =0x021F8B44
	ldr r0, [r0, #8]
	ldr r2, _021F00B8 ; =0x000003D9
	mov r3, #0xb
	bl FUN_02002198
	str r0, [r4, #0x44]
	mov r0, #0xb
	str r0, [r4, #0x48]
_021F00AC:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_021F00B4: .word 0x021F8B44
_021F00B8: .word 0x000003D9

	thumb_func_start MOD05_021F00BC
MOD05_021F00BC: ; 0x021F00BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	bl FUN_020286EC
	add r4, r0, #0
	ldr r0, [r5, #0x44]
	mov r1, #4
	bl FUN_020021AC
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021F00DC
	mov r0, #0
	pop {r3, r4, r5, pc}
_021F00DC:
	cmp r0, #0
	bne _021F0104
	add r1, r5, #0
	add r1, #0x90
	ldr r1, [r1]
	add r0, r4, #0
	bl FUN_02028468
	mov r0, #0
	add r1, r5, #0
	str r0, [sp]
	add r1, #0x8c
	ldr r0, [r5, #0x34]
	ldr r1, [r1]
	mov r2, #0x1f
	mov r3, #4
	bl FUN_02033A70
	mov r0, #1
	b _021F0122
_021F0104:
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl FUN_0202DFA4
	add r2, r0, #0
	ldr r0, [r5, #0x38]
	mov r1, #0
	bl FUN_0200ABC0
	add r0, r5, #0
	mov r1, #0x23
	bl MOD05_021F01EC
	mov r0, #6
_021F0122:
	str r0, [r5, #0x48]
	mov r0, #0
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021F0128
MOD05_021F0128: ; 0x021F0128
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl FUN_0204652C

	thumb_func_start MOD05_021F0130
MOD05_021F0130: ; 0x021F0130
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_02046528
	ldr r0, [r4, #0x48]
	cmp r0, #0xc
	bhi _021F01E8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F014A: ; jump table
	.short _021F0164 - _021F014A - 2 ; case 0
	.short _021F0174 - _021F014A - 2 ; case 1
	.short _021F0184 - _021F014A - 2 ; case 2
	.short _021F018C - _021F014A - 2 ; case 3
	.short _021F0194 - _021F014A - 2 ; case 4
	.short _021F019C - _021F014A - 2 ; case 5
	.short _021F01A4 - _021F014A - 2 ; case 6
	.short _021F01AC - _021F014A - 2 ; case 7
	.short _021F01B4 - _021F014A - 2 ; case 8
	.short _021F01BC - _021F014A - 2 ; case 9
	.short _021F01C4 - _021F014A - 2 ; case 10
	.short _021F01CC - _021F014A - 2 ; case 11
	.short _021F01D4 - _021F014A - 2 ; case 12
_021F0164:
	add r0, r4, #0
	bl MOD05_021EFBF8
	cmp r0, #0
	beq _021F01E8
	mov r0, #0xc
	str r0, [r4, #0x48]
	b _021F01E8
_021F0174:
	add r0, r4, #0
	bl MOD05_021EFC74
	cmp r0, #0
	beq _021F01E8
	mov r0, #0xc
	str r0, [r4, #0x48]
	b _021F01E8
_021F0184:
	add r0, r4, #0
	bl MOD05_021EFD40
	b _021F01E8
_021F018C:
	add r0, r4, #0
	bl MOD05_021EFD7C
	b _021F01E8
_021F0194:
	add r0, r4, #0
	bl MOD05_021EFDF0
	b _021F01E8
_021F019C:
	add r0, r4, #0
	bl MOD05_021EFE2C
	b _021F01E8
_021F01A4:
	add r0, r4, #0
	bl MOD05_021EFE70
	b _021F01E8
_021F01AC:
	add r0, r4, #0
	bl MOD05_021EFEAC
	b _021F01E8
_021F01B4:
	add r0, r4, #0
	bl MOD05_021EFEDC
	b _021F01E8
_021F01BC:
	add r0, r4, #0
	bl MOD05_021EFFC8
	b _021F01E8
_021F01C4:
	add r0, r4, #0
	bl MOD05_021F0080
	b _021F01E8
_021F01CC:
	add r0, r4, #0
	bl MOD05_021F00BC
	b _021F01E8
_021F01D4:
	add r0, r4, #0
	bl MOD05_021F0290
	add r0, r4, #0
	bl FUN_02016A18
	bl FUN_02037778
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F01E8:
	mov r0, #0
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021F01EC
MOD05_021F01EC: ; 0x021F01EC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x10
	add r5, r1, #0
	bl FUN_02019048
	cmp r0, #0
	beq _021F0204
	add r0, r4, #0
	add r0, #0x10
	bl FUN_02019178
_021F0204:
	ldr r0, [r4, #0x3c]
	ldr r2, [r4, #8]
	add r1, r5, #0
	bl FUN_0200A8E0
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #8]
	bl FUN_0200B7B8
	ldr r0, [r4, #0x30]
	add r1, r4, #0
	ldr r0, [r0, #8]
	add r1, #0x10
	mov r2, #3
	bl FUN_020545B8
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0xc]
	bl LoadPlayerDataAddress
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x10
	bl FUN_02054608
	ldr r0, [r4, #0x30]
	ldr r0, [r0, #0xc]
	bl LoadPlayerDataAddress
	add r2, r0, #0
	add r0, r4, #0
	ldr r1, [r4, #0xc]
	add r0, #0x10
	mov r3, #1
	bl FUN_02054658
	str r0, [r4, #0x40]
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F0254
MOD05_021F0254: ; 0x021F0254
	push {r4, lr}
	mov r1, #0
	mov r2, #0x94
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #4
	bl FUN_0200AA80
	str r0, [r4, #0x38]
	ldr r2, _021F028C ; =0x00000251
	mov r0, #0
	mov r1, #0x1a
	mov r3, #4
	bl FUN_0200A86C
	str r0, [r4, #0x3c]
	mov r0, #0x6e
	mov r1, #4
	bl FUN_020219F4
	str r0, [r4, #0xc]
	mov r0, #0x6e
	mov r1, #4
	bl FUN_020219F4
	str r0, [r4, #8]
	pop {r4, pc}
	.balign 4, 0
_021F028C: .word 0x00000251

	thumb_func_start MOD05_021F0290
MOD05_021F0290: ; 0x021F0290
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	bl FUN_0200A8B8
	ldr r0, [r4, #0x38]
	bl FUN_0200AB18
	ldr r0, [r4, #0xc]
	bl FUN_02021A20
	ldr r0, [r4, #8]
	bl FUN_02021A20
	add r0, r4, #0
	add r0, #0x10
	bl FUN_02019048
	cmp r0, #0
	beq _021F02C0
	add r4, #0x10
	add r0, r4, #0
	bl FUN_02019178
_021F02C0:
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F02C4
MOD05_021F02C4: ; 0x021F02C4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r5, [r6, #0x10]
	mov r0, #0xb
	mov r1, #0x94
	bl FUN_020169D8
	add r4, r0, #0
	bl MOD05_021F0254
	str r6, [r4, #0x30]
	ldr r0, [r6, #0xc]
	str r0, [r4, #0x34]
	mov r0, #0
	str r0, [r4, #0x48]
	cmp r5, #0
	bne _021F02F2
	ldr r1, _021F0300 ; =MOD05_021F0128
	add r0, r6, #0
	add r2, r4, #0
	bl FUN_020463CC
	pop {r4, r5, r6, pc}
_021F02F2:
	ldr r1, _021F0300 ; =MOD05_021F0128
	add r0, r5, #0
	add r2, r4, #0
	bl FUN_0204640C
	pop {r4, r5, r6, pc}
	nop
_021F0300: .word MOD05_021F0128

	thumb_func_start MOD05_021F0304
MOD05_021F0304: ; 0x021F0304
	push {r3, lr}
	cmp r2, #0
	bne _021F0310
	ldr r0, _021F0314 ; =0x000005DC
	bl FUN_020054C8
_021F0310:
	pop {r3, pc}
	nop
_021F0314: .word 0x000005DC

	thumb_func_start MOD05_021F0318
MOD05_021F0318: ; 0x021F0318
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	add r4, r3, #0
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #0
	str r0, [sp, #0x58]
	ldr r1, [r4, #0x50]
	add r0, sp, #0x60
	add r6, r2, #0
	bl FUN_0201F02C
	ldr r3, _021F0434 ; =0x021F8B6C
	add r2, sp, #0xc
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	cmp r6, #0x60
	str r0, [r2]
	bhs _021F0352
	mov r1, #0x60
	sub r0, r1, r6
	lsl r0, r0, #0x18
	ldrh r2, [r4]
	lsr r0, r0, #0x18
	mul r0, r2
	bl _s32_div_f
	b _021F036C
_021F0352:
	sub r6, #0x60
	lsl r0, r6, #0x18
	ldrh r1, [r4]
	lsr r0, r0, #0x18
	mul r0, r1
	mov r1, #0x60
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0
	mvn r0, r0
	mul r0, r1
_021F036C:
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r5, #0x80
	bhs _021F038A
	mov r2, #0x80
	sub r2, r2, r5
	lsl r2, r2, #0x18
	ldrh r0, [r4, #2]
	lsr r2, r2, #0x18
	mul r2, r0
	asr r0, r2, #6
	lsr r0, r0, #0x19
	add r0, r2, r0
	lsl r0, r0, #9
	b _021F03A8
_021F038A:
	ldrh r2, [r4, #2]
	sub r5, #0x80
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	add r3, r2, #0
	mul r3, r0
	asr r0, r3, #6
	lsr r0, r0, #0x19
	add r0, r3, r0
	lsl r0, r0, #9
	lsr r2, r0, #0x10
	mov r0, #0
	mvn r0, r0
	mul r0, r2
	lsl r0, r0, #0x10
_021F03A8:
	lsr r5, r0, #0x10
	asr r0, r1, #4
	lsl r3, r0, #1
	lsl r1, r3, #1
	ldr r2, _021F0438 ; =0x020FFA38
	add r3, r3, #1
	lsl r3, r3, #1
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r3]
	add r0, sp, #0x24
	bl MTX_RotX43_
	add r0, sp, #0xc
	add r1, sp, #0x24
	add r2, sp, #0x18
	bl MTX_MultVec43
	asr r0, r5, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	ldr r3, _021F0438 ; =0x020FFA38
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0x24
	bl MTX_RotY43_
	add r0, sp, #0x18
	add r1, sp, #0x24
	add r2, r0, #0
	bl MTX_MultVec43
	add r0, sp, #0x18
	add r1, r4, #0
	add r1, #0x20
	add r2, r0, #0
	bl MTX_MultVec43
	add r0, r4, #0
	add r0, #0x10
	add r1, sp, #0x18
	bl VEC_DotProduct
	add r1, r0, #0
	ldr r0, [r4, #0x1c]
	bl FX_Div
	neg r0, r0
	add r1, sp, #0x18
	add r2, r4, #4
	add r3, sp, #0
	bl VEC_MultAdd
	ldr r1, [sp, #0x60]
	ldr r0, [sp]
	add r2, sp, #0x54
	add r0, r1, r0
	str r0, [sp, #0x54]
	ldr r1, [sp, #0x68]
	ldr r0, [sp, #8]
	add r0, r1, r0
	str r0, [sp, #0x5c]
	ldmia r2!, {r0, r1}
	stmia r7!, {r0, r1}
	ldr r0, [r2]
	str r0, [r7]
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	nop
_021F0434: .word 0x021F8B6C
_021F0438: .word 0x020FFA38

	thumb_func_start MOD05_021F043C
MOD05_021F043C: ; 0x021F043C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #4
	mov r1, #0x60
	bl FUN_02016998
	add r1, r5, #0
	add r4, r0, #0
	bl MOD05_021F0454
	add r0, r4, #0
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021F0454
MOD05_021F0454: ; 0x021F0454
	push {r4, r5, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	bl FUN_0201F014
	add r0, r4, #0
	bl FUN_0201F008
	strh r0, [r5]
	ldrh r0, [r5]
	ldr r2, _021F04F0 ; =0x020FFA38
	asr r0, r0, #4
	lsl r1, r0, #1
	lsl r0, r1, #1
	add r1, r1, #1
	lsl r1, r1, #1
	ldrsh r0, [r2, r0]
	ldrsh r1, [r2, r1]
	bl FX_Div
	lsl r0, r0, #2
	mov r1, #3
	bl _s32_div_f
	bl FX_Atan
	ldr r3, _021F04F4 ; =0x021F8B78
	strh r0, [r5, #2]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, r4, #0
	str r0, [r2]
	add r0, sp, #0x14
	bl FUN_0201F03C
	add r0, sp, #8
	add r1, r4, #0
	bl FUN_0201F02C
	add r0, sp, #0x14
	add r1, sp, #8
	add r2, r5, #4
	bl VEC_Subtract
	add r3, sp, #0x20
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	add r2, #0x10
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, r5, #4
	str r0, [r2]
	add r0, sp, #0x20
	bl VEC_DotProduct
	str r0, [r5, #0x1c]
	add r0, sp, #0
	ldrh r0, [r0]
	ldr r3, _021F04F0 ; =0x020FFA38
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r1, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	add r0, r5, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, #0x20
	bl MTX_RotX43_
	str r4, [r5, #0x50]
	add sp, #0x2c
	pop {r4, r5, pc}
	nop
_021F04F0: .word 0x020FFA38
_021F04F4: .word 0x021F8B78

	thumb_func_start MOD05_021F04F8
MOD05_021F04F8: ; 0x021F04F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021F0512
	bne _021F0508
	bl ErrorHandling
_021F0508:
	ldr r0, [r4]
	bl FUN_02016A18
	mov r0, #0
	str r0, [r4]
_021F0512:
	pop {r4, pc}

	thumb_func_start MOD05_021F0514
MOD05_021F0514: ; 0x021F0514
	push {r4, lr}
	add r4, r0, #0
	bl FUN_02058458
	cmp r0, #0x97
	bgt _021F053E
	bge _021F05B2
	cmp r0, #0x15
	bgt _021F052E
	bge _021F059E
	cmp r0, #0
	beq _021F059E
	b _021F05BA
_021F052E:
	cmp r0, #0x62
	bgt _021F05BA
	cmp r0, #0x61
	blt _021F05BA
	beq _021F059E
	cmp r0, #0x62
	beq _021F059E
	b _021F05BA
_021F053E:
	cmp r0, #0xb0
	bgt _021F0554
	bge _021F059E
	cmp r0, #0x99
	bgt _021F05BA
	cmp r0, #0x98
	blt _021F05BA
	beq _021F05B2
	cmp r0, #0x99
	beq _021F05B2
	b _021F05BA
_021F0554:
	cmp r0, #0xb1
	bgt _021F055C
	beq _021F059E
	b _021F05BA
_021F055C:
	sub r0, #0xb2
	cmp r0, #0x17
	bhi _021F05BA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F056E: ; jump table
	.short _021F059E - _021F056E - 2 ; case 0
	.short _021F059E - _021F056E - 2 ; case 1
	.short _021F059E - _021F056E - 2 ; case 2
	.short _021F059E - _021F056E - 2 ; case 3
	.short _021F05BA - _021F056E - 2 ; case 4
	.short _021F05BA - _021F056E - 2 ; case 5
	.short _021F05BA - _021F056E - 2 ; case 6
	.short _021F05BA - _021F056E - 2 ; case 7
	.short _021F059E - _021F056E - 2 ; case 8
	.short _021F059E - _021F056E - 2 ; case 9
	.short _021F059E - _021F056E - 2 ; case 10
	.short _021F059E - _021F056E - 2 ; case 11
	.short _021F05BA - _021F056E - 2 ; case 12
	.short _021F05BA - _021F056E - 2 ; case 13
	.short _021F05BA - _021F056E - 2 ; case 14
	.short _021F05BA - _021F056E - 2 ; case 15
	.short _021F05BA - _021F056E - 2 ; case 16
	.short _021F05A8 - _021F056E - 2 ; case 17
	.short _021F059E - _021F056E - 2 ; case 18
	.short _021F059E - _021F056E - 2 ; case 19
	.short _021F059E - _021F056E - 2 ; case 20
	.short _021F059E - _021F056E - 2 ; case 21
	.short _021F059E - _021F056E - 2 ; case 22
	.short _021F059E - _021F056E - 2 ; case 23
_021F059E:
	add r0, r4, #0
	bl FUN_02058628
	ldr r0, [r0, #4]
	pop {r4, pc}
_021F05A8:
	add r0, r4, #0
	bl FUN_02058628
	ldr r0, [r0, #4]
	pop {r4, pc}
_021F05B2:
	add r0, r4, #0
	bl MOD05_021F1C24
	pop {r4, pc}
_021F05BA:
	add r0, r4, #0
	bl FUN_02058628
	ldr r0, [r0, #8]
	pop {r4, pc}

	thumb_func_start MOD05_021F05C4
MOD05_021F05C4: ; 0x021F05C4
	push {r3, r4, r5, lr}
	mov r1, #0x18
	add r5, r0, #0
	bl FUN_02058604
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	add r1, r4, #0
	strh r0, [r4]
	add r0, r5, #0
	add r1, #8
	bl MOD05_021F1FC8
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021F05EC
	add r0, r5, #0
	bl FUN_020586A0
_021F05EC:
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F05F0
MOD05_021F05F0: ; 0x021F05F0
	push {r4, lr}
	add r4, r0, #0
	bl FUN_02058628
	add r1, r0, #0
	add r0, r4, #0
	add r1, #8
	bl MOD05_021F2060
	pop {r4, pc}

	thumb_func_start MOD05_021F0604
MOD05_021F0604: ; 0x021F0604
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl FUN_02058628
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021F061C
	add r1, r4, #0
	add r1, #0xc
	bl MOD05_021F20D8
_021F061C:
	add r4, #8
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F2060
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl FUN_02058410
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F0634
MOD05_021F0634: ; 0x021F0634
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl FUN_02058628
	add r4, r0, #0
	add r0, r5, #0
	bl MOD05_021F2E28
	cmp r0, #1
	beq _021F0678
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021F0658
	add r1, r4, #0
	add r0, r5, #0
	add r1, #8
	bl MOD05_021F1FC8
_021F0658:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021F0678
	add r1, r4, #0
	add r1, #0xc
	bl MOD05_021F20F8
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl MOD05_021F2F48
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl FUN_02058418
_021F0678:
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F067C
MOD05_021F067C: ; 0x021F067C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl FUN_02058628
	ldr r7, [r0, #8]
	add r0, r4, #0
	bl FUN_02058628
	str r0, [sp]
	add r0, r4, #0
	bl MOD05_021F2E28
	cmp r0, #1
	beq _021F06E6
	cmp r7, #0
	beq _021F06E6
	add r0, r4, #0
	bl FUN_020584C4
	str r0, [sp, #4]
	add r0, r4, #0
	bl FUN_0205854C
	add r5, r0, #0
	cmp r5, #9
	blt _021F06B6
	bl ErrorHandling
_021F06B6:
	lsl r6, r5, #2
	ldr r5, _021F06EC ; =0x021FC4B4
	ldr r2, [sp]
	ldr r3, [sp, #4]
	ldr r5, [r5, r6]
	add r0, r4, #0
	add r1, r7, #0
	blx r5
	ldr r1, [sp, #4]
	ldr r0, [sp]
	strh r1, [r0]
	add r0, r4, #0
	bl FUN_0205854C
	ldr r1, [sp]
	str r0, [r1, #4]
	add r0, r4, #0
	add r1, r7, #0
	bl MOD05_021F2F48
	add r0, r4, #0
	add r1, r7, #0
	bl MOD05_021F19A4
_021F06E6:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F06EC: .word 0x021FC4B4

	thumb_func_start MOD05_021F06F0
MOD05_021F06F0: ; 0x021F06F0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl FUN_02058628
	add r5, r0, #0
	add r0, r4, #0
	bl MOD05_021F2E28
	cmp r0, #1
	beq _021F071A
	ldr r5, [r5, #8]
	cmp r5, #0
	beq _021F071A
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021F2F48
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021F19A4
_021F071A:
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021F071C
MOD05_021F071C: ; 0x021F071C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl FUN_02058628
	add r5, r0, #0
	add r0, r4, #0
	bl MOD05_021F2E28
	cmp r0, #1
	beq _021F075A
	ldr r5, [r5, #8]
	cmp r5, #0
	beq _021F075A
	add r0, r4, #0
	bl MOD05_021F1DFC
	cmp r0, #0
	bne _021F074A
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl FUN_0201F854
_021F074A:
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021F2F48
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021F19A4
_021F075A:
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021F075C
MOD05_021F075C: ; 0x021F075C
	push {r4, lr}
	mov r0, #0
	ldrsh r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	beq _021F0780
	add r0, r3, #0
	bl MOD05_021F2FAC
	add r1, r0, #0
	add r0, r4, #0
	bl FUN_0201F830
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F890
	b _021F0786
_021F0780:
	add r0, r4, #0
	bl MOD05_021F194C
_021F0786:
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F854
	pop {r4, pc}

	thumb_func_start MOD05_021F0790
MOD05_021F0790: ; 0x021F0790
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	ldrsh r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	beq _021F07B4
	add r0, r3, #0
	bl MOD05_021F2FAC
	add r1, r0, #0
	add r0, r4, #0
	bl FUN_0201F830
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F890
_021F07B4:
	add r0, r5, #0
	bl MOD05_021F1DFC
	cmp r0, #0
	bne _021F07C8
	mov r1, #2
	add r0, r4, #0
	lsl r1, r1, #0xa
	bl FUN_0201F854
_021F07C8:
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F07CC
MOD05_021F07CC: ; 0x021F07CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	ldrsh r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	beq _021F07F0
	add r0, r3, #0
	bl MOD05_021F2FAC
	add r1, r0, #0
	add r0, r4, #0
	bl FUN_0201F830
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F890
_021F07F0:
	add r0, r5, #0
	bl MOD05_021F1DFC
	cmp r0, #0
	bne _021F0804
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl FUN_0201F854
_021F0804:
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F0808
MOD05_021F0808: ; 0x021F0808
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	ldrsh r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	beq _021F082C
	add r0, r3, #0
	bl MOD05_021F2FAC
	add r1, r0, #0
	add r0, r4, #0
	bl FUN_0201F830
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F890
_021F082C:
	add r0, r5, #0
	bl MOD05_021F1DFC
	cmp r0, #0
	bne _021F0840
	mov r1, #2
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl FUN_0201F854
_021F0840:
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F0844
MOD05_021F0844: ; 0x021F0844
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	ldrsh r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	beq _021F0868
	add r0, r3, #0
	bl MOD05_021F2FAC
	add r1, r0, #0
	add r0, r4, #0
	bl FUN_0201F830
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F890
_021F0868:
	add r0, r5, #0
	bl MOD05_021F1DFC
	cmp r0, #0
	bne _021F087C
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xe
	bl FUN_0201F854
_021F087C:
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F0880
MOD05_021F0880: ; 0x021F0880
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r5, r1, #0
	cmp r3, r0
	beq _021F08AC
	add r0, r3, #0
	bl MOD05_021F2FAC
	add r1, r0, #0
	add r0, r5, #0
	bl FUN_0201F830
	add r0, r5, #0
	mov r1, #0
	bl FUN_0201F890
	mov r0, #0
	strh r0, [r4, #2]
_021F08AC:
	ldr r0, [r4, #4]
	cmp r0, #6
	beq _021F08B6
	mov r0, #0
	strh r0, [r4, #2]
_021F08B6:
	add r0, r6, #0
	bl MOD05_021F1DFC
	cmp r0, #0
	bne _021F08FC
	ldr r6, _021F0900 ; =0x021FC43C
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #2
	str r0, [r3]
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl FUN_0201F854
	mov r0, #2
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #2]
	ldrsh r0, [r4, r0]
	lsl r1, r0, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _021F08FC
	mov r0, #0
	strh r0, [r4, #2]
_021F08FC:
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021F0900: .word 0x021FC43C

	thumb_func_start MOD05_021F0904
MOD05_021F0904: ; 0x021F0904
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r5, r1, #0
	cmp r3, r0
	beq _021F0930
	add r0, r3, #0
	bl MOD05_021F2FAC
	add r1, r0, #0
	add r0, r5, #0
	bl FUN_0201F830
	add r0, r5, #0
	mov r1, #0
	bl FUN_0201F890
	mov r0, #0
	strh r0, [r4, #2]
_021F0930:
	ldr r0, [r4, #4]
	cmp r0, #7
	beq _021F093A
	mov r0, #0
	strh r0, [r4, #2]
_021F093A:
	add r0, r6, #0
	bl MOD05_021F1DFC
	cmp r0, #0
	bne _021F0978
	ldr r6, _021F097C ; =0x021FC42C
	add r3, sp, #0
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r1, #2
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl FUN_0201F854
	mov r0, #2
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #2]
	ldrsh r0, [r4, r0]
	lsl r1, r0, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _021F0978
	mov r0, #0
	strh r0, [r4, #2]
_021F0978:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F097C: .word 0x021FC42C

	thumb_func_start MOD05_021F0980
MOD05_021F0980: ; 0x021F0980
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r5, r1, #0
	cmp r3, r0
	beq _021F09AC
	add r0, r3, #0
	bl MOD05_021F2FAC
	add r1, r0, #0
	add r0, r5, #0
	bl FUN_0201F830
	add r0, r5, #0
	mov r1, #0
	bl FUN_0201F890
	mov r0, #0
	strh r0, [r4, #2]
_021F09AC:
	ldr r0, [r4, #4]
	cmp r0, #8
	beq _021F09B6
	mov r0, #0
	strh r0, [r4, #2]
_021F09B6:
	add r0, r6, #0
	bl MOD05_021F1DFC
	cmp r0, #0
	bne _021F09FC
	ldr r6, _021F0A00 ; =0x021FC494
	add r3, sp, #0
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r1, #2
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl FUN_0201F854
	mov r0, #2
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #2]
	ldrsh r0, [r4, r0]
	lsl r1, r0, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _021F09FC
	mov r0, #0
	strh r0, [r4, #2]
_021F09FC:
	add sp, #0x20
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F0A00: .word 0x021FC494

	thumb_func_start MOD05_021F0A04
MOD05_021F0A04: ; 0x021F0A04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl FUN_02058628
	ldr r7, [r0, #8]
	add r0, r4, #0
	bl FUN_02058628
	str r0, [sp]
	add r0, r4, #0
	bl MOD05_021F2E28
	cmp r0, #1
	beq _021F0A6E
	cmp r7, #0
	beq _021F0A6E
	add r0, r4, #0

	thumb_func_start MOD05_021F0A28
MOD05_021F0A28: ; 0x021F0A28
	bl FUN_020584C4
	str r0, [sp, #4]
	add r0, r4, #0
	bl FUN_0205854C
	add r5, r0, #0
	cmp r5, #0xa
	blt _021F0A3E
	bl ErrorHandling
_021F0A3E:
	lsl r6, r5, #2
	ldr r5, _021F0A74 ; =0x021FC528
	ldr r2, [sp]
	ldr r3, [sp, #4]
	ldr r5, [r5, r6]
	add r0, r4, #0
	add r1, r7, #0
	blx r5
	ldr r1, [sp, #4]
	ldr r0, [sp]
	strh r1, [r0]
	add r0, r4, #0
	bl FUN_0205854C
	ldr r1, [sp]
	str r0, [r1, #4]
	add r0, r4, #0
	add r1, r7, #0
	bl MOD05_021F2F48
	add r0, r4, #0
	add r1, r7, #0
	bl MOD05_021F19A4
_021F0A6E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F0A74: .word 0x021FC528

	thumb_func_start MOD05_021F0A78
MOD05_021F0A78: ; 0x021F0A78
	push {r4, lr}
	mov r0, #0
	ldrsh r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	bne _021F0A8A
	ldr r0, [r2, #4]
	cmp r0, #9
	bne _021F0AA2
_021F0A8A:
	add r0, r3, #0
	bl MOD05_021F2FAC
	add r1, r0, #0
	add r0, r4, #0
	bl FUN_0201F830
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F890
	b _021F0AA8
_021F0AA2:
	add r0, r4, #0
	bl MOD05_021F194C
_021F0AA8:
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F854
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F0AB4
MOD05_021F0AB4: ; 0x021F0AB4
	push {r4, lr}
	ldr r0, [r2, #4]
	add r4, r1, #0
	cmp r0, #9
	beq _021F0ACE
	add r0, r4, #0
	mov r1, #4
	bl FUN_0201F830
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F890
_021F0ACE:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl FUN_0201F854
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F0ADC
MOD05_021F0ADC: ; 0x021F0ADC
	push {r3, r4, r5, lr}
	mov r1, #0x14
	add r5, r0, #0
	bl FUN_02058604
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	strb r0, [r4]
	bl FUN_0201B9EC
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1c
	sub r1, r1, r2
	mov r0, #0x1c
	ror r1, r0
	add r0, r2, r1
	strb r0, [r4, #2]
	add r0, r5, #0
	add r1, r4, #4
	bl MOD05_021F1FC8
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021F0B14
	add r0, r5, #0
	bl FUN_020586A0
_021F0B14:
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F0B18
MOD05_021F0B18: ; 0x021F0B18
	push {r4, lr}
	add r4, r0, #0
	bl FUN_02058628
	add r1, r0, #0
	add r0, r4, #0
	add r1, r1, #4
	bl MOD05_021F2060
	pop {r4, pc}

	thumb_func_start MOD05_021F0B2C
MOD05_021F0B2C: ; 0x021F0B2C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl FUN_02058628
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021F0B44
	add r1, r4, #0
	add r1, #8
	bl MOD05_021F20D8
_021F0B44:
	add r0, r5, #0
	add r1, r4, #4
	bl MOD05_021F2060
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl FUN_02058410
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021F0B58
MOD05_021F0B58: ; 0x021F0B58
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl FUN_02058628
	add r4, r0, #0
	add r0, r5, #0
	bl MOD05_021F2E28
	cmp r0, #1
	beq _021F0B9A
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021F0B7A
	add r0, r5, #0
	add r1, r4, #4
	bl MOD05_021F1FC8
_021F0B7A:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021F0B9A
	add r1, r4, #0
	add r1, #8
	bl MOD05_021F20F8
	ldr r1, [r4, #4]
	add r0, r5, #0
	bl MOD05_021F2F48
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl FUN_02058418
_021F0B9A:
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021F0B9C
MOD05_021F0B9C: ; 0x021F0B9C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl FUN_02058628
	ldr r6, [r0, #4]
	add r0, r5, #0
	bl FUN_02058628
	add r4, r0, #0
	add r0, r5, #0
	bl MOD05_021F2E28
	cmp r0, #1
	beq _021F0C26
	cmp r6, #0
	beq _021F0C26
	add r0, r5, #0
	bl FUN_020584C4
	add r7, r0, #0
	add r0, r5, #0
	bl FUN_0205854C
	mov r1, #2
	ldrsb r0, [r4, r1]
	cmp r0, #0
	beq _021F0BE0
	sub r0, r0, #1
	strb r0, [r4, #2]
	add r0, r6, #0
	mov r1, #0
	bl FUN_0201F854
	b _021F0C0C
_021F0BE0:
	add r0, r6, #0
	lsl r1, r1, #0xb
	bl FUN_0201F854
	mov r0, #1
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #1]
	ldrsb r0, [r4, r0]
	cmp r0, #0x20
	blt _021F0C0C
	mov r0, #0
	strb r0, [r4, #1]
	bl FUN_0201B9EC
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x1c
	sub r2, r2, r1
	mov r0, #0x1c
	ror r2, r0
	add r0, r1, r2
	strb r0, [r4, #2]
_021F0C0C:
	strb r7, [r4]
	add r0, r5, #0
	bl FUN_0205854C
	strb r0, [r4, #3]
	add r0, r5, #0
	add r1, r6, #0
	bl MOD05_021F2F48
	add r0, r5, #0
	add r1, r6, #0
	bl MOD05_021F19A4
_021F0C26:
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021F0C28
MOD05_021F0C28: ; 0x021F0C28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl FUN_02058628
	ldr r4, [r0, #8]
	add r0, r5, #0
	bl FUN_02058628
	add r6, r0, #0
	add r0, r5, #0
	bl MOD05_021F2E28
	cmp r0, #1
	beq _021F0CEA
	cmp r4, #0
	beq _021F0CEA
	add r0, r5, #0
	bl FUN_020584C4
	add r7, r0, #0
	add r0, r5, #0
	bl FUN_0205854C
	cmp r0, #0
	bne _021F0C9E
	cmp r7, #1
	bls _021F0C66
	mov r0, #1
	str r0, [sp, #4]
	b _021F0C6A
_021F0C66:
	mov r0, #0
	str r0, [sp, #4]
_021F0C6A:
	add r0, r4, #0
	bl FUN_0201F844
	ldr r1, [sp, #4]
	cmp r1, r0
	bne _021F0C7C
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _021F0C94
_021F0C7C:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl FUN_0201F830
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F890
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F854
_021F0C94:
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F854
	b _021F0CD0
_021F0C9E:
	cmp r7, #1
	bls _021F0CA8
	mov r0, #1
	str r0, [sp]
	b _021F0CAC
_021F0CA8:
	mov r0, #0
	str r0, [sp]
_021F0CAC:
	add r0, r4, #0
	bl FUN_0201F844
	ldr r1, [sp]
	cmp r1, r0
	beq _021F0CC6
	add r0, r4, #0
	bl FUN_0201F830
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F890
_021F0CC6:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl FUN_0201F854
_021F0CD0:
	strh r7, [r6]
	add r0, r5, #0
	bl FUN_0205854C
	str r0, [r6, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F2F48
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F19A4
_021F0CEA:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F0CF0
MOD05_021F0CF0: ; 0x021F0CF0
	push {r3, r4, r5, lr}
	mov r1, #0x14
	add r5, r0, #0
	bl FUN_02058604
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	strb r0, [r4]
	add r0, r5, #0
	add r1, r4, #4
	bl MOD05_021F1FC8
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021F0D16
	add r0, r5, #0
	bl FUN_020586A0
_021F0D16:
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021F0D18
MOD05_021F0D18: ; 0x021F0D18
	push {r3, r4, lr}
	sub sp, #0xc
	add r2, sp, #0
	mov r1, #0
	str r1, [r2]
	str r1, [r2, #4]
	add r4, r0, #0
	str r1, [r2, #8]
	bl FUN_02058628
	add r1, r0, #0
	add r0, r4, #0
	add r1, r1, #4
	bl MOD05_021F2060
	add r0, r4, #0
	add r1, sp, #0
	bl FUN_02058B94
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F0D44
MOD05_021F0D44: ; 0x021F0D44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl FUN_02058628
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021F0D5C
	add r1, r4, #0
	add r1, #8
	bl MOD05_021F20D8
_021F0D5C:
	add r0, r5, #0
	add r1, r4, #4
	bl MOD05_021F2060
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl FUN_02058410
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021F0D70
MOD05_021F0D70: ; 0x021F0D70
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl FUN_02058628
	add r4, r0, #0
	add r0, r5, #0
	bl MOD05_021F2E28
	cmp r0, #1
	beq _021F0DB2
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021F0D92
	add r0, r5, #0
	add r1, r4, #4
	bl MOD05_021F1FC8
_021F0D92:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021F0DB2
	add r1, r4, #0
	add r1, #8
	bl MOD05_021F20F8
	ldr r1, [r4, #4]
	add r0, r5, #0
	bl MOD05_021F2F48
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl FUN_02058418
_021F0DB2:
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021F0DB4
MOD05_021F0DB4: ; 0x021F0DB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl FUN_02058628
	ldr r7, [r0, #4]
	add r0, r4, #0
	bl FUN_02058628
	str r0, [sp]
	add r0, r4, #0
	bl MOD05_021F2E28
	cmp r0, #1
	beq _021F0E1E
	cmp r7, #0
	beq _021F0E1E
	add r0, r4, #0
	bl FUN_020584C4
	str r0, [sp, #4]
	add r0, r4, #0
	bl FUN_0205854C
	add r5, r0, #0
	cmp r5, #0xa
	blt _021F0DEE
	bl ErrorHandling
_021F0DEE:
	lsl r6, r5, #2
	ldr r5, _021F0E24 ; =0x021FC500
	ldr r2, [sp]
	ldr r3, [sp, #4]
	ldr r5, [r5, r6]
	add r0, r4, #0
	add r1, r7, #0
	blx r5
	ldr r1, [sp, #4]
	ldr r0, [sp]
	strb r1, [r0]
	add r0, r4, #0
	bl FUN_0205854C
	ldr r1, [sp]
	strb r0, [r1, #2]
	add r0, r4, #0
	add r1, r7, #0
	bl MOD05_021F2F48
	add r0, r4, #0
	add r1, r7, #0
	bl MOD05_021F19A4
_021F0E1E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F0E24: .word 0x021FC500

	thumb_func_start MOD05_021F0E28
MOD05_021F0E28: ; 0x021F0E28
	push {r3, r4, r5, lr}
	add r4, r2, #0
	mov r0, #0
	ldrsb r0, [r4, r0]
	add r5, r1, #0
	cmp r3, r0
	beq _021F0E56
	add r0, r3, #0
	bl MOD05_021F2FAC
	add r1, r0, #0
	add r0, r5, #0
	bl FUN_0201F830
	add r0, r5, #0
	mov r1, #0
	bl FUN_0201F890
	ldrb r1, [r4, #3]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #3]
	pop {r3, r4, r5, pc}
_021F0E56:
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #9
	bne _021F0E6C
	ldrb r1, [r4, #3]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #3]
	pop {r3, r4, r5, pc}
_021F0E6C:
	ldrb r0, [r4, #3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021F0E8E
	add r0, r3, #0
	bl MOD05_021F2FAC
	add r1, r0, #0
	add r0, r5, #0
	bl MOD05_021F1980
	ldrb r1, [r4, #3]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #3]
	pop {r3, r4, r5, pc}
_021F0E8E:
	add r0, r5, #0
	bl MOD05_021F194C
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F0E98
MOD05_021F0E98: ; 0x021F0E98
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #0
	ldrsb r0, [r4, r0]
	add r5, r1, #0
	cmp r3, r0
	beq _021F0EC0
	add r0, r3, #0
	bl MOD05_021F2FAC
	add r1, r0, #0
	add r0, r5, #0
	bl FUN_0201F830
	add r0, r5, #0
	mov r1, #0
	bl FUN_0201F890
	b _021F0EF6
_021F0EC0:
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #9
	bne _021F0ED6
	ldrb r1, [r4, #3]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #3]
	pop {r4, r5, r6, pc}
_021F0ED6:
	ldrb r0, [r4, #3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021F0EF6
	add r0, r3, #0
	bl MOD05_021F2FAC
	add r1, r0, #0
	add r0, r5, #0
	bl MOD05_021F1980
	ldrb r1, [r4, #3]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #3]
_021F0EF6:
	add r0, r6, #0
	bl MOD05_021F1DFC
	cmp r0, #0
	bne _021F0F0A
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xa
	bl FUN_0201F854
_021F0F0A:
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021F0F0C
MOD05_021F0F0C: ; 0x021F0F0C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	beq _021F0F32
	add r0, r3, #0
	bl MOD05_021F2FAC
	add r1, r0, #0
	add r0, r4, #0
	bl FUN_0201F830
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F890
	b _021F0F48
_021F0F32:
	mov r0, #2
	ldrsb r0, [r2, r0]
	cmp r0, #9
	bne _021F0F48
	add r0, r3, #0
	bl MOD05_021F2FAC
	add r1, r0, #0
	add r0, r4, #0
	bl MOD05_021F1980
_021F0F48:
	add r0, r5, #0
	bl MOD05_021F1DFC
	cmp r0, #0
	bne _021F0F5C
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl FUN_0201F854
_021F0F5C:
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F0F60
MOD05_021F0F60: ; 0x021F0F60
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	beq _021F0F86
	add r0, r3, #0
	bl MOD05_021F2FAC
	add r1, r0, #0
	add r0, r4, #0
	bl FUN_0201F830
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F890
	b _021F0F9C
_021F0F86:
	mov r0, #2
	ldrsb r0, [r2, r0]
	cmp r0, #9
	bne _021F0F9C
	add r0, r3, #0
	bl MOD05_021F2FAC
	add r1, r0, #0
	add r0, r4, #0
	bl MOD05_021F1980
_021F0F9C:
	add r0, r5, #0
	bl MOD05_021F1DFC
	cmp r0, #0
	bne _021F0FB0
	mov r1, #2
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl FUN_0201F854
_021F0FB0:
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F0FB4
MOD05_021F0FB4: ; 0x021F0FB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	beq _021F0FDA
	add r0, r3, #0
	bl MOD05_021F2FAC
	add r1, r0, #0
	add r0, r4, #0
	bl FUN_0201F830
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F890
	b _021F0FF0
_021F0FDA:
	mov r0, #2
	ldrsb r0, [r2, r0]
	cmp r0, #9
	bne _021F0FF0
	add r0, r3, #0
	bl MOD05_021F2FAC
	add r1, r0, #0
	add r0, r4, #0
	bl MOD05_021F1980
_021F0FF0:
	add r0, r5, #0
	bl MOD05_021F1DFC
	cmp r0, #0
	bne _021F1004
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xe
	bl FUN_0201F854
_021F1004:
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F1008
MOD05_021F1008: ; 0x021F1008
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #0
	ldrsb r0, [r4, r0]
	add r5, r1, #0
	cmp r3, r0
	beq _021F1036
	add r0, r3, #0
	bl MOD05_021F2FAC
	add r1, r0, #0
	add r0, r5, #0
	bl FUN_0201F830
	add r0, r5, #0
	mov r1, #0
	bl FUN_0201F890
	mov r0, #0
	strb r0, [r4, #1]
	b _021F104C
_021F1036:
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #9
	bne _021F104C
	add r0, r3, #0
	bl MOD05_021F2FAC
	add r1, r0, #0
	add r0, r5, #0
	bl MOD05_021F1980
_021F104C:
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #6
	beq _021F1058
	mov r0, #0
	strb r0, [r4, #1]
_021F1058:
	add r0, r6, #0
	bl MOD05_021F1DFC
	cmp r0, #0
	bne _021F109E
	ldr r6, _021F10A4 ; =0x021FC458
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6]
	mov r1, #1
	str r0, [r3]
	ldrsb r1, [r4, r1]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl FUN_0201F854
	mov r0, #1
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #1]
	ldrsb r0, [r4, r0]
	lsl r1, r0, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _021F109E
	mov r0, #0
	strb r0, [r4, #1]
_021F109E:
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_021F10A4: .word 0x021FC458

	thumb_func_start MOD05_021F10A8
MOD05_021F10A8: ; 0x021F10A8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #0
	ldrsb r0, [r4, r0]
	add r5, r1, #0
	cmp r3, r0
	beq _021F10D6
	add r0, r3, #0
	bl MOD05_021F2FAC
	add r1, r0, #0
	add r0, r5, #0
	bl FUN_0201F830
	add r0, r5, #0
	mov r1, #0
	bl FUN_0201F890
	mov r0, #0
	strb r0, [r4, #1]
	b _021F10EC
_021F10D6:
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #9
	bne _021F10EC
	add r0, r3, #0
	bl MOD05_021F2FAC
	add r1, r0, #0
	add r0, r5, #0
	bl MOD05_021F1980
_021F10EC:
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #7
	beq _021F10F8
	mov r0, #0
	strb r0, [r4, #1]
_021F10F8:
	add r0, r6, #0
	bl MOD05_021F1DFC
	cmp r0, #0
	bne _021F1136
	ldr r6, _021F113C ; =0x021FC3EC
	add r3, sp, #0
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r1, #1
	ldrsb r1, [r4, r1]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl FUN_0201F854
	mov r0, #1
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #1]
	ldrsb r0, [r4, r0]
	lsl r1, r0, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _021F1136
	mov r0, #0
	strb r0, [r4, #1]
_021F1136:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021F113C: .word 0x021FC3EC

	thumb_func_start MOD05_021F1140
MOD05_021F1140: ; 0x021F1140
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #0
	ldrsb r0, [r4, r0]
	add r5, r1, #0
	cmp r3, r0
	beq _021F116E
	add r0, r3, #0
	bl MOD05_021F2FAC
	add r1, r0, #0
	add r0, r5, #0
	bl FUN_0201F830
	add r0, r5, #0
	mov r1, #0
	bl FUN_0201F890
	mov r0, #0
	strb r0, [r4, #1]
	b _021F1184
_021F116E:
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #9
	bne _021F1184
	add r0, r3, #0
	bl MOD05_021F2FAC
	add r1, r0, #0
	add r0, r5, #0
	bl MOD05_021F1980
_021F1184:
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #8
	beq _021F1190
	mov r0, #0
	strb r0, [r4, #1]
_021F1190:
	add r0, r6, #0
	bl MOD05_021F1DFC
	cmp r0, #0
	bne _021F11D6
	ldr r6, _021F11DC ; =0x021FC474
	add r3, sp, #0
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r1, #1
	ldrsb r1, [r4, r1]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl FUN_0201F854
	mov r0, #1
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #1]
	ldrsb r0, [r4, r0]
	lsl r1, r0, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _021F11D6
	mov r0, #0
	strb r0, [r4, #1]
_021F11D6:
	add sp, #0x20
	pop {r4, r5, r6, pc}
	nop
_021F11DC: .word 0x021FC474

	thumb_func_start MOD05_021F11E0
MOD05_021F11E0: ; 0x021F11E0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	beq _021F1206
	add r0, r3, #0
	bl MOD05_021F2FB8
	add r1, r0, #0
	add r0, r4, #0
	bl FUN_0201F830
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F890
	b _021F121E
_021F1206:
	mov r0, #2
	ldrsb r0, [r2, r0]
	cmp r0, #9
	beq _021F121E
	add r0, r3, #0
	bl MOD05_021F2FB8
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #4
	bl MOD05_021F1958
_021F121E:
	add r0, r5, #0
	bl MOD05_021F1DFC
	cmp r0, #0
	bne _021F1232
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl FUN_0201F854
_021F1232:
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021F1234
MOD05_021F1234: ; 0x021F1234
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	bl FUN_02058628
	ldr r0, [r0, #4]
	str r0, [sp]
	add r0, r7, #0
	bl FUN_02058628
	add r4, r0, #0
	add r0, r7, #0
	bl MOD05_021F2E28
	cmp r0, #1
	beq _021F12B6
	ldr r0, [sp]
	cmp r0, #0
	beq _021F12B6
	add r0, r7, #0
	bl FUN_020584C4
	str r0, [sp, #8]
	add r0, r7, #0
	bl FUN_0205854C
	str r0, [sp, #4]
	cmp r0, #0xc
	blt _021F1272
	bl ErrorHandling
_021F1272:
	mov r1, #2
	ldrsb r2, [r4, r1]
	cmp r2, #0
	bne _021F128C
	ldr r0, [sp, #4]
	cmp r0, r2
	beq _021F128C
	ldrb r0, [r4, #3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _021F128C
	sub r0, r1, #3
	strb r0, [r4]
_021F128C:
	ldr r5, [sp, #4]
	ldr r1, [sp]
	lsl r6, r5, #2
	ldr r5, _021F12BC ; =0x021FC4D8
	ldr r3, [sp, #8]
	ldr r5, [r5, r6]
	add r0, r7, #0
	add r2, r4, #0
	blx r5
	ldr r0, [sp, #8]
	ldr r1, [sp]
	strb r0, [r4]
	ldr r0, [sp, #4]
	strb r0, [r4, #2]
	add r0, r7, #0
	bl MOD05_021F2F48
	ldr r1, [sp]
	add r0, r7, #0
	bl MOD05_021F19A4
_021F12B6:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021F12BC: .word 0x021FC4D8

	thumb_func_start MOD05_021F12C0
MOD05_021F12C0: ; 0x021F12C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r3, #0
	add r4, r2, #0
	add r2, sp, #0
	ldr r3, _021F1348 ; =0x021FC3FC
	add r5, r1, #0
	add r7, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	lsl r0, r6, #2
	ldr r1, [r7, r0]
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r6, r0
	beq _021F12FE
	add r0, r5, #0
	bl FUN_0201F830
	add r0, r5, #0
	mov r1, #0
	bl FUN_0201F890
	ldrb r1, [r4, #3]
	mov r0, #1
	add sp, #0x10
	bic r1, r0
	strb r1, [r4, #3]
	pop {r3, r4, r5, r6, r7, pc}
_021F12FE:
	mov r2, #2
	ldrsb r0, [r4, r2]
	cmp r0, #0
	beq _021F1316
	ldrb r1, [r4, #3]
	mov r0, #1
	add sp, #0x10
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #3]
	pop {r3, r4, r5, r6, r7, pc}
_021F1316:
	ldrb r0, [r4, #3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021F133A
	add r0, r5, #0
	bl FUN_0201F830
	add r0, r5, #0
	mov r1, #0
	bl FUN_0201F890
	ldrb r1, [r4, #3]
	mov r0, #1
	add sp, #0x10
	bic r1, r0
	strb r1, [r4, #3]
	pop {r3, r4, r5, r6, r7, pc}
_021F133A:
	add r0, r5, #0
	lsl r1, r2, #0xb
	bl FUN_0201F854
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F1348: .word 0x021FC3FC

	thumb_func_start MOD05_021F134C
MOD05_021F134C: ; 0x021F134C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r3, #0
	add r5, r1, #0
	add r6, r2, #0
	str r3, [sp]
	bl MOD05_021F2FC4
	add r4, r0, #0
	mov r0, #0
	ldrsb r1, [r6, r0]
	ldr r0, [sp]
	cmp r0, r1
	bne _021F1370
	mov r0, #2
	ldrsb r0, [r6, r0]
	cmp r0, #0
	beq _021F1382
_021F1370:
	add r0, r5, #0
	add r1, r4, #0
	bl FUN_0201F830
	add r0, r5, #0
	mov r1, #0
	bl FUN_0201F890
	b _021F13B2
_021F1382:
	cmp r0, #0xa
	beq _021F1398
	add r0, r5, #0
	add r1, r4, #0
	bl FUN_0201F830
	add r0, r5, #0
	mov r1, #0
	bl FUN_0201F890
	b _021F13B2
_021F1398:
	add r0, r5, #0
	bl FUN_0201F844
	cmp r4, r0
	beq _021F13B2
	add r0, r5, #0
	add r1, r4, #0
	bl FUN_0201F830
	add r0, r5, #0
	mov r1, #0
	bl FUN_0201F890
_021F13B2:
	add r0, r7, #0
	bl MOD05_021F1DFC
	cmp r0, #0
	bne _021F13C6
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xa
	bl FUN_0201F854
_021F13C6:
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021F13C8
MOD05_021F13C8: ; 0x021F13C8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r3, #0
	add r5, r1, #0
	add r6, r2, #0
	str r3, [sp]
	bl MOD05_021F2FC4
	add r4, r0, #0
	mov r0, #0
	ldrsb r1, [r6, r0]
	ldr r0, [sp]
	cmp r0, r1
	beq _021F13F6
	add r0, r5, #0
	add r1, r4, #0
	bl FUN_0201F830
	add r0, r5, #0
	mov r1, #0
	bl FUN_0201F890
	b _021F142A
_021F13F6:
	mov r0, #2
	ldrsb r0, [r6, r0]
	cmp r0, #0xb
	beq _021F1410
	add r0, r5, #0
	add r1, r4, #0
	bl FUN_0201F830
	add r0, r5, #0
	mov r1, #0
	bl FUN_0201F890
	b _021F142A
_021F1410:
	add r0, r5, #0
	bl FUN_0201F844
	cmp r4, r0
	beq _021F142A
	add r0, r5, #0
	add r1, r4, #0
	bl FUN_0201F830
	add r0, r5, #0
	mov r1, #0
	bl FUN_0201F890
_021F142A:
	add r0, r7, #0
	bl MOD05_021F1DFC
	cmp r0, #0
	bne _021F143E
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl FUN_0201F854
_021F143E:
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021F1440
MOD05_021F1440: ; 0x021F1440
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl FUN_02058628
	ldr r7, [r0, #4]
	add r0, r4, #0
	bl FUN_02058628
	str r0, [sp]
	cmp r7, #0
	beq _021F14B4
	add r0, r4, #0
	bl MOD05_021F2E28
	cmp r0, #1
	beq _021F14B4
	add r0, r4, #0
	bl FUN_020584C4
	str r0, [sp, #4]
	add r0, r4, #0
	bl FUN_0205854C
	add r5, r0, #0
	cmp r5, #4
	blt _021F147A
	bl ErrorHandling
_021F147A:
	lsl r6, r5, #2
	ldr r5, _021F14B8 ; =0x021FC40C
	ldr r2, [sp]
	ldr r3, [sp, #4]
	ldr r5, [r5, r6]
	add r0, r4, #0
	add r1, r7, #0
	blx r5
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r1, r7, #0
	bl MOD05_021F1658
	ldr r1, [sp, #4]
	ldr r0, [sp]
	strb r1, [r0]
	add r0, r4, #0
	bl FUN_0205854C
	ldr r1, [sp]
	strb r0, [r1, #2]
	add r0, r4, #0
	add r1, r7, #0
	bl MOD05_021F2F48
	add r0, r4, #0
	add r1, r7, #0
	bl MOD05_021F19A4
_021F14B4:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F14B8: .word 0x021FC40C

	thumb_func_start MOD05_021F14BC
MOD05_021F14BC: ; 0x021F14BC
	push {r4, lr}
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	bne _021F14D0
	mov r0, #2
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _021F14E6
_021F14D0:
	ldr r1, _021F1508 ; =0x021FC41C
	lsl r2, r3, #2
	ldr r1, [r1, r2]
	add r0, r4, #0
	bl FUN_0201F830
	mov r1, #0xf
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl FUN_0201F890
_021F14E6:
	add r0, r4, #0
	bl FUN_0201F8C0
	mov r1, #1
	lsl r1, r1, #0xc
	sub r1, r0, r1
	bpl _021F14F6
	mov r1, #0
_021F14F6:
	add r0, r4, #0
	bl FUN_0201F890
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F854
	pop {r4, pc}
	nop
_021F1508: .word 0x021FC41C

	thumb_func_start MOD05_021F150C
MOD05_021F150C: ; 0x021F150C
	push {r4, lr}
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	bne _021F1520
	mov r0, #2
	ldrsb r0, [r2, r0]
	cmp r0, #1
	beq _021F1534
_021F1520:
	ldr r1, _021F1540 ; =0x021FC41C
	lsl r2, r3, #2
	ldr r1, [r1, r2]
	add r0, r4, #0
	bl FUN_0201F830
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F890
_021F1534:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl FUN_0201F854
	pop {r4, pc}
	.balign 4, 0
_021F1540: .word 0x021FC41C

	thumb_func_start MOD05_021F1544
MOD05_021F1544: ; 0x021F1544
	push {r3, r4, r5, lr}
	add r4, r2, #0
	mov r0, #0
	ldrsb r0, [r4, r0]
	add r5, r1, #0
	cmp r3, r0
	bne _021F155A
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #2
	beq _021F1578
_021F155A:
	ldr r1, _021F1604 ; =0x021FC41C
	lsl r2, r3, #2
	ldr r1, [r1, r2]
	add r0, r5, #0
	bl FUN_0201F830
	mov r1, #0xf
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl FUN_0201F890
	ldrb r1, [r4, #3]
	mov r0, #0xfe
	bic r1, r0
	strb r1, [r4, #3]
_021F1578:
	add r0, r5, #0
	bl FUN_0201F8C0
	add r1, r0, #0
	ldrb r0, [r4, #3]
	lsl r2, r0, #0x18
	lsr r2, r2, #0x19
	beq _021F1592
	cmp r2, #1
	beq _021F15B4
	cmp r2, #2
	beq _021F15DA
	b _021F15F4
_021F1592:
	mov r3, #1
	lsl r3, r3, #0xc
	sub r1, r1, r3
	mov r3, #0xa
	lsl r3, r3, #0xc
	cmp r1, r3
	bgt _021F15F4
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #0xfe
	lsl r2, r2, #0x19
	bic r0, r3
	lsr r2, r2, #0x18
	orr r0, r2
	strb r0, [r4, #3]
	b _021F15F4
_021F15B4:
	mov r3, #1
	lsl r3, r3, #0xc
	add r1, r1, r3
	mov r3, #0xf
	lsl r3, r3, #0xc
	cmp r1, r3
	blt _021F15F4
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #0xfe
	lsl r2, r2, #0x19
	bic r0, r3
	lsr r2, r2, #0x18
	orr r0, r2
	strb r0, [r4, #3]
	mov r0, #0
	strb r0, [r4, #1]
	b _021F15F4
_021F15DA:
	mov r0, #1
	ldrsb r2, [r4, r0]
	add r2, r2, #1
	strb r2, [r4, #1]
	ldrsb r0, [r4, r0]
	cmp r0, #0x1e
	blt _021F15F4
	mov r0, #0
	strb r0, [r4, #1]
	ldrb r2, [r4, #3]
	mov r0, #0xfe
	bic r2, r0
	strb r2, [r4, #3]
_021F15F4:
	add r0, r5, #0
	bl FUN_0201F890
	add r0, r5, #0
	mov r1, #0
	bl FUN_0201F854
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F1604: .word 0x021FC41C

	thumb_func_start MOD05_021F1608
MOD05_021F1608: ; 0x021F1608
	push {r4, lr}
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	bne _021F161C
	mov r0, #2
	ldrsb r0, [r2, r0]
	cmp r0, #3
	beq _021F1632
_021F161C:
	ldr r1, _021F1654 ; =0x021FC41C
	lsl r2, r3, #2
	ldr r1, [r1, r2]
	add r0, r4, #0
	bl FUN_0201F830
	mov r1, #0xf
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl FUN_0201F890
_021F1632:
	add r0, r4, #0
	bl FUN_0201F8C0
	mov r1, #1
	lsl r1, r1, #0xc
	sub r1, r0, r1
	bpl _021F1642
	mov r1, #0
_021F1642:
	add r0, r4, #0
	bl FUN_0201F890
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F854
	pop {r4, pc}
	nop
_021F1654: .word 0x021FC41C

	thumb_func_start MOD05_021F1658
MOD05_021F1658: ; 0x021F1658
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r2, #0
	add r2, sp, #0
	mov r0, #0
	str r0, [r2]
	str r0, [r2, #4]
	str r0, [r2, #8]
	add r0, r1, #0
	bl FUN_0201F880
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	cmp r4, #3
	bhi _021F16BE
	add r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F1688: ; jump table
	.short _021F16BE - _021F1688 - 2 ; case 0
	.short _021F1690 - _021F1688 - 2 ; case 1
	.short _021F169C - _021F1688 - 2 ; case 2
	.short _021F16AE - _021F1688 - 2 ; case 3
_021F1690:
	cmp r0, #0x18
	blt _021F16BE
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	b _021F16BE
_021F169C:
	cmp r0, #0x28
	bge _021F16A8
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp]
	b _021F16BE
_021F16A8:
	ldr r0, _021F16CC ; =0xFFFFB000
	str r0, [sp]
	b _021F16BE
_021F16AE:
	cmp r0, #0x38
	bge _021F16B8
	ldr r0, _021F16D0 ; =0xFFFFF000
	str r0, [sp]
	b _021F16BE
_021F16B8:
	mov r0, #5
	lsl r0, r0, #0xc
	str r0, [sp]
_021F16BE:
	add r0, r5, #0
	add r1, sp, #0
	bl FUN_02058B94
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021F16CC: .word 0xFFFFB000
_021F16D0: .word 0xFFFFF000

	thumb_func_start MOD05_021F16D4
MOD05_021F16D4: ; 0x021F16D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl FUN_02058628
	ldr r4, [r0, #4]
	add r0, r5, #0
	bl FUN_02058628
	add r6, r0, #0
	add r0, r5, #0
	bl MOD05_021F2E28
	cmp r0, #1
	beq _021F1734
	cmp r4, #0
	beq _021F1734
	add r0, r5, #0
	bl FUN_020584C4
	add r7, r0, #0
	strb r7, [r6]
	add r0, r5, #0
	bl FUN_0205854C
	strb r0, [r6, #2]
	add r0, r7, #0
	bl MOD05_021F2FAC
	add r1, r0, #0
	add r0, r4, #0
	bl FUN_0201F830
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F890
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F854
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F2F48
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F19A4
_021F1734:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F1738
MOD05_021F1738: ; 0x021F1738
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl FUN_02058628
	ldr r4, [r0, #4]
	add r0, r5, #0
	bl FUN_02058628
	add r6, r0, #0
	add r0, r5, #0
	bl MOD05_021F2E28
	cmp r0, #1
	beq _021F179C
	cmp r4, #0
	beq _021F179C
	add r0, r5, #0
	bl FUN_020584C4
	strb r0, [r6]
	add r0, r5, #0
	bl FUN_0205854C
	strb r0, [r6, #2]
	add r0, r4, #0
	bl FUN_0201F844
	cmp r0, #0
	beq _021F1782
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F830
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F890
_021F1782:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl FUN_0201F854
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F2F48
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F19A4
_021F179C:
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F17A0
MOD05_021F17A0: ; 0x021F17A0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl FUN_02058628
	ldr r4, [r0, #4]
	add r0, r5, #0
	bl FUN_02058628
	add r6, r0, #0
	add r0, r5, #0
	bl MOD05_021F2E28
	cmp r0, #1
	beq _021F1836
	cmp r4, #0
	beq _021F1836
	add r0, r5, #0
	bl FUN_020584C4
	add r7, r0, #0
	add r0, r5, #0
	bl FUN_0205854C
	cmp r0, #0
	bne _021F17F8
	add r0, r4, #0
	bl FUN_0201F844
	cmp r0, #1
	beq _021F17EC
	add r0, r4, #0
	mov r1, #1
	bl FUN_0201F830
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F890
_021F17EC:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl FUN_0201F854
	b _021F181C
_021F17F8:
	add r0, r4, #0
	bl FUN_0201F844
	cmp r0, #0
	beq _021F1812
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F830
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F890
_021F1812:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl FUN_0201F854
_021F181C:
	strb r7, [r6]
	add r0, r5, #0
	bl FUN_0205854C
	strb r0, [r6, #2]
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F2F48
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F19A4
_021F1836:
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021F1838
MOD05_021F1838: ; 0x021F1838
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl FUN_02058628
	ldr r4, [r0, #4]
	add r0, r5, #0
	bl FUN_02058628
	add r6, r0, #0
	add r0, r5, #0
	bl MOD05_021F2E28
	cmp r0, #1
	beq _021F18A0
	cmp r4, #0
	beq _021F18A0
	add r0, r5, #0
	bl FUN_020584C4
	mov r1, #0
	ldrsb r1, [r6, r1]
	add r7, r0, #0
	cmp r7, r1
	beq _021F187C
	bl MOD05_021F2FAC
	add r1, r0, #0
	add r0, r4, #0
	bl FUN_0201F830
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F890
_021F187C:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl FUN_0201F854
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F2F48
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F19A4
	add r0, r5, #0
	strb r7, [r6]
	bl FUN_0205854C
	strb r0, [r6, #2]
_021F18A0:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F18A4
MOD05_021F18A4: ; 0x021F18A4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl FUN_02058628
	ldr r4, [r0, #4]
	add r0, r5, #0
	bl FUN_02058628
	add r6, r0, #0
	add r0, r5, #0
	bl MOD05_021F2E28
	cmp r0, #1
	beq _021F191A
	cmp r4, #0
	beq _021F191A
	add r0, r5, #0
	bl FUN_020584C4
	str r0, [sp]
	add r0, r5, #0
	bl FUN_0205854C
	add r7, r0, #0
	mov r0, #2
	ldrsb r0, [r6, r0]
	cmp r7, r0
	beq _021F18FA
	cmp r7, #0
	bne _021F18EA
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F830
	b _021F18F2
_021F18EA:
	add r0, r4, #0
	mov r1, #1
	bl FUN_0201F830
_021F18F2:
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F890
_021F18FA:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl FUN_0201F854
	ldr r0, [sp]
	add r1, r4, #0
	strb r0, [r6]
	add r0, r5, #0
	strb r7, [r6, #2]
	bl MOD05_021F2F48
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F19A4
_021F191A:
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021F191C
MOD05_021F191C: ; 0x021F191C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl FUN_0201F8C0
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r4, r1, #0xc
	add r0, r4, #0
	add r1, r6, #0
	bl _s32_div_f
	sub r1, r4, r1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl FUN_0201F890
	add r0, r5, #0
	mov r1, #0
	bl FUN_0201F854
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F194C
MOD05_021F194C: ; 0x021F194C
	ldr r3, _021F1954 ; =MOD05_021F191C
	mov r1, #8
	bx r3
	nop
_021F1954: .word MOD05_021F191C

	thumb_func_start MOD05_021F1958
MOD05_021F1958: ; 0x021F1958
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r1, r2, #0
	bl MOD05_021F191C
	add r0, r5, #0
	bl FUN_0201F8C0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl FUN_0201F830
	add r0, r5, #0
	add r1, r6, #0
	bl FUN_0201F890
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F1980
MOD05_021F1980: ; 0x021F1980
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl MOD05_021F194C
	add r0, r5, #0
	bl FUN_0201F8C0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl FUN_0201F830
	add r0, r5, #0
	add r1, r6, #0
	bl FUN_0201F890
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021F19A4
MOD05_021F19A4: ; 0x021F19A4
	push {r4, r5, r6, lr}
	mov r4, #1
	add r6, r1, #0
	lsl r1, r4, #9
	add r5, r0, #0
	bl FUN_0205842C
	cmp r0, #1
	bne _021F19B8
	mov r4, #0
_021F19B8:
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl FUN_0205842C
	cmp r0, #1
	bne _021F19D6
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl FUN_0205842C
	cmp r0, #0
	bne _021F19D6
	mov r4, #0
_021F19D6:
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl FUN_0201F80C
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F19E4
MOD05_021F19E4: ; 0x021F19E4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #4
	bl FUN_02058604
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_0224A130
	str r0, [r4]
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F19FC
MOD05_021F19FC: ; 0x021F19FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #4
	bl FUN_02058604
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_0224A6B8
	str r0, [r4]
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F1A14
MOD05_021F1A14: ; 0x021F1A14
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #4
	bl FUN_02058604
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_0224A8D4
	str r0, [r4]
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F1A2C
MOD05_021F1A2C: ; 0x021F1A2C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #4
	bl FUN_02058604
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_0224AA40
	str r0, [r4]
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F1A44
MOD05_021F1A44: ; 0x021F1A44
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021F1A48
MOD05_021F1A48: ; 0x021F1A48
	push {r4, lr}
	bl FUN_02058628
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021F1A5E
	bl MOD05_021E4DE4
	mov r0, #0
	str r0, [r4]
_021F1A5E:
	pop {r4, pc}

	thumb_func_start MOD05_021F1A60
MOD05_021F1A60: ; 0x021F1A60
	push {r4, lr}
	bl FUN_02058628
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021F1A76
	bl MOD05_021E4DE4
	mov r0, #0
	str r0, [r4]
_021F1A76:
	pop {r4, pc}

	thumb_func_start MOD05_021F1A78
MOD05_021F1A78: ; 0x021F1A78
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl FUN_02058628
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021F1A8C
	bl ErrorHandling
_021F1A8C:
	add r0, r5, #0
	bl FUN_0224A130
	str r0, [r4]
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F1A98
MOD05_021F1A98: ; 0x021F1A98
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl FUN_02058628
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021F1AAC
	bl ErrorHandling
_021F1AAC:
	add r0, r5, #0
	bl FUN_0224A6B8
	str r0, [r4]
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F1AB8
MOD05_021F1AB8: ; 0x021F1AB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl FUN_02058628
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021F1ACC
	bl ErrorHandling
_021F1ACC:
	add r0, r5, #0
	bl FUN_0224A8D4
	str r0, [r4]
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F1AD8
MOD05_021F1AD8: ; 0x021F1AD8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl FUN_02058628
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021F1AEC
	bl ErrorHandling
_021F1AEC:
	add r0, r5, #0
	bl FUN_0224AA40
	str r0, [r4]
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F1AF8
MOD05_021F1AF8: ; 0x021F1AF8
	push {r4, lr}
	bl FUN_02058628
	add r4, r0, #0
	ldr r0, [r4]
	bl FUN_0224A6FC
	mov r0, #0
	str r0, [r4]
	pop {r4, pc}

	thumb_func_start MOD05_021F1B0C
MOD05_021F1B0C: ; 0x021F1B0C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl MOD05_021F1C34
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0
	bl FUN_02058BB4
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F1B2C
MOD05_021F1B2C: ; 0x021F1B2C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl FUN_02058628
	ldr r4, [r0]
	add r0, r5, #0
	bl MOD05_021F2E28
	cmp r0, #1
	beq _021F1B54
	cmp r4, #0
	beq _021F1B54
	add r0, r5, #0
	bl MOD05_021F1C48
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl FUN_0201F854
_021F1B54:
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F1B58
MOD05_021F1B58: ; 0x021F1B58
	ldr r3, _021F1B5C ; =MOD05_021F1CA4
	bx r3
	.balign 4, 0
_021F1B5C: .word MOD05_021F1CA4

	thumb_func_start MOD05_021F1B60
MOD05_021F1B60: ; 0x021F1B60
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl FUN_02058628
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021F1B76
	add r1, r4, #4
	bl MOD05_021F20D8
_021F1B76:
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F2060
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl FUN_02058410
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F1B8C
MOD05_021F1B8C: ; 0x021F1B8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl FUN_02058628
	add r4, r0, #0
	add r0, r5, #0
	bl MOD05_021F2E28
	cmp r0, #1
	beq _021F1BCC
	ldr r0, [r4]
	cmp r0, #0
	bne _021F1BAE
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F1FC8
_021F1BAE:
	ldr r0, [r4]
	cmp r0, #0
	beq _021F1BCC
	add r1, r4, #4
	bl MOD05_021F20F8
	ldr r1, [r4]
	add r0, r5, #0
	bl MOD05_021F2F48
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl FUN_02058418
_021F1BCC:
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F1BD0
MOD05_021F1BD0: ; 0x021F1BD0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl MOD05_021F1C34
	mov r1, #0
	mov r0, #6
	lsl r0, r0, #0xe
	str r0, [sp, #4]
	str r1, [sp]
	str r1, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0
	bl FUN_02058BB4
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F1BF4
MOD05_021F1BF4: ; 0x021F1BF4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl FUN_02058628
	ldr r4, [r0]
	add r0, r5, #0
	bl MOD05_021F2E28
	cmp r0, #1
	beq _021F1C12
	cmp r4, #0
	beq _021F1C12
	add r0, r5, #0
	bl MOD05_021F1C48
_021F1C12:
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021F1C14
MOD05_021F1C14: ; 0x021F1C14
	ldr r3, _021F1C18 ; =MOD05_021F1CA4
	bx r3
	.balign 4, 0
_021F1C18: .word MOD05_021F1CA4

	thumb_func_start MOD05_021F1C1C
MOD05_021F1C1C: ; 0x021F1C1C
	ldr r3, _021F1C20 ; =0x02058629
	bx r3
	.balign 4, 0
_021F1C20: .word 0x02058629

	thumb_func_start MOD05_021F1C24
MOD05_021F1C24: ; 0x021F1C24
	push {r3, lr}
	bl FUN_02058628
	bl MOD05_021F1C30
	pop {r3, pc}

	thumb_func_start MOD05_021F1C30
MOD05_021F1C30: ; 0x021F1C30
	ldr r0, [r0]
	bx lr

	thumb_func_start MOD05_021F1C34
MOD05_021F1C34: ; 0x021F1C34
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0x10
	bl FUN_02058604
	add r1, r0, #0
	add r0, r4, #0
	bl MOD05_021F1FC8
	pop {r4, pc}

	thumb_func_start MOD05_021F1C48
MOD05_021F1C48: ; 0x021F1C48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl FUN_02058628
	ldr r4, [r0]
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F2F48
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F1C64
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021F1C64
MOD05_021F1C64: ; 0x021F1C64
	push {r4, r5, r6, lr}
	mov r4, #1
	add r6, r1, #0
	lsl r1, r4, #9
	add r5, r0, #0
	bl FUN_0205842C
	cmp r0, #1
	bne _021F1C78
	mov r4, #0
_021F1C78:
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl FUN_0205842C
	cmp r0, #1
	bne _021F1C96
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl FUN_0205842C
	cmp r0, #0
	bne _021F1C96
	mov r4, #0
_021F1C96:
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl FUN_0201F80C
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F1CA4
MOD05_021F1CA4: ; 0x021F1CA4
	push {r4, lr}
	add r4, r0, #0
	bl FUN_02058628
	add r1, r0, #0
	add r0, r4, #0
	bl MOD05_021F2060
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F1CB8
MOD05_021F1CB8: ; 0x021F1CB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	mov r1, #1
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	bl FUN_02058390
	cmp r0, #0
	beq _021F1CD2
	bl ErrorHandling
_021F1CD2:
	add r0, r5, #0
	bl MOD05_021F1D68
	add r0, r5, #0
	bl FUN_02058368
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl FUN_0205839C
	sub r0, r0, #1
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl FUN_020583A0
	str r4, [sp]
	str r6, [sp, #4]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	add r1, r5, #0
	str r7, [sp, #8]
	bl MOD05_021F1F04
	add r0, r5, #0
	mov r1, #4
	bl MOD05_021F3780
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl FUN_020583A4
	ldr r1, _021F1D28 ; =0x021F8B84
	add r0, r4, #0
	ldr r1, [r1]
	bl MOD05_021F3810
	add r0, r5, #0
	mov r1, #1
	bl FUN_0205837C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021F1D28: .word 0x021F8B84

	thumb_func_start MOD05_021F1D2C
MOD05_021F1D2C: ; 0x021F1D2C
	push {r4, lr}
	add r4, r0, #0
	bl FUN_020587E0
	cmp r0, #1
	beq _021F1D3C
	bl ErrorHandling
_021F1D3C:
	add r0, r4, #0
	bl FUN_020583A0
	bl MOD05_021F1F58
	add r0, r4, #0
	bl FUN_020583AC
	bl MOD05_021F379C
	add r0, r4, #0
	mov r1, #0
	bl FUN_020583A4
	add r0, r4, #0
	mov r1, #1
	bl FUN_02058384
	add r0, r4, #0
	bl MOD05_021F1D80
	pop {r4, pc}

	thumb_func_start MOD05_021F1D68
MOD05_021F1D68: ; 0x021F1D68
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x51
	mov r1, #4
	bl FUN_02006670
	add r1, r0, #0
	add r0, r4, #0
	bl FUN_020583F0
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F1D80
MOD05_021F1D80: ; 0x021F1D80
	push {r3, lr}
	bl FUN_020583F4
	bl FUN_020066F4
	pop {r3, pc}

	thumb_func_start MOD05_021F1D8C
MOD05_021F1D8C: ; 0x021F1D8C
	push {r4, lr}
	add r4, r0, #0
	bl FUN_02058578
	mov r1, #4
	bl FUN_02058390
	cmp r0, #0
	bne _021F1DC6
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xe
	bl FUN_02058424
	cmp r0, #0
	beq _021F1DC6
	add r0, r4, #0
	bl FUN_02058920
	cmp r0, #0
	beq _021F1DC0
	add r0, r4, #0
	bl FUN_02058AB4
	cmp r0, #0
	beq _021F1DC6
_021F1DC0:
	add r0, r4, #0
	bl FUN_020586A0
_021F1DC6:
	pop {r4, pc}

	thumb_func_start MOD05_021F1DC8
MOD05_021F1DC8: ; 0x021F1DC8
	push {r3, lr}
	bl FUN_02058458
	bl MOD05_021F1DD4
	pop {r3, pc}

	thumb_func_start MOD05_021F1DD4
MOD05_021F1DD4: ; 0x021F1DD4
	push {r3, lr}
	ldr r3, _021F1DF4 ; =0x021F9A9C
	ldr r1, _021F1DF8 ; =0x0000FFFF
_021F1DDA:
	ldr r2, [r3]
	cmp r2, r0
	bne _021F1DE4
	add r0, r3, #0
	pop {r3, pc}
_021F1DE4:
	add r3, #8
	ldr r2, [r3]
	cmp r2, r1
	bne _021F1DDA
	bl ErrorHandling
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_021F1DF4: .word 0x021F9A9C
_021F1DF8: .word 0x0000FFFF

	thumb_func_start MOD05_021F1DFC
MOD05_021F1DFC: ; 0x021F1DFC
	push {r4, lr}
	add r4, r0, #0
	bl FUN_02058920
	cmp r0, #1
	bne _021F1E16
	add r0, r4, #0
	bl FUN_02058AB4
	cmp r0, #0
	bne _021F1E16
	mov r0, #1
	pop {r4, pc}
_021F1E16:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #8
	bl FUN_02058424
	cmp r0, #0
	beq _021F1E28
	mov r0, #1
	pop {r4, pc}
_021F1E28:
	mov r0, #0
	pop {r4, pc}

	thumb_func_start MOD05_021F1E2C
MOD05_021F1E2C: ; 0x021F1E2C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r2, #0
	bl FUN_020583F4
	add r1, r4, #0
	add r6, r0, #0
	bl FUN_020067D0
	add r1, r0, #0
	cmp r5, #1
	bne _021F1E4C
	mov r0, #4
	bl FUN_02016998
	b _021F1E52
_021F1E4C:
	mov r0, #4
	bl FUN_020169D8
_021F1E52:
	add r5, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl FUN_02006774
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F1E64
MOD05_021F1E64: ; 0x021F1E64
	push {r3, r4, r5, lr}
	sub sp, #0x30
	add r4, r1, #0
	add r5, r0, #0
	add r1, sp, #0x24
	bl FUN_02058B5C
	add r0, r5, #0
	add r1, sp, #0x18
	bl FUN_02058B84
	add r0, r5, #0
	add r1, sp, #0xc
	bl FUN_02058BA4
	add r0, r5, #0
	add r1, sp, #0
	bl FUN_02058BC4
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0xc]
	add r0, r1, r0
	ldr r3, [sp]
	add r0, r2, r0
	add r0, r3, r0
	str r0, [r4]
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x10]
	add r0, r1, r0
	ldr r3, [sp, #4]
	add r0, r2, r0
	add r0, r3, r0
	str r0, [r4, #4]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x14]
	add r0, r1, r0
	ldr r3, [sp, #8]
	add r0, r2, r0
	add r0, r3, r0
	str r0, [r4, #8]
	add sp, #0x30
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F1EC0
MOD05_021F1EC0: ; 0x021F1EC0
	push {r4, lr}
	add r4, r0, #0
	bl FUN_020584AC
	add r0, r4, #0
	bl FUN_02058884
	cmp r0, #1
	bne _021F1ED8
	add r0, r4, #0
	bl FUN_020586A0
_021F1ED8:
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F1EDC
MOD05_021F1EDC: ; 0x021F1EDC
	push {r4, lr}
	mov r1, #1
	add r4, r0, #0
	bl FUN_0205889C
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0x14
	bl FUN_02058410
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F1EF4
MOD05_021F1EF4: ; 0x021F1EF4
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021F1EF8
MOD05_021F1EF8: ; 0x021F1EF8
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021F1EFC
MOD05_021F1EFC: ; 0x021F1EFC
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021F1F00
MOD05_021F1F00: ; 0x021F1F00
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021F1F04
MOD05_021F1F04: ; 0x021F1F04
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r2, #0
	mov r2, #0x41
	add r5, r0, #0
	lsl r2, r2, #2
	str r1, [r5, r2]
	add r1, r4, #0
	bl MOD05_021F2E40
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0xa
	bl MOD05_021F33B4
	mov r2, #4
	mov r1, #8
	ldr r0, [sp, #0x18]
	str r2, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	add r3, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	bl MOD05_021F22E0
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F2160
	ldr r1, [sp, #0x20]
	ldr r2, _021F1F50 ; =0x021F8B90
	ldr r3, _021F1F54 ; =0x021F8B88
	add r0, r5, #0
	bl MOD05_021F25A0
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_021F1F50: .word 0x021F8B90
_021F1F54: .word 0x021F8B88

	thumb_func_start MOD05_021F1F58
MOD05_021F1F58: ; 0x021F1F58
	push {r4, lr}
	add r4, r0, #0
	bl MOD05_021F3458
	add r0, r4, #0
	bl MOD05_021F21AC
	add r0, r4, #0
	bl MOD05_021F2D48
	bl MOD05_021F2E68
	add r0, r4, #0
	bl MOD05_021F2368
	pop {r4, pc}

	thumb_func_start MOD05_021F1F78
MOD05_021F1F78: ; 0x021F1F78
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0
	add r6, r2, #0
	add r7, r0, #0
	str r1, [r5]
	bl MOD05_021F2F3C
	add r1, r6, #0
	str r0, [sp]
	bl MOD05_021F28E8
	add r4, r0, #0
	bne _021F1FA2
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	bl MOD05_021F211C
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F1FA2:
	sub r0, r4, #3
	cmp r0, #1
	bhi _021F1FB8
	ldr r0, [sp]
	add r1, r7, #0
	add r2, r5, #0
	add r3, r6, #0
	bl MOD05_021F32BC
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F1FB8:
	add r0, r7, #0
	add r1, r6, #0
	bl MOD05_021F1FE0
	str r0, [r5]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F1FC8
MOD05_021F1FC8: ; 0x021F1FC8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl FUN_02058458
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F1F78
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F1FE0
MOD05_021F1FE0: ; 0x021F1FE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r5, r1, #0
	bl MOD05_021F2F3C
	add r4, r0, #0
	bl MOD05_021F2D48
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021F2AC8
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021F21CC
	add r4, r0, #0
	bne _021F200C
	bl ErrorHandling
_021F200C:
	add r0, r6, #0
	add r1, sp, #0
	bl MOD05_021F1E64
	add r0, r7, #0
	add r1, r4, #0
	add r2, sp, #0
	bl MOD05_021F2E70
	add r4, r0, #0
	bne _021F2026
	bl ErrorHandling
_021F2026:
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021F202C
MOD05_021F202C: ; 0x021F202C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	add r6, r2, #0
	bl FUN_0201F744
	mov r0, #0
	str r0, [r4]
	add r0, r5, #0
	bl FUN_02058578
	add r1, r5, #0
	add r2, r6, #0
	bl MOD05_021F2284
	cmp r0, #0
	bne _021F205C
	add r0, r5, #0
	bl MOD05_021F2F3C
	add r1, r6, #0
	bl MOD05_021F2240
_021F205C:
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F2060
MOD05_021F2060: ; 0x021F2060
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl MOD05_021F2150
	ldr r0, [r4]
	cmp r0, #0
	beq _021F2092
	add r0, r5, #0
	bl FUN_02058458
	add r6, r0, #0
	bl FUN_0205C334
	cmp r0, #1
	bne _021F2088
	add r0, r5, #0
	bl FUN_0205C340
	add r6, r0, #0
_021F2088:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl MOD05_021F202C
_021F2092:
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021F2094
MOD05_021F2094: ; 0x021F2094
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	bl MOD05_021F2150
	ldr r0, [r5]
	cmp r0, #0
	beq _021F20AE
	bl FUN_0201F744
	mov r0, #0
	str r0, [r5]
_021F20AE:
	ldr r0, _021F20D4 ; =0x0000FFFF
	cmp r4, r0
	beq _021F20D2
	add r0, r6, #0
	bl FUN_02058578
	add r1, r6, #0
	add r2, r4, #0
	bl MOD05_021F2284
	cmp r0, #0
	bne _021F20D2
	add r0, r6, #0
	bl MOD05_021F2F3C
	add r1, r4, #0
	bl MOD05_021F2240
_021F20D2:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F20D4: .word 0x0000FFFF

	thumb_func_start MOD05_021F20D8
MOD05_021F20D8: ; 0x021F20D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl FUN_0201F820
	str r0, [r4]
	add r0, r5, #0
	bl FUN_0201F844
	strh r0, [r4, #6]
	add r0, r5, #0
	bl FUN_0201F880
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F20F8
MOD05_021F20F8: ; 0x021F20F8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4]
	add r5, r0, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl FUN_0201F80C
	ldrh r1, [r4, #6]
	add r0, r5, #0
	bl FUN_0201F830
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl FUN_0201F86C
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F211C
MOD05_021F211C: ; 0x021F211C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	bl MOD05_021F2F3C
	add r1, r4, #0
	add r7, r0, #0
	bl MOD05_021F2460
	cmp r0, #0
	bne _021F2140
	add r0, r6, #0
	add r1, r4, #0
	bl MOD05_021F1FE0
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021F2140:
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	add r3, r4, #0
	bl MOD05_021F32BC
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F2150
MOD05_021F2150: ; 0x021F2150
	push {r4, lr}
	add r4, r0, #0
	bl MOD05_021F2F3C
	add r1, r4, #0
	bl MOD05_021F32F8
	pop {r4, pc}

	thumb_func_start MOD05_021F2160
MOD05_021F2160: ; 0x021F2160
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0x28
	add r7, r0, #0
	mov r0, #4
	mul r1, r6
	bl FUN_02016998
	add r4, r0, #0
	add r0, r7, #0
	add r0, #0xe4
	str r4, [r0]
	cmp r4, #0
	bne _021F2180
	bl ErrorHandling
_021F2180:
	mov r0, #4
	lsl r1, r6, #3
	bl FUN_02016998
	add r5, r0, #0
	add r7, #0xf4
	str r5, [r7]
	cmp r5, #0
	bne _021F2196
	bl ErrorHandling
_021F2196:
	ldr r0, _021F21A8 ; =0x0000FFFF
_021F2198:
	str r0, [r5]
	str r4, [r5, #4]
	add r5, #8
	add r4, #0x28
	sub r6, r6, #1
	bne _021F2198
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F21A8: .word 0x0000FFFF

	thumb_func_start MOD05_021F21AC
MOD05_021F21AC: ; 0x021F21AC
	push {r4, lr}
	add r4, r0, #0
	bl MOD05_021F2260
	add r1, r4, #0
	add r1, #0xe4
	ldr r1, [r1]
	mov r0, #4
	bl FUN_02016A8C
	add r4, #0xf4
	ldr r1, [r4]
	mov r0, #4
	bl FUN_02016A8C
	pop {r4, pc}

	thumb_func_start MOD05_021F21CC
MOD05_021F21CC: ; 0x021F21CC
	push {r4, r5, r6, lr}
	add r2, r0, #0
	add r2, #0xf4
	ldr r4, [r2]
	ldr r2, [r0, #4]
	add r6, r4, #0
	add r5, r2, #0
_021F21DA:
	ldr r3, [r6]
	cmp r3, r1
	bne _021F21E4
	ldr r0, [r6, #4]
	pop {r4, r5, r6, pc}
_021F21E4:
	add r6, #8
	sub r5, r5, #1
	bne _021F21DA
	ldr r3, _021F2208 ; =0x0000FFFF
_021F21EC:
	ldr r5, [r4]
	cmp r5, r3
	bne _021F21FE
	str r1, [r4]
	ldr r2, [r4, #4]
	bl MOD05_021F2ED0
	ldr r0, [r4, #4]
	pop {r4, r5, r6, pc}
_021F21FE:
	add r4, #8
	sub r2, r2, #1
	bne _021F21EC
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F2208: .word 0x0000FFFF

	thumb_func_start MOD05_021F220C
MOD05_021F220C: ; 0x021F220C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl FUN_020583A0
	add r1, r0, #0
	add r1, #0xf4
	ldr r2, [r1]
	ldr r1, [r0, #4]
_021F221E:
	ldr r0, [r2]
	cmp r0, r5
	bne _021F2234
	ldr r3, [r2, #4]
	mov r2, #5
_021F2228:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _021F2228
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F2234:
	add r2, #8
	sub r1, r1, #1
	bne _021F221E
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F2240
MOD05_021F2240: ; 0x021F2240
	add r2, r0, #0
	add r2, #0xf4
	ldr r3, [r2]
	ldr r2, [r0, #4]
_021F2248:
	ldr r0, [r3]
	cmp r0, r1
	bne _021F2254
	ldr r0, _021F225C ; =0x0000FFFF
	str r0, [r3]
	bx lr
_021F2254:
	add r3, #8
	sub r2, r2, #1
	bne _021F2248
	bx lr
	.balign 4, 0
_021F225C: .word 0x0000FFFF

	thumb_func_start MOD05_021F2260
MOD05_021F2260: ; 0x021F2260
	push {r3, r4}
	add r1, r0, #0
	add r1, #0xf4
	ldr r4, [r1]
	ldr r1, _021F2280 ; =0x0000FFFF
	ldr r3, [r0, #4]
	add r0, r1, #0
_021F226E:
	ldr r2, [r4]
	cmp r2, r0
	beq _021F2276
	str r1, [r4]
_021F2276:
	add r4, #8
	sub r3, r3, #1
	bne _021F226E
	pop {r3, r4}
	bx lr
	.balign 4, 0
_021F2280: .word 0x0000FFFF

	thumb_func_start MOD05_021F2284
MOD05_021F2284: ; 0x021F2284
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl FUN_02058368
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_020583BC
	str r0, [sp]
_021F229A:
	ldr r0, [sp]
	cmp r0, r6
	beq _021F22CE
	bl FUN_02058830
	cmp r0, #1
	bne _021F22CE
	ldr r0, [sp]
	bl FUN_02058458
	add r5, r0, #0
	bl FUN_0205C334
	cmp r0, #1
	bne _021F22C0
	ldr r0, [sp]
	bl FUN_0205C340
	add r5, r0, #0
_021F22C0:
	ldr r0, _021F22DC ; =0x0000FFFF
	cmp r5, r0
	beq _021F22CE
	cmp r5, r7
	bne _021F22CE
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F22CE:
	add r0, sp, #0
	bl FUN_020583D4
	sub r4, r4, #1
	bne _021F229A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F22DC: .word 0x0000FFFF

	thumb_func_start MOD05_021F22E0
MOD05_021F22E0: ; 0x021F22E0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	mov r0, #4
	mov r1, #0x40
	lsl r2, r4, #0xc
	add r3, r4, #0
	bl MOD05_021F5990
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1]
	add r0, r5, #0
	bl MOD05_021F2614
	add r0, r5, #0
	add r1, r6, #0
	bl MOD05_021F2D80
	add r0, r5, #0
	sub r1, r4, r6
	bl MOD05_021F2D88
	mov r0, #4
	mov r1, #0x41
	lsl r2, r7, #7
	add r3, r7, #0
	bl MOD05_021F5990
	add r1, r5, #0
	add r1, #0xfc
	str r0, [r1]
	add r0, r5, #0
	bl MOD05_021F2750
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	bl MOD05_021F2D90
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	sub r1, r7, r1
	bl MOD05_021F2D98
	ldr r0, [sp, #0x1c]
	mov r1, #4
	bl FUN_02020E90
	add r1, r0, #0
	add r0, r5, #0
	bl MOD05_021F2D64
	add r0, r5, #0
	bl MOD05_021F288C
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	bl MOD05_021F2DA0
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	sub r1, r2, r1
	bl MOD05_021F2DA8
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021F2368
MOD05_021F2368: ; 0x021F2368
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl MOD05_021F59EC
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	bl MOD05_021F59EC
	add r0, r4, #0
	bl MOD05_021F2D6C
	bl FUN_02020ED4
	pop {r4, pc}
	.balign 4, 0
_021F238C:
	ldr r3, [r2]
	cmp r3, r0
	bne _021F2396
	add r0, r2, #0
	bx lr
_021F2396:
	add r2, #8
	ldr r3, [r2]
	cmp r3, r1
	bne _021F238C
	mov r0, #0
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021F23A4
MOD05_021F23A4: ; 0x021F23A4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r2, #0
	add r5, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	add r7, r3, #0
	bl MOD05_021F5AA4
	cmp r0, #1
	bne _021F23BE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F23BE:
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	add r1, r7, #0
	bl _021F238C
	add r7, r0, #0
	bne _021F23D0
	bl ErrorHandling
_021F23D0:
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_020583F4
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r3, [r7, #4]
	add r0, r6, #0
	add r1, r4, #0
	bl MOD05_021F5AE4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F23F0
MOD05_021F23F0: ; 0x021F23F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0xf0
	add r4, r2, #0
	add r6, r1, #0
	ldr r0, [r0]
	add r1, r4, #0
	add r7, r3, #0
	bl FUN_02020EF8
	cmp r0, #0
	bne _021F240C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F240C:
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F3084
	cmp r0, #0
	beq _021F241C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F241C:
	ldr r1, _021F2448 ; =0x0000FFFF
	add r0, r4, #0
	add r2, r7, #0
	bl _021F238C
	add r2, r0, #0
	bne _021F242E
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021F242E:
	ldr r2, [r2, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r6, #0
	bl MOD05_021F2FD0
	cmp r0, #1
	bne _021F2442
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F2442:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F2448: .word 0x0000FFFF

	thumb_func_start MOD05_021F244C
MOD05_021F244C: ; 0x021F244C
	push {r3, lr}
	ldr r3, _021F245C ; =0x021FA0AC
	add r2, r1, #0
	mov r1, #0
	bl MOD05_021F23F0
	pop {r3, pc}
	nop
_021F245C: .word 0x021FA0AC

	thumb_func_start MOD05_021F2460
MOD05_021F2460: ; 0x021F2460
	push {r3, lr}
	ldr r3, _021F2470 ; =0x021FA0AC
	add r2, r1, #0
	mov r1, #1
	bl MOD05_021F23F0
	pop {r3, pc}
	nop
_021F2470: .word 0x021FA0AC

	thumb_func_start MOD05_021F2474
MOD05_021F2474: ; 0x021F2474
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, [r4]
	ldr r0, _021F2494 ; =0x0000FFFF
	cmp r1, r0
	beq _021F2492
	add r6, r0, #0
_021F2484:
	add r0, r5, #0
	bl MOD05_021F244C
	add r4, r4, #4
	ldr r1, [r4]
	cmp r1, r6
	bne _021F2484
_021F2492:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F2494: .word 0x0000FFFF

	thumb_func_start MOD05_021F2498
MOD05_021F2498: ; 0x021F2498
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl MOD05_021F2D54
	ldr r0, _021F24C0 ; =0x021F9094
	add r1, r5, #0
	str r0, [sp]
	add r1, #0xf8
	ldr r1, [r1]
	ldr r3, _021F24C4 ; =0x0000FFFF
	add r0, r5, #0
	add r2, r4, #0
	bl MOD05_021F23A4
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F2628
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F24C0: .word 0x021F9094
_021F24C4: .word 0x0000FFFF

	thumb_func_start MOD05_021F24C8
MOD05_021F24C8: ; 0x021F24C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl MOD05_021F2D54
	ldr r0, _021F24F0 ; =0x021F9094
	add r1, r5, #0
	str r0, [sp]
	add r1, #0xf8
	ldr r1, [r1]
	ldr r3, _021F24F4 ; =0x0000FFFF
	add r0, r5, #0
	add r2, r4, #0
	bl MOD05_021F23A4
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F2670
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F24F0: .word 0x021F9094
_021F24F4: .word 0x0000FFFF

	thumb_func_start MOD05_021F24F8
MOD05_021F24F8: ; 0x021F24F8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, [r4]
	ldr r0, _021F2518 ; =0x0000FFFF
	cmp r1, r0
	beq _021F2516
	add r6, r0, #0
_021F2508:
	add r0, r5, #0
	bl MOD05_021F2498
	add r4, r4, #4
	ldr r1, [r4]
	cmp r1, r6
	bne _021F2508
_021F2516:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F2518: .word 0x0000FFFF

	thumb_func_start MOD05_021F251C
MOD05_021F251C: ; 0x021F251C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl MOD05_021F2D5C
	ldr r0, _021F2544 ; =0x021F90E4
	add r1, r5, #0
	str r0, [sp]
	add r1, #0xfc
	ldr r1, [r1]
	ldr r3, _021F2548 ; =0x0000FFFF
	add r0, r5, #0
	add r2, r4, #0
	bl MOD05_021F23A4
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F2764
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F2544: .word 0x021F90E4
_021F2548: .word 0x0000FFFF

	thumb_func_start MOD05_021F254C
MOD05_021F254C: ; 0x021F254C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl MOD05_021F2D5C
	ldr r0, _021F2574 ; =0x021F90E4
	add r1, r5, #0
	str r0, [sp]
	add r1, #0xfc
	ldr r1, [r1]
	ldr r3, _021F2578 ; =0x0000FFFF
	add r0, r5, #0
	add r2, r4, #0
	bl MOD05_021F23A4
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F27AC
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F2574: .word 0x021F90E4
_021F2578: .word 0x0000FFFF

	thumb_func_start MOD05_021F257C
MOD05_021F257C: ; 0x021F257C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, [r4]
	ldr r0, _021F259C ; =0x0000FFFF
	cmp r1, r0
	beq _021F259A
	add r6, r0, #0
_021F258C:
	add r0, r5, #0
	bl MOD05_021F251C
	add r4, r4, #4
	ldr r1, [r4]
	cmp r1, r6
	bne _021F258C
_021F259A:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F259C: .word 0x0000FFFF

	thumb_func_start MOD05_021F25A0
MOD05_021F25A0: ; 0x021F25A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl MOD05_021F2474
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F24F8
	add r0, r5, #0
	add r1, r6, #0
	bl MOD05_021F257C
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F25C0:
	stmia r0!, {r1}
	sub r2, r2, #1
	bne _021F25C0
	bx lr

	thumb_func_start MOD05_021F25C8
MOD05_021F25C8: ; 0x021F25C8
	push {r3, r4}
_021F25CA:
	ldr r4, [r0]
	cmp r4, r2
	bne _021F25D8
	str r1, [r0]
	mov r0, #1
	pop {r3, r4}
	bx lr
_021F25D8:
	add r0, r0, #4
	sub r3, r3, #1
	bne _021F25CA
	mov r0, #0
	pop {r3, r4}
	bx lr
_021F25E4:
	ldr r3, [r0]
	cmp r3, r1
	bne _021F25EE
	mov r0, #1
	bx lr
_021F25EE:
	add r0, r0, #4
	sub r2, r2, #1
	bne _021F25E4
	mov r0, #0
	bx lr

	thumb_func_start MOD05_021F25F8
MOD05_021F25F8: ; 0x021F25F8
	push {r3, r4}
_021F25FA:
	ldr r4, [r0]
	cmp r4, r1
	bne _021F2608
	str r2, [r0]
	mov r0, #1
	pop {r3, r4}
	bx lr
_021F2608:
	add r0, r0, #4
	sub r3, r3, #1
	bne _021F25FA
	mov r0, #0
	pop {r3, r4}
	bx lr

	thumb_func_start MOD05_021F2614
MOD05_021F2614: ; 0x021F2614
	push {r3, lr}
	bl MOD05_021F2D78
	ldr r1, _021F2624 ; =0x0000FFFF
	mov r2, #8
	bl _021F25C0
	pop {r3, pc}
	.balign 4, 0
_021F2624: .word 0x0000FFFF

	thumb_func_start MOD05_021F2628
MOD05_021F2628: ; 0x021F2628
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl MOD05_021F2D84
	add r6, r0, #0
	add r0, r5, #0
	bl MOD05_021F2D78
	ldr r2, _021F2650 ; =0x0000FFFF
	add r1, r4, #0
	add r3, r6, #0
	bl MOD05_021F25C8
	cmp r0, #0
	bne _021F264C
	bl ErrorHandling
_021F264C:
	pop {r4, r5, r6, pc}
	nop
_021F2650: .word 0x0000FFFF

	thumb_func_start MOD05_021F2654
MOD05_021F2654: ; 0x021F2654
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl MOD05_021F2D84
	add r6, r0, #0
	add r0, r5, #0
	bl MOD05_021F2D78
	add r1, r4, #0
	add r2, r6, #0
	bl _021F25E4
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021F2670
MOD05_021F2670: ; 0x021F2670
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl MOD05_021F2D78
	add r6, r0, #0
	add r0, r5, #0
	bl MOD05_021F2D84
	lsl r4, r0, #2
	add r0, r5, #0
	bl MOD05_021F2D8C
	add r3, r0, #0
	ldr r2, _021F26A0 ; =0x0000FFFF
	add r0, r6, r4
	add r1, r7, #0
	bl MOD05_021F25C8
	cmp r0, #0
	bne _021F269E
	bl ErrorHandling
_021F269E:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F26A0: .word 0x0000FFFF

	thumb_func_start MOD05_021F26A4
MOD05_021F26A4: ; 0x021F26A4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl MOD05_021F2D78
	add r6, r0, #0
	add r0, r5, #0
	bl MOD05_021F2D84
	lsl r4, r0, #2
	add r0, r5, #0
	bl MOD05_021F2D8C
	add r2, r0, #0
	add r0, r6, r4
	add r1, r7, #0
	bl _021F25E4
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F26CC
MOD05_021F26CC: ; 0x021F26CC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl MOD05_021F2D78
	add r6, r0, #0
	add r0, r5, #0
	bl MOD05_021F2D84
	lsl r4, r0, #2
	add r0, r5, #0
	bl MOD05_021F2D8C
	add r3, r0, #0
	ldr r2, _021F26F4 ; =0x0000FFFF
	add r0, r6, r4
	add r1, r7, #0
	bl MOD05_021F25F8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F26F4: .word 0x0000FFFF

	thumb_func_start MOD05_021F26F8
MOD05_021F26F8: ; 0x021F26F8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	add r0, r6, #0
	bl MOD05_021F2D54
	add r0, r6, #0
	bl MOD05_021F2D78
	add r4, r0, #0
	add r0, r6, #0
	bl MOD05_021F2D84
	lsl r0, r0, #2
	add r5, r4, r0
	add r0, r6, #0
	bl MOD05_021F2D8C
	add r4, r0, #0
_021F271E:
	ldr r1, [r5]
	ldr r0, _021F274C ; =0x0000FFFF
	cmp r1, r0
	beq _021F2742
	add r0, r7, #0
	mov r2, #0
	bl MOD05_021F2B70
	cmp r0, #0
	bne _021F2742
	add r0, r6, #0
	add r0, #0xf8
	ldr r0, [r0]
	ldr r1, [r5]
	bl MOD05_021F5A74
	ldr r0, _021F274C ; =0x0000FFFF
	str r0, [r5]
_021F2742:
	add r5, r5, #4
	sub r4, r4, #1
	bne _021F271E
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F274C: .word 0x0000FFFF

	thumb_func_start MOD05_021F2750
MOD05_021F2750: ; 0x021F2750
	push {r3, lr}
	bl MOD05_021F2D7C
	ldr r1, _021F2760 ; =0x0000FFFF
	mov r2, #8
	bl _021F25C0
	pop {r3, pc}
	.balign 4, 0
_021F2760: .word 0x0000FFFF

	thumb_func_start MOD05_021F2764
MOD05_021F2764: ; 0x021F2764
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl MOD05_021F2D94
	add r6, r0, #0
	add r0, r5, #0
	bl MOD05_021F2D7C
	ldr r2, _021F278C ; =0x0000FFFF
	add r1, r4, #0
	add r3, r6, #0
	bl MOD05_021F25C8
	cmp r0, #0
	bne _021F2788
	bl ErrorHandling
_021F2788:
	pop {r4, r5, r6, pc}
	nop
_021F278C: .word 0x0000FFFF

	thumb_func_start MOD05_021F2790
MOD05_021F2790: ; 0x021F2790
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl MOD05_021F2D94
	add r6, r0, #0
	add r0, r5, #0
	bl MOD05_021F2D7C
	add r1, r4, #0
	add r2, r6, #0
	bl _021F25E4
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021F27AC
MOD05_021F27AC: ; 0x021F27AC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl MOD05_021F2D7C
	add r6, r0, #0
	add r0, r5, #0
	bl MOD05_021F2D94
	lsl r4, r0, #2
	add r0, r5, #0
	bl MOD05_021F2D9C
	add r3, r0, #0
	ldr r2, _021F27DC ; =0x0000FFFF
	add r0, r6, r4
	add r1, r7, #0
	bl MOD05_021F25C8
	cmp r0, #0
	bne _021F27DA
	bl ErrorHandling
_021F27DA:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F27DC: .word 0x0000FFFF

	thumb_func_start MOD05_021F27E0
MOD05_021F27E0: ; 0x021F27E0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl MOD05_021F2D7C
	add r6, r0, #0
	add r0, r5, #0
	bl MOD05_021F2D94
	lsl r4, r0, #2
	add r0, r5, #0
	bl MOD05_021F2D9C
	add r2, r0, #0
	add r0, r6, r4
	add r1, r7, #0
	bl _021F25E4
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F2808
MOD05_021F2808: ; 0x021F2808
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl MOD05_021F2D7C
	add r6, r0, #0
	add r0, r5, #0
	bl MOD05_021F2D94
	lsl r4, r0, #2
	add r0, r5, #0
	bl MOD05_021F2D9C
	add r3, r0, #0
	ldr r2, _021F2830 ; =0x0000FFFF
	add r0, r6, r4
	add r1, r7, #0
	bl MOD05_021F25F8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F2830: .word 0x0000FFFF

	thumb_func_start MOD05_021F2834
MOD05_021F2834: ; 0x021F2834
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	add r0, r6, #0
	bl MOD05_021F2D5C
	add r0, r6, #0
	bl MOD05_021F2D7C
	add r4, r0, #0
	add r0, r6, #0
	bl MOD05_021F2D94
	lsl r0, r0, #2
	add r5, r4, r0
	add r0, r6, #0
	bl MOD05_021F2D9C
	add r4, r0, #0
_021F285A:
	ldr r1, [r5]
	ldr r0, _021F2888 ; =0x0000FFFF
	cmp r1, r0
	beq _021F287E
	add r0, r7, #0
	mov r2, #0
	bl MOD05_021F2BF8
	cmp r0, #0
	bne _021F287E
	add r0, r6, #0
	add r0, #0xfc
	ldr r0, [r0]
	ldr r1, [r5]
	bl MOD05_021F5A74
	ldr r0, _021F2888 ; =0x0000FFFF
	str r0, [r5]
_021F287E:
	add r5, r5, #4
	sub r4, r4, #1
	bne _021F285A
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F2888: .word 0x0000FFFF

	thumb_func_start MOD05_021F288C
MOD05_021F288C: ; 0x021F288C
	push {r3, lr}
	bl MOD05_021F2D74
	ldr r1, _021F289C ; =0x0000FFFF
	mov r2, #0x20
	bl _021F25C0
	pop {r3, pc}
	.balign 4, 0
_021F289C: .word 0x0000FFFF

	thumb_func_start MOD05_021F28A0
MOD05_021F28A0: ; 0x021F28A0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl MOD05_021F2DA4
	add r6, r0, #0
	add r0, r5, #0
	bl MOD05_021F2D74
	ldr r2, _021F28C8 ; =0x0000FFFF
	add r1, r4, #0
	add r3, r6, #0
	bl MOD05_021F25C8
	cmp r0, #0
	bne _021F28C4
	bl ErrorHandling
_021F28C4:
	pop {r4, r5, r6, pc}
	nop
_021F28C8: .word 0x0000FFFF

	thumb_func_start MOD05_021F28CC
MOD05_021F28CC: ; 0x021F28CC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl MOD05_021F2DA4
	add r6, r0, #0
	add r0, r5, #0
	bl MOD05_021F2D74
	add r1, r4, #0
	add r2, r6, #0
	bl _021F25E4
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021F28E8
MOD05_021F28E8: ; 0x021F28E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl MOD05_021F28CC
	cmp r0, #1
	bne _021F28FA
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F28FA:
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F29E0
	cmp r0, #1
	bne _021F290A
	mov r0, #2
	pop {r3, r4, r5, pc}
_021F290A:
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F3084
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021F2914
MOD05_021F2914: ; 0x021F2914
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl MOD05_021F2D74
	add r6, r0, #0
	add r0, r5, #0
	bl MOD05_021F2DA4
	lsl r4, r0, #2
	add r0, r5, #0
	bl MOD05_021F2DAC
	add r3, r0, #0
	ldr r2, _021F2944 ; =0x0000FFFF
	add r0, r6, r4
	add r1, r7, #0
	bl MOD05_021F25C8
	cmp r0, #0
	bne _021F2942
	bl ErrorHandling
_021F2942:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F2944: .word 0x0000FFFF

	thumb_func_start MOD05_021F2948
MOD05_021F2948: ; 0x021F2948
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl MOD05_021F2D74
	add r6, r0, #0
	add r0, r5, #0
	bl MOD05_021F2DA4
	lsl r4, r0, #2
	add r0, r5, #0
	bl MOD05_021F2DAC
	add r3, r0, #0
	ldr r2, _021F2970 ; =0x0000FFFF
	add r0, r6, r4
	add r1, r7, #0
	bl MOD05_021F25F8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F2970: .word 0x0000FFFF

	thumb_func_start MOD05_021F2974
MOD05_021F2974: ; 0x021F2974
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	str r0, [sp]
	add r0, r6, #0
	bl MOD05_021F2D6C
	str r0, [sp, #4]
	add r0, r6, #0
	bl MOD05_021F2D74
	add r4, r0, #0
	add r0, r6, #0
	bl MOD05_021F2DA4
	lsl r0, r0, #2
	add r5, r4, r0
	add r0, r6, #0
	bl MOD05_021F2DAC
	add r7, r0, #0
_021F299E:
	ldr r4, [r5]
	ldr r0, _021F29DC ; =0x0000FFFF
	cmp r4, r0
	beq _021F29D0
	ldr r0, [sp]
	add r1, r4, #0
	mov r2, #0
	bl MOD05_021F2B10
	cmp r0, #0
	bne _021F29D0
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl FUN_02020FF0
	add r0, r6, #0
	add r1, r4, #0
	bl MOD05_021F3050
	add r0, r6, #0
	add r1, r4, #0
	bl MOD05_021F3204
	ldr r0, _021F29DC ; =0x0000FFFF
	str r0, [r5]
_021F29D0:
	add r5, r5, #4
	sub r7, r7, #1
	bne _021F299E
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F29DC: .word 0x0000FFFF

	thumb_func_start MOD05_021F29E0
MOD05_021F29E0: ; 0x021F29E0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl MOD05_021F2D74
	add r6, r0, #0
	add r0, r5, #0
	bl MOD05_021F2DA4
	lsl r4, r0, #2
	add r0, r5, #0
	bl MOD05_021F2DAC
	add r2, r0, #0
	add r0, r6, r4
	add r1, r7, #0
	bl _021F25E4
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F2A08
MOD05_021F2A08: ; 0x021F2A08
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl MOD05_021F28CC
	cmp r0, #1
	bne _021F2A1A
	mov r0, #0
	pop {r3, r4, r5, pc}
_021F2A1A:
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F29E0
	cmp r0, #1
	bne _021F2A2A
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F2A2A:
	mov r0, #2
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F2A30
MOD05_021F2A30: ; 0x021F2A30
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl MOD05_021F2654
	cmp r0, #1
	bne _021F2A42
	mov r0, #0
	pop {r3, r4, r5, pc}
_021F2A42:
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F26A4
	cmp r0, #1
	bne _021F2A52
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F2A52:
	mov r0, #2
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F2A58
MOD05_021F2A58: ; 0x021F2A58
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl MOD05_021F2790
	cmp r0, #1
	bne _021F2A6A
	mov r0, #0
	pop {r3, r4, r5, pc}
_021F2A6A:
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F27E0
	cmp r0, #1
	bne _021F2A7A
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F2A7A:
	mov r0, #2
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F2A80
MOD05_021F2A80: ; 0x021F2A80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl MOD05_021F28E8
	cmp r0, #0
	bne _021F2A96
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F2460
_021F2A96:
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021F2A98
MOD05_021F2A98: ; 0x021F2A98
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl MOD05_021F2A30
	cmp r0, #2
	bne _021F2AAE
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F24C8
_021F2AAE:
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021F2AB0
MOD05_021F2AB0: ; 0x021F2AB0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl MOD05_021F2A58
	cmp r0, #2
	bne _021F2AC6
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F254C
_021F2AC6:
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021F2AC8
MOD05_021F2AC8: ; 0x021F2AC8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl MOD05_021F2DE8
	add r1, r0, #0
	add r0, r5, #0
	bl MOD05_021F2A98
	add r0, r4, #0
	bl MOD05_021F2DF4
	add r1, r0, #0
	add r0, r5, #0
	bl MOD05_021F2AB0
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F2A80
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021F2AF4
MOD05_021F2AF4: ; 0x021F2AF4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl MOD05_021F26F8
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F2834
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F2974
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021F2B10
MOD05_021F2B10: ; 0x021F2B10
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	mov r1, #0
	add r5, r2, #0
	str r1, [sp, #4]
	str r1, [sp]
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	add r7, r0, #0
	bl FUN_020580F4
	cmp r0, #1
	bne _021F2B6A
_021F2B2E:
	cmp r5, #0
	beq _021F2B38
	ldr r0, [sp]
	cmp r5, r0
	beq _021F2B5A
_021F2B38:
	ldr r0, [sp]
	bl FUN_02058458
	add r4, r0, #0
	bl FUN_0205C334
	cmp r0, #1
	bne _021F2B50
	ldr r0, [sp]
	bl FUN_0205C340
	add r4, r0, #0
_021F2B50:
	cmp r4, r6
	bne _021F2B5A
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F2B5A:
	add r0, r7, #0
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	bl FUN_020580F4
	cmp r0, #1
	beq _021F2B2E
_021F2B6A:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021F2B70
MOD05_021F2B70: ; 0x021F2B70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	mov r1, #0
	add r5, r2, #0
	str r1, [sp, #4]
	str r1, [sp]
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	add r7, r0, #0
	bl FUN_020580F4
	cmp r0, #1
	bne _021F2BEE
_021F2B8E:
	cmp r5, #0
	beq _021F2B98
	ldr r0, [sp]
	cmp r5, r0
	beq _021F2BDE
_021F2B98:
	ldr r0, [sp]
	bl FUN_02058458
	add r4, r0, #0
	ldr r0, _021F2BF4 ; =0x0000FFFF
	cmp r4, r0
	beq _021F2BDE
	ldr r0, [sp]
	bl MOD05_021F1DC8
	ldr r0, [r0, #4]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #1
	bne _021F2BDE
	add r0, r4, #0
	bl FUN_0205C334
	cmp r0, #1
	bne _021F2BC8
	ldr r0, [sp]
	bl FUN_0205C340
	add r4, r0, #0
_021F2BC8:
	ldr r0, _021F2BF4 ; =0x0000FFFF
	cmp r4, r0
	beq _021F2BDE
	add r0, r4, #0
	bl MOD05_021F2DE8
	cmp r6, r0
	bne _021F2BDE
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F2BDE:
	add r0, r7, #0
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	bl FUN_020580F4
	cmp r0, #1
	beq _021F2B8E
_021F2BEE:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F2BF4: .word 0x0000FFFF

	thumb_func_start MOD05_021F2BF8
MOD05_021F2BF8: ; 0x021F2BF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	mov r1, #0
	add r5, r2, #0
	str r1, [sp, #4]
	str r1, [sp]
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	add r7, r0, #0
	bl FUN_020580F4
	cmp r0, #1
	bne _021F2C74
_021F2C16:
	cmp r5, #0
	beq _021F2C20
	ldr r0, [sp]
	cmp r0, r5
	beq _021F2C64
_021F2C20:
	ldr r0, _021F2C7C ; =0x0000FFFF
	cmp r4, r0
	beq _021F2C64
	ldr r0, [sp]
	bl MOD05_021F1DC8
	ldr r0, [r0, #4]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #1
	bne _021F2C64
	ldr r0, [sp]
	bl FUN_02058458
	add r4, r0, #0
	bl FUN_0205C334
	cmp r0, #1
	bne _021F2C4E
	ldr r0, [sp]
	bl FUN_0205C340
	add r4, r0, #0
_021F2C4E:
	ldr r0, _021F2C7C ; =0x0000FFFF
	cmp r4, r0
	beq _021F2C64
	add r0, r4, #0
	bl MOD05_021F2DF4
	cmp r6, r0
	bne _021F2C64
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F2C64:
	add r0, r7, #0
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	bl FUN_020580F4
	cmp r0, #1
	beq _021F2C16
_021F2C74:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F2C7C: .word 0x0000FFFF

	thumb_func_start MOD05_021F2C80
MOD05_021F2C80: ; 0x021F2C80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	add r7, r2, #0
	bl FUN_020583A0
	add r4, r0, #0
	add r0, r5, #0
	bl MOD05_021F2DE8
	str r0, [sp]
	ldr r1, [sp]
	add r0, r4, #0
	bl MOD05_021F2A30
	cmp r0, #1
	bne _021F2CC6
	ldr r1, [sp]
	add r0, r6, #0
	add r2, r7, #0
	bl MOD05_021F2B70
	cmp r0, #0
	bne _021F2CC6
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0]
	ldr r1, [sp]
	bl MOD05_021F5A74
	ldr r1, [sp]
	add r0, r4, #0
	bl MOD05_021F26CC
_021F2CC6:
	add r0, r5, #0
	bl MOD05_021F2DF4
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl MOD05_021F2A58
	cmp r0, #1
	bne _021F2CFC
	ldr r1, [sp, #4]
	add r0, r6, #0
	add r2, r7, #0
	bl MOD05_021F2BF8
	cmp r0, #0
	bne _021F2CFC
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0]
	ldr r1, [sp, #4]
	bl MOD05_021F5A74
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl MOD05_021F2808
_021F2CFC:
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021F2A08
	cmp r0, #1
	bne _021F2D3A
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl MOD05_021F2B10
	cmp r0, #0
	bne _021F2D3A
	add r0, r4, #0
	bl MOD05_021F2D6C
	add r1, r5, #0
	bl FUN_02020FF0
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021F2948
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021F3050
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021F3204
_021F2D3A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F2D40
MOD05_021F2D40: ; 0x021F2D40
	add r0, #0xe0
	str r1, [r0]
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021F2D48
MOD05_021F2D48: ; 0x021F2D48
	add r0, #0xe0
	ldr r0, [r0]
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021F2D50
MOD05_021F2D50: ; 0x021F2D50
	str r1, [r0, #4]
	bx lr

	thumb_func_start MOD05_021F2D54
MOD05_021F2D54: ; 0x021F2D54
	add r0, #0xe8
	ldr r0, [r0]
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021F2D5C
MOD05_021F2D5C: ; 0x021F2D5C
	add r0, #0xec
	ldr r0, [r0]
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021F2D64
MOD05_021F2D64: ; 0x021F2D64
	add r0, #0xf0
	str r1, [r0]
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021F2D6C
MOD05_021F2D6C: ; 0x021F2D6C
	add r0, #0xf0
	ldr r0, [r0]
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021F2D74
MOD05_021F2D74: ; 0x021F2D74
	add r0, #0x60
	bx lr

	thumb_func_start MOD05_021F2D78
MOD05_021F2D78: ; 0x021F2D78
	add r0, #0x20
	bx lr

	thumb_func_start MOD05_021F2D7C
MOD05_021F2D7C: ; 0x021F2D7C
	add r0, #0x40
	bx lr

	thumb_func_start MOD05_021F2D80
MOD05_021F2D80: ; 0x021F2D80
	str r1, [r0, #8]
	bx lr

	thumb_func_start MOD05_021F2D84
MOD05_021F2D84: ; 0x021F2D84
	ldr r0, [r0, #8]
	bx lr

	thumb_func_start MOD05_021F2D88
MOD05_021F2D88: ; 0x021F2D88
	str r1, [r0, #0xc]
	bx lr

	thumb_func_start MOD05_021F2D8C
MOD05_021F2D8C: ; 0x021F2D8C
	ldr r0, [r0, #0xc]
	bx lr

	thumb_func_start MOD05_021F2D90
MOD05_021F2D90: ; 0x021F2D90
	str r1, [r0, #0x10]
	bx lr

	thumb_func_start MOD05_021F2D94
MOD05_021F2D94: ; 0x021F2D94
	ldr r0, [r0, #0x10]
	bx lr

	thumb_func_start MOD05_021F2D98
MOD05_021F2D98: ; 0x021F2D98
	str r1, [r0, #0x14]
	bx lr

	thumb_func_start MOD05_021F2D9C
MOD05_021F2D9C: ; 0x021F2D9C
	ldr r0, [r0, #0x14]
	bx lr

	thumb_func_start MOD05_021F2DA0
MOD05_021F2DA0: ; 0x021F2DA0
	str r1, [r0, #0x18]
	bx lr

	thumb_func_start MOD05_021F2DA4
MOD05_021F2DA4: ; 0x021F2DA4
	ldr r0, [r0, #0x18]
	bx lr

	thumb_func_start MOD05_021F2DA8
MOD05_021F2DA8: ; 0x021F2DA8
	str r1, [r0, #0x1c]
	bx lr

	thumb_func_start MOD05_021F2DAC
MOD05_021F2DAC: ; 0x021F2DAC
	ldr r0, [r0, #0x1c]
	bx lr

	thumb_func_start MOD05_021F2DB0
MOD05_021F2DB0: ; 0x021F2DB0
	mov r3, #0x41
	lsl r3, r3, #2
	ldr r0, [r0, r3]
	ldr r3, _021F2DBC ; =MOD05_021F1E2C
	bx r3
	nop
_021F2DBC: .word MOD05_021F1E2C

	thumb_func_start MOD05_021F2DC0
MOD05_021F2DC0: ; 0x021F2DC0
	push {r3, lr}
	ldr r3, _021F2DE0 ; =0x021FAC6C
	ldr r1, _021F2DE4 ; =0x0000FFFF
_021F2DC6:
	ldr r2, [r3]
	cmp r2, r0
	bne _021F2DD0
	add r0, r3, #0
	pop {r3, pc}
_021F2DD0:
	add r3, #0x10
	ldr r2, [r3]
	cmp r2, r1
	bne _021F2DC6
	bl ErrorHandling
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_021F2DE0: .word 0x021FAC6C
_021F2DE4: .word 0x0000FFFF

	thumb_func_start MOD05_021F2DE8
MOD05_021F2DE8: ; 0x021F2DE8
	push {r3, lr}
	bl MOD05_021F2DC0
	ldr r0, [r0, #4]
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F2DF4
MOD05_021F2DF4: ; 0x021F2DF4
	push {r3, lr}
	bl MOD05_021F2DC0
	ldr r0, [r0, #8]
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F2E00
MOD05_021F2E00: ; 0x021F2E00
	push {r3, lr}
	bl MOD05_021F2DC0
	ldr r0, [r0, #0xc]
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F2E0C
MOD05_021F2E0C: ; 0x021F2E0C
	push {r3, lr}
	cmp r1, #1
	bne _021F2E1C
	mov r1, #1
	lsl r1, r1, #0x16
	bl FUN_02058410
	pop {r3, pc}
_021F2E1C:
	mov r1, #1
	lsl r1, r1, #0x16
	bl FUN_02058418
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F2E28
MOD05_021F2E28: ; 0x021F2E28
	push {r3, lr}
	mov r1, #1
	lsl r1, r1, #0x16
	bl FUN_02058424
	cmp r0, #0
	beq _021F2E3A
	mov r0, #1
	pop {r3, pc}
_021F2E3A:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F2E40
MOD05_021F2E40: ; 0x021F2E40
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #4
	add r4, r1, #0
	str r0, [sp, #4]
	add r0, sp, #0
	str r4, [sp]
	bl FUN_0201F1B4
	add r1, r0, #0
	add r0, r5, #0
	bl MOD05_021F2D40
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F2D50
	add sp, #8
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021F2E68
MOD05_021F2E68: ; 0x021F2E68
	ldr r3, _021F2E6C ; =0x0201F23D
	bx r3
	.balign 4, 0
_021F2E6C: .word 0x0201F23D

	thumb_func_start MOD05_021F2E70
MOD05_021F2E70: ; 0x021F2E70
	push {r4, lr}
	sub sp, #0x20
	str r0, [sp]
	str r1, [sp, #4]
	ldmia r2!, {r0, r1}
	add r3, sp, #8
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	add r2, sp, #0x14
	str r0, [r3]
	ldr r3, _021F2ECC ; =0x021FC550
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	add r0, sp, #0
	bl FUN_0201F6E8
	add r4, r0, #0
	beq _021F2EC4
	mov r1, #0
	bl FUN_0201F80C
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F830
	add r0, r4, #0
	mov r1, #0
	bl FUN_0201F890
	add r0, r4, #0
	bl FUN_0201F8E0
	mov r1, #1
	bl FUN_020BB9F4
	add r0, r4, #0
	bl FUN_0201F8E0
	bl MOD05_021DB5EC
_021F2EC4:
	add r0, r4, #0
	add sp, #0x20
	pop {r4, pc}
	nop
_021F2ECC: .word 0x021FC550

	thumb_func_start MOD05_021F2ED0
MOD05_021F2ED0: ; 0x021F2ED0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r4, r2, #0
	bl MOD05_021F2DE8
	add r1, r0, #0
	add r0, r6, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl MOD05_021F5A90
	str r0, [r4]
	add r0, r5, #0
	bl MOD05_021F2DF4
	add r1, r0, #0
	add r0, r6, #0
	add r0, #0xfc
	ldr r0, [r0]
	bl MOD05_021F5A90
	add r1, r4, #0
	add r1, #0xc
	bl FUN_0202227C
	add r0, r6, #0
	bl MOD05_021F2D6C
	add r1, r5, #0
	bl FUN_02021050
	add r6, r0, #0
	bl FUN_020210AC
	str r0, [r4, #4]
	add r0, r6, #0
	bl FUN_020211AC
	str r0, [r4, #0x1c]
	add r0, r6, #0
	bl FUN_020211BC
	str r0, [r4, #0x20]
	add r0, r6, #0
	bl FUN_020211CC
	str r0, [r4, #0x24]
	add r0, r5, #0
	bl MOD05_021F2E00
	str r0, [r4, #8]
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021F2F3C
MOD05_021F2F3C: ; 0x021F2F3C
	push {r3, lr}
	bl FUN_02058578
	bl FUN_020583A0
	pop {r3, pc}

	thumb_func_start MOD05_021F2F48
MOD05_021F2F48: ; 0x021F2F48
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl MOD05_021F1E64
	mov r0, #6
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0
	bl FUN_0201F7C8
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}

	thumb_func_start MOD05_021F2F6C
MOD05_021F2F6C: ; 0x021F2F6C
	push {r4, r5, r6, lr}
	mov r4, #1
	add r6, r1, #0
	lsl r1, r4, #9
	add r5, r0, #0
	bl FUN_0205842C
	cmp r0, #1
	bne _021F2F80
	mov r4, #0
_021F2F80:
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl FUN_0205842C
	cmp r0, #1
	bne _021F2F9E
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl FUN_0205842C
	cmp r0, #0
	bne _021F2F9E
	mov r4, #0
_021F2F9E:
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl FUN_0201F80C
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F2FAC
MOD05_021F2FAC: ; 0x021F2FAC
	lsl r1, r0, #2
	ldr r0, _021F2FB4 ; =0x021FC55C
	ldr r0, [r0, r1]
	bx lr
	.balign 4, 0
_021F2FB4: .word 0x021FC55C

	thumb_func_start MOD05_021F2FB8
MOD05_021F2FB8: ; 0x021F2FB8
	lsl r1, r0, #2
	ldr r0, _021F2FC0 ; =0x021FC56C
	ldr r0, [r0, r1]
	bx lr
	.balign 4, 0
_021F2FC0: .word 0x021FC56C

	thumb_func_start MOD05_021F2FC4
MOD05_021F2FC4: ; 0x021F2FC4
	lsl r1, r0, #2
	ldr r0, _021F2FCC ; =0x021FC57C
	ldr r0, [r0, r1]
	bx lr
	.balign 4, 0
_021F2FCC: .word 0x021FC57C

	thumb_func_start MOD05_021F2FD0
MOD05_021F2FD0: ; 0x021F2FD0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	ldr r4, [r5, r0]
	mov r0, #4
	add r6, r1, #0
	ldrsh r1, [r4, r0]
	mov r0, #2
	ldrsh r0, [r4, r0]
	add r7, r2, #0
	str r3, [sp]
	cmp r1, r0
	bge _021F2FFA
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0]
	bl FUN_0201F2C0
	cmp r0, #1
	bne _021F302C
_021F2FFA:
	mov r2, #0
	ldrsh r3, [r4, r2]
	ldr r0, [r4, #0xc]
	cmp r3, #0
	ble _021F3024
_021F3004:
	ldr r1, [r0, #0xc]
	cmp r1, #0
	bne _021F301C
	add r5, #0xf0
	ldr r1, [r5]
	str r1, [r0, #0xc]
	ldr r1, [sp]
	str r1, [r0, #8]
	str r6, [r0, #4]
	str r7, [r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F301C:
	add r2, r2, #1
	add r0, #0x10
	cmp r2, r3
	blt _021F3004
_021F3024:
	bl ErrorHandling
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F302C:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	bl MOD05_021F2DB0
	add r2, r0, #0
	ldr r3, [sp]
	add r0, r5, #0
	add r1, r6, #0
	bl MOD05_021F317C
	mov r0, #4
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4, #4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F3050
MOD05_021F3050: ; 0x021F3050
	push {r3, r4}
	mov r2, #1
	lsl r2, r2, #8
	ldr r0, [r0, r2]
	mov r3, #0
	ldrsh r4, [r0, r3]
	ldr r2, [r0, #0xc]
	cmp r4, #0
	ble _021F307E
_021F3062:
	ldr r0, [r2, #4]
	cmp r0, r1
	bne _021F3076
	ldr r0, [r2, #0xc]
	cmp r0, #0
	beq _021F3076
	mov r0, #0
	str r0, [r2, #0xc]
	pop {r3, r4}
	bx lr
_021F3076:
	add r3, r3, #1
	add r2, #0x10
	cmp r3, r4
	blt _021F3062
_021F307E:
	pop {r3, r4}
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021F3084
MOD05_021F3084: ; 0x021F3084
	push {r3, r4}
	mov r2, #1
	lsl r2, r2, #8
	ldr r0, [r0, r2]
	mov r3, #0
	ldrsh r4, [r0, r3]
	ldr r2, [r0, #0xc]
	cmp r4, #0
	ble _021F30BC
_021F3096:
	ldr r0, [r2, #4]
	cmp r0, r1
	bne _021F30B4
	ldr r0, [r2, #0xc]
	cmp r0, #0
	beq _021F30B4
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _021F30AE
	mov r0, #3
	pop {r3, r4}
	bx lr
_021F30AE:
	mov r0, #4
	pop {r3, r4}
	bx lr
_021F30B4:
	add r3, r3, #1
	add r2, #0x10
	cmp r3, r4
	blt _021F3096
_021F30BC:
	mov r0, #0
	pop {r3, r4}
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021F30C4
MOD05_021F30C4: ; 0x021F30C4
	push {r3, r4, r5, r6, r7, lr}
	str r1, [sp]
	mov r1, #1
	ldr r0, [sp]
	lsl r1, r1, #8
	ldr r4, [r0, r1]
	add r0, #0xe0
	ldr r0, [r0]
	mov r6, #0
	ldr r5, [r4, #0xc]
	bl FUN_0201F2C0
	cmp r0, #1
	beq _021F3178
	add r7, r4, #4
	b _021F310E
_021F30E4:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021F310A
	ldr r0, [sp]
	ldr r1, [r5]
	mov r2, #0
	bl MOD05_021F2DB0
	add r2, r0, #0
	ldr r0, [sp]
	ldr r1, [r5, #4]
	ldr r3, [r5, #8]
	bl MOD05_021F317C
	mov r0, #0
	str r0, [r5, #0xc]
	ldrsh r0, [r7, r0]
	add r0, r0, #1
	strh r0, [r7]
_021F310A:
	add r5, #0x10
	add r6, r6, #1
_021F310E:
	mov r0, #4
	ldrsh r1, [r4, r0]
	mov r0, #2
	ldrsh r0, [r4, r0]
	cmp r1, r0
	bge _021F3122
	mov r0, #0
	ldrsh r0, [r4, r0]
	cmp r6, r0
	blt _021F30E4
_021F3122:
	mov r6, #0
	ldrsh r0, [r4, r6]
	ldr r7, [r4, #0xc]
	sub r1, r0, #1
	cmp r1, #0
	ble _021F3174
	add r5, r7, #0
_021F3130:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	bne _021F3166
	add r2, r6, #1
	cmp r2, r0
	bge _021F3166
	lsl r1, r2, #4
	add r3, r7, r1
_021F3140:
	ldr r1, [r3, #0xc]
	cmp r1, #0
	beq _021F315E
	lsl r0, r2, #4
	add r3, r7, r0
	mov ip, r3
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r1, #0
	mov r0, ip
	str r1, [r0, #0xc]
	b _021F3166
_021F315E:
	add r2, r2, #1
	add r3, #0x10
	cmp r2, r0
	blt _021F3140
_021F3166:
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r6, r6, #1
	add r5, #0x10
	sub r1, r0, #1
	cmp r6, r1
	blt _021F3130
_021F3174:
	mov r0, #0
	strh r0, [r4, #4]
_021F3178:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F317C
MOD05_021F317C: ; 0x021F317C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #4
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xf0
	add r4, r1, #0
	add r6, r3, #0
	add r1, r2, #0
	ldr r0, [r0]
	add r2, r4, #0
	mov r3, #1
	bl FUN_02020F54
	cmp r0, #0
	bne _021F31A2
	bl ErrorHandling
_021F31A2:
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F31C8
	cmp r6, #0
	bne _021F31BA
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F28A0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021F31BA:
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F2914
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F31C8
MOD05_021F31C8: ; 0x021F31C8
	push {r4, r5, r6, lr}
	mov r3, #1
	lsl r3, r3, #8
	ldr r3, [r0, r3]
	mov r5, #1
	ldr r4, [r3, #0x10]
	mov r2, #0
	strh r5, [r3, #6]
	ldrsh r6, [r3, r2]
	cmp r6, #0
	ble _021F31FC
_021F31DE:
	ldr r5, [r4, #8]
	cmp r5, #0
	bne _021F31F4
	add r0, #0xf0
	ldr r0, [r0]
	str r0, [r4, #8]
	str r1, [r4, #4]
	mov r0, #0
	str r0, [r4]
	strh r0, [r3, #6]
	pop {r4, r5, r6, pc}
_021F31F4:
	add r2, r2, #1
	add r4, #0xc
	cmp r2, r6
	blt _021F31DE
_021F31FC:
	bl ErrorHandling
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F3204
MOD05_021F3204: ; 0x021F3204
	push {r4, r5}
	mov r2, #1
	lsl r2, r2, #8
	ldr r2, [r0, r2]
	mov r0, #1
	ldr r4, [r2, #0x10]
	mov r3, #0
	strh r0, [r2, #6]
	ldrsh r5, [r2, r3]
	cmp r5, #0
	ble _021F3236
_021F321A:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021F322E
	ldr r0, [r4, #4]
	cmp r0, r1
	bne _021F322E
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4]
	b _021F3236
_021F322E:
	add r3, r3, #1
	add r4, #0xc
	cmp r3, r5
	blt _021F321A
_021F3236:
	mov r0, #0
	strh r0, [r2, #6]
	pop {r4, r5}
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021F3240
MOD05_021F3240: ; 0x021F3240
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #1
	lsl r0, r0, #8
	ldr r6, [r1, r0]
	ldrh r0, [r6, #6]
	cmp r0, #1
	beq _021F327A
	mov r4, #0
	ldrsh r0, [r6, r4]
	ldr r5, [r6, #0x10]
	cmp r0, #0
	ble _021F327A
	mov r7, #1
_021F325A:
	ldr r0, [r5]
	cmp r0, #0
	bne _021F326E
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021F326E
	ldr r1, [r5, #4]
	bl FUN_020210F0
	str r7, [r5]
_021F326E:
	mov r0, #0
	ldrsh r0, [r6, r0]
	add r4, r4, #1
	add r5, #0xc
	cmp r4, r0
	blt _021F325A
_021F327A:
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021F327C
MOD05_021F327C: ; 0x021F327C
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #1
	lsl r0, r0, #8
	ldr r6, [r1, r0]
	mov r4, #0
	ldr r5, [r6, #0x10]
	mov r0, #1
	strh r0, [r6, #6]
	ldrsh r0, [r6, r4]
	cmp r0, #0
	ble _021F32B6
	add r7, r4, #0
_021F3294:
	ldr r0, [r5]
	cmp r0, #1
	bne _021F32AA
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021F32AA
	ldr r1, [r5, #4]
	bl FUN_02021158
	str r7, [r5]
	str r7, [r5, #8]
_021F32AA:
	mov r0, #0
	ldrsh r0, [r6, r0]
	add r4, r4, #1
	add r5, #0xc
	cmp r4, r0
	blt _021F3294
_021F32B6:
	mov r0, #0
	strh r0, [r6, #6]
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021F32BC
MOD05_021F32BC: ; 0x021F32BC
	push {r4, r5, r6, lr}
	mov r5, #1
	lsl r5, r5, #8
	ldr r5, [r0, r5]
	mov r4, #0
	ldrsh r6, [r5, r4]
	ldr r0, [r5, #8]
	cmp r6, #0
	ble _021F32F2
_021F32CE:
	ldr r5, [r0, #4]
	cmp r5, #0
	bne _021F32EA
	str r1, [r0, #4]
	str r2, [r0, #8]
	str r3, [r0]
	ldr r0, [r0, #8]
	mov r2, #0
	str r2, [r0]
	add r0, r1, #0
	mov r1, #1
	bl MOD05_021F2E0C
	pop {r4, r5, r6, pc}
_021F32EA:
	add r4, r4, #1
	add r0, #0xc
	cmp r4, r6
	blt _021F32CE
_021F32F2:
	bl ErrorHandling
	pop {r4, r5, r6, pc}

	thumb_func_start MOD05_021F32F8
MOD05_021F32F8: ; 0x021F32F8
	push {r3, r4}
	mov r2, #1
	lsl r2, r2, #8
	ldr r0, [r0, r2]
	mov r3, #0
	ldrsh r4, [r0, r3]
	ldr r2, [r0, #8]
	cmp r4, #0
	ble _021F3322
_021F330A:
	ldr r0, [r2, #4]
	cmp r0, r1
	bne _021F331A
	mov r0, #0
	str r0, [r2, #4]
	str r0, [r2, #8]
	pop {r3, r4}
	bx lr
_021F331A:
	add r3, r3, #1
	add r2, #0xc
	cmp r3, r4
	blt _021F330A
_021F3322:
	pop {r3, r4}
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021F3328
MOD05_021F3328: ; 0x021F3328
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	ldr r6, [r7, r0]
	mov r4, #0
	ldrsh r0, [r6, r4]
	ldr r5, [r6, #8]
	cmp r0, #0
	ble _021F3356
_021F333C:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021F334A
	add r0, r7, #0
	add r1, r5, #0
	bl MOD05_021F3364
_021F334A:
	mov r0, #0
	ldrsh r0, [r6, r0]
	add r4, r4, #1
	add r5, #0xc
	cmp r4, r0
	blt _021F333C
_021F3356:
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021F3358
MOD05_021F3358: ; 0x021F3358
	ldr r3, _021F3360 ; =MOD05_021F3328
	add r0, r1, #0
	bx r3
	nop
_021F3360: .word MOD05_021F3328

	thumb_func_start MOD05_021F3364
MOD05_021F3364: ; 0x021F3364
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4]
	bl MOD05_021F2A08
	cmp r0, #2
	beq _021F33B2
	ldr r0, [r4, #4]
	ldr r1, [r4]
	bl MOD05_021F1FE0
	ldr r1, [r4, #8]
	str r0, [r1]
	ldr r0, [r4, #8]
	ldr r0, [r0]
	cmp r0, #0
	bne _021F338A
	bl ErrorHandling
_021F338A:
	ldr r0, [r4, #4]
	mov r1, #0
	bl MOD05_021F2E0C
	mov r1, #2
	ldr r0, [r4, #4]
	lsl r1, r1, #0x14
	bl FUN_0205842C
	cmp r0, #1
	ldr r0, [r4, #4]
	bne _021F33A8
	bl FUN_020586DC
	b _021F33AC
_021F33A8:
	bl FUN_020586A0
_021F33AC:
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #8]
_021F33B2:
	pop {r4, pc}

	thumb_func_start MOD05_021F33B4
MOD05_021F33B4: ; 0x021F33B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r5, r0, #0
	mov r0, #0xc
	add r7, r6, #0
	mul r7, r0
	lsl r0, r6, #4
	lsl r1, r7, #1
	str r0, [sp, #4]
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, #0x28
	str r0, [sp, #8]
	ldr r1, [sp, #8]
	mov r0, #4
	str r2, [sp]
	bl FUN_02016998
	add r4, r0, #0
	bne _021F33E2
	bl ErrorHandling
_021F33E2:
	ldr r2, [sp, #8]
	add r0, r4, #0
	mov r1, #0
	bl Call_FillMemWithValue
	ldr r0, [sp]
	strh r6, [r4]
	strh r0, [r4, #2]
	add r0, r4, #0
	add r0, #0x28
	str r0, [r4, #8]
	add r1, r0, r7
	ldr r0, [sp, #4]
	str r1, [r4, #0xc]
	add r0, r1, r0
	str r0, [r4, #0x10]
	mov r0, #1
	lsl r0, r0, #8
	str r4, [r5, r0]
	add r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_0205839C
	add r6, r0, #0
	ldr r0, _021F3448 ; =MOD05_021F30C4
	add r1, r5, #0
	add r2, r6, #1
	bl FUN_0200CA44
	str r0, [r4, #0x18]
	ldr r0, _021F344C ; =MOD05_021F3358
	add r1, r5, #0
	add r2, r6, #2
	bl FUN_0200CA44
	str r0, [r4, #0x1c]
	ldr r0, _021F3450 ; =MOD05_021F3240
	add r1, r5, #0
	mov r2, #0xff
	bl FUN_0200CA60
	str r0, [r4, #0x20]
	ldr r0, _021F3454 ; =MOD05_021F327C
	add r1, r5, #0
	mov r2, #0xff
	bl FUN_0200CA98
	str r0, [r4, #0x24]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021F3448: .word MOD05_021F30C4
_021F344C: .word MOD05_021F3358
_021F3450: .word MOD05_021F3240
_021F3454: .word MOD05_021F327C

	thumb_func_start MOD05_021F3458
MOD05_021F3458: ; 0x021F3458
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	ldr r4, [r5, r0]
	mov r0, #1
	strh r0, [r4, #6]
	ldr r0, [r4, #0x18]
	bl FUN_0200CAB4
	ldr r0, [r4, #0x1c]
	bl FUN_0200CAB4
	ldr r0, [r4, #0x20]
	bl FUN_0200CAB4
	ldr r0, [r4, #0x24]
	bl FUN_0200CAB4
	add r0, r4, #0
	bl FUN_02016A18
	mov r0, #1
	mov r1, #0
	lsl r0, r0, #8
	str r1, [r5, r0]
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F3490
MOD05_021F3490: ; 0x021F3490
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl MOD05_021F2E28
	cmp r0, #1
	beq _021F34A8
	add r0, r5, #0
	bl MOD05_021F0514
	cmp r0, #0
	bne _021F34D2
_021F34A8:
	add r0, r5, #0
	bl FUN_02058458
	add r6, r0, #0
	add r0, r5, #0
	bl FUN_02058578
	add r7, r0, #0
	add r0, r5, #0
	bl FUN_020576A8
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl MOD05_021F2C80
	add r0, r5, #0
	add r1, r4, #0
	bl FUN_02057614
	pop {r3, r4, r5, r6, r7, pc}
_021F34D2:
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021F34DC
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021F34DC
MOD05_021F34DC: ; 0x021F34DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r7, r0, #0
	str r1, [sp, #8]
	bl MOD05_021F2F3C
	str r0, [sp, #0x18]
	bl MOD05_021F2D48
	str r0, [sp, #0x14]
	add r0, r7, #0
	bl MOD05_021F0514
	str r0, [sp, #0x10]
	mov r0, #4
	mov r1, #0x58
	bl FUN_020169D8
	mov r1, #0
	mov r2, #0x58
	add r5, r0, #0
	bl Call_FillMemWithValue
	ldr r0, [sp, #8]
	str r0, [r5]
	add r0, r7, #0
	str r7, [r5, #0x50]
	bl FUN_02058458
	add r6, r0, #0
	bl MOD05_021F2DE8
	ldr r4, _021F36C4 ; =0x021F9094
	ldr r2, _021F36C8 ; =0x0000FFFF
_021F3520:
	ldr r1, [r4]
	cmp r1, r0
	beq _021F352E
	add r4, #8
	ldr r1, [r4]
	cmp r1, r2
	bne _021F3520
_021F352E:
	ldr r0, _021F36C8 ; =0x0000FFFF
	cmp r1, r0
	bne _021F3538
	bl ErrorHandling
_021F3538:
	ldr r0, [sp, #0x18]
	ldr r1, [r4, #4]
	mov r2, #0
	bl MOD05_021F2DB0
	str r0, [r5, #8]
	add r0, r6, #0
	bl MOD05_021F2DF4
	ldr r4, _021F36CC ; =0x021F90E4
	ldr r2, _021F36C8 ; =0x0000FFFF
_021F354E:
	ldr r1, [r4]
	cmp r1, r0
	beq _021F355C
	add r4, #8
	ldr r1, [r4]
	cmp r1, r2
	bne _021F354E
_021F355C:
	ldr r0, _021F36C8 ; =0x0000FFFF
	cmp r1, r0
	bne _021F3566
	bl ErrorHandling
_021F3566:
	ldr r0, [sp, #0x18]
	ldr r1, [r4, #4]
	mov r2, #0
	bl MOD05_021F2DB0
	add r1, r5, #0
	add r1, #0x14
	str r0, [r5, #0xc]
	bl FUN_0202227C
	ldr r4, _021F36D0 ; =0x021FA0AC
	ldr r0, _021F36C8 ; =0x0000FFFF
_021F357E:
	ldr r1, [r4]
	cmp r1, r6
	beq _021F358C
	add r4, #8
	ldr r1, [r4]
	cmp r1, r0
	bne _021F357E
_021F358C:
	ldr r0, _021F36C8 ; =0x0000FFFF
	cmp r1, r0
	bne _021F3596
	bl ErrorHandling
_021F3596:
	ldr r0, [sp, #0x18]
	ldr r1, [r4, #4]
	mov r2, #0
	bl MOD05_021F2DB0
	str r0, [r5, #0x10]
	bl FUN_020BC0FC
	add r4, r0, #0
	add r0, r6, #0
	bl MOD05_021F2E00
	add r3, r0, #0
	add r0, r5, #0
	add r0, #0x14
	str r0, [sp]
	add r0, r5, #0
	ldr r1, [r5, #8]
	add r0, #0x28
	add r2, r4, #0
	bl FUN_0201F7A4
	ldr r0, [sp, #0x10]
	bl FUN_0201F7E0
	add r3, r0, #0
	add r2, sp, #0x28
	ldmia r3!, {r0, r1}
	add r4, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	add r1, r5, #0
	str r0, [r2]
	ldr r0, [sp, #0x14]
	add r1, #0x28
	add r2, r4, #0
	bl MOD05_021F2E70
	str r0, [r5, #0x24]
	cmp r0, #0
	bne _021F35EC
	bl ErrorHandling
_021F35EC:
	ldr r0, [sp, #0x10]
	bl FUN_0201F844
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	bl FUN_0201F830
	ldr r0, [sp, #0x10]
	bl FUN_0201F8C0
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	bl FUN_0201F890
	ldr r0, [sp, #0x10]
	bl FUN_0201F880
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	bl FUN_0201F86C
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl FUN_0201F854
	ldr r0, [r5, #0x24]
	mov r1, #1
	bl FUN_0201F80C
	ldr r0, [r5, #0x24]
	bl FUN_0201F8F0
	add r0, r7, #0
	bl FUN_02058A9C
	cmp r0, #1
	bne _021F367A
	add r0, r7, #0
	mov r1, #2
	bl FUN_0205829C
	str r0, [sp, #0xc]
	add r0, r7, #0
	mov r1, #1
	bl FUN_02059C90
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r4, #0
	bl FUN_02054AF0
	cmp r0, #0
	bne _021F3658
	mov r4, #1
_021F3658:
	add r0, r7, #0
	add r1, sp, #0x1c
	bl FUN_02058B5C
	add r0, r7, #0
	bl MOD05_021E4C24
	ldr r1, [sp, #0xc]
	str r4, [sp]
	str r1, [sp, #4]
	add r1, r5, #0
	ldr r2, [r5, #0x24]
	add r1, #0x28
	add r3, sp, #0x1c
	bl FUN_02249B7C
	str r0, [r5, #0x54]
_021F367A:
	add r0, r7, #0
	bl FUN_020576A8
	mov r1, #0x41
	ldr r0, [sp, #0x18]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, r6, #0
	add r2, r7, #0
	bl MOD05_021F2C80
	ldr r1, [sp, #8]
	add r0, r7, #0
	bl FUN_02057614
	mov r1, #0x41
	ldr r0, [sp, #0x18]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl FUN_0205839C
	ldr r0, _021F36D4 ; =MOD05_021F36D8
	add r1, r5, #0
	mov r2, #0xff
	bl FUN_0200CA98
	add r4, r0, #0
	bne _021F36B6
	bl ErrorHandling
_021F36B6:
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021F36D8
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021F36C4: .word 0x021F9094
_021F36C8: .word 0x0000FFFF
_021F36CC: .word 0x021F90E4
_021F36D0: .word 0x021FA0AC
_021F36D4: .word MOD05_021F36D8

	thumb_func_start MOD05_021F36D8
MOD05_021F36D8: ; 0x021F36D8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #4]
	ldr r4, [r5, #0x50]
	cmp r0, #0
	beq _021F36EC
	cmp r0, #1
	beq _021F3744
	pop {r4, r5, r6, pc}
_021F36EC:
	add r0, r4, #0
	bl FUN_02058830
	cmp r0, #0
	beq _021F3700
	add r0, r4, #0
	bl MOD05_021F2E28
	cmp r0, #0
	bne _021F3730
_021F3700:
	ldr r0, [r5, #0x54]
	cmp r0, #0
	beq _021F370A
	bl FUN_02064520
_021F370A:
	ldr r0, [r5, #0x24]
	bl FUN_0201F744
	ldr r0, [r5, #8]
	bl FUN_02016A18
	ldr r0, [r5, #0xc]
	bl FUN_02016A18
	ldr r0, [r5, #0x10]
	bl FUN_02016A18
	add r0, r5, #0
	bl FUN_02016A18
	add r0, r6, #0
	bl FUN_0200CAB4
	pop {r4, r5, r6, pc}
_021F3730:
	add r0, r4, #0
	bl FUN_02058458
	ldr r1, [r5]
	cmp r1, r0
	beq _021F377C
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	pop {r4, r5, r6, pc}
_021F3744:
	add r0, r4, #0
	bl MOD05_021F2E28
	cmp r0, #0
	bne _021F377C
	ldr r0, [r5, #0x54]
	cmp r0, #0
	beq _021F3758
	bl FUN_02064520
_021F3758:
	ldr r0, [r5, #0x24]
	bl FUN_0201F744
	ldr r0, [r5, #8]
	bl FUN_02016A18
	ldr r0, [r5, #0xc]
	bl FUN_02016A18
	ldr r0, [r5, #0x10]
	bl FUN_02016A18
	add r0, r5, #0
	bl FUN_02016A18
	add r0, r6, #0
	bl FUN_0200CAB4
_021F377C:
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F3780
MOD05_021F3780: ; 0x021F3780
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl MOD05_021F37AC
	add r4, r0, #0
	str r6, [r4]
	str r5, [r4, #8]
	bl MOD05_021F37DC
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F379C
MOD05_021F379C: ; 0x021F379C
	push {r4, lr}
	add r4, r0, #0
	bl MOD05_021F37E0
	add r0, r4, #0
	bl MOD05_021F37D0
	pop {r4, pc}

	thumb_func_start MOD05_021F37AC
MOD05_021F37AC: ; 0x021F37AC
	push {r4, lr}
	mov r1, #0x10
	bl FUN_02016998
	add r4, r0, #0
	bne _021F37BC
	bl ErrorHandling
_021F37BC:
	add r2, r4, #0
	mov r1, #0x10
	mov r0, #0
_021F37C2:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021F37C2
	add r0, r4, #0
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F37D0
MOD05_021F37D0: ; 0x021F37D0
	ldr r3, _021F37D8 ; =0x02016A8D
	add r1, r0, #0
	ldr r0, [r1]
	bx r3
	.balign 4, 0
_021F37D8: .word 0x02016A8D

	thumb_func_start MOD05_021F37DC
MOD05_021F37DC: ; 0x021F37DC
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021F37E0
MOD05_021F37E0: ; 0x021F37E0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021F380E
	ldr r4, [r5, #0xc]
	cmp r4, #0
	beq _021F380E
_021F37F0:
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _021F37FC
	add r0, r4, #0
	bl MOD05_021F383C
_021F37FC:
	ldr r0, [r5, #4]
	add r4, #0x60
	sub r0, r0, #1
	str r0, [r5, #4]
	bne _021F37F0
	ldr r0, [r5]
	ldr r1, [r5, #0xc]
	bl FUN_02016A8C
_021F380E:
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021F3810
MOD05_021F3810: ; 0x021F3810
	push {r3, r4, r5, lr}
	add r4, r0, #0
	str r1, [r4, #4]
	mov r0, #0x60
	add r5, r1, #0
	mul r5, r0
	ldr r0, [r4]
	add r1, r5, #0
	bl FUN_02016998
	str r0, [r4, #0xc]
	cmp r0, #0
	bne _021F382E
	bl ErrorHandling
_021F382E:
	ldr r0, [r4, #0xc]
	mov r1, #0
	add r2, r5, #0
	bl Call_FillMemWithValue
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F383C
MOD05_021F383C: ; 0x021F383C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl FUN_02016A18
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x60
	bl Call_FillMemWithValue
	pop {r4, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F3854
MOD05_021F3854: ; 0x021F3854
	mov r0, #0
	str r0, [r2]
	str r0, [r2, #4]
	bx lr

	thumb_func_start MOD05_021F385C
MOD05_021F385C: ; 0x021F385C
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021F3860
MOD05_021F3860: ; 0x021F3860
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x38]
	add r4, r2, #0
	bl FUN_02055320
	add r6, r0, #0
	ldr r0, [r5, #0x38]
	bl FUN_0205532C
	add r7, r0, #0
	ldr r0, [r4]
	cmp r0, r6
	bne _021F3882
	ldr r0, [r4, #4]
	cmp r0, r7
	beq _021F38B4
_021F3882:
	str r6, [r4]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	str r7, [r4, #4]
	bl FUN_0204A6E0
	add r4, r0, #0
	bl FUN_02054A18
	cmp r0, #0
	beq _021F389E
	mov r2, #0
	b _021F38AA
_021F389E:
	add r0, r4, #0
	bl FUN_02054A0C
	cmp r0, #0
	beq _021F38B4
	mov r2, #1
_021F38AA:
	add r0, r6, #0
	add r1, r7, #0
	add r3, r5, #0
	bl MOD05_021DAFA8
_021F38B4:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0

	thumb_func_start MOD05_021F38B8
MOD05_021F38B8: ; 0x021F38B8
	ldr r0, [r0, #4]
	ldr r3, _021F38C4 ; =MOD05_021D8024
	ldr r0, [r0, #4]
	ldr r1, _021F38C8 ; =0x021FC58C
	bx r3
	nop
_021F38C4: .word MOD05_021D8024
_021F38C8: .word 0x021FC58C

	thumb_func_start MOD05_021F38CC
MOD05_021F38CC: ; 0x021F38CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r1, #0
	add r2, r1, #0
	add r5, r0, #0
	bl FUN_020671BC
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r5, #0
	mov r1, #0x46
	mov r2, #0
	bl FUN_020671BC
	mov r1, #0xf
	and r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0x47
	mov r2, #0
	bl FUN_020671BC
	mov r1, #0xf
	and r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0x48
	mov r2, #0
	bl FUN_020671BC
	mov r1, #0xf
	and r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x49
	mov r2, #0
	bl FUN_020671BC
	mov r1, #0xf
	and r0, r1
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r0, r5, #0
	mov r1, #0x4a
	mov r2, #0
	bl FUN_020671BC
	mov r1, #0xf
	and r0, r1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r5, #0
	mov r1, #0x4b
	mov r2, #0
	bl FUN_020671BC
	mov r1, #0xf
	and r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	eor r0, r6
	asr r1, r4, #8
	mul r0, r7
	eor r0, r1
	lsl r1, r4, #0x18
	lsr r3, r1, #0x18
	lsl r0, r0, #0x10
	ldr r2, [sp, #4]
	ldr r1, [sp]
	lsr r0, r0, #0x10
	eor r2, r1
	ldr r1, [sp, #8]
	mul r2, r1
	add r1, r3, #0
	eor r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #8
	add r0, r0, r1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021F3978
MOD05_021F3978: ; 0x021F3978
	ldr r2, _021F399C ; =0x021FC5A4
	mov r3, #1
_021F397C:
	lsl r1, r3, #3
	add r1, r2, r1
	ldrh r1, [r1, #4]
	cmp r0, r1
	bhs _021F398E
	sub r0, r3, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_021F398E:
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #0xf
	blo _021F397C
	add r0, r3, #0
	bx lr
	.balign 4, 0
_021F399C: .word 0x021FC5A4

	thumb_func_start MOD05_021F39A0
MOD05_021F39A0: ; 0x021F39A0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r0, #4
	add r5, r1, #0
	bl FUN_02087A6C
	add r4, r0, #0
	bl FUN_02087A84
	add r0, r4, #0
	mov r1, #0
	mov r2, #4
	bl FUN_02087A98
	add r0, r4, #0
	add r1, r6, #0
	bl FUN_02087B58
	add r6, r0, #0
	add r0, r4, #0
	bl FUN_02087B0C
	add r0, r5, #0
	bl MOD05_021F3978
	lsl r4, r0, #3
	ldr r0, _021F3A0C ; =0x021FC5A8
	ldr r2, _021F3A10 ; =0x021FC5A6
	ldrh r0, [r0, r4]
	ldrh r2, [r2, r4]
	asr r1, r5, #0x1f
	mov r3, #0
	sub r0, r5, r0
	sbc r1, r3
	bl _ll_udiv
	add r2, r0, #0
	add r0, r6, #0
	ldr r6, _021F3A14 ; =0x021FC5A4
	add r3, r1, #0
	mov r5, #0
	ldrh r4, [r6, r4]
	add r1, r5, #0
	add r2, r4, r2
	adc r5, r3
	add r3, r5, #0
	bl _ll_mul
	mov r2, #0xa
	mov r3, #0
	bl _ll_udiv
	pop {r4, r5, r6, pc}
	nop
_021F3A0C: .word 0x021FC5A8
_021F3A10: .word 0x021FC5A6
_021F3A14: .word 0x021FC5A4

	thumb_func_start MOD05_021F3A18
MOD05_021F3A18: ; 0x021F3A18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	add r5, r1, #0
	bl FUN_0206BB1C
	add r1, r5, #0
	bl FUN_0206B9B0
	mov r1, #5
	mov r2, #0
	str r0, [sp]
	bl FUN_020671BC
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, [sp]
	bl MOD05_021F38CC
	add r1, sp, #4



