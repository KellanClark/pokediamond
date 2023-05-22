	.include "asm/macros.inc"
	.include "global.inc"
	.section .text
	.balign 4, 0

	thumb_func_start MOD11_0224D550
MOD11_0224D550: ; 0x0224D550
	push {r4, lr}
	add r4, r0, #0
	mov r0, #5
	mov r1, #0x18
	bl AllocFromHeap
	add r1, r0, #0
	str r4, [r1]
	mov r2, #0
	strb r2, [r1, #0x14]
	ldr r0, _0224D570 ; =MOD11_022530A0
	strb r2, [r1, #0x15]
	bl FUN_0200CA44
	pop {r4, pc}
	nop
_0224D570: .word MOD11_022530A0

	thumb_func_start MOD11_0224D574
MOD11_0224D574: ; 0x0224D574
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	str r0, [sp, #0x24]
	add r6, r1, #0
	add r5, r2, #0
	bl MOD11_02230068
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	bl MOD11_0222FF74
	mov r0, #5
	mov r1, #0x2c
	bl AllocFromHeap
	add r4, r0, #0
	mov r2, #0
	ldr r0, _0224D720 ; =0x00000195
	strb r2, [r4, #0x12]
	ldrb r0, [r6, r0]
	mov r1, #1
	tst r0, r1
	beq _0224D5CA
	mov r0, #2
	strb r0, [r4, #0x13]
	ldr r0, [sp, #0x24]
	bl MOD11_02230088
	str r0, [r4, #0xc]
	ldr r1, _0224D720 ; =0x00000195
	ldr r0, [r0]
	ldrb r2, [r6, r1]
	mov r1, #1
	and r2, r1
	add r3, r2, #0
	mov r1, #6
	mul r3, r1
	ldr r1, _0224D724 ; =MOD8_0222D550
	mov r2, #0x58
	ldrsh r1, [r1, r3]
	bl FUN_0200C714
	b _0224D5F0
_0224D5CA:
	ldr r0, [sp, #0x24]
	add r1, r2, #0
	strb r2, [r4, #0x13]
	bl MOD11_02230088
	str r0, [r4, #0xc]
	ldr r1, _0224D720 ; =0x00000195
	ldr r0, [r0]
	ldrb r2, [r6, r1]
	mov r1, #1
	and r2, r1
	add r3, r2, #0
	mov r1, #6
	mul r3, r1
	ldr r1, _0224D724 ; =MOD8_0222D550
	mov r2, #0x88
	ldrsh r1, [r1, r3]
	bl FUN_0200C714
_0224D5F0:
	ldrb r0, [r5, #1]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _0224D5FC
	mov r0, #1
	b _0224D5FE
_0224D5FC:
	mov r0, #0
_0224D5FE:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrb r0, [r5, #1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1b
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	str r0, [sp, #8]
	ldrb r2, [r5, #1]
	ldrh r1, [r5, #2]
	ldrb r3, [r4, #0x13]
	lsl r2, r2, #0x1e
	add r0, sp, #0x48
	lsr r2, r2, #0x1e
	bl FUN_02068C00
	ldr r0, [r5, #4]
	str r0, [sp]
	ldrb r3, [r5, #1]
	ldrh r0, [r5, #2]
	ldrb r2, [r4, #0x13]
	lsl r1, r3, #0x1e
	lsl r3, r3, #0x18
	lsr r1, r1, #0x1e
	lsr r3, r3, #0x1b
	bl FUN_02068E88
	str r0, [sp, #0x2c]
	mov r0, #1
	str r0, [sp]
	add r0, sp, #0x30
	ldrh r3, [r5, #2]
	add r0, #2
	mov r1, #0x8a
	mov r2, #0
	bl ReadFromNarcMemberByIdPair
	mov r0, #1
	str r0, [sp]
	add r0, sp, #0x30
	ldrh r3, [r5, #2]
	add r0, #1
	mov r1, #0x90
	mov r2, #0
	bl ReadFromNarcMemberByIdPair
	mov r0, #1
	str r0, [sp]
	ldrh r3, [r5, #2]
	add r0, sp, #0x30
	mov r1, #0x8e
	mov r2, #0
	bl ReadFromNarcMemberByIdPair
	add r0, sp, #0x30
	ldrh r1, [r5, #2]
	add r0, #3
	bl FUN_02069010
	ldr r1, _0224D720 ; =0x00000195
	mov r0, #6
	ldrb r2, [r6, r1]
	ldr r3, _0224D724 ; =MOD8_0222D550
	add r7, r2, #0
	mul r7, r0
	ldr r0, _0224D728 ; =MOD8_0222D552
	mov r2, #2
	ldrsh r0, [r0, r7]
	ldrsh r3, [r3, r7]
	str r0, [sp]
	ldr r0, _0224D72C ; =MOD8_0222D554
	ldrsh r0, [r0, r7]
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #8]
	add r0, sp, #0x30
	ldrsb r2, [r0, r2]
	str r2, [sp, #0xc]
	mov r2, #1
	ldrsb r2, [r0, r2]
	str r2, [sp, #0x10]
	ldrb r0, [r0]
	add r2, sp, #0x48
	str r0, [sp, #0x14]
	sub r0, r1, #1
	ldrb r0, [r6, r0]
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x18]
	add r0, sp, #0x30
	add r0, #3
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	bl MOD11_02253A88
	str r0, [r6, #0x20]
	str r0, [r4, #8]
	ldrb r0, [r4, #0x13]
	cmp r0, #2
	bne _0224D6D8
	mov r3, #0
	str r3, [sp]
	mov r1, #8
	ldr r0, [r4, #8]
	add r2, r1, #0
	bl FUN_02007E68
_0224D6D8:
	ldr r1, _0224D720 ; =0x00000195
	ldrb r0, [r6, r1]
	lsl r2, r0, #2
	ldr r0, _0224D730 ; =MOD8_0222D538
	ldrsh r0, [r0, r2]
	strh r0, [r4, #0x14]
	ldr r0, [sp, #0x24]
	str r0, [r4]
	str r6, [r4, #4]
	ldrb r0, [r5]
	strb r0, [r4, #0x10]
	sub r0, r1, #1
	ldrb r0, [r6, r0]
	strb r0, [r4, #0x11]
	ldrh r0, [r5, #2]
	strh r0, [r4, #0x16]
	ldr r0, [r5, #8]
	str r0, [r4, #0x18]
	ldrb r0, [r6, r1]
	str r0, [r4, #0x1c]
	ldr r0, [r5, #4]
	bl GetNatureFromPersonality
	str r0, [r4, #0x24]
	ldrb r0, [r5, #1]
	add r1, r4, #0
	mov r2, #0
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	str r0, [r4, #0x28]
	ldr r0, _0224D734 ; =MOD11_0224EEA0
	bl FUN_0200CA44
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224D720: .word 0x00000195
_0224D724: .word MOD8_0222D550
_0224D728: .word MOD8_0222D552
_0224D72C: .word MOD8_0222D554
_0224D730: .word MOD8_0222D538
_0224D734: .word MOD11_0224EEA0

	thumb_func_start MOD11_0224D738
MOD11_0224D738: ; 0x0224D738
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	bl MOD11_0222FF74
	mov r0, #5
	mov r1, #0x9c
	bl AllocFromHeap
	add r4, r0, #0
	ldr r0, _0224D874 ; =0x00000195
	ldrb r1, [r6, r0]
	mov r0, #1
	tst r0, r1
	beq _0224D75E
	mov r1, #2
	b _0224D760
_0224D75E:
	mov r1, #0
_0224D760:
	add r0, r4, #0
	add r0, #0x84
	strb r1, [r0]
	ldrb r0, [r5, #1]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _0224D772
	mov r0, #1
	b _0224D774
_0224D772:
	mov r0, #0
_0224D774:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrb r0, [r5, #1]
	add r3, r4, #0
	add r3, #0x84
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1b
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	str r0, [sp, #8]
	ldrb r2, [r5, #1]
	add r0, r4, #0
	ldrh r1, [r5, #2]
	lsl r2, r2, #0x1e
	ldrb r3, [r3]
	add r0, #0x14
	lsr r2, r2, #0x1e
	bl FUN_02068C00
	ldr r0, [r5, #4]
	add r2, r4, #0
	str r0, [sp]
	ldrb r3, [r5, #1]
	add r2, #0x84
	ldrh r0, [r5, #2]
	lsl r1, r3, #0x1e
	lsl r3, r3, #0x18
	ldrb r2, [r2]
	lsr r1, r1, #0x1e
	lsr r3, r3, #0x1b
	bl FUN_02068E88
	add r1, r4, #0
	add r1, #0x85
	strb r0, [r1]
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	ldrh r3, [r5, #2]
	add r0, #0x90
	mov r1, #0x8a
	mov r2, #0
	bl ReadFromNarcMemberByIdPair
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	ldrh r3, [r5, #2]
	add r0, #0x91
	mov r1, #0x90
	mov r2, #0
	bl ReadFromNarcMemberByIdPair
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	ldrh r3, [r5, #2]
	add r0, #0x93
	mov r1, #0x8e
	mov r2, #0
	bl ReadFromNarcMemberByIdPair
	add r0, r6, #0
	bl MOD11_02253A78
	str r7, [r4]
	add r0, r4, #0
	str r6, [r4, #4]
	mov r1, #0
	add r0, #0x83
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x96
	strb r1, [r0]
	add r0, r4, #0
	ldrb r1, [r5]
	add r0, #0x80
	strb r1, [r0]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r2, [r6, r0]
	add r1, r4, #0
	add r1, #0x81
	strb r2, [r1]
	add r1, r4, #0
	ldrh r2, [r5, #2]
	add r1, #0x86
	add r0, r0, #1
	strh r2, [r1]
	ldrb r1, [r6, r0]
	add r0, r4, #0
	add r0, #0x82
	strb r1, [r0]
	add r0, r4, #0
	ldr r1, [r5, #8]
	add r0, #0x88
	str r1, [r0]
	add r0, r4, #0
	ldr r1, [r5, #0xc]
	add r0, #0x8c
	strb r1, [r0]
	ldr r0, [r5, #4]
	bl GetNatureFromPersonality
	add r1, r4, #0
	add r1, #0x8d
	strb r0, [r1]
	add r0, r4, #0
	ldr r1, [r5, #0x10]
	add r0, #0x8e
	strh r1, [r0]
	ldrb r0, [r5, #1]
	lsl r0, r0, #0x1d
	lsr r1, r0, #0x1f
	add r0, r4, #0
	add r0, #0x92
	strb r1, [r0]
	add r0, r4, #0
	mov r2, #0
	add r0, #0x94
	strh r2, [r0]
	ldr r0, _0224D878 ; =MOD11_0224F2DC
	add r1, r4, #0
	bl FUN_0200CA44
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0224D874: .word 0x00000195
_0224D878: .word MOD11_0224F2DC

	thumb_func_start MOD11_0224D87C
MOD11_0224D87C: ; 0x0224D87C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl MOD11_0222FF74
	mov r0, #5
	mov r1, #0x9c
	bl AllocFromHeap
	add r5, r0, #0
	add r1, r5, #0
	mov r0, #0
	add r1, #0x83
	strb r0, [r1]
	ldr r1, _0224DA24 ; =0x00000195
	ldrb r2, [r6, r1]
	mov r1, #1
	tst r1, r2
	beq _0224D8B0
	add r0, r5, #0
	mov r1, #2
	add r0, #0x84
	strb r1, [r0]
	b _0224D8B6
_0224D8B0:
	add r1, r5, #0
	add r1, #0x84
	strb r0, [r1]
_0224D8B6:
	ldrb r0, [r4, #1]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _0224D8C2
	mov r0, #1
	b _0224D8C4
_0224D8C2:
	mov r0, #0
_0224D8C4:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrb r0, [r4, #1]
	add r3, r5, #0
	add r3, #0x84
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1b
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	str r0, [sp, #8]
	ldrb r2, [r4, #1]
	add r0, r5, #0
	ldrh r1, [r4, #2]
	lsl r2, r2, #0x1e
	ldrb r3, [r3]
	add r0, #0x14
	lsr r2, r2, #0x1e
	bl FUN_02068C00
	ldr r0, [r4, #4]
	add r2, r5, #0
	str r0, [sp]
	ldrb r3, [r4, #1]
	add r2, #0x84
	ldrh r0, [r4, #2]
	lsl r1, r3, #0x1e
	lsl r3, r3, #0x18
	ldrb r2, [r2]
	lsr r1, r1, #0x1e
	lsr r3, r3, #0x1b
	bl FUN_02068E88
	add r1, r5, #0
	add r1, #0x85
	strb r0, [r1]
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	ldrh r3, [r4, #2]
	add r0, #0x90
	mov r1, #0x8a
	mov r2, #0
	bl ReadFromNarcMemberByIdPair
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	ldrh r3, [r4, #2]
	add r0, #0x91
	mov r1, #0x90
	mov r2, #0
	bl ReadFromNarcMemberByIdPair
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	ldrh r3, [r4, #2]
	add r0, #0x93
	mov r1, #0x8e
	mov r2, #0
	bl ReadFromNarcMemberByIdPair
	add r0, r6, #0
	bl MOD11_02253A78
	str r7, [r5]
	str r6, [r5, #4]
	add r0, r5, #0
	ldrb r1, [r4]
	add r0, #0x80
	strb r1, [r0]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r2, [r6, r0]
	add r1, r5, #0
	add r1, #0x81
	strb r2, [r1]
	add r1, r5, #0
	ldrh r2, [r4, #2]
	add r1, #0x86
	add r0, r0, #1
	strh r2, [r1]
	ldrb r1, [r6, r0]
	add r0, r5, #0
	add r0, #0x82
	strb r1, [r0]
	add r0, r5, #0
	ldr r1, [r4, #8]
	add r0, #0x88
	str r1, [r0]
	add r0, r5, #0
	ldr r1, [r4, #0xc]
	add r0, #0x8c
	strb r1, [r0]
	ldr r0, [r4, #4]
	bl GetNatureFromPersonality
	add r1, r5, #0
	add r1, #0x8d
	strb r0, [r1]
	add r0, r5, #0
	ldr r1, [r4, #0x10]
	add r0, #0x8e
	strh r1, [r0]
	ldrb r0, [r4, #1]
	lsl r0, r0, #0x1d
	lsr r1, r0, #0x1f
	add r0, r5, #0
	add r0, #0x92
	strb r1, [r0]
	add r0, r5, #0
	ldr r1, [r4, #0x14]
	add r0, #0x94
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #0
	add r0, #0x96
	strb r1, [r0]
	add r0, r5, #0
	ldr r2, [r4, #0x4c]
	add r0, #0x98
	str r2, [r0]
	str r4, [sp, #0x18]
	add r7, r5, #0
	add r2, r4, #0
	add r3, r5, #0
_0224D9C2:
	ldr r0, [sp, #0x18]
	add r0, #0x50
	ldrh r6, [r0]
	add r0, r7, #0
	add r0, #0x40
	strh r6, [r0]
	add r0, r4, r1
	add r0, #0x58
	ldrb r6, [r0]
	add r0, r5, r1
	str r0, [sp, #0x14]
	add r0, #0x48
	str r0, [sp, #0x14]
	strb r6, [r0]
	add r0, r4, r1
	add r0, #0x5c
	ldrb r6, [r0]
	add r0, r5, r1
	str r0, [sp, #0x10]
	add r0, #0x4c
	str r0, [sp, #0x10]
	strb r6, [r0]
	add r0, r4, r1
	add r0, #0x60
	ldrb r6, [r0]
	add r0, r5, r1
	str r0, [sp, #0xc]
	add r0, #0x50
	str r0, [sp, #0xc]
	strb r6, [r0]
	ldr r0, [r2, #0x64]
	add r1, r1, #1
	str r0, [r3, #0x54]
	ldr r0, [sp, #0x18]
	add r7, r7, #2
	add r0, r0, #2
	str r0, [sp, #0x18]
	add r2, r2, #4
	add r3, r3, #4
	cmp r1, #4
	blt _0224D9C2
	ldr r0, _0224DA28 ; =MOD11_0224F7C4
	add r1, r5, #0
	mov r2, #0
	bl FUN_0200CA44
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0224DA24: .word 0x00000195
_0224DA28: .word MOD11_0224F7C4

	thumb_func_start MOD11_0224DA2C
MOD11_0224DA2C: ; 0x0224DA2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #0x74
	str r2, [sp]
	bl AllocFromHeap
	add r2, r0, #0
	str r5, [r2]
	str r4, [r2, #4]
	ldr r0, [r4, #0x20]
	add r7, r2, #0
	str r0, [r2, #8]
	ldr r0, [sp]
	add r5, r2, #0
	ldrb r1, [r0]
	add r0, r2, #0
	add r0, #0x68
	strb r1, [r0]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r3, [r4, r0]
	add r1, r2, #0
	add r1, #0x69
	add r0, r0, #1
	strb r3, [r1]
	ldrb r1, [r4, r0]
	add r0, r2, #0
	add r0, #0x6a
	strb r1, [r0]
	add r0, r2, #0
	mov r1, #0
	add r0, #0x6b
	strb r1, [r0]
	ldr r0, [sp]
	ldrb r3, [r0, #1]
	add r0, r2, #0
	add r0, #0x6c
	strb r3, [r0]
	ldr r0, [sp]
	ldrh r3, [r0, #2]
	add r0, r2, #0
	add r0, #0x6e
	strh r3, [r0]
	ldr r0, [sp]
	ldr r3, [sp]
	ldr r0, [r0, #4]
	add r4, r3, #0
	str r0, [r2, #0x70]
_0224DA92:
	ldrh r0, [r3, #8]
	add r3, r3, #2
	strh r0, [r7, #0x28]
	ldr r0, [sp]
	add r7, r7, #2
	add r0, r0, r1
	str r0, [sp, #0x10]
	ldrb r0, [r0, #0x10]
	str r0, [sp, #8]
	add r0, r2, r1
	ldr r6, [sp, #8]
	add r0, #0x30
	strb r6, [r0]
	ldr r0, [sp, #0x10]
	add r6, r2, r1
	ldrb r0, [r0, #0x14]
	str r6, [sp, #4]
	add r6, #0x34
	str r0, [sp, #0xc]
	strb r0, [r6]
	ldr r0, [sp, #0x10]
	str r6, [sp, #4]
	add r6, r2, r1
	ldrb r0, [r0, #0x18]
	add r6, #0x38
	add r1, r1, #1
	strb r0, [r6]
	ldr r0, [r4, #0x1c]
	add r4, r4, #4
	str r0, [r5, #0x3c]
	add r5, r5, #4
	cmp r1, #4
	blt _0224DA92
	ldr r0, _0224DAE4 ; =MOD11_0224FD90
	add r1, r2, #0
	mov r2, #0
	bl FUN_0200CA44
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0224DAE4: .word MOD11_0224FD90

	thumb_func_start MOD11_0224DAE8
MOD11_0224DAE8: ; 0x0224DAE8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #5
	mov r1, #0x10
	add r6, r2, #0
	bl AllocFromHeap
	add r4, r0, #0
	str r7, [r4]
	ldr r0, [r5, #0x20]
	str r0, [r4, #4]
	ldrb r0, [r6]
	strb r0, [r4, #8]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	add r0, r0, #1
	strb r1, [r4, #9]
	ldrb r0, [r5, r0]
	mov r1, #0
	add r3, r1, #0
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xb]
	ldrb r0, [r6, #1]
	strb r0, [r4, #0xc]
	ldrh r0, [r6, #2]
	lsl r2, r0, #1
	ldr r0, _0224DB44 ; =MOD11_0225E84A
	ldrh r0, [r0, r2]
	mov r2, #0x10
	str r0, [sp]
	ldr r0, [r4, #4]
	bl FUN_02007E68
	ldr r0, [r4, #4]
	mov r1, #0x2d
	mov r2, #1
	bl FUN_02007558
	ldr r0, _0224DB48 ; =MOD11_0224FFF0
	add r1, r4, #0
	mov r2, #0
	bl FUN_0200CA44
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224DB44: .word MOD11_0225E84A
_0224DB48: .word MOD11_0224FFF0

	thumb_func_start MOD11_0224DB4C
MOD11_0224DB4C: ; 0x0224DB4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r6, r0, #0
	add r5, r1, #0
	str r2, [sp, #0x24]
	bl MOD11_02230068
	str r0, [sp, #0x2c]
	mov r0, #5
	mov r1, #0x24
	bl AllocFromHeap
	add r4, r0, #0
	mov r2, #0
	ldr r0, _0224DCCC ; =0x00000195
	strb r2, [r4, #0x12]
	ldrb r0, [r5, r0]
	mov r1, #1
	tst r0, r1
	beq _0224DB9C
	mov r0, #2
	strb r0, [r4, #0x13]
	add r0, r6, #0
	bl MOD11_02230088
	str r0, [r4, #8]
	ldr r1, _0224DCCC ; =0x00000195
	ldr r0, [r0]
	ldrb r2, [r5, r1]
	mov r1, #1
	and r2, r1
	add r3, r2, #0
	mov r1, #6
	mul r3, r1
	ldr r1, _0224DCD0 ; =MOD8_0222D550
	mov r2, #0x58
	ldrsh r1, [r1, r3]
	bl FUN_0200C714
	b _0224DBC2
_0224DB9C:
	add r0, r6, #0
	add r1, r2, #0
	strb r2, [r4, #0x13]
	bl MOD11_02230088
	str r0, [r4, #8]
	ldr r1, _0224DCCC ; =0x00000195
	ldr r0, [r0]
	ldrb r2, [r5, r1]
	mov r1, #1
	and r2, r1
	add r3, r2, #0
	mov r1, #6
	mul r3, r1
	ldr r1, _0224DCD0 ; =MOD8_0222D550
	mov r2, #0x88
	ldrsh r1, [r1, r3]
	bl FUN_0200C714
_0224DBC2:
	add r0, r6, #0
	bl MOD11_0222FF74
	mov r1, #8
	tst r0, r1
	bne _0224DBE4
	add r0, r6, #0
	bl MOD11_0222FF74
	mov r1, #0x10
	tst r0, r1
	beq _0224DBEC
	ldr r0, _0224DCCC ; =0x00000195
	ldrb r1, [r5, r0]
	mov r0, #1
	tst r0, r1
	beq _0224DBEC
_0224DBE4:
	ldr r0, _0224DCCC ; =0x00000195
	ldrb r0, [r5, r0]
	str r0, [sp, #0x28]
	b _0224DBF6
_0224DBEC:
	ldr r0, _0224DCCC ; =0x00000195
	ldrb r1, [r5, r0]
	mov r0, #1
	and r0, r1
	str r0, [sp, #0x28]
_0224DBF6:
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	add r0, r6, #0
	bl MOD11_0223021C
	add r3, r0, #0
	ldr r1, [sp, #0x24]
	lsl r3, r3, #0x18
	ldrh r1, [r1, #2]
	ldrb r2, [r4, #0x13]
	add r0, sp, #0x30
	lsr r3, r3, #0x18
	bl FUN_02068FE0
	ldr r0, [sp, #0x28]
	mov r1, #6
	add r7, r0, #0
	mul r7, r1
	ldr r0, _0224DCD4 ; =MOD8_0222D552
	mov r1, #0
	ldrsh r0, [r0, r7]
	ldr r3, _0224DCD0 ; =MOD8_0222D550
	add r2, sp, #0x30
	str r0, [sp]
	ldr r0, _0224DCD8 ; =MOD8_0222D554
	ldrsh r3, [r3, r7]
	ldrsh r0, [r0, r7]
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r0, #0x65
	str r1, [sp, #0x14]
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r1, [sp, #0x20]
	ldr r1, [sp, #0x2c]
	add r0, r6, #0
	bl MOD11_02253A88
	str r0, [r5, #0x1c]
	str r0, [r4, #4]
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	bne _0224DC80
	add r0, r6, #0
	bl MOD11_0222FF74
	mov r1, #0x22
	lsl r1, r1, #4
	tst r0, r1
	bne _0224DC80
	ldr r0, [sp, #0x24]
	ldrh r0, [r0, #2]
	bl FUN_0206AA30
	ldr r3, _0224DCCC ; =0x00000195
	add r2, r0, #0
	ldrb r3, [r5, r3]
	ldr r1, [sp, #0x28]
	add r0, r6, #0
	asr r3, r3, #1
	bl MOD11_02254308
	str r0, [r5, #0x18]
	str r0, [r4, #0xc]
_0224DC80:
	ldr r0, [sp, #0x28]
	lsl r1, r0, #2
	ldr r0, _0224DCDC ; =MOD8_0222D538
	ldrsh r0, [r0, r1]
	strh r0, [r4, #0x14]
	ldr r0, [sp, #0x24]
	str r6, [r4]
	ldrb r0, [r0]
	strb r0, [r4, #0x10]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	add r0, r0, #1
	strb r1, [r4, #0x11]
	ldrb r0, [r5, r0]
	str r0, [r4, #0x18]
	mov r0, #0
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0224DCAE
	cmp r0, #2
	bne _0224DCBE
_0224DCAE:
	add r0, r6, #0
	bl MOD11_0222FF68
	mov r1, #3
	mov r2, #2
	mov r3, #0x84
	bl BgSetPosTextAndCommit
_0224DCBE:
	ldr r0, _0224DCE0 ; =MOD11_02250060
	add r1, r4, #0
	mov r2, #0
	bl FUN_0200CA44
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224DCCC: .word 0x00000195
_0224DCD0: .word MOD8_0222D550
_0224DCD4: .word MOD8_0222D552
_0224DCD8: .word MOD8_0222D554
_0224DCDC: .word MOD8_0222D538
_0224DCE0: .word MOD11_02250060

	thumb_func_start MOD11_0224DCE4
MOD11_0224DCE4: ; 0x0224DCE4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #5
	mov r1, #0x1c
	add r6, r2, #0
	bl AllocFromHeap
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4, #0xa]
	str r7, [r4]
	ldrb r1, [r6]
	strb r1, [r4, #8]
	ldrb r1, [r6, #1]
	str r1, [r4, #0x10]
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r2, [r5, r1]
	strb r2, [r4, #9]
	str r5, [r4, #4]
	add r2, r1, #1
	ldrb r3, [r5, r2]
	mov r2, #1
	tst r2, r3
	beq _0224DD1E
	mov r1, #2
	strb r1, [r4, #0xb]
	b _0224DD30
_0224DD1E:
	ldrb r1, [r5, r1]
	add r0, r7, #0
	bl MOD11_02230188
	mov r1, #0
	strb r1, [r4, #0xb]
	ldrb r0, [r0, #1]
	bl FUN_0206AA30
_0224DD30:
	str r0, [r4, #0xc]
	ldr r0, _0224DD40 ; =MOD11_02250338
	add r1, r4, #0
	mov r2, #0
	bl FUN_0200CA44
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224DD40: .word MOD11_02250338

	thumb_func_start MOD11_0224DD44
MOD11_0224DD44: ; 0x0224DD44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #0x10
	bl AllocFromHeap
	add r1, r0, #0
	mov r0, #0
	strb r0, [r1, #0xa]
	add r2, r4, #0
	str r5, [r1]
	add r2, #0x94
	ldrb r2, [r2]
	strb r2, [r1, #8]
	mov r2, #0x65
	lsl r2, r2, #2
	ldrb r3, [r4, r2]
	add r2, r2, #1
	strb r3, [r1, #9]
	str r4, [r1, #4]
	ldrb r3, [r4, r2]
	mov r2, #1
	tst r2, r3
	beq _0224DD7A
	mov r0, #2
	b _0224DD7A
_0224DD7A:
	strb r0, [r1, #0xb]
	ldr r0, _0224DD88 ; =MOD11_022508A4
	mov r2, #0
	bl FUN_0200CA44
	pop {r3, r4, r5, pc}
	nop
_0224DD88: .word MOD11_022508A4

	thumb_func_start MOD11_0224DD8C
MOD11_0224DD8C: ; 0x0224DD8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #0x10]
	add r5, r1, #0
	add r7, r2, #0
	bl MOD11_02230068
	str r0, [sp, #0x14]
	mov r0, #5
	mov r1, #0x10
	bl AllocFromHeap
	add r4, r0, #0
	mov r0, #0
	ldr r1, _0224DE38 ; =0x00000195
	strb r0, [r4, #0xa]
	ldrb r2, [r5, r1]
	mov r1, #1
	tst r1, r2
	beq _0224DDB8
	mov r0, #2
	b _0224DDB8
_0224DDB8:
	mov r1, #0x65
	strb r0, [r4, #0xb]
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	ldr r0, [sp, #0x10]
	bl MOD11_0223021C
	add r3, r0, #0
	lsl r3, r3, #0x18
	ldrh r1, [r7, #2]
	ldrb r2, [r4, #0xb]
	add r0, sp, #0x18
	lsr r3, r3, #0x18
	bl FUN_02068FE0
	ldr r0, _0224DE38 ; =0x00000195
	mov r1, #6
	ldrb r2, [r5, r0]
	sub r0, r0, #1
	ldr r3, _0224DE3C ; =MOD8_0222D576
	add r6, r2, #0
	mul r6, r1
	ldr r1, _0224DE40 ; =MOD8_0222D578
	ldr r2, _0224DE44 ; =MOD8_0222D574
	ldrsh r1, [r1, r6]
	ldrsh r2, [r2, r6]
	ldrsh r3, [r3, r6]
	str r1, [sp]
	ldrb r0, [r5, r0]
	add r1, sp, #0x18
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	bl FUN_020073A0
	str r0, [r5, #0x1c]
	str r0, [r4, #4]
	ldr r0, _0224DE38 ; =0x00000195
	ldr r2, _0224DE48 ; =MOD8_0222D538
	ldrb r1, [r5, r0]
	sub r0, r0, #1
	lsl r1, r1, #0x1f
	lsr r3, r1, #0x1d
	ldr r1, [r7, #4]
	add r2, r2, r3
	lsl r1, r1, #1
	ldrsh r1, [r1, r2]
	mov r2, #0
	strh r1, [r4, #0xc]
	ldr r1, [sp, #0x10]
	str r1, [r4]
	ldrb r1, [r7]
	strb r1, [r4, #8]
	ldrb r0, [r5, r0]
	add r1, r4, #0
	strb r0, [r4, #9]
	ldr r0, _0224DE4C ; =MOD11_0225092C
	bl FUN_0200CA44
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224DE38: .word 0x00000195
_0224DE3C: .word MOD8_0222D576
_0224DE40: .word MOD8_0222D578
_0224DE44: .word MOD8_0222D574
_0224DE48: .word MOD8_0222D538
_0224DE4C: .word MOD11_0225092C

	thumb_func_start MOD11_0224DE50
MOD11_0224DE50: ; 0x0224DE50
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r6, #0
	add r4, #0x28
	add r7, r0, #0
	add r5, r2, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #1
	bl MIi_CpuClearFast
	mov r0, #0x65
	str r7, [r4, #0xc]
	lsl r0, r0, #2
	ldrb r1, [r6, r0]
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
	add r0, r7, #0
	bl MOD11_0222FF74
	add r1, r0, #0
	ldr r0, _0224DF10 ; =0x00000195
	ldrb r0, [r6, r0]
	bl MOD11_02257F6C
	add r1, r4, #0
	add r1, #0x25
	strb r0, [r1]
	add r0, r4, #0
	ldrb r1, [r5]
	add r0, #0x4c
	strb r1, [r0]
	mov r0, #2
	ldrsh r0, [r5, r0]
	str r0, [r4, #0x28]
	ldrh r0, [r5, #4]
	str r0, [r4, #0x2c]
	add r0, r4, #0
	ldrb r1, [r5, #1]
	add r0, #0x48
	strb r1, [r0]
	ldrb r0, [r5, #7]
	lsl r0, r0, #0x19
	lsr r1, r0, #0x1e
	add r0, r4, #0
	add r0, #0x49
	strb r1, [r0]
	mov r1, #0
	str r1, [r4, #0x30]
	ldr r0, [r5, #8]
	str r0, [r4, #0x38]
	ldr r0, [r5, #0xc]
	str r0, [r4, #0x3c]
	add r0, r4, #0
	ldrb r2, [r5, #6]
	add r0, #0x26
	strb r2, [r0]
	ldrb r0, [r5, #7]
	lsl r0, r0, #0x1b
	lsr r2, r0, #0x1b
	add r0, r4, #0
	add r0, #0x4a
	strb r2, [r0]
	ldrb r0, [r5, #7]
	lsl r0, r0, #0x18
	lsr r2, r0, #0x1f
	add r0, r4, #0
	add r0, #0x4b
	strb r2, [r0]
	add r0, r4, #0
	ldrb r2, [r5, #0x14]
	add r0, #0x4d
	strb r2, [r0]
	add r0, r4, #0
	ldr r2, [r5, #0x10]
	add r0, #0x27
	strb r2, [r0]
	add r0, r4, #0
	bl MOD11_022572AC
	mov r2, #0
	ldr r1, [r4, #0x28]
	add r0, r4, #0
	mvn r2, r2
	bl MOD11_02256D70
	mov r2, #0xfa
	ldr r0, _0224DF14 ; =MOD11_022509B4
	add r1, r4, #0
	lsl r2, r2, #2
	bl FUN_0200CA44
	str r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224DF10: .word 0x00000195
_0224DF14: .word MOD11_022509B4

	thumb_func_start MOD11_0224DF18
MOD11_0224DF18: ; 0x0224DF18
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r5, #0
	add r4, #0x28
	add r6, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #1
	bl MIi_CpuClearFast
	mov r0, #0x65
	str r6, [r4, #0xc]
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
	add r5, #0x94
	add r0, r4, #0
	ldrb r1, [r5]
	add r0, #0x4c
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #1
	bl MOD11_02257334
	mov r2, #0xfa
	ldr r0, _0224DF5C ; =MOD11_02250A28
	add r1, r4, #0
	lsl r2, r2, #2
	bl FUN_0200CA44
	str r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0224DF5C: .word MOD11_02250A28

	thumb_func_start MOD11_0224DF60
MOD11_0224DF60: ; 0x0224DF60
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	str r1, [sp]
	mov r0, #5
	mov r1, #0x3c
	add r5, r2, #0
	bl AllocFromHeap
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x3c
	bl MIi_CpuClearFast
	mov r7, #0
	strb r7, [r4, #0xa]
	strb r7, [r4, #0xb]
	str r6, [r4]
	ldrb r0, [r5]
	mov r1, #0x65
	lsl r1, r1, #2
	strb r0, [r4, #8]
	ldr r0, [sp]
	add r3, r5, #0
	ldrb r0, [r0, r1]
	add r1, r1, #1
	add r6, r4, #0
	strb r0, [r4, #9]
	ldr r0, [sp]
	ldrb r1, [r0, r1]
	add r0, r4, #0
	add r0, #0x34
	strb r1, [r0]
	ldr r0, [sp]
	add r0, #0x28
	str r0, [r4, #4]
	add r0, r4, #0
	ldrb r1, [r5, #1]
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0x24
	ldrsh r0, [r5, r0]
	strh r0, [r4, #0x36]
	ldrh r0, [r5, #0x26]
	strh r0, [r4, #0x38]
	add r0, r5, #0
	add r0, #0x28
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x3a
	strb r1, [r0]
_0224DFC6:
	mov r2, #0
_0224DFC8:
	add r0, r3, r2
	ldrb r1, [r0, #8]
	add r0, r6, r2
	add r2, r2, #1
	strb r1, [r0, #0x10]
	cmp r2, #6
	blt _0224DFC8
	add r7, r7, #1
	add r3, r3, #6
	add r6, r6, #6
	cmp r7, #2
	blt _0224DFC6
	mov r0, #0
	add r3, r0, #0
_0224DFE4:
	add r2, r5, r0
	ldrb r1, [r2, #8]
	cmp r1, #2
	bne _0224DFF2
	add r1, r4, r0
	strb r3, [r1, #0x1c]
	b _0224DFF8
_0224DFF2:
	ldrb r2, [r2, #2]
	add r1, r4, r0
	strb r2, [r1, #0x1c]
_0224DFF8:
	add r0, r0, #1
	cmp r0, #6
	blt _0224DFE4
	mov r2, #0
	add r3, r5, #0
	add r6, r4, #0
_0224E004:
	ldrh r0, [r3, #0x14]
	add r7, r4, r2
	add r1, r5, r2
	strh r0, [r6, #0x24]
	ldrb r0, [r1, #0x1c]
	add r7, #0x2c
	add r1, #0x20
	strb r0, [r7]
	add r0, r4, r2
	ldrb r1, [r1]
	add r0, #0x30
	add r2, r2, #1
	strb r1, [r0]
	add r3, r3, #2
	add r6, r6, #2
	cmp r2, #4
	blt _0224E004
	ldr r0, [sp]
	add r1, r4, #0
	ldr r0, [r0]
	mov r2, #0
	bl FUN_0200CA44
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD11_0224E034
MOD11_0224E034: ; 0x0224E034
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	mov r0, #5
	mov r1, #0x24
	add r7, r2, #0
	bl AllocFromHeap
	add r3, r0, #0
	mov r1, #0x65
	mov r4, #0
	add r0, #0x20
	strb r4, [r0]
	ldr r0, [sp]
	str r5, [r3]
	add r0, #0x94
	ldrb r0, [r0]
	lsl r1, r1, #2
	add r5, r7, #0
	strb r0, [r3, #0x1c]
	ldr r0, [sp]
	add r6, r3, #0
	ldrb r0, [r0, r1]
	add r1, r1, #1
	strb r0, [r3, #0x1d]
	ldr r0, [sp]
	ldrb r0, [r0, r1]
	strb r0, [r3, #0x1e]
	ldr r0, [sp]
	add r0, #0x28
	str r0, [r3, #4]
	ldrb r0, [r7, #1]
	strb r0, [r3, #0x1f]
_0224E076:
	ldrh r0, [r5, #4]
	add r2, r7, r4
	add r1, r3, r4
	strh r0, [r6, #0xc]
	ldrb r0, [r2, #0xc]
	add r4, r4, #1
	add r5, r5, #2
	strb r0, [r1, #0x14]
	ldrb r0, [r2, #0x10]
	add r6, r6, #2
	cmp r4, #4
	strb r0, [r1, #0x18]
	blt _0224E076
	ldrh r0, [r7, #2]
	add r1, r3, #0
	mov r2, #0
	strh r0, [r3, #0x22]
	ldr r0, [sp]
	ldr r0, [r0, #4]
	bl FUN_0200CA44
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start MOD11_0224E0A4
MOD11_0224E0A4: ; 0x0224E0A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r7, r1, #0
	mov r0, #5
	mov r1, #0x34
	add r5, r2, #0
	bl AllocFromHeap
	add r6, r0, #0
	mov r0, #0
	strb r0, [r6, #0xf]
	ldr r0, [sp]
	str r0, [r6]
	add r0, r7, #0
	add r0, #0x94
	ldrb r0, [r0]
	strb r0, [r6, #0xc]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r1, [r7, r0]
	add r0, r0, #1
	strb r1, [r6, #0xd]
	ldrb r0, [r7, r0]
	strb r0, [r6, #0xe]
	ldrh r0, [r5, #2]
	strh r0, [r6, #0x30]
	add r0, r7, #0
	add r0, #0x28
	str r0, [r6, #4]
	add r0, r6, #0
	ldrb r1, [r5, #1]
	add r0, #0x32
	strb r1, [r0]
	ldr r0, [sp]
	add r1, sp, #4
	bl MOD11_02231504
	ldr r0, [sp]
	bl MOD11_0222FF84
	add r4, r0, #0
	ldr r0, [sp]
	bl MOD11_0222FF74
	mov r0, #0
	cmp r4, #0
	ble _0224E120
	add r1, r6, #0
_0224E106:
	ldrh r2, [r5, #4]
	add r0, r0, #1
	strh r2, [r1, #0x10]
	ldrh r2, [r5, #6]
	strh r2, [r1, #0x12]
	ldrh r2, [r5, #8]
	strh r2, [r1, #0x14]
	ldrh r2, [r5, #0xa]
	add r5, #8
	strh r2, [r1, #0x16]
	add r1, #8
	cmp r0, r4
	blt _0224E106
_0224E120:
	ldr r0, [r7, #8]
	add r1, r6, #0
	mov r2, #0
	bl FUN_0200CA44
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start MOD11_0224E130
MOD11_0224E130: ; 0x0224E130
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r1, [sp]
	mov r0, #5
	mov r1, #0x34
	str r2, [sp, #4]
	bl AllocFromHeap
	add r4, r0, #0
	mov r0, #5
	mov r1, #0x34
	bl AllocFromHeap
	str r0, [r4, #8]
	mov r0, #5
	mov r1, #0x38
	bl AllocFromHeap
	ldr r1, [r4, #8]
	str r0, [r1, #4]
	mov r0, #5
	bl SavArray_Party_alloc
	ldr r1, [r4, #8]
	mov r6, #0
	ldr r1, [r1, #4]
	ldr r3, [sp, #4]
	str r0, [r1]
	strb r6, [r4, #0xe]
	str r5, [r4]
	ldr r0, [sp, #4]
	mov r1, #0x65
	ldrb r0, [r0]
	lsl r1, r1, #2
	add r5, r4, #0
	strb r0, [r4, #0xc]
	ldr r0, [sp]
	ldrb r0, [r0, r1]
	add r1, r1, #1
	strb r0, [r4, #0xd]
	ldr r0, [sp]
	ldrb r0, [r0, r1]
	strb r0, [r4, #0xf]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #1]
	strb r0, [r4, #0x14]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x15]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #3]
	strb r0, [r4, #0x16]
_0224E19A:
	ldr r0, [sp, #4]
	ldr r1, [r4, #8]
	add r7, r0, r6
	ldrb r0, [r7, #4]
	add r1, r1, r6
	mov r2, #0
	strb r0, [r1, #0xc]
_0224E1A8:
	add r0, r3, r2
	ldrb r1, [r0, #8]
	add r0, r5, r2
	add r2, r2, #1
	strb r1, [r0, #0x18]
	cmp r2, #6
	blt _0224E1A8
	add r7, #0x20
	ldrb r1, [r7]
	add r0, r4, r6
	add r0, #0x30
	add r6, r6, #1
	strb r1, [r0]
	add r3, r3, #6
	add r5, r5, #6
	cmp r6, #4
	blt _0224E19A
	ldr r0, [sp]
	add r1, r4, #0
	ldr r0, [r0, #0xc]
	mov r2, #0
	bl FUN_0200CA44
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start MOD11_0224E1DC
MOD11_0224E1DC: ; 0x0224E1DC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	str r1, [sp]
	mov r0, #5
	mov r1, #0x34
	add r7, r2, #0
	bl AllocFromHeap
	add r2, r0, #0
	mov r3, #0
	strb r3, [r2, #0xa]
	str r4, [r2]
	ldrb r0, [r7]
	add r5, r7, #0
	add r6, r2, #0
	strb r0, [r2, #8]
	ldrb r0, [r7, #1]
	strb r0, [r2, #9]
	ldrb r0, [r7, #2]
	strb r0, [r2, #0xb]
	ldr r0, [r7, #0x20]
	str r0, [r2, #0x10]
	ldrb r0, [r7, #3]
	strb r0, [r2, #0x16]
	add r0, r7, #0
	strh r3, [r2, #0x14]
	add r0, #0x24
	ldrb r0, [r0]
	strb r0, [r2, #0x18]
_0224E216:
	add r0, r7, r3
	ldrb r1, [r0, #4]
	add r0, r2, r3
	mov r4, #0
	strb r1, [r0, #0xc]
_0224E220:
	add r0, r5, r4
	ldrb r1, [r0, #8]
	add r0, r6, r4
	add r4, r4, #1
	strb r1, [r0, #0x1c]
	cmp r4, #6
	blt _0224E220
	add r3, r3, #1
	add r5, r5, #6
	add r6, r6, #6
	cmp r3, #4
	blt _0224E216
	ldr r0, [sp]
	add r1, r2, #0
	ldr r0, [r0, #0x10]
	mov r2, #0
	bl FUN_0200CA44
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start MOD11_0224E248
MOD11_0224E248: ; 0x0224E248
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #5
	mov r1, #0x1c
	add r4, r2, #0
	bl AllocFromHeap
	add r1, r0, #0
	mov r2, #0
	strb r2, [r1, #0xe]
	str r6, [r1]
	ldrb r0, [r4]
	strb r0, [r1, #0xc]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	strb r0, [r1, #0xd]
	add r0, r5, #0
	add r0, #0x28
	str r0, [r1, #4]
	ldrh r0, [r4, #2]
	str r0, [r1, #0x10]
	ldrb r0, [r4, #1]
	strb r0, [r1, #0xf]
	ldr r0, [r4, #4]
	strh r0, [r1, #0x18]
	ldr r0, [r4, #8]
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x14]
	bl FUN_0200CA44
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start MOD11_0224E28C
MOD11_0224E28C: ; 0x0224E28C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	bl MOD11_022300C8
	str r0, [sp]
	mov r0, #5
	mov r1, #8
	bl AllocFromHeap
	add r4, r0, #0
	str r6, [r4]
	ldrb r0, [r5]
	mov r1, #0x65
	lsl r1, r1, #2
	strb r0, [r4, #4]
	ldrb r0, [r7, r1]
	strb r0, [r4, #5]
	ldrh r2, [r5, #2]
	lsl r0, r2, #1
	add r2, r2, r0
	add r0, sp, #4
	strh r2, [r0, #2]
	mov r2, #2
	strb r2, [r0, #1]
	ldrb r0, [r5, #1]
	ldrb r1, [r7, r1]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [sp, #8]
	add r0, r6, #0
	bl MOD11_02230E54
	add r3, r0, #0
	ldr r1, [sp]
	add r0, r6, #0
	add r2, sp, #4
	bl MOD11_0223178C
	strb r0, [r4, #6]
	ldr r0, _0224E2F0 ; =MOD11_02253008
	add r1, r4, #0
	mov r2, #0
	bl FUN_0200CA44
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224E2F0: .word MOD11_02253008

	thumb_func_start MOD11_0224E2F4
MOD11_0224E2F4: ; 0x0224E2F4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl MOD11_022300C4
	str r0, [sp]
	mov r0, #5
	mov r1, #8
	bl AllocFromHeap
	add r4, r0, #0
	add r0, r6, #0
	str r5, [r4]
	add r0, #0x94
	ldrb r0, [r0]
	strb r0, [r4, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	strb r0, [r4, #5]
	add r0, r5, #0
	bl MOD11_02230E54
	add r3, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r7, #0
	bl MOD11_0223178C
	strb r0, [r4, #6]
	ldr r0, _0224E340 ; =MOD11_02253008
	add r1, r4, #0
	mov r2, #0
	bl FUN_0200CA44
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224E340: .word MOD11_02253008

	thumb_func_start MOD11_0224E344
MOD11_0224E344: ; 0x0224E344
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	mov r0, #5
	mov r1, #0x70
	add r5, r2, #0
	bl AllocFromHeap
	add r4, r0, #0
	mov r1, #0
	add r0, #0x6a
	strb r1, [r0]
	str r7, [r4]
	add r0, r6, #0
	str r6, [r4, #4]
	add r0, #0x94
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x68
	strb r1, [r0]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r1, [r6, r0]
	add r0, r4, #0
	add r0, #0x69
	strb r1, [r0]
	add r0, r7, #0
	bl MOD11_02230070
	add r3, r4, #0
	str r0, [r4, #0xc]
	add r7, r5, #0
	add r3, #0x10
	mov r2, #0xb
_0224E388:
	ldmia r7!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224E388
	ldr r0, [r6, #0x20]
	str r0, [r4, #8]
	ldr r0, [r5, #0x4c]
	cmp r0, #1
	bne _0224E3A8
	ldr r0, [r5, #0x50]
	cmp r0, #0x19
	bne _0224E3A8
	mov r0, #0x1a
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r6, r0]
_0224E3A8:
	ldr r0, [r5, #0x4c]
	cmp r0, #1
	bne _0224E3BC
	ldr r0, [r5, #0x50]
	cmp r0, #0x1a
	bne _0224E3BC
	mov r0, #0x1a
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r6, r0]
_0224E3BC:
	ldrh r0, [r5, #2]
	add r1, r4, #0
	add r1, #0x6c
	str r0, [sp]
	add r0, r4, #0
	ldr r2, [r5, #0x4c]
	ldr r3, [r5, #0x50]
	add r0, #0x6b
	bl MOD11_022545B4
	ldr r0, _0224E3DC ; =MOD11_02252754
	add r1, r4, #0
	mov r2, #0
	bl FUN_0200CA44
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224E3DC: .word MOD11_02252754

	thumb_func_start MOD11_0224E3E0
MOD11_0224E3E0: ; 0x0224E3E0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #0xc
	bl AllocFromHeap
	add r1, r0, #0
	mov r2, #0
	strb r2, [r1, #9]
	str r5, [r1]
	ldr r0, [r4, #0x20]
	str r0, [r1, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	strb r0, [r1, #8]
	ldr r0, _0224E40C ; =MOD11_022529C0
	strb r2, [r1, #0xa]
	bl FUN_0200CA44
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224E40C: .word MOD11_022529C0

	thumb_func_start MOD11_0224E410
MOD11_0224E410: ; 0x0224E410
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	ldr r0, [r6, #0x2c]
	add r5, r2, #0
	cmp r0, #0
	bne _0224E422
	bl GF_AssertFail
_0224E422:
	add r4, r6, #0
	add r4, #0x28
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl MI_CpuFill8
	str r7, [r4, #0xc]
	add r0, r4, #0
	ldrb r1, [r5]
	add r0, #0x4c
	strb r1, [r0]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r1, [r6, r0]
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
	add r0, r7, #0
	bl MOD11_0222FF74
	add r1, r0, #0
	ldr r0, _0224E490 ; =0x00000195
	ldrb r0, [r6, r0]
	bl MOD11_02257F6C
	add r1, r4, #0
	add r1, #0x25
	strb r0, [r1]
	mov r0, #2
	ldrsh r0, [r5, r0]
	str r0, [r4, #0x28]
	ldrh r0, [r5, #4]
	str r0, [r4, #0x2c]
	ldr r0, [r5, #8]
	str r0, [r4, #0x30]
	add r0, r4, #0
	ldrb r1, [r5, #1]
	add r0, #0x48
	strb r1, [r0]
	ldr r1, [r5, #8]
	ldr r0, _0224E494 ; =0x00007FFF
	cmp r1, r0
	bne _0224E480
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x30]
_0224E480:
	mov r2, #0xfa
	ldr r0, _0224E498 ; =MOD11_02252A1C
	add r1, r4, #0
	lsl r2, r2, #2
	bl FUN_0200CA44
	str r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224E490: .word 0x00000195
_0224E494: .word 0x00007FFF
_0224E498: .word MOD11_02252A1C

	thumb_func_start MOD11_0224E49C
MOD11_0224E49C: ; 0x0224E49C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	ldr r0, [r6, #0x2c]
	add r5, r2, #0
	cmp r0, #0
	bne _0224E4AE
	bl GF_AssertFail
_0224E4AE:
	add r4, r6, #0
	add r4, #0x28
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl MI_CpuFill8
	str r7, [r4, #0xc]
	add r0, r4, #0
	ldrb r1, [r5]
	add r0, #0x4c
	strb r1, [r0]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r2, [r6, r0]
	add r1, r4, #0
	add r1, #0x24
	strb r2, [r1]
	ldr r1, [r5, #4]
	add r0, r0, #1
	str r1, [r4, #0x38]
	ldr r1, [r5, #0xc]
	str r1, [r4, #0x3c]
	ldr r2, [r5, #8]
	ldr r1, [r4, #0x38]
	sub r1, r2, r1
	str r1, [r4, #0x40]
	ldrb r0, [r6, r0]
	cmp r0, #0
	bne _0224E4FA
	mov r2, #0xfa
	ldr r0, _0224E50C ; =MOD11_02252A70
	add r1, r4, #0
	lsl r2, r2, #2
	bl FUN_0200CA44
	str r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0224E4FA:
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x24
	add r4, #0x4c
	ldrb r1, [r1]
	ldrb r2, [r4]
	bl MOD11_022567B8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224E50C: .word MOD11_02252A70

	thumb_func_start MOD11_0224E510
MOD11_0224E510: ; 0x0224E510
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #0x74
	str r2, [sp]
	bl AllocFromHeap
	add r1, r0, #0
	ldr r0, _0224E5F0 ; =0x00000195
	ldrb r2, [r4, r0]
	mov r0, #1
	tst r0, r2
	beq _0224E532
	mov r2, #2
	b _0224E534
_0224E532:
	mov r2, #0
_0224E534:
	add r0, r1, #0
	add r0, #0x67
	strb r2, [r0]
	add r0, r1, #0
	mov r2, #0
	add r0, #0x66
	strb r2, [r0]
	str r5, [r1]
	ldr r0, [sp]
	str r4, [r1, #4]
	ldrb r3, [r0]
	add r0, r1, #0
	add r0, #0x64
	strb r3, [r0]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r3, [r4, r0]
	add r0, r1, #0
	add r0, #0x65
	strb r3, [r0]
	ldr r0, [r4, #0x20]
	add r7, r1, #0
	str r0, [r1, #8]
	ldr r0, [sp]
	add r5, r1, #0
	ldrh r3, [r0, #2]
	add r0, r1, #0
	add r0, #0x68
	strh r3, [r0]
	ldr r0, [sp]
	ldrb r3, [r0, #1]
	add r0, r1, #0
	add r0, #0x6a
	strb r3, [r0]
	ldr r0, [sp]
	ldrb r3, [r0, #8]
	add r0, r1, #0
	add r0, #0x6b
	strb r3, [r0]
	ldr r0, [sp]
	ldr r0, [r0, #4]
	str r0, [r1, #0x6c]
	ldr r0, [sp]
	ldrb r3, [r0, #9]
	add r0, r1, #0
	add r0, #0x70
	strh r3, [r0]
	ldr r0, [sp]
	ldrb r3, [r0, #0xa]
	add r0, r1, #0
	add r0, #0x72
	strh r3, [r0]
	ldr r3, [sp]
	add r4, r3, #0
_0224E5A0:
	ldrh r0, [r3, #0xc]
	add r3, r3, #2
	strh r0, [r7, #0x24]
	ldr r0, [sp]
	add r7, r7, #2
	add r0, r0, r2
	str r0, [sp, #0x10]
	ldrb r0, [r0, #0x14]
	str r0, [sp, #8]
	add r0, r1, r2
	ldr r6, [sp, #8]
	add r0, #0x2c
	strb r6, [r0]
	ldr r0, [sp, #0x10]
	add r6, r1, r2
	ldrb r0, [r0, #0x18]
	str r6, [sp, #4]
	add r6, #0x30
	str r0, [sp, #0xc]
	strb r0, [r6]
	ldr r0, [sp, #0x10]
	str r6, [sp, #4]
	add r6, r1, r2
	ldrb r0, [r0, #0x1c]
	add r6, #0x34
	add r2, r2, #1
	strb r0, [r6]
	ldr r0, [r4, #0x20]
	add r4, r4, #4
	str r0, [r5, #0x38]
	add r5, r5, #4
	cmp r2, #4
	blt _0224E5A0
	ldr r0, _0224E5F4 ; =MOD11_02252B30
	mov r2, #0
	bl FUN_0200CA44
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0224E5F0: .word 0x00000195
_0224E5F4: .word MOD11_02252B30

	thumb_func_start MOD11_0224E5F8
MOD11_0224E5F8: ; 0x0224E5F8
	push {r3, r4, r5, lr}
	add r5, r2, #0
	ldr r2, _0224E624 ; =0x00000195
	mov r4, #1
	ldrb r2, [r1, r2]
	tst r2, r4
	beq _0224E60A
	mov r4, #0x75
	b _0224E60C
_0224E60A:
	sub r4, #0x76
_0224E60C:
	mov r2, #0x65
	lsl r2, r2, #2
	ldrb r1, [r1, r2]
	ldrb r2, [r5]
	bl MOD11_022567B8
	ldrh r0, [r5, #2]
	add r1, r4, #0
	bl FUN_020054A8
	pop {r3, r4, r5, pc}
	nop
_0224E624: .word 0x00000195

	thumb_func_start MOD11_0224E628
MOD11_0224E628: ; 0x0224E628
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #8
	bl AllocFromHeap
	add r1, r0, #0
	mov r2, #0
	strb r2, [r1, #6]
	add r0, r4, #0
	str r5, [r1]
	add r0, #0x94
	ldrb r0, [r0]
	strb r0, [r1, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	strb r0, [r1, #5]
	ldr r0, _0224E658 ; =MOD11_02252DB4
	bl FUN_0200CA44
	pop {r3, r4, r5, pc}
	nop
_0224E658: .word MOD11_02252DB4

	thumb_func_start MOD11_0224E65C
MOD11_0224E65C: ; 0x0224E65C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #0x68
	str r2, [sp]
	bl AllocFromHeap
	add r1, r0, #0
	str r5, [r1]
	ldr r0, [sp]
	str r4, [r1, #4]
	ldrb r2, [r0]
	add r0, r1, #0
	add r0, #0x60
	strb r2, [r0]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r2, [r4, r0]
	add r0, r1, #0
	add r0, #0x61
	strb r2, [r0]
	add r0, r1, #0
	mov r2, #0
	add r0, #0x62
	strb r2, [r0]
	ldr r0, [sp]
	add r7, r1, #0
	ldrb r3, [r0, #1]
	add r0, r1, #0
	add r0, #0x63
	strb r3, [r0]
	ldr r0, [sp]
	ldr r3, [sp]
	ldrb r0, [r0, #2]
	add r4, r3, #0
	add r5, r1, #0
	str r0, [r1, #0x64]
_0224E6AA:
	ldrh r0, [r3, #4]
	add r3, r3, #2
	strh r0, [r7, #0x20]
	ldr r0, [sp]
	add r7, r7, #2
	add r0, r0, r2
	str r0, [sp, #0x10]
	ldrb r0, [r0, #0xc]
	str r0, [sp, #8]
	add r0, r1, r2
	ldr r6, [sp, #8]
	add r0, #0x28
	strb r6, [r0]
	ldr r0, [sp, #0x10]
	add r6, r1, r2
	ldrb r0, [r0, #0x10]
	str r6, [sp, #4]
	add r6, #0x2c
	str r0, [sp, #0xc]
	strb r0, [r6]
	ldr r0, [sp, #0x10]
	str r6, [sp, #4]
	add r6, r1, r2
	ldrb r0, [r0, #0x14]
	add r6, #0x30
	add r2, r2, #1
	strb r0, [r6]
	ldr r0, [r4, #0x18]
	add r4, r4, #4
	str r0, [r5, #0x34]
	add r5, r5, #4
	cmp r2, #4
	blt _0224E6AA
	ldr r0, _0224E6F8 ; =MOD11_02252E50
	mov r2, #0
	bl FUN_0200CA44
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0224E6F8: .word MOD11_02252E50

	thumb_func_start MOD11_0224E6FC
MOD11_0224E6FC: ; 0x0224E6FC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0x2c]
	add r4, r2, #0
	cmp r0, #0
	bne _0224E70E
	bl GF_AssertFail
_0224E70E:
	ldrb r1, [r4, #1]
	add r0, r5, #0
	add r0, #0x72
	strb r1, [r0]
	add r0, r5, #0
	mov r2, #1
	ldr r1, [r5, #0x50]
	add r0, #0x28
	lsl r2, r2, #8
	bl MOD11_02256D70
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	ldrb r2, [r4]
	add r0, r6, #0
	bl MOD11_022567B8
	pop {r4, r5, r6, pc}

	thumb_func_start MOD11_0224E734
MOD11_0224E734: ; 0x0224E734
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	add r6, r0, #0
	add r7, r2, #0
	bl MOD11_02230140
	str r0, [sp, #4]
	mov r0, #5
	mov r1, #8
	bl AllocFromHeap
	add r4, r0, #0
	str r6, [r4]
	ldrb r0, [r7]
	strb r0, [r4, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	strb r0, [r4, #5]
	add r0, r6, #0
	bl MOD11_02230E54
	str r0, [sp]
	mov r2, #0x65
	lsl r2, r2, #2
	ldrb r2, [r5, r2]
	ldrb r3, [r7, #1]
	ldr r1, [sp, #4]
	add r0, r6, #0
	bl MOD11_02231684
	strb r0, [r4, #6]
	ldr r0, _0224E78C ; =MOD11_02253008
	add r1, r4, #0
	mov r2, #0
	bl FUN_0200CA44
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224E78C: .word MOD11_02253008

	thumb_func_start MOD11_0224E790
MOD11_0224E790: ; 0x0224E790
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r3, sp, #4
	add r6, r1, #0
	add r7, r2, #0
	bl MOD11_02253B74
	add r0, r5, #0
	bl MOD11_022300C4
	str r0, [sp]
	mov r0, #5
	mov r1, #8
	bl AllocFromHeap
	add r4, r0, #0
	str r5, [r4]
	ldrb r0, [r7]
	strb r0, [r4, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	strb r0, [r4, #5]
	add r0, r5, #0
	bl MOD11_02230E54
	add r3, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	add r2, sp, #4
	bl MOD11_0223178C
	strb r0, [r4, #6]
	ldr r0, _0224E7E4 ; =MOD11_02253008
	add r1, r4, #0
	mov r2, #0
	bl FUN_0200CA44
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224E7E4: .word MOD11_02253008

	thumb_func_start MOD11_0224E7E8
MOD11_0224E7E8: ; 0x0224E7E8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r3, sp, #4
	add r6, r1, #0
	add r7, r2, #0
	bl MOD11_02253C48
	add r0, r5, #0
	bl MOD11_022300C4
	str r0, [sp]
	mov r0, #5
	mov r1, #8
	bl AllocFromHeap
	add r4, r0, #0
	str r5, [r4]
	ldrb r0, [r7]
	strb r0, [r4, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	strb r0, [r4, #5]
	add r0, r5, #0
	bl MOD11_02230E54
	add r3, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	add r2, sp, #4
	bl MOD11_0223178C
	strb r0, [r4, #6]
	ldr r0, _0224E83C ; =MOD11_02253008
	add r1, r4, #0
	mov r2, #0
	bl FUN_0200CA44
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224E83C: .word MOD11_02253008

	thumb_func_start MOD11_0224E840
MOD11_0224E840: ; 0x0224E840
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r2, sp, #0
	add r6, r1, #0
	bl MOD11_02253D28
	add r0, r5, #0
	bl MOD11_022300C4
	add r7, r0, #0
	mov r0, #5
	mov r1, #8
	bl AllocFromHeap
	add r4, r0, #0
	str r5, [r4]
	mov r0, #0x22
	strb r0, [r4, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	strb r0, [r4, #5]
	add r0, r5, #0
	bl MOD11_02230E54
	add r3, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, sp, #0
	bl MOD11_0223178C
	strb r0, [r4, #6]
	ldr r0, _0224E890 ; =MOD11_02253008
	add r1, r4, #0
	mov r2, #0
	bl FUN_0200CA44
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0224E890: .word MOD11_02253008

	thumb_func_start MOD11_0224E894
MOD11_0224E894: ; 0x0224E894
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r3, sp, #4
	add r6, r1, #0
	add r7, r2, #0
	bl MOD11_02253DD4
	add r0, r5, #0
	bl MOD11_022300C4
	str r0, [sp]
	mov r0, #5
	mov r1, #8
	bl AllocFromHeap
	add r4, r0, #0
	str r5, [r4]
	ldrb r0, [r7]
	strb r0, [r4, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	strb r0, [r4, #5]
	add r0, r5, #0
	bl MOD11_02230E54
	add r3, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	add r2, sp, #4
	bl MOD11_0223178C
	strb r0, [r4, #6]
	ldr r0, _0224E8E8 ; =MOD11_02253008
	add r1, r4, #0
	mov r2, #0
	bl FUN_0200CA44
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224E8E8: .word MOD11_02253008

	thumb_func_start MOD11_0224E8EC
MOD11_0224E8EC: ; 0x0224E8EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #0xc
	bl AllocFromHeap
	add r1, r0, #0
	add r0, r4, #0
	str r5, [r1]
	add r0, #0x94
	ldrb r0, [r0]
	mov r2, #0
	strb r0, [r1, #8]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	add r4, #0x28
	strb r0, [r1, #9]
	strb r2, [r1, #0xa]
	ldr r0, _0224E920 ; =MOD11_02252FBC
	str r4, [r1, #4]
	bl FUN_0200CA44
	pop {r3, r4, r5, pc}
	nop
_0224E920: .word MOD11_02252FBC

	thumb_func_start MOD11_0224E924
MOD11_0224E924: ; 0x0224E924
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _0224E9B8 ; =0x00000196
	add r4, r2, #0
	ldrb r2, [r5, r1]
	add r6, r0, #0
	cmp r2, #0
	bne _0224E976
	bl MOD11_022300C4
	str r0, [sp]
	mov r0, #5
	mov r1, #0xc
	bl AllocFromHeap
	add r7, r0, #0
	str r6, [r7]
	ldrb r0, [r4]
	strb r0, [r7, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	strb r0, [r7, #5]
	mov r0, #0
	strb r0, [r7, #7]
	add r0, r6, #0
	bl MOD11_02230E54
	add r3, r0, #0
	ldr r1, [sp]
	add r0, r6, #0
	add r2, r4, #4
	bl MOD11_0223178C
	strb r0, [r7, #6]
	ldr r0, _0224E9BC ; =MOD11_0225304C
	add r1, r7, #0
	mov r2, #0
	bl FUN_0200CA44
	pop {r3, r4, r5, r6, r7, pc}
_0224E976:
	cmp r2, #1
	bne _0224E992
	sub r1, r1, #2
	ldrb r1, [r5, r1]
	bl MOD11_02256004
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	ldrb r2, [r4]
	add r0, r6, #0
	bl MOD11_022567B8
	pop {r3, r4, r5, r6, r7, pc}
_0224E992:
	bl MOD11_0222FF74
	mov r1, #4
	tst r0, r1
	bne _0224E9A8
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	add r0, r6, #0
	bl MOD11_02256004
_0224E9A8:
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	ldrb r2, [r4]
	add r0, r6, #0
	bl MOD11_022567B8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224E9B8: .word 0x00000196
_0224E9BC: .word MOD11_0225304C

	thumb_func_start MOD11_0224E9C0
MOD11_0224E9C0: ; 0x0224E9C0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r6, #0
	add r4, #0x28
	add r7, r0, #0
	add r5, r2, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #1
	bl MIi_CpuClearFast
	mov r0, #0x65
	str r7, [r4, #0xc]
	lsl r0, r0, #2
	ldrb r1, [r6, r0]
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
	add r0, r7, #0
	bl MOD11_0222FF74
	add r1, r0, #0
	ldr r0, _0224EA70 ; =0x00000195
	ldrb r0, [r6, r0]
	bl MOD11_02257F6C
	add r1, r4, #0
	add r1, #0x25
	strb r0, [r1]
	add r0, r4, #0
	ldrb r1, [r5]
	add r0, #0x4c
	mov r2, #0
	strb r1, [r0]
	mov r0, #2
	ldrsh r0, [r5, r0]
	str r0, [r4, #0x28]
	ldrh r0, [r5, #4]
	str r0, [r4, #0x2c]
	add r0, r4, #0
	ldrb r1, [r5, #1]
	add r0, #0x48
	strb r1, [r0]
	ldrb r0, [r5, #7]
	lsl r0, r0, #0x19
	lsr r1, r0, #0x1e
	add r0, r4, #0
	add r0, #0x49
	strb r1, [r0]
	str r2, [r4, #0x30]
	ldr r0, [r5, #8]
	sub r2, #0x21
	str r0, [r4, #0x38]
	ldr r0, [r5, #0xc]
	str r0, [r4, #0x3c]
	add r0, r4, #0
	ldrb r1, [r5, #6]
	add r0, #0x26
	strb r1, [r0]
	ldrb r0, [r5, #7]
	lsl r0, r0, #0x1b
	lsr r1, r0, #0x1b
	add r0, r4, #0
	add r0, #0x4a
	strb r1, [r0]
	ldrb r0, [r5, #7]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x1f
	add r0, r4, #0
	add r0, #0x4b
	strb r1, [r0]
	add r0, r4, #0
	ldr r1, [r5, #0x10]
	add r0, #0x27
	strb r1, [r0]
	ldr r1, [r4, #0x28]
	add r0, r4, #0
	bl MOD11_02256D70
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x24
	add r4, #0x4c
	ldrb r1, [r1]
	ldrb r2, [r4]
	bl MOD11_022567B8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224EA70: .word 0x00000195

	thumb_func_start MOD11_0224EA74
MOD11_0224EA74: ; 0x0224EA74
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #5
	mov r1, #0x10
	add r4, r2, #0
	bl AllocFromHeap
	add r1, r0, #0
	mov r2, #0
	strb r2, [r1, #0xa]
	str r5, [r1]
	ldrb r0, [r4]
	strb r0, [r1, #8]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	strb r0, [r1, #9]
	ldrh r0, [r4, #2]
	strh r0, [r1, #0xc]
	ldrb r0, [r4, #1]
	strb r0, [r1, #0xe]
	ldr r0, _0224EAA8 ; =MOD11_022533F4
	bl FUN_0200CA44
	pop {r4, r5, r6, pc}
	.align 2, 0
_0224EAA8: .word MOD11_022533F4

	thumb_func_start MOD11_0224EAAC
MOD11_0224EAAC: ; 0x0224EAAC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #5
	mov r1, #0x10
	add r4, r2, #0
	bl AllocFromHeap
	add r1, r0, #0
	mov r2, #0
	strb r2, [r1, #0xa]
	str r6, [r1]
	ldr r0, [r5, #0x20]
	str r0, [r1, #4]
	ldrb r0, [r4]
	strb r0, [r1, #8]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	strb r0, [r1, #9]
	ldrb r0, [r4, #1]
	strb r0, [r1, #0xb]
	strb r2, [r1, #0xc]
	ldrb r0, [r4, #2]
	strb r0, [r1, #0xd]
	ldr r0, _0224EAE8 ; =MOD11_0225352C
	bl FUN_0200CA44
	pop {r4, r5, r6, pc}
	nop
_0224EAE8: .word MOD11_0225352C

	thumb_func_start MOD11_0224EAEC
MOD11_0224EAEC: ; 0x0224EAEC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #5
	mov r1, #0x10
	add r4, r2, #0
	bl AllocFromHeap
	add r1, r0, #0
	mov r0, #0
	strb r0, [r1, #7]
	str r6, [r1]
	ldrb r2, [r4]
	strb r2, [r1, #4]
	mov r2, #0x65
	lsl r2, r2, #2
	ldrb r3, [r5, r2]
	add r2, r2, #1
	strb r3, [r1, #5]
	ldrb r2, [r5, r2]
	strb r2, [r1, #6]
_0224EB16:
	add r2, r4, r0
	ldrb r3, [r2, #2]
	add r2, r1, r0
	add r0, r0, #1
	strb r3, [r2, #8]
	cmp r0, #6
	blt _0224EB16
	ldr r0, _0224EB30 ; =MOD11_0225359C
	mov r2, #0
	strb r2, [r1, #0xe]
	bl FUN_0200CA44
	pop {r4, r5, r6, pc}
	.align 2, 0
_0224EB30: .word MOD11_0225359C

	thumb_func_start MOD11_0224EB34
MOD11_0224EB34: ; 0x0224EB34
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #0x10
	add r6, r2, #0
	bl AllocFromHeap
	add r1, r0, #0
	mov r2, #0
	strb r2, [r1, #7]
	str r5, [r1]
	ldrb r0, [r6]
	strb r0, [r1, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r3, [r4, r0]
	add r0, r0, #1
	strb r3, [r1, #5]
	ldrb r0, [r4, r0]
	strb r0, [r1, #6]
	ldr r0, _0224EB68 ; =MOD11_02253650
	strb r2, [r1, #0xe]
	bl FUN_0200CA44
	pop {r4, r5, r6, pc}
	.align 2, 0
_0224EB68: .word MOD11_02253650

	thumb_func_start MOD11_0224EB6C
MOD11_0224EB6C: ; 0x0224EB6C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #5
	mov r1, #0x10
	add r4, r2, #0
	bl AllocFromHeap
	add r1, r0, #0
	mov r0, #0
	strb r0, [r1, #7]
	str r6, [r1]
	ldrb r2, [r4]
	strb r2, [r1, #4]
	mov r2, #0x65
	lsl r2, r2, #2
	ldrb r3, [r5, r2]
	add r2, r2, #1
	strb r3, [r1, #5]
	ldrb r2, [r5, r2]
	strb r2, [r1, #6]
_0224EB96:
	add r2, r4, r0
	ldrb r3, [r2, #2]
	add r2, r1, r0
	add r0, r0, #1
	strb r3, [r2, #8]
	cmp r0, #6
	blt _0224EB96
	mov r0, #1
	strb r0, [r1, #0xe]
	ldr r0, _0224EBB4 ; =MOD11_0225359C
	mov r2, #0
	bl FUN_0200CA44
	pop {r4, r5, r6, pc}
	nop
_0224EBB4: .word MOD11_0225359C

	thumb_func_start MOD11_0224EBB8
MOD11_0224EBB8: ; 0x0224EBB8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #0x10
	add r6, r2, #0
	bl AllocFromHeap
	add r1, r0, #0
	mov r2, #0
	strb r2, [r1, #7]
	str r5, [r1]
	ldrb r0, [r6]
	strb r0, [r1, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r3, [r4, r0]
	add r0, r0, #1
	strb r3, [r1, #5]
	ldrb r0, [r4, r0]
	strb r0, [r1, #6]
	mov r0, #1
	strb r0, [r1, #0xe]
	ldr r0, _0224EBF0 ; =MOD11_02253650
	bl FUN_0200CA44
	pop {r4, r5, r6, pc}
	nop
_0224EBF0: .word MOD11_02253650

	thumb_func_start MOD11_0224EBF4
MOD11_0224EBF4: ; 0x0224EBF4
	push {r4, r5, lr}
	sub sp, #0x24
	add r4, r1, #0
	ldr r1, _0224EC44 ; =0x00000196
	add r5, r0, #0
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _0224EC32
	bl MOD11_022300C4
	add r1, r0, #0
	ldr r2, _0224EC48 ; =0x0000039B
	add r0, sp, #0
	strh r2, [r0, #2]
	mov r3, #0
	strb r3, [r0, #1]
	add r0, r5, #0
	add r2, sp, #0
	bl MOD11_0223178C
	add r0, r5, #0
	mov r1, #0
	bl MOD11_0222FF6C
	mov r1, #1
	bl WaitingIcon_new
	add r1, r0, #0
	add r0, r5, #0
	bl MOD11_022312C8
_0224EC32:
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x37
	bl MOD11_022567B8
	add sp, #0x24
	pop {r4, r5, pc}
	.align 2, 0
_0224EC44: .word 0x00000196
_0224EC48: .word 0x0000039B

	thumb_func_start MOD11_0224EC4C
MOD11_0224EC4C: ; 0x0224EC4C
	push {r4, r5, r6, lr}
	sub sp, #0x50
	mov r3, #0x65
	add r4, r1, #0
	lsl r3, r3, #2
	add r6, r2, #0
	ldrb r3, [r4, r3]
	add r1, r6, #0
	add r2, sp, #0
	add r5, r0, #0
	bl MOD11_0225452C
	add r0, sp, #0
	mov r1, #5
	bl MOD08_0222A494
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	ldrb r2, [r6]
	add r0, r5, #0
	bl MOD11_022567B8
	add sp, #0x50
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start MOD11_0224EC80
MOD11_0224EC80: ; 0x0224EC80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #0x10
	bl AllocFromHeap
	add r1, r0, #0
	mov r2, #0
	strb r2, [r1, #0xe]
	str r5, [r1]
	add r0, r4, #0
	str r4, [r1, #4]
	add r0, #0x94
	ldrb r0, [r0]
	strb r0, [r1, #0xc]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	strb r0, [r1, #0xd]
	ldr r0, [r4, #0x20]
	str r0, [r1, #8]
	ldr r0, _0224ECB4 ; =MOD11_022536D4
	bl FUN_0200CA44
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224ECB4: .word MOD11_022536D4

	thumb_func_start MOD11_0224ECB8
MOD11_0224ECB8: ; 0x0224ECB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #0x10
	bl AllocFromHeap
	add r1, r0, #0
	mov r2, #0
	strb r2, [r1, #0xe]
	str r5, [r1]
	add r0, r4, #0
	str r4, [r1, #4]
	add r0, #0x94
	ldrb r0, [r0]
	strb r0, [r1, #0xc]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	strb r0, [r1, #0xd]
	ldr r0, [r4, #0x20]
	str r0, [r1, #8]
	ldr r0, _0224ECEC ; =MOD11_02253720
	bl FUN_0200CA44
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224ECEC: .word MOD11_02253720

	thumb_func_start MOD11_0224ECF0
MOD11_0224ECF0: ; 0x0224ECF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r2, sp, #0
	add r6, r1, #0
	bl MOD11_02254108
	add r0, r5, #0
	bl MOD11_022300C4
	add r7, r0, #0
	mov r0, #5
	mov r1, #8
	bl AllocFromHeap
	add r4, r0, #0
	str r5, [r4]
	mov r0, #0x3b
	strb r0, [r4, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	strb r0, [r4, #5]
	add r0, r5, #0
	bl MOD11_02230E54
	add r3, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, sp, #0
	bl MOD11_0223178C
	strb r0, [r4, #6]
	ldr r0, _0224ED40 ; =MOD11_02253008
	add r1, r4, #0
	mov r2, #0
	bl FUN_0200CA44
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0224ED40: .word MOD11_02253008

	thumb_func_start MOD11_0224ED44
MOD11_0224ED44: ; 0x0224ED44
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r3, sp, #0
	add r6, r1, #0
	bl MOD11_022541C4
	add r0, r5, #0
	bl MOD11_022300C4
	add r7, r0, #0
	mov r0, #5
	mov r1, #8
	bl AllocFromHeap
	add r4, r0, #0
	str r5, [r4]
	mov r0, #0x3c
	strb r0, [r4, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	strb r0, [r4, #5]
	add r0, r5, #0
	bl MOD11_02230E54
	add r3, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, sp, #0
	bl MOD11_0223178C
	strb r0, [r4, #6]
	ldr r0, _0224ED94 ; =MOD11_02253008
	add r1, r4, #0
	mov r2, #0
	bl FUN_0200CA44
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0224ED94: .word MOD11_02253008

	thumb_func_start MOD11_0224ED98
MOD11_0224ED98: ; 0x0224ED98
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r2, sp, #0
	add r6, r1, #0
	bl MOD11_022542B4
	add r0, r5, #0
	bl MOD11_022300C4
	add r7, r0, #0
	mov r0, #5
	mov r1, #8
	bl AllocFromHeap
	add r4, r0, #0
	str r5, [r4]
	mov r0, #0x3d
	strb r0, [r4, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	strb r0, [r4, #5]
	add r0, r5, #0
	bl MOD11_02230E54
	add r3, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, sp, #0
	bl MOD11_0223178C
	strb r0, [r4, #6]
	ldr r0, _0224EDE8 ; =MOD11_02253008
	add r1, r4, #0
	mov r2, #0
	bl FUN_0200CA44
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0224EDE8: .word MOD11_02253008

	thumb_func_start MOD11_0224EDEC
MOD11_0224EDEC: ; 0x0224EDEC
	push {r4, r5, r6, lr}
	sub sp, #0x50
	mov r3, #0x65
	add r4, r1, #0
	lsl r3, r3, #2
	add r6, r2, #0
	ldrb r3, [r4, r3]
	add r1, r6, #0
	add r2, sp, #0
	add r5, r0, #0
	bl MOD11_0225452C
	add r0, sp, #0
	mov r1, #5
	bl MOD08_0222A568
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	ldrb r2, [r6]
	add r0, r5, #0
	bl MOD11_022567B8
	add sp, #0x50
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start MOD11_0224EE20
MOD11_0224EE20: ; 0x0224EE20
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	ldr r0, _0224EE70 ; =0x00000195
	mov r1, #1
	ldrb r0, [r5, r0]
	add r4, r2, #0
	tst r0, r1
	beq _0224EE36
	mov r1, #0x75
	b _0224EE38
_0224EE36:
	sub r1, #0x76
_0224EE38:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0224EE48
	cmp r0, #1
	beq _0224EE58
	cmp r0, #2
	beq _0224EE50
	b _0224EE5E
_0224EE48:
	ldr r0, _0224EE74 ; =0x000006FE
	bl FUN_020054A8
	b _0224EE5E
_0224EE50:
	ldr r0, _0224EE78 ; =0x000006FC
	bl FUN_020054A8
	b _0224EE5E
_0224EE58:
	ldr r0, _0224EE7C ; =0x000006FD
	bl FUN_020054A8
_0224EE5E:
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	ldrb r2, [r4]
	add r0, r6, #0
	bl MOD11_022567B8
	pop {r4, r5, r6, pc}
	nop
_0224EE70: .word 0x00000195
_0224EE74: .word 0x000006FE
_0224EE78: .word 0x000006FC
_0224EE7C: .word 0x000006FD

	thumb_func_start MOD11_0224EE80
MOD11_0224EE80: ; 0x0224EE80
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r6, r0, #0
	ldrh r0, [r4, #2]
	add r5, r1, #0
	bl FUN_0200521C
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	ldrb r2, [r4]
	add r0, r6, #0
	bl MOD11_022567B8
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start MOD11_0224EEA0
MOD11_0224EEA0: ; 0x0224EEA0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x6c
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	bl MOD11_02230070
	ldrb r1, [r4, #0x12]
	add r5, r0, #0
	cmp r1, #5
	bls _0224EEB8
	b _0224F2C2
_0224EEB8:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224EEC4: ; jump table
	.short _0224EED0 - _0224EEC4 - 2 ; case 0
	.short _0224EEDA - _0224EEC4 - 2 ; case 1
	.short _0224EEE8 - _0224EEC4 - 2 ; case 2
	.short _0224F15E - _0224EEC4 - 2 ; case 3
	.short _0224F1B2 - _0224EEC4 - 2 ; case 4
	.short _0224F1D0 - _0224EEC4 - 2 ; case 5
_0224EED0:
	mov r0, #0x1c
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x12]
	add r0, r0, #1
	strb r0, [r4, #0x12]
_0224EEDA:
	ldr r0, [r4, #0x20]
	sub r0, r0, #1
	str r0, [r4, #0x20]
	bne _0224EFAE
	ldrb r0, [r4, #0x12]
	add r0, r0, #1
	strb r0, [r4, #0x12]
_0224EEE8:
	ldrb r0, [r4, #0x13]
	add r1, sp, #0x10
	cmp r0, #2
	ldr r0, [r4, #0xc]
	beq _0224EEF4
	b _0224F040
_0224EEF4:
	ldr r0, [r0]
	add r1, #2
	add r2, sp, #0x10
	bl FUN_0200C7A0
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	beq _0224EF08
	cmp r0, #3
	bne _0224EF2A
_0224EF08:
	add r1, sp, #0x10
	mov r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, #0xc0
	ldr r0, [r4, #0xc]
	bge _0224EF20
	ldr r0, [r0]
	mov r1, #8
	mov r2, #0
	bl FUN_0200C82C
	b _0224EF2A
_0224EF20:
	ldr r0, [r0]
	mov r1, #0xc0
	mov r2, #0x58
	bl FUN_0200C714
_0224EF2A:
	ldr r0, [r4, #0xc]
	add r1, sp, #0x10
	ldr r0, [r0]
	add r1, #2
	add r2, sp, #0x10
	bl FUN_0200C7A0
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	bne _0224EF4E
	add r3, sp, #0x10
	mov r2, #2
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #8]
	mov r1, #0
	bl FUN_02007558
	b _0224EF9E
_0224EF4E:
	cmp r0, #3
	bne _0224EF78
	ldr r0, [r4, #8]
	mov r1, #0
	bl FUN_0200782C
	add r3, sp, #0x10
	mov r2, #2
	ldrsh r1, [r3, r2]
	sub r0, r0, r1
	strh r0, [r3, #2]
	ldrsh r0, [r3, r2]
	mov r1, #0
	sub r0, #0x18
	strh r0, [r3, #2]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #8]
	neg r2, r2
	bl FUN_020079E0
	b _0224EF9E
_0224EF78:
	cmp r0, #5
	bne _0224EF9E
	ldr r0, [r4, #8]
	mov r1, #0
	bl FUN_0200782C
	add r3, sp, #0x10
	mov r2, #2
	ldrsh r1, [r3, r2]
	sub r0, r1, r0
	strh r0, [r3, #2]
	ldrsh r0, [r3, r2]
	mov r1, #0
	sub r0, #0x10
	strh r0, [r3, #2]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #8]
	bl FUN_020079E0
_0224EF9E:
	ldr r0, [r4, #8]
	mov r1, #0
	bl FUN_0200782C
	mov r1, #0x14
	ldrsh r1, [r4, r1]
	cmp r0, r1
	bge _0224EFB0
_0224EFAE:
	b _0224F2D8
_0224EFB0:
	ldr r0, [r4, #8]
	mov r1, #1
	bl FUN_02007314
	ldr r0, [r4, #8]
	mov r1, #0x2c
	mov r2, #0
	bl FUN_02007558
	ldr r0, [r4, #8]
	mov r1, #0x2d
	mov r2, #0
	bl FUN_02007558
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #8]
	mov r1, #0
	bl FUN_02007558
	ldr r0, [r4]
	bl MOD11_02230E80
	ldr r1, [r4, #0x24]
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldrb r1, [r4, #0x11]
	str r1, [sp, #8]
	ldrh r2, [r4, #0x16]
	ldrb r3, [r4, #0x13]
	ldr r1, [r4, #8]
	bl FUN_02069038
	ldrb r1, [r4, #0x11]
	ldr r0, [r4]
	bl MOD11_02230E88
	mov r1, #0x7f
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #5
	str r1, [sp, #8]
	ldrh r2, [r4, #0x16]
	ldr r1, [r4, #0x18]
	mov r3, #0x75
	bl FUN_02069FB0
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	beq _0224F01C
	cmp r0, #3
	bne _0224F028
_0224F01C:
	ldr r0, [r4, #0xc]
	mov r1, #0xc0
	ldr r0, [r0]
	mov r2, #0x58
	bl FUN_0200C714
_0224F028:
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #8]
	mov r1, #8
	add r3, r2, #0
	bl FUN_02007E68
	ldrb r0, [r4, #0x12]
	add sp, #0x6c
	add r0, r0, #1
	strb r0, [r4, #0x12]
	pop {r3, r4, r5, r6, pc}
_0224F040:
	ldr r0, [r0]
	add r1, #2
	add r2, sp, #0x10
	bl FUN_0200C7A0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0224F054
	cmp r0, #2
	bne _0224F076
_0224F054:
	add r0, sp, #0x10
	mov r1, #2
	ldrsh r0, [r0, r1]
	cmp r0, #0x40
	ldr r0, [r4, #0xc]
	ble _0224F06C
	ldr r0, [r0]
	sub r1, #0xa
	mov r2, #0
	bl FUN_0200C82C
	b _0224F076
_0224F06C:
	ldr r0, [r0]
	mov r1, #0x40
	mov r2, #0x88
	bl FUN_0200C714
_0224F076:
	ldr r0, [r4, #0xc]
	add r1, sp, #0x10
	ldr r0, [r0]
	add r1, #2
	add r2, sp, #0x10
	bl FUN_0200C7A0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _0224F09A
	add r3, sp, #0x10
	mov r2, #2
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #8]
	mov r1, #0
	bl FUN_02007558
	b _0224F0EA
_0224F09A:
	cmp r0, #2
	bne _0224F0C2
	ldr r0, [r4, #8]
	mov r1, #0
	bl FUN_0200782C
	add r3, sp, #0x10
	mov r2, #2
	ldrsh r1, [r3, r2]
	sub r0, r1, r0
	strh r0, [r3, #2]
	ldrsh r0, [r3, r2]
	mov r1, #0
	sub r0, #0x18
	strh r0, [r3, #2]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #8]
	bl FUN_020079E0
	b _0224F0EA
_0224F0C2:
	cmp r0, #4
	bne _0224F0EA
	ldr r0, [r4, #8]
	mov r1, #0
	bl FUN_0200782C
	add r3, sp, #0x10
	mov r2, #2
	ldrsh r1, [r3, r2]
	sub r0, r0, r1
	strh r0, [r3, #2]
	ldrsh r0, [r3, r2]
	mov r1, #0
	sub r0, #0x10
	strh r0, [r3, #2]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #8]
	neg r2, r2
	bl FUN_020079E0
_0224F0EA:
	mov r0, #0x14
	ldrsh r5, [r4, r0]
	ldr r0, [r4, #8]
	mov r1, #0
	bl FUN_0200782C
	cmp r0, r5
	bgt _0224F1C0
	ldr r0, [r4, #8]
	mov r1, #0
	add r2, r5, #0
	bl FUN_02007558
	ldr r0, [r4]
	bl MOD11_02230E80
	ldr r1, [r4, #0x24]
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldrb r1, [r4, #0x11]
	str r1, [sp, #8]
	ldrh r2, [r4, #0x16]
	ldrb r3, [r4, #0x13]
	ldr r1, [r4, #8]
	bl FUN_02069038
	ldrb r1, [r4, #0x11]
	ldr r0, [r4]
	bl MOD11_02230E88
	mov r1, #0x7f
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r3, #5
	str r3, [sp, #8]
	ldrh r2, [r4, #0x16]
	ldr r1, [r4, #0x18]
	sub r3, #0x7a
	bl FUN_02069FB0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0224F148
	cmp r0, #2
	bne _0224F154
_0224F148:
	ldr r0, [r4, #0xc]
	mov r1, #0x40
	ldr r0, [r0]
	mov r2, #0x88
	bl FUN_0200C714
_0224F154:
	ldrb r0, [r4, #0x12]
	add sp, #0x6c
	add r0, r0, #1
	strb r0, [r4, #0x12]
	pop {r3, r4, r5, r6, pc}
_0224F15E:
	ldr r0, [r4]
	bl MOD11_02230E80
	ldrb r1, [r4, #0x11]
	bl FUN_02014D7C
	cmp r0, #1
	bne _0224F1C0
	ldr r0, [r4, #8]
	bl FUN_02007390
	cmp r0, #0
	bne _0224F1C0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0224F1AA
	ldrb r1, [r4, #0x11]
	mov r0, #0xb
	add r2, sp, #0x14
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl MOD11_02256854
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x14
	bl MOD11_02254404
	mov r0, #4
	add sp, #0x6c
	strb r0, [r4, #0x12]
	pop {r3, r4, r5, r6, pc}
_0224F1AA:
	mov r0, #0xff
	add sp, #0x6c
	strb r0, [r4, #0x12]
	pop {r3, r4, r5, r6, pc}
_0224F1B2:
	bl MOD08_02212384
	add r0, r5, #0
	bl MOD08_022123A0
	cmp r0, #0
	beq _0224F1C2
_0224F1C0:
	b _0224F2D8
_0224F1C2:
	add r0, r5, #0
	bl MOD08_022123B0
	mov r0, #0xff
	add sp, #0x6c
	strb r0, [r4, #0x12]
	pop {r3, r4, r5, r6, pc}
_0224F1D0:
	ldrb r5, [r4, #0x13]
	cmp r5, #2
	bne _0224F25E
	ldr r0, [r4, #8]
	mov r1, #1
	bl FUN_02007314
	ldr r0, [r4, #8]
	mov r1, #0x2c
	mov r2, #0
	bl FUN_02007558
	ldr r0, [r4, #8]
	mov r1, #0x2d
	mov r2, #0
	bl FUN_02007558
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #8]
	mov r1, #0
	bl FUN_02007558
	ldr r0, [r4]
	bl MOD11_02230E80
	ldr r1, [r4, #0x24]
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldrb r1, [r4, #0x11]
	str r1, [sp, #8]
	ldrh r2, [r4, #0x16]
	ldrb r3, [r4, #0x13]
	ldr r1, [r4, #8]
	bl FUN_02069038
	ldrb r1, [r4, #0x11]
	ldr r0, [r4]
	bl MOD11_02230E88
	mov r1, #0x7f
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #5
	str r1, [sp, #8]
	ldrh r2, [r4, #0x16]
	ldr r1, [r4, #0x18]
	mov r3, #0x75
	bl FUN_02069FB0
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	beq _0224F242
	cmp r0, #3
	bne _0224F24E
_0224F242:
	ldr r0, [r4, #0xc]
	mov r1, #0xc0
	ldr r0, [r0]
	mov r2, #0x58
	bl FUN_0200C714
_0224F24E:
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #8]
	mov r1, #8
	add r3, r2, #0
	bl FUN_02007E68
	b _0224F2BA
_0224F25E:
	ldr r0, [r4]
	bl MOD11_02230E80
	ldr r1, [r4, #0x24]
	add r3, r5, #0
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	ldrb r1, [r4, #0x11]
	str r1, [sp, #8]
	ldrh r2, [r4, #0x16]
	ldr r1, [r4, #8]
	bl FUN_02069038
	ldrb r1, [r4, #0x11]
	ldr r0, [r4]
	bl MOD11_02230E88
	mov r1, #0x7f
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r3, #5
	str r3, [sp, #8]
	ldrh r2, [r4, #0x16]
	ldr r1, [r4, #0x18]
	sub r3, #0x7a
	bl FUN_02069FB0
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #8]
	mov r1, #0
	bl FUN_02007558
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0224F2AE
	cmp r0, #2
	bne _0224F2BA
_0224F2AE:
	ldr r0, [r4, #0xc]
	mov r1, #0x40
	ldr r0, [r0]
	mov r2, #0x88
	bl FUN_0200C714
_0224F2BA:
	mov r0, #3
	add sp, #0x6c
	strb r0, [r4, #0x12]
	pop {r3, r4, r5, r6, pc}
_0224F2C2:
	ldrb r1, [r4, #0x11]
	ldrb r2, [r4, #0x10]
	ldr r0, [r4]
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	add r0, r6, #0
	bl FUN_0200CAB4
_0224F2D8:
	add sp, #0x6c
	pop {r3, r4, r5, r6, pc}

	thumb_func_start MOD11_0224F2DC
MOD11_0224F2DC: ; 0x0224F2DC
	push {r4, r5, lr}
	sub sp, #0x9c
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	cmp r0, #7
	bls _0224F2F0
	b _0224F7A2
_0224F2F0:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224F2FC: ; jump table
	.short _0224F30C - _0224F2FC - 2 ; case 0
	.short _0224F322 - _0224F2FC - 2 ; case 1
	.short _0224F366 - _0224F2FC - 2 ; case 2
	.short _0224F4B0 - _0224F2FC - 2 ; case 3
	.short _0224F4CC - _0224F2FC - 2 ; case 4
	.short _0224F6E2 - _0224F2FC - 2 ; case 5
	.short _0224F6F6 - _0224F2FC - 2 ; case 6
	.short _0224F77C - _0224F2FC - 2 ; case 7
_0224F30C:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x96
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x83
	strb r1, [r0]
_0224F322:
	add r1, sp, #0x38
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r4, #0
	add r0, #0x82
	ldrb r0, [r0]
	add r1, r4, #0
	add r2, r4, #0
	str r0, [sp, #0x38]
	add r1, #0x81
	add r2, #0x8c
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4]
	bl MOD11_02230014
	str r0, [sp, #0x40]
	mov r0, #5
	add r1, sp, #0x38
	bl MOD08_02228218
	str r0, [r4, #8]
	bl MOD08_02228524
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0x9c
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, pc}
_0224F366:
	ldr r0, [r4, #4]
	add r0, #0x88
	ldr r0, [r0]
	bl MOD08_02229A80
	cmp r0, #0
	bne _0224F3AE
	ldr r0, [r4, #8]
	bl MOD08_02228570
	cmp r0, #1
	bne _0224F3AE
	ldr r0, [r4, #4]
	add r0, #0x88
	ldr r0, [r0]
	bl MOD08_02229A00
	cmp r0, #1
	bne _0224F3AE
	add r0, r4, #0
	add r0, #0x82
	ldrb r0, [r0]
	cmp r0, #4
	bne _0224F3B8
	add r0, r4, #0
	add r0, #0x96
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x96
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x96
	ldrb r0, [r0]
	cmp r0, #0xc
	bhs _0224F3B0
_0224F3AE:
	b _0224F7C0
_0224F3B0:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x96
	strb r1, [r0]
_0224F3B8:
	ldr r0, [r4]
	bl MOD11_02230068
	add r1, r4, #0
	add r1, #0x86
	add r5, r0, #0
	ldrh r1, [r1]
	add r0, sp, #0x24
	bl FUN_02069010
	add r0, r4, #0
	add r0, #0x82
	ldrb r3, [r0]
	mov r0, #6
	add r2, r4, #0
	add r1, r3, #0
	mul r1, r0
	ldr r0, _0224F690 ; =MOD8_0222D552
	add r2, #0x14
	ldrsh r0, [r0, r1]
	str r0, [sp]
	ldr r0, _0224F694 ; =MOD8_0222D554
	ldrsh r0, [r0, r1]
	add r1, r5, #0
	lsl r5, r3, #2
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x85
	ldrb r0, [r0]
	ldr r3, _0224F698 ; =MOD8_0222D538
	str r0, [sp, #8]
	mov r0, #0x90
	ldrsb r0, [r4, r0]
	ldrsh r3, [r3, r5]
	str r0, [sp, #0xc]
	mov r0, #0x91
	ldrsb r0, [r4, r0]
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0x93
	ldrb r0, [r0]
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r0, #0x81
	ldrb r0, [r0]
	str r0, [sp, #0x18]
	add r0, sp, #0x24
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [r4]
	bl MOD11_02253A88
	ldr r1, [r4, #4]
	mov r2, #0
	str r0, [r1, #0x20]
	ldr r0, [r4, #4]
	mov r1, #0xc
	ldr r0, [r0, #0x20]
	bl FUN_02007558
	ldr r0, [r4, #4]
	mov r1, #0xd
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl FUN_02007558
	ldr r0, [r4, #4]
	mov r1, #0x2c
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl FUN_02007558
	ldr r0, [r4, #4]
	mov r1, #6
	ldr r0, [r0, #0x20]
	mov r2, #1
	bl FUN_02007558
	add r0, r4, #0
	add r0, #0x8e
	ldrh r0, [r0]
	mov r3, #0
	lsl r1, r0, #1
	ldr r0, _0224F69C ; =MOD11_0225E84A
	ldrh r0, [r0, r1]
	mov r1, #0x10
	add r2, r1, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	bl FUN_02007E68
	ldr r0, [r4, #4]
	mov r1, #6
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl FUN_02007558
	ldr r0, [r4, #8]
	bl MOD08_022285A4
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #2
	ldr r0, _0224F6A0 ; =0x00000706
	bne _0224F498
	mov r1, #0x75
	bl FUN_020054A8
	b _0224F4A0
_0224F498:
	mov r1, #0x74
	mvn r1, r1
	bl FUN_020054A8
_0224F4A0:
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0x9c
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, pc}
_0224F4B0:
	ldr r0, [r4, #4]
	add r0, #0x88
	ldr r0, [r0]
	bl MOD08_022299E8
	cmp r0, #1
	beq _0224F4CC
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x83
	strb r1, [r0]
_0224F4CC:
	ldr r0, [r4, #4]
	mov r1, #0xc
	ldr r0, [r0, #0x20]
	bl FUN_0200782C
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	bne _0224F5B2
	ldr r0, [r4, #8]
	bl MOD08_022285B4
	cmp r0, #0
	bne _0224F5B2
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #2
	bne _0224F534
	ldr r0, [r4, #4]
	mov r1, #1
	ldr r0, [r0, #0x20]
	bl FUN_02007314
	ldr r0, [r4, #4]
	mov r1, #0x2d
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl FUN_02007558
	add r1, r4, #0
	add r1, #0x81
	ldrb r1, [r1]
	ldr r0, [r4]
	bl MOD11_02230E88
	mov r1, #0x7f
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #5
	add r2, r4, #0
	str r1, [sp, #8]
	add r1, r4, #0
	add r2, #0x86
	add r1, #0x88
	ldrh r2, [r2]
	ldr r1, [r1]
	mov r3, #0x75
	bl FUN_02069FB0
	b _0224F55E
_0224F534:
	add r1, r4, #0
	add r1, #0x81
	ldrb r1, [r1]
	ldr r0, [r4]
	bl MOD11_02230E88
	mov r1, #0x7f
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r3, #5
	add r2, r4, #0
	str r3, [sp, #8]
	add r1, r4, #0
	add r2, #0x86
	add r1, #0x88
	ldrh r2, [r2]
	ldr r1, [r1]
	sub r3, #0x7a
	bl FUN_02069FB0
_0224F55E:
	ldr r0, [r4]
	bl MOD11_02230E80
	add r1, r4, #0
	add r1, #0x8d
	ldrb r1, [r1]
	add r2, r4, #0
	add r3, r4, #0
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	add r1, r4, #0
	add r1, #0x81
	ldrb r1, [r1]
	add r2, #0x86
	add r3, #0x84
	str r1, [sp, #8]
	ldr r1, [r4, #4]
	ldrh r2, [r2]
	ldrb r3, [r3]
	ldr r1, [r1, #0x20]
	bl FUN_02069038
	add r0, r4, #0
	add r0, #0x8e
	ldrh r0, [r0]
	mov r2, #0
	add r3, r2, #0
	lsl r1, r0, #1
	ldr r0, _0224F69C ; =MOD11_0225E84A
	ldrh r0, [r0, r1]
	mov r1, #0x10
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	bl FUN_02007E68
	mov r0, #5
	add r4, #0x83
	add sp, #0x9c
	strb r0, [r4]
	pop {r4, r5, pc}
_0224F5B2:
	ldr r0, [r4, #4]
	mov r1, #0xc
	ldr r0, [r0, #0x20]
	bl FUN_0200782C
	mov r2, #1
	lsl r2, r2, #8
	cmp r0, r2
	ldr r0, [r4, #4]
	blt _0224F6BC
	ldr r0, [r0, #0x20]
	mov r1, #0xc
	bl FUN_02007558
	ldr r0, [r4, #4]
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r0, #0x20]
	add r2, #0xf3
	bl FUN_02007558
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #2
	bne _0224F628
	ldr r0, [r4, #4]
	mov r1, #1
	ldr r0, [r0, #0x20]
	bl FUN_02007314
	ldr r0, [r4, #4]
	mov r1, #0x2d
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl FUN_02007558
	add r1, r4, #0
	add r1, #0x81
	ldrb r1, [r1]
	ldr r0, [r4]
	bl MOD11_02230E88
	mov r1, #0x7f
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #5
	add r2, r4, #0
	str r1, [sp, #8]
	add r1, r4, #0
	add r2, #0x86
	add r1, #0x88
	ldrh r2, [r2]
	ldr r1, [r1]
	mov r3, #0x75
	bl FUN_02069FB0
	b _0224F652
_0224F628:
	add r1, r4, #0
	add r1, #0x81
	ldrb r1, [r1]
	ldr r0, [r4]
	bl MOD11_02230E88
	mov r1, #0x7f
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r3, #5
	add r2, r4, #0
	str r3, [sp, #8]
	add r1, r4, #0
	add r2, #0x86
	add r1, #0x88
	ldrh r2, [r2]
	ldr r1, [r1]
	sub r3, #0x7a
	bl FUN_02069FB0
_0224F652:
	ldr r0, [r4]
	bl MOD11_02230E80
	add r1, r4, #0
	add r1, #0x8d
	ldrb r1, [r1]
	add r2, r4, #0
	add r3, r4, #0
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	add r1, r4, #0
	add r1, #0x81
	ldrb r1, [r1]
	add r2, #0x86
	add r3, #0x84
	str r1, [sp, #8]
	ldr r1, [r4, #4]
	ldrh r2, [r2]
	ldrb r3, [r3]
	ldr r1, [r1, #0x20]
	bl FUN_02069038
	add r0, r4, #0
	add r0, #0x8e
	ldrh r0, [r0]
	mov r2, #0
	mov r3, #1
	lsl r1, r0, #1
	ldr r0, _0224F69C ; =MOD11_0225E84A
	b _0224F6A4
	.align 2, 0
_0224F690: .word MOD8_0222D552
_0224F694: .word MOD8_0222D554
_0224F698: .word MOD8_0222D538
_0224F69C: .word MOD11_0225E84A
_0224F6A0: .word 0x00000706
_0224F6A4:
	ldrh r0, [r0, r1]
	mov r1, #0x10
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	bl FUN_02007E68
	mov r0, #5
	add r4, #0x83
	add sp, #0x9c
	strb r0, [r4]
	pop {r4, r5, pc}
_0224F6BC:
	ldr r0, [r0, #0x20]
	mov r1, #0xc
	mov r2, #0x20
	bl FUN_020079E0
	ldr r0, [r4, #4]
	mov r1, #0xd
	ldr r0, [r0, #0x20]
	mov r2, #0x20
	bl FUN_020079E0
	ldr r0, [r4, #4]
	mov r1, #0x90
	ldrsb r1, [r4, r1]
	ldr r0, [r0, #0x20]
	bl FUN_02007F34
	add sp, #0x9c
	pop {r4, r5, pc}
_0224F6E2:
	ldr r0, [r4, #8]
	bl MOD08_022285B4
	cmp r0, #0
	bne _0224F7C0
	mov r0, #6
	add r4, #0x83
	add sp, #0x9c
	strb r0, [r4]
	pop {r4, r5, pc}
_0224F6F6:
	ldr r0, [r4]
	bl MOD11_02230E80
	add r1, r4, #0
	add r1, #0x81
	ldrb r1, [r1]
	bl FUN_02014D7C
	cmp r0, #1
	bne _0224F7C0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	bl FUN_02007390
	cmp r0, #0
	bne _0224F7C0
	ldr r0, [r4, #4]
	add r0, #0x88
	ldr r0, [r0]
	bl MOD08_02229A2C
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, #0x88
	str r1, [r0]
	ldr r0, [r4, #8]
	bl MOD08_02228618
	add r0, r4, #0
	add r0, #0x92
	ldrb r0, [r0]
	cmp r0, #0
	beq _0224F772
	mov r0, #5
	bl MOD08_02211F5C
	str r0, [r4, #0x24]
	add r0, r4, #0
	add r0, #0x81
	ldrb r1, [r0]
	mov r0, #0xb
	add r2, sp, #0x44
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl MOD11_02256854
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x24]
	add r3, sp, #0x44
	bl MOD11_02254404
	mov r0, #7
	add r4, #0x83
	add sp, #0x9c
	strb r0, [r4]
	pop {r4, r5, pc}
_0224F772:
	mov r0, #0xff
	add r4, #0x83
	add sp, #0x9c
	strb r0, [r4]
	pop {r4, r5, pc}
_0224F77C:
	ldr r0, [r4, #0x24]
	bl MOD08_02212384
	ldr r0, [r4, #0x24]
	bl MOD08_022123A0
	cmp r0, #0
	bne _0224F7C0
	ldr r0, [r4, #0x24]
	bl MOD08_022123B0
	ldr r0, [r4, #0x24]
	bl MOD08_02212024
	mov r0, #0xff
	add r4, #0x83
	add sp, #0x9c
	strb r0, [r4]
	pop {r4, r5, pc}
_0224F7A2:
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x81
	add r2, #0x80
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4]
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	add r0, r5, #0
	bl FUN_0200CAB4
_0224F7C0:
	add sp, #0x9c
	pop {r4, r5, pc}

	thumb_func_start MOD11_0224F7C4
MOD11_0224F7C4: ; 0x0224F7C4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c4
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	bl MOD11_02230070
	add r1, r4, #0
	add r1, #0x83
	ldrb r1, [r1]
	add r5, r0, #0
	cmp r1, #0xb
	bls _0224F7E0
	b _0224FD68
_0224F7E0:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224F7EC: ; jump table
	.short _0224F804 - _0224F7EC - 2 ; case 0
	.short _0224F90C - _0224F7EC - 2 ; case 1
	.short _0224F958 - _0224F7EC - 2 ; case 2
	.short _0224F9E2 - _0224F7EC - 2 ; case 3
	.short _0224F9FA - _0224F7EC - 2 ; case 4
	.short _0224FC14 - _0224F7EC - 2 ; case 5
	.short _0224FC28 - _0224F7EC - 2 ; case 6
	.short _0224FC9C - _0224F7EC - 2 ; case 7
	.short _0224FCC0 - _0224F7EC - 2 ; case 8
	.short _0224FC9C - _0224F7EC - 2 ; case 9
	.short _0224FD0C - _0224F7EC - 2 ; case 10
	.short _0224FC9C - _0224F7EC - 2 ; case 11
_0224F804:
	add r0, r4, #0
	add r0, #0x82
	ldrb r1, [r0]
	ldr r0, _0224FB58 ; =MOD11_0225E818
	ldrb r0, [r0, r1]
	str r0, [sp, #0x44]
	mov r0, #5
	str r0, [sp, #0x48]
	add r0, r4, #0
	add r0, #0x81
	ldrb r0, [r0]
	str r0, [sp, #0x50]
	add r0, r4, #0
	add r0, #0x8e
	ldrh r0, [r0]
	str r0, [sp, #0x54]
	ldr r0, [r4]
	bl MOD11_02230078
	str r0, [sp, #0x60]
	ldr r0, [r4]
	bl MOD11_022300CC
	str r0, [sp, #0x64]
	mov r2, #1
	mov r1, #0
	add r0, r4, #0
	str r2, [sp, #0x58]
	str r1, [sp, #0x5c]
	add r0, #0x94
	ldrh r0, [r0]
	cmp r0, #1
	bne _0224F84A
	str r2, [sp, #0x4c]
	b _0224F84C
_0224F84A:
	str r1, [sp, #0x4c]
_0224F84C:
	add r0, sp, #0x44
	bl MOD08_02229918
	str r0, [r4, #0xc]
	ldr r0, [r4]
	bl MOD11_02230068
	add r1, r4, #0
	add r1, #0x86
	add r5, r0, #0
	ldrh r1, [r1]
	add r0, sp, #0x30
	bl FUN_02069010
	add r0, r4, #0
	add r0, #0x82
	ldrb r3, [r0]
	mov r0, #6
	add r2, r4, #0
	add r1, r3, #0
	mul r1, r0
	ldr r0, _0224FB5C ; =MOD8_0222D552
	add r2, #0x14
	ldrsh r0, [r0, r1]
	str r0, [sp]
	ldr r0, _0224FB60 ; =MOD8_0222D554
	ldrsh r0, [r0, r1]
	add r1, r5, #0
	lsl r5, r3, #2
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x85
	ldrb r0, [r0]
	ldr r3, _0224FB64 ; =MOD8_0222D538
	str r0, [sp, #8]
	mov r0, #0x90
	ldrsb r0, [r4, r0]
	ldrsh r3, [r3, r5]
	str r0, [sp, #0xc]
	mov r0, #0x91
	ldrsb r0, [r4, r0]
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0x93
	ldrb r0, [r0]
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r0, #0x81
	ldrb r0, [r0]
	str r0, [sp, #0x18]
	add r0, sp, #0x30
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [r4]
	bl MOD11_02253A88
	ldr r1, [r4, #4]
	mov r2, #0
	str r0, [r1, #0x20]
	ldr r0, [r4, #4]
	mov r1, #0xc
	ldr r0, [r0, #0x20]
	bl FUN_02007558
	ldr r0, [r4, #4]
	mov r1, #0xd
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl FUN_02007558
	ldr r0, [r4, #4]
	mov r1, #0x2c
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl FUN_02007558
	ldr r0, [r4, #4]
	mov r1, #6
	ldr r0, [r0, #0x20]
	mov r2, #1
	bl FUN_02007558
	ldr r0, [r4]
	mov r1, #5
	bl MOD08_0221590C
	str r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0x1c4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0224F90C:
	add r1, sp, #0x24
	mov r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r4, #0
	add r0, #0x82
	ldrb r0, [r0]
	add r1, r4, #0
	add r2, r4, #0
	str r0, [sp, #0x24]
	add r1, #0x81
	add r2, #0x8c
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4]
	bl MOD11_02230014
	str r0, [sp, #0x2c]
	add r0, r4, #0
	add r0, #0x8e
	ldrh r0, [r0]
	add r1, sp, #0x24
	str r0, [sp, #0x28]
	mov r0, #5
	bl MOD08_02228218
	str r0, [r4, #8]
	bl MOD08_02228524
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0x1c4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0224F958:
	ldr r0, [r4, #0xc]
	bl MOD08_02229A80
	cmp r0, #0
	beq _0224F96C
	add r0, r4, #0
	add r0, #0x94
	ldrh r0, [r0]
	cmp r0, #0
	beq _0224F980
_0224F96C:
	ldr r0, [r4, #8]
	bl MOD08_02228570
	cmp r0, #1
	bne _0224F980
	ldr r0, [r4, #0xc]
	bl MOD08_02229A00
	cmp r0, #1
	beq _0224F982
_0224F980:
	b _0224FD86
_0224F982:
	ldr r0, [r4, #0x10]
	bl MOD08_02215918
	add r0, r4, #0
	add r0, #0x8e
	ldrh r0, [r0]
	mov r3, #0
	lsl r1, r0, #1
	ldr r0, _0224FB68 ; =MOD11_0225E84A
	ldrh r0, [r0, r1]
	mov r1, #0x10
	add r2, r1, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	bl FUN_02007E68
	ldr r0, [r4, #4]
	mov r1, #6
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl FUN_02007558
	ldr r0, [r4, #8]
	bl MOD08_022285A4
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #2
	ldr r0, _0224FB6C ; =0x00000706
	bne _0224F9CA
	mov r1, #0x75
	bl FUN_020054A8
	b _0224F9D2
_0224F9CA:
	mov r1, #0x74
	mvn r1, r1
	bl FUN_020054A8
_0224F9D2:
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0x1c4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0224F9E2:
	ldr r0, [r4, #0xc]
	bl MOD08_022299E8
	cmp r0, #1
	beq _0224F9FA
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x83
	strb r1, [r0]
_0224F9FA:
	ldr r0, [r4, #4]
	mov r1, #0xc
	ldr r0, [r0, #0x20]
	bl FUN_0200782C
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	bne _0224FAE0
	ldr r0, [r4, #8]
	bl MOD08_022285B4
	cmp r0, #0
	bne _0224FAE0
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #2
	bne _0224FA62
	ldr r0, [r4, #4]
	mov r1, #1
	ldr r0, [r0, #0x20]
	bl FUN_02007314
	ldr r0, [r4, #4]
	mov r1, #0x2d
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl FUN_02007558
	add r1, r4, #0
	add r1, #0x81
	ldrb r1, [r1]
	ldr r0, [r4]
	bl MOD11_02230E88
	mov r1, #0x7f
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #5
	add r2, r4, #0
	str r1, [sp, #8]
	add r1, r4, #0
	add r2, #0x86
	add r1, #0x88
	ldrh r2, [r2]
	ldr r1, [r1]
	mov r3, #0x75
	bl FUN_02069FB0
	b _0224FA8C
_0224FA62:
	add r1, r4, #0
	add r1, #0x81
	ldrb r1, [r1]
	ldr r0, [r4]
	bl MOD11_02230E88
	mov r1, #0x7f
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r3, #5
	add r2, r4, #0
	str r3, [sp, #8]
	add r1, r4, #0
	add r2, #0x86
	add r1, #0x88
	ldrh r2, [r2]
	ldr r1, [r1]
	sub r3, #0x7a
	bl FUN_02069FB0
_0224FA8C:
	ldr r0, [r4]
	bl MOD11_02230E80
	add r1, r4, #0
	add r1, #0x8d
	ldrb r1, [r1]
	add r2, r4, #0
	add r3, r4, #0
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	add r1, r4, #0
	add r1, #0x81
	ldrb r1, [r1]
	add r2, #0x86
	add r3, #0x84
	str r1, [sp, #8]
	ldr r1, [r4, #4]
	ldrh r2, [r2]
	ldrb r3, [r3]
	ldr r1, [r1, #0x20]
	bl FUN_02069038
	add r0, r4, #0
	add r0, #0x8e
	ldrh r0, [r0]
	mov r2, #0
	add r3, r2, #0
	lsl r1, r0, #1
	ldr r0, _0224FB68 ; =MOD11_0225E84A
	ldrh r0, [r0, r1]
	mov r1, #0x10
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	bl FUN_02007E68
	mov r0, #5
	add r4, #0x83
	add sp, #0x1c4
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0224FAE0:
	ldr r0, [r4, #4]
	mov r1, #0xc
	ldr r0, [r0, #0x20]
	bl FUN_0200782C
	mov r2, #1
	lsl r2, r2, #8
	cmp r0, r2
	ldr r0, [r4, #4]
	blt _0224FBEE
	ldr r0, [r0, #0x20]
	mov r1, #0xc
	bl FUN_02007558
	ldr r0, [r4, #4]
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r0, #0x20]
	add r2, #0xf3
	bl FUN_02007558
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #2
	bne _0224FB70
	ldr r0, [r4, #4]
	mov r1, #1
	ldr r0, [r0, #0x20]
	bl FUN_02007314
	ldr r0, [r4, #4]
	mov r1, #0x2d
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl FUN_02007558
	add r1, r4, #0
	add r1, #0x81
	ldrb r1, [r1]
	ldr r0, [r4]
	bl MOD11_02230E88
	mov r1, #0x7f
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #5
	add r2, r4, #0
	str r1, [sp, #8]
	add r1, r4, #0
	add r2, #0x86
	add r1, #0x88
	ldrh r2, [r2]
	ldr r1, [r1]
	mov r3, #0x75
	bl FUN_02069FB0
	b _0224FB9A
	nop
_0224FB58: .word MOD11_0225E818
_0224FB5C: .word MOD8_0222D552
_0224FB60: .word MOD8_0222D554
_0224FB64: .word MOD8_0222D538
_0224FB68: .word MOD11_0225E84A
_0224FB6C: .word 0x00000706
_0224FB70:
	add r1, r4, #0
	add r1, #0x81
	ldrb r1, [r1]
	ldr r0, [r4]
	bl MOD11_02230E88
	mov r1, #0x7f
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r3, #5
	add r2, r4, #0
	str r3, [sp, #8]
	add r1, r4, #0
	add r2, #0x86
	add r1, #0x88
	ldrh r2, [r2]
	ldr r1, [r1]
	sub r3, #0x7a
	bl FUN_02069FB0
_0224FB9A:
	ldr r0, [r4]
	bl MOD11_02230E80
	add r1, r4, #0
	add r1, #0x8d
	ldrb r1, [r1]
	add r2, r4, #0
	add r3, r4, #0
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	add r1, r4, #0
	add r1, #0x81
	ldrb r1, [r1]
	add r2, #0x86
	add r3, #0x84
	str r1, [sp, #8]
	ldr r1, [r4, #4]
	ldrh r2, [r2]
	ldrb r3, [r3]
	ldr r1, [r1, #0x20]
	bl FUN_02069038
	add r0, r4, #0
	add r0, #0x8e
	ldrh r0, [r0]
	mov r2, #0
	mov r3, #1
	lsl r1, r0, #1
	ldr r0, _0224FD8C ; =MOD11_0225E84A
	ldrh r0, [r0, r1]
	mov r1, #0x10
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	bl FUN_02007E68
	mov r0, #5
	add r4, #0x83
	add sp, #0x1c4
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0224FBEE:
	ldr r0, [r0, #0x20]
	mov r1, #0xc
	mov r2, #0x20
	bl FUN_020079E0
	ldr r0, [r4, #4]
	mov r1, #0xd
	ldr r0, [r0, #0x20]
	mov r2, #0x20
	bl FUN_020079E0
	ldr r0, [r4, #4]
	mov r1, #0x90
	ldrsb r1, [r4, r1]
	ldr r0, [r0, #0x20]
	bl FUN_02007F34
	add sp, #0x1c4
	pop {r3, r4, r5, r6, pc}
_0224FC14:
	ldr r0, [r4, #8]
	bl MOD08_022285B4
	cmp r0, #0
	bne _0224FC48
	mov r0, #6
	add r4, #0x83
	add sp, #0x1c4
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0224FC28:
	ldr r0, [r4]
	bl MOD11_02230E80
	add r1, r4, #0
	add r1, #0x81
	ldrb r1, [r1]
	bl FUN_02014D7C
	cmp r0, #1
	bne _0224FC48
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	bl FUN_02007390
	cmp r0, #0
	beq _0224FC4A
_0224FC48:
	b _0224FD86
_0224FC4A:
	ldr r0, [r4, #0xc]
	bl MOD08_02229A2C
	ldr r0, [r4, #8]
	bl MOD08_02228618
	add r0, r4, #0
	add r0, #0x92
	ldrb r0, [r0]
	cmp r0, #0
	beq _0224FC92
	add r0, r4, #0
	add r0, #0x81
	ldrb r1, [r0]
	mov r0, #0xb
	add r2, sp, #0x16c
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl MOD11_02256854
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x16c
	bl MOD11_02254404
	mov r0, #7
	add r4, #0x83
	add sp, #0x1c4
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0224FC92:
	mov r0, #8
	add r4, #0x83
	add sp, #0x1c4
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0224FC9C:
	bl MOD08_02212384
	add r0, r5, #0
	bl MOD08_022123A0
	cmp r0, #0
	bne _0224FD86
	add r0, r5, #0
	bl MOD08_022123B0
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0x1c4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0224FCC0:
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0]
	cmp r0, #0
	beq _0224FD02
	add r0, r4, #0
	add r0, #0x81
	ldrb r1, [r0]
	mov r0, #0xf
	add r2, sp, #0x114
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl MOD11_02256854
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x114
	bl MOD11_02254404
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0x1c4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0224FD02:
	mov r0, #0xff
	add r4, #0x83
	add sp, #0x1c4
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0224FD0C:
	add r3, r4, #0
	add r3, #0x81
	ldrb r3, [r3]
	add r1, r4, #0
	ldr r0, [r4]
	add r1, #0x28
	add r2, sp, #0xc4
	bl MOD11_0225452C
	add r0, sp, #0xc4
	mov r1, #5
	bl MOD08_0222A568
	add r0, r4, #0
	add r0, #0x81
	ldrb r1, [r0]
	mov r0, #0x10
	add r2, sp, #0x6c
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl MOD11_02256854
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x6c
	bl MOD11_02254404
	mov r0, #0x1a
	ldr r1, [r4, #4]
	mov r2, #1
	lsl r0, r0, #4
	str r2, [r1, r0]
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0x1c4
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0224FD68:
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x81
	add r2, #0x80
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4]
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	add r0, r6, #0
	bl FUN_0200CAB4
_0224FD86:
	add sp, #0x1c4
	pop {r3, r4, r5, r6, pc}
	nop
_0224FD8C: .word MOD11_0225E84A

	thumb_func_start MOD11_0224FD90
MOD11_0224FD90: ; 0x0224FD90
	push {r4, r5, r6, lr}
	sub sp, #0x138
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	bl MOD11_02230070
	add r1, r4, #0
	add r1, #0x6b
	ldrb r1, [r1]
	add r5, r0, #0
	cmp r1, #8
	bhi _0224FE7A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224FDB6: ; jump table
	.short _0224FDC8 - _0224FDB6 - 2 ; case 0
	.short _0224FE6C - _0224FDB6 - 2 ; case 1
	.short _0224FE10 - _0224FDB6 - 2 ; case 2
	.short _0224FE6C - _0224FDB6 - 2 ; case 3
	.short _0224FE92 - _0224FDB6 - 2 ; case 4
	.short _0224FF36 - _0224FDB6 - 2 ; case 5
	.short _0224FF50 - _0224FDB6 - 2 ; case 6
	.short _0224FFA6 - _0224FDB6 - 2 ; case 7
	.short _0224FFC0 - _0224FDB6 - 2 ; case 8
_0224FDC8:
	ldr r0, [r4, #0x70]
	cmp r0, #0
	beq _0224FE06
	add r0, r4, #0
	add r0, #0x69
	ldrb r1, [r0]
	mov r0, #0xf
	add r2, sp, #0xe0
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl MOD11_02256854
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0xe0
	bl MOD11_02254404
	add r0, r4, #0
	add r0, #0x6b
	ldrb r0, [r0]
	add r4, #0x6b
	add sp, #0x138
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0224FE06:
	mov r0, #4
	add r4, #0x6b
	add sp, #0x138
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0224FE10:
	add r3, r4, #0
	add r3, #0x69
	ldrb r3, [r3]
	add r1, r4, #0
	ldr r0, [r4]
	add r1, #0x10
	add r2, sp, #0x90
	bl MOD11_0225452C
	add r0, sp, #0x90
	mov r1, #5
	bl MOD08_0222A494
	add r0, r4, #0
	add r0, #0x69
	ldrb r1, [r0]
	mov r0, #0x10
	add r2, sp, #0x38
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl MOD11_02256854
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x38
	bl MOD11_02254404
	mov r0, #0x1a
	ldr r1, [r4, #4]
	mov r2, #0
	lsl r0, r0, #4
	str r2, [r1, r0]
	add r0, r4, #0
	add r0, #0x6b
	ldrb r0, [r0]
	add r4, #0x6b
	add sp, #0x138
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0224FE6C:
	bl MOD08_02212384
	add r0, r5, #0
	bl MOD08_022123A0
	cmp r0, #0
	beq _0224FE7C
_0224FE7A:
	b _0224FFDE
_0224FE7C:
	add r0, r5, #0
	bl MOD08_022123B0
	add r0, r4, #0
	add r0, #0x6b
	ldrb r0, [r0]
	add r4, #0x6b
	add sp, #0x138
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0224FE92:
	add r0, r4, #0
	add r0, #0x6a
	ldrb r1, [r0]
	mov r0, #1
	tst r0, r1
	beq _0224FEDA
	ldr r0, _0224FFE4 ; =MOD11_0225E818
	ldrb r0, [r0, r1]
	str r0, [sp, #0x10]
	mov r0, #5
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	add r0, r4, #0
	add r0, #0x69
	ldrb r0, [r0]
	str r0, [sp, #0x1c]
	add r0, r4, #0
	add r0, #0x6e
	ldrh r0, [r0]
	str r0, [sp, #0x20]
	ldr r0, [r4]
	bl MOD11_02230078
	str r0, [sp, #0x2c]
	ldr r0, [r4]
	bl MOD11_022300CC
	str r0, [sp, #0x30]
	mov r0, #1
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp, #0x28]
	add r0, sp, #0x10
	bl MOD08_02229918
	str r0, [r4, #0xc]
_0224FEDA:
	add r0, r4, #0
	mov r1, #5
	add r0, #0x6b
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x6e
	ldrh r0, [r0]
	mov r2, #0x10
	lsl r1, r0, #1
	ldr r0, _0224FFE8 ; =MOD11_0225E84A
	ldrh r0, [r0, r1]
	mov r1, #0
	add r3, r1, #0
	str r0, [sp]
	ldr r0, [r4, #8]
	bl FUN_02007E68
	add r4, #0x6a
	ldrb r0, [r4]
	cmp r0, #5
	bhi _0224FFDE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224FF10: ; jump table
	.short _0224FF1C - _0224FF10 - 2 ; case 0
	.short _0224FF2A - _0224FF10 - 2 ; case 1
	.short _0224FF1C - _0224FF10 - 2 ; case 2
	.short _0224FF2A - _0224FF10 - 2 ; case 3
	.short _0224FF1C - _0224FF10 - 2 ; case 4
	.short _0224FF2A - _0224FF10 - 2 ; case 5
_0224FF1C:
	mov r1, #0x74
	ldr r0, _0224FFEC ; =0x00000706
	mvn r1, r1
	bl FUN_020054A8
	add sp, #0x138
	pop {r4, r5, r6, pc}
_0224FF2A:
	ldr r0, _0224FFEC ; =0x00000706
	mov r1, #0x75
	bl FUN_020054A8
	add sp, #0x138
	pop {r4, r5, r6, pc}
_0224FF36:
	ldr r0, [r4, #8]
	bl FUN_02007F20
	cmp r0, #0
	bne _0224FFDE
	add r0, r4, #0
	add r0, #0x6b
	ldrb r0, [r0]
	add r4, #0x6b
	add sp, #0x138
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0224FF50:
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r4, #8]
	sub r2, #0x2c
	bl FUN_020079E0
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #8]
	sub r2, #0x2d
	bl FUN_020079E0
	add r1, r4, #0
	add r1, #0x6c
	ldrb r1, [r1]
	ldr r0, [r4, #8]
	bl FUN_02007F34
	ldr r0, [r4, #8]
	mov r1, #0xc
	bl FUN_0200782C
	cmp r0, #0
	bgt _0224FFDE
	ldr r0, [r4, #8]
	bl FUN_02007534
	add r0, r4, #0
	add r0, #0x6a
	ldrb r1, [r0]
	mov r0, #1
	tst r0, r1
	beq _0224FF9C
	mov r0, #7
	add r4, #0x6b
	add sp, #0x138
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0224FF9C:
	mov r0, #8
	add r4, #0x6b
	add sp, #0x138
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0224FFA6:
	ldr r0, [r4, #0xc]
	bl MOD08_022299E8
	cmp r0, #0
	bne _0224FFDE
	ldr r0, [r4, #0xc]
	bl MOD08_02229A2C
	mov r0, #8
	add r4, #0x6b
	add sp, #0x138
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0224FFC0:
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x69
	add r2, #0x68
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4]
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	add r0, r6, #0
	bl FUN_0200CAB4
_0224FFDE:
	add sp, #0x138
	pop {r4, r5, r6, pc}
	nop
_0224FFE4: .word MOD11_0225E818
_0224FFE8: .word MOD11_0225E84A
_0224FFEC: .word 0x00000706

	thumb_func_start MOD11_0224FFF0
MOD11_0224FFF0: ; 0x0224FFF0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _02250002
	cmp r0, #1
	beq _02250048
	pop {r3, r4, r5, pc}
_02250002:
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r4, #4]
	sub r2, #0x2c
	bl FUN_020079E0
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #4]
	sub r2, #0x2d
	bl FUN_020079E0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0225002E
	sub r0, r0, #1
	strb r0, [r4, #0xc]
	mov r1, #1
	ldr r0, [r4, #4]
	sub r2, r1, #2
	bl FUN_020079E0
_0225002E:
	ldr r0, [r4, #4]
	mov r1, #0xc
	bl FUN_0200782C
	cmp r0, #0
	bgt _0225005E
	ldr r0, [r4, #4]
	bl FUN_02007534
	ldrb r0, [r4, #0xb]
	add r0, r0, #1
	strb r0, [r4, #0xb]
	pop {r3, r4, r5, pc}
_02250048:
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4]
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	add r0, r5, #0
	bl FUN_0200CAB4
_0225005E:
	pop {r3, r4, r5, pc}

	thumb_func_start MOD11_02250060
MOD11_02250060: ; 0x02250060
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	bl MOD11_0222FF74
	add r5, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0x21
	bge _0225009C
	ldrb r0, [r4, #0x12]
	cmp r0, #2
	blo _0225009C
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _02250086
	cmp r0, #2
	bne _0225009C
_02250086:
	ldr r0, [r4]
	bl MOD11_0222FF68
	mov r1, #3
	mov r2, #1
	mov r3, #4
	bl BgSetPosTextAndCommit
	ldr r0, [r4, #0x20]
	add r0, r0, #1
	str r0, [r4, #0x20]
_0225009C:
	ldrb r0, [r4, #0x12]
	cmp r0, #4
	bls _022500A4
	b _02250332
_022500A4:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022500B0: ; jump table
	.short _022500BA - _022500B0 - 2 ; case 0
	.short _022500C4 - _022500B0 - 2 ; case 1
	.short _022500D2 - _022500B0 - 2 ; case 2
	.short _022502CA - _022500B0 - 2 ; case 3
	.short _022502E4 - _022500B0 - 2 ; case 4
_022500BA:
	mov r0, #0x1c
	str r0, [r4, #0x1c]
	ldrb r0, [r4, #0x12]
	add r0, r0, #1
	strb r0, [r4, #0x12]
_022500C4:
	ldr r0, [r4, #0x1c]
	sub r0, r0, #1
	str r0, [r4, #0x1c]
	bne _022501A6
	ldrb r0, [r4, #0x12]
	add r0, r0, #1
	strb r0, [r4, #0x12]
_022500D2:
	ldrb r0, [r4, #0x13]
	add r1, sp, #0
	cmp r0, #2
	ldr r0, [r4, #8]
	bne _022501D2
	ldr r0, [r0]
	add r1, #2
	add r2, sp, #0
	bl FUN_0200C7A0
	ldr r0, [r4, #0x18]
	cmp r0, #1
	beq _022500F0
	cmp r0, #3
	bne _02250112
_022500F0:
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, #0xc0
	ldr r0, [r4, #8]
	bge _02250108
	ldr r0, [r0]
	mov r1, #8
	mov r2, #0
	bl FUN_0200C82C
	b _02250112
_02250108:
	ldr r0, [r0]
	mov r1, #0xc0
	mov r2, #0x58
	bl FUN_0200C714
_02250112:
	ldr r0, [r4, #8]
	add r1, sp, #0
	ldr r0, [r0]
	add r1, #2
	add r2, sp, #0
	bl FUN_0200C7A0
	ldr r0, [r4, #0x18]
	cmp r0, #1
	beq _02250136
	cmp r0, #3
	bne _02250146
	cmp r5, #3
	beq _02250136
	cmp r5, #0x83
	beq _02250136
	cmp r5, #7
	bne _02250146
_02250136:
	add r3, sp, #0
	mov r2, #2
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #4]
	mov r1, #0
	bl FUN_02007558
	b _02250196
_02250146:
	cmp r0, #3
	bne _02250170
	ldr r0, [r4, #4]
	mov r1, #0
	bl FUN_0200782C
	add r3, sp, #0
	mov r2, #2
	ldrsh r1, [r3, r2]
	sub r0, r0, r1
	strh r0, [r3, #2]
	ldrsh r0, [r3, r2]
	mov r1, #0
	sub r0, #0x18
	strh r0, [r3, #2]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #4]
	neg r2, r2
	bl FUN_020079E0
	b _02250196
_02250170:
	cmp r0, #5
	bne _02250196
	ldr r0, [r4, #4]
	mov r1, #0
	bl FUN_0200782C
	add r3, sp, #0
	mov r2, #2
	ldrsh r1, [r3, r2]
	sub r0, r1, r0
	strh r0, [r3, #2]
	ldrsh r0, [r3, r2]
	mov r1, #0
	sub r0, #0x10
	strh r0, [r3, #2]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #4]
	bl FUN_020079E0
_02250196:
	mov r0, #0x14
	ldrsh r5, [r4, r0]
	ldr r0, [r4, #4]
	mov r1, #0
	bl FUN_0200782C
	cmp r0, r5
	bge _022501A8
_022501A6:
	b _02250332
_022501A8:
	ldr r0, [r4, #4]
	mov r1, #0
	add r2, r5, #0
	bl FUN_02007558
	ldr r0, [r4, #0x18]
	cmp r0, #1
	beq _022501BC
	cmp r0, #3
	bne _022501C8
_022501BC:
	ldr r0, [r4, #8]
	mov r1, #0xc0
	ldr r0, [r0]
	mov r2, #0x58
	bl FUN_0200C714
_022501C8:
	ldrb r0, [r4, #0x12]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4, #0x12]
	pop {r3, r4, r5, r6, pc}
_022501D2:
	ldr r0, [r0]
	add r1, #2
	add r2, sp, #0
	bl FUN_0200C7A0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _022501E6
	cmp r0, #2
	bne _02250208
_022501E6:
	add r0, sp, #0
	mov r1, #2
	ldrsh r0, [r0, r1]
	cmp r0, #0x40
	ldr r0, [r4, #8]
	ble _022501FE
	ldr r0, [r0]
	sub r1, #0xa
	mov r2, #0
	bl FUN_0200C82C
	b _02250208
_022501FE:
	ldr r0, [r0]
	mov r1, #0x40
	mov r2, #0x88
	bl FUN_0200C714
_02250208:
	ldr r0, [r4, #8]
	add r1, sp, #0
	ldr r0, [r0]
	add r1, #2
	add r2, sp, #0
	bl FUN_0200C7A0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _02250230
	cmp r0, #2
	bne _02250240
	cmp r5, #3
	beq _02250230
	cmp r5, #0x83
	beq _02250230
	cmp r5, #0x13
	beq _02250230
	cmp r5, #7
	bne _02250240
_02250230:
	add r3, sp, #0
	mov r2, #2
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #4]
	mov r1, #0
	bl FUN_02007558
	b _02250290
_02250240:
	cmp r0, #2
	bne _02250268
	ldr r0, [r4, #4]
	mov r1, #0
	bl FUN_0200782C
	add r3, sp, #0
	mov r2, #2
	ldrsh r1, [r3, r2]
	sub r0, r1, r0
	strh r0, [r3, #2]
	ldrsh r0, [r3, r2]
	mov r1, #0
	sub r0, #0x18
	strh r0, [r3, #2]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #4]
	bl FUN_020079E0
	b _02250290
_02250268:
	cmp r0, #4
	bne _02250290
	ldr r0, [r4, #4]
	mov r1, #0
	bl FUN_0200782C
	add r3, sp, #0
	mov r2, #2
	ldrsh r1, [r3, r2]
	sub r0, r0, r1
	strh r0, [r3, #2]
	ldrsh r0, [r3, r2]
	mov r1, #0
	sub r0, #0x10
	strh r0, [r3, #2]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #4]
	neg r2, r2
	bl FUN_020079E0
_02250290:
	mov r0, #0x14
	ldrsh r5, [r4, r0]
	ldr r0, [r4, #4]
	mov r1, #0
	bl FUN_0200782C
	cmp r0, r5
	bgt _02250332
	ldr r0, [r4, #4]
	mov r1, #0
	add r2, r5, #0
	bl FUN_02007558
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _022502B4
	cmp r0, #2
	bne _022502C0
_022502B4:
	ldr r0, [r4, #8]
	mov r1, #0x40
	ldr r0, [r0]
	mov r2, #0x88
	bl FUN_0200C714
_022502C0:
	ldrb r0, [r4, #0x12]
	add sp, #4
	add r0, r0, #1
	strb r0, [r4, #0x12]
	pop {r3, r4, r5, r6, pc}
_022502CA:
	ldrb r1, [r4, #0x11]
	ldrb r2, [r4, #0x10]
	ldr r0, [r4]
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	add r0, r6, #0
	bl FUN_0200CAB4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_022502E4:
	ldrb r0, [r4, #0x13]
	cmp r0, #2
	ldr r0, [r4, #4]
	bne _0225030E
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	mov r1, #0
	bl FUN_02007558
	ldr r0, [r4, #0x18]
	cmp r0, #1
	beq _02250300
	cmp r0, #3
	bne _0225032E
_02250300:
	ldr r0, [r4, #8]
	mov r1, #0xc0
	ldr r0, [r0]
	mov r2, #0x58
	bl FUN_0200C714
	b _0225032E
_0225030E:
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	mov r1, #0
	bl FUN_02007558
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _02250322
	cmp r0, #2
	bne _0225032E
_02250322:
	ldr r0, [r4, #8]
	mov r1, #0x40
	ldr r0, [r0]
	mov r2, #0x88
	bl FUN_0200C714
_0225032E:
	mov r0, #3
	strb r0, [r4, #0x12]
_02250332:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start MOD11_02250338
MOD11_02250338: ; 0x02250338
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xd0
	ldr r3, _022505EC ; =MOD11_0225E8D0
	add r4, r1, #0
	add r5, r0, #0
	add r2, sp, #0x30
	mov r1, #0x50
_02250346:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _02250346
	ldr r0, [r4]
	bl MOD11_0222FF74
	add r6, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bls _02250362
	b _0225088A
_02250362:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225036E: ; jump table
	.short _0225037C - _0225036E - 2 ; case 0
	.short _02250494 - _0225036E - 2 ; case 1
	.short _0225059E - _0225036E - 2 ; case 2
	.short _0225073C - _0225036E - 2 ; case 3
	.short _022507F2 - _0225036E - 2 ; case 4
	.short _0225084C - _0225036E - 2 ; case 5
	.short _02250874 - _0225036E - 2 ; case 6
_0225037C:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0225038A
	mov r0, #1
	add sp, #0xd0
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225038A:
	cmp r0, #4
	bhi _022503A4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225039A: ; jump table
	.short _022503A4 - _0225039A - 2 ; case 0
	.short _022503A4 - _0225039A - 2 ; case 1
	.short _022503B2 - _0225039A - 2 ; case 2
	.short _022503C0 - _0225039A - 2 ; case 3
	.short _022503CE - _0225039A - 2 ; case 4
_022503A4:
	mov r0, #0xf
	str r0, [sp, #8]
	mov r0, #3
	str r0, [r4, #0x18]
	mov r0, #5
	str r0, [sp, #0x18]
	b _022503DC
_022503B2:
	mov r0, #0xc
	str r0, [sp, #8]
	mov r0, #0
	str r0, [r4, #0x18]
	ldr r0, _022505F0 ; =0x00000111
	str r0, [sp, #0x18]
	b _022503DC
_022503C0:
	mov r0, #0xd
	str r0, [sp, #8]
	mov r0, #0
	str r0, [r4, #0x18]
	ldr r0, _022505F4 ; =0x00000112
	str r0, [sp, #0x18]
	b _022503DC
_022503CE:
	mov r0, #0xf
	str r0, [sp, #8]
	mov r0, #3
	str r0, [r4, #0x18]
	mov r0, #0x11
	lsl r0, r0, #4
	str r0, [sp, #0x18]
_022503DC:
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	ldrb r0, [r4, #9]
	str r0, [sp, #0x14]
	ldr r0, [r4]
	bl MOD11_02230078
	str r0, [sp, #0x24]
	ldr r0, [r4]
	bl MOD11_022300CC
	str r0, [sp, #0x28]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [r4]
	str r0, [sp, #0x2c]
	add r0, sp, #8
	bl MOD08_02229918
	ldr r1, [r4, #4]
	add r1, #0x88
	str r0, [r1]
	ldr r0, [r4, #4]
	mov r1, #0x64
	add r0, #0x88
	ldr r0, [r0]
	bl MOD08_0222A00C
	ldr r0, [r4, #4]
	mov r1, #2
	add r0, #0x88
	ldr r0, [r0]
	bl MOD08_0222A018
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, #0x88
	ldr r0, [r0]
	bl MOD08_0222A008
	mov r1, #0
	ldr r0, [r4]
	ldr r2, [r4, #0xc]
	add r3, r1, #0
	bl MOD11_02254308
	ldr r1, [r4, #4]
	str r0, [r1, #0x18]
	ldr r0, [r4, #4]
	mov r1, #0
	ldr r0, [r0, #0x1c]
	bl FUN_0200782C
	add r1, sp, #4
	strh r0, [r1, #2]
	ldr r0, [r4, #4]
	mov r1, #1
	ldr r0, [r0, #0x1c]
	bl FUN_0200782C
	add r3, sp, #4
	strh r0, [r3]
	ldr r0, [r4, #4]
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r0, #0x18]
	bl FUN_0200C714
	ldr r0, [r4, #4]
	mov r1, #0
	ldr r0, [r0, #0x18]
	bl FUN_0200C61C
	ldr r0, [r4, #4]
	mov r1, #0
	ldr r0, [r0, #0x18]
	bl FUN_0200C5C0
	ldr r0, [r4, #4]
	mov r1, #6
	ldr r0, [r0, #0x1c]
	mov r2, #1
	bl FUN_02007558
	mov r0, #3
	add sp, #0xd0
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_02250494:
	ldrb r0, [r4, #0xb]
	cmp r0, #2
	ldr r0, [r4, #4]
	bne _0225054A
	ldr r0, [r0, #0x1c]
	mov r1, #0
	mov r2, #5
	bl FUN_020079E0
	ldr r0, [r4, #4]
	mov r1, #0
	ldr r0, [r0, #0x1c]
	bl FUN_0200782C
	mov r1, #0x45
	lsl r1, r1, #2
	cmp r0, r1
	blt _02250520
	ldr r0, [r4, #4]
	add r0, #0x88
	ldr r0, [r0]
	bl MOD08_02229A80
	cmp r0, #0
	beq _02250520
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, #0x88
	ldr r0, [r0]
	bl MOD08_02229FE4
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, #0x88
	ldr r0, [r0]
	bl MOD08_02229A5C
	mov r0, #2
	tst r0, r6
	beq _02250532
	mov r0, #8
	tst r0, r6
	bne _02250532
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl MOD11_022302BC
	add r1, r0, #0
	ldr r0, [r4]
	bl MOD11_0222FF7C
	add r4, r0, #0
	add r0, #0x88
	ldr r0, [r0]
	mov r1, #1
	bl MOD08_02229FE4
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0]
	mov r1, #0
	bl MOD08_02229A5C
	add r4, #0x88
	ldr r0, [r4]
	mov r1, #0xc
	bl MOD08_0222A024
	add sp, #0xd0
	pop {r3, r4, r5, r6, r7, pc}
_02250520:
	ldr r0, [r4, #4]
	mov r1, #0
	ldr r0, [r0, #0x1c]
	bl FUN_0200782C
	mov r1, #0x4a
	lsl r1, r1, #2
	cmp r0, r1
	bge _02250534
_02250532:
	b _0225088A
_02250534:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x1c]
	bl FUN_02007534
	ldr r0, [r4, #4]
	mov r1, #0
	str r1, [r0, #0x1c]
	mov r0, #6
	add sp, #0xd0
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225054A:
	ldr r0, [r0, #0x1c]
	mov r1, #0
	bl FUN_0200782C
	add r1, sp, #4
	strh r0, [r1, #2]
	ldr r0, [r4, #4]
	mov r1, #1
	ldr r0, [r0, #0x1c]
	bl FUN_0200782C
	add r3, sp, #4
	strh r0, [r3]
	ldr r0, [r4, #4]
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r0, #0x18]
	bl FUN_0200C714
	ldr r0, [r4, #4]
	mov r1, #0
	ldr r0, [r0, #0x18]
	bl FUN_0200C61C
	ldr r0, [r4, #4]
	mov r1, #0
	ldr r0, [r0, #0x18]
	bl FUN_0200C5C0
	mov r0, #2
	strb r0, [r4, #0xa]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x1c]
	bl FUN_02007534
	ldr r0, [r4, #4]
	mov r1, #0
	str r1, [r0, #0x1c]
	add sp, #0xd0
	pop {r3, r4, r5, r6, r7, pc}
_0225059E:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x18]
	bl FUN_0200C5A8
	ldr r0, [r4, #4]
	mov r1, #4
	ldr r0, [r0, #0x18]
	mvn r1, r1
	mov r2, #0
	bl FUN_0200C82C
	ldr r0, [r4, #4]
	add r1, sp, #4
	ldr r0, [r0, #0x18]
	add r1, #2
	add r2, sp, #4
	bl FUN_0200C7A0
	ldr r1, [r4, #4]
	add r0, r1, #0
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #0
	bne _022505D0
	b _022506E4
_022505D0:
	ldr r0, [r1, #0x18]
	bl FUN_0200C630
	ldr r1, [r4, #0xc]
	str r0, [sp]
	lsl r5, r0, #2
	mov r0, #0x14
	add r2, r1, #0
	mul r2, r0
	add r0, sp, #0x30
	add r0, r0, r2
	ldrsh r1, [r5, r0]
	ldr r0, _022505F8 ; =0x00007FFF
	b _022505FC
	.align 2, 0
_022505EC: .word MOD11_0225E8D0
_022505F0: .word 0x00000111
_022505F4: .word 0x00000112
_022505F8: .word 0x00007FFF
_022505FC:
	cmp r1, r0
	beq _022506E4
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, #0x88
	ldr r0, [r0]
	bl MOD08_02229FE4
	ldr r1, [r4, #0xc]
	mov r0, #0x14
	add r3, r1, #0
	mul r3, r0
	add r2, sp, #0x30
	add r2, r2, r3
	add r7, sp, #4
	mov r1, #2
	ldrsh r1, [r7, r1]
	ldrsh r2, [r5, r2]
	ldr r0, [r4, #4]
	add r1, r1, r2
	mov r2, #0
	ldrsh r7, [r7, r2]
	add r2, sp, #0x30
	add r2, #2
	add r2, r2, r3
	ldrsh r2, [r5, r2]
	add r0, #0x88
	lsl r1, r1, #0x10
	add r2, r7, r2
	lsl r2, r2, #0x10
	ldr r0, [r0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl MOD08_02229FF0
	ldr r0, [sp]
	cmp r0, #3
	bne _022506E4
	ldr r0, [r4, #4]
	add r0, #0x88
	ldr r0, [r0]
	bl MOD08_02229A80
	cmp r0, #0
	beq _022506E4
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, #0x88
	ldr r0, [r0]
	bl MOD08_02229A5C
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, #0x88
	ldr r0, [r0]
	bl MOD08_0222A008
	mov r0, #2
	tst r0, r6
	beq _022506E4
	mov r0, #8
	tst r0, r6
	bne _022506E4
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl MOD11_022302BC
	add r1, r0, #0
	ldr r0, [r4]
	bl MOD11_0222FF7C
	ldr r1, [r4, #0xc]
	add r6, r0, #0
	add r3, r1, #0
	mov r0, #0x14
	mul r3, r0
	add r2, sp, #0x30
	add r2, r2, r3
	add r0, r6, #0
	add r0, #0x88
	add r7, sp, #4
	mov r1, #2
	ldrsh r1, [r7, r1]
	ldrsh r2, [r5, r2]
	ldr r0, [r0]
	add r1, r1, r2
	mov r2, #0
	ldrsh r7, [r7, r2]
	add r2, sp, #0x30
	add r2, #2
	add r2, r2, r3
	ldrsh r2, [r5, r2]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r2, r7, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl MOD08_02229FF0
	add r0, r6, #0
	add r0, #0x88
	ldr r0, [r0]
	mov r1, #1
	bl MOD08_02229FE4
	add r0, r6, #0
	add r0, #0x88
	ldr r0, [r0]
	mov r1, #0
	bl MOD08_02229A5C
	add r6, #0x88
	ldr r0, [r6]
	mov r1, #1
	bl MOD08_0222A008
_022506E4:
	add r1, sp, #4
	mov r0, #2
	ldrsh r1, [r1, r0]
	sub r0, #0x2a
	cmp r1, r0
	ble _022506F2
	b _0225088A
_022506F2:
	ldr r0, [r4]
	bl MOD11_02230080
	add r6, r0, #0
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl MOD11_02230260
	asr r5, r0, #1
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x18]
	bl FUN_0200C3DC
	ldr r1, _02250890 ; =0x00004E2F
	add r0, r6, #0
	add r1, r5, r1
	bl FUN_0200C358
	ldr r1, _02250894 ; =0x00004E2A
	add r0, r6, #0
	add r1, r5, r1
	bl FUN_0200C368
	ldr r1, _02250898 ; =0x00004E27
	add r0, r6, #0
	add r1, r5, r1
	bl FUN_0200C378
	ldr r1, _02250898 ; =0x00004E27
	add r0, r6, #0
	add r1, r5, r1
	bl FUN_0200C388
	mov r0, #6
	add sp, #0xd0
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225073C:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x18]
	bl FUN_0200C5A8
	ldr r0, [r4, #4]
	add r1, sp, #4
	ldr r0, [r0, #0x18]
	add r1, #2
	add r2, sp, #4
	bl FUN_0200C7A0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x18]
	bl FUN_0200C630
	add r5, r0, #0
	ldr r0, [r4, #4]
	add r0, #0x88
	ldr r0, [r0]
	cmp r0, #0
	beq _022507E2
	ldr r2, [r4, #0xc]
	mov r1, #0x14
	add r3, r2, #0
	mul r3, r1
	add r1, sp, #0x30
	lsl r6, r5, #2
	add r1, r1, r3
	ldrsh r1, [r6, r1]
	ldr r2, _0225089C ; =0x00007FFF
	cmp r1, r2
	beq _022507E2
	add r7, sp, #4
	mov r2, #2
	ldrsh r2, [r7, r2]
	add r1, r2, r1
	mov r2, #0
	ldrsh r7, [r7, r2]
	add r2, sp, #0x30
	add r2, #2
	add r2, r2, r3
	ldrsh r2, [r6, r2]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r2, r7, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl MOD08_02229FF0
	cmp r5, #3
	bne _022507E2
	ldr r0, [r4, #4]
	ldr r6, [r4, #0x18]
	add r0, #0x88
	ldr r0, [r0]
	bl MOD08_02229A80
	cmp r6, r0
	beq _022507E2
	ldr r0, [r4, #4]
	add r1, r6, #0
	add r0, #0x88
	ldr r0, [r0]
	bl MOD08_02229A5C
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, #0x88
	ldr r0, [r0]
	bl MOD08_0222A018
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, #0x88
	ldr r0, [r0]
	bl MOD08_0222A008
	ldr r0, [r4, #0x18]
	cmp r0, #3
	beq _022507E2
	ldr r0, _022508A0 ; =0x0000070A
	bl PlaySE
_022507E2:
	cmp r5, #4
	bne _0225088A
	mov r0, #8
	str r0, [r4, #0x14]
	mov r0, #4
	add sp, #0xd0
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_022507F2:
	ldr r0, [r4, #0x14]
	sub r0, r0, #1
	str r0, [r4, #0x14]
	bne _0225088A
	ldr r0, [r4]
	bl MOD11_02230080
	add r5, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x18]
	bl FUN_0200C3DC
	ldr r1, _02250890 ; =0x00004E2F
	add r0, r5, #0
	bl FUN_0200C358
	ldr r1, _02250894 ; =0x00004E2A
	add r0, r5, #0
	bl FUN_0200C368
	ldr r1, _02250898 ; =0x00004E27
	add r0, r5, #0
	bl FUN_0200C378
	ldr r1, _02250898 ; =0x00004E27
	add r0, r5, #0
	bl FUN_0200C388
	ldr r0, [r4, #4]
	mov r1, #6
	ldr r0, [r0, #0x1c]
	mov r2, #0
	bl FUN_02007558
	ldr r0, [r4, #0x18]
	cmp r0, #3
	bne _02250844
	mov r0, #6
	add sp, #0xd0
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_02250844:
	mov r0, #5
	add sp, #0xd0
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225084C:
	ldr r0, [r4, #4]
	add r0, #0x88
	ldr r0, [r0]
	bl MOD08_022299E8
	cmp r0, #1
	beq _0225088A
	ldr r0, [r4, #4]
	add r0, #0x88
	ldr r0, [r0]
	bl MOD08_02229A2C
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, #0x88
	str r1, [r0]
	mov r0, #6
	add sp, #0xd0
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_02250874:
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4]
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	add r0, r5, #0
	bl FUN_0200CAB4
_0225088A:
	add sp, #0xd0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02250890: .word 0x00004E2F
_02250894: .word 0x00004E2A
_02250898: .word 0x00004E27
_0225089C: .word 0x00007FFF
_022508A0: .word 0x0000070A

	thumb_func_start MOD11_022508A4
MOD11_022508A4: ; 0x022508A4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _022508B6
	cmp r0, #1
	beq _02250906
	pop {r3, r4, r5, pc}
_022508B6:
	ldrb r0, [r4, #0xb]
	cmp r0, #2
	ldr r0, [r4, #4]
	bne _022508E2
	ldr r0, [r0, #0x1c]
	mov r1, #0
	mov r2, #5
	bl FUN_020079E0
	ldr r0, [r4, #4]
	mov r1, #0
	ldr r0, [r0, #0x1c]
	bl FUN_0200782C
	mov r1, #0x4a
	lsl r1, r1, #2
	cmp r0, r1
	blt _0225092A
	ldrb r0, [r4, #0xa]
	add r0, r0, #1
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, pc}
_022508E2:
	mov r1, #0
	ldr r0, [r0, #0x1c]
	sub r2, r1, #5
	bl FUN_020079E0
	ldr r0, [r4, #4]
	mov r1, #0
	ldr r0, [r0, #0x1c]
	bl FUN_0200782C
	mov r1, #0x27
	mvn r1, r1
	cmp r0, r1
	bgt _0225092A
	ldrb r0, [r4, #0xa]
	add r0, r0, #1
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, pc}
_02250906:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x1c]
	bl FUN_02007534
	ldr r0, [r4, #4]
	mov r1, #0
	str r1, [r0, #0x1c]
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4]
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	add r0, r5, #0
	bl FUN_0200CAB4
_0225092A:
	pop {r3, r4, r5, pc}

	thumb_func_start MOD11_0225092C
MOD11_0225092C: ; 0x0225092C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0225093E
	cmp r0, #1
	beq _0225099A
	pop {r3, r4, r5, pc}
_0225093E:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	ldr r0, [r4, #4]
	bne _02250970
	mov r1, #0
	mov r2, #5
	bl FUN_020079E0
	mov r0, #0xc
	ldrsh r5, [r4, r0]
	ldr r0, [r4, #4]
	mov r1, #0
	bl FUN_0200782C
	cmp r0, r5
	blt _022509B0
	ldr r0, [r4, #4]
	mov r1, #0
	add r2, r5, #0
	bl FUN_02007558
	ldrb r0, [r4, #0xa]
	add r0, r0, #1
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, pc}
_02250970:
	mov r1, #0
	sub r2, r1, #5
	bl FUN_020079E0
	mov r0, #0xc
	ldrsh r5, [r4, r0]
	ldr r0, [r4, #4]
	mov r1, #0
	bl FUN_0200782C
	cmp r0, r5
	bgt _022509B0
	ldr r0, [r4, #4]
	mov r1, #0
	add r2, r5, #0
	bl FUN_02007558
	ldrb r0, [r4, #0xa]
	add r0, r0, #1
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, pc}
_0225099A:
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4]
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	add r0, r5, #0
	bl FUN_0200CAB4
_022509B0:
	pop {r3, r4, r5, pc}
	.align 2, 0

	thumb_func_start MOD11_022509B4
MOD11_022509B4: ; 0x022509B4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4]
	add r5, r0, #0
	cmp r1, #0
	beq _022509C6
	cmp r1, #1
	beq _022509F6
	b _02250A0A
_022509C6:
	add r0, r4, #0
	add r0, #0x4d
	ldrb r0, [r0]
	cmp r0, #0
	beq _022509DE
	add r0, r4, #0
	add r0, #0x4d
	ldrb r0, [r0]
	add r4, #0x4d
	sub r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_022509DE:
	add r0, r4, #0
	mov r1, #0
	bl MOD11_02257334
	add r0, r4, #0
	mov r1, #1
	bl MOD11_022572AC
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_022509F6:
	add r0, r4, #0
	add r0, #0x4f
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02250A26
	add r0, r1, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02250A0A:
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x24
	add r2, #0x4c
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4, #0xc]
	bl MOD11_022567B8
	mov r0, #0
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl FUN_0200CAB4
_02250A26:
	pop {r3, r4, r5, pc}

	thumb_func_start MOD11_02250A28
MOD11_02250A28: ; 0x02250A28
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4]
	add r5, r0, #0
	cmp r1, #0
	bne _02250A48
	add r0, r4, #0
	add r0, #0x4f
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02250A6C
	add r0, r1, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02250A48:
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x24
	add r2, #0x4c
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4, #0xc]
	bl MOD11_022567B8
	mov r0, #0
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl FUN_0200CAB4
	add r0, r4, #0
	mov r1, #0
	bl MOD11_022572AC
_02250A6C:
	pop {r3, r4, r5, pc}
	.align 2, 0

	thumb_func_start MOD11_02250A70
MOD11_02250A70: ; 0x02250A70
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r4, r1, #0
	str r0, [sp]
	ldr r0, [r4]
	bl MOD11_0222FF68
	ldr r0, [r4]
	bl MOD11_02230094
	add r6, r0, #0
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl MOD11_0222FF7C
	str r0, [sp, #4]
	ldr r0, [r4]
	bl MOD11_0222FF74
	add r7, r0, #0
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl MOD11_022302BC
	add r1, r0, #0
	ldrb r0, [r4, #9]
	cmp r1, r0
	beq _02250AB2
	ldr r0, [r4]
	bl MOD11_02231380
	add r5, r0, #0
	b _02250AB4
_02250AB2:
	mov r5, #0
_02250AB4:
	ldrb r0, [r4, #0xa]
	cmp r0, #8
	bls _02250ABC
	b _02250F3E
_02250ABC:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02250AC8: ; jump table
	.short _02250ADA - _02250AC8 - 2 ; case 0
	.short _02250B16 - _02250AC8 - 2 ; case 1
	.short _02250C04 - _02250AC8 - 2 ; case 2
	.short _02250C1A - _02250AC8 - 2 ; case 3
	.short _02250C2C - _02250AC8 - 2 ; case 4
	.short _02250DA0 - _02250AC8 - 2 ; case 5
	.short _02250DF2 - _02250AC8 - 2 ; case 6
	.short _02250ED6 - _02250AC8 - 2 ; case 7
	.short _02250F14 - _02250AC8 - 2 ; case 8
_02250ADA:
	mov r0, #0
	add r1, r4, #0
	add r2, sp, #0x34
_02250AE0:
	ldrh r3, [r1, #0x24]
	add r1, r1, #2
	strh r3, [r2]
	add r3, r4, r0
	add r3, #0x2c
	ldrb r3, [r3]
	strh r3, [r2, #8]
	add r3, r4, r0
	add r3, #0x30
	ldrb r3, [r3]
	add r0, r0, #1
	strh r3, [r2, #0x10]
	add r2, r2, #2
	cmp r0, #4
	blt _02250AE0
	ldr r0, [r4]
	bl MOD11_02230094
	add r1, r4, #0
	add r1, #0x34
	ldrb r1, [r1]
	add r2, sp, #0x34
	bl MOD11_0225A760
	ldrb r0, [r4, #0xa]
	add r0, r0, #1
	strb r0, [r4, #0xa]
_02250B16:
	ldr r0, [r4]
	bl MOD11_022300C4
	add r5, r0, #0
	mov r0, #1
	lsl r0, r0, #0xa
	add r1, r7, #0
	tst r1, r0
	beq _02250B9A
	ldr r0, [r4]
	bl MOD11_02231268
	cmp r0, #0
	beq _02250B3A
	cmp r0, #1
	beq _02250B66
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_02250B3A:
	mov r0, #2
	add r1, sp, #8
	strb r0, [r1, #9]
	add r0, r4, #0
	add r0, #0x23
	ldrb r0, [r0]
	ldrb r2, [r4, #9]
	mov r3, #0
	lsl r0, r0, #8
	orr r0, r2
	str r0, [sp, #0x14]
	ldr r0, _02250E84 ; =0x00000399
	add r2, sp, #0x10
	strh r0, [r1, #0xa]
	ldr r0, [r4]
	add r1, r5, #0
	bl MOD11_0223178C
	mov r0, #3
	add sp, #0x4c
	strb r0, [r4, #0xa]
	pop {r4, r5, r6, r7, pc}
_02250B66:
	mov r1, #0
	add r0, sp, #8
	strb r1, [r0, #9]
	ldr r0, [r4]
	bl MOD11_0223021C
	ldr r1, _02250E88 ; =0x000004CA
	add r1, r0, r1
	add r0, sp, #8
	strh r1, [r0, #0xa]
	ldr r0, [r4]
	bl MOD11_02230E54
	add r3, r0, #0
	ldr r0, [r4]
	add r1, r5, #0
	add r2, sp, #0x10
	bl MOD11_0223178C
	add r1, r4, #0
	add r1, #0x35
	strb r0, [r1]
	mov r0, #2
	add sp, #0x4c
	strb r0, [r4, #0xa]
	pop {r4, r5, r6, r7, pc}
_02250B9A:
	mov r1, #0x20
	add r2, r7, #0
	tst r2, r1
	beq _02250BBA
	mov r1, #8
	add r0, sp, #8
	strb r1, [r0, #9]
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl MOD11_02230140
	str r0, [sp, #0x14]
	ldr r1, _02250E8C ; =0x0000039A
	add r0, sp, #8
	strh r1, [r0, #0xa]
	b _02250BF0
_02250BBA:
	lsl r1, r1, #4
	tst r1, r7
	beq _02250BD8
	mov r1, #8
	add r0, sp, #8
	strb r1, [r0, #9]
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl MOD11_02230140
	str r0, [sp, #0x14]
	ldr r1, _02250E90 ; =0x000004C6
	add r0, sp, #8
	strh r1, [r0, #0xa]
	b _02250BF0
_02250BD8:
	add r2, r4, #0
	mov r1, #2
	add r3, sp, #8
	strb r1, [r3, #9]
	add r2, #0x23
	ldrb r2, [r2]
	ldrb r1, [r4, #9]
	sub r0, #0x67
	lsl r2, r2, #8
	orr r1, r2
	str r1, [sp, #0x14]
	strh r0, [r3, #0xa]
_02250BF0:
	ldr r0, [r4]
	add r1, r5, #0
	add r2, sp, #0x10
	mov r3, #0
	bl MOD11_0223178C
	mov r0, #3
	add sp, #0x4c
	strb r0, [r4, #0xa]
	pop {r4, r5, r6, r7, pc}
_02250C04:
	add r0, r4, #0
	add r0, #0x35
	ldrb r0, [r0]
	bl FUN_0201BD70
	cmp r0, #0
	bne _02250C36
	mov r0, #3
	add sp, #0x4c
	strb r0, [r4, #0xa]
	pop {r4, r5, r6, r7, pc}
_02250C1A:
	ldr r0, [r4, #4]
	bl MOD11_02257208
	ldr r0, [sp, #4]
	ldr r1, [r4]
	bl MOD11_0225464C
	mov r0, #4
	strb r0, [r4, #0xa]
_02250C2C:
	add r0, r6, #0
	bl MOD11_02258F5C
	cmp r0, #0
	bne _02250C38
_02250C36:
	b _02250F3E
_02250C38:
	ldrb r1, [r4, #9]
	add r0, sp, #8
	strb r1, [r0, #1]
	add r1, r4, #0
	add r1, #0x34
	ldrb r1, [r1]
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0x23
	ldrb r1, [r1]
	strb r1, [r0, #2]
	mov r1, #0x36
	ldrsh r1, [r4, r1]
	strh r1, [r0, #4]
	ldrh r1, [r4, #0x38]
	strh r1, [r0, #6]
	add r1, r4, #0
	add r1, #0x3a
	ldrb r1, [r1]
	strb r1, [r0, #3]
	ldr r1, _02250E94 ; =0x00000197
	ldr r0, [sp, #4]
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _02250CFA
	add r0, r6, #0
	mov r1, #1
	bl MOD11_0225B77C
	ldr r0, [r4]
	bl MOD11_02230C50
	mov r1, #1
	tst r0, r1
	beq _02250C8C
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	add r3, sp, #8
	bl MOD11_02258820
	b _02250CF0
_02250C8C:
	ldr r0, [r4]
	bl MOD11_0222FF74
	mov r1, #2
	lsl r1, r1, #8
	tst r0, r1
	beq _02250CA8
	add r0, r6, #0
	mov r1, #0xa
	mov r2, #0
	add r3, sp, #8
	bl MOD11_02258820
	b _02250CF0
_02250CA8:
	ldr r0, [r4]
	bl MOD11_0222FF74
	mov r1, #0x20
	tst r0, r1
	beq _02250CC2
	add r0, r6, #0
	mov r1, #8
	mov r2, #0
	add r3, sp, #8
	bl MOD11_02258820
	b _02250CF0
_02250CC2:
	add r0, sp, #8
	ldrb r0, [r0]
	cmp r0, #4
	bne _02250CE4
	ldr r0, [r4]
	bl MOD11_0222FF74
	mov r1, #8
	tst r0, r1
	bne _02250CE4
	add r0, r6, #0
	mov r1, #4
	mov r2, #0
	add r3, sp, #8
	bl MOD11_02258820
	b _02250CF0
_02250CE4:
	add r0, r6, #0
	mov r1, #3
	mov r2, #0
	add r3, sp, #8
	bl MOD11_02258820
_02250CF0:
	ldr r0, [r4]
	mov r1, #1
	bl MOD11_022312AC
	b _02250D70
_02250CFA:
	ldr r0, [r4]
	bl MOD11_02230C50
	mov r1, #1
	tst r0, r1
	beq _02250D14
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	add r3, sp, #8
	bl MOD11_02258820
	b _02250D68
_02250D14:
	ldr r0, [r4]
	bl MOD11_0222FF74
	mov r1, #2
	lsl r1, r1, #8
	tst r0, r1
	beq _02250D30
	add r0, r6, #0
	mov r1, #9
	mov r2, #0
	add r3, sp, #8
	bl MOD11_02258820
	b _02250D68
_02250D30:
	ldr r0, [r4]
	bl MOD11_0222FF74
	mov r1, #0x20
	tst r0, r1
	add r3, sp, #8
	beq _02250D4A
	add r0, r6, #0
	mov r1, #7
	mov r2, #0
	bl MOD11_02258820
	b _02250D68
_02250D4A:
	add r0, sp, #8
	ldrb r0, [r0]
	cmp r0, #4
	beq _02250D5E
	add r0, r6, #0
	mov r1, #1
	mov r2, #0
	bl MOD11_02258820
	b _02250D68
_02250D5E:
	add r0, r6, #0
	mov r1, #2
	mov r2, #0
	bl MOD11_02258820
_02250D68:
	ldr r1, _02250E94 ; =0x00000197
	ldr r0, [sp, #4]
	mov r2, #1
	strb r2, [r0, r1]
_02250D70:
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x1c
	bl MOD11_02258D60
	add r1, r4, #0
	add r2, r4, #0
	add r0, r6, #0
	add r1, #0x10
	add r2, #0x16
	bl MOD11_02258D7C
	add r0, r6, #0
	bl MOD11_02258DD0
	cmp r5, #0
	beq _02250D98
	add r0, r5, #0
	bl MOD11_02258180
_02250D98:
	mov r0, #5
	add sp, #0x4c
	strb r0, [r4, #0xa]
	pop {r4, r5, r6, r7, pc}
_02250DA0:
	ldr r0, _02250E98 ; =gMain
	ldr r1, [r0, #0x48]
	mov r0, #8
	tst r0, r1
	beq _02250DD0
	ldr r0, [r4]
	mov r5, #0
	bl MOD11_0222FF84
	cmp r0, #0
	ble _02250DD0
_02250DB6:
	ldr r0, [r4]
	add r1, r5, #0
	bl MOD11_0222FF7C
	add r0, #0x28
	bl MOD11_0225704C
	ldr r0, [r4]
	add r5, r5, #1
	bl MOD11_0222FF84
	cmp r5, r0
	blt _02250DB6
_02250DD0:
	add r0, r6, #0
	bl MOD11_02258E74
	mov r1, #0
	mvn r1, r1
	str r0, [r4, #0xc]
	cmp r0, r1
	beq _02250E02
	mov r0, #0xa
	strb r0, [r4, #0xb]
	ldr r0, _02250E9C ; =0x000005DD
	bl PlaySE
	mov r0, #6
	add sp, #0x4c
	strb r0, [r4, #0xa]
	pop {r4, r5, r6, r7, pc}
_02250DF2:
	add r0, r6, #0
	bl MOD11_02258F5C
	cmp r0, #1
	beq _02250E04
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _02250E04
_02250E02:
	b _02250F3E
_02250E04:
	ldr r0, [r4, #0xc]
	cmp r0, #4
	bhi _02250EC4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02250E16: ; jump table
	.short _02250EC4 - _02250E16 - 2 ; case 0
	.short _02250E20 - _02250E16 - 2 ; case 1
	.short _02250E34 - _02250E16 - 2 ; case 2
	.short _02250E5C - _02250E16 - 2 ; case 3
	.short _02250EA0 - _02250E16 - 2 ; case 4
_02250E20:
	ldr r0, [r4]
	bl MOD11_0222FF74
	mov r1, #0x22
	lsl r1, r1, #4
	tst r0, r1
	beq _02250EC8
	mov r0, #7
	strb r0, [r4, #0xa]
	b _02250EC8
_02250E34:
	mov r1, #0
	add r0, r6, #0
	add r2, r1, #0
	add r3, r1, #0
	bl MOD11_02258820
	add r0, r6, #0
	mov r1, #0
	bl MOD11_0225B77C
	add r0, r5, #0
	bl MOD11_02258184
	ldr r0, [r4, #4]
	bl MOD11_02257238
	ldr r0, [sp, #4]
	bl MOD11_0225468C
	b _02250EC8
_02250E5C:
	mov r1, #0
	add r0, r6, #0
	add r2, r1, #0
	add r3, r1, #0
	bl MOD11_02258820
	add r0, r6, #0
	mov r1, #0
	bl MOD11_0225B77C
	add r0, r5, #0
	bl MOD11_02258184
	ldr r0, [r4, #4]
	bl MOD11_02257238
	ldr r0, [sp, #4]
	bl MOD11_0225468C
	b _02250EC8
	.align 2, 0
_02250E84: .word 0x00000399
_02250E88: .word 0x000004CA
_02250E8C: .word 0x0000039A
_02250E90: .word 0x000004C6
_02250E94: .word 0x00000197
_02250E98: .word gMain
_02250E9C: .word 0x000005DD
_02250EA0:
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl MOD11_02230CB8
	cmp r0, #1
	bne _02250EB6
	add r0, r5, #0
	bl MOD11_02258184
	mov r0, #0xff
	str r0, [r4, #0xc]
_02250EB6:
	mov r1, #0
	add r0, r6, #0
	add r2, r1, #0
	add r3, r1, #0
	bl MOD11_02258820
	b _02250EC8
_02250EC4:
	bl GF_AssertFail
_02250EC8:
	add r0, r6, #0
	bl MOD11_02258E30
	mov r0, #8
	add sp, #0x4c
	strb r0, [r4, #0xa]
	pop {r4, r5, r6, r7, pc}
_02250ED6:
	add r0, r6, #0
	bl MOD11_02258F5C
	cmp r0, #1
	bne _02250F3E
	mov r1, #0
	add r0, r6, #0
	add r2, r1, #0
	add r3, r1, #0
	bl MOD11_02258820
	add r0, r6, #0
	mov r1, #0
	bl MOD11_0225B77C
	add r0, r5, #0
	bl MOD11_02258184
	ldr r0, [r4, #4]
	bl MOD11_02257238
	ldr r0, [sp, #4]
	bl MOD11_0225468C
	add r0, r6, #0
	bl MOD11_02258E30
	mov r0, #8
	add sp, #0x4c
	strb r0, [r4, #0xa]
	pop {r4, r5, r6, r7, pc}
_02250F14:
	add r0, r6, #0
	bl MOD11_0225B780
	cmp r0, #1
	bne _02250F3E
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	ldr r2, [r4, #0xc]
	bl MOD11_02255528
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4]
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	ldr r0, [sp]
	bl FUN_0200CAB4
_02250F3E:
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start MOD11_02250F44
MOD11_02250F44: ; 0x02250F44
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #9]
	add r5, r0, #0
	ldr r0, [r4]
	bl MOD16_021F45A4
	add r2, r0, #0
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl MOD11_02255528
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4]
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	add r0, r5, #0
	bl FUN_0200CAB4
	pop {r3, r4, r5, pc}

	thumb_func_start MOD11_02250F74
MOD11_02250F74: ; 0x02250F74
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #9]
	add r5, r0, #0
	ldrb r2, [r4, #8]
	ldr r0, [r4]
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	add r0, r5, #0
	bl FUN_0200CAB4
	pop {r3, r4, r5, pc}
	.align 2, 0

	thumb_func_start MOD11_02250F94
MOD11_02250F94: ; 0x02250F94
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	bl MOD11_02230DE0
	add r5, r0, #0
	ldr r0, [r4]
	bl MOD11_0222FF78
	mov r2, #0
	ldrb r1, [r4, #9]
	add r3, r2, #0
	bl MOD11_02243420
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x1a ; BASE_GREAT_MARSH_RATE
	bl GetMonBaseStat
	ldr r2, _0225100C ; =MOD11_0225E830
	lsl r1, r5, #1
	ldrb r2, [r2, r1]
	mul r2, r0
	add r0, r2, #0
	ldr r2, _02251010 ; =MOD11_0225E831
	ldrb r1, [r2, r1]
	bl _s32_div_f
	add r5, r0, #0
	bl LCRandom
	mov r1, #0xff
	bl _s32_div_f
	cmp r1, r5
	ldr r0, [r4]
	bgt _02250FEA
	ldrb r1, [r4, #9]
	mov r2, #4
	bl MOD11_02255528
	b _02250FF2
_02250FEA:
	ldrb r1, [r4, #9]
	mov r2, #5
	bl MOD11_02255528
_02250FF2:
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4]
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	add r0, r6, #0
	bl FUN_0200CAB4
	pop {r4, r5, r6, pc}
	nop
_0225100C: .word MOD11_0225E830
_02251010: .word MOD11_0225E831

	thumb_func_start MOD11_02251014
MOD11_02251014: ; 0x02251014
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #9]
	add r5, r0, #0
	ldr r0, [r4]
	mov r2, #4
	bl MOD11_02255528
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4]
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	add r0, r5, #0
	bl FUN_0200CAB4
	pop {r3, r4, r5, pc}

	thumb_func_start MOD11_0225103C
MOD11_0225103C: ; 0x0225103C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	bl MOD11_0222FF68
	ldr r0, [r4]
	bl MOD11_02230094
	add r7, r0, #0
	ldrb r1, [r4, #0x1d]
	ldr r0, [r4]
	bl MOD11_0222FF7C
	str r0, [sp]
	ldrb r1, [r4, #0x1d]
	ldr r0, [r4]
	bl MOD11_022302BC
	add r1, r0, #0
	ldrb r0, [r4, #0x1d]
	cmp r1, r0
	beq _02251076
	ldr r0, [r4]
	bl MOD11_02231380
	add r5, r0, #0
	b _02251078
_02251076:
	mov r5, #0
_02251078:
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #3
	bls _02251084
	b _0225118E
_02251084:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02251090: ; jump table
	.short _02251098 - _02251090 - 2 ; case 0
	.short _02251114 - _02251090 - 2 ; case 1
	.short _0225113A - _02251090 - 2 ; case 2
	.short _02251180 - _02251090 - 2 ; case 3
_02251098:
	add r0, r7, #0
	bl MOD11_02258F5C
	cmp r0, #0
	bne _022510A4
	b _022511B6
_022510A4:
	ldr r0, [r4]
	bl MOD11_022300C4
	add r1, r0, #0
	mov r2, #2
	add r0, sp, #4
	strb r2, [r0, #0x15]
	ldrb r2, [r4, #0x1f]
	ldrb r3, [r4, #0x1d]
	lsl r2, r2, #8
	orr r2, r3
	str r2, [sp, #0x1c]
	ldr r2, _022511BC ; =0x00000399
	mov r3, #0
	strh r2, [r0, #0x16]
	ldr r0, [r4]
	add r2, sp, #0x18
	bl MOD11_0223178C
	add r0, r7, #0
	bl MOD11_02258E30
	add r5, sp, #4
	mov r2, #0
	add r3, r4, #0
	add r6, r5, #0
_022510D8:
	ldrh r0, [r3, #0xc]
	add r1, r4, r2
	add r2, r2, #1
	strh r0, [r5]
	ldrb r0, [r1, #0x14]
	add r3, r3, #2
	add r5, r5, #2
	strb r0, [r6, #8]
	ldrb r0, [r1, #0x18]
	strb r0, [r6, #0xc]
	add r6, r6, #1
	cmp r2, #4
	blt _022510D8
	ldrb r1, [r4, #0x1e]
	add r0, sp, #4
	mov r2, #0
	strb r1, [r0, #0x10]
	add r0, r7, #0
	mov r1, #0xb
	add r3, sp, #4
	bl MOD11_02258820
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r4, #0x20
	add sp, #0x3c
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, r7, pc}
_02251114:
	add r0, r7, #0
	bl MOD11_02258E74
	mov r1, #0
	mvn r1, r1
	str r0, [r4, #8]
	cmp r0, r1
	beq _022511B6
	ldr r0, _022511C0 ; =0x000005DD
	bl PlaySE
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r4, #0x20
	add sp, #0x3c
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, r7, pc}
_0225113A:
	ldr r0, [r4, #8]
	cmp r0, #0xff
	beq _02251166
	ldr r0, [r4]
	bl MOD11_0222FF74
	mov r1, #2
	tst r0, r1
	bne _02251166
	add r0, r7, #0
	mov r1, #0
	bl MOD11_0225B77C
	add r0, r5, #0
	bl MOD11_02258184
	ldr r0, [r4, #4]
	bl MOD11_02257238
	ldr r0, [sp]
	bl MOD11_0225468C
_02251166:
	ldrb r1, [r4, #0x1d]
	ldr r0, [r4]
	ldr r2, [r4, #8]
	bl MOD11_022555E4
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r4, #0x20
	add sp, #0x3c
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, r7, pc}
_02251180:
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x20
	strb r1, [r0]
_0225118E:
	add r0, r7, #0
	bl MOD11_0225B780
	cmp r0, #1
	bne _022511B6
	ldr r0, [r4]
	mov r1, #1
	bl MOD11_02231274
	ldrb r1, [r4, #0x1d]
	ldrb r2, [r4, #0x1c]
	ldr r0, [r4]
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	add r0, r6, #0
	bl FUN_0200CAB4
_022511B6:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_022511BC: .word 0x00000399
_022511C0: .word 0x000005DD

	thumb_func_start MOD11_022511C4
MOD11_022511C4: ; 0x022511C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r1, #0
	str r0, [sp, #8]
	ldr r0, [r6]
	bl MOD11_0222FF74
	add r4, r0, #0
	ldr r0, [r6]
	bl MOD11_0222FF78
	str r0, [sp, #0xc]
	ldr r0, _02251290 ; =0x00000101
	tst r0, r4
	bne _022511FA
	ldr r0, [r6]
	bl MOD11_02230C50
	mov r1, #1
	tst r0, r1
	bne _022511FA
	ldrb r1, [r6, #0x1d]
	ldr r0, [r6]
	bl MOD11_02230270
	cmp r0, #0
	bne _02251216
_022511FA:
	bl FUN_02033590
	cmp r0, #0
	beq _02251206
	bl GF_AssertFail
_02251206:
	ldrb r1, [r6, #0x1d]
	ldr r0, [r6]
	bl MOD16_021EFD8C
	cmp r0, #0xff
	beq _0225128C
	add r4, r0, #1
	b _0225126C
_02251216:
	mov r7, #0
	add r4, r7, #0
	add r5, sp, #0x10
_0225121C:
	add r0, r4, #0
	bl MaskOfFlagNo
	ldrh r1, [r6, #0x22]
	tst r0, r1
	bne _0225122E
	add r0, r4, #1
	stmia r5!, {r0}
	add r7, r7, #1
_0225122E:
	add r4, r4, #1
	cmp r4, #4
	blt _0225121C
	bl LCRandom
	add r1, r7, #0
	bl _s32_div_f
	lsl r1, r1, #2
	add r0, sp, #0x10
	ldr r4, [r0, r1]
	mov r0, #1
	sub r3, r4, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	lsl r3, r3, #1
	add r3, r6, r3
	ldrb r2, [r6, #0x1d]
	ldrh r3, [r3, #0xc]
	ldr r0, [r6]
	ldr r1, [sp, #0xc]
	bl MOD11_02244C28
	str r0, [sp]
	ldrb r3, [r6, #0x1d]
	ldr r0, [r6]
	ldr r1, [sp, #0xc]
	mov r2, #0xb
	bl MOD11_0224C54C
_0225126C:
	ldrb r1, [r6, #0x1d]
	ldr r0, [r6]
	add r2, r4, #0
	bl MOD11_022555E4
	ldrb r1, [r6, #0x1d]
	ldrb r2, [r6, #0x1c]
	ldr r0, [r6]
	bl MOD11_022567B8
	add r0, r6, #0
	bl FreeToHeap
	ldr r0, [sp, #8]
	bl FUN_0200CAB4
_0225128C:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02251290: .word 0x00000101

	thumb_func_start MOD11_02251294
MOD11_02251294: ; 0x02251294
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #0x1d]
	add r5, r0, #0
	ldrb r2, [r4, #0x1c]
	ldr r0, [r4]
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	add r0, r5, #0
	bl FUN_0200CAB4
	pop {r3, r4, r5, pc}
	.align 2, 0

	thumb_func_start MOD11_022512B4
MOD11_022512B4: ; 0x022512B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r4, r1, #0
	str r0, [sp]
	ldr r0, [r4]
	bl MOD11_0222FF68
	ldrb r1, [r4, #0xd]
	ldr r0, [r4]
	bl MOD11_0222FF7C
	add r7, r0, #0
	ldr r0, [r4]
	bl MOD11_02230094
	add r5, r0, #0
	ldrb r1, [r4, #0xd]
	ldr r0, [r4]
	bl MOD11_022302BC
	add r1, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r1, r0
	beq _022512EE
	ldr r0, [r4]
	bl MOD11_02231380
	add r6, r0, #0
	b _022512F0
_022512EE:
	mov r6, #0
_022512F0:
	ldrb r0, [r4, #0xf]
	cmp r0, #3
	bhi _022513BE
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02251302: ; jump table
	.short _0225130A - _02251302 - 2 ; case 0
	.short _02251366 - _02251302 - 2 ; case 1
	.short _02251386 - _02251302 - 2 ; case 2
	.short _022513BA - _02251302 - 2 ; case 3
_0225130A:
	add r0, r5, #0
	bl MOD11_02258F5C
	cmp r0, #0
	bne _02251316
	b _02251418
_02251316:
	add r2, sp, #8
	mov r0, #0
	add r1, r4, #0
	add r2, #2
_0225131E:
	ldrh r3, [r1, #0x10]
	add r0, r0, #1
	strh r3, [r2]
	ldrh r3, [r1, #0x12]
	strh r3, [r2, #2]
	ldrh r3, [r1, #0x14]
	strh r3, [r2, #4]
	ldrh r3, [r1, #0x16]
	add r1, #8
	strh r3, [r2, #6]
	add r2, #8
	cmp r0, #4
	blt _0225131E
	ldrb r1, [r4, #0xe]
	add r0, sp, #0x28
	add r0, #2
	strb r1, [r0]
	ldrh r0, [r4, #0x30]
	ldrb r1, [r4, #0xe]
	bl MOD11_02258F88
	add r1, sp, #0x28
	add r1, #2
	strb r0, [r1, #1]
	add r3, sp, #8
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #0
	add r3, #2
	bl MOD11_02258820
	ldrb r0, [r4, #0xf]
	add sp, #0x2c
	add r0, r0, #1
	strb r0, [r4, #0xf]
	pop {r4, r5, r6, r7, pc}
_02251366:
	add r0, r5, #0
	bl MOD11_02258E74
	mov r1, #0
	mvn r1, r1
	str r0, [r4, #8]
	cmp r0, r1
	beq _02251418
	ldr r0, _0225141C ; =0x000005DD
	bl PlaySE
	ldrb r0, [r4, #0xf]
	add sp, #0x2c
	add r0, r0, #1
	strb r0, [r4, #0xf]
	pop {r4, r5, r6, r7, pc}
_02251386:
	ldr r0, [r4, #8]
	cmp r0, #0xff
	beq _022513B0
	ldr r0, [r4, #4]
	bl MOD11_02257238
	add r0, r7, #0
	bl MOD11_0225468C
	add r0, r6, #0
	bl MOD11_02258184
	add r0, r4, #0
	add r0, #0x32
	ldrb r0, [r0]
	cmp r0, #1
	bne _022513B0
	add r0, r5, #0
	mov r1, #0
	bl MOD11_0225B77C
_022513B0:
	ldrb r0, [r4, #0xf]
	add sp, #0x2c
	add r0, r0, #1
	strb r0, [r4, #0xf]
	pop {r4, r5, r6, r7, pc}
_022513BA:
	add r0, r0, #1
	strb r0, [r4, #0xf]
_022513BE:
	add r0, r5, #0
	bl MOD11_0225B780
	cmp r0, #1
	bne _02251418
	ldr r0, [r4]
	ldr r5, [r4, #8]
	bl MOD11_0222FF74
	add r6, r0, #0
	cmp r5, #0xff
	beq _022513F8
	ldr r0, [r4]
	add r1, sp, #4
	bl MOD11_022314E0
	mov r0, #2
	tst r0, r6
	ldr r0, [r4, #8]
	beq _022513F0
	add r1, r0, #1
	add r0, sp, #4
	ldrb r0, [r0, r1]
	add r5, r0, #1
	b _022513F8
_022513F0:
	sub r1, r0, #1
	add r0, sp, #4
	ldrb r0, [r0, r1]
	add r5, r0, #1
_022513F8:
	ldrb r1, [r4, #0xd]
	ldr r0, [r4]
	add r2, r5, #0
	bl MOD11_02255720
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xc]
	ldr r0, [r4]
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	ldr r0, [sp]
	bl FUN_0200CAB4
_02251418:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0225141C: .word 0x000005DD

	thumb_func_start MOD11_02251420
MOD11_02251420: ; 0x02251420
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	bl MOD11_0222FF78
	add r1, r0, #0
	ldrb r3, [r5, #0xd]
	ldr r0, [r5]
	mov r2, #0xb
	bl MOD11_0224C474
	add r4, r0, #1
	cmp r4, #5
	blt _02251442
	bl GF_AssertFail
_02251442:
	ldrb r1, [r5, #0xd]
	ldr r0, [r5]
	add r2, r4, #0
	bl MOD11_02255720
	ldrb r1, [r5, #0xd]
	ldrb r2, [r5, #0xc]
	ldr r0, [r5]
	bl MOD11_022567B8
	add r0, r5, #0
	bl FreeToHeap
	add r0, r6, #0
	bl FUN_0200CAB4
	pop {r4, r5, r6, pc}

	thumb_func_start MOD11_02251464
MOD11_02251464: ; 0x02251464
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #0xd]
	add r5, r0, #0
	ldrb r2, [r4, #0xc]
	ldr r0, [r4]
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	add r0, r5, #0
	bl FUN_0200CAB4
	pop {r3, r4, r5, pc}
	.align 2, 0

	thumb_func_start MOD11_02251484
MOD11_02251484: ; 0x02251484
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x14
	add r4, r1, #0
	add r7, r0, #0
	ldr r0, [r4]
	bl MOD11_022300CC
	ldrb r1, [r4, #0xe]
	add r5, r0, #0
	cmp r1, #0x1e
	bls _022514A0
	bl _02251FEA
_022514A0:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022514AC: ; jump table
	.short _022514EA - _022514AC - 2 ; case 0
	.short _02251540 - _022514AC - 2 ; case 1
	.short _022515C2 - _022514AC - 2 ; case 2
	.short _022515D6 - _022514AC - 2 ; case 3
	.short _02251634 - _022514AC - 2 ; case 4
	.short _0225177C - _022514AC - 2 ; case 5
	.short _022517B8 - _022514AC - 2 ; case 6
	.short _02251808 - _022514AC - 2 ; case 7
	.short _022519DC - _022514AC - 2 ; case 8
	.short _02251A5A - _022514AC - 2 ; case 9
	.short _02251A96 - _022514AC - 2 ; case 10
	.short _02251AB8 - _022514AC - 2 ; case 11
	.short _02251FA2 - _022514AC - 2 ; case 12
	.short _02251B3E - _022514AC - 2 ; case 13
	.short _02251FA2 - _022514AC - 2 ; case 14
	.short _02251BF2 - _022514AC - 2 ; case 15
	.short _02251FD0 - _022514AC - 2 ; case 16
	.short _02251AF8 - _022514AC - 2 ; case 17
	.short _02251FA2 - _022514AC - 2 ; case 18
	.short _02251CA6 - _022514AC - 2 ; case 19
	.short _02251FA2 - _022514AC - 2 ; case 20
	.short _02251CEC - _022514AC - 2 ; case 21
	.short _02251D86 - _022514AC - 2 ; case 22
	.short _02251DBC - _022514AC - 2 ; case 23
	.short _02251FD0 - _022514AC - 2 ; case 24
	.short _02251AF8 - _022514AC - 2 ; case 25
	.short _02251FA2 - _022514AC - 2 ; case 26
	.short _02251CA6 - _022514AC - 2 ; case 27
	.short _02251FA2 - _022514AC - 2 ; case 28
	.short _02251E2E - _022514AC - 2 ; case 29
	.short _02251FD0 - _022514AC - 2 ; case 30
_022514EA:
	ldr r0, [r4]
	bl MOD11_02230094
	bl MOD11_0225C76C
	strb r0, [r4, #0x10]
	ldr r0, [r4]
	bl MOD11_02230288
	mov r1, #1
	bl FUN_020143A8
	mov r1, #0
	mov r2, #3
	str r1, [sp]
	mov r0, #7
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #5
	add r3, r1, #0
	add r0, r5, #0
	lsl r2, r2, #0xa
	sub r3, #0xd
	bl FUN_02003210
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0xa
	add r3, r1, #0
	ldr r2, _02251850 ; =0x0000FFFF
	add r0, r5, #0
	sub r3, #0x12
	bl FUN_02003210
	ldrb r0, [r4, #0xe]
	add sp, #0x1fc
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02251540:
	bl FUN_020038E4
	cmp r0, #0
	bne _022515FE
	ldr r0, [r4]
	bl MOD11_0222D7F8
	mov r0, #5
	mov r1, #0x34
	bl AllocFromHeap
	str r0, [r4, #4]
	ldr r1, [r4]
	str r1, [r0]
	ldrb r1, [r4, #0xd]
	ldr r0, [r4]
	bl MOD11_022301D4
	ldr r1, [r4, #4]
	str r0, [r1, #4]
	ldr r0, [r4, #4]
	mov r1, #5
	str r1, [r0, #0xc]
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, #0x26
	strb r1, [r0]
	ldr r0, [r4]
	bl MOD11_02230214
	ldr r1, [r4, #4]
	str r0, [r1, #8]
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, #4]
	str r1, [r0, #0x10]
	ldr r0, [r4, #4]
	ldrb r1, [r4, #0x10]
	add r0, #0x25
	strb r1, [r0]
	ldr r0, [r4, #4]
	ldrb r1, [r4, #0x14]
	add r0, #0x22
	strb r1, [r0]
	ldr r0, [r4, #4]
	ldrb r1, [r4, #0x15]
	add r0, #0x23
	strb r1, [r0]
	ldr r0, [r4, #4]
	ldrb r1, [r4, #0x16]
	add r0, #0x24
	strb r1, [r0]
	ldrb r0, [r4, #0xd]
	add r0, r4, r0
	add r0, #0x30
	ldrb r1, [r0]
	ldr r0, [r4, #4]
	str r1, [r0, #0x18]
	ldr r0, [r4, #4]
	bl MOD09_022186F0
	add sp, #0x1fc
	mov r0, #3
	add sp, #0x14
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_022515C2:
	ldr r0, [r4, #4]
	ldrb r1, [r4, #0x10]
	add r0, #0x25
	strb r1, [r0]
	ldr r0, [r4, #4]
	bl MOD09_022186F0
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
_022515D6:
	ldr r1, [r4, #4]
	add r0, r1, #0
	add r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _022515FE
	mov r0, #0
	add r1, #0x26
	strb r0, [r1]
	ldr r0, [r4, #4]
	add r0, #0x25
	ldrb r0, [r0]
	strb r0, [r4, #0x10]
	ldr r1, [r4, #4]
	ldrh r0, [r1, #0x1c]
	cmp r0, #0
	beq _0225162A
	ldrb r0, [r1, #0x1e]
	cmp r0, #3
	bls _02251602
_022515FE:
	bl _02251FEA
_02251602:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225160E: ; jump table
	.short _02251616 - _0225160E - 2 ; case 0
	.short _02251616 - _0225160E - 2 ; case 1
	.short _02251620 - _0225160E - 2 ; case 2
	.short _02251620 - _0225160E - 2 ; case 3
_02251616:
	add sp, #0x1fc
	mov r0, #4
	add sp, #0x14
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02251620:
	add sp, #0x1fc
	mov r0, #6
	add sp, #0x14
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_0225162A:
	add sp, #0x1fc
	mov r0, #6
	add sp, #0x14
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02251634:
	ldrb r1, [r4, #0xd]
	ldr r0, [r4]
	bl MOD11_0222FF88
	str r0, [sp, #0x14]
	ldr r0, [r4]
	bl MOD11_0222FF74
	mov r1, #2
	tst r0, r1
	beq _02251660
	ldr r0, [r4]
	bl MOD11_0222FF74
	mov r1, #8
	tst r0, r1
	bne _02251660
	ldrb r1, [r4, #0xd]
	mov r0, #1
	add r7, r1, #0
	and r7, r0
	b _02251662
_02251660:
	ldrb r7, [r4, #0xd]
_02251662:
	ldr r0, [r4, #8]
	mov r1, #6
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl InitPartyWithMaxSize
	ldr r0, [sp, #0x14]
	mov r6, #0
	bl GetPartyCount
	cmp r0, #0
	ble _022516B0
	mov r0, #6
	mul r0, r7
	add r5, r4, r0
_02251680:
	ldrb r2, [r5, #0x18]
	ldr r0, [r4]
	add r1, r7, #0
	bl MOD11_02230014
	add r1, r0, #0
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl AddMonToParty
	ldr r1, [r4, #8]
	ldrb r0, [r5, #0x18]
	ldr r1, [r1, #4]
	add r5, r5, #1
	add r1, r1, r6
	add r1, #0x2c
	strb r0, [r1]
	ldr r0, [sp, #0x14]
	add r6, r6, #1
	bl GetPartyCount
	cmp r6, r0
	blt _02251680
_022516B0:
	ldr r0, [r4, #8]
	ldr r1, [r4]
	ldr r0, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [r4, #8]
	mov r1, #5
	ldr r0, [r0, #4]
	str r1, [r0, #0xc]
	ldr r1, [r4, #8]
	mov r0, #0
	ldr r1, [r1, #4]
	strb r0, [r1, #0x11]
	ldr r1, [r4, #8]
	ldr r1, [r1, #4]
	add r1, #0x36
	strb r0, [r1]
	ldr r1, [r4, #8]
	ldr r1, [r1, #4]
	strh r0, [r1, #0x24]
	ldr r0, [r4, #8]
	mov r1, #2
	ldr r0, [r0, #4]
	add r0, #0x35
	strb r1, [r0]
	ldr r0, [r4, #4]
	ldrh r1, [r0, #0x1c]
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	strh r1, [r0, #0x22]
	ldr r0, [r4, #4]
	ldrb r1, [r0, #0x1e]
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	add r0, #0x33
	strb r1, [r0]
	ldr r0, [r4, #4]
	ldr r1, [r0, #0x10]
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	str r1, [r0, #0x28]
	ldr r0, [r4, #8]
	ldrb r1, [r4, #0x10]
	ldr r0, [r0, #4]
	add r0, #0x32
	strb r1, [r0]
	ldrb r0, [r4, #0xd]
	ldr r2, [r4, #8]
	add r0, r2, r0
	ldrb r1, [r0, #0xc]
	ldr r0, [r2, #4]
	strb r1, [r0, #0x14]
	ldrb r1, [r4, #0xd]
	ldr r5, [r4, #8]
	ldr r0, [r4]
	bl MOD11_022302BC
	add r0, r5, r0
	ldrb r1, [r0, #0xc]
	ldr r0, [r5, #4]
	strb r1, [r0, #0x15]
	ldrb r0, [r4, #0xf]
	cmp r0, #4
	bne _02251746
	ldrb r1, [r4, #0xd]
	ldr r0, [r4]
	bl MOD11_022302BC
	add r0, r4, r0
	add r0, #0x30
	ldrb r1, [r0]
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	str r1, [r0, #0x18]
	ldrb r0, [r4, #0xd]
	b _0225175C
_02251746:
	ldrb r0, [r4, #0xd]
	add r0, r4, r0
	add r0, #0x30
	ldrb r1, [r0]
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	str r1, [r0, #0x18]
	ldrb r1, [r4, #0xd]
	ldr r0, [r4]
	bl MOD11_022302BC
_0225175C:
	add r0, r4, r0
	add r0, #0x30
	ldrb r1, [r0]
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	str r1, [r0, #0x1c]
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl MOD07_02211E60
	ldrb r0, [r4, #0xe]
	add sp, #0x1fc
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_0225177C:
	ldr r0, [r4, #8]
	ldr r1, [r0, #4]
	add r0, r1, #0
	add r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0
	beq _02251832
	add r1, #0x32
	ldrb r0, [r1]
	mov r1, #0
	strb r0, [r4, #0x10]
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	add r0, #0x36
	strb r1, [r0]
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x11]
	cmp r0, #6
	bne _022517AE
	add sp, #0x1fc
	mov r0, #2
	add sp, #0x14
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_022517AE:
	add sp, #0x1fc
	mov r0, #6
	add sp, #0x14
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_022517B8:
	ldr r0, [r4]
	bl MOD11_0222D88C
	ldr r0, [r4]
	bl MOD11_02230094
	ldrb r1, [r4, #0x10]
	bl MOD11_0225C778
	mov r0, #7
	str r0, [sp]
	mov r0, #0
	mov r1, #5
	str r0, [sp, #4]
	mov r2, #3
	add r3, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	lsl r2, r2, #0xa
	sub r3, #0xd
	bl FUN_02003210
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	mov r1, #0xa
	str r0, [sp, #4]
	add r3, r1, #0
	str r0, [sp, #8]
	ldr r2, _02251850 ; =0x0000FFFF
	add r0, r5, #0
	sub r3, #0x12
	bl FUN_02003210
	ldrb r0, [r4, #0xe]
	add sp, #0x1fc
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02251808:
	bl FUN_020038E4
	cmp r0, #0
	bne _02251832
	ldr r0, [r4]
	bl MOD11_02230288
	mov r1, #0
	bl FUN_020143A8
	ldr r0, [r4, #4]
	ldrh r0, [r0, #0x1c]
	cmp r0, #0
	bne _02251826
	b _022519D2
_02251826:
	mov r0, #9
	strb r0, [r4, #0xe]
	ldr r0, [r4, #4]
	ldrb r1, [r0, #0x1e]
	cmp r1, #3
	bls _02251834
_02251832:
	b _02251FEA
_02251834:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02251840: ; jump table
	.short _022518F4 - _02251840 - 2 ; case 0
	.short _02251848 - _02251840 - 2 ; case 1
	.short _022519C8 - _02251840 - 2 ; case 2
	.short _0225195E - _02251840 - 2 ; case 3
_02251848:
	ldrh r1, [r0, #0x1c]
	ldr r0, _02251854 ; =0x0000FFE4
	b _02251858
	nop
_02251850: .word 0x0000FFFF
_02251854: .word 0x0000FFE4
_02251858:
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _0225186C
	add sp, #0x1fc
	mov r0, #8
	add sp, #0x14
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_0225186C:
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x11]
	cmp r0, #2
	bhs _0225188A
	ldr r0, [r4]
	bl MOD11_0222FF74
	cmp r0, #3
	beq _02251894
	ldr r0, [r4]
	bl MOD11_0222FF74
	cmp r0, #0x13
	beq _02251894
_0225188A:
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x11]
	cmp r0, #1
	bhs _022518EA
_02251894:
	ldr r0, [r4, #4]
	ldrh r0, [r0, #0x1c]
	cmp r0, #0x17
	ldr r0, [r4]
	bne _022518C4
	bl MOD11_02230E20
	cmp r0, #1
	bne _022518B0
	add sp, #0x1fc
	mov r0, #0x11
	add sp, #0x14
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, r6, r7, pc}
_022518B0:
	mov r1, #0x74
	ldr r0, _02251BF8 ; =0x000005EC
	mvn r1, r1
	bl FUN_020054A8
	add sp, #0x1fc
	mov r0, #0x15
	add sp, #0x14
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, r6, r7, pc}
_022518C4:
	bl MOD11_02230E20
	cmp r0, #1
	bne _022518D6
	add sp, #0x1fc
	mov r0, #0x19
	add sp, #0x14
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, r6, r7, pc}
_022518D6:
	mov r1, #0x74
	ldr r0, _02251BF8 ; =0x000005EC
	mvn r1, r1
	bl FUN_020054A8
	add sp, #0x1fc
	mov r0, #0x1d
	add sp, #0x14
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, r6, r7, pc}
_022518EA:
	add sp, #0x1fc
	mov r0, #8
	add sp, #0x14
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_022518F4:
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x11]
	cmp r0, #2
	bhs _02251912
	ldr r0, [r4]
	bl MOD11_0222FF74
	cmp r0, #3
	beq _0225191C
	ldr r0, [r4]
	bl MOD11_0222FF74
	cmp r0, #0x13
	beq _0225191C
_02251912:
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x11]
	cmp r0, #1
	bhs _02251954
_0225191C:
	ldr r0, [r4, #4]
	mov r1, #0x26
	ldrh r0, [r0, #0x1c]
	mov r2, #5
	bl GetItemAttr
	cmp r0, #0
	beq _02251954
	ldr r0, [r4]
	bl MOD11_02230E20
	cmp r0, #1
	bne _02251940
	add sp, #0x1fc
	mov r0, #0x11
	add sp, #0x14
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, r6, r7, pc}
_02251940:
	mov r1, #0x74
	ldr r0, _02251BF8 ; =0x000005EC
	mvn r1, r1
	bl FUN_020054A8
	add sp, #0x1fc
	mov r0, #0x15
	add sp, #0x14
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, r6, r7, pc}
_02251954:
	add sp, #0x1fc
	mov r0, #8
	add sp, #0x14
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_0225195E:
	ldrh r1, [r0, #0x1c]
	ldr r0, _02251BFC ; =0x0000FFC1
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _02251976
	add sp, #0x1fc
	mov r0, #8
	add sp, #0x14
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02251976:
	cmp r1, #0x37
	ldr r0, [r4]
	bne _022519A2
	bl MOD11_02230E20
	cmp r0, #1
	bne _0225198E
	add sp, #0x1fc
	mov r0, #0xd
	add sp, #0x14
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, r6, r7, pc}
_0225198E:
	mov r1, #0x74
	ldr r0, _02251BF8 ; =0x000005EC
	mvn r1, r1
	bl FUN_020054A8
	add sp, #0x1fc
	mov r0, #0xf
	add sp, #0x14
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, r6, r7, pc}
_022519A2:
	bl MOD11_02230E20
	cmp r0, #1
	bne _022519B4
	add sp, #0x1fc
	mov r0, #0xb
	add sp, #0x14
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, r6, r7, pc}
_022519B4:
	mov r1, #0x74
	ldr r0, _02251BF8 ; =0x000005EC
	mvn r1, r1
	bl FUN_020054A8
	add sp, #0x1fc
	mov r0, #0xf
	add sp, #0x14
	strh r0, [r4, #0x12]
	pop {r3, r4, r5, r6, r7, pc}
_022519C8:
	add sp, #0x1fc
	mov r0, #8
	add sp, #0x14
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_022519D2:
	add sp, #0x1fc
	mov r0, #8
	add sp, #0x14
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_022519DC:
	ldr r2, [r4, #4]
	ldrh r0, [r2, #0x1c]
	cmp r0, #0
	bne _022519EC
	mov r1, #0xff
	add r0, sp, #0x1c
	strh r1, [r0]
	b _02251A08
_022519EC:
	add r1, sp, #0x1c
	strh r0, [r1]
	ldrb r0, [r2, #0x1e]
	strb r0, [r1, #2]
	cmp r0, #1
	bhi _02251A08
	ldr r0, [r4, #8]
	ldr r2, [r0, #4]
	ldrb r0, [r2, #0x11]
	add r0, r2, r0
	add r0, #0x2c
	ldrb r0, [r0]
	add r0, r0, #1
	strb r0, [r1, #3]
_02251A08:
	add r3, sp, #0x1c
	ldrb r1, [r4, #0xd]
	mov r2, sp
	ldrh r5, [r3]
	ldr r0, [r4]
	sub r2, r2, #4
	strh r5, [r2]
	ldrh r3, [r3, #2]
	strh r3, [r2, #2]
	ldr r2, [r2]
	bl MOD11_022558C4
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xc]
	ldr r0, [r4]
	bl MOD11_022567B8
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl FreeToHeap
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl FreeToHeap
	ldr r0, [r4, #8]
	bl FreeToHeap
	ldr r0, [r4, #4]
	bl FreeToHeap
	add r0, r4, #0
	bl FreeToHeap
	add r0, r7, #0
	bl FUN_0200CAB4
	add sp, #0x1fc
	add sp, #0x14
	pop {r3, r4, r5, r6, r7, pc}
_02251A5A:
	ldr r1, _02251C00 ; =0x000004B6
	add r0, sp, #0x8c
	strh r1, [r0, #2]
	mov r1, #5
	strb r1, [r0, #1]
	ldr r0, [r4, #4]
	ldrh r0, [r0, #0x1c]
	str r0, [sp, #0x90]
	ldr r0, [r4]
	bl MOD11_022300C4
	add r5, r0, #0
	ldr r0, [r4]
	bl MOD11_02230E54
	add r3, r0, #0
	ldr r0, [r4]
	add r1, r5, #0
	add r2, sp, #0x8c
	bl MOD11_0223178C
	strb r0, [r4, #0x11]
	mov r0, #0x14
	strb r0, [r4, #0x17]
	ldrb r0, [r4, #0xe]
	add sp, #0x1fc
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02251A96:
	ldrb r0, [r4, #0x11]
	bl FUN_0201BD70
	cmp r0, #0
	bne _02251AAC
	ldrb r0, [r4, #0x17]
	sub r0, r0, #1
	strb r0, [r4, #0x17]
	ldrb r0, [r4, #0x17]
	cmp r0, #0
	beq _02251AAE
_02251AAC:
	b _02251FEA
_02251AAE:
	ldrh r0, [r4, #0x12]
	add sp, #0x1fc
	add sp, #0x14
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02251AB8:
	ldrb r1, [r4, #0xd]
	mov r0, #9
	add r2, sp, #0x1b8
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl MOD11_02256854
	ldrb r1, [r4, #0xd]
	ldr r0, [r4]
	bl MOD11_0222FF7C
	add r5, r0, #0
	ldr r0, [r4]
	bl MOD11_02230070
	add r2, r0, #0
	ldr r0, [r4]
	add r1, r5, #0
	add r3, sp, #0x1b8
	bl MOD11_02254404
	ldrb r0, [r4, #0xe]
	add sp, #0x1fc
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02251AF8:
	ldr r0, [r4, #8]
	mov r1, #0
	ldr r0, [r0, #4]
	add r2, sp, #0x160
	ldrb r0, [r0, #0x11]
	mov r3, #1
	lsl r5, r0, #1
	mov r0, #9
	str r0, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4]
	bl MOD11_02256854
	ldr r0, [r4]
	add r1, r5, #0
	bl MOD11_0222FF7C
	add r5, r0, #0
	ldr r0, [r4]
	bl MOD11_02230070
	add r2, r0, #0
	ldr r0, [r4]
	add r1, r5, #0
	add r3, sp, #0x160
	bl MOD11_02254404
	ldrb r0, [r4, #0xe]
	add sp, #0x1fc
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02251B3E:
	ldr r0, [r4, #4]
	add r2, sp, #0x108
	ldrh r0, [r0, #0x1c]
	cmp r0, #0x37
	bne _02251B7C
	ldrb r0, [r4, #0xd]
	mov r1, #0
	add r3, r1, #0
	str r1, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x36
	str r0, [sp, #0xc]
	ldr r0, [r4]
	bl MOD11_02256854
	ldrb r1, [r4, #0xd]
	ldr r0, [r4]
	bl MOD11_0222FF7C
	add r5, r0, #0
	ldr r0, [r4]
	bl MOD11_02230070
	add r2, r0, #0
	ldr r0, [r4]
	add r1, r5, #0
	add r3, sp, #0x108
	bl MOD11_02254404
	b _02251BE6
_02251B7C:
	cmp r0, #0x38
	bne _02251BB4
	ldrb r0, [r4, #0xd]
	mov r1, #0
	add r3, r1, #0
	str r1, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x74
	str r0, [sp, #0xc]
	ldr r0, [r4]
	bl MOD11_02256854
	ldrb r1, [r4, #0xd]
	ldr r0, [r4]
	bl MOD11_0222FF7C
	add r5, r0, #0
	ldr r0, [r4]
	bl MOD11_02230070
	add r2, r0, #0
	ldr r0, [r4]
	add r1, r5, #0
	add r3, sp, #0x108
	bl MOD11_02254404
	b _02251BE6
_02251BB4:
	ldrb r1, [r4, #0xd]
	mov r0, #0xc
	mov r3, #1
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	bl MOD11_02256854
	ldrb r1, [r4, #0xd]
	ldr r0, [r4]
	bl MOD11_0222FF7C
	add r5, r0, #0
	ldr r0, [r4]
	bl MOD11_02230070
	add r2, r0, #0
	ldr r0, [r4]
	add r1, r5, #0
	add r3, sp, #0x108
	bl MOD11_02254404
_02251BE6:
	ldrb r0, [r4, #0xe]
	add sp, #0x1fc
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02251BF2:
	ldr r2, _02251C04 ; =0x000004B3
	b _02251C08
	nop
_02251BF8: .word 0x000005EC
_02251BFC: .word 0x0000FFC1
_02251C00: .word 0x000004B6
_02251C04: .word 0x000004B3
_02251C08:
	add r0, sp, #0x68
	strh r2, [r0, #2]
	mov r1, #0xc
	strb r1, [r0, #1]
	ldrb r1, [r4, #0xd]
	ldr r3, [r4, #8]
	add r3, r3, r1
	ldrb r3, [r3, #0xc]
	lsl r3, r3, #8
	orr r1, r3
	str r1, [sp, #0x6c]
	ldr r1, [r4, #4]
	ldrh r1, [r1, #0x1c]
	sub r1, #0x37
	cmp r1, #7
	bhi _02251C7A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02251C34: ; jump table
	.short _02251C68 - _02251C34 - 2 ; case 0
	.short _02251C72 - _02251C34 - 2 ; case 1
	.short _02251C44 - _02251C34 - 2 ; case 2
	.short _02251C4A - _02251C34 - 2 ; case 3
	.short _02251C50 - _02251C34 - 2 ; case 4
	.short _02251C56 - _02251C34 - 2 ; case 5
	.short _02251C5C - _02251C34 - 2 ; case 6
	.short _02251C62 - _02251C34 - 2 ; case 7
_02251C44:
	mov r0, #1
	str r0, [sp, #0x70]
	b _02251C7A
_02251C4A:
	mov r0, #2
	str r0, [sp, #0x70]
	b _02251C7A
_02251C50:
	mov r0, #3
	str r0, [sp, #0x70]
	b _02251C7A
_02251C56:
	mov r0, #6
	str r0, [sp, #0x70]
	b _02251C7A
_02251C5C:
	mov r0, #4
	str r0, [sp, #0x70]
	b _02251C7A
_02251C62:
	mov r0, #5
	str r0, [sp, #0x70]
	b _02251C7A
_02251C68:
	add r1, r2, #1
	strh r1, [r0, #2]
	mov r1, #0
	strb r1, [r0, #1]
	b _02251C7A
_02251C72:
	add r1, r2, #2
	strh r1, [r0, #2]
	mov r1, #2
	strb r1, [r0, #1]
_02251C7A:
	ldr r0, [r4]
	bl MOD11_022300C4
	add r5, r0, #0
	ldr r0, [r4]
	bl MOD11_02230E54
	add r3, r0, #0
	ldr r0, [r4]
	add r1, r5, #0
	add r2, sp, #0x68
	bl MOD11_0223178C
	strb r0, [r4, #0x11]
	mov r0, #0x14
	strb r0, [r4, #0x17]
	ldrb r0, [r4, #0xe]
	add sp, #0x1fc
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02251CA6:
	ldr r0, [r4, #8]
	mov r1, #0
	ldr r0, [r0, #4]
	add r2, sp, #0xb0
	ldrb r0, [r0, #0x11]
	mov r3, #1
	lsl r5, r0, #1
	mov r0, #0xe
	str r0, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4]
	bl MOD11_02256854
	ldr r0, [r4]
	add r1, r5, #0
	bl MOD11_0222FF7C
	add r5, r0, #0
	ldr r0, [r4]
	bl MOD11_02230070
	add r2, r0, #0
	ldr r0, [r4]
	add r1, r5, #0
	add r3, sp, #0xb0
	bl MOD11_02254404
	ldrb r0, [r4, #0xe]
	add sp, #0x1fc
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02251CEC:
	ldr r0, [r4, #8]
	ldr r1, [r0, #4]
	ldrb r0, [r1, #0x11]
	lsl r6, r0, #1
	add r0, r1, r0
	add r0, #0x2c
	ldrb r7, [r0]
	ldr r0, [r4]
	add r1, r6, #0
	bl MOD11_02231380
	mov r1, #0
	mov r2, #1
	add r5, r0, #0
	bl MI_CpuFill8
	ldr r0, [r4]
	add r1, r6, #0
	bl MOD11_02230260
	str r0, [sp, #0x18]
	ldr r0, [r4]
	bl MOD11_0222FF74
	add r1, r0, #0
	ldr r0, [sp, #0x18]
	bl MOD11_02257F6C
	add r1, r5, #0
	add r1, #0x25
	strb r0, [r1]
	ldr r0, [r4]
	add r1, r6, #0
	add r2, r7, #0
	bl MOD11_02230014
	mov r1, #0xa2
	mov r2, #0
	add r6, r0, #0
	bl GetMonData
	ldr r1, [r4, #8]
	mov r2, #0
	ldr r1, [r1, #4]
	ldrh r1, [r1, #0x20]
	sub r0, r0, r1
	str r0, [r5, #0x28]
	add r0, r6, #0
	mov r1, #0xa3
	bl GetMonData
	str r0, [r5, #0x2c]
	ldr r0, [r4, #8]
	mov r1, #0x9f
	ldr r0, [r0, #4]
	mov r2, #0
	ldrh r0, [r0, #0x20]
	str r0, [r5, #0x30]
	add r0, r6, #0
	bl GetMonData
	cmp r0, #0
	bne _02251D72
	add r0, r5, #0
	mov r1, #0
	add r0, #0x4a
	strb r1, [r0]
_02251D72:
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	bl MOD11_02257150
	ldrb r0, [r4, #0xe]
	add sp, #0x1fc
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02251D86:
	ldr r1, [r4, #8]
	ldr r0, [r4]
	ldr r1, [r1, #4]
	ldrb r1, [r1, #0x11]
	lsl r1, r1, #1
	bl MOD11_02231380
	add r5, r0, #0
	bl MOD11_02257184
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02251DA4
	b _02251FEA
_02251DA4:
	mov r2, #1
	add r0, r5, #0
	mov r1, #0
	lsl r2, r2, #8
	bl MOD11_02256D70
	ldrb r0, [r4, #0xe]
	add sp, #0x1fc
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02251DBC:
	ldr r0, [r4]
	bl MOD11_022300C4
	add r5, r0, #0
	ldr r0, [r4, #8]
	ldr r1, [r0, #4]
	ldrb r0, [r1, #0x11]
	ldrh r1, [r1, #0x20]
	lsl r0, r0, #1
	cmp r1, #0
	add r1, sp, #0x1c
	beq _02251DF4
	ldr r2, _02251FF0 ; =0x000004BE
	strh r2, [r1, #0x2a]
	mov r2, #0x11
	add r1, sp, #0x44
	strb r2, [r1, #1]
	ldr r1, [r4, #8]
	add r1, r1, r0
	ldrb r1, [r1, #0xc]
	lsl r1, r1, #8
	orr r0, r1
	str r0, [sp, #0x48]
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	ldrh r0, [r0, #0x20]
	str r0, [sp, #0x4c]
	b _02251E0A
_02251DF4:
	ldr r2, _02251FF4 ; =0x000004E2
	strh r2, [r1, #0x2a]
	mov r2, #2
	add r1, sp, #0x44
	strb r2, [r1, #1]
	ldr r1, [r4, #8]
	add r1, r1, r0
	ldrb r1, [r1, #0xc]
	lsl r1, r1, #8
	orr r0, r1
	str r0, [sp, #0x48]
_02251E0A:
	ldr r0, [r4]
	bl MOD11_02230E54
	add r3, r0, #0
	ldr r0, [r4]
	add r1, r5, #0
	add r2, sp, #0x44
	bl MOD11_0223178C
	strb r0, [r4, #0x11]
	mov r0, #0x14
	strb r0, [r4, #0x17]
	ldrb r0, [r4, #0xe]
	add sp, #0x1fc
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02251E2E:
	ldr r0, [r4, #8]
	mov r5, #0
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x11]
	lsl r7, r0, #1
	ldr r0, [r4]
	add r1, r7, #0
	bl MOD11_02231380
	str r0, [sp, #0x10]
	ldr r0, [r4, #8]
	add r1, r7, #0
	ldr r3, [r0, #4]
	ldr r0, [r4]
	ldrb r2, [r3, #0x11]
	add r2, r3, r2
	add r2, #0x2c
	ldrb r2, [r2]
	bl MOD11_02230014
	mov r1, #0x9f
	add r2, r5, #0
	bl GetMonData
	cmp r0, #0
	bne _02251E6A
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	add r0, #0x4a
	strb r1, [r0]
_02251E6A:
	ldr r0, [sp, #0x10]
	mov r2, #1
	add r1, r0, #0
	ldr r1, [r1, #0x28]
	lsl r2, r2, #8
	bl MOD11_02256D70
	mov r1, #2
	add r0, sp, #0x1c
	strb r1, [r0, #5]
	ldr r0, [r4, #8]
	mov r1, #0xf
	add r0, r0, r7
	ldrb r0, [r0, #0xc]
	mov r2, #5
	lsl r0, r0, #8
	orr r0, r7
	str r0, [sp, #0x24]
	ldr r0, [r4, #4]
	ldrh r0, [r0, #0x1c]
	bl GetItemAttr
	cmp r0, #0
	beq _02251E9E
	mov r6, #0
	add r5, r5, #1
_02251E9E:
	ldr r0, [r4, #4]
	mov r1, #0x10
	ldrh r0, [r0, #0x1c]
	mov r2, #5
	bl GetItemAttr
	cmp r0, #0
	beq _02251EB2
	mov r6, #1
	add r5, r5, #1
_02251EB2:
	ldr r0, [r4, #4]
	mov r1, #0x11
	ldrh r0, [r0, #0x1c]
	mov r2, #5
	bl GetItemAttr
	cmp r0, #0
	beq _02251EC6
	mov r6, #2
	add r5, r5, #1
_02251EC6:
	ldr r0, [r4, #4]
	mov r1, #0x12
	ldrh r0, [r0, #0x1c]
	mov r2, #5
	bl GetItemAttr
	cmp r0, #0
	beq _02251EDA
	mov r6, #3
	add r5, r5, #1
_02251EDA:
	ldr r0, [r4, #4]
	mov r1, #0x13
	ldrh r0, [r0, #0x1c]
	mov r2, #5
	bl GetItemAttr
	cmp r0, #0
	beq _02251EEE
	mov r6, #4
	add r5, r5, #1
_02251EEE:
	ldr r0, [r4, #4]
	mov r1, #0x14
	ldrh r0, [r0, #0x1c]
	mov r2, #5
	bl GetItemAttr
	cmp r0, #0
	beq _02251F02
	mov r6, #5
	add r5, r5, #1
_02251F02:
	ldr r0, [r4, #4]
	mov r1, #0x15
	ldrh r0, [r0, #0x1c]
	mov r2, #5
	bl GetItemAttr
	cmp r0, #0
	beq _02251F16
	mov r6, #6
	add r5, r5, #1
_02251F16:
	cmp r5, #1
	beq _02251F22
	ldr r1, _02251FF8 ; =0x000004CD
	add r0, sp, #0x1c
	strh r1, [r0, #6]
	b _02251F76
_02251F22:
	cmp r6, #6
	bhi _02251F76
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02251F32: ; jump table
	.short _02251F40 - _02251F32 - 2 ; case 0
	.short _02251F48 - _02251F32 - 2 ; case 1
	.short _02251F50 - _02251F32 - 2 ; case 2
	.short _02251F58 - _02251F32 - 2 ; case 3
	.short _02251F60 - _02251F32 - 2 ; case 4
	.short _02251F68 - _02251F32 - 2 ; case 5
	.short _02251F70 - _02251F32 - 2 ; case 6
_02251F40:
	ldr r1, _02251FFC ; =0x000004BA
	add r0, sp, #0x1c
	strh r1, [r0, #6]
	b _02251F76
_02251F48:
	ldr r1, _02252000 ; =0x000004B7
	add r0, sp, #0x1c
	strh r1, [r0, #6]
	b _02251F76
_02251F50:
	ldr r1, _02252004 ; =0x000004B9
	add r0, sp, #0x1c
	strh r1, [r0, #6]
	b _02251F76
_02251F58:
	ldr r1, _02252008 ; =0x000004BB
	add r0, sp, #0x1c
	strh r1, [r0, #6]
	b _02251F76
_02251F60:
	ldr r1, _0225200C ; =0x000004B8
	add r0, sp, #0x1c
	strh r1, [r0, #6]
	b _02251F76
_02251F68:
	ldr r1, _02252010 ; =0x000004BC
	add r0, sp, #0x1c
	strh r1, [r0, #6]
	b _02251F76
_02251F70:
	ldr r1, _02252014 ; =0x000004BD
	add r0, sp, #0x1c
	strh r1, [r0, #6]
_02251F76:
	ldr r0, [r4]
	bl MOD11_022300C4
	add r5, r0, #0
	ldr r0, [r4]
	bl MOD11_02230E54
	add r3, r0, #0
	ldr r0, [r4]
	add r1, r5, #0
	add r2, sp, #0x20
	bl MOD11_0223178C
	strb r0, [r4, #0x11]
	mov r0, #0x14
	strb r0, [r4, #0x17]
	ldrb r0, [r4, #0xe]
	add sp, #0x1fc
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02251FA2:
	ldr r0, [r4]
	bl MOD11_02230070
	bl MOD08_02212384
	ldr r0, [r4]
	bl MOD11_02230070
	bl MOD08_022123A0
	cmp r0, #0
	bne _02251FEA
	ldr r0, [r4]
	bl MOD11_02230070
	bl MOD08_022123B0
	ldrb r0, [r4, #0xe]
	add sp, #0x1fc
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02251FD0:
	ldrb r0, [r4, #0x11]
	bl FUN_0201BD70
	cmp r0, #0
	bne _02251FEA
	ldrb r0, [r4, #0x17]
	sub r0, r0, #1
	strb r0, [r4, #0x17]
	ldrb r0, [r4, #0x17]
	cmp r0, #0
	bne _02251FEA
	mov r0, #8
	strb r0, [r4, #0xe]
_02251FEA:
	add sp, #0x1fc
	add sp, #0x14
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02251FF0: .word 0x000004BE
_02251FF4: .word 0x000004E2
_02251FF8: .word 0x000004CD
_02251FFC: .word 0x000004BA
_02252000: .word 0x000004B7
_02252004: .word 0x000004B9
_02252008: .word 0x000004BB
_0225200C: .word 0x000004B8
_02252010: .word 0x000004BC
_02252014: .word 0x000004BD

	thumb_func_start MOD11_02252018
MOD11_02252018: ; 0x02252018
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #1
	add r3, sp, #0
	strh r0, [r3]
	add r4, r1, #0
	mov r2, sp
	ldrb r1, [r4, #0xd]
	ldrh r6, [r3]
	ldr r0, [r4]
	sub r2, r2, #4
	strh r6, [r2]
	ldrh r3, [r3, #2]
	strh r3, [r2, #2]
	ldr r2, [r2]
	bl MOD11_022558C4
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xc]
	ldr r0, [r4]
	bl MOD11_022567B8
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl FreeToHeap
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl FreeToHeap
	ldr r0, [r4, #8]
	bl FreeToHeap
	add r0, r4, #0
	bl FreeToHeap
	add r0, r5, #0
	bl FUN_0200CAB4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start MOD11_02252070
MOD11_02252070: ; 0x02252070
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #0xd]
	add r5, r0, #0
	ldrb r2, [r4, #0xc]
	ldr r0, [r4]
	bl MOD11_022567B8
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl FreeToHeap
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl FreeToHeap
	ldr r0, [r4, #8]
	bl FreeToHeap
	add r0, r4, #0
	bl FreeToHeap
	add r0, r5, #0
	bl FUN_0200CAB4
	pop {r3, r4, r5, pc}
	.align 2, 0

	thumb_func_start MOD11_022520A8
MOD11_022520A8: ; 0x022520A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	bl MOD11_022300CC
	ldrb r1, [r4, #0xa]
	add r5, r0, #0
	cmp r1, #3
	bhi _02252144
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022520CA: ; jump table
	.short _022520D2 - _022520CA - 2 ; case 0
	.short _0225213C - _022520CA - 2 ; case 1
	.short _022523B2 - _022520CA - 2 ; case 2
	.short _0225240E - _022520CA - 2 ; case 3
_022520D2:
	ldr r0, [r4]
	mov r1, #0
	bl MOD11_0222FF6C
	add r6, r0, #0
	mov r1, #0xff
	bl FillWindowPixelBuffer
	add r0, r6, #0
	bl CopyWindowPixelsToVram_TextMode
	ldr r0, [r4]
	bl MOD11_02230094
	bl MOD11_0225C76C
	strb r0, [r4, #0x17]
	ldr r0, [r4]
	bl MOD11_02230288
	mov r1, #1
	bl FUN_020143A8
	mov r1, #0
	mov r2, #3
	str r1, [sp]
	mov r0, #7
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #5
	add r3, r1, #0
	add r0, r5, #0
	lsl r2, r2, #0xa
	sub r3, #0xd
	bl FUN_02003210
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0xa
	add r3, r1, #0
	ldr r2, _0225246C ; =0x0000FFFF
	add r0, r5, #0
	sub r3, #0x12
	bl FUN_02003210
	ldrb r0, [r4, #0xa]
	add sp, #0x24
	add r0, r0, #1
	strb r0, [r4, #0xa]
	pop {r4, r5, r6, r7, pc}
_0225213C:
	bl FUN_020038E4
	cmp r0, #0
	beq _02252146
_02252144:
	b _02252468
_02252146:
	ldr r0, [r4]
	bl MOD11_0222D7F8
	mov r0, #5
	mov r1, #0x38
	bl AllocFromHeap
	str r0, [r4, #4]
	mov r0, #5
	bl SavArray_Party_alloc
	ldr r1, [r4, #4]
	str r0, [r1]
	ldr r0, [r4]
	bl MOD11_0222FF74
	mov r1, #0xc
	and r0, r1
	cmp r0, #0xc
	beq _0225217A
	ldr r0, [r4]
	bl MOD11_0222FF74
	cmp r0, #0xcb
	beq _0225217A
	b _0225228E
_0225217A:
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl MOD11_02230260
	cmp r0, #2
	bne _02252196
	ldrb r0, [r4, #9]
	str r0, [sp, #0x18]
	ldr r0, [r4]
	ldr r1, [sp, #0x18]
	bl MOD11_022302BC
	str r0, [sp, #0x14]
	b _022521A4
_02252196:
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl MOD11_022302BC
	str r0, [sp, #0x18]
	ldrb r0, [r4, #9]
	str r0, [sp, #0x14]
_022521A4:
	mov r0, #5
	bl AllocMonZeroed
	add r6, r0, #0
	mov r5, #0
_022521AE:
	ldr r0, [r4, #4]
	add r1, r6, #0
	ldr r0, [r0]
	bl AddMonToParty
	add r5, r5, #1
	cmp r5, #6
	blt _022521AE
	add r0, r6, #0
	bl FreeToHeap
	ldr r0, [r4]
	ldr r1, [sp, #0x18]
	mov r7, #0
	bl MOD11_0222FFC8
	cmp r0, #0
	ble _02252216
	ldr r0, [sp, #0x18]
	mov r1, #6
	mul r1, r0
	add r5, r4, r1
	add r6, r7, #0
_022521DC:
	ldrb r2, [r5, #0x1c]
	ldr r0, [r4]
	ldr r1, [sp, #0x18]
	bl MOD11_02230014
	str r0, [sp, #0x1c]
	ldr r0, [r4, #4]
	add r1, r6, #0
	ldr r0, [r0]
	bl GetPartyMonByIndex
	add r1, r0, #0
	ldr r0, [sp, #0x1c]
	bl CopyPokemonToPokemon
	ldr r0, [r4, #4]
	ldrb r1, [r5, #0x1c]
	add r0, r0, r6
	add r0, #0x2c
	strb r1, [r0]
	ldr r0, [r4]
	ldr r1, [sp, #0x18]
	add r5, r5, #1
	add r6, r6, #2
	add r7, r7, #1
	bl MOD11_0222FFC8
	cmp r7, r0
	blt _022521DC
_02252216:
	ldr r0, [r4]
	ldr r1, [sp, #0x14]
	mov r6, #0
	bl MOD11_0222FFC8
	cmp r0, #0
	ble _02252272
	ldr r0, [sp, #0x14]
	mov r1, #6
	mul r1, r0
	mov r0, #1
	add r5, r4, r1
	str r0, [sp, #0xc]
	add r7, r6, #0
_02252232:
	ldrb r2, [r5, #0x1c]
	ldr r0, [r4]
	ldr r1, [sp, #0x14]
	bl MOD11_02230014
	str r0, [sp, #0x20]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0xc]
	ldr r0, [r0]
	bl GetPartyMonByIndex
	add r1, r0, #0
	ldr r0, [sp, #0x20]
	bl CopyPokemonToPokemon
	ldr r0, [r4, #4]
	ldrb r1, [r5, #0x1c]
	add r0, r0, r7
	add r0, #0x2d
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	add r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [r4]
	add r5, r5, #1
	add r7, r7, #2
	add r6, r6, #1
	bl MOD11_0222FFC8
	cmp r6, r0
	blt _02252232
_02252272:
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl MOD11_02230260
	cmp r0, #4
	bne _02252286
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0, #0x11]
	b _0225230E
_02252286:
	ldr r0, [r4, #4]
	mov r1, #0
	strb r1, [r0, #0x11]
	b _0225230E
_0225228E:
	ldr r0, [r4]
	bl MOD11_0222FF74
	mov r1, #2
	tst r0, r1
	beq _022522B0
	ldr r0, [r4]
	bl MOD11_0222FF74
	mov r1, #8
	tst r0, r1
	bne _022522B0
	ldrb r1, [r4, #9]
	mov r0, #1
	add r7, r1, #0
	and r7, r0
	b _022522B4
_022522B0:
	ldrb r1, [r4, #9]
	add r7, r1, #0
_022522B4:
	ldr r0, [r4]
	bl MOD11_02230260
	cmp r0, #4
	bne _022522C2
	mov r1, #1
	b _022522C4
_022522C2:
	mov r1, #0
_022522C4:
	ldr r0, [r4, #4]
	strb r1, [r0, #0x11]
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl MOD11_0222FF88
	str r0, [sp, #0x10]
	mov r5, #0
	bl GetPartyCount
	cmp r0, #0
	ble _0225230E
	mov r0, #6
	mul r0, r7
	add r6, r4, r0
_022522E2:
	ldrb r2, [r6, #0x1c]
	ldr r0, [r4]
	add r1, r7, #0
	bl MOD11_02230014
	add r1, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0]
	bl AddMonToParty
	ldr r0, [r4, #4]
	ldrb r1, [r6, #0x1c]
	add r0, r0, r5
	add r0, #0x2c
	strb r1, [r0]
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	add r5, r5, #1
	bl GetPartyCount
	cmp r5, r0
	blt _022522E2
_0225230E:
	ldr r1, [r4]
	ldr r0, [r4, #4]
	str r1, [r0, #8]
	ldr r0, [r4, #4]
	mov r1, #5
	str r1, [r0, #0xc]
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, #0x36
	strb r1, [r0]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #4]
	strh r1, [r0, #0x24]
	ldrb r1, [r4, #0x16]
	ldr r0, [r4, #4]
	strb r1, [r0, #0x12]
	ldr r0, [r4, #4]
	ldrb r1, [r4, #0xb]
	add r0, #0x35
	strb r1, [r0]
	ldrh r1, [r4, #0x14]
	ldr r0, [r4, #4]
	strh r1, [r0, #0x22]
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	str r1, [r0, #0x28]
	ldr r0, [r4, #4]
	ldrb r1, [r4, #0x17]
	add r0, #0x32
	strb r1, [r0]
	ldrb r0, [r4, #9]
	bl MaskOfFlagNo
	ldrb r1, [r4, #0x18]
	tst r0, r1
	bne _0225235E
	ldrb r0, [r4, #9]
	add r0, r4, r0
	ldrb r1, [r0, #0xc]
	b _02252360
_0225235E:
	mov r1, #6
_02252360:
	ldr r0, [r4, #4]
	strb r1, [r0, #0x14]
	ldr r0, [r4]
	bl MOD11_0222FF74
	mov r1, #8
	tst r0, r1
	beq _02252378
	ldr r0, [r4, #4]
	mov r1, #6
	strb r1, [r0, #0x15]
	b _022523A2
_02252378:
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl MOD11_022302BC
	bl MaskOfFlagNo
	ldrb r1, [r4, #0x18]
	tst r0, r1
	bne _0225239C
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl MOD11_022302BC
	add r0, r4, r0
	ldrb r1, [r0, #0xc]
	ldr r0, [r4, #4]
	strb r1, [r0, #0x15]
	b _022523A2
_0225239C:
	ldr r0, [r4, #4]
	mov r1, #6
	strb r1, [r0, #0x15]
_022523A2:
	ldr r0, [r4, #4]
	bl MOD07_02211E60
	ldrb r0, [r4, #0xa]
	add sp, #0x24
	add r0, r0, #1
	strb r0, [r4, #0xa]
	pop {r4, r5, r6, r7, pc}
_022523B2:
	ldr r0, [r4, #4]
	add r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0
	beq _02252468
	ldr r0, [r4]
	bl MOD11_0222D88C
	ldr r0, [r4]
	bl MOD11_02230094
	ldr r1, [r4, #4]
	add r1, #0x32
	ldrb r1, [r1]
	bl MOD11_0225C778
	mov r0, #7
	str r0, [sp]
	mov r0, #0
	mov r1, #5
	str r0, [sp, #4]
	mov r2, #3
	add r3, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	lsl r2, r2, #0xa
	sub r3, #0xd
	bl FUN_02003210
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	mov r1, #0xa
	str r0, [sp, #4]
	add r3, r1, #0
	str r0, [sp, #8]
	ldr r2, _0225246C ; =0x0000FFFF
	add r0, r5, #0
	sub r3, #0x12
	bl FUN_02003210
	ldrb r0, [r4, #0xa]
	add sp, #0x24
	add r0, r0, #1
	strb r0, [r4, #0xa]
	pop {r4, r5, r6, r7, pc}
_0225240E:
	bl FUN_020038E4
	cmp r0, #0
	bne _02252468
	ldr r0, [r4]
	bl MOD11_02230288
	mov r1, #0
	bl FUN_020143A8
	ldr r3, [r4, #4]
	ldr r0, [r4]
	ldrb r2, [r3, #0x11]
	cmp r2, #6
	bne _02252436
	ldrb r1, [r4, #9]
	mov r2, #0xff
	bl MOD11_02255964
	b _02252444
_02252436:
	add r2, r3, r2
	add r2, #0x2c
	ldrb r2, [r2]
	ldrb r1, [r4, #9]
	add r2, r2, #1
	bl MOD11_02255964
_02252444:
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4]
	bl MOD11_022567B8
	ldr r0, [r4, #4]
	ldr r0, [r0]
	bl FreeToHeap
	ldr r0, [r4, #4]
	bl FreeToHeap
	add r0, r4, #0
	bl FreeToHeap
	add r0, r6, #0
	bl FUN_0200CAB4
_02252468:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0225246C: .word 0x0000FFFF

	thumb_func_start MOD11_02252470
MOD11_02252470: ; 0x02252470
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5]
	bl MOD11_0222FF74
	mov r1, #0x10
	ldrb r6, [r5, #9]
	tst r1, r0
	bne _0225248C
	mov r1, #8
	tst r0, r1
	beq _02252490
_0225248C:
	str r6, [sp, #4]
	b _0225249A
_02252490:
	ldr r0, [r5]
	add r1, r6, #0
	bl MOD11_022302BC
	str r0, [sp, #4]
_0225249A:
	ldr r0, [r5]
	add r1, r6, #0
	bl MOD16_021F4A30
	add r4, r0, #0
	cmp r4, #6
	bne _022524FE
	ldr r0, [r5]
	add r1, r6, #0
	bl MOD16_021F4698
	add r4, r0, #0
	cmp r4, #6
	bne _022524FE
	ldrb r1, [r5, #9]
	ldr r0, [r5]
	bl MOD11_0222FF88
	str r0, [sp, #8]
	mov r4, #0
	bl GetPartyCount
	cmp r0, #0
	ble _022524FE
	ldr r0, [sp, #4]
	add r7, r5, r6
	add r6, r5, r0
_022524D0:
	ldrb r1, [r5, #9]
	ldr r0, [r5]
	add r2, r4, #0
	bl MOD11_02230014
	mov r1, #0xa2
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _022524F2
	ldrb r0, [r7, #0xc]
	cmp r4, r0
	beq _022524F2
	ldrb r0, [r6, #0xc]
	cmp r4, r0
	bne _022524FE
_022524F2:
	ldr r0, [sp, #8]
	add r4, r4, #1
	bl GetPartyCount
	cmp r4, r0
	blt _022524D0
_022524FE:
	ldrb r1, [r5, #9]
	ldr r0, [r5]
	add r2, r4, #1
	bl MOD11_02255964
	ldrb r1, [r5, #9]
	ldrb r2, [r5, #8]
	ldr r0, [r5]
	bl MOD11_022567B8
	add r0, r5, #0
	bl FreeToHeap
	ldr r0, [sp]
	bl FUN_0200CAB4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start MOD11_02252524
MOD11_02252524: ; 0x02252524
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #9]
	add r5, r0, #0
	ldrb r2, [r4, #8]
	ldr r0, [r4]
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	add r0, r5, #0
	bl FUN_0200CAB4
	pop {r3, r4, r5, pc}
	.align 2, 0

	thumb_func_start MOD11_02252544
MOD11_02252544: ; 0x02252544
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r4, r1, #0
	add r7, r0, #0
	ldr r0, [r4]
	bl MOD11_0222FF68
	ldr r0, [r4]
	bl MOD11_02230094
	add r5, r0, #0
	ldrb r1, [r4, #0xd]
	ldr r0, [r4]
	bl MOD11_0222FF7C
	str r0, [sp]
	ldrb r1, [r4, #0xd]
	ldr r0, [r4]
	bl MOD11_022302BC
	add r1, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r1, r0
	beq _0225257E
	ldr r0, [r4]
	bl MOD11_02231380
	add r6, r0, #0
	b _02252580
_0225257E:
	mov r6, #0
_02252580:
	ldrb r0, [r4, #0xe]
	cmp r0, #4
	bhi _02252600
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02252592: ; jump table
	.short _0225259C - _02252592 - 2 ; case 0
	.short _022525EC - _02252592 - 2 ; case 1
	.short _0225267E - _02252592 - 2 ; case 2
	.short _0225269C - _02252592 - 2 ; case 3
	.short _022526E0 - _02252592 - 2 ; case 4
_0225259C:
	add r0, r5, #0
	bl MOD11_02258F5C
	cmp r0, #0
	beq _02252600
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _022525E4
	ldr r0, [r4]
	bl MOD11_022300C4
	add r5, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #5
	add r0, sp, #4
	bne _022525C6
	mov r1, #0x82
	strb r1, [r0, #5]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0xc]
	b _022525CA
_022525C6:
	mov r1, #0
	strb r1, [r0, #5]
_022525CA:
	ldr r1, [r4, #0x10]
	add r0, sp, #4
	strh r1, [r0, #6]
	ldr r0, [r4]
	bl MOD11_02230E54
	add r3, r0, #0
	ldr r0, [r4]
	add r1, r5, #0
	add r2, sp, #8
	bl MOD11_0223178C
	strh r0, [r4, #0x1a]
_022525E4:
	mov r0, #1
	add sp, #0x2c
	strb r0, [r4, #0xe]
	pop {r4, r5, r6, r7, pc}
_022525EC:
	ldrh r0, [r4, #0x1a]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl FUN_0201BD70
	cmp r0, #0
	beq _02252602
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02252602
_02252600:
	b _0225270A
_02252602:
	add r0, r5, #0
	bl MOD11_02258E30
	ldrh r1, [r4, #0x18]
	add r0, sp, #4
	strh r1, [r0]
	ldrb r0, [r4, #0xf]
	cmp r0, #5
	bhi _02252672
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02252620: ; jump table
	.short _0225262C - _02252620 - 2 ; case 0
	.short _0225263A - _02252620 - 2 ; case 1
	.short _02252648 - _02252620 - 2 ; case 2
	.short _02252656 - _02252620 - 2 ; case 3
	.short _02252664 - _02252620 - 2 ; case 4
	.short _0225262C - _02252620 - 2 ; case 5
_0225262C:
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #0
	add r3, sp, #4
	bl MOD11_02258820
	b _02252676
_0225263A:
	add r0, r5, #0
	mov r1, #0xe
	mov r2, #0
	add r3, sp, #4
	bl MOD11_02258820
	b _02252676
_02252648:
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #0
	add r3, sp, #4
	bl MOD11_02258820
	b _02252676
_02252656:
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	add r3, sp, #4
	bl MOD11_02258820
	b _02252676
_02252664:
	add r0, r5, #0
	mov r1, #0x11
	mov r2, #0
	add r3, sp, #4
	bl MOD11_02258820
	b _02252676
_02252672:
	bl GF_AssertFail
_02252676:
	mov r0, #2
	add sp, #0x2c
	strb r0, [r4, #0xe]
	pop {r4, r5, r6, r7, pc}
_0225267E:
	add r0, r5, #0
	bl MOD11_02258E74
	mov r1, #0
	mvn r1, r1
	str r0, [r4, #8]
	cmp r0, r1
	beq _0225270A
	ldr r0, _02252710 ; =0x000005DD
	bl PlaySE
	mov r0, #3
	add sp, #0x2c
	strb r0, [r4, #0xe]
	pop {r4, r5, r6, r7, pc}
_0225269C:
	add r0, r5, #0
	bl MOD11_02258F5C
	cmp r0, #1
	bne _0225270A
	ldr r0, [r4, #4]
	bl MOD11_02257238
	ldr r0, [sp]
	bl MOD11_0225468C
	add r0, r6, #0
	bl MOD11_02258184
	add r0, r5, #0
	bl MOD11_02258E30
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl MOD11_02258820
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _022526D8
	add r0, r5, #0
	mov r1, #0
	bl MOD11_0225B77C
_022526D8:
	mov r0, #4
	add sp, #0x2c
	strb r0, [r4, #0xe]
	pop {r4, r5, r6, r7, pc}
_022526E0:
	add r0, r5, #0
	bl MOD11_0225B780
	cmp r0, #1
	bne _0225270A
	ldrb r1, [r4, #0xd]
	ldr r0, [r4]
	ldr r2, [r4, #8]
	bl MOD11_02255528
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xc]
	ldr r0, [r4]
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	add r0, r7, #0
	bl FUN_0200CAB4
_0225270A:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_02252710: .word 0x000005DD

	thumb_func_start MOD11_02252714
MOD11_02252714: ; 0x02252714
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #0xd]
	add r5, r0, #0
	ldrb r2, [r4, #0xc]
	ldr r0, [r4]
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	add r0, r5, #0
	bl FUN_0200CAB4
	pop {r3, r4, r5, pc}
	.align 2, 0

	thumb_func_start MOD11_02252734
MOD11_02252734: ; 0x02252734
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #0xd]
	add r5, r0, #0
	ldrb r2, [r4, #0xc]
	ldr r0, [r4]
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	add r0, r5, #0
	bl FUN_0200CAB4
	pop {r3, r4, r5, pc}
	.align 2, 0

	thumb_func_start MOD11_02252754
MOD11_02252754: ; 0x02252754
	push {r3, r4, r5, lr}
	sub sp, #0x1fc
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x6a
	ldrb r0, [r0]
	cmp r0, #0xa
	bls _0225276A
	b _022529B8
_0225276A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02252776: ; jump table
	.short _0225278C - _02252776 - 2 ; case 0
	.short _02252996 - _02252776 - 2 ; case 1
	.short _022527E6 - _02252776 - 2 ; case 2
	.short _02252996 - _02252776 - 2 ; case 3
	.short _02252842 - _02252776 - 2 ; case 4
	.short _02252996 - _02252776 - 2 ; case 5
	.short _02252890 - _02252776 - 2 ; case 6
	.short _02252996 - _02252776 - 2 ; case 7
	.short _02252918 - _02252776 - 2 ; case 8
	.short _02252996 - _02252776 - 2 ; case 9
	.short _02252974 - _02252776 - 2 ; case 10
_0225278C:
	ldrh r0, [r4, #0x1e]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _022527DA
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	bne _022527DA
	ldr r0, [r4, #8]
	mov r1, #6
	bl FUN_0200782C
	cmp r0, #0
	bne _022527DA
	add r0, r4, #0
	add r0, #0x69
	ldrb r1, [r0]
	mov r0, #0xf
	add r2, sp, #0x1b8
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl MOD11_02256854
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0xc]
	add r3, sp, #0x1b8
	bl MOD11_02254404
	add sp, #0x1fc
	mov r0, #1
	add r4, #0x6a
	add sp, #0x14
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_022527DA:
	add sp, #0x1fc
	mov r0, #4
	add r4, #0x6a
	add sp, #0x14
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_022527E6:
	add r3, r4, #0
	add r3, #0x69
	ldrb r3, [r3]
	ldr r0, [r4]
	add r1, #0x10
	add r2, sp, #0x168
	bl MOD11_0225452C
	add r0, sp, #0x168
	mov r1, #5
	bl MOD08_0222A494
	add r0, r4, #0
	add r0, #0x69
	ldrb r1, [r0]
	mov r0, #0x10
	add r2, sp, #0x110
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl MOD11_02256854
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0xc]
	add r3, sp, #0x110
	bl MOD11_02254404
	mov r0, #0x1a
	add sp, #0x1fc
	ldr r1, [r4, #4]
	mov r2, #0
	lsl r0, r0, #4
	str r2, [r1, r0]
	add r0, r4, #0
	add r0, #0x6a
	ldrb r0, [r0]
	add r4, #0x6a
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02252842:
	ldr r0, [r4]
	mov r1, #2
	bl MOD11_02231484
	add r0, r4, #0
	add r0, #0x6b
	ldrb r0, [r0]
	cmp r0, #0
	beq _0225285A
	ldr r0, [r4]
	bl MOD11_02231410
_0225285A:
	add r0, r4, #0
	add r0, #0x6c
	ldrb r0, [r0]
	cmp r0, #0
	beq _02252870
	ldr r0, [r4]
	bl MOD11_02230068
	mov r1, #1
	bl FUN_02008284
_02252870:
	add r3, r4, #0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0xc]
	add r3, #0x10
	bl MOD11_02254404
	add r0, r4, #0
	add r0, #0x6a
	ldrb r0, [r0]
	add sp, #0x1fc
	add r4, #0x6a
	add r0, r0, #1
	add sp, #0x14
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02252890:
	ldr r0, [r4]
	mov r1, #0
	bl MOD11_02231484
	add r0, r4, #0
	add r0, #0x6b
	ldrb r0, [r0]
	cmp r0, #0
	beq _022528A8
	ldr r0, [r4]
	bl MOD11_022313E0
_022528A8:
	add r0, r4, #0
	add r0, #0x6c
	ldrb r0, [r0]
	cmp r0, #0
	beq _022528BE
	ldr r0, [r4]
	bl MOD11_02230068
	mov r1, #1
	bl FUN_02008290
_022528BE:
	ldrh r0, [r4, #0x1e]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _0225290C
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	bne _0225290C
	ldr r0, [r4, #8]
	mov r1, #6
	bl FUN_0200782C
	cmp r0, #0
	bne _0225290C
	add r0, r4, #0
	add r0, #0x69
	ldrb r1, [r0]
	mov r0, #0xf
	add r2, sp, #0xb8
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl MOD11_02256854
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0xc]
	add r3, sp, #0xb8
	bl MOD11_02254404
	add sp, #0x1fc
	mov r0, #7
	add r4, #0x6a
	add sp, #0x14
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0225290C:
	add sp, #0x1fc
	mov r0, #0xa
	add r4, #0x6a
	add sp, #0x14
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02252918:
	add r3, r4, #0
	add r3, #0x69
	ldrb r3, [r3]
	ldr r0, [r4]
	add r1, #0x10
	add r2, sp, #0x68
	bl MOD11_0225452C
	add r0, sp, #0x68
	mov r1, #5
	bl MOD08_0222A568
	add r0, r4, #0
	add r0, #0x69
	ldrb r1, [r0]
	mov r0, #0x10
	add r2, sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl MOD11_02256854
	ldr r0, [r4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0xc]
	add r3, sp, #0x10
	bl MOD11_02254404
	mov r0, #0x1a
	add sp, #0x1fc
	ldr r1, [r4, #4]
	mov r2, #1
	lsl r0, r0, #4
	str r2, [r1, r0]
	add r0, r4, #0
	add r0, #0x6a
	ldrb r0, [r0]
	add r4, #0x6a
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02252974:
	add r2, r4, #0
	add r1, #0x69
	add r2, #0x68
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4]
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	add r0, r5, #0
	bl FUN_0200CAB4
	add sp, #0x1fc
	add sp, #0x14
	pop {r3, r4, r5, pc}
_02252996:
	ldr r0, [r4, #0xc]
	bl MOD08_02212384
	ldr r0, [r4, #0xc]
	bl MOD08_022123A0
	cmp r0, #0
	bne _022529B8
	ldr r0, [r4, #0xc]
	bl MOD08_022123B0
	add r0, r4, #0
	add r0, #0x6a
	ldrb r0, [r0]
	add r4, #0x6a
	add r0, r0, #1
	strb r0, [r4]
_022529B8:
	add sp, #0x1fc
	add sp, #0x14
	pop {r3, r4, r5, pc}
	.align 2, 0

	thumb_func_start MOD11_022529C0
MOD11_022529C0: ; 0x022529C0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #9]
	cmp r0, #6
	bhs _022529FA
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _022529F4
	mov r0, #2
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #9]
	mov r1, #6
	add r0, r0, #1
	strb r0, [r4, #9]
	ldr r0, [r4, #4]
	bl FUN_0200782C
	add r3, r0, #0
	mov r2, #1
	ldr r0, [r4, #4]
	mov r1, #6
	eor r2, r3
	bl FUN_02007558
	pop {r3, r4, r5, pc}
_022529F4:
	sub r0, r0, #1
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, pc}
_022529FA:
	ldr r0, [r4, #4]
	mov r1, #6
	mov r2, #0
	bl FUN_02007558
	ldrb r1, [r4, #8]
	ldr r0, [r4]
	mov r2, #0x17
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	add r0, r5, #0
	bl FUN_0200CAB4
	pop {r3, r4, r5, pc}

	thumb_func_start MOD11_02252A1C
MOD11_02252A1C: ; 0x02252A1C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _02252A2E
	cmp r0, #1
	beq _02252A3C
	b _02252A52
_02252A2E:
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl MOD11_02257150
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_02252A3C:
	add r0, r4, #0
	bl MOD11_02257184
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02252A6C
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02252A52:
	add r2, r4, #0
	add r1, #0x24
	add r2, #0x4c
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4, #0xc]
	bl MOD11_022567B8
	mov r0, #0
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl FUN_0200CAB4
_02252A6C:
	pop {r3, r4, r5, pc}
	.align 2, 0

	thumb_func_start MOD11_02252A70
MOD11_02252A70: ; 0x02252A70
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _02252A86
	cmp r0, #1
	beq _02252AA2
	cmp r0, #2
	beq _02252AE8
	b _02252B0E
_02252A86:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x4e
	strb r1, [r0]
	ldr r0, _02252B2C ; =0x0000070B
	bl PlaySE
	ldr r1, [r4, #0x40]
	add r0, r4, #0
	bl MOD11_022571B8
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_02252AA2:
	add r0, r4, #0
	add r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #8
	bhs _02252ABA
	add r0, r4, #0
	add r0, #0x4e
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x4e
	strb r1, [r0]
_02252ABA:
	add r0, r4, #0
	bl MOD11_022571EC
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02252B28
	add r0, r4, #0
	add r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #8
	blo _02252AE0
	ldr r0, _02252B2C ; =0x0000070B
	mov r1, #0
	bl FUN_020054F0
	mov r0, #0x64
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02252AE0:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02252AE8:
	add r0, r4, #0
	add r0, #0x4e
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x4e
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #8
	blo _02252B28
	ldr r0, _02252B2C ; =0x0000070B
	mov r1, #0
	bl FUN_020054F0
	mov r0, #0x64
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02252B0E:
	add r2, r4, #0
	add r1, #0x24
	add r2, #0x4c
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4, #0xc]
	bl MOD11_022567B8
	mov r0, #0
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl FUN_0200CAB4
_02252B28:
	pop {r3, r4, r5, pc}
	nop
_02252B2C: .word 0x0000070B

	thumb_func_start MOD11_02252B30
MOD11_02252B30: ; 0x02252B30
	push {r4, r5, r6, lr}
	sub sp, #0x110
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	bl MOD11_02230070
	add r1, r4, #0
	add r1, #0x66
	ldrb r1, [r1]
	add r5, r0, #0
	cmp r1, #0xa
	bls _02252B4C
	b _02252DAA
_02252B4C:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02252B58: ; jump table
	.short _02252B6E - _02252B58 - 2 ; case 0
	.short _02252C16 - _02252B58 - 2 ; case 1
	.short _02252BBA - _02252B58 - 2 ; case 2
	.short _02252C16 - _02252B58 - 2 ; case 3
	.short _02252C3A - _02252B58 - 2 ; case 4
	.short _02252C82 - _02252B58 - 2 ; case 5
	.short _02252C9C - _02252B58 - 2 ; case 6
	.short _02252CD8 - _02252B58 - 2 ; case 7
	.short _02252D04 - _02252B58 - 2 ; case 8
	.short _02252D44 - _02252B58 - 2 ; case 9
	.short _02252D8C - _02252B58 - 2 ; case 10
_02252B6E:
	add r0, r4, #0
	add r0, #0x70
	ldrh r0, [r0]
	cmp r0, #0
	beq _02252BB0
	add r0, r4, #0
	add r0, #0x65
	ldrb r1, [r0]
	mov r0, #0xf
	add r2, sp, #0xb8
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl MOD11_02256854
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0xb8
	bl MOD11_02254404
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	add r4, #0x66
	add sp, #0x110
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02252BB0:
	mov r0, #4
	add r4, #0x66
	add sp, #0x110
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02252BBA:
	add r3, r4, #0
	add r3, #0x65
	ldrb r3, [r3]
	add r1, r4, #0
	ldr r0, [r4]
	add r1, #0xc
	add r2, sp, #0x68
	bl MOD11_0225452C
	add r0, sp, #0x68
	mov r1, #5
	bl MOD08_0222A494
	add r0, r4, #0
	add r0, #0x65
	ldrb r1, [r0]
	mov r0, #0x10
	add r2, sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl MOD11_02256854
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x10
	bl MOD11_02254404
	mov r0, #0x1a
	ldr r1, [r4, #4]
	mov r2, #0
	lsl r0, r0, #4
	str r2, [r1, r0]
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	add r4, #0x66
	add sp, #0x110
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02252C16:
	bl MOD08_02212384
	add r0, r5, #0
	bl MOD08_022123A0
	cmp r0, #0
	bne _02252C8A
	add r0, r5, #0
	bl MOD08_022123B0
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	add r4, #0x66
	add sp, #0x110
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02252C3A:
	add r0, r4, #0
	add r0, #0x67
	ldrb r0, [r0]
	cmp r0, #2
	bne _02252C48
	mov r5, #0x75
	b _02252C4C
_02252C48:
	mov r5, #0x74
	mvn r5, r5
_02252C4C:
	add r1, r4, #0
	add r1, #0x65
	ldrb r1, [r1]
	ldr r0, [r4]
	bl MOD11_02230E88
	mov r1, #0x7f
	str r1, [sp]
	add r1, r4, #0
	add r1, #0x72
	ldrh r1, [r1]
	add r2, r4, #0
	add r2, #0x68
	str r1, [sp, #4]
	mov r1, #5
	str r1, [sp, #8]
	ldrh r2, [r2]
	add r3, r5, #0
	bl FUN_02069FB0
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x66
	strb r1, [r0]
_02252C82:
	bl FUN_02005670
	cmp r0, #0
	beq _02252C8C
_02252C8A:
	b _02252DAA
_02252C8C:
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	add r4, #0x66
	add sp, #0x110
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02252C9C:
	add r0, r4, #0
	add r0, #0x67
	ldrb r0, [r0]
	cmp r0, #2
	ldr r0, _02252DB0 ; =0x00000703
	bne _02252CB0
	mov r1, #0x75
	bl FUN_020054A8
	b _02252CB8
_02252CB0:
	mov r1, #0x74
	mvn r1, r1
	bl FUN_020054A8
_02252CB8:
	ldr r0, [r4, #8]
	mov r1, #0x29
	bl FUN_0200782C
	cmp r0, #0
	ble _02252CCE
	mov r0, #7
	add r4, #0x66
	add sp, #0x110
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02252CCE:
	mov r0, #8
	add r4, #0x66
	add sp, #0x110
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02252CD8:
	ldr r0, [r4, #8]
	mov r1, #0x29
	bl FUN_0200782C
	add r5, r0, #0
	sub r5, #8
	bpl _02252CE8
	mov r5, #0
_02252CE8:
	ldr r0, [r4, #8]
	mov r1, #0x29
	add r2, r5, #0
	bl FUN_02007558
	cmp r5, #0
	bne _02252DAA
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x66
	strb r1, [r0]
_02252D04:
	ldr r0, [r4, #0x6c]
	add r1, r4, #0
	str r0, [sp]
	add r0, r4, #0
	add r2, r4, #0
	add r3, r4, #0
	add r0, #0x68
	add r1, #0x6a
	add r2, #0x67
	add r3, #0x6b
	ldrh r0, [r0]
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldrb r3, [r3]
	bl FUN_02068E88
	mov r3, #0x50
	sub r0, r3, r0
	str r0, [sp]
	mov r1, #0
	ldr r0, [r4, #8]
	add r2, r1, #0
	bl FUN_02007E40
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	add r4, #0x66
	add sp, #0x110
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02252D44:
	ldr r0, [r4, #8]
	mov r1, #1
	bl FUN_0200782C
	add r2, r0, #0
	ldr r0, [r4, #8]
	mov r1, #1
	add r2, #8
	bl FUN_02007558
	ldr r0, [r4, #8]
	mov r1, #0x12
	bl FUN_0200782C
	add r5, r0, #0
	sub r5, #8
	bpl _02252D68
	mov r5, #0
_02252D68:
	ldr r0, [r4, #8]
	mov r1, #0x12
	add r2, r5, #0
	bl FUN_02007558
	cmp r5, #0
	bne _02252DAA
	ldr r0, [r4, #8]
	bl FUN_02007534
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	add r4, #0x66
	add sp, #0x110
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02252D8C:
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x65
	add r2, #0x64
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4]
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	add r0, r6, #0
	bl FUN_0200CAB4
_02252DAA:
	add sp, #0x110
	pop {r4, r5, r6, pc}
	nop
_02252DB0: .word 0x00000703

	thumb_func_start MOD11_02252DB4
MOD11_02252DB4: ; 0x02252DB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	bl MOD11_022300CC
	add r4, r0, #0
	ldr r0, [r5]
	bl MOD11_02230068
	add r7, r0, #0
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _02252DDE
	cmp r0, #1
	beq _02252E1C
	cmp r0, #2
	beq _02252E30
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02252DDE:
	ldr r0, [r5]
	bl MOD11_02230288
	mov r1, #1
	bl FUN_020143A8
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r2, _02252E4C ; =0x0000FFFF
	add r0, r4, #0
	mov r1, #0xf
	mov r3, #1
	bl FUN_02003210
	mov r1, #0
	add r0, r7, #0
	mov r2, #0x10
	add r3, r1, #0
	str r1, [sp]
	bl FUN_02007E98
	mov r0, #0
	mov r1, #0x10
	bl FUN_020053CC
	ldrb r0, [r5, #6]
	add r0, r0, #1
	strb r0, [r5, #6]
_02252E1C:
	add r0, r4, #0
	bl FUN_020038E4
	cmp r0, #0
	bne _02252E46
	ldrb r0, [r5, #6]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r5, #6]
	pop {r4, r5, r6, r7, pc}
_02252E30:
	ldrb r1, [r5, #5]
	ldrb r2, [r5, #4]
	ldr r0, [r5]
	bl MOD11_022567B8
	add r0, r5, #0
	bl FreeToHeap
	add r0, r6, #0
	bl FUN_0200CAB4
_02252E46:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02252E4C: .word 0x0000FFFF

	thumb_func_start MOD11_02252E50
MOD11_02252E50: ; 0x02252E50
	push {r4, r5, r6, lr}
	sub sp, #0x110
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	bl MOD11_02230070
	add r1, r4, #0
	add r1, #0x62
	ldrb r1, [r1]
	add r5, r0, #0
	cmp r1, #4
	bls _02252E6C
	b _02252F98
_02252E6C:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02252E78: ; jump table
	.short _02252E82 - _02252E78 - 2 ; case 0
	.short _02252EC4 - _02252E78 - 2 ; case 1
	.short _02252F74 - _02252E78 - 2 ; case 2
	.short _02252F18 - _02252E78 - 2 ; case 3
	.short _02252F74 - _02252E78 - 2 ; case 4
_02252E82:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _02252EBA
	add r2, r4, #0
	add r2, #0x63
	ldrb r2, [r2]
	mov r1, #6
	bl FUN_02007558
	add r0, r4, #0
	add r0, #0x63
	ldrb r0, [r0]
	cmp r0, #1
	bne _02252EAA
	mov r0, #0xff
	add r4, #0x62
	add sp, #0x110
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02252EAA:
	add r0, r4, #0
	add r0, #0x62
	ldrb r0, [r0]
	add r4, #0x62
	add sp, #0x110
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02252EBA:
	mov r0, #0xff
	add r4, #0x62
	add sp, #0x110
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02252EC4:
	ldr r0, [r4, #0x64]
	cmp r0, #0
	beq _02252F0E
	mov r0, #0x1a
	ldr r1, [r4, #4]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02252F0E
	add r0, r4, #0
	add r0, #0x61
	ldrb r1, [r0]
	mov r0, #0xf
	add r2, sp, #0xb8
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl MOD11_02256854
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0xb8
	bl MOD11_02254404
	add r0, r4, #0
	add r0, #0x62
	ldrb r0, [r0]
	add r4, #0x62
	add sp, #0x110
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02252F0E:
	mov r0, #0xff
	add r4, #0x62
	add sp, #0x110
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02252F18:
	add r3, r4, #0
	add r3, #0x61
	ldrb r3, [r3]
	add r1, r4, #0
	ldr r0, [r4]
	add r1, #8
	add r2, sp, #0x68
	bl MOD11_0225452C
	add r0, sp, #0x68
	mov r1, #5
	bl MOD08_0222A568
	add r0, r4, #0
	add r0, #0x61
	ldrb r1, [r0]
	mov r0, #0x10
	add r2, sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4]
	mov r3, #1
	bl MOD11_02256854
	ldr r0, [r4]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x10
	bl MOD11_02254404
	mov r0, #0x1a
	ldr r1, [r4, #4]
	mov r2, #1
	lsl r0, r0, #4
	str r2, [r1, r0]
	add r0, r4, #0
	add r0, #0x62
	ldrb r0, [r0]
	add r4, #0x62
	add sp, #0x110
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02252F74:
	bl MOD08_02212384
	add r0, r5, #0
	bl MOD08_022123A0
	cmp r0, #0
	bne _02252FB6
	add r0, r5, #0
	bl MOD08_022123B0
	add r0, r4, #0
	add r0, #0x62
	ldrb r0, [r0]
	add r4, #0x62
	add sp, #0x110
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02252F98:
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x61
	add r2, #0x60
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4]
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	add r0, r6, #0
	bl FUN_0200CAB4
_02252FB6:
	add sp, #0x110
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start MOD11_02252FBC
MOD11_02252FBC: ; 0x02252FBC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _02252FCE
	cmp r0, #1
	beq _02252FE4
	pop {r3, r4, r5, pc}
_02252FCE:
	ldr r0, [r4, #4]
	add r1, #0xb
	bl MOD11_0225805C
	ldr r0, _02253004 ; =0x0000070C
	bl PlaySE
	ldrb r0, [r4, #0xa]
	add r0, r0, #1
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, pc}
_02252FE4:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bne _02253000
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4]
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	add r0, r5, #0
	bl FUN_0200CAB4
_02253000:
	pop {r3, r4, r5, pc}
	nop
_02253004: .word 0x0000070C

	thumb_func_start MOD11_02253008
MOD11_02253008: ; 0x02253008
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	bl MOD11_022312C0
	cmp r0, #0
	beq _0225302A
	ldr r0, [r4]
	bl MOD11_022312C0
	bl FUN_0200DBFC
	ldr r0, [r4]
	mov r1, #0
	bl MOD11_022312C8
_0225302A:
	ldrb r0, [r4, #6]
	bl FUN_0201BD70
	cmp r0, #0
	bne _0225304A
	ldrb r1, [r4, #5]
	ldrb r2, [r4, #4]
	ldr r0, [r4]
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	add r0, r5, #0
	bl FUN_0200CAB4
_0225304A:
	pop {r3, r4, r5, pc}

	thumb_func_start MOD11_0225304C
MOD11_0225304C: ; 0x0225304C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _0225305E
	cmp r0, #1
	beq _02253074
	pop {r3, r4, r5, pc}
_0225305E:
	ldrb r0, [r4, #6]
	bl FUN_0201BD70
	cmp r0, #0
	bne _0225309E
	ldrb r0, [r4, #7]
	add r0, r0, #1
	strb r0, [r4, #7]
	mov r0, #0
	strb r0, [r4, #8]
	pop {r3, r4, r5, pc}
_02253074:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	ldrb r0, [r4, #8]
	cmp r0, #0x28
	bne _0225309E
	ldrb r1, [r4, #5]
	ldr r0, [r4]
	bl MOD11_02256004
	ldrb r1, [r4, #5]
	ldrb r2, [r4, #4]
	ldr r0, [r4]
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	add r0, r5, #0
	bl FUN_0200CAB4
_0225309E:
	pop {r3, r4, r5, pc}

	thumb_func_start MOD11_022530A0
MOD11_022530A0: ; 0x022530A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	str r0, [sp, #0xc]
	ldr r0, [r4]
	bl MOD11_0222FF68
	ldr r0, [r4]
	bl MOD11_022300CC
	add r5, r0, #0
	ldr r0, [r4]
	bl MOD11_02230294
	add r7, r0, #0
	ldr r0, [r4]
	bl MOD11_022302A8
	lsl r1, r0, #2
	ldr r0, _022533D8 ; =MOD11_0225E86C
	ldr r6, [r0, r1]
	ldrb r0, [r4, #0x15]
	add r0, r0, #1
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x14]
	cmp r0, #6
	bhi _02253102
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022530E2: ; jump table
	.short _022530F0 - _022530E2 - 2 ; case 0
	.short _022530F8 - _022530E2 - 2 ; case 1
	.short _0225314A - _022530E2 - 2 ; case 2
	.short _022532AC - _022530E2 - 2 ; case 3
	.short _022532C8 - _022530E2 - 2 ; case 4
	.short _022532E4 - _022530E2 - 2 ; case 5
	.short _022532F6 - _022530E2 - 2 ; case 6
_022530F0:
	add r0, r0, #1
	add sp, #0x18
	strb r0, [r4, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_022530F8:
	add r0, r5, #0
	bl FUN_020038E4
	cmp r0, #0
	beq _02253104
_02253102:
	b _022533D4
_02253104:
	mov r0, #5
	mov r1, #0
	bl MOD08_0222A0D4
	str r0, [r4, #4]
	ldr r0, _022533DC ; =MOD11_0225E820
	add r1, sp, #0x10
	ldrb r5, [r0, r7]
	mov r0, #1
	str r0, [sp, #0x14]
	str r5, [sp, #0x10]
	ldr r0, [r4, #4]
	bl MOD08_0222A110
	str r0, [r4, #8]
	add r0, r5, #1
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	add r1, sp, #0x10
	bl MOD08_0222A110
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	bl MOD08_0222A1DC
	ldr r0, _022533E0 ; =0x0000084F
	bl PlaySE
	ldrb r0, [r4, #0x14]
	add sp, #0x18
	add r0, r0, #1
	strb r0, [r4, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_0225314A:
	ldrb r0, [r4, #0x15]
	cmp r0, #0xa
	bne _02253180
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r2, _022533E4 ; =0x0000F3FF
	add r0, r5, #0
	mov r1, #1
	bl FUN_02003210
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r2, _022533E8 ; =0x00003FFF
	add r0, r5, #0
	mov r1, #4
	bl FUN_02003210
_02253180:
	ldrb r0, [r4, #0x15]
	cmp r0, #0x14
	bne _0225318C
	ldr r0, [r4, #0xc]
	bl MOD08_0222A1DC
_0225318C:
	ldrb r0, [r4, #0x15]
	cmp r0, #0x17
	bne _0225319A
	mov r0, #0x85
	lsl r0, r0, #4
	bl PlaySE
_0225319A:
	ldrb r0, [r4, #0x15]
	cmp r0, #0x1c
	bne _02253286
	add r0, r5, #0
	mov r1, #0
	bl PaletteData_GetUnfadedBuf
	add r7, r0, #0
	ldr r0, [r4]
	bl MOD11_02231244
	add r1, r7, #0
	mov r2, #0xe0
	bl MIi_CpuCopy16
	ldr r0, [r4]
	bl MOD11_0222FF74
	cmp r0, #0x4a
	bne _022531DC
	add r0, r5, #0
	mov r1, #2
	bl PaletteData_GetUnfadedBuf
	add r7, r0, #0
	ldr r0, [r4]
	bl MOD11_02231250
	add r1, r7, #0
	mov r2, #0xa0
	bl MIi_CpuCopy16
	b _0225323E
_022531DC:
	ldr r0, [r4]
	bl MOD11_0222FF74
	mov r1, #2
	tst r0, r1
	beq _02253200
	add r0, r5, #0
	bl PaletteData_GetUnfadedBuf
	add r7, r0, #0
	ldr r0, [r4]
	bl MOD11_02231250
	add r1, r7, #0
	mov r2, #0xe0
	bl MIi_CpuCopy16
	b _0225323E
_02253200:
	ldr r0, [r4]
	bl MOD11_0222FF74
	mov r1, #1
	tst r0, r1
	beq _02253226
	add r0, r5, #0
	mov r1, #2
	bl PaletteData_GetUnfadedBuf
	add r7, r0, #0
	ldr r0, [r4]
	bl MOD11_02231250
	add r1, r7, #0
	mov r2, #0xa0
	bl MIi_CpuCopy16
	b _0225323E
_02253226:
	add r0, r5, #0
	mov r1, #2
	bl PaletteData_GetUnfadedBuf
	add r7, r0, #0
	ldr r0, [r4]
	bl MOD11_02231250
	add r1, r7, #0
	mov r2, #0x80
	bl MIi_CpuCopy16
_0225323E:
	mov r0, #0x10
	str r0, [sp]
	mov r3, #0
	lsl r0, r6, #0x10
	str r3, [sp, #4]
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r2, _022533E4 ; =0x0000F3FF
	add r0, r5, #0
	mov r1, #1
	bl FUN_02003210
	mov r0, #0x10
	str r0, [sp]
	mov r3, #0
	lsl r0, r6, #0x10
	str r3, [sp, #4]
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r2, _022533E8 ; =0x00003FFF
	add r0, r5, #0
	mov r1, #4
	bl FUN_02003210
	mov r0, #0x10
	str r0, [sp]
	mov r3, #0
	lsl r0, r6, #0x10
	str r3, [sp, #4]
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r2, _022533EC ; =0x0000FFFF
	add r0, r5, #0
	mov r1, #0xa
	bl FUN_02003210
_02253286:
	ldrb r0, [r4, #0x15]
	cmp r0, #0x32
	bne _022532B6
	mov r0, #0x10
	str r0, [sp]
	mov r3, #0
	str r3, [sp, #4]
	mov r2, #3
	str r3, [sp, #8]
	add r0, r5, #0
	mov r1, #1
	lsl r2, r2, #0xa
	bl FUN_02003210
	ldrb r0, [r4, #0x14]
	add sp, #0x18
	add r0, r0, #1
	strb r0, [r4, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_022532AC:
	ldr r0, [r4, #0xc]
	bl MOD08_0222A204
	cmp r0, #0
	beq _022532B8
_022532B6:
	b _022533D4
_022532B8:
	ldr r0, [r4, #4]
	bl MOD08_0222A14C
	ldrb r0, [r4, #0x14]
	add sp, #0x18
	add r0, r0, #1
	strb r0, [r4, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_022532C8:
	ldr r0, [r4]
	bl MOD11_02230288
	mov r1, #0
	bl FUN_020143A8
	add r0, r4, #0
	bl FreeToHeap
	ldr r0, [sp, #0xc]
	bl FUN_0200CAB4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_022532E4:
	ldr r0, [r4, #4]
	bl MOD08_0222A170
	ldr r0, [r4, #4]
	bl MOD08_0222A14C
	ldrb r0, [r4, #0x14]
	add r0, r0, #1
	strb r0, [r4, #0x14]
_022532F6:
	add r0, r5, #0
	mov r1, #0
	bl PaletteData_GetUnfadedBuf
	add r6, r0, #0
	ldr r0, [r4]
	bl MOD11_02231244
	add r1, r6, #0
	mov r2, #0xe0
	bl MIi_CpuCopy16
	ldr r0, [r4]
	bl MOD11_0222FF74
	cmp r0, #0x4a
	bne _02253332
	add r0, r5, #0
	mov r1, #2
	bl PaletteData_GetUnfadedBuf
	add r6, r0, #0
	ldr r0, [r4]
	bl MOD11_02231250
	add r1, r6, #0
	mov r2, #0xa0
	bl MIi_CpuCopy16
	b _02253394
_02253332:
	ldr r0, [r4]
	bl MOD11_0222FF74
	mov r1, #2
	tst r0, r1
	beq _02253356
	add r0, r5, #0
	bl PaletteData_GetUnfadedBuf
	add r6, r0, #0
	ldr r0, [r4]
	bl MOD11_02231250
	add r1, r6, #0
	mov r2, #0xe0
	bl MIi_CpuCopy16
	b _02253394
_02253356:
	ldr r0, [r4]
	bl MOD11_0222FF74
	mov r1, #1
	tst r0, r1
	beq _0225337C
	add r0, r5, #0
	mov r1, #2
	bl PaletteData_GetUnfadedBuf
	add r6, r0, #0
	ldr r0, [r4]
	bl MOD11_02231250
	add r1, r6, #0
	mov r2, #0xa0
	bl MIi_CpuCopy16
	b _02253394
_0225337C:
	add r0, r5, #0
	mov r1, #2
	bl PaletteData_GetUnfadedBuf
	add r6, r0, #0
	ldr r0, [r4]
	bl MOD11_02231250
	add r1, r6, #0
	mov r2, #0x80
	bl MIi_CpuCopy16
_02253394:
	mov r3, #0
	str r3, [sp]
	ldr r0, _022533F0 ; =0x00007FFF
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r2, _022533EC ; =0x0000FFFF
	add r0, r5, #0
	mov r1, #1
	bl FUN_02003210
	mov r3, #0
	str r3, [sp]
	ldr r2, _022533EC ; =0x0000FFFF
	str r3, [sp, #4]
	str r2, [sp, #8]
	add r0, r5, #0
	mov r1, #4
	lsr r2, r2, #2
	bl FUN_02003210
	mov r3, #0
	str r3, [sp]
	ldr r0, _022533F0 ; =0x00007FFF
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r2, _022533EC ; =0x0000FFFF
	add r0, r5, #0
	mov r1, #0xa
	bl FUN_02003210
	mov r0, #4
	strb r0, [r4, #0x14]
_022533D4:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022533D8: .word MOD11_0225E86C
_022533DC: .word MOD11_0225E820
_022533E0: .word 0x0000084F
_022533E4: .word 0x0000F3FF
_022533E8: .word 0x00003FFF
_022533EC: .word 0x0000FFFF
_022533F0: .word 0x00007FFF

	thumb_func_start MOD11_022533F4
MOD11_022533F4: ; 0x022533F4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	bl MOD11_022300CC
	ldrb r1, [r4, #0xa]
	add r6, r0, #0
	cmp r1, #3
	bls _0225340C
	b _02253524
_0225340C:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02253418: ; jump table
	.short _02253420 - _02253418 - 2 ; case 0
	.short _02253440 - _02253418 - 2 ; case 1
	.short _022534B0 - _02253418 - 2 ; case 2
	.short _022534E2 - _02253418 - 2 ; case 3
_02253420:
	mov r2, #0
	str r2, [sp]
	mov r1, #0x10
	str r1, [sp, #4]
	mov r1, #0xa
	str r2, [sp, #8]
	add r3, r1, #0
	ldr r2, _02253528 ; =0x0000FFFF
	sub r3, #0x12
	bl FUN_02003210
	ldrb r0, [r4, #0xa]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, pc}
_02253440:
	bl FUN_020038E4
	cmp r0, #0
	bne _02253524
	ldr r0, [r4]
	bl MOD11_0222D7F8
	mov r0, #5
	mov r1, #0x38
	bl AllocFromHeap
	str r0, [r4, #4]
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl MOD11_0222FF88
	ldr r1, [r4, #4]
	mov r2, #3
	str r0, [r1]
	ldr r1, [r4]
	ldr r0, [r4, #4]
	str r1, [r0, #8]
	ldr r0, [r4, #4]
	mov r1, #5
	str r1, [r0, #0xc]
	ldrb r1, [r4, #0xe]
	ldr r0, [r4, #4]
	strb r1, [r0, #0x11]
	ldrh r1, [r4, #0xc]
	ldr r0, [r4, #4]
	strh r1, [r0, #0x24]
	ldr r1, [r4, #4]
	mov r0, #0
	add r1, #0x36
	strb r0, [r1]
	ldr r1, [r4, #4]
	strb r0, [r1, #0x12]
	ldr r1, [r4, #4]
	add r1, #0x35
	strb r2, [r1]
	ldr r1, [r4, #4]
	strh r0, [r1, #0x22]
	ldrb r2, [r4, #9]
	ldr r1, [r4, #4]
	str r2, [r1, #0x28]
	ldr r1, [r4, #4]
	add r1, #0x32
	strb r0, [r1]
	ldr r0, [r4, #4]
	bl MOD07_02211E60
	ldrb r0, [r4, #0xa]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, pc}
_022534B0:
	ldr r0, [r4, #4]
	add r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0
	beq _02253524
	ldr r0, [r4]
	bl MOD11_0222D88C
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	mov r1, #0xa
	str r0, [sp, #4]
	add r3, r1, #0
	str r0, [sp, #8]
	ldr r2, _02253528 ; =0x0000FFFF
	add r0, r6, #0
	sub r3, #0x12
	bl FUN_02003210
	ldrb r0, [r4, #0xa]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, pc}
_022534E2:
	bl FUN_020038E4
	cmp r0, #0
	bne _02253524
	ldr r0, [r4, #4]
	add r0, #0x34
	ldrb r2, [r0]
	ldr r0, [r4]
	cmp r2, #4
	bne _02253500
	ldrb r1, [r4, #9]
	mov r2, #0xff
	bl MOD11_02255964
	b _02253508
_02253500:
	ldrb r1, [r4, #9]
	add r2, r2, #1
	bl MOD11_02255964
_02253508:
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4]
	bl MOD11_022567B8
	ldr r0, [r4, #4]
	bl FreeToHeap
	add r0, r4, #0
	bl FreeToHeap
	add r0, r5, #0
	bl FUN_0200CAB4
_02253524:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02253528: .word 0x0000FFFF

	thumb_func_start MOD11_0225352C
MOD11_0225352C: ; 0x0225352C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _0225353E
	cmp r0, #1
	beq _02253582
	pop {r3, r4, r5, pc}
_0225353E:
	ldrb r1, [r5, #0xc]
	ldrb r0, [r5, #0xd]
	cmp r1, r0
	bne _0225357C
	mov r0, #0
	strb r0, [r5, #0xc]
	ldr r0, [r5, #4]
	mov r1, #0x28
	bl FUN_0200782C
	add r4, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r4, r0
	ble _0225355E
	sub r4, r4, #1
	b _02253564
_0225355E:
	cmp r4, r0
	bge _02253564
	add r4, r4, #1
_02253564:
	ldr r0, [r5, #4]
	mov r1, #0x28
	add r2, r4, #0
	bl FUN_02007558
	ldrb r0, [r5, #0xb]
	cmp r4, r0
	bne _02253598
	ldrb r0, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xa]
	pop {r3, r4, r5, pc}
_0225357C:
	add r0, r1, #1
	strb r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
_02253582:
	ldrb r1, [r5, #9]
	ldrb r2, [r5, #8]
	ldr r0, [r5]
	bl MOD11_022567B8
	add r0, r5, #0
	bl FreeToHeap
	add r0, r4, #0
	bl FUN_0200CAB4
_02253598:
	pop {r3, r4, r5, pc}
	.align 2, 0

	thumb_func_start MOD11_0225359C
MOD11_0225359C: ; 0x0225359C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldrb r1, [r5, #5]
	add r6, r0, #0
	ldr r0, [r5]
	bl MOD11_02230270
	cmp r0, #0
	bne _022535B4
	mov r4, #0
	b _022535B6
_022535B4:
	mov r4, #1
_022535B6:
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _022535C2
	cmp r0, #1
	beq _0225361C
	b _02253636
_022535C2:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _022535CE
	mov r7, #0
	mov r6, #1
	b _022535E6
_022535CE:
	ldrb r0, [r5, #6]
	mov r7, #1
	cmp r0, #3
	beq _022535DC
	cmp r0, #5
	beq _022535E0
	b _022535E4
_022535DC:
	mov r6, #0
	b _022535E6
_022535E0:
	mov r6, #2
	b _022535E6
_022535E4:
	add r6, r7, #0
_022535E6:
	ldr r0, [r5]
	bl MOD11_02230078
	str r0, [sp, #8]
	ldr r0, [r5]
	bl MOD11_02230080
	ldr r1, [sp, #8]
	add r2, r7, #0
	str r1, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #8
	add r1, r4, #0
	add r3, r6, #0
	bl MOD11_0225CA08
	add r2, r0, #0
	ldr r0, [r5]
	add r1, r4, #0
	bl MOD11_022300A8
	ldrb r0, [r5, #7]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r5, #7]
	pop {r4, r5, r6, r7, pc}
_0225361C:
	ldr r0, [r5]
	add r1, r4, #0
	bl MOD11_0223009C
	bl MOD11_0225CA6C
	cmp r0, #1
	bne _0225364C
	ldrb r0, [r5, #7]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r5, #7]
	pop {r4, r5, r6, r7, pc}
_02253636:
	ldrb r1, [r5, #5]
	ldrb r2, [r5, #4]
	ldr r0, [r5]
	bl MOD11_022567B8
	add r0, r5, #0
	bl FreeToHeap
	add r0, r6, #0
	bl FUN_0200CAB4
_0225364C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}

	thumb_func_start MOD11_02253650
MOD11_02253650: ; 0x02253650
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldrb r1, [r5, #5]
	add r7, r0, #0
	ldr r0, [r5]
	bl MOD11_02230270
	cmp r0, #0
	bne _02253666
	mov r4, #0
	b _02253668
_02253666:
	mov r4, #1
_02253668:
	ldr r0, [r5]
	add r1, r4, #0
	bl MOD11_0223009C
	ldrb r1, [r5, #7]
	add r6, r0, #0
	cmp r1, #0
	beq _0225367E
	cmp r1, #1
	beq _0225369A
	b _022536BA
_0225367E:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _02253688
	mov r1, #0
	b _0225368A
_02253688:
	mov r1, #1
_0225368A:
	add r0, r6, #0
	add r2, r1, #0
	bl MOD11_0225CA90
	ldrb r0, [r5, #7]
	add r0, r0, #1
	strb r0, [r5, #7]
	pop {r3, r4, r5, r6, r7, pc}
_0225369A:
	bl MOD11_0225CAC8
	cmp r0, #1
	bne _022536D0
	add r0, r6, #0
	bl MOD11_0225CAEC
	ldr r0, [r5]
	add r1, r4, #0
	mov r2, #0
	bl MOD11_022300A8
	ldrb r0, [r5, #7]
	add r0, r0, #1
	strb r0, [r5, #7]
	pop {r3, r4, r5, r6, r7, pc}
_022536BA:
	ldrb r1, [r5, #5]
	ldrb r2, [r5, #4]
	ldr r0, [r5]
	bl MOD11_022567B8
	add r0, r5, #0
	bl FreeToHeap
	add r0, r7, #0
	bl FUN_0200CAB4
_022536D0:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start MOD11_022536D4
MOD11_022536D4: ; 0x022536D4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _02253706
	ldr r0, [r4, #4]
	add r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	beq _022536EE
	bl GF_AssertFail
_022536EE:
	ldrb r2, [r4, #0xd]
	ldr r0, [r4]
	mov r1, #5
	bl MOD08_022156C0
	ldr r1, [r4, #4]
	add r1, #0x8c
	str r0, [r1]
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, pc}
_02253706:
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xc]
	ldr r0, [r4]
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	add r0, r5, #0
	bl FUN_0200CAB4
	pop {r3, r4, r5, pc}
	.align 2, 0

	thumb_func_start MOD11_02253720
MOD11_02253720: ; 0x02253720
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	add r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	bne _02253734
	bl GF_AssertFail
_02253734:
	ldr r0, [r4, #4]
	add r0, #0x8c
	ldr r0, [r0]
	bl MOD08_02215988
	cmp r0, #3
	bne _0225374E
	ldrb r0, [r4, #0xe]
	cmp r0, #5
	bhs _0225374E
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, pc}
_0225374E:
	ldr r0, [r4, #4]
	ldrb r1, [r4, #0xd]
	add r0, #0x8c
	ldr r0, [r0]
	bl MOD08_0221594C
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, #0x8c
	str r1, [r0]
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xc]
	ldr r0, [r4]
	bl MOD11_022567B8
	add r0, r4, #0
	bl FreeToHeap
	add r0, r5, #0
	bl FUN_0200CAB4
	pop {r3, r4, r5, pc}
	.align 2, 0

	thumb_func_start MOD11_0225377C
MOD11_0225377C: ; 0x0225377C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl MOD11_0222FF74
	mov r1, #0x40
	tst r1, r0
	beq _022537D6
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _022537B6
	ldr r1, _022539F4 ; =MOD11_02250F44
	add r0, r0, #2
	str r1, [r4]
	ldr r1, _022539F8 ; =MOD11_022511C4
	str r1, [r4, #4]
	ldr r1, _022539FC ; =MOD11_02251420
	str r1, [r4, #8]
	ldr r1, _02253A00 ; =MOD11_02252018
	str r1, [r4, #0xc]
	ldr r1, _02253A04 ; =MOD11_02252470
	str r1, [r4, #0x10]
	ldr r1, _02253A08 ; =MOD11_02252714
	str r1, [r4, #0x14]
	mov r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
_022537B6:
	ldr r1, _02253A0C ; =MOD11_02250A70
	add r0, r0, #2
	str r1, [r4]
	ldr r1, _02253A10 ; =MOD11_0225103C
	str r1, [r4, #4]
	ldr r1, _02253A14 ; =MOD11_022512B4
	str r1, [r4, #8]
	ldr r1, _02253A18 ; =MOD11_02251484
	str r1, [r4, #0xc]
	ldr r1, _02253A1C ; =MOD11_022520A8
	str r1, [r4, #0x10]
	ldr r1, _02253A20 ; =MOD11_02252544
	str r1, [r4, #0x14]
	mov r1, #0
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
_022537D6:
	mov r1, #0x88
	and r1, r0
	cmp r1, #0x88
	bne _02253888
	ldr r0, _02253A24 ; =0x00000195
	ldrb r1, [r4, r0]
	mov r0, #1
	tst r0, r1
	beq _02253832
	add r0, r5, #0
	bl MOD11_02230DD4
	cmp r0, #0
	beq _02253812
	ldr r0, _022539F4 ; =MOD11_02250F44
	mov r1, #1
	str r0, [r4]
	ldr r0, _022539F8 ; =MOD11_022511C4
	str r0, [r4, #4]
	ldr r0, _022539FC ; =MOD11_02251420
	str r0, [r4, #8]
	ldr r0, _02253A00 ; =MOD11_02252018
	str r0, [r4, #0xc]
	ldr r0, _02253A04 ; =MOD11_02252470
	str r0, [r4, #0x10]
	ldr r0, _02253A08 ; =MOD11_02252714
	str r0, [r4, #0x14]
	ldr r0, _02253A28 ; =0x00000196
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
_02253812:
	ldr r0, _02253A2C ; =MOD11_02250F74
	mov r1, #2
	str r0, [r4]
	ldr r0, _02253A30 ; =MOD11_02251294
	str r0, [r4, #4]
	ldr r0, _02253A34 ; =MOD11_02251464
	str r0, [r4, #8]
	ldr r0, _02253A38 ; =MOD11_02252070
	str r0, [r4, #0xc]
	ldr r0, _02253A3C ; =MOD11_02252524
	str r0, [r4, #0x10]
	ldr r0, _02253A40 ; =MOD11_02252734
	str r0, [r4, #0x14]
	ldr r0, _02253A28 ; =0x00000196
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
_02253832:
	bl FUN_02031190
	add r1, r0, #0
	add r0, r5, #0
	lsl r1, r1, #1
	bl MOD11_02230260
	ldr r1, _02253A24 ; =0x00000195
	ldrb r2, [r4, r1]
	cmp r2, r0
	beq _02253868
	ldr r0, _02253A2C ; =MOD11_02250F74
	mov r2, #2
	str r0, [r4]
	ldr r0, _02253A30 ; =MOD11_02251294
	str r0, [r4, #4]
	ldr r0, _02253A34 ; =MOD11_02251464
	str r0, [r4, #8]
	ldr r0, _02253A38 ; =MOD11_02252070
	str r0, [r4, #0xc]
	ldr r0, _02253A3C ; =MOD11_02252524
	str r0, [r4, #0x10]
	ldr r0, _02253A40 ; =MOD11_02252734
	str r0, [r4, #0x14]
	add r0, r1, #1
	strb r2, [r4, r0]
	pop {r3, r4, r5, pc}
_02253868:
	ldr r0, _02253A0C ; =MOD11_02250A70
	mov r2, #0
	str r0, [r4]
	ldr r0, _02253A10 ; =MOD11_0225103C
	str r0, [r4, #4]
	ldr r0, _02253A14 ; =MOD11_022512B4
	str r0, [r4, #8]
	ldr r0, _02253A18 ; =MOD11_02251484
	str r0, [r4, #0xc]
	ldr r0, _02253A1C ; =MOD11_022520A8
	str r0, [r4, #0x10]
	ldr r0, _02253A20 ; =MOD11_02252544
	str r0, [r4, #0x14]
	add r0, r1, #1
	strb r2, [r4, r0]
	pop {r3, r4, r5, pc}
_02253888:
	mov r1, #8
	tst r1, r0
	beq _022538E2
	bl FUN_02031190
	add r1, r0, #0
	add r0, r5, #0
	bl MOD11_02230260
	ldr r1, _02253A24 ; =0x00000195
	ldrb r2, [r4, r1]
	cmp r2, r0
	beq _022538C2
	ldr r0, _02253A2C ; =MOD11_02250F74
	mov r2, #2
	str r0, [r4]
	ldr r0, _02253A30 ; =MOD11_02251294
	str r0, [r4, #4]
	ldr r0, _02253A34 ; =MOD11_02251464
	str r0, [r4, #8]
	ldr r0, _02253A38 ; =MOD11_02252070
	str r0, [r4, #0xc]
	ldr r0, _02253A3C ; =MOD11_02252524
	str r0, [r4, #0x10]
	ldr r0, _02253A40 ; =MOD11_02252734
	str r0, [r4, #0x14]
	add r0, r1, #1
	strb r2, [r4, r0]
	pop {r3, r4, r5, pc}
_022538C2:
	ldr r0, _02253A0C ; =MOD11_02250A70
	mov r2, #0
	str r0, [r4]
	ldr r0, _02253A10 ; =MOD11_0225103C
	str r0, [r4, #4]
	ldr r0, _02253A14 ; =MOD11_022512B4
	str r0, [r4, #8]
	ldr r0, _02253A18 ; =MOD11_02251484
	str r0, [r4, #0xc]
	ldr r0, _02253A1C ; =MOD11_022520A8
	str r0, [r4, #0x10]
	ldr r0, _02253A20 ; =MOD11_02252544
	str r0, [r4, #0x14]
	add r0, r1, #1
	strb r2, [r4, r0]
	pop {r3, r4, r5, pc}
_022538E2:
	mov r1, #4
	add r2, r0, #0
	tst r2, r1
	beq _02253934
	ldr r0, _02253A24 ; =0x00000195
	mov r1, #1
	ldrb r2, [r4, r0]
	tst r1, r2
	beq _02253914
	ldr r1, _02253A2C ; =MOD11_02250F74
	add r0, r0, #1
	str r1, [r4]
	ldr r1, _02253A30 ; =MOD11_02251294
	str r1, [r4, #4]
	ldr r1, _02253A34 ; =MOD11_02251464
	str r1, [r4, #8]
	ldr r1, _02253A38 ; =MOD11_02252070
	str r1, [r4, #0xc]
	ldr r1, _02253A3C ; =MOD11_02252524
	str r1, [r4, #0x10]
	ldr r1, _02253A40 ; =MOD11_02252734
	str r1, [r4, #0x14]
	mov r1, #2
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
_02253914:
	ldr r1, _02253A0C ; =MOD11_02250A70
	add r0, r0, #1
	str r1, [r4]
	ldr r1, _02253A10 ; =MOD11_0225103C
	str r1, [r4, #4]
	ldr r1, _02253A14 ; =MOD11_022512B4
	str r1, [r4, #8]
	ldr r1, _02253A18 ; =MOD11_02251484
	str r1, [r4, #0xc]
	ldr r1, _02253A1C ; =MOD11_022520A8
	str r1, [r4, #0x10]
	ldr r1, _02253A20 ; =MOD11_02252544
	str r1, [r4, #0x14]
	mov r1, #0
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
_02253934:
	lsl r1, r1, #7
	tst r1, r0
	beq _02253970
	ldr r0, _02253A24 ; =0x00000195
	mov r1, #1
	ldrb r2, [r4, r0]
	tst r2, r1
	beq _0225395A
	ldr r2, _02253A44 ; =MOD11_02251014
	add r0, r0, #1
	str r2, [r4]
	mov r2, #0
	str r2, [r4, #4]
	str r2, [r4, #8]
	str r2, [r4, #0xc]
	str r2, [r4, #0x10]
	str r2, [r4, #0x14]
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
_0225395A:
	ldr r1, _02253A0C ; =MOD11_02250A70
	add r0, r0, #1
	str r1, [r4]
	mov r1, #0
	str r1, [r4, #4]
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	str r1, [r4, #0x10]
	str r1, [r4, #0x14]
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
_02253970:
	mov r1, #0x20
	tst r0, r1
	ldr r0, _02253A24 ; =0x00000195
	beq _022539AE
	ldrb r2, [r4, r0]
	mov r1, #1
	tst r2, r1
	beq _02253996
	ldr r2, _02253A48 ; =MOD11_02250F94
	add r0, r0, #1
	str r2, [r4]
	mov r2, #0
	str r2, [r4, #4]
	str r2, [r4, #8]
	str r2, [r4, #0xc]
	str r2, [r4, #0x10]
	str r2, [r4, #0x14]
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
_02253996:
	ldr r1, _02253A0C ; =MOD11_02250A70
	mov r2, #0
	str r1, [r4]
	str r2, [r4, #4]
	str r2, [r4, #8]
	str r2, [r4, #0xc]
	ldr r1, _02253A20 ; =MOD11_02252544
	str r2, [r4, #0x10]
	str r1, [r4, #0x14]
	add r0, r0, #1
	strb r2, [r4, r0]
	pop {r3, r4, r5, pc}
_022539AE:
	ldrb r2, [r4, r0]
	mov r1, #1
	tst r2, r1
	beq _022539D4
	ldr r2, _022539F4 ; =MOD11_02250F44
	add r0, r0, #1
	str r2, [r4]
	ldr r2, _022539F8 ; =MOD11_022511C4
	str r2, [r4, #4]
	ldr r2, _022539FC ; =MOD11_02251420
	str r2, [r4, #8]
	ldr r2, _02253A00 ; =MOD11_02252018
	str r2, [r4, #0xc]
	ldr r2, _02253A04 ; =MOD11_02252470
	str r2, [r4, #0x10]
	ldr r2, _02253A08 ; =MOD11_02252714
	str r2, [r4, #0x14]
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
_022539D4:
	ldr r1, _02253A0C ; =MOD11_02250A70
	add r0, r0, #1
	str r1, [r4]
	ldr r1, _02253A10 ; =MOD11_0225103C
	str r1, [r4, #4]
	ldr r1, _02253A14 ; =MOD11_022512B4
	str r1, [r4, #8]
	ldr r1, _02253A18 ; =MOD11_02251484
	str r1, [r4, #0xc]
	ldr r1, _02253A1C ; =MOD11_022520A8
	str r1, [r4, #0x10]
	ldr r1, _02253A20 ; =MOD11_02252544
	str r1, [r4, #0x14]
	mov r1, #0
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
_022539F4: .word MOD11_02250F44
_022539F8: .word MOD11_022511C4
_022539FC: .word MOD11_02251420
_02253A00: .word MOD11_02252018
_02253A04: .word MOD11_02252470
_02253A08: .word MOD11_02252714
_02253A0C: .word MOD11_02250A70
_02253A10: .word MOD11_0225103C
_02253A14: .word MOD11_022512B4
_02253A18: .word MOD11_02251484
_02253A1C: .word MOD11_022520A8
_02253A20: .word MOD11_02252544
_02253A24: .word 0x00000195
_02253A28: .word 0x00000196
_02253A2C: .word MOD11_02250F74
_02253A30: .word MOD11_02251294
_02253A34: .word MOD11_02251464
_02253A38: .word MOD11_02252070
_02253A3C: .word MOD11_02252524
_02253A40: .word MOD11_02252734
_02253A44: .word MOD11_02251014
_02253A48: .word MOD11_02250F94

	thumb_func_start MOD11_02253A4C
MOD11_02253A4C: ; 0x02253A4C
	ldr r1, _02253A54 ; =0x00000195
	ldrb r0, [r0, r1]
	bx lr
	nop
_02253A54: .word 0x00000195

	thumb_func_start MOD11_02253A58
MOD11_02253A58: ; 0x02253A58
	ldr r1, _02253A60 ; =0x00000196
	ldrb r0, [r0, r1]
	bx lr
	nop
_02253A60: .word 0x00000196

	thumb_func_start MOD11_02253A64
MOD11_02253A64: ; 0x02253A64
	ldr r1, [r0, #0x20]
	cmp r1, #0
	bne _02253A6C
	ldr r1, [r0, #0x1c]
_02253A6C:
	add r0, r1, #0
	bx lr

	thumb_func_start MOD11_02253A70
MOD11_02253A70: ; 0x02253A70
	add r0, #0x28
	bx lr

	thumb_func_start MOD11_02253A74
MOD11_02253A74: ; 0x02253A74
	add r0, #0x80
	bx lr

	thumb_func_start MOD11_02253A78
MOD11_02253A78: ; 0x02253A78
	ldr r3, _02253A84 ; =MI_CpuFill8
	add r0, #0x80
	mov r1, #0
	mov r2, #8
	bx r3
	nop
_02253A84: .word MI_CpuFill8

	thumb_func_start MOD11_02253A88
MOD11_02253A88: ; 0x02253A88
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r4, [sp, #0x50]
	add r7, r0, #0
	str r1, [sp, #0x14]
	add r5, r2, #0
	str r3, [sp, #0x18]
	bl MOD11_02230130
	add r1, r4, #0
	bl MOD11_022312DC
	str r0, [sp, #0x20]
	add r0, r7, #0
	add r1, r4, #0
	bl MOD11_02230260
	add r6, r0, #0
	mov r0, #1
	and r0, r6
	str r0, [sp, #0x1c]
	beq _02253AB8
	mov r1, #2
	b _02253ABA
_02253AB8:
	mov r1, #0
_02253ABA:
	ldr r0, [r5, #0xc]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldrh r0, [r5, #6]
	mov r2, #5
	str r0, [sp, #0xc]
	ldrh r0, [r5]
	ldrh r1, [r5, #2]
	bl FUN_02012560
	add r0, r7, #0
	bl MOD11_02230130
	ldrh r2, [r5]
	add r1, r4, #0
	bl MOD11_022312F0
	add r0, r7, #0
	bl MOD11_02230130
	ldrh r2, [r5, #4]
	add r1, r4, #0
	bl MOD11_02231308
	add r0, r7, #0
	bl MOD11_02230130
	ldr r2, [sp, #0x40]
	add r1, r4, #0
	bl MOD11_02231320
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x40]
	str r0, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [sp, #0x54]
	ldr r4, [sp, #0x38]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x58]
	ldr r2, [sp, #0x18]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	add r3, r4, r3
	bl FUN_020073E8
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _02253B6E
	cmp r6, #1
	ble _02253B2C
	asr r6, r6, #1
_02253B2C:
	add r0, r4, #0
	mov r1, #0x2a
	add r2, r6, #0
	bl FUN_02007558
	ldr r2, [sp, #0x4c]
	add r0, r4, #0
	mov r1, #0x2e
	bl FUN_02007558
	ldr r2, [sp, #0x38]
	add r0, r4, #0
	mov r1, #0x14
	add r2, #0x24
	bl FUN_02007558
	ldr r2, [sp, #0x48]
	add r0, r4, #0
	mov r1, #0x15
	bl FUN_02007558
	ldr r3, [sp, #0x40]
	mov r2, #0x24
	add r0, r4, #0
	mov r1, #0x16
	sub r2, r2, r3
	bl FUN_02007558
	ldr r2, [sp, #0x44]
	add r0, r4, #0
	mov r1, #0x29
	bl FUN_02007558
_02253B6E:
	add r0, r4, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}

	thumb_func_start MOD11_02253B74
MOD11_02253B74: ; 0x02253B74
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _02253C30 ; =0x00000195
	add r6, r2, #0
	ldrb r2, [r5, r1]
	mov r1, #1
	add r7, r0, #0
	add r4, r3, #0
	tst r1, r2
	beq _02253BCE
	bl MOD11_0222FF74
	mov r1, #4
	tst r0, r1
	beq _02253BAE
	ldr r0, _02253C34 ; =0x000003DE
	strh r0, [r4, #2]
	mov r0, #0x1b
	strb r0, [r4, #1]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	str r1, [r4, #4]
	ldrb r1, [r5, r0]
	ldrb r0, [r6, #1]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02253BAE:
	ldr r0, _02253C38 ; =0x000003DD
	strh r0, [r4, #2]
	mov r0, #0x32
	strb r0, [r4, #1]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	str r1, [r4, #4]
	ldrb r1, [r5, r0]
	str r1, [r4, #8]
	ldrb r1, [r5, r0]
	ldrb r0, [r6, #1]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02253BCE:
	bl MOD11_0222FF74
	mov r1, #2
	tst r0, r1
	bne _02253C18
	add r0, r7, #0
	bl MOD11_0222FF74
	mov r1, #4
	tst r0, r1
	bne _02253C18
	ldrh r0, [r6, #2]
	cmp r0, #0
	bne _02253BF2
	mov r0, #0xf6
	lsl r0, r0, #2
	strh r0, [r4, #2]
	b _02253C1C
_02253BF2:
	cmp r0, #0x19
	bhs _02253BFC
	ldr r0, _02253C3C ; =0x000003D9
	strh r0, [r4, #2]
	b _02253C1C
_02253BFC:
	cmp r0, #0x32
	bhs _02253C08
	mov r0, #0xf7
	lsl r0, r0, #2
	strh r0, [r4, #2]
	b _02253C1C
_02253C08:
	cmp r0, #0x4b
	bhs _02253C12
	ldr r0, _02253C40 ; =0x000003DA
	strh r0, [r4, #2]
	b _02253C1C
_02253C12:
	ldr r0, _02253C44 ; =0x000003DB
	strh r0, [r4, #2]
	b _02253C1C
_02253C18:
	ldr r0, _02253C3C ; =0x000003D9
	strh r0, [r4, #2]
_02253C1C:
	mov r0, #2
	strb r0, [r4, #1]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	ldrb r0, [r6, #1]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02253C30: .word 0x00000195
_02253C34: .word 0x000003DE
_02253C38: .word 0x000003DD
_02253C3C: .word 0x000003D9
_02253C40: .word 0x000003DA
_02253C44: .word 0x000003DB

	thumb_func_start MOD11_02253C48
MOD11_02253C48: ; 0x02253C48
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _02253D08 ; =0x00000195
	add r6, r2, #0
	ldrb r2, [r5, r1]
	mov r1, #1
	add r7, r0, #0
	add r4, r3, #0
	tst r1, r2
	beq _02253CA4
	bl MOD11_0222FF74
	mov r1, #4
	tst r0, r1
	bne _02253C88
	mov r0, #0xf3
	lsl r0, r0, #2
	strh r0, [r4, #2]
	mov r0, #0x32
	strb r0, [r4, #1]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	str r1, [r4, #4]
	ldrb r1, [r5, r0]
	str r1, [r4, #8]
	ldrb r1, [r5, r0]
	ldrb r0, [r6, #1]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02253C88:
	ldr r0, _02253D0C ; =0x000003CE
	strh r0, [r4, #2]
	mov r0, #0x1b
	strb r0, [r4, #1]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	str r1, [r4, #4]
	ldrb r1, [r5, r0]
	ldrb r0, [r6, #1]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02253CA4:
	bl MOD11_0222FF74
	mov r1, #2
	tst r0, r1
	bne _02253CF0
	add r0, r7, #0
	bl MOD11_0222FF74
	mov r1, #4
	tst r0, r1
	bne _02253CF0
	ldrh r1, [r6, #2]
	cmp r1, #0x64
	bhs _02253CC6
	ldr r0, _02253D10 ; =0x000003D6
	strh r0, [r4, #2]
	b _02253CF4
_02253CC6:
	ldr r0, _02253D14 ; =0x00000145
	cmp r1, r0
	bhs _02253CD2
	ldr r0, _02253D18 ; =0x000003D7
	strh r0, [r4, #2]
	b _02253CF4
_02253CD2:
	add r0, #0xe1
	cmp r1, r0
	bhs _02253CDE
	ldr r0, _02253D1C ; =0x000003D5
	strh r0, [r4, #2]
	b _02253CF4
_02253CDE:
	ldr r0, _02253D20 ; =0x00000307
	cmp r1, r0
	bhs _02253CEA
	add r0, #0xcd
	strh r0, [r4, #2]
	b _02253CF4
_02253CEA:
	add r0, #0xcc
	strh r0, [r4, #2]
	b _02253CF4
_02253CF0:
	ldr r0, _02253D24 ; =0x000003D3
	strh r0, [r4, #2]
_02253CF4:
	mov r0, #2
	strb r0, [r4, #1]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	ldrb r0, [r6, #1]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02253D08: .word 0x00000195
_02253D0C: .word 0x000003CE
_02253D10: .word 0x000003D6
_02253D14: .word 0x00000145
_02253D18: .word 0x000003D7
_02253D1C: .word 0x000003D5
_02253D20: .word 0x00000307
_02253D24: .word 0x000003D3

	thumb_func_start MOD11_02253D28
MOD11_02253D28: ; 0x02253D28
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r2, #0
	bl MOD11_0222FF74
	add r4, r0, #0
	mov r0, #2
	tst r0, r4
	beq _02253D4E
	add r0, r7, #0
	mov r1, #3
	bl MOD11_0223022C
	add r6, r0, #0
	add r0, r7, #0
	mov r1, #5
	bl MOD11_0223022C
	b _02253D58
_02253D4E:
	add r0, r7, #0
	mov r1, #1
	bl MOD11_0223022C
	add r6, r0, #0
_02253D58:
	mov r1, #4
	tst r1, r4
	beq _02253D98
	mov r1, #0x80
	tst r1, r4
	beq _02253D78
	mov r1, #0x3e
	lsl r1, r1, #4
	strh r1, [r5, #2]
	mov r1, #0x3b
	strb r1, [r5, #1]
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r0, [r5, #0xc]
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02253D78:
	mov r1, #8
	add r2, r4, #0
	tst r2, r1
	beq _02253D8E
	ldr r1, _02253DC8 ; =0x000003CB
	strh r1, [r5, #2]
	mov r1, #0x1a
	strb r1, [r5, #1]
	str r6, [r5, #4]
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02253D8E:
	ldr r0, _02253DCC ; =0x000003CA
	strh r0, [r5, #2]
	strb r1, [r5, #1]
	str r6, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02253D98:
	mov r1, #0x10
	tst r1, r4
	bne _02253DA4
	mov r1, #8
	tst r1, r4
	beq _02253DB8
_02253DA4:
	mov r1, #0x3e
	lsl r1, r1, #4
	strh r1, [r5, #2]
	mov r1, #0x3b
	strb r1, [r5, #1]
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r0, [r5, #0xc]
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02253DB8:
	ldr r0, _02253DD0 ; =0x000003C9
	strh r0, [r5, #2]
	mov r0, #0x1e
	strb r0, [r5, #1]
	str r6, [r5, #4]
	str r6, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02253DC8: .word 0x000003CB
_02253DCC: .word 0x000003CA
_02253DD0: .word 0x000003C9

	thumb_func_start MOD11_02253DD4
MOD11_02253DD4: ; 0x02253DD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #4]
	str r0, [sp]
	add r6, r2, #0
	add r4, r3, #0
	bl MOD11_0222FF74
	str r0, [sp, #0x14]
	ldr r2, _022540E4 ; =0x00000195
	ldr r0, [sp, #4]
	ldrb r1, [r0, r2]
	mov r0, #1
	tst r0, r1
	bne _02253DF4
	b _02253F3C
_02253DF4:
	ldr r0, [sp, #0x14]
	mov r1, #2
	and r0, r1
	str r0, [sp, #0x10]
	beq _02253E10
	ldr r0, [sp, #4]
	sub r1, r2, #1
	ldrb r5, [r0, r1]
	ldr r0, [sp]
	add r1, r5, #0
	bl MOD11_022302BC
	add r7, r0, #0
	b _02253E18
_02253E10:
	ldr r0, [sp, #4]
	sub r1, r2, #1
	ldrb r5, [r0, r1]
	add r7, r5, #0
_02253E18:
	ldr r0, [sp, #0x14]
	mov r1, #4
	tst r0, r1
	beq _02253EBE
	ldr r0, [sp, #0x14]
	mov r1, #0x80
	tst r0, r1
	beq _02253E50
	ldr r0, _022540E8 ; =0x000003DF
	add sp, #0x18
	strh r0, [r4, #2]
	mov r0, #0x3c
	strb r0, [r4, #1]
	str r5, [r4, #4]
	str r5, [r4, #8]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #0xc]
	str r7, [r4, #0x10]
	str r7, [r4, #0x14]
	add r0, r6, r7
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r7
	str r0, [r4, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_02253E50:
	ldr r0, [sp, #0x14]
	mov r1, #8
	tst r0, r1
	beq _02253E7E
	mov r0, #0x3d
	lsl r0, r0, #4
	strh r0, [r4, #2]
	mov r0, #0x38
	strb r0, [r4, #1]
	str r5, [r4, #4]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	add sp, #0x18
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #8]
	str r7, [r4, #0xc]
	add r0, r6, r7
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r7
	str r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02253E7E:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _02253EA6
	ldr r0, _022540EC ; =0x000003CF
	add sp, #0x18
	strh r0, [r4, #2]
	mov r0, #0x31
	strb r0, [r4, #1]
	str r5, [r4, #4]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #8]
	add r0, r6, r7
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r7
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02253EA6:
	ldr r0, _022540F0 ; =0x000003CE
	add sp, #0x18
	strh r0, [r4, #2]
	mov r0, #0x1b
	strb r0, [r4, #1]
	str r5, [r4, #4]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02253EBE:
	ldr r0, [sp, #0x14]
	mov r1, #0x10
	tst r0, r1
	bne _02253ECE
	ldr r0, [sp, #0x14]
	mov r1, #8
	tst r0, r1
	beq _02253EF6
_02253ECE:
	ldr r0, _022540E8 ; =0x000003DF
	add sp, #0x18
	strh r0, [r4, #2]
	mov r0, #0x3c
	strb r0, [r4, #1]
	str r5, [r4, #4]
	str r5, [r4, #8]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #0xc]
	str r7, [r4, #0x10]
	str r7, [r4, #0x14]
	add r0, r6, r7
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r7
	str r0, [r4, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_02253EF6:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _02253F20
	ldr r0, _022540F4 ; =0x000003CD
	add sp, #0x18
	strh r0, [r4, #2]
	mov r0, #0x39
	strb r0, [r4, #1]
	str r5, [r4, #4]
	str r5, [r4, #8]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #0xc]
	add r0, r6, r7
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r7
	str r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02253F20:
	mov r0, #0xf3
	lsl r0, r0, #2
	strh r0, [r4, #2]
	mov r0, #0x32
	strb r0, [r4, #1]
	str r5, [r4, #4]
	str r5, [r4, #8]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	add sp, #0x18
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02253F3C:
	ldr r0, [sp, #0x14]
	mov r1, #4
	and r0, r1
	str r0, [sp, #0xc]
	beq _02253FCC
	bl FUN_02031190
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	ldr r0, [sp, #0x14]
	mov r1, #8
	and r0, r1
	str r0, [sp, #8]
	beq _02253FA2
	add r0, r2, #0
	bl FUN_020313CC
	cmp r0, #3
	bhi _02254012
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02253F6E: ; jump table
	.short _02253F76 - _02253F6E - 2 ; case 0
	.short _02253F8C - _02253F6E - 2 ; case 1
	.short _02253F8C - _02253F6E - 2 ; case 2
	.short _02253F76 - _02253F6E - 2 ; case 3
_02253F76:
	ldr r0, [sp]
	mov r1, #4
	bl MOD11_0223022C
	add r5, r0, #0
	ldr r0, [sp]
	mov r1, #2
	bl MOD11_0223022C
	add r7, r0, #0
	b _02254012
_02253F8C:
	ldr r0, [sp]
	mov r1, #2
	bl MOD11_0223022C
	add r5, r0, #0
	ldr r0, [sp]
	mov r1, #4
	bl MOD11_0223022C
	add r7, r0, #0
	b _02254012
_02253FA2:
	ldr r0, [sp, #0x14]
	mov r1, #2
	tst r0, r1
	beq _02253FBE
	ldr r0, [sp]
	bl MOD11_0223022C
	add r5, r0, #0
	ldr r0, [sp]
	mov r1, #4
	bl MOD11_0223022C
	add r7, r0, #0
	b _02254012
_02253FBE:
	ldr r0, [sp]
	mov r1, #0
	bl MOD11_0223022C
	add r5, r0, #0
	add r7, r5, #0
	b _02254012
_02253FCC:
	ldr r0, [sp, #0x14]
	mov r1, #8
	and r0, r1
	str r0, [sp, #8]
	beq _02253FEE
	ldr r1, [sp, #4]
	sub r2, r2, #1
	ldrb r1, [r1, r2]
	ldr r0, [sp]
	bl MOD11_022302BC
	add r5, r0, #0
	mov r1, #0x65
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	ldrb r7, [r0, r1]
	b _02254012
_02253FEE:
	ldr r0, [sp, #0x14]
	mov r1, #2
	tst r0, r1
	beq _0225400A
	ldr r0, [sp]
	bl MOD11_0223022C
	add r5, r0, #0
	ldr r0, [sp]
	mov r1, #4
	bl MOD11_0223022C
	add r7, r0, #0
	b _02254012
_0225400A:
	ldr r0, [sp, #4]
	sub r1, r2, #1
	ldrb r5, [r0, r1]
	add r7, r5, #0
_02254012:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0225407C
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02254040
	ldr r0, _022540F8 ; =0x000003D1
	add sp, #0x18
	strh r0, [r4, #2]
	mov r0, #0x31
	strb r0, [r4, #1]
	str r5, [r4, #4]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #8]
	add r0, r6, r7
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r7
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02254040:
	ldr r0, [sp, #0x14]
	mov r1, #2
	tst r0, r1
	beq _02254068
	ldr r0, _022540FC ; =0x000003D2
	add sp, #0x18
	strh r0, [r4, #2]
	mov r0, #9
	strb r0, [r4, #1]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #4]
	add r0, r6, r7
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r7
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02254068:
	ldr r0, _02254100 ; =0x000003D3
	add sp, #0x18
	strh r0, [r4, #2]
	strb r1, [r4, #1]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0225407C:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _022540A6
	ldr r0, _02254104 ; =0x000003E1
	add sp, #0x18
	strh r0, [r4, #2]
	mov r0, #0x39
	strb r0, [r4, #1]
	str r5, [r4, #4]
	str r5, [r4, #8]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #0xc]
	add r0, r6, r7
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r7
	str r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_022540A6:
	ldr r0, [sp, #0x14]
	mov r1, #2
	tst r0, r1
	beq _022540CE
	ldr r0, _022540FC ; =0x000003D2
	add sp, #0x18
	strh r0, [r4, #2]
	mov r0, #9
	strb r0, [r4, #1]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #4]
	add r0, r6, r7
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r7
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_022540CE:
	ldr r0, _02254100 ; =0x000003D3
	strh r0, [r4, #2]
	strb r1, [r4, #1]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #4]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022540E4: .word 0x00000195
_022540E8: .word 0x000003DF
_022540EC: .word 0x000003CF
_022540F0: .word 0x000003CE
_022540F4: .word 0x000003CD
_022540F8: .word 0x000003D1
_022540FC: .word 0x000003D2
_02254100: .word 0x000003D3
_02254104: .word 0x000003E1

	thumb_func_start MOD11_02254108
MOD11_02254108: ; 0x02254108
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r5, r2, #0
	bl MOD11_0222FF74
	add r6, r0, #0
	ldr r0, [sp]
	bl MOD11_0223145C
	add r7, r0, #0
	mov r0, #2
	tst r0, r6
	beq _02254136
	ldr r0, [sp]
	mov r1, #3
	bl MOD11_0223022C
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #5
	bl MOD11_0223022C
	b _02254140
_02254136:
	ldr r0, [sp]
	mov r1, #1
	bl MOD11_0223022C
	add r4, r0, #0
_02254140:
	cmp r7, #1
	beq _0225414E
	cmp r7, #2
	beq _0225416E
	cmp r7, #3
	beq _02254190
	pop {r3, r4, r5, r6, r7, pc}
_0225414E:
	mov r1, #8
	add r2, r6, #0
	tst r2, r1
	beq _02254164
	ldr r1, _022541B0 ; =0x00000312
	strh r1, [r5, #2]
	mov r1, #0x1a
	strb r1, [r5, #1]
	str r4, [r5, #4]
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02254164:
	ldr r0, _022541B4 ; =0x00000311
	strh r0, [r5, #2]
	strb r1, [r5, #1]
	str r4, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0225416E:
	mov r1, #8
	add r2, r6, #0
	tst r2, r1
	beq _02254186
	mov r1, #0xc5
	lsl r1, r1, #2
	strh r1, [r5, #2]
	mov r1, #0x1a
	strb r1, [r5, #1]
	str r4, [r5, #4]
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02254186:
	ldr r0, _022541B8 ; =0x00000313
	strh r0, [r5, #2]
	strb r1, [r5, #1]
	str r4, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02254190:
	mov r1, #8
	add r2, r6, #0
	tst r2, r1
	beq _022541A6
	ldr r1, _022541BC ; =0x00000316
	strh r1, [r5, #2]
	mov r1, #0x1a
	strb r1, [r5, #1]
	str r4, [r5, #4]
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_022541A6:
	ldr r0, _022541C0 ; =0x00000315
	strh r0, [r5, #2]
	strb r1, [r5, #1]
	str r4, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022541B0: .word 0x00000312
_022541B4: .word 0x00000311
_022541B8: .word 0x00000313
_022541BC: .word 0x00000316
_022541C0: .word 0x00000315

	thumb_func_start MOD11_022541C4
MOD11_022541C4: ; 0x022541C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r6, #0
	add r5, r0, #0
	str r2, [sp]
	add r7, r3, #0
	str r6, [sp, #4]
	add r4, r6, #0
	bl MOD11_0222FF84
	cmp r0, #0
	ble _0225420C
_022541DC:
	add r0, r4, #0
	bl MaskOfFlagNo
	ldr r1, [sp]
	ldrb r1, [r1, #1]
	tst r0, r1
	beq _02254200
	add r0, r5, #0
	add r1, r4, #0
	bl MOD11_02230270
	cmp r0, #0
	beq _022541FE
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	b _02254200
_022541FE:
	add r6, r6, #1
_02254200:
	add r0, r5, #0
	add r4, r4, #1
	bl MOD11_0222FF84
	cmp r4, r0
	blt _022541DC
_0225420C:
	cmp r6, #0
	beq _0225422A
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0225422A
	ldr r0, _022542AC ; =0x0000030D
	mov r1, #0xc3
	strh r0, [r7, #2]
	mov r0, #0
	strb r0, [r7, #1]
	add r0, r5, #0
	bl MOD11_02231468
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0225422A:
	cmp r6, #0
	beq _02254242
	ldr r0, _022542AC ; =0x0000030D
	mov r1, #0xc2
	strh r0, [r7, #2]
	mov r0, #0
	strb r0, [r7, #1]
	add r0, r5, #0
	bl MOD11_02231468
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02254242:
	add r0, r5, #0
	bl MOD11_0222FF74
	mov r1, #8
	tst r0, r1
	beq _0225426E
	mov r0, #0xc6
	lsl r0, r0, #2
	strh r0, [r7, #2]
	mov r0, #0x1a
	strb r0, [r7, #1]
	add r0, r5, #0
	mov r1, #3
	bl MOD11_0223022C
	str r0, [r7, #4]
	add r0, r5, #0
	mov r1, #5
	bl MOD11_0223022C
	str r0, [r7, #8]
	b _0225429E
_0225426E:
	add r0, r5, #0
	bl MOD11_0222FF74
	mov r1, #2
	tst r0, r1
	ldr r0, _022542B0 ; =0x00000317
	beq _0225428E
	strh r0, [r7, #2]
	mov r0, #8
	strb r0, [r7, #1]
	add r0, r5, #0
	mov r1, #3
	bl MOD11_0223022C
	str r0, [r7, #4]
	b _0225429E
_0225428E:
	strh r0, [r7, #2]
	mov r0, #8
	strb r0, [r7, #1]
	add r0, r5, #0
	mov r1, #1
	bl MOD11_0223022C
	str r0, [r7, #4]
_0225429E:
	add r0, r5, #0
	mov r1, #0xc1
	bl MOD11_02231468
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022542AC: .word 0x0000030D
_022542B0: .word 0x00000317

	thumb_func_start MOD11_022542B4
MOD11_022542B4: ; 0x022542B4
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #0xef
	add r4, r2, #0
	lsl r1, r1, #2
	strh r1, [r4, #2]
	mov r1, #8
	add r5, r0, #0
	strb r1, [r4, #1]
	bl MOD11_0222FF74
	mov r1, #4
	tst r0, r1
	beq _022542F4
	bl FUN_02031190
	bl FUN_020313CC
	cmp r0, #0
	beq _022542E8
	add r0, r5, #0
	mov r1, #4
	bl MOD11_0223022C
	str r0, [r4, #4]
	b _022542FC
_022542E8:
	add r0, r5, #0
	mov r1, #2
	bl MOD11_0223022C
	str r0, [r4, #4]
	b _022542FC
_022542F4:
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	str r0, [r4, #4]
_022542FC:
	add r0, r5, #0
	mov r1, #0xc2
	bl MOD11_02231468
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start MOD11_02254308
MOD11_02254308: ; 0x02254308
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	add r5, r2, #0
	add r4, r3, #0
	bl MOD11_02230078
	add r7, r0, #0
	ldr r0, [sp, #0x18]
	bl MOD11_02230080
	add r6, r0, #0
	ldr r0, [sp, #0x18]
	bl MOD11_022300CC
	str r0, [sp, #0x20]
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _022543EC ; =0x00004E2F
	add r3, r5, #0
	add r0, r4, r0
	str r0, [sp, #8]
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #0x1b
	add r3, #0xc3
	bl FUN_0200C00C
	mov r0, #0x1b
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x2f
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _022543F0 ; =0x00004E2A
	mov r1, #2
	add r0, r4, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	add r2, r7, #0
	add r3, r6, #0
	bl FUN_0200C0DC
	mov r0, #1
	str r0, [sp]
	ldr r0, _022543F4 ; =0x00004E27
	add r3, r5, #0
	add r0, r4, r0
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #0x1b
	add r3, #0xcb
	bl FUN_0200C124
	mov r0, #1
	str r0, [sp]
	ldr r0, _022543F4 ; =0x00004E27
	add r5, #0xd3
	add r0, r4, r0
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r6, #0
	mov r2, #0x1b
	add r3, r5, #0
	bl FUN_0200C13C
	ldr r5, _022543F8 ; =MOD11_0225E89C
	add r3, sp, #0x24
	mov r2, #6
_022543A0:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022543A0
	ldr r0, [r5]
	ldr r1, _022543EC ; =0x00004E2F
	str r0, [r3]
	add r0, r4, r1
	str r0, [sp, #0x38]
	sub r0, r1, #5
	add r0, r4, r0
	sub r1, #8
	str r0, [sp, #0x3c]
	add r0, r4, r1
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	add r0, r7, #0
	add r1, r6, #0
	add r2, sp, #0x24
	bl FUN_0200C154
	ldr r1, [sp, #0x1c]
	mov r2, #6
	add r3, r1, #0
	mul r3, r2
	ldr r1, _022543FC ; =MOD8_0222D550
	ldr r2, _02254400 ; =MOD8_0222D552
	ldrsh r1, [r1, r3]
	ldrsh r2, [r2, r3]
	add r4, r0, #0
	bl FUN_0200C714
	add r0, r4, #0
	bl FUN_0200C5A8
	add r0, r4, #0
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022543EC: .word 0x00004E2F
_022543F0: .word 0x00004E2A
_022543F4: .word 0x00004E27
_022543F8: .word MOD11_0225E89C
_022543FC: .word MOD8_0222D550
_02254400: .word MOD8_0222D552

	thumb_func_start MOD11_02254404
MOD11_02254404: ; 0x02254404
	push {r4, r5, r6, r7, lr}
	sub sp, #0xac
	str r0, [sp]
	ldr r0, [r3, #0x4c]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	cmp r0, #0
	bne _02254422
	mov r0, #8
	str r0, [sp, #0x84]
	add r0, r3, #0
	ldrh r0, [r0, #2]
	str r0, [sp, #0x18]
	b _0225442C
_02254422:
	mov r0, #0x3f
	str r0, [sp, #0x84]
	add r0, r3, #0
	ldr r0, [r0, #0x50]
	str r0, [sp, #0x18]
_0225442C:
	ldr r0, [sp]
	bl MOD11_0222FF68
	str r0, [sp, #0x20]
	ldr r0, [sp]
	bl MOD11_022300CC
	str r0, [sp, #0x24]
	ldr r0, [sp]
	bl MOD11_02230078
	add r5, sp, #0x1c
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	mov r4, #0
	str r0, [sp, #0x14]
	str r5, [sp, #0x10]
	add r6, r5, #0
	add r7, r0, #0
_02254452:
	ldr r0, [sp]
	add r1, r4, #0
	bl MOD11_022312D0
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x14]
	ldrh r1, [r0, #0x18]
	ldr r0, [sp, #0x10]
	strh r1, [r0, #0x34]
	ldr r0, [sp, #0xc]
	add r0, r0, r4
	add r0, #0x20
	ldrb r1, [r0]
	add r0, r6, #0
	add r0, #0x3c
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	add r0, r0, r4
	add r0, #0x24
	ldrb r1, [r0]
	add r0, r6, #0
	add r0, #0x40
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	add r0, r0, r4
	add r0, #0x28
	ldrb r1, [r0]
	add r0, r6, #0
	add r0, #0x44
	strb r1, [r0]
	ldr r0, [r7, #0x2c]
	add r4, r4, #1
	str r0, [r5, #0x48]
	ldr r0, [r7, #0x3c]
	add r6, r6, #1
	str r0, [r5, #0x58]
	ldr r0, [sp, #0x14]
	add r5, r5, #4
	add r0, r0, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r7, r7, #4
	add r0, r0, #2
	str r0, [sp, #0x10]
	cmp r4, #4
	blt _02254452
	ldr r0, [sp]
	add r1, sp, #0x38
	bl MOD11_02231504
	ldr r0, [sp]
	add r1, sp, #0x3c
	bl MOD11_02231534
	ldr r0, [sp]
	bl MOD11_0222FF74
	mov r2, #0x65
	str r0, [sp, #0x4c]
	ldr r1, [sp, #4]
	lsl r2, r2, #2
	ldrb r1, [r1, r2]
	ldr r0, [sp]
	bl MOD11_02230E88
	str r0, [sp, #0xa0]
	ldr r0, [sp]
	bl MOD11_02231228
	str r0, [sp, #0xa4]
	ldr r0, [sp]
	bl MOD11_02231230
	str r0, [sp, #0xa8]
	mov r0, #7
	str r0, [sp, #0x88]
	ldr r0, [sp]
	bl MOD11_022302A8
	add r0, r0, #3
	str r0, [sp, #0x8c]
	ldr r0, [sp]
	bl MOD11_02230C68
	add r4, r0, #0
	ldr r0, [sp]
	bl MOD11_022302A8
	lsl r1, r0, #1
	add r0, r0, r1
	add r0, #0x9e
	add r0, r4, r0
	str r0, [sp, #0x90]
	mov r0, #2
	str r0, [sp, #0x94]
	mov r0, #0
	ldr r2, [sp, #0x18]
	str r0, [sp, #0x98]
	mov r0, #8
	str r0, [sp, #0x9c]
	lsl r2, r2, #0x10
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	lsr r2, r2, #0x10
	add r3, sp, #0x1c
	bl MOD08_02212048
	add sp, #0xac
	pop {r4, r5, r6, r7, pc}

	thumb_func_start MOD11_0225452C
MOD11_0225452C: ; 0x0225452C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r2, #0
	add r7, r1, #0
	str r3, [r6]
	str r0, [sp]
	str r3, [r6, #4]
	mov r4, #0
	add r5, r6, #0
	str r7, [sp, #0xc]
	str r6, [sp, #8]
	str r7, [sp, #4]
_02254544:
	ldr r0, [sp]
	add r1, r4, #0
	bl MOD11_022312D0
	str r0, [r5, #8]
	ldr r0, [sp, #0xc]
	ldrh r1, [r0, #0x18]
	ldr r0, [sp, #8]
	strh r1, [r0, #0x28]
	add r0, r7, r4
	add r0, #0x20
	ldrb r1, [r0]
	add r0, r6, r4
	add r0, #0x30
	strb r1, [r0]
	add r0, r7, r4
	add r0, #0x24
	ldrb r1, [r0]
	add r0, r6, r4
	add r0, #0x34
	strb r1, [r0]
	add r0, r7, r4
	add r0, #0x28
	ldrb r1, [r0]
	add r0, r6, r4
	add r0, #0x38
	strb r1, [r0]
	ldr r0, [sp, #4]
	add r4, r4, #1
	ldr r0, [r0, #0x2c]
	str r0, [r5, #0x3c]
	ldr r0, [sp, #0xc]
	add r5, r5, #4
	add r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, r0, #2
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, r0, #4
	str r0, [sp, #4]
	cmp r4, #4
	blt _02254544
	add r1, r6, #0
	ldr r0, [sp]
	add r1, #0x4c
	bl MOD11_02231504
	add r6, #0x18
	ldr r0, [sp]
	add r1, r6, #0
	bl MOD11_02231534
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start MOD11_022545B4
MOD11_022545B4: ; 0x022545B4
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r2, #0
	bne _022545F2
	add r0, sp, #0
	ldrh r6, [r0, #0x10]
	mov r1, #9
	add r0, r6, #0
	bl GetWazaAttr
	mov r1, #0x40
	tst r0, r1
	bne _022545D4
	mov r0, #1
	b _022545D6
_022545D4:
	mov r0, #0
_022545D6:
	strb r0, [r4]
	add r0, r6, #0
	mov r1, #9
	bl GetWazaAttr
	mov r1, #0x80
	tst r0, r1
	beq _022545EC
	mov r0, #1
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_022545EC:
	mov r0, #0
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_022545F2:
	sub r3, #0x12
	cmp r3, #0x15
	bhi _02254642
	add r0, r3, r3
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02254604: ; jump table
	.short _02254630 - _02254604 - 2 ; case 0
	.short _02254630 - _02254604 - 2 ; case 1
	.short _02254630 - _02254604 - 2 ; case 2
	.short _02254630 - _02254604 - 2 ; case 3
	.short _02254630 - _02254604 - 2 ; case 4
	.short _02254642 - _02254604 - 2 ; case 5
	.short _02254642 - _02254604 - 2 ; case 6
	.short _02254642 - _02254604 - 2 ; case 7
	.short _02254642 - _02254604 - 2 ; case 8
	.short _02254642 - _02254604 - 2 ; case 9
	.short _02254642 - _02254604 - 2 ; case 10
	.short _02254642 - _02254604 - 2 ; case 11
	.short _02254642 - _02254604 - 2 ; case 12
	.short _02254630 - _02254604 - 2 ; case 13
	.short _02254630 - _02254604 - 2 ; case 14
	.short _02254642 - _02254604 - 2 ; case 15
	.short _02254630 - _02254604 - 2 ; case 16
	.short _02254630 - _02254604 - 2 ; case 17
	.short _0225463A - _02254604 - 2 ; case 18
	.short _02254630 - _02254604 - 2 ; case 19
	.short _0225463A - _02254604 - 2 ; case 20
	.short _02254630 - _02254604 - 2 ; case 21
_02254630:
	mov r0, #1
	strb r0, [r4]
	mov r0, #0
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_0225463A:
	mov r0, #1
	strb r0, [r4]
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_02254642:
	mov r0, #0
	strb r0, [r4]
	strb r0, [r5]
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start MOD11_0225464C
MOD11_0225464C: ; 0x0225464C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02254680
	add r0, r1, #0
	bl MOD11_0222FF74
	mov r1, #0x22
	lsl r1, r1, #4
	tst r0, r1
	bne _02254680
	mov r1, #0xb4
	add r0, r1, #0
	add r0, #0xe8
	strh r1, [r4, r0]
	ldr r0, _02254684 ; =MOD11_022546B4
	ldr r2, _02254688 ; =0x000003F2
	add r1, r4, #0
	bl FUN_0200CA44
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r4, r1]
_02254680:
	pop {r4, pc}
	nop
_02254684: .word MOD11_022546B4
_02254688: .word 0x000003F2

	thumb_func_start MOD11_0225468C
MOD11_0225468C: ; 0x0225468C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022546B2
	bl FUN_0200CAB4
	mov r0, #0x66
	mov r2, #0
	lsl r0, r0, #2
	str r2, [r4, r0]
	add r0, r0, #4
	strh r2, [r4, r0]
	ldr r0, [r4, #0x20]
	mov r1, #4
	bl FUN_02007558
_022546B2:
	pop {r4, pc}

	thumb_func_start MOD11_022546B4
MOD11_022546B4: ; 0x022546B4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x67
	lsl r1, r1, #2
	ldrh r0, [r4, r1]
	add r0, #0x14
	strh r0, [r4, r1]
	add r0, r1, #0
	ldrh r2, [r4, r1]
	sub r0, #0x34
	cmp r2, r0
	blo _022546D4
	add r0, r1, #0
	sub r0, #0x34
	sub r0, r2, r0
	strh r0, [r4, r1]
_022546D4:
	mov r0, #0x67
	lsl r0, r0, #2
	ldrh r0, [r4, r0]
	bl Sin
	mov r2, #6
	asr r1, r0, #0x1f
	lsl r2, r2, #0xa
	mov r3, #0
	bl _ll_mul
	add r2, r1, #0
	mov r1, #4
	add r5, r0, #0
	ldr r0, [r4, #0x20]
	mov r4, #0
	lsl r3, r1, #9
	add r3, r5, r3
	adc r2, r4
	lsl r2, r2, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	asr r2, r2, #0xc
	bl FUN_02007558
	pop {r3, r4, r5, pc}
	.align 2, 0

	thumb_func_start MOD11_02254710
MOD11_02254710: ; 0x02254710
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	add r6, r3, #0
	bl MOD11_022300DC
	add r4, r0, #0
	add r0, r7, #0
	bl MOD11_02230118
	add r5, r0, #0
	add r0, r7, #0
	bl MOD11_02230124
	add r7, r0, #0
	add r0, sp, #0x10
	ldrh r2, [r5]
	ldrb r3, [r0, #0x10]
	add r0, r2, #5
	add r1, r0, r3
	mov r0, #1
	lsl r0, r0, #0xc
	cmp r1, r0
	bls _0225474A
	strh r2, [r7]
	mov r0, #0
	strh r0, [r5]
_0225474A:
	ldr r1, [sp]
	add r0, sp, #8
	strb r1, [r0]
	ldr r1, [sp, #4]
	strb r1, [r0, #1]
	add r1, sp, #0x10
	ldrb r1, [r1, #0x10]
	strh r1, [r0, #2]
	add r1, sp, #8
	mov r0, #0
_0225475E:
	ldrb r7, [r1, r0]
	ldrh r2, [r5]
	add r0, r0, #1
	strb r7, [r4, r2]
	ldrh r2, [r5]
	add r2, r2, #1
	strh r2, [r5]
	cmp r0, #4
	blo _0225475E
	mov r0, #0
	cmp r3, #0
	ble _02254788
_02254776:
	ldrb r2, [r6, r0]
	ldrh r1, [r5]
	add r0, r0, #1
	strb r2, [r4, r1]
	ldrh r1, [r5]
	add r1, r1, #1
	strh r1, [r5]
	cmp r0, r3
	blt _02254776
_02254788:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}

	thumb_func_start MOD11_0225478C
MOD11_0225478C: ; 0x0225478C
	push {r3, r4, r5, r6, r7, lr}
	add r3, r1, #0
	ldrb r6, [r3, #3]
	ldrb r1, [r3]
	ldrb r7, [r3, #2]
	lsl r6, r6, #8
	add r5, r0, #0
	mov r2, #0
	orr r6, r7
	ldrb r4, [r3, #1]
	cmp r1, #0
	bne _022547D2
	ldr r0, [r5, #0x30]
	lsl r1, r4, #8
	add r4, r0, r1
	mov r0, #0x23
	lsl r0, r0, #8
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0225481C
	cmp r6, #0
	ble _022547CE
	mov r4, #0x23
	lsl r4, r4, #8
_022547BC:
	add r0, r3, r2
	ldr r7, [r5, #0x30]
	ldrb r0, [r0, #4]
	add r7, r1, r7
	add r7, r2, r7
	add r2, r2, #1
	strb r0, [r7, r4]
	cmp r2, r6
	blt _022547BC
_022547CE:
	mov r2, #1
	b _0225481C
_022547D2:
	cmp r1, #1
	bne _022547FE
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r1, [r0, #0x34]
	add r1, #0x94
	ldrb r1, [r1]
	cmp r1, #0
	bne _0225481C
	cmp r6, #0
	ble _022547FA
_022547E8:
	add r1, r3, r2
	ldrb r4, [r1, #4]
	ldr r1, [r0, #0x34]
	add r1, r1, r2
	add r1, #0x94
	add r2, r2, #1
	strb r4, [r1]
	cmp r2, r6
	blt _022547E8
_022547FA:
	mov r2, #1
	b _0225481C
_022547FE:
	cmp r1, #2
	bne _0225481C
	ldrb r7, [r3, #4]
	ldrb r6, [r3, #5]
	bl MOD11_02230DD4
	cmp r0, #0
	beq _0225481A
	ldr r0, [r5, #0x30]
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl MOD11_02243340
_0225481A:
	mov r2, #1
_0225481C:
	add r0, r2, #0
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD11_02254820
MOD11_02254820: ; 0x02254820
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl MOD11_022300DC
	add r4, r0, #0
	add r0, r6, #0
	bl MOD11_0223010C
	add r5, r0, #0
	add r0, r6, #0
	bl MOD11_02230118
	add r7, r0, #0
	add r0, r6, #0
	bl MOD11_02230124
	ldrh r1, [r5]
	ldrh r2, [r7]
	cmp r1, r2
	beq _02254876
	ldrh r2, [r0]
	cmp r1, r2
	bne _02254854
	mov r1, #0
	strh r1, [r5]
	strh r1, [r0]
_02254854:
	ldrh r1, [r5]
	add r0, r6, #0
	add r1, r4, r1
	bl MOD11_0225478C
	cmp r0, #1
	bne _02254876
	ldrh r0, [r5]
	add r1, r0, #2
	ldrb r2, [r4, r1]
	add r1, r0, #3
	ldrb r1, [r4, r1]
	lsl r1, r1, #8
	orr r1, r2
	add r1, r1, #4
	add r0, r0, r1
	strh r0, [r5]
_02254876:
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD11_02254878
MOD11_02254878: ; 0x02254878
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r1, [sp, #4]
	ldr r1, [r5, #0x2c]
	mov r0, #4
	add r7, r2, #0
	add r6, r3, #0
	tst r0, r1
	beq _022548C8
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _022548B2
	mov r4, #0
	bl FUN_02030F20
	cmp r0, #0
	ble _022548B2
_0225489C:
	ldrb r3, [r6]
	ldr r0, [r5, #0x30]
	add r1, r4, #0
	add r2, r7, #0
	bl MOD11_02243304
	add r4, r4, #1
	bl FUN_02030F20
	cmp r4, r0
	blt _0225489C
_022548B2:
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	ldr r1, [sp, #4]
	add r2, r7, #0
	str r0, [sp]
	add r0, r5, #0
	add r3, r6, #0
	bl FUN_0206C0C8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022548C8:
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _022548D8
	ldrb r3, [r6]
	ldr r0, [r5, #0x30]
	mov r1, #0
	bl MOD11_02243304
_022548D8:
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	ldr r1, [sp, #4]
	add r2, r7, #0
	str r0, [sp]
	add r0, r5, #0
	add r3, r6, #0
	bl MOD11_02254710
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start MOD11_022548F0
MOD11_022548F0: ; 0x022548F0
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #1
	str r1, [sp, #4]
	mov r3, #4
	str r3, [sp]
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r3, pc}

	thumb_func_start MOD11_02254908
MOD11_02254908: ; 0x02254908
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r7, r1, #0
	mov r3, #2
	add r2, sp, #0xc
	strb r3, [r2]
	mov r2, #0xc0
	add r4, r7, #0
	mul r4, r2
	add r2, sp, #0xc
	ldrb r2, [r2, #1]
	mov r3, #3
	add r6, r0, #0
	str r2, [sp, #4]
	bic r2, r3
	str r2, [sp, #4]
	ldr r2, [r6, #0x30]
	add r3, r2, r4
	ldr r2, _02254A04 ; =0x00002DBE
	str r2, [sp, #8]
	ldrb r2, [r3, r2]
	lsl r2, r2, #0x1c
	lsr r3, r2, #0x1c
	mov r2, #3
	and r3, r2
	ldr r2, [sp, #4]
	orr r3, r2
	add r2, sp, #0xc
	strb r3, [r2, #1]
	ldrb r3, [r2, #1]
	mov r2, #4
	bic r3, r2
	ldr r2, [r6, #0x30]
	add r5, r2, r4
	ldr r2, [sp, #8]
	sub r2, #0x58
	ldrb r2, [r5, r2]
	lsl r2, r2, #0x1a
	lsr r2, r2, #0x1f
	lsl r2, r2, #0x1f
	lsr r2, r2, #0x1d
	orr r3, r2
	add r2, sp, #0xc
	strb r3, [r2, #1]
	ldr r2, [r6, #0x30]
	add r3, r2, r4
	ldr r2, [sp, #8]
	sub r2, #0x7e
	ldrh r3, [r3, r2]
	add r2, sp, #0xc
	strh r3, [r2, #2]
	ldr r2, [r6, #0x30]
	add r3, r2, r4
	ldr r2, [sp, #8]
	sub r2, #0x16
	str r2, [sp, #8]
	ldr r2, [r3, r2]
	str r2, [sp, #0x10]
	bl MOD11_02230260
	add r2, r0, #0
	ldr r0, [r6, #0x30]
	add r1, r7, #0
	mov r3, #1
	bl MOD11_0224ACAC
	add r2, sp, #0xc
	str r0, [sp, #0x14]
	ldrb r0, [r2, #1]
	mov r1, #0xf8
	add r5, sp, #0xc
	bic r0, r1
	ldr r1, [r6, #0x30]
	add r3, r1, r4
	ldr r1, _02254A08 ; =0x00002D66
	mov r4, #0
	ldrb r1, [r3, r1]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1b
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x18
	orr r0, r1
	strb r0, [r2, #1]
_022549AE:
	ldr r0, [r6, #0x30]
	add r1, r7, #0
	add r2, r4, #6
	mov r3, #0
	bl MOD11_02243420
	strh r0, [r5, #0xc]
	add r2, r4, #0
	ldr r0, [r6, #0x30]
	add r1, r7, #0
	add r2, #0x1f
	mov r3, #0
	bl MOD11_02243420
	strh r0, [r5, #0x14]
	add r2, r4, #0
	ldr r0, [r6, #0x30]
	add r1, r7, #0
	add r2, #0x27
	mov r3, #0
	bl MOD11_02243420
	strh r0, [r5, #0x1c]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blt _022549AE
	ldr r0, [r6, #0x30]
	add r1, r7, #0
	mov r2, #0x2d
	add r3, sp, #0x30
	bl MOD11_02243420
	mov r0, #0x3c
	str r0, [sp]
	add r0, r6, #0
	mov r1, #1
	add r2, r7, #0
	add r3, sp, #0xc
	bl MOD11_02254878
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02254A04: .word 0x00002DBE
_02254A08: .word 0x00002D66

	thumb_func_start MOD11_02254A0C
MOD11_02254A0C: ; 0x02254A0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	add r7, r1, #0
	mov r3, #3
	add r2, sp, #8
	strb r3, [r2]
	mov r2, #0xc0
	add r4, r7, #0
	mul r4, r2
	add r2, sp, #8
	ldrb r5, [r2, #1]
	mov r2, #3
	add r6, r0, #0
	bic r5, r2
	ldr r2, [r6, #0x30]
	add r3, r2, r4
	ldr r2, _02254B34 ; =0x00002DBE
	str r2, [sp, #4]
	ldrb r2, [r3, r2]
	lsl r2, r2, #0x1c
	lsr r3, r2, #0x1c
	mov r2, #3
	and r2, r3
	add r3, r5, #0
	orr r3, r2
	add r2, sp, #8
	strb r3, [r2, #1]
	ldrb r3, [r2, #1]
	mov r2, #4
	bic r3, r2
	ldr r2, [r6, #0x30]
	add r5, r2, r4
	ldr r2, [sp, #4]
	sub r2, #0x58
	ldrb r2, [r5, r2]
	lsl r2, r2, #0x1a
	lsr r2, r2, #0x1f
	lsl r2, r2, #0x1f
	lsr r2, r2, #0x1d
	orr r3, r2
	add r2, sp, #8
	strb r3, [r2, #1]
	ldr r2, [r6, #0x30]
	add r3, r2, r4
	ldr r2, [sp, #4]
	sub r2, #0x7e
	ldrh r3, [r3, r2]
	add r2, sp, #8
	strh r3, [r2, #2]
	ldr r2, [r6, #0x30]
	add r3, r2, r4
	ldr r2, [sp, #4]
	sub r2, #0x16
	str r2, [sp, #4]
	ldr r2, [r3, r2]
	str r2, [sp, #0xc]
	bl MOD11_02230260
	add r2, r0, #0
	ldr r0, [r6, #0x30]
	add r1, r7, #0
	mov r3, #1
	bl MOD11_0224ACAC
	str r0, [sp, #0x10]
	ldr r0, [r6, #0x30]
	add r2, sp, #8
	add r1, r0, r7
	ldr r0, _02254B38 ; =0x0000219C
	ldrb r0, [r1, r0]
	mov r1, #0xf8
	str r0, [sp, #0x14]
	ldrb r0, [r2, #1]
	bic r0, r1
	ldr r1, [r6, #0x30]
	add r3, r1, r4
	ldr r1, _02254B3C ; =0x00002D66
	ldrb r3, [r3, r1]
	add r1, #0x59
	lsl r3, r3, #0x1b
	lsr r3, r3, #0x1b
	lsl r3, r3, #0x1b
	lsr r3, r3, #0x18
	orr r0, r3
	strb r0, [r2, #1]
	ldr r0, [r6, #0x30]
	add r0, r0, r4
	ldrb r0, [r0, r1]
	add r1, r7, #0
	str r0, [sp, #0x18]
	add r0, r6, #0
	bl MOD11_022302BC
	ldr r1, [r6, #0x30]
	ldr r2, [sp, #0x14]
	add r1, r1, r0
	ldr r0, _02254B38 ; =0x0000219C
	ldrb r0, [r1, r0]
	add r1, r7, #0
	str r0, [sp, #0x50]
	add r0, r6, #0
	bl MOD11_02230F6C
	mov r4, #0
	add r5, sp, #8
_02254ADE:
	ldr r0, [r6, #0x30]
	add r1, r7, #0
	add r2, r4, #6
	mov r3, #0
	bl MOD11_02243420
	strh r0, [r5, #0x18]
	add r2, r4, #0
	ldr r0, [r6, #0x30]
	add r1, r7, #0
	add r2, #0x1f
	mov r3, #0
	bl MOD11_02243420
	strh r0, [r5, #0x20]
	add r2, r4, #0
	ldr r0, [r6, #0x30]
	add r1, r7, #0
	add r2, #0x27
	mov r3, #0
	bl MOD11_02243420
	strh r0, [r5, #0x28]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blt _02254ADE
	ldr r0, [r6, #0x30]
	add r1, r7, #0
	mov r2, #0x2d
	add r3, sp, #0x38
	bl MOD11_02243420
	mov r0, #0x74
	str r0, [sp]
	add r0, r6, #0
	mov r1, #1
	add r2, r7, #0
	add r3, sp, #8
	bl MOD11_02254878
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02254B34: .word 0x00002DBE
_02254B38: .word 0x0000219C
_02254B3C: .word 0x00002D66

	thumb_func_start MOD11_02254B40
MOD11_02254B40: ; 0x02254B40
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	add r7, r1, #0
	add r4, r0, #0
	mov r1, #4
	add r6, sp, #0x10
	strb r1, [r6]
	mov r0, #0xc0
	add r5, r7, #0
	mul r5, r0
	ldr r0, [r4, #0x30]
	str r2, [sp, #4]
	add r2, r0, r5
	ldr r0, _02254D34 ; =0x00002DB0
	str r3, [sp, #8]
	ldr r3, [r2, r0]
	lsl r1, r1, #0x13
	tst r1, r3
	ldrb r1, [r6, #1]
	beq _02254B8A
	mov r3, #3
	bic r1, r3
	add r3, r0, #0
	add r3, #0x4a
	ldrh r2, [r2, r3]
	add r0, #0x34
	lsl r2, r2, #0x18
	lsr r3, r2, #0x18
	mov r2, #3
	and r2, r3
	orr r1, r2
	strb r1, [r6, #1]
	ldr r1, [r4, #0x30]
	add r1, r1, r5
	ldr r0, [r1, r0]
	str r0, [sp, #0x14]
	b _02254BAA
_02254B8A:
	mov r3, #3
	bic r1, r3
	add r3, r0, #0
	add r3, #0xe
	ldrb r2, [r2, r3]
	sub r0, #8
	lsl r2, r2, #0x1c
	lsr r3, r2, #0x1c
	mov r2, #3
	and r2, r3
	orr r1, r2
	strb r1, [r6, #1]
	ldr r1, [r4, #0x30]
	add r1, r1, r5
	ldr r0, [r1, r0]
	str r0, [sp, #0x14]
_02254BAA:
	mov r0, #0xc0
	add r6, r7, #0
	add r3, sp, #0x10
	mul r6, r0
	ldrb r0, [r3, #1]
	mov r1, #4
	bic r0, r1
	ldr r1, [r4, #0x30]
	add r2, r1, r6
	ldr r1, _02254D38 ; =0x00002D66
	ldrb r2, [r2, r1]
	sub r1, #0x26
	lsl r2, r2, #0x1a
	lsr r2, r2, #0x1f
	lsl r2, r2, #0x1f
	lsr r2, r2, #0x1d
	orr r0, r2
	strb r0, [r3, #1]
	ldr r0, [r4, #0x30]
	add r0, r0, r6
	ldrh r0, [r0, r1]
	add r1, r7, #0
	strh r0, [r3, #2]
	add r0, r4, #0
	bl MOD11_02230260
	add r2, r0, #0
	ldr r0, [r4, #0x30]
	add r1, r7, #0
	mov r3, #0
	bl MOD11_0224ACAC
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x30]
	mov r2, #0xf8
	add r1, r0, r7
	ldr r0, _02254D3C ; =0x0000219C
	ldrb r0, [r1, r0]
	str r0, [sp, #0x1c]
	add r0, sp, #0x10
	ldrb r1, [r0, #1]
	bic r1, r2
	ldr r2, [r4, #0x30]
	add r3, r2, r6
	ldr r2, _02254D38 ; =0x00002D66
	ldrb r3, [r3, r2]
	lsl r3, r3, #0x1b
	lsr r3, r3, #0x1b
	lsl r3, r3, #0x1b
	lsr r3, r3, #0x18
	orr r1, r3
	strb r1, [r0, #1]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02254C1C
	str r0, [sp, #0x20]
	b _02254C26
_02254C1C:
	ldr r0, [r4, #0x30]
	add r2, #0x59
	add r0, r0, r5
	ldrb r0, [r0, r2]
	str r0, [sp, #0x20]
_02254C26:
	ldr r0, [sp, #8]
	str r0, [sp, #0x24]
	ldr r0, [r4, #0x30]
	add r1, r0, r5
	ldr r0, _02254D34 ; =0x00002DB0
	ldr r1, [r1, r0]
	mov r0, #1
	lsl r0, r0, #0x18
	tst r0, r1
	beq _02254C3E
	mov r0, #1
	b _02254C40
_02254C3E:
	mov r0, #0
_02254C40:
	ldr r2, [sp, #0x1c]
	str r0, [sp, #0x5c]
	add r0, r4, #0
	add r1, r7, #0
	bl MOD11_02230F6C
	mov r6, #0
	add r5, sp, #0x10
_02254C50:
	ldr r0, [r4, #0x30]
	add r1, r7, #0
	add r2, r6, #6
	mov r3, #0
	bl MOD11_02243420
	strh r0, [r5, #0x18]
	add r2, r6, #0
	ldr r0, [r4, #0x30]
	add r1, r7, #0
	add r2, #0x1f
	mov r3, #0
	bl MOD11_02243420
	strh r0, [r5, #0x20]
	add r2, r6, #0
	ldr r0, [r4, #0x30]
	add r1, r7, #0
	add r2, #0x27
	mov r3, #0
	bl MOD11_02243420
	strh r0, [r5, #0x28]
	add r6, r6, #1
	add r5, r5, #2
	cmp r6, #4
	blt _02254C50
	ldr r0, [r4, #0x30]
	add r1, r7, #0
	mov r2, #0x2d
	add r3, sp, #0x40
	bl MOD11_02243420
	add r3, sp, #0x10
	mov r2, #0
	mov ip, r2
	str r3, [sp, #0xc]
	add r5, r3, #0
_02254C9C:
	ldr r0, [r4, #0x30]
	add r1, r0, r2
	mov r0, #0xb5
	lsl r0, r0, #6
	ldrh r1, [r1, r0]
	ldr r0, [sp, #0xc]
	add r0, #0x50
	strh r1, [r0]
	ldr r0, [r4, #0x30]
	add r1, r0, r2
	ldr r0, _02254D38 ; =0x00002D66
	ldrb r0, [r1, r0]
	lsl r0, r0, #0x1a
	lsr r1, r0, #0x1f
	add r0, r3, #0
	add r0, #0x5c
	strb r1, [r0]
	ldr r0, [r4, #0x30]
	add r1, r0, r2
	ldr r0, _02254D38 ; =0x00002D66
	ldrb r0, [r1, r0]
	lsl r0, r0, #0x1b
	lsr r1, r0, #0x1b
	add r0, r3, #0
	add r0, #0x60
	strb r1, [r0]
	ldr r0, [r4, #0x30]
	add r6, r0, r2
	ldr r0, _02254D34 ; =0x00002DB0
	ldr r1, [r6, r0]
	mov r0, #2
	lsl r0, r0, #0x14
	tst r0, r1
	beq _02254CF2
	ldr r0, _02254D40 ; =0x00002DFA
	ldrh r1, [r6, r0]
	add r0, r3, #0
	add r0, #0x58
	strb r1, [r0]
	ldr r0, [r4, #0x30]
	add r1, r0, r2
	ldr r0, _02254D44 ; =0x00002DE4
	b _02254D06
_02254CF2:
	ldr r0, _02254D48 ; =0x00002DBE
	ldrb r0, [r6, r0]
	lsl r0, r0, #0x1c
	lsr r1, r0, #0x1c
	add r0, r3, #0
	add r0, #0x58
	strb r1, [r0]
	ldr r0, [r4, #0x30]
	add r1, r0, r2
	ldr r0, _02254D4C ; =0x00002DA8
_02254D06:
	ldr r0, [r1, r0]
	add r2, #0xc0
	str r0, [r5, #0x64]
	ldr r0, [sp, #0xc]
	add r3, r3, #1
	add r0, r0, #2
	str r0, [sp, #0xc]
	mov r0, ip
	add r0, r0, #1
	add r5, r5, #4
	mov ip, r0
	cmp r0, #4
	blt _02254C9C
	mov r0, #0x74
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	add r3, sp, #0x10
	bl MOD11_02254878
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02254D34: .word 0x00002DB0
_02254D38: .word 0x00002D66
_02254D3C: .word 0x0000219C
_02254D40: .word 0x00002DFA
_02254D44: .word 0x00002DE4
_02254D48: .word 0x00002DBE
_02254D4C: .word 0x00002DA8

	thumb_func_start MOD11_02254D50
MOD11_02254D50: ; 0x02254D50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r4, r1, #0
	lsl r1, r2, #2
	str r0, [sp, #4]
	add r0, r0, r1
	ldr r1, [r0, #0x34]
	ldr r0, _02254E8C ; =0x00000195
	str r2, [sp, #8]
	ldrb r1, [r1, r0]
	mov r0, #1
	tst r0, r1
	beq _02254D6E
	mov r2, #2
	b _02254D70
_02254D6E:
	mov r2, #0
_02254D70:
	ldr r0, [sp, #8]
	mov r1, #0xc0
	add r5, r0, #0
	ldr r0, [sp, #4]
	mul r5, r1
	ldr r0, [r0, #0x30]
	ldr r3, _02254E90 ; =0x00002D66
	add r0, r0, r5
	ldrb r0, [r0, r3]
	mov r1, #5
	lsl r0, r0, #0x1b
	lsr r7, r0, #0x1b
	add r0, sp, #0xc
	strb r1, [r0]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x30]
	add r1, r0, r5
	add r0, r3, #0
	add r0, #0x4a
	ldr r6, [r1, r0]
	mov r0, #2
	lsl r0, r0, #0x14
	tst r0, r6
	beq _02254DC4
	add r0, r3, #0
	add r0, #0x7e
	ldr r0, [r1, r0]
	lsl r2, r2, #0x18
	str r0, [sp]
	add r0, r3, #0
	sub r0, #0x26
	add r3, #0x94
	ldrh r0, [r1, r0]
	ldrh r1, [r1, r3]
	lsl r3, r7, #0x18
	lsr r2, r2, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsr r3, r3, #0x18
	bl FUN_02068E88
	b _02254DE6
_02254DC4:
	add r0, r3, #0
	add r0, #0x42
	ldr r0, [r1, r0]
	lsl r2, r2, #0x18
	str r0, [sp]
	add r0, r3, #0
	sub r0, #0x26
	add r3, #0x58
	ldrh r0, [r1, r0]
	ldrb r1, [r1, r3]
	lsl r3, r7, #0x18
	lsr r2, r2, #0x18
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	lsr r3, r3, #0x18
	bl FUN_02068E88
_02254DE6:
	add r1, sp, #0xc
	strb r0, [r1, #1]
	ldr r0, [sp, #4]
	ldr r1, _02254E94 ; =0x00002DBF
	ldr r0, [r0, #0x30]
	add r0, r0, r5
	ldrb r2, [r0, r1]
	add r0, sp, #0xc
	sub r1, #0xf
	strh r2, [r0, #2]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x30]
	add r0, r0, r5
	ldr r1, [r0, r1]
	mov r0, #1
	lsl r0, r0, #0x18
	tst r0, r1
	beq _02254E0E
	mov r0, #1
	b _02254E10
_02254E0E:
	mov r0, #0
_02254E10:
	str r0, [sp, #0x10]
	mov r0, #0
	mov ip, r0
	add r7, sp, #0xc
	ldr r0, _02254E90 ; =0x00002D66
	add r3, r7, #0
	add r2, r4, r0
	add r0, #0x58
	add r5, r7, #0
	add r6, r4, r0
_02254E24:
	mov r0, #0xb5
	lsl r0, r0, #6
	ldrh r0, [r4, r0]
	strh r0, [r7, #8]
	ldrb r0, [r2]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	strb r0, [r3, #0x14]
	ldrb r0, [r2]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1b
	strb r0, [r3, #0x18]
	ldr r0, _02254E98 ; =0x00002DB0
	ldr r1, [r4, r0]
	mov r0, #2
	lsl r0, r0, #0x14
	tst r0, r1
	beq _02254E52
	ldr r0, _02254E9C ; =0x00002DFA
	ldrh r0, [r4, r0]
	strb r0, [r3, #0x10]
	ldr r0, _02254EA0 ; =0x00002DE4
	b _02254E5C
_02254E52:
	ldrb r0, [r6]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	strb r0, [r3, #0x10]
	ldr r0, _02254EA4 ; =0x00002DA8
_02254E5C:
	ldr r0, [r4, r0]
	add r4, #0xc0
	str r0, [r5, #0x1c]
	mov r0, ip
	add r0, r0, #1
	add r7, r7, #2
	add r2, #0xc0
	add r3, r3, #1
	add r5, r5, #4
	add r6, #0xc0
	mov ip, r0
	cmp r0, #4
	blt _02254E24
	mov r0, #0x2c
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [sp, #8]
	mov r1, #1
	add r3, sp, #0xc
	bl MOD11_02254878
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02254E8C: .word 0x00000195
_02254E90: .word 0x00002D66
_02254E94: .word 0x00002DBF
_02254E98: .word 0x00002DB0
_02254E9C: .word 0x00002DFA
_02254EA0: .word 0x00002DE4
_02254EA4: .word 0x00002DA8

	thumb_func_start MOD11_02254EA8
MOD11_02254EA8: ; 0x02254EA8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	add r4, r0, #0
	lsl r0, r7, #2
	add r0, r4, r0
	ldr r1, [r0, #0x34]
	ldr r0, _02254F58 ; =0x00000195
	str r2, [sp, #4]
	ldrb r1, [r1, r0]
	mov r0, #1
	tst r0, r1
	beq _02254EC6
	mov r2, #2
	b _02254EC8
_02254EC6:
	mov r2, #0
_02254EC8:
	mov r0, #0xc0
	add r6, r7, #0
	mul r6, r0
	ldr r0, [r4, #0x30]
	ldr r5, _02254F5C ; =0x00002D66
	add r0, r0, r6
	ldrb r0, [r0, r5]
	mov r1, #6
	lsl r0, r0, #0x1b
	lsr r3, r0, #0x1b
	add r0, sp, #8
	strb r1, [r0]
	ldr r0, [r4, #0x30]
	add r1, r0, r6
	add r0, r5, #0
	add r0, #0x4a
	ldr r6, [r1, r0]
	mov r0, #2
	lsl r0, r0, #0x14
	tst r0, r6
	beq _02254F16
	add r0, r5, #0
	add r0, #0x7e
	ldr r0, [r1, r0]
	lsl r2, r2, #0x18
	str r0, [sp]
	add r0, r5, #0
	sub r0, #0x26
	add r5, #0x94
	ldrh r0, [r1, r0]
	ldrh r1, [r1, r5]
	lsl r3, r3, #0x18
	lsr r2, r2, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsr r3, r3, #0x18
	bl FUN_02068E88
	b _02254F38
_02254F16:
	add r0, r5, #0
	add r0, #0x42
	ldr r0, [r1, r0]
	lsl r2, r2, #0x18
	str r0, [sp]
	add r0, r5, #0
	sub r0, #0x26
	add r5, #0x58
	ldrh r0, [r1, r0]
	ldrb r1, [r1, r5]
	lsl r3, r3, #0x18
	lsr r2, r2, #0x18
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	lsr r3, r3, #0x18
	bl FUN_02068E88
_02254F38:
	add r1, sp, #8
	strb r0, [r1, #1]
	ldr r0, [sp, #4]
	add r1, sp, #8
	strh r0, [r1, #2]
	mov r0, #4
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	add r2, r7, #0
	add r3, sp, #8
	bl MOD11_02254878
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02254F58: .word 0x00000195
_02254F5C: .word 0x00002D66

	thumb_func_start MOD11_02254F60
MOD11_02254F60: ; 0x02254F60
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #7
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r3, pc}
	.align 2, 0

	thumb_func_start MOD11_02254F7C
MOD11_02254F7C: ; 0x02254F7C
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #8
	add r3, sp, #4
	strb r1, [r3]
	mov r1, #0x34
	mul r1, r2
	add r1, r0, r1
	add r1, #0xad
	ldrb r1, [r1]
	strh r1, [r3, #2]
	add r1, r0, r2
	add r1, #0xa8
	ldrb r1, [r1]
	strb r1, [r3, #1]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r3, pc}

	thumb_func_start MOD11_02254FAC
MOD11_02254FAC: ; 0x02254FAC
	push {r4, r5, r6, lr}
	sub sp, #8
	mov r6, #9
	add r3, sp, #4
	strb r6, [r3]
	add r5, r0, #0
	strb r2, [r3, #1]
	add r4, r1, #0
	bl MOD11_022302BC
	ldr r1, [r5, #0x30]
	add r2, r4, #0
	add r1, r1, r0
	ldr r0, _02254FE0 ; =0x0000219C
	add r3, sp, #4
	ldrb r1, [r1, r0]
	add r0, sp, #4
	strh r1, [r0, #2]
	mov r0, #4
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	bl MOD11_02254878
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_02254FE0: .word 0x0000219C

	thumb_func_start MOD11_02254FE4
MOD11_02254FE4: ; 0x02254FE4
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #0xa
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r3, pc}
	.align 2, 0

	thumb_func_start MOD11_02255000
MOD11_02255000: ; 0x02255000
	push {r3, r4, lr}
	sub sp, #0xc
	add r3, r1, #0
	mov r1, #0xb
	add r4, sp, #4
	strb r1, [r4]
	mov r1, #0x34
	mul r1, r3
	add r1, r0, r1
	add r1, #0xad
	ldrb r1, [r1]
	strh r1, [r4, #2]
	add r1, r0, r3
	add r1, #0xa8
	ldrb r1, [r1]
	strb r1, [r4, #1]
	str r2, [sp, #8]
	mov r1, #8
	str r1, [sp]
	add r2, r3, #0
	mov r1, #1
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #0xc
	pop {r3, r4, pc}

	thumb_func_start MOD11_02255034
MOD11_02255034: ; 0x02255034
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r1, #0
	ldr r1, _02255158 ; =0x0000219C
	add r4, r2, #0
	add r7, r5, r1
	ldrb r2, [r7, r4]
	add r1, r4, #0
	str r0, [sp, #4]
	str r3, [sp, #8]
	bl MOD11_02230014
	add r6, r0, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	str r0, [sp, #0x10]
	add r0, r6, #0
	mov r1, #0xa0
	mov r2, #0
	bl GetMonData
	str r0, [sp, #0xc]
	mov r0, #0xc
	add r2, sp, #0x14
	strb r0, [r2]
	mov r0, #0xc0
	add r6, r4, #0
	mul r6, r0
	ldr r1, _0225515C ; =0x00002D74
	add r0, r5, r6
	ldrb r3, [r0, r1]
	strb r3, [r2, #1]
	add r3, r1, #0
	add r3, #0x18
	ldr r3, [r0, r3]
	add r1, #0x1c
	strh r3, [r2, #2]
	ldr r0, [r0, r1]
	add r1, r4, #0
	strh r0, [r2, #4]
	ldrb r0, [r7, r4]
	strb r0, [r2, #6]
	add r0, r5, #0
	bl MOD11_0224524C
	add r1, sp, #0x14
	ldrb r2, [r1, #7]
	mov r3, #0x1f
	lsl r0, r0, #0x18
	bic r2, r3
	lsr r3, r0, #0x18
	mov r0, #0x1f
	and r0, r3
	orr r0, r2
	strb r0, [r1, #7]
	mov r0, #0xb5
	lsl r0, r0, #6
	add r7, r5, r0
	ldrh r0, [r7, r6]
	cmp r0, #0x1d
	beq _022550B6
	cmp r0, #0x20
	bne _022550D0
_022550B6:
	ldr r0, _02255160 ; =0x00002D54
	add r1, r5, r6
	ldr r0, [r1, r0]
	lsr r0, r0, #0x1f
	bne _022550D0
	add r0, sp, #0x14
	ldrb r1, [r0, #7]
	mov r2, #0x60
	bic r1, r2
	mov r2, #0x40
	orr r1, r2
	strb r1, [r0, #7]
	b _022550EA
_022550D0:
	add r3, sp, #0x14
	ldrb r2, [r3, #7]
	mov r0, #0x60
	add r1, r5, r6
	bic r2, r0
	ldr r0, _02255164 ; =0x00002DBE
	ldrb r0, [r1, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x19
	orr r0, r2
	strb r0, [r3, #7]
_022550EA:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	bl GetMonExpBySpeciesAndLevel
	mov r1, #0xc0
	mul r1, r4
	add r2, r5, r1
	ldr r1, _02255168 ; =0x00002DA4
	ldr r1, [r2, r1]
	sub r0, r1, r0
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	add r1, r1, #1
	bl GetMonExpBySpeciesAndLevel
	add r5, r0, #0
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	bl GetMonExpBySpeciesAndLevel
	sub r0, r5, r0
	str r0, [sp, #0x20]
	ldrh r1, [r7, r6]
	ldr r0, [sp, #4]
	bl MOD11_02231668
	add r3, sp, #0x14
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1f
	ldrb r1, [r3, #7]
	mov r2, #0x80
	lsr r0, r0, #0x18
	bic r1, r2
	orr r0, r1
	strb r0, [r3, #7]
	ldr r0, [sp, #4]
	bl MOD11_02230E00
	str r0, [sp, #0x24]
	ldr r0, [sp, #8]
	add r1, sp, #0x14
	strb r0, [r1, #0x14]
	mov r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #0x14
	bl MOD11_02254878
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_02255158: .word 0x0000219C
_0225515C: .word 0x00002D74
_02255160: .word 0x00002D54
_02255164: .word 0x00002DBE
_02255168: .word 0x00002DA4

	thumb_func_start MOD11_0225516C
MOD11_0225516C: ; 0x0225516C
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #0xd
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r3, pc}
	.align 2, 0

	thumb_func_start MOD11_02255188
MOD11_02255188: ; 0x02255188
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, #0
	add r1, sp, #0x28
	mov r2, #0x2c
	add r6, r3, #0
	bl MIi_CpuClearFast
	ldr r0, [sp, #4]
	bl MOD11_0222FF78
	ldr r1, [sp, #0xc]
	bl MOD11_02243400
	mov r5, #0
	ldr r0, [sp, #4]
	add r4, r5, #0
	bl MOD11_0222FF84
	cmp r0, #0
	ble _022551D8
_022551B8:
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl MOD11_0224AD04
	cmp r0, #0
	bne _022551CC
	add r0, r4, #0
	bl MaskOfFlagNo
	orr r5, r0
_022551CC:
	ldr r0, [sp, #4]
	add r4, r4, #1
	bl MOD11_0222FF84
	cmp r4, r0
	blt _022551B8
_022551D8:
	mov r1, #0xe
	add r0, sp, #0x28
	strb r1, [r0]
	strb r6, [r0, #1]
	ldr r1, _022554F8 ; =0x00003108
	ldr r0, [sp, #8]
	ldrb r0, [r0, r1]
	add r1, r0, #0
	orr r1, r5
	add r0, sp, #0x48
	strb r1, [r0, #9]
	ldr r0, [sp, #4]
	bl MOD11_0222FF74
	mov r1, #2
	str r0, [sp, #0x20]
	tst r0, r1
	beq _0225520E
	ldr r0, [sp, #0x20]
	mov r1, #8
	tst r0, r1
	bne _0225520E
	ldr r0, [sp, #0xc]
	mov r1, #1
	add r4, r0, #0
	and r4, r1
	b _02255210
_0225520E:
	ldr r4, [sp, #0xc]
_02255210:
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl MOD11_0222FF88
	str r0, [sp, #0x24]
	mov r6, #0
	bl GetPartyCount
	cmp r0, #0
	ble _022552A6
	mov r0, #6
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #8]
	add r5, sp, #0x28
	add r7, r0, r1
	mov r1, #0xa9
	ldr r0, [sp, #0x20]
	lsl r1, r1, #2
	and r0, r1
	str r0, [sp, #0x1c]
_0225523A:
	ldr r1, _022554FC ; =0x0000312C
	ldr r0, [sp, #0x24]
	ldrb r1, [r7, r1]
	bl GetPartyMonByIndex
	mov r1, #0xad
	mov r2, #0
	add r4, r0, #0
	bl GetMonData
	cmp r0, #0
	beq _02255298
	ldr r1, _02255500 ; =0x000001EE
	cmp r0, r1
	beq _02255298
	add r0, r4, #0
	mov r1, #0xa2
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _02255280
	add r0, r4, #0
	mov r1, #0x9f
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _0225527A
	mov r0, #3
	strb r0, [r5, #8]
	b _02255284
_0225527A:
	mov r0, #1
	strb r0, [r5, #8]
	b _02255284
_02255280:
	mov r0, #2
	strb r0, [r5, #8]
_02255284:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _0225528E
	mov r0, #0
	b _02255294
_0225528E:
	add r0, r4, #0
	bl GetPercentProgressTowardsNextLevel
_02255294:
	strb r0, [r5, #2]
	add r5, r5, #1
_02255298:
	ldr r0, [sp, #0x24]
	add r7, r7, #1
	add r6, r6, #1
	bl GetPartyCount
	cmp r6, r0
	blt _0225523A
_022552A6:
	ldr r0, [sp, #0x20]
	mov r1, #0xc
	and r0, r1
	cmp r0, #0xc
	beq _022552C4
	ldr r0, [sp, #0x20]
	mov r1, #0x10
	tst r0, r1
	bne _022552C4
	ldr r0, [sp, #0x20]
	cmp r0, #0x4b
	beq _022552C4
	cmp r0, #0xcb
	beq _022552C4
	b _022553FC
_022552C4:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	bl MOD11_02230270
	cmp r0, #0
	beq _022552DA
	ldr r0, [sp, #4]
	mov r1, #2
	bl MOD11_0223022C
	b _022552E2
_022552DA:
	ldr r0, [sp, #4]
	mov r1, #3
	bl MOD11_0223022C
_022552E2:
	add r4, r0, #0
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl MOD11_0222FF88
	str r0, [sp, #0x10]
	mov r5, #0
	bl GetPartyCount
	cmp r0, #0
	ble _0225535E
	add r1, r4, #0
	mov r0, #6
	mul r1, r0
	ldr r0, [sp, #8]
	add r4, sp, #0x28
	add r6, r0, r1
_02255304:
	ldr r1, _022554FC ; =0x0000312C
	ldr r0, [sp, #0x10]
	ldrb r1, [r6, r1]
	bl GetPartyMonByIndex
	mov r1, #0xad
	mov r2, #0
	add r7, r0, #0
	bl GetMonData
	cmp r0, #0
	beq _02255350
	ldr r1, _02255500 ; =0x000001EE
	cmp r0, r1
	beq _02255350
	add r0, r7, #0
	mov r1, #0xa2
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _0225534A
	add r0, r7, #0
	mov r1, #0x9f
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _02255344
	mov r0, #3
	strb r0, [r4, #0xe]
	b _0225534E
_02255344:
	mov r0, #1
	strb r0, [r4, #0xe]
	b _0225534E
_0225534A:
	mov r0, #2
	strb r0, [r4, #0xe]
_0225534E:
	add r4, r4, #1
_02255350:
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	add r5, r5, #1
	bl GetPartyCount
	cmp r5, r0
	blt _02255304
_0225535E:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	bl MOD11_02230270
	cmp r0, #0
	beq _02255374
	ldr r0, [sp, #4]
	mov r1, #4
	bl MOD11_0223022C
	b _0225537C
_02255374:
	ldr r0, [sp, #4]
	mov r1, #5
	bl MOD11_0223022C
_0225537C:
	add r4, r0, #0
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl MOD11_0222FF88
	str r0, [sp, #0x14]
	mov r5, #0
	bl GetPartyCount
	cmp r0, #0
	ble _02255482
	add r1, r4, #0
	mov r0, #6
	mul r1, r0
	ldr r0, [sp, #8]
	add r4, sp, #0x28
	add r6, r0, r1
	add r4, #3
_022553A0:
	ldr r1, _022554FC ; =0x0000312C
	ldr r0, [sp, #0x14]
	ldrb r1, [r6, r1]
	bl GetPartyMonByIndex
	mov r1, #0xad
	mov r2, #0
	add r7, r0, #0
	bl GetMonData
	cmp r0, #0
	beq _022553EC
	ldr r1, _02255500 ; =0x000001EE
	cmp r0, r1
	beq _022553EC
	add r0, r7, #0
	mov r1, #0xa2
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _022553E6
	add r0, r7, #0
	mov r1, #0x9f
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _022553E0
	mov r0, #3
	strb r0, [r4, #0xe]
	b _022553EA
_022553E0:
	mov r0, #1
	strb r0, [r4, #0xe]
	b _022553EA
_022553E6:
	mov r0, #2
	strb r0, [r4, #0xe]
_022553EA:
	add r4, r4, #1
_022553EC:
	ldr r0, [sp, #0x14]
	add r6, r6, #1
	add r5, r5, #1
	bl GetPartyCount
	cmp r5, r0
	blt _022553A0
	b _02255482
_022553FC:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	mov r2, #2
	bl MOD11_02230308
	add r4, r0, #0
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl MOD11_0222FF88
	str r0, [sp, #0x18]
	mov r5, #0
	bl GetPartyCount
	cmp r0, #0
	ble _02255482
	add r1, r4, #0
	mov r0, #6
	mul r1, r0
	ldr r0, [sp, #8]
	add r4, sp, #0x28
	add r6, r0, r1
_02255428:
	ldr r1, _022554FC ; =0x0000312C
	ldr r0, [sp, #0x18]
	ldrb r1, [r6, r1]
	bl GetPartyMonByIndex
	mov r1, #0xad
	mov r2, #0
	add r7, r0, #0
	bl GetMonData
	cmp r0, #0
	beq _02255474
	ldr r1, _02255500 ; =0x000001EE
	cmp r0, r1
	beq _02255474
	add r0, r7, #0
	mov r1, #0xa2
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _0225546E
	add r0, r7, #0
	mov r1, #0x9f
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _02255468
	mov r0, #3
	strb r0, [r4, #0xe]
	b _02255472
_02255468:
	mov r0, #1
	strb r0, [r4, #0xe]
	b _02255472
_0225546E:
	mov r0, #2
	strb r0, [r4, #0xe]
_02255472:
	add r4, r4, #1
_02255474:
	ldr r0, [sp, #0x18]
	add r6, r6, #1
	add r5, r5, #1
	bl GetPartyCount
	cmp r5, r0
	blt _02255428
_02255482:
	mov r5, #0
	add r6, sp, #0x28
	add r4, r6, #0
	add r7, r5, #0
_0225548A:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add r2, r5, #6
	add r3, r7, #0
	bl MOD11_02243420
	strh r0, [r6, #0x14]
	add r2, r5, #0
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add r2, #0x1f
	mov r3, #0
	bl MOD11_02243420
	strb r0, [r4, #0x1c]
	add r2, r5, #0
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add r2, #0x27
	mov r3, #0
	bl MOD11_02243420
	add r1, r4, #0
	add r1, #0x20
	add r5, r5, #1
	strb r0, [r1]
	add r6, r6, #2
	add r4, r4, #1
	cmp r5, #4
	blt _0225548A
	ldr r0, [sp, #0xc]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, [sp, #8]
	add r3, sp, #0x28
	add r0, r0, r1
	ldr r1, _02255504 ; =0x00002D8C
	ldr r2, [r0, r1]
	strh r2, [r3, #0x24]
	add r2, r1, #4
	ldr r2, [r0, r2]
	strh r2, [r3, #0x26]
	mov r2, #0x24
	ldrsh r2, [r3, r2]
	cmp r2, #0
	beq _0225550E
	add r1, #0x20
	ldr r0, [r0, r1]
	cmp r0, #0
	add r0, sp, #0x48
	beq _02255508
	mov r1, #3
	strb r1, [r0, #8]
	b _02255514
	nop
_022554F8: .word 0x00003108
_022554FC: .word 0x0000312C
_02255500: .word 0x000001EE
_02255504: .word 0x00002D8C
_02255508:
	mov r1, #1
	strb r1, [r0, #8]
	b _02255514
_0225550E:
	mov r1, #2
	add r0, sp, #0x48
	strb r1, [r0, #8]
_02255514:
	mov r0, #0x2c
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [sp, #0xc]
	mov r1, #1
	add r3, sp, #0x28
	bl MOD11_02254878
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}

	thumb_func_start MOD11_02255528
MOD11_02255528: ; 0x02255528
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r2, r1, #0
	mov r1, #4
	str r1, [sp]
	mov r1, #0
	add r3, sp, #0x10
	bl MOD11_02254878
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0

	thumb_func_start MOD11_02255544
MOD11_02255544: ; 0x02255544
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r2, [sp, #0xc]
	str r0, [sp, #4]
	str r1, [sp, #8]
	bl MOD11_0222FF78
	ldr r1, [sp, #0xc]
	bl MOD11_02243400
	mov r0, #0xf
	add r2, sp, #0x14
	strb r0, [r2]
	add r7, sp, #0x14
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	add r5, r7, #0
	add r1, r1, r0
	ldr r0, _022555D4 ; =0x0000219C
	ldrb r0, [r1, r0]
	mov r1, #0xc0
	strb r0, [r2, #1]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	mul r1, r0
	ldr r0, [sp, #8]
	add r6, r0, r1
	add r4, r6, #0
_0225557E:
	ldr r0, _022555D8 ; =0x00002D4C
	ldr r1, _022555DC ; =0x00002D70
	ldrh r0, [r6, r0]
	strh r0, [r7, #4]
	ldr r0, _022555E0 ; =0x00002D6C
	ldrb r0, [r4, r0]
	strb r0, [r5, #0xc]
	ldr r0, _022555D8 ; =0x00002D4C
	ldrb r1, [r4, r1]
	ldrh r0, [r6, r0]
	bl WazaGetMaxPp
	strb r0, [r5, #0x10]
	ldr r0, [sp, #0x10]
	add r6, r6, #2
	add r0, r0, #1
	add r7, r7, #2
	add r4, r4, #1
	add r5, r5, #1
	str r0, [sp, #0x10]
	cmp r0, #4
	blt _0225557E
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	mov r3, #0
	bl MOD11_02245D38
	add r1, sp, #0x14
	strh r0, [r1, #2]
	mov r0, #0x14
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [sp, #0xc]
	mov r1, #1
	add r3, sp, #0x14
	bl MOD11_02254878
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022555D4: .word 0x0000219C
_022555D8: .word 0x00002D4C
_022555DC: .word 0x00002D70
_022555E0: .word 0x00002D6C

	thumb_func_start MOD11_022555E4
MOD11_022555E4: ; 0x022555E4
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r2, r1, #0
	mov r1, #4
	str r1, [sp]
	mov r1, #0
	add r3, sp, #0x10
	bl MOD11_02254878
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0

	thumb_func_start MOD11_02255600
MOD11_02255600: ; 0x02255600
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r1, #0
	add r1, r3, #0
	add r4, r2, #0
	str r3, [sp, #0xc]
	bl MOD11_02243400
	ldr r0, [sp, #4]
	bl MOD11_0222FF74
	mov r2, #0x10
	add r1, sp, #0x1c
	strb r2, [r1]
	strh r4, [r1, #2]
	mov r1, #2
	add r2, r0, #0
	and r2, r1
	beq _0225563A
	mov r1, #8
	tst r0, r1
	bne _0225563A
	cmp r2, #0
	beq _02255642
	ldr r0, [sp, #0xc]
	cmp r0, #2
	blt _02255642
_0225563A:
	mov r1, #1
	add r0, sp, #0x1c
	strb r1, [r0, #1]
	b _02255648
_02255642:
	mov r1, #0
	add r0, sp, #0x1c
	strb r1, [r0, #1]
_02255648:
	ldr r2, [sp, #8]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r1, _0225570C ; =0x00002D54
	add r0, r2, #0
	add r7, r0, r1
	add r1, #0x6a
	add r5, r0, r1
	mov r0, #3
	add r4, sp, #0x20
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	mov r0, #4
	add r3, sp, #0x1c
	add r4, #1
	mov ip, r0
_02255668:
	ldr r0, _02255710 ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _022556D6
	strh r0, [r3, #8]
	ldr r0, _02255714 ; =0x00002D90
	ldr r0, [r2, r0]
	strh r0, [r3, #0xa]
	ldrb r1, [r4]
	mov r0, #4
	orr r0, r1
	strb r0, [r4]
	mov r0, #0xb5
	lsl r0, r0, #6
	ldrh r0, [r2, r0]
	cmp r0, #0x1d
	beq _0225568E
	cmp r0, #0x20
	bne _022556A2
_0225568E:
	ldr r0, [r7]
	lsr r0, r0, #0x1f
	bne _022556A2
	ldrb r0, [r4]
	ldr r1, [sp, #0x10]
	bic r0, r1
	mov r1, #2
	orr r0, r1
	strb r0, [r4]
	b _022556B6
_022556A2:
	ldrb r6, [r4]
	ldr r0, [sp, #0x14]
	bic r6, r0
	ldrb r0, [r5]
	lsl r0, r0, #0x1c
	lsr r1, r0, #0x1c
	mov r0, #3
	and r0, r1
	orr r0, r6
	strb r0, [r4]
_022556B6:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x18]
	add r1, r1, r0
	ldr r0, _02255718 ; =0x0000219C
	ldrb r0, [r1, r0]
	strb r0, [r3, #4]
	ldr r0, _0225571C ; =0x00002DAC
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _022556D0
	mov r0, #3
	strb r0, [r3, #6]
	b _022556E2
_022556D0:
	mov r0, #1
	strb r0, [r3, #6]
	b _022556E2
_022556D6:
	ldrb r1, [r4]
	mov r0, ip
	bic r1, r0
	strb r1, [r4]
	mov r0, #2
	strb r0, [r3, #6]
_022556E2:
	ldr r0, [sp, #0x18]
	add r2, #0xc0
	add r0, r0, #1
	add r3, #8
	add r4, #8
	add r7, #0xc0
	add r5, #0xc0
	str r0, [sp, #0x18]
	cmp r0, #4
	blt _02255668
	mov r0, #0x24
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [sp, #0xc]
	mov r1, #1
	add r3, sp, #0x1c
	bl MOD11_02254878
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225570C: .word 0x00002D54
_02255710: .word 0x00002D8C
_02255714: .word 0x00002D90
_02255718: .word 0x0000219C
_0225571C: .word 0x00002DAC

	thumb_func_start MOD11_02255720
MOD11_02255720: ; 0x02255720
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r2, r1, #0
	mov r1, #4
	str r1, [sp]
	mov r1, #0
	add r3, sp, #0x10
	bl MOD11_02254878
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0

	thumb_func_start MOD11_0225573C
MOD11_0225573C: ; 0x0225573C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r1, #0
	add r1, r2, #0
	str r2, [sp, #0xc]
	bl MOD11_02243400
	add r6, sp, #0x10
	mov r1, #0x11
	add r0, sp, #0x10
	strb r1, [r0]
	mov r0, #0
	ldr r4, [sp, #8]
	mov ip, r0
	ldr r1, _022558B0 ; =0x00002DCC
	add r0, r4, #0
	add r7, r0, r1
	ldr r0, _022558B4 ; =0x0000312C
	add r5, r6, #0
_02255766:
	ldr r2, [sp, #8]
	mov r1, ip
	add r2, r2, r1
	ldr r1, _022558B8 ; =0x0000219C
	mov r3, #0
	ldrb r1, [r2, r1]
	strb r1, [r6, #4]
_02255774:
	add r1, r4, r3
	ldrb r2, [r1, r0]
	add r1, r5, r3
	add r3, r3, #1
	strb r2, [r1, #8]
	cmp r3, #6
	blt _02255774
	ldr r1, [r7]
	add r2, r6, #0
	lsl r1, r1, #0xa
	lsr r1, r1, #0x1d
	add r2, #0x20
	strb r1, [r2]
	mov r1, ip
	add r1, r1, #1
	add r6, r6, #1
	add r4, r4, #6
	add r5, r5, #6
	add r7, #0xc0
	mov ip, r1
	cmp r1, #4
	blt _02255766
	ldr r0, [sp, #4]
	bl MOD11_0222FF74
	cmp r0, #0x4a
	bne _02255852
	mov r0, #1
	bl MaskOfFlagNo
	ldr r2, _022558BC ; =0x00003108
	ldr r1, [sp, #8]
	ldrb r1, [r1, r2]
	tst r0, r1
	bne _022557D8
	mov r0, #3
	bl MaskOfFlagNo
	ldr r2, _022558BC ; =0x00003108
	ldr r1, [sp, #8]
	ldrb r1, [r1, r2]
	tst r0, r1
	bne _022557D8
	mov r1, #1
	add r0, sp, #0x10
	strb r1, [r0, #1]
	mov r1, #0
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	b _0225589C
_022557D8:
	mov r0, #1
	bl MaskOfFlagNo
	ldr r2, _022558BC ; =0x00003108
	ldr r1, [sp, #8]
	add r3, sp, #0x10
	ldrb r1, [r1, r2]
	tst r0, r1
	bne _0225581E
	mov r0, #0
	mov r2, #0xba
	ldr r1, [sp, #8]
	strb r0, [r3, #1]
	lsl r2, r2, #6
	ldr r4, [r1, r2]
	ldr r1, _022558C0 ; =0x200400C0
	tst r1, r4
	beq _02255804
	mov r1, #1
	strb r1, [r3, #2]
	strb r0, [r3, #3]
	b _0225589C
_02255804:
	ldr r1, [sp, #8]
	sub r2, #0x10
	ldr r2, [r1, r2]
	mov r1, #1
	lsl r1, r1, #0x18
	tst r1, r2
	strb r0, [r3, #2]
	beq _0225581A
	mov r0, #1
	strb r0, [r3, #3]
	b _0225589C
_0225581A:
	strb r0, [r3, #3]
	b _0225589C
_0225581E:
	mov r0, #0
	mov r2, #3
	ldr r1, [sp, #8]
	strb r0, [r3, #1]
	lsl r2, r2, #0xc
	ldr r4, [r1, r2]
	ldr r1, _022558C0 ; =0x200400C0
	tst r1, r4
	beq _02255838
	mov r1, #1
	strb r1, [r3, #2]
	strb r0, [r3, #3]
	b _0225589C
_02255838:
	ldr r1, [sp, #8]
	sub r2, #0x10
	ldr r2, [r1, r2]
	mov r1, #1
	lsl r1, r1, #0x18
	tst r1, r2
	strb r0, [r3, #2]
	beq _0225584E
	mov r0, #1
	strb r0, [r3, #3]
	b _0225589C
_0225584E:
	strb r0, [r3, #3]
	b _0225589C
_02255852:
	ldr r0, [sp, #4]
	bl MOD11_0222FF74
	cmp r0, #0
	bne _02255892
	mov r2, #0xba
	mov r0, #0
	add r3, sp, #0x10
	ldr r1, [sp, #8]
	strb r0, [r3, #1]
	lsl r2, r2, #6
	ldr r4, [r1, r2]
	ldr r1, _022558C0 ; =0x200400C0
	tst r1, r4
	beq _02255878
	mov r1, #1
	strb r1, [r3, #2]
	strb r0, [r3, #3]
	b _0225589C
_02255878:
	ldr r1, [sp, #8]
	sub r2, #0x10
	ldr r2, [r1, r2]
	mov r1, #1
	lsl r1, r1, #0x18
	tst r1, r2
	strb r0, [r3, #2]
	beq _0225588E
	mov r0, #1
	strb r0, [r3, #3]
	b _0225589C
_0225588E:
	strb r0, [r3, #3]
	b _0225589C
_02255892:
	mov r1, #0
	add r0, sp, #0x10
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
_0225589C:
	mov r0, #0x24
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [sp, #0xc]
	mov r1, #1
	add r3, sp, #0x10
	bl MOD11_02254878
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022558B0: .word 0x00002DCC
_022558B4: .word 0x0000312C
_022558B8: .word 0x0000219C
_022558BC: .word 0x00003108
_022558C0: .word 0x200400C0

	thumb_func_start MOD11_022558C4
MOD11_022558C4: ; 0x022558C4
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r2, r1, #0
	mov r1, #4
	str r1, [sp]
	mov r1, #0
	add r3, sp, #0x10
	bl MOD11_02254878
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0

	thumb_func_start MOD11_022558E0
MOD11_022558E0: ; 0x022558E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r1, #0
	add r1, r2, #0
	str r2, [sp, #0xc]
	add r4, r3, #0
	bl MOD11_02243400
	mov r0, #0x12
	add r1, sp, #0x10
	strb r0, [r1]
	ldr r0, [sp, #0xc]
	add r7, sp, #0x10
	strb r0, [r1, #1]
	ldr r0, [sp, #0x50]
	strb r4, [r1, #2]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x54]
	ldr r5, [sp, #8]
	strb r0, [r1, #3]
	ldr r1, _02255958 ; =0x00003108
	ldr r0, [sp, #8]
	mov r3, #0
	ldrb r1, [r0, r1]
	add r0, sp, #0x30
	add r6, r7, #0
	strb r1, [r0, #4]
	ldr r0, _0225595C ; =0x0000312C
_0225591C:
	ldr r1, [sp, #8]
	mov r4, #0
	add r2, r1, r3
	ldr r1, _02255960 ; =0x0000219C
	ldrb r1, [r2, r1]
	strb r1, [r7, #4]
_02255928:
	add r1, r5, r4
	ldrb r2, [r1, r0]
	add r1, r6, r4
	add r4, r4, #1
	strb r2, [r1, #8]
	cmp r4, #6
	blt _02255928
	add r3, r3, #1
	add r7, r7, #1
	add r5, r5, #6
	add r6, r6, #6
	cmp r3, #4
	blt _0225591C
	mov r0, #0x28
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [sp, #0xc]
	mov r1, #1
	add r3, sp, #0x10
	bl MOD11_02254878
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02255958: .word 0x00003108
_0225595C: .word 0x0000312C
_02255960: .word 0x0000219C

	thumb_func_start MOD11_02255964
MOD11_02255964: ; 0x02255964
	push {r0, r1, r2, r3}
	push {r3, lr}
	add r2, r1, #0
	mov r1, #4
	str r1, [sp]
	mov r1, #0
	add r3, sp, #0x10
	bl MOD11_02254878
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0

	thumb_func_start MOD11_02255980
MOD11_02255980: ; 0x02255980
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r2, #0
	add r6, r0, #0
	add r0, r1, #0
	add r1, r5, #0
	add r4, r3, #0
	bl MOD11_02243400
	mov r1, #0x13
	add r0, sp, #4
	strb r1, [r0]
	ldr r1, [sp, #0x20]
	strh r4, [r0, #2]
	strb r1, [r0, #1]
	ldr r0, [sp, #0x24]
	mov r1, #1
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	add r2, r5, #0
	str r0, [sp, #0xc]
	mov r0, #0xc
	str r0, [sp]
	add r0, r6, #0
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start MOD11_022559BC
MOD11_022559BC: ; 0x022559BC
	push {r4, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #0x14
	add r3, sp, #4
	strb r1, [r3]
	ldr r1, [r2, #0x64]
	add r4, r2, r1
	ldr r1, _022559EC ; =0x0000219C
	ldrb r1, [r4, r1]
	strb r1, [r3, #1]
	ldr r1, _022559F0 ; =0x00003044
	ldr r1, [r2, r1]
	strh r1, [r3, #2]
	mov r1, #4
	str r1, [sp]
	ldr r2, [r2, #0x64]
	mov r1, #1
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r4, pc}
	nop
_022559EC: .word 0x0000219C
_022559F0: .word 0x00003044

	thumb_func_start MOD11_022559F4
MOD11_022559F4: ; 0x022559F4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	add r3, r2, #0
	mov r1, #0x15
	strb r1, [r3]
	mov r1, #0x24
	str r1, [sp]
	ldr r2, [r4, #0x64]
	mov r1, #1
	bl MOD11_02254878
	add sp, #4
	pop {r3, r4, pc}

	thumb_func_start MOD11_02255A10
MOD11_02255A10: ; 0x02255A10
	push {r4, r5, r6, lr}
	sub sp, #0x68
	mov r3, #0
	add r4, r1, #0
	str r3, [sp]
	ldr r6, [r4, #0x64]
	add r5, r0, #0
	str r6, [sp, #4]
	ldr r6, [r4, #0x6c]
	str r6, [sp, #8]
	str r2, [sp, #0xc]
	add r2, sp, #0x10
	bl MOD11_02256854
	mov r0, #0x58
	str r0, [sp]
	ldr r2, [r4, #0x64]
	add r0, r5, #0
	mov r1, #1
	add r3, sp, #0x10
	bl MOD11_02254878
	add sp, #0x68
	pop {r4, r5, r6, pc}

	thumb_func_start MOD11_02255A40
MOD11_02255A40: ; 0x02255A40
	push {r4, r5, r6, lr}
	sub sp, #0x68
	add r4, r3, #0
	mov r3, #0
	str r3, [sp]
	ldr r6, [sp, #0x78]
	str r4, [sp, #4]
	str r6, [sp, #8]
	str r2, [sp, #0xc]
	add r2, sp, #0x10
	add r5, r0, #0
	bl MOD11_02256854
	mov r0, #0x58
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #0x10
	bl MOD11_02254878
	add sp, #0x68
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start MOD11_02255A70
MOD11_02255A70: ; 0x02255A70
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #0x17
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r3, pc}
	.align 2, 0

	thumb_func_start MOD11_02255A8C
MOD11_02255A8C: ; 0x02255A8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r1, #0
	str r2, [sp, #8]
	add r1, r2, #0
	add r3, r5, r2
	ldr r2, _02255B50 ; =0x0000219C
	str r0, [sp, #4]
	ldrb r2, [r3, r2]
	bl MOD11_02230014
	add r4, r0, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0xa0
	mov r2, #0
	bl GetMonData
	add r6, r0, #0
	mov r0, #0x18
	add r2, sp, #0xc
	strb r0, [r2]
	ldr r0, [sp, #8]
	mov r1, #0xc0
	add r4, r0, #0
	mul r4, r1
	ldr r1, _02255B54 ; =0x00002D74
	add r0, r5, r4
	ldrb r3, [r0, r1]
	strb r3, [r2, #1]
	add r3, r1, #0
	add r3, #0x18
	ldr r3, [r0, r3]
	strh r3, [r2, #2]
	add r3, r1, #0
	add r3, #0x1c
	ldr r3, [r0, r3]
	sub r1, #0x34
	strh r3, [r2, #4]
	ldr r2, _02255B58 ; =0x0000215C
	ldr r2, [r5, r2]
	str r2, [sp, #0x14]
	ldrh r0, [r0, r1]
	cmp r0, #0x1d
	beq _02255AF2
	cmp r0, #0x20
	bne _02255B04
_02255AF2:
	ldr r0, _02255B5C ; =0x00002D54
	add r1, r5, r4
	ldr r0, [r1, r0]
	lsr r0, r0, #0x1f
	bne _02255B04
	mov r1, #2
	add r0, sp, #0xc
	strb r1, [r0, #7]
	b _02255B12
_02255B04:
	ldr r0, _02255B60 ; =0x00002DBE
	add r1, r5, r4
	ldrb r0, [r1, r0]
	lsl r0, r0, #0x1c
	lsr r1, r0, #0x1c
	add r0, sp, #0xc
	strb r1, [r0, #7]
_02255B12:
	add r0, r7, #0
	add r1, r6, #0
	bl GetMonExpBySpeciesAndLevel
	ldr r1, _02255B64 ; =0x00002DA4
	add r2, r5, r4
	ldr r1, [r2, r1]
	sub r0, r1, r0
	str r0, [sp, #0x18]
	add r0, r7, #0
	add r1, r6, #1
	bl GetMonExpBySpeciesAndLevel
	add r4, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl GetMonExpBySpeciesAndLevel
	sub r0, r4, r0
	str r0, [sp, #0x1c]
	mov r0, #0x14
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [sp, #8]
	mov r1, #1
	add r3, sp, #0xc
	bl MOD11_02254878
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02255B50: .word 0x0000219C
_02255B54: .word 0x00002D74
_02255B58: .word 0x0000215C
_02255B5C: .word 0x00002D54
_02255B60: .word 0x00002DBE
_02255B64: .word 0x00002DA4

	thumb_func_start MOD11_02255B68
MOD11_02255B68: ; 0x02255B68
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r2, #0
	add r5, r1, #0
	str r3, [sp, #8]
	ldr r2, _02255BE4 ; =0x0000219C
	add r3, r5, r4
	ldrb r2, [r3, r2]
	add r1, r4, #0
	str r0, [sp, #4]
	bl MOD11_02230014
	add r6, r0, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #0xa0
	mov r2, #0
	bl GetMonData
	add r6, r0, #0
	mov r1, #0x19
	add r0, sp, #0xc
	strb r1, [r0]
	ldr r0, [sp, #8]
	add r1, r6, #0
	str r0, [sp, #0x10]
	add r0, r7, #0
	bl GetMonExpBySpeciesAndLevel
	mov r1, #0xc0
	mul r1, r4
	add r2, r5, r1
	ldr r1, _02255BE8 ; =0x00002DA4
	ldr r1, [r2, r1]
	sub r0, r1, r0
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r1, r6, #1
	bl GetMonExpBySpeciesAndLevel
	add r5, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl GetMonExpBySpeciesAndLevel
	sub r0, r5, r0
	str r0, [sp, #0x18]
	mov r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #0xc
	bl MOD11_02254878
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02255BE4: .word 0x0000219C
_02255BE8: .word 0x00002DA4

	thumb_func_start MOD11_02255BEC
MOD11_02255BEC: ; 0x02255BEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp, #4]
	add r0, r1, #0
	mov ip, r2
	mov r5, #0xb5
	mov r2, #0x1a
	add r1, sp, #0xc
	strb r2, [r1]
	mov r3, #0xc0
	mov r2, ip
	mul r3, r2
	add r2, r0, r3
	lsl r5, r5, #6
	ldrh r4, [r2, r5]
	strh r4, [r1, #2]
	add r4, r5, #0
	add r4, #0x26
	ldrb r2, [r2, r4]
	add r5, #0x70
	lsl r2, r2, #0x1b
	lsr r2, r2, #0x1b
	strb r2, [r1, #8]
	add r2, r0, r5
	mov r1, #1
	ldr r4, [r2, r3]
	lsl r1, r1, #0x18
	tst r1, r4
	beq _02255C2A
	mov r4, #1
	b _02255C2C
_02255C2A:
	mov r4, #0
_02255C2C:
	add r1, sp, #0xc
	strb r4, [r1, #9]
	mov r1, #2
	ldr r4, [r2, r3]
	lsl r1, r1, #0x14
	tst r1, r4
	beq _02255C3E
	mov r4, #1
	b _02255C40
_02255C3E:
	mov r4, #0
_02255C40:
	add r1, sp, #0xc
	strb r4, [r1, #0xa]
	ldr r4, [r2, r3]
	mov r2, #2
	lsl r2, r2, #0x14
	tst r2, r4
	beq _02255C5E
	ldr r2, _02255CE8 ; =0x00002DFA
	add r4, r0, r3
	ldrh r3, [r4, r2]
	sub r2, #0x16
	strb r3, [r1, #1]
	ldr r1, [r4, r2]
	str r1, [sp, #0x10]
	b _02255C70
_02255C5E:
	ldr r2, _02255CEC ; =0x00002DBE
	add r4, r0, r3
	ldrb r3, [r4, r2]
	sub r2, #0x16
	lsl r3, r3, #0x1c
	lsr r3, r3, #0x1c
	strb r3, [r1, #1]
	ldr r1, [r4, r2]
	str r1, [sp, #0x10]
_02255C70:
	mov r1, #0
	str r1, [sp, #8]
	ldr r1, _02255CF0 ; =0x00002D66
	add r7, sp, #0xc
	add r3, r0, r1
	add r1, #0x58
	add r4, r7, #0
	add r5, r7, #0
	add r6, r0, r1
_02255C82:
	mov r1, #0xb5
	lsl r1, r1, #6
	ldrh r1, [r0, r1]
	strh r1, [r7, #0xc]
	ldrb r1, [r3]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1f
	strb r1, [r4, #0x18]
	ldrb r1, [r3]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1b
	strb r1, [r4, #0x1c]
	ldr r1, _02255CF4 ; =0x00002DB0
	ldr r2, [r0, r1]
	mov r1, #2
	lsl r1, r1, #0x14
	tst r1, r2
	beq _02255CB0
	ldr r1, _02255CE8 ; =0x00002DFA
	ldrh r1, [r0, r1]
	strb r1, [r4, #0x14]
	ldr r1, _02255CF8 ; =0x00002DE4
	b _02255CBA
_02255CB0:
	ldrb r1, [r6]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	strb r1, [r4, #0x14]
	ldr r1, _02255CFC ; =0x00002DA8
_02255CBA:
	ldr r1, [r0, r1]
	add r0, #0xc0
	str r1, [r5, #0x20]
	ldr r1, [sp, #8]
	add r7, r7, #2
	add r1, r1, #1
	add r3, #0xc0
	add r4, r4, #1
	add r5, r5, #4
	add r6, #0xc0
	str r1, [sp, #8]
	cmp r1, #4
	blt _02255C82
	mov r0, #0x30
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #1
	mov r2, ip
	add r3, sp, #0xc
	bl MOD11_02254878
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02255CE8: .word 0x00002DFA
_02255CEC: .word 0x00002DBE
_02255CF0: .word 0x00002D66
_02255CF4: .word 0x00002DB0
_02255CF8: .word 0x00002DE4
_02255CFC: .word 0x00002DA8

	thumb_func_start MOD11_02255D00
MOD11_02255D00: ; 0x02255D00
	push {r4, lr}
	sub sp, #8
	mov r4, #0x1b
	add r1, sp, #4
	strb r4, [r1]
	strh r2, [r1, #2]
	mov r1, #4
	str r1, [sp]
	add r2, r3, #0
	mov r1, #1
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r4, pc}
	.align 2, 0

	thumb_func_start MOD11_02255D20
MOD11_02255D20: ; 0x02255D20
	push {r3, lr}
	sub sp, #8
	mov r1, #0x1c
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	mov r2, #0
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r3, pc}
	.align 2, 0

	thumb_func_start MOD11_02255D3C
MOD11_02255D3C: ; 0x02255D3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	mov ip, r1
	mov r3, #0x1d
	add r1, sp, #8
	strb r3, [r1]
	strb r2, [r1, #1]
	ldr r3, [r0, #0x30]
	mov r2, #0xc0
	mov r1, ip
	mul r2, r1
	ldr r1, _02255DF4 ; =0x00002DB0
	add r2, r3, r2
	ldr r2, [r2, r1]
	mov r1, #1
	lsl r1, r1, #0x18
	tst r1, r2
	beq _02255D64
	mov r2, #1
	b _02255D66
_02255D64:
	mov r2, #0
_02255D66:
	add r7, sp, #8
	add r1, sp, #8
	mov r3, #0
	strb r2, [r1, #2]
	str r3, [sp, #4]
	add r4, r7, #0
	add r5, r7, #0
_02255D74:
	ldr r1, [r0, #0x30]
	add r2, r1, r3
	mov r1, #0xb5
	lsl r1, r1, #6
	ldrh r1, [r2, r1]
	strh r1, [r7, #4]
	ldr r1, [r0, #0x30]
	add r2, r1, r3
	ldr r1, _02255DF8 ; =0x00002D66
	ldrb r1, [r2, r1]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1f
	strb r1, [r4, #0x10]
	ldr r1, [r0, #0x30]
	add r2, r1, r3
	ldr r1, _02255DF8 ; =0x00002D66
	ldrb r1, [r2, r1]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1b
	strb r1, [r4, #0x14]
	ldr r1, [r0, #0x30]
	add r6, r1, r3
	ldr r1, _02255DF4 ; =0x00002DB0
	ldr r2, [r6, r1]
	mov r1, #2
	lsl r1, r1, #0x14
	tst r1, r2
	beq _02255DBA
	ldr r1, _02255DFC ; =0x00002DFA
	ldrh r1, [r6, r1]
	strb r1, [r4, #0xc]
	ldr r1, [r0, #0x30]
	add r2, r1, r3
	ldr r1, _02255E00 ; =0x00002DE4
	b _02255DCA
_02255DBA:
	ldr r1, _02255E04 ; =0x00002DBE
	ldrb r1, [r6, r1]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	strb r1, [r4, #0xc]
	ldr r1, [r0, #0x30]
	add r2, r1, r3
	ldr r1, _02255E08 ; =0x00002DA8
_02255DCA:
	ldr r1, [r2, r1]
	add r3, #0xc0
	str r1, [r5, #0x18]
	ldr r1, [sp, #4]
	add r7, r7, #2
	add r1, r1, #1
	add r4, r4, #1
	add r5, r5, #4
	str r1, [sp, #4]
	cmp r1, #4
	blt _02255D74
	mov r1, #0x28
	str r1, [sp]
	mov r1, #1
	mov r2, ip
	add r3, sp, #8
	bl MOD11_02254878
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02255DF4: .word 0x00002DB0
_02255DF8: .word 0x00002D66
_02255DFC: .word 0x00002DFA
_02255E00: .word 0x00002DE4
_02255E04: .word 0x00002DBE
_02255E08: .word 0x00002DA8

	thumb_func_start MOD11_02255E0C
MOD11_02255E0C: ; 0x02255E0C
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	mov r3, #0x1e
	add r1, sp, #4
	strb r3, [r1]
	strb r2, [r1, #1]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r4, pc}

	thumb_func_start MOD11_02255E2C
MOD11_02255E2C: ; 0x02255E2C
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	mov r3, #0x1f
	add r1, sp, #4
	strb r3, [r1]
	strb r2, [r1, #1]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r4, pc}

	thumb_func_start MOD11_02255E4C
MOD11_02255E4C: ; 0x02255E4C
	push {r3, r4, r5, lr}
	sub sp, #0x68
	add r4, r2, #0
	str r3, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	add r2, sp, #0x10
	mov r3, #1
	add r5, r0, #0
	bl MOD11_02256854
	mov r0, #0x58
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #0x10
	bl MOD11_02254878
	add sp, #0x68
	pop {r3, r4, r5, pc}
	.align 2, 0

	thumb_func_start MOD11_02255E7C
MOD11_02255E7C: ; 0x02255E7C
	push {r3, r4, r5, lr}
	sub sp, #0x68
	add r4, r2, #0
	ldr r2, [sp, #0x78]
	add r5, r0, #0
	str r2, [sp]
	str r4, [sp, #4]
	str r3, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	add r2, sp, #0x10
	mov r3, #1
	bl MOD11_02256854
	mov r0, #0x58
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #0x10
	bl MOD11_02254878
	add sp, #0x68
	pop {r3, r4, r5, pc}

	thumb_func_start MOD11_02255EAC
MOD11_02255EAC: ; 0x02255EAC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r2, #0
	mov r2, #0x20
	add r0, sp, #4
	strb r2, [r0]
	strb r3, [r0, #1]
	ldr r0, _02255EE8 ; =0x00003122
	ldrsh r2, [r1, r0]
	ldr r0, _02255EEC ; =0x00002E4C
	ldr r0, [r1, r0]
	sub r1, r2, r0
	mov r0, #0x64
	mul r0, r1
	add r1, r2, #0
	bl _s32_div_f
	add r1, sp, #4
	strh r0, [r1, #2]
	mov r0, #4
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_02255EE8: .word 0x00003122
_02255EEC: .word 0x00002E4C

	thumb_func_start MOD11_02255EF0
MOD11_02255EF0: ; 0x02255EF0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	mov r1, #0x21
	add r0, sp, #4
	strb r1, [r0]
	ldr r2, _02255F38 ; =0x00002E4C
	strb r3, [r0, #1]
	ldr r1, [r6, r2]
	cmp r1, #0
	bne _02255F12
	mov r1, #0xfa
	lsl r1, r1, #2
	strh r1, [r0, #2]
	b _02255F24
_02255F12:
	mov r0, #0xfa
	lsl r0, r0, #2
	mul r0, r1
	add r1, r2, #4
	ldr r1, [r6, r1]
	bl _u32_div_f
	add r1, sp, #4
	strh r0, [r1, #2]
_02255F24:
	mov r0, #4
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_02255F38: .word 0x00002E4C

	thumb_func_start MOD11_02255F3C
MOD11_02255F3C: ; 0x02255F3C
	push {r3, lr}
	sub sp, #8
	mov r1, #0x22
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r3, pc}

	thumb_func_start MOD11_02255F54
MOD11_02255F54: ; 0x02255F54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r1, #0
	str r2, [sp, #4]
	mov r2, #0x23
	add r1, sp, #8
	add r6, r0, #0
	strb r2, [r1]
	mov r4, #0
	bl MOD11_0222FF84
	cmp r0, #0
	ble _02255F86
	add r5, sp, #8
_02255F70:
	ldr r0, _02255F9C ; =0x0000219C
	add r1, r7, r4
	ldrb r0, [r1, r0]
	add r4, r4, #1
	strb r0, [r5, #4]
	add r0, r6, #0
	add r5, r5, #1
	bl MOD11_0222FF84
	cmp r4, r0
	blt _02255F70
_02255F86:
	mov r0, #8
	str r0, [sp]
	ldr r2, [sp, #4]
	add r0, r6, #0
	mov r1, #1
	add r3, sp, #8
	bl MOD11_02254878
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02255F9C: .word 0x0000219C

	thumb_func_start MOD11_02255FA0
MOD11_02255FA0: ; 0x02255FA0
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #0x24
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r3, pc}
	.align 2, 0

	thumb_func_start MOD11_02255FBC
MOD11_02255FBC: ; 0x02255FBC
	push {r0, r1, r2, r3}
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r4, r1, #0
	add r5, r0, #0
	bl MOD11_0222FF78
	add r1, r4, #0
	bl MOD11_02243400
	mov r1, #0x25
	add r0, sp, #4
	strb r1, [r0]
	add r6, sp, #0x48
	add r3, sp, #8
	mov r2, #4
_02255FDC:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02255FDC
	ldr r0, [r6]
	mov r1, #1
	str r0, [r3]
	mov r0, #0x28
	str r0, [sp]
	add r0, r5, #0
	add r2, r4, #0
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #0x2c
	pop {r3, r4, r5, r6}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0

	thumb_func_start MOD11_02256004
MOD11_02256004: ; 0x02256004
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #0
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r3, pc}
	.align 2, 0

	thumb_func_start MOD11_02256020
MOD11_02256020: ; 0x02256020
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	ldr r1, _0225613C ; =0x0000219C
	add r4, r2, #0
	add r7, r5, r1
	ldrb r2, [r7, r4]
	add r1, r4, #0
	str r0, [sp, #4]
	bl MOD11_02230014
	add r6, r0, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0xa0
	mov r2, #0
	bl GetMonData
	str r0, [sp, #8]
	mov r0, #0x26
	add r2, sp, #0x10
	strb r0, [r2]
	mov r0, #0xc0
	add r6, r4, #0
	mul r6, r0
	ldr r1, _02256140 ; =0x00002D74
	add r0, r5, r6
	ldrb r3, [r0, r1]
	strb r3, [r2, #1]
	add r3, r1, #0
	add r3, #0x18
	ldr r3, [r0, r3]
	add r1, #0x1c
	strh r3, [r2, #2]
	ldr r0, [r0, r1]
	add r1, r4, #0
	strh r0, [r2, #4]
	ldrb r0, [r7, r4]
	strb r0, [r2, #6]
	add r0, r5, #0
	bl MOD11_0224524C
	add r1, sp, #0x10
	ldrb r2, [r1, #7]
	mov r3, #0x1f
	lsl r0, r0, #0x18
	bic r2, r3
	lsr r3, r0, #0x18
	mov r0, #0x1f
	and r0, r3
	orr r0, r2
	strb r0, [r1, #7]
	mov r0, #0xb5
	lsl r0, r0, #6
	add r7, r5, r0
	ldrh r0, [r7, r6]
	cmp r0, #0x1d
	beq _022560A0
	cmp r0, #0x20
	bne _022560BA
_022560A0:
	ldr r0, _02256144 ; =0x00002D54
	add r1, r5, r6
	ldr r0, [r1, r0]
	lsr r0, r0, #0x1f
	bne _022560BA
	add r0, sp, #0x10
	ldrb r1, [r0, #7]
	mov r2, #0x60
	bic r1, r2
	mov r2, #0x40
	orr r1, r2
	strb r1, [r0, #7]
	b _022560D4
_022560BA:
	add r3, sp, #0x10
	ldrb r2, [r3, #7]
	mov r0, #0x60
	add r1, r5, r6
	bic r2, r0
	ldr r0, _02256148 ; =0x00002DBE
	ldrb r0, [r1, r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x19
	orr r0, r2
	strb r0, [r3, #7]
_022560D4:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl GetMonExpBySpeciesAndLevel
	mov r1, #0xc0
	mul r1, r4
	add r2, r5, r1
	ldr r1, _0225614C ; =0x00002DA4
	ldr r1, [r2, r1]
	sub r0, r1, r0
	ldr r1, [sp, #8]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	add r1, r1, #1
	bl GetMonExpBySpeciesAndLevel
	add r5, r0, #0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl GetMonExpBySpeciesAndLevel
	sub r0, r5, r0
	str r0, [sp, #0x1c]
	ldrh r1, [r7, r6]
	ldr r0, [sp, #4]
	bl MOD11_02231668
	add r3, sp, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1f
	ldrb r1, [r3, #7]
	mov r2, #0x80
	lsr r0, r0, #0x18
	bic r1, r2
	orr r0, r1
	strb r0, [r3, #7]
	ldr r0, [sp, #4]
	bl MOD11_02230E00
	str r0, [sp, #0x20]
	mov r0, #0x14
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #0x10
	bl MOD11_02254878
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0225613C: .word 0x0000219C
_02256140: .word 0x00002D74
_02256144: .word 0x00002D54
_02256148: .word 0x00002DBE
_0225614C: .word 0x00002DA4

	thumb_func_start MOD11_02256150
MOD11_02256150: ; 0x02256150
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r6, r1, #0
	str r2, [sp, #8]
	mov r1, #0x27
	add r2, sp, #0x10
	strb r1, [r2]
	ldrb r1, [r2, #1]
	mov r3, #0xf
	str r0, [sp, #4]
	bic r1, r3
	ldr r3, [sp, #8]
	add r4, r6, r3
	ldr r3, _02256230 ; =0x0000219C
	ldrb r4, [r4, r3]
	mov r3, #0xf
	and r3, r4
	orr r1, r3
	strb r1, [r2, #1]
	ldr r1, [sp, #8]
	mov r3, #0xc0
	mul r3, r1
	ldrb r4, [r2, #1]
	mov r1, #0xf0
	str r3, [sp, #0xc]
	bic r4, r1
	add r1, r3, #0
	add r3, r6, r1
	ldr r1, _02256234 ; =0x00002DCC
	ldr r5, [r3, r1]
	lsl r5, r5, #0x1a
	lsr r5, r5, #0x1c
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	lsl r5, r5, #0x1c
	lsr r5, r5, #0x18
	orr r4, r5
	strb r4, [r2, #1]
	add r4, r1, #0
	sub r4, #0x40
	ldr r4, [r3, r4]
	sub r1, #0x14
	strh r4, [r2, #2]
	ldrh r1, [r3, r1]
	strh r1, [r2, #0xc]
	ldr r1, [sp, #8]
	bl MOD11_02230270
	lsl r0, r0, #3
	add r1, r6, r0
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, [sp, #8]
	mov r2, #0xc0
	mul r2, r1
	lsl r0, r0, #3
	lsr r0, r0, #0x1a
	add r1, r6, r2
	mov ip, r2
	add r2, sp, #0x10
	str r0, [sp, #0x18]
	ldr r7, _02256238 ; =0x00002D6C
	mov r0, #0
	add r3, r1, #0
	add r4, r2, #0
_022561D4:
	ldr r5, _0225623C ; =0x00002D4C
	add r0, r0, #1
	ldrh r5, [r1, r5]
	add r1, r1, #2
	strh r5, [r2, #0xe]
	ldrb r5, [r3, r7]
	add r2, r2, #2
	add r3, r3, #1
	strb r5, [r4, #0x16]
	add r4, r4, #1
	cmp r0, #4
	blt _022561D4
	add r1, sp, #0x10
	mov r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, #0
	beq _0225620C
	mov r0, ip
	add r3, r6, r0
	ldr r0, _02256240 ; =0x00002DAC
	ldr r1, _02256244 ; =0xFFFFF0FF
	ldr r2, [r3, r0]
	add r0, r0, #4
	and r1, r2
	str r1, [sp, #0x14]
	ldr r0, [r3, r0]
	str r0, [sp, #0x2c]
	b _0225621A
_0225620C:
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	add r1, r6, r0
	ldr r0, _02256248 ; =0x00002DB0
	ldr r0, [r1, r0]
	str r0, [sp, #0x2c]
_0225621A:
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [sp, #8]
	mov r1, #1
	add r3, sp, #0x10
	bl MOD11_02254878
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256230: .word 0x0000219C
_02256234: .word 0x00002DCC
_02256238: .word 0x00002D6C
_0225623C: .word 0x00002D4C
_02256240: .word 0x00002DAC
_02256244: .word 0xFFFFF0FF
_02256248: .word 0x00002DB0

	thumb_func_start MOD11_0225624C
MOD11_0225624C: ; 0x0225624C
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #0x28
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r3, pc}
	.align 2, 0

	thumb_func_start MOD11_02256268
MOD11_02256268: ; 0x02256268
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #0x29
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r3, pc}
	.align 2, 0

	thumb_func_start MOD11_02256284
MOD11_02256284: ; 0x02256284
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r5, #0x2a
	add r4, sp, #4
	strb r5, [r4]
	strh r3, [r4, #2]
	mov r3, #0xc0
	mul r3, r2
	add r3, r1, r3
	ldr r1, _022562AC ; =0x00002D67
	ldrb r1, [r3, r1]
	add r3, sp, #4
	strb r1, [r4, #1]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	bl MOD11_02254878
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_022562AC: .word 0x00002D67

	thumb_func_start MOD11_022562B0
MOD11_022562B0: ; 0x022562B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r7, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl MOD11_0222FF78
	add r1, r5, #0
	bl MOD11_02243400
	mov r1, #0x2b
	add r0, sp, #4
	strb r1, [r0]
	strh r4, [r0, #2]
	strb r6, [r0, #1]
	mov r0, #4
	str r0, [sp]
	add r0, r7, #0
	mov r1, #1
	add r2, r5, #0
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD11_022562E4
MOD11_022562E4: ; 0x022562E4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	mov r5, #0x2c
	add r1, sp, #4
	strb r5, [r1]
	strb r2, [r1, #1]
	strb r3, [r1, #2]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0

	thumb_func_start MOD11_02256308
MOD11_02256308: ; 0x02256308
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r1, #0
	mov r1, #0x2d
	add r3, sp, #4
	strb r1, [r3]
	mov r1, #0xc0
	add r6, r7, #0
	mul r6, r1
	ldr r1, [r0, #0x30]
	add r2, r1, r6
	mov r1, #0xb5
	lsl r1, r1, #6
	ldrh r2, [r2, r1]
	strh r2, [r3, #2]
	ldr r2, [r0, #0x30]
	add r4, r2, r6
	add r2, r1, #0
	add r2, #0x26
	ldrb r2, [r4, r2]
	lsl r2, r2, #0x1a
	lsr r2, r2, #0x1f
	strb r2, [r3, #5]
	ldr r2, [r0, #0x30]
	add r5, r2, r6
	add r2, r1, #0
	add r2, #0x70
	ldr r4, [r5, r2]
	mov r2, #2
	lsl r2, r2, #0x14
	tst r2, r4
	beq _0225635C
	add r2, r1, #0
	add r2, #0xba
	ldrh r2, [r5, r2]
	add r1, #0xa4
	strb r2, [r3, #4]
	ldr r2, [r0, #0x30]
	add r2, r2, r6
	ldr r1, [r2, r1]
	str r1, [sp, #0xc]
	b _02256372
_0225635C:
	add r2, r1, #0
	add r2, #0x7e
	ldrb r2, [r5, r2]
	add r1, #0x68
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x1c
	strb r2, [r3, #4]
	ldr r2, [r0, #0x30]
	add r2, r2, r6
	ldr r1, [r2, r1]
	str r1, [sp, #0xc]
_02256372:
	ldr r1, [r0, #0x30]
	add r3, sp, #4
	add r2, r1, r6
	ldr r1, _02256394 ; =0x00002D66
	ldrb r1, [r2, r1]
	lsl r1, r1, #0x1b
	lsr r2, r1, #0x1b
	add r1, sp, #4
	strb r2, [r1, #1]
	mov r1, #0xc
	str r1, [sp]
	mov r1, #1
	add r2, r7, #0
	bl MOD11_02254878
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02256394: .word 0x00002D66

	thumb_func_start MOD11_02256398
MOD11_02256398: ; 0x02256398
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #0x2e
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r3, pc}
	.align 2, 0

	thumb_func_start MOD11_022563B4
MOD11_022563B4: ; 0x022563B4
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #0x2f
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r3, pc}
	.align 2, 0

	thumb_func_start MOD11_022563D0
MOD11_022563D0: ; 0x022563D0
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	str r4, [sp]
	ldr r1, [r5, #0x30]
	add r2, sp, #4
	mov r3, #0x30
	bl MOD11_022569DC
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #0xc
	pop {r4, r5, pc}

	thumb_func_start MOD11_022563F8
MOD11_022563F8: ; 0x022563F8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	str r4, [sp]
	ldr r1, [r5, #0x30]
	add r2, sp, #4
	mov r3, #0x31
	bl MOD11_022569DC
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #0xc
	pop {r4, r5, pc}

	thumb_func_start MOD11_02256420
MOD11_02256420: ; 0x02256420
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	str r4, [sp]
	ldr r1, [r5, #0x30]
	add r2, sp, #4
	mov r3, #0x32
	bl MOD11_022569DC
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #0xc
	pop {r4, r5, pc}

	thumb_func_start MOD11_02256448
MOD11_02256448: ; 0x02256448
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	str r4, [sp]
	ldr r1, [r5, #0x30]
	add r2, sp, #4
	mov r3, #0x33
	bl MOD11_022569DC
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #0xc
	pop {r4, r5, pc}

	thumb_func_start MOD11_02256470
MOD11_02256470: ; 0x02256470
	push {r3, lr}
	sub sp, #8
	mov r1, #0x34
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	mov r2, #0
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r3, pc}
	.align 2, 0

	thumb_func_start MOD11_0225648C
MOD11_0225648C: ; 0x0225648C
	push {r3, lr}
	sub sp, #8
	mov r1, #0x35
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	mov r2, #0
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r3, pc}
	.align 2, 0

	thumb_func_start MOD11_022564A8
MOD11_022564A8: ; 0x022564A8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	mov r5, #0x36
	add r1, sp, #4
	strb r5, [r1]
	strb r2, [r1, #1]
	strh r3, [r1, #2]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0

	thumb_func_start MOD11_022564CC
MOD11_022564CC: ; 0x022564CC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	mov r1, #0x37
	add r5, r0, #0
	str r1, [sp, #4]
	bl MOD11_0222FF74
	mov r1, #4
	tst r0, r1
	beq _022564F0
	str r1, [sp]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl MOD11_02254878
_022564F0:
	add sp, #8
	pop {r3, r4, r5, pc}

	thumb_func_start MOD11_022564F4
MOD11_022564F4: ; 0x022564F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	str r0, [sp, #4]
	add r0, r1, #0
	str r2, [sp, #8]
	mov r2, #0x38
	add r7, sp, #0xc
	add r1, sp, #0xc
	strb r2, [r1]
	mov r1, #0
	mov ip, r1
	ldr r1, _0225658C ; =0x00002D66
	add r4, r7, #0
	add r3, r0, r1
	add r1, #0x58
	add r5, r7, #0
	add r6, r0, r1
_02256516:
	mov r1, #0xb5
	lsl r1, r1, #6
	ldrh r1, [r0, r1]
	add r2, r4, #0
	add r2, #0x24
	strh r1, [r7, #0x18]
	ldrb r1, [r3]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1f
	strb r1, [r2]
	ldrb r1, [r3]
	add r2, r4, #0
	add r2, #0x28
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1b
	strb r1, [r2]
	ldr r1, _02256590 ; =0x00002DB0
	ldr r2, [r0, r1]
	mov r1, #2
	lsl r1, r1, #0x14
	tst r1, r2
	beq _02256550
	ldr r1, _02256594 ; =0x00002DFA
	add r2, r4, #0
	ldrh r1, [r0, r1]
	add r2, #0x20
	strb r1, [r2]
	ldr r1, _02256598 ; =0x00002DE4
	b _0225655E
_02256550:
	ldrb r1, [r6]
	add r2, r4, #0
	add r2, #0x20
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	strb r1, [r2]
	ldr r1, _0225659C ; =0x00002DA8
_0225655E:
	ldr r1, [r0, r1]
	add r0, #0xc0
	str r1, [r5, #0x2c]
	mov r1, ip
	add r1, r1, #1
	add r7, r7, #2
	add r3, #0xc0
	add r4, r4, #1
	add r5, r5, #4
	add r6, #0xc0
	mov ip, r1
	cmp r1, #4
	blt _02256516
	mov r0, #0x58
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [sp, #8]
	mov r1, #1
	add r3, sp, #0xc
	bl MOD11_02254878
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0225658C: .word 0x00002D66
_02256590: .word 0x00002DB0
_02256594: .word 0x00002DFA
_02256598: .word 0x00002DE4
_0225659C: .word 0x00002DA8

	thumb_func_start MOD11_022565A0
MOD11_022565A0: ; 0x022565A0
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #0x39
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r3, pc}
	.align 2, 0

	thumb_func_start MOD11_022565BC
MOD11_022565BC: ; 0x022565BC
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	mov r1, #0x3a
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r3, pc}
	.align 2, 0

	thumb_func_start MOD11_022565D8
MOD11_022565D8: ; 0x022565D8
	push {r3, lr}
	sub sp, #8
	mov r1, #0x3b
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	mov r2, #0
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r3, pc}
	.align 2, 0

	thumb_func_start MOD11_022565F4
MOD11_022565F4: ; 0x022565F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	mov r2, #0x3c
	add r1, sp, #4
	strb r2, [r1]
	mov r4, #0
	add r6, r0, #0
	strb r4, [r1, #1]
	bl MOD11_0222FF84
	cmp r0, #0
	ble _02256632
	add r7, sp, #4
_02256610:
	ldr r0, _02256648 ; =0x000021A8
	ldr r0, [r5, r0]
	cmp r0, #0x10
	bne _02256624
	add r0, r4, #0
	bl MaskOfFlagNo
	ldrb r1, [r7, #1]
	orr r0, r1
	strb r0, [r7, #1]
_02256624:
	add r0, r6, #0
	add r5, #0x10
	add r4, r4, #1
	bl MOD11_0222FF84
	cmp r4, r0
	blt _02256610
_02256632:
	mov r0, #4
	str r0, [sp]
	add r0, r6, #0
	mov r1, #1
	mov r2, #0
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256648: .word 0x000021A8

	thumb_func_start MOD11_0225664C
MOD11_0225664C: ; 0x0225664C
	push {r3, lr}
	sub sp, #8
	mov r1, #0x3d
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	mov r2, #0
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r3, pc}
	.align 2, 0

	thumb_func_start MOD11_02256668
MOD11_02256668: ; 0x02256668
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	str r0, [sp, #4]
	add r0, r1, #0
	str r2, [sp, #8]
	mov r2, #0x3e
	add r7, sp, #0xc
	add r1, sp, #0xc
	strb r2, [r1]
	mov r1, #0
	mov ip, r1
	ldr r1, _02256700 ; =0x00002D66
	add r4, r7, #0
	add r3, r0, r1
	add r1, #0x58
	add r5, r7, #0
	add r6, r0, r1
_0225668A:
	mov r1, #0xb5
	lsl r1, r1, #6
	ldrh r1, [r0, r1]
	add r2, r4, #0
	add r2, #0x24
	strh r1, [r7, #0x18]
	ldrb r1, [r3]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1f
	strb r1, [r2]
	ldrb r1, [r3]
	add r2, r4, #0
	add r2, #0x28
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1b
	strb r1, [r2]
	ldr r1, _02256704 ; =0x00002DB0
	ldr r2, [r0, r1]
	mov r1, #2
	lsl r1, r1, #0x14
	tst r1, r2
	beq _022566C4
	ldr r1, _02256708 ; =0x00002DFA
	add r2, r4, #0
	ldrh r1, [r0, r1]
	add r2, #0x20
	strb r1, [r2]
	ldr r1, _0225670C ; =0x00002DE4
	b _022566D2
_022566C4:
	ldrb r1, [r6]
	add r2, r4, #0
	add r2, #0x20
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	strb r1, [r2]
	ldr r1, _02256710 ; =0x00002DA8
_022566D2:
	ldr r1, [r0, r1]
	add r0, #0xc0
	str r1, [r5, #0x2c]
	mov r1, ip
	add r1, r1, #1
	add r7, r7, #2
	add r3, #0xc0
	add r4, r4, #1
	add r5, r5, #4
	add r6, #0xc0
	mov ip, r1
	cmp r1, #4
	blt _0225668A
	mov r0, #0x58
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [sp, #8]
	mov r1, #1
	add r3, sp, #0xc
	bl MOD11_02254878
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02256700: .word 0x00002D66
_02256704: .word 0x00002DB0
_02256708: .word 0x00002DFA
_0225670C: .word 0x00002DE4
_02256710: .word 0x00002DA8

	thumb_func_start MOD11_02256714
MOD11_02256714: ; 0x02256714
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r3, #0x3f
	add r4, sp, #4
	strb r3, [r4]
	ldr r3, _02256750 ; =0x0000216C
	ldr r5, [r1, r3]
	mov r1, #2
	add r3, r5, #0
	tst r3, r1
	beq _0225672E
	strb r1, [r4, #1]
	b _0225673E
_0225672E:
	mov r1, #4
	tst r1, r5
	beq _0225673A
	mov r1, #1
	strb r1, [r4, #1]
	b _0225673E
_0225673A:
	mov r1, #0
	strb r1, [r4, #1]
_0225673E:
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02256750: .word 0x0000216C

	thumb_func_start MOD11_02256754
MOD11_02256754: ; 0x02256754
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	mov r3, #0x40
	add r1, sp, #4
	strb r3, [r1]
	strh r2, [r1, #2]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r4, pc}

	thumb_func_start MOD11_02256774
MOD11_02256774: ; 0x02256774
	push {r3, r4, lr}
	sub sp, #0xc
	mov r2, #0x41
	add r1, sp, #4
	strb r2, [r1]
	add r4, r0, #0
	bl MOD11_0223145C
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0

	thumb_func_start MOD11_0225679C
MOD11_0225679C: ; 0x0225679C
	push {r3, lr}
	sub sp, #8
	mov r1, #0x42
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp]
	mov r1, #1
	mov r2, #0
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r3, pc}
	.align 2, 0

	thumb_func_start MOD11_022567B8
MOD11_022567B8: ; 0x022567B8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, sp, #4
	add r4, r1, #0
	strb r2, [r0]
	bl FUN_02031190
	add r1, sp, #4
	strb r0, [r1, #1]
	mov r0, #4
	str r0, [sp]
	add r0, r5, #0
	mov r1, #2
	add r2, r4, #0
	add r3, sp, #4
	bl MOD11_02254878
	add sp, #8
	pop {r3, r4, r5, pc}

	thumb_func_start MOD11_022567E0
MOD11_022567E0: ; 0x022567E0
	push {r3, r4, r5, r6, r7, lr}
	ldrb r6, [r1, #3]
	ldrb r3, [r1]
	ldrb r2, [r1, #2]
	lsl r6, r6, #8
	add r5, r0, #0
	orr r2, r6
	ldrb r4, [r1, #1]
	cmp r3, #0
	bne _02256814
	mov r3, #0
	cmp r2, #0
	ble _02256852
	mov r6, #0x23
	lsl r4, r4, #8
	lsl r6, r6, #8
_02256800:
	add r0, r1, r3
	ldr r7, [r5, #0x30]
	ldrb r0, [r0, #4]
	add r7, r4, r7
	add r7, r3, r7
	add r3, r3, #1
	strb r0, [r7, r6]
	cmp r3, r2
	blt _02256800
	pop {r3, r4, r5, r6, r7, pc}
_02256814:
	cmp r3, #1
	bne _02256836
	mov r0, #0
	cmp r2, #0
	ble _02256852
	lsl r3, r4, #2
	add r5, r5, r3
_02256822:
	add r3, r1, r0
	ldrb r4, [r3, #4]
	ldr r3, [r5, #0x34]
	add r3, r3, r0
	add r3, #0x94
	add r0, r0, #1
	strb r4, [r3]
	cmp r0, r2
	blt _02256822
	pop {r3, r4, r5, r6, r7, pc}
_02256836:
	cmp r3, #2
	bne _02256852
	ldrb r7, [r1, #4]
	ldrb r6, [r1, #5]
	bl MOD11_02230DD4
	cmp r0, #0
	beq _02256852
	ldr r0, [r5, #0x30]
	add r1, r6, #0
	add r2, r4, #0
	add r3, r7, #0
	bl MOD11_02243340
_02256852:
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD11_02256854
MOD11_02256854: ; 0x02256854
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r5, r2, #0
	mov r1, #0x16
	strb r1, [r5]
	add r1, sp, #0x18
	ldrh r1, [r1, #0x1c]
	add r7, r0, #0
	strh r1, [r5, #2]
	ldr r1, [sp, #0x2c]
	strh r1, [r5, #0x14]
	ldr r1, [sp, #0x30]
	strh r1, [r5, #0x16]
	ldr r1, [sp, #0x28]
	str r3, [r5, #0x4c]
	str r1, [r5, #0x50]
	bl MOD11_02230294
	str r0, [r5, #0x54]
	cmp r4, #0
	bne _02256882
	b _022569B2
_02256882:
	ldr r0, _022569B8 ; =0x00002144
	ldr r1, [r4, r0]
	add r0, #0x10
	str r1, [r5, #4]
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02256892
	b _0225689E
_02256892:
	add r0, sp, #0x18
	ldrh r0, [r0, #0x1c]
	lsl r0, r0, #4
	add r1, r4, r0
	ldr r0, _022569BC ; =0x000003E1
	ldrb r0, [r1, r0]
_0225689E:
	ldr r1, [sp, #0x2c]
	strh r0, [r5, #8]
	mov r0, #0xc0
	add r6, r1, #0
	mul r6, r0
	ldr r0, _022569C0 ; =0x00002D75
	add r1, r4, r6
	ldrb r0, [r1, r0]
	add r1, r4, #0
	mov r2, #8
	strh r0, [r5, #0xc]
	mov r0, #0xd
	str r0, [sp]
	add r0, r7, #0
	mov r3, #0
	bl MOD11_02246870
	cmp r0, #0
	bne _022568E2
	mov r0, #0x4c
	str r0, [sp]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #8
	mov r3, #0
	bl MOD11_02246870
	cmp r0, #0
	bne _022568E2
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	str r0, [r5, #0x10]
	b _022568E6
_022568E2:
	mov r0, #0
	str r0, [r5, #0x10]
_022568E6:
	ldr r0, _022569C4 ; =0x00002164
	ldr r0, [r4, r0]
	strh r0, [r5, #0xa]
	ldr r0, _022569C8 ; =0x00002DB0
	add r1, r4, r0
	mov r0, #1
	ldr r2, [r1, r6]
	lsl r0, r0, #0x18
	tst r0, r2
	beq _022568FE
	mov r3, #1
	b _02256900
_022568FE:
	mov r3, #0
_02256900:
	ldrh r0, [r5, #0xe]
	mov r2, #1
	bic r0, r2
	lsl r2, r3, #0x10
	lsr r3, r2, #0x10
	mov r2, #1
	and r3, r2
	orr r0, r3
	strh r0, [r5, #0xe]
	ldr r1, [r1, r6]
	lsl r0, r2, #0x15
	tst r0, r1
	bne _0225691C
	mov r2, #0
_0225691C:
	ldrh r0, [r5, #0xe]
	mov r1, #2
	str r5, [sp, #0x10]
	bic r0, r1
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1e
	orr r0, r1
	strh r0, [r5, #0xe]
	ldr r0, _022569CC ; =0x00002D66
	mov r1, #0
	add r2, r4, r0
	add r0, #0x58
	add r3, r5, #0
	add r7, r4, r0
_0225693C:
	mov r0, #0xb5
	lsl r0, r0, #6
	ldrh r6, [r4, r0]
	ldr r0, [sp, #0x10]
	strh r6, [r0, #0x18]
	ldrb r0, [r2]
	lsl r0, r0, #0x1a
	lsr r6, r0, #0x1f
	add r0, r5, r1
	str r0, [sp, #8]
	add r0, #0x24
	str r0, [sp, #8]
	strb r6, [r0]
	ldrb r0, [r2]
	lsl r0, r0, #0x1b
	lsr r6, r0, #0x1b
	add r0, r5, r1
	str r0, [sp, #4]
	add r0, #0x28
	str r0, [sp, #4]
	strb r6, [r0]
	mov r0, #0xb7
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	str r0, [r3, #0x3c]
	ldr r0, _022569C8 ; =0x00002DB0
	ldr r6, [r4, r0]
	mov r0, #2
	lsl r0, r0, #0x14
	tst r0, r6
	beq _0225698C
	ldr r0, _022569D0 ; =0x00002DFA
	ldrh r6, [r4, r0]
	add r0, r5, r1
	str r0, [sp, #0xc]
	add r0, #0x20
	str r0, [sp, #0xc]
	strb r6, [r0]
	ldr r0, _022569D4 ; =0x00002DE4
	b _0225699A
_0225698C:
	ldrb r0, [r7]
	lsl r0, r0, #0x1c
	lsr r6, r0, #0x1c
	add r0, r5, r1
	add r0, #0x20
	strb r6, [r0]
	ldr r0, _022569D8 ; =0x00002DA8
_0225699A:
	ldr r0, [r4, r0]
	add r1, r1, #1
	str r0, [r3, #0x2c]
	ldr r0, [sp, #0x10]
	add r4, #0xc0
	add r0, r0, #2
	str r0, [sp, #0x10]
	add r2, #0xc0
	add r3, r3, #4
	add r7, #0xc0
	cmp r1, #4
	blt _0225693C
_022569B2:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_022569B8: .word 0x00002144
_022569BC: .word 0x000003E1
_022569C0: .word 0x00002D75
_022569C4: .word 0x00002164
_022569C8: .word 0x00002DB0
_022569CC: .word 0x00002D66
_022569D0: .word 0x00002DFA
_022569D4: .word 0x00002DE4
_022569D8: .word 0x00002DA8

	thumb_func_start MOD11_022569DC
MOD11_022569DC: ; 0x022569DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x38]
	add r5, r2, #0
	str r1, [sp, #4]
	str r0, [sp, #0x38]
	mov r0, #0
	add r1, r5, #0
	mov r2, #8
	add r6, r3, #0
	bl MIi_CpuClearFast
	ldr r0, [sp]
	bl MOD11_0222FF74
	add r4, r0, #0
	mov r0, #0xc
	and r0, r4
	strb r6, [r5]
	cmp r0, #0xc
	beq _02256A30
	mov r0, #0x10
	tst r0, r4
	beq _02256A1A
	ldr r0, [sp]
	ldr r1, [sp, #0x38]
	bl MOD11_02230270
	cmp r0, #0
	bne _02256A30
_02256A1A:
	cmp r4, #0x4b
	bne _02256A2A
	ldr r0, [sp]
	ldr r1, [sp, #0x38]
	bl MOD11_02230270
	cmp r0, #0
	bne _02256A30
_02256A2A:
	cmp r4, #0xcb
	beq _02256A30
	b _02256B66
_02256A30:
	ldr r0, [sp]
	ldr r1, [sp, #0x38]
	bl MOD11_02230260
	cmp r0, #2
	beq _02256A48
	ldr r0, [sp]
	ldr r1, [sp, #0x38]
	bl MOD11_02230260
	cmp r0, #3
	bne _02256A56
_02256A48:
	ldr r6, [sp, #0x38]
	ldr r0, [sp]
	add r1, r6, #0
	bl MOD11_022302BC
	str r0, [sp, #0x38]
	b _02256A60
_02256A56:
	ldr r0, [sp]
	ldr r1, [sp, #0x38]
	bl MOD11_022302BC
	add r6, r0, #0
_02256A60:
	ldr r0, [sp]
	add r1, r6, #0
	bl MOD11_0222FF88
	mov r4, #0
	str r0, [sp, #0x10]
	add r7, r4, #0
	bl GetPartyCount
	cmp r0, #0
	ble _02256AE0
	mov r0, #6
	add r1, r6, #0
	mul r1, r0
	ldr r0, [sp, #4]
	add r6, r0, r1
_02256A80:
	ldr r1, _02256C00 ; =0x0000312C
	ldr r0, [sp, #0x10]
	ldrb r1, [r6, r1]
	bl GetPartyMonByIndex
	mov r1, #0xad
	mov r2, #0
	str r0, [sp, #0x14]
	bl GetMonData
	cmp r0, #0
	beq _02256AD2
	ldr r1, _02256C04 ; =0x000001EE
	cmp r0, r1
	beq _02256AD2
	ldr r0, [sp, #0x14]
	mov r1, #0xa2
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _02256ACA
	ldr r0, [sp, #0x14]
	mov r1, #0x9f
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _02256AC2
	add r1, r5, r4
	mov r0, #3
	strb r0, [r1, #2]
	b _02256AD0
_02256AC2:
	add r1, r5, r4
	mov r0, #1
	strb r0, [r1, #2]
	b _02256AD0
_02256ACA:
	add r1, r5, r4
	mov r0, #2
	strb r0, [r1, #2]
_02256AD0:
	add r4, r4, #1
_02256AD2:
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	add r7, r7, #1
	bl GetPartyCount
	cmp r7, r0
	blt _02256A80
_02256AE0:
	ldr r0, [sp]
	ldr r1, [sp, #0x38]
	bl MOD11_0222FF88
	str r0, [sp, #8]
	mov r4, #3
	mov r6, #0
	bl GetPartyCount
	cmp r0, #0
	bgt _02256AF8
	b _02256BFA
_02256AF8:
	ldr r0, [sp, #0x38]
	mov r1, #6
	mul r1, r0
	ldr r0, [sp, #4]
	add r7, r0, r1
_02256B02:
	ldr r1, _02256C00 ; =0x0000312C
	ldr r0, [sp, #8]
	ldrb r1, [r7, r1]
	bl GetPartyMonByIndex
	mov r1, #0xad
	mov r2, #0
	str r0, [sp, #0x18]
	bl GetMonData
	cmp r0, #0
	beq _02256B54
	ldr r1, _02256C04 ; =0x000001EE
	cmp r0, r1
	beq _02256B54
	ldr r0, [sp, #0x18]
	mov r1, #0xa2
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _02256B4C
	ldr r0, [sp, #0x18]
	mov r1, #0x9f
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _02256B44
	add r1, r5, r4
	mov r0, #3
	strb r0, [r1, #2]
	b _02256B52
_02256B44:
	add r1, r5, r4
	mov r0, #1
	strb r0, [r1, #2]
	b _02256B52
_02256B4C:
	add r1, r5, r4
	mov r0, #2
	strb r0, [r1, #2]
_02256B52:
	add r4, r4, #1
_02256B54:
	ldr r0, [sp, #8]
	add r7, r7, #1
	add r6, r6, #1
	bl GetPartyCount
	cmp r6, r0
	blt _02256B02
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_02256B66:
	mov r0, #2
	tst r0, r4
	beq _02256B7A
	mov r0, #8
	tst r0, r4
	bne _02256B7A
	ldr r0, [sp, #0x38]
	mov r1, #1
	and r0, r1
	str r0, [sp, #0x38]
_02256B7A:
	ldr r0, [sp]
	ldr r1, [sp, #0x38]
	bl MOD11_0222FF88
	mov r4, #0
	str r0, [sp, #0xc]
	add r7, r4, #0
	bl GetPartyCount
	cmp r0, #0
	ble _02256BFA
	ldr r0, [sp, #0x38]
	mov r1, #6
	mul r1, r0
	ldr r0, [sp, #4]
	add r6, r0, r1
_02256B9A:
	ldr r1, _02256C00 ; =0x0000312C
	ldr r0, [sp, #0xc]
	ldrb r1, [r6, r1]
	bl GetPartyMonByIndex
	mov r1, #0xad
	mov r2, #0
	str r0, [sp, #0x1c]
	bl GetMonData
	cmp r0, #0
	beq _02256BEC
	ldr r1, _02256C04 ; =0x000001EE
	cmp r0, r1
	beq _02256BEC
	ldr r0, [sp, #0x1c]
	mov r1, #0xa2
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _02256BE4
	ldr r0, [sp, #0x1c]
	mov r1, #0x9f
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _02256BDC
	add r1, r5, r4
	mov r0, #3
	strb r0, [r1, #2]
	b _02256BEA
_02256BDC:
	add r1, r5, r4
	mov r0, #1
	strb r0, [r1, #2]
	b _02256BEA
_02256BE4:
	add r1, r5, r4
	mov r0, #2
	strb r0, [r1, #2]
_02256BEA:
	add r4, r4, #1
_02256BEC:
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	add r7, r7, #1
	bl GetPartyCount
	cmp r7, r0
	blt _02256B9A
_02256BFA:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256C00: .word 0x0000312C
_02256C04: .word 0x000001EE

	thumb_func_start MOD11_02256C08
MOD11_02256C08: ; 0x02256C08
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	lsl r0, r3, #0x18
	lsr r0, r0, #0x18
	add r4, r1, #0
	add r7, r2, #0
	str r3, [sp, #0x18]
	bl MOD11_02257FC0
	add r6, r0, #0
	ldr r3, [r6, #0x14]
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1b
	str r3, [sp, #8]
	bl FUN_0200C00C
	mov r0, #0x1b
	str r0, [sp]
	mov r0, #0x23
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _02256CC8 ; =0x00004E26
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r5, #0
	add r3, r4, #0
	bl FUN_0200C0DC
	ldr r3, [r6, #0x1c]
	mov r0, #1
	str r0, [sp]
	str r3, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1b
	bl FUN_0200C124
	ldr r3, [r6, #0x20]
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1b
	str r3, [sp, #4]
	bl FUN_0200C13C
	mov r0, #0x1b
	str r0, [sp]
	mov r0, #0x23
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _02256CCC ; =0x00004E27
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r5, #0
	add r3, r4, #0
	bl FUN_0200C0DC
	ldr r0, [sp, #0x18]
	sub r0, r0, #6
	cmp r0, #1
	bhi _02256CC4
	mov r0, #0x1b
	str r0, [sp]
	mov r0, #0x2d
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _02256CD0 ; =0x00004E28
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r5, #0
	add r3, r4, #0
	bl FUN_0200C0DC
_02256CC4:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02256CC8: .word 0x00004E26
_02256CCC: .word 0x00004E27
_02256CD0: .word 0x00004E28

	thumb_func_start MOD11_02256CD4
MOD11_02256CD4: ; 0x02256CD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	lsl r0, r3, #0x18
	lsr r0, r0, #0x18
	add r6, r1, #0
	add r7, r2, #0
	bl MOD11_02258024
	add r4, r0, #0
	beq _02256D44
	ldr r3, [r4, #0x14]
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1b
	str r3, [sp, #8]
	bl FUN_0200C00C
	mov r0, #0x1b
	str r0, [sp]
	mov r0, #0x23
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _02256D48 ; =0x00004E26
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r2, r5, #0
	add r3, r6, #0
	bl FUN_0200C0DC
	ldr r3, [r4, #0x1c]
	mov r0, #1
	str r0, [sp]
	str r3, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1b
	bl FUN_0200C124
	ldr r3, [r4, #0x20]
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1b
	str r3, [sp, #4]
	bl FUN_0200C13C
_02256D44:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02256D48: .word 0x00004E26

	thumb_func_start MOD11_02256D4C
MOD11_02256D4C: ; 0x02256D4C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r0, r2, #0x18
	add r4, r1, #0
	lsr r0, r0, #0x18
	bl MOD11_02257FC0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl FUN_0200C154
	add r4, r0, #0
	ldr r0, [r4]
	bl FUN_0200C59C
	add r0, r4, #0
	pop {r3, r4, r5, pc}

	thumb_func_start MOD11_02256D70
MOD11_02256D70: ; 0x02256D70
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r6, r1, #0
	add r4, r2, #0
	cmp r0, #0
	bne _02256D82
	bl GF_AssertFail
_02256D82:
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	cmp r0, #6
	bne _02256D94
	mov r1, #3
	lsl r1, r1, #0xa
	and r4, r1
	b _02256DA4
_02256D94:
	cmp r0, #7
	bne _02256DA0
	mov r1, #3
	lsl r1, r1, #0xc
	and r4, r1
	b _02256DA4
_02256DA0:
	ldr r1, _02256F00 ; =0xFFFFC3FF
	and r4, r1
_02256DA4:
	cmp r0, #7
	bhi _02256DEA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02256DB4: ; jump table
	.short _02256DE6 - _02256DB4 - 2 ; case 0
	.short _02256DC4 - _02256DB4 - 2 ; case 1
	.short _02256DCA - _02256DB4 - 2 ; case 2
	.short _02256DC4 - _02256DB4 - 2 ; case 3
	.short _02256DCA - _02256DB4 - 2 ; case 4
	.short _02256DC4 - _02256DB4 - 2 ; case 5
	.short _02256DEA - _02256DB4 - 2 ; case 6
	.short _02256DEA - _02256DB4 - 2 ; case 7
_02256DC4:
	mov r0, #0x26
	bic r4, r0
	b _02256DEA
_02256DCA:
	ldr r0, _02256F04 ; =0xFFFFFDDF
	and r4, r0
	add r0, r5, #0
	add r0, #0x4f
	ldrb r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bne _02256DE0
	mov r0, #6
	bic r4, r0
	b _02256DEA
_02256DE0:
	mov r0, #1
	bic r4, r0
	b _02256DEA
_02256DE6:
	ldr r0, _02256F08 ; =0xFFFFFDFF
	and r4, r0
_02256DEA:
	ldr r0, [r5, #0xc]
	bl MOD11_0222FF74
	mov r1, #1
	tst r0, r1
	beq _02256DFA
	ldr r0, _02256F08 ; =0xFFFFFDFF
	and r4, r0
_02256DFA:
	mov r0, #1
	tst r0, r4
	beq _02256E10
	add r0, r5, #0
	mov r1, #0
	bl MOD11_02257150
	add r0, r5, #0
	mov r1, #0
	bl MOD11_02257BEC
_02256E10:
	mov r0, #2
	tst r0, r4
	beq _02256E1E
	add r0, r5, #0
	add r1, r6, #0
	bl MOD11_0225787C
_02256E1E:
	mov r0, #4
	tst r0, r4
	beq _02256E2A
	add r0, r5, #0
	bl MOD11_02257908
_02256E2A:
	mov r0, #0x80
	tst r0, r4
	bne _02256E36
	mov r0, #0x40
	tst r0, r4
	beq _02256E3C
_02256E36:
	add r0, r5, #0
	bl MOD11_02257654
_02256E3C:
	mov r0, #8
	tst r0, r4
	beq _02256E48
	add r0, r5, #0
	bl MOD11_0225775C
_02256E48:
	mov r0, #0x10
	tst r0, r4
	beq _02256E54
	add r0, r5, #0
	bl MOD11_022574F0
_02256E54:
	mov r0, #0x20
	tst r0, r4
	beq _02256E6A
	add r0, r5, #0
	mov r1, #0
	bl MOD11_022571B8
	add r0, r5, #0
	mov r1, #1
	bl MOD11_02257BEC
_02256E6A:
	mov r0, #2
	lsl r0, r0, #8
	tst r0, r4
	beq _02256E78
	add r0, r5, #0
	bl MOD11_02257968
_02256E78:
	mov r0, #1
	lsl r0, r0, #8
	tst r0, r4
	beq _02256EDC
	add r0, r5, #0
	add r0, #0x4a
	ldrb r0, [r0]
	cmp r0, #5
	bhi _02256EA2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02256E96: ; jump table
	.short _02256EA2 - _02256E96 - 2 ; case 0
	.short _02256EAC - _02256E96 - 2 ; case 1
	.short _02256EB6 - _02256E96 - 2 ; case 2
	.short _02256EC0 - _02256E96 - 2 ; case 3
	.short _02256ECA - _02256E96 - 2 ; case 4
	.short _02256ED4 - _02256E96 - 2 ; case 5
_02256EA2:
	add r0, r5, #0
	mov r1, #0x38
	bl MOD11_022579B8
	b _02256EDC
_02256EAC:
	add r0, r5, #0
	mov r1, #0x2f
	bl MOD11_022579B8
	b _02256EDC
_02256EB6:
	add r0, r5, #0
	mov r1, #0x32
	bl MOD11_022579B8
	b _02256EDC
_02256EC0:
	add r0, r5, #0
	mov r1, #0x35
	bl MOD11_022579B8
	b _02256EDC
_02256ECA:
	add r0, r5, #0
	mov r1, #0x2c
	bl MOD11_022579B8
	b _02256EDC
_02256ED4:
	add r0, r5, #0
	mov r1, #0x29
	bl MOD11_022579B8
_02256EDC:
	mov r0, #5
	lsl r0, r0, #0xa
	tst r0, r4
	beq _02256EEC
	add r0, r5, #0
	add r1, r4, #0
	bl MOD11_022579F8
_02256EEC:
	mov r0, #0xa
	lsl r0, r0, #0xa
	tst r0, r4
	beq _02256EFC
	add r0, r5, #0
	add r1, r4, #0
	bl MOD11_02257AD4
_02256EFC:
	pop {r4, r5, r6, pc}
	nop
_02256F00: .word 0xFFFFC3FF
_02256F04: .word 0xFFFFFDDF
_02256F08: .word 0xFFFFFDFF

	thumb_func_start MOD11_02256F0C
MOD11_02256F0C: ; 0x02256F0C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _02256F1E
	bl FUN_0200CAB4
	mov r0, #0
	str r0, [r4, #0x50]
_02256F1E:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02256F2C
	bl FUN_0200C3DC
	mov r0, #0
	str r0, [r4, #4]
_02256F2C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start MOD11_02256F30
MOD11_02256F30: ; 0x02256F30
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02256F42
	bl FUN_0200C3DC
	mov r0, #0
	str r0, [r4, #8]
_02256F42:
	pop {r4, pc}

	thumb_func_start MOD11_02256F44
MOD11_02256F44: ; 0x02256F44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x25
	ldrb r0, [r0]
	bl MOD11_02257FC0
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl MOD11_02230078
	ldr r0, [r5, #0xc]
	bl MOD11_02230080
	ldr r1, [r4, #0x14]
	add r5, r0, #0
	bl FUN_0200C358
	ldr r1, [r4, #0x1c]
	add r0, r5, #0
	bl FUN_0200C378
	ldr r1, [r4, #0x20]
	add r0, r5, #0
	bl FUN_0200C388
	pop {r3, r4, r5, pc}

	thumb_func_start MOD11_02256F78
MOD11_02256F78: ; 0x02256F78
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x25
	ldrb r0, [r0]
	bl MOD11_02258024
	add r4, r0, #0
	beq _02256FAC
	ldr r0, [r5, #0xc]
	bl MOD11_02230078
	ldr r0, [r5, #0xc]
	bl MOD11_02230080
	ldr r1, [r4, #0x14]
	add r5, r0, #0
	bl FUN_0200C358
	ldr r1, [r4, #0x1c]
	add r0, r5, #0
	bl FUN_0200C378
	ldr r1, [r4, #0x20]
	add r0, r5, #0
	bl FUN_0200C388
_02256FAC:
	pop {r3, r4, r5, pc}
	.align 2, 0

	thumb_func_start MOD11_02256FB0
MOD11_02256FB0: ; 0x02256FB0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl MOD11_02230078
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl MOD11_02230080
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl MOD11_022300CC
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	bl MOD11_02257FC0
	add r3, r5, #0
	add r3, #0x25
	add r4, r0, #0
	ldrb r3, [r3]
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r7, #0
	bl MOD11_02256C08
	add r2, r5, #0
	add r2, #0x25
	ldrb r2, [r2]
	add r0, r6, #0
	add r1, r7, #0
	bl MOD11_02256D4C
	add r3, r5, #0
	str r0, [r5, #4]
	add r3, #0x25
	ldrb r3, [r3]
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r7, #0
	bl MOD11_02256CD4
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0225702A
	add r5, #0x25
	mov r1, #0
	ldrsh r3, [r4, r1]
	ldrb r2, [r5]
	ldr r1, _0225702C ; =MOD11_0225E970
	ldr r0, [r0]
	ldrsb r1, [r1, r2]
	mov r2, #2
	ldrsh r2, [r4, r2]
	sub r1, r3, r1
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	bl FUN_0200C6E4
_0225702A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225702C: .word MOD11_0225E970

	thumb_func_start MOD11_02257030
MOD11_02257030: ; 0x02257030
	push {r4, lr}
	add r4, r0, #0
	bl MOD11_02256F0C
	add r0, r4, #0
	bl MOD11_02256F44
	add r0, r4, #0
	bl MOD11_02256F30
	add r0, r4, #0
	bl MOD11_02256F78
	pop {r4, pc}

	thumb_func_start MOD11_0225704C
MOD11_0225704C: ; 0x0225704C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x25
	ldrb r0, [r0]
	cmp r0, #2
	beq _0225705C
	cmp r0, #4
	bne _02257136
_0225705C:
	add r0, r5, #0
	add r0, #0x4f
	ldrb r2, [r0]
	mov r1, #8
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1c
	lsr r2, r1, #0x1f
	mov r1, #1
	eor r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1c
	orr r1, r0
	add r0, r5, #0
	add r0, #0x4f
	strb r1, [r0]
	ldr r0, [r5, #4]
	ldr r0, [r0]
	bl FUN_02020350
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x4f
	ldrb r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _022570E8
	mov r0, #0x38
	bl MOD11_02257F60
	add r1, r5, #0
	add r1, #0x25
	ldrb r1, [r1]
	mov r6, #0x19
	ldr r3, _02257138 ; =MOD11_0225E9B0
	lsl r2, r1, #2
	ldrh r3, [r3, r2]
	lsl r6, r6, #0x16
	ldr r1, [r4, #4]
	add r3, r6, r3
	add r1, r1, r3
	ldr r3, _0225713C ; =MOD11_0225E9B2
	ldrh r2, [r3, r2]
	bl MIi_CpuCopy16
	mov r0, #0x45
	bl MOD11_02257F60
	add r1, r5, #0
	add r1, #0x25
	ldrb r1, [r1]
	ldr r3, _02257140 ; =MOD11_0225EA10
	lsl r2, r1, #2
	ldrh r3, [r3, r2]
	ldr r1, [r4, #4]
	add r3, r6, r3
	add r1, r1, r3
	ldr r3, _02257144 ; =MOD11_0225EA12
	ldrh r2, [r3, r2]
	bl MIi_CpuCopy16
	ldr r1, [r5, #0x28]
	add r0, r5, #0
	mov r2, #6
	bl MOD11_02256D70
	pop {r4, r5, r6, pc}
_022570E8:
	mov r0, #0x42
	bl MOD11_02257F60
	add r1, r5, #0
	add r1, #0x25
	ldrb r1, [r1]
	mov r6, #0x19
	ldr r3, _02257138 ; =MOD11_0225E9B0
	lsl r2, r1, #2
	ldrh r3, [r3, r2]
	lsl r6, r6, #0x16
	ldr r1, [r4, #4]
	add r3, r6, r3
	add r1, r1, r3
	ldr r3, _0225713C ; =MOD11_0225E9B2
	ldrh r2, [r3, r2]
	bl MIi_CpuCopy16
	mov r0, #0x44
	bl MOD11_02257F60
	add r1, r5, #0
	add r1, #0x25
	ldrb r1, [r1]
	ldr r3, _02257148 ; =MOD11_0225E9E0
	lsl r2, r1, #2
	ldrh r3, [r3, r2]
	ldr r1, [r4, #4]
	add r3, r6, r3
	add r1, r1, r3
	ldr r3, _0225714C ; =MOD11_0225E9E2
	ldrh r2, [r3, r2]
	bl MIi_CpuCopy16
	ldr r1, [r5, #0x28]
	add r0, r5, #0
	mov r2, #1
	bl MOD11_02256D70
_02257136:
	pop {r4, r5, r6, pc}
	.align 2, 0
_02257138: .word MOD11_0225E9B0
_0225713C: .word MOD11_0225E9B2
_02257140: .word MOD11_0225EA10
_02257144: .word MOD11_0225EA12
_02257148: .word MOD11_0225E9E0
_0225714C: .word MOD11_0225E9E2

	thumb_func_start MOD11_02257150
MOD11_02257150: ; 0x02257150
	mov r2, #2
	lsl r2, r2, #0x1e
	str r2, [r0, #0x34]
	ldr r3, [r0, #0x28]
	add r2, r3, r1
	bpl _0225715E
	sub r1, r1, r2
_0225715E:
	ldr r2, [r0, #0x2c]
	add r3, r3, r1
	cmp r3, r2
	ble _0225716A
	sub r2, r3, r2
	sub r1, r1, r2
_0225716A:
	neg r1, r1
	str r1, [r0, #0x30]
	ldr r1, [r0, #0x28]
	cmp r1, #0
	bge _02257178
	mov r1, #0
	str r1, [r0, #0x28]
_02257178:
	ldr r2, [r0, #0x2c]
	ldr r1, [r0, #0x28]
	cmp r1, r2
	ble _02257182
	str r2, [r0, #0x28]
_02257182:
	bx lr

	thumb_func_start MOD11_02257184
MOD11_02257184: ; 0x02257184
	push {r3, r4, r5, lr}
	mov r1, #0
	add r5, r0, #0
	bl MOD11_02257BEC
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _022571AA
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x30]
	mov r2, #2
	sub r1, r1, r0
	add r0, r5, #0
	str r1, [r5, #0x28]
	bl MOD11_02256D70
	b _022571B4
_022571AA:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl MOD11_02256D70
_022571B4:
	add r0, r4, #0
	pop {r3, r4, r5, pc}

	thumb_func_start MOD11_022571B8
MOD11_022571B8: ; 0x022571B8
	mov r2, #2
	lsl r2, r2, #0x1e
	str r2, [r0, #0x44]
	ldr r3, [r0, #0x38]
	add r2, r3, r1
	bpl _022571C6
	sub r1, r1, r2
_022571C6:
	ldr r2, [r0, #0x3c]
	add r3, r3, r1
	cmp r3, r2
	ble _022571D2
	sub r2, r3, r2
	sub r1, r1, r2
_022571D2:
	neg r1, r1
	str r1, [r0, #0x40]
	ldr r1, [r0, #0x38]
	cmp r1, #0
	bge _022571E0
	mov r1, #0
	str r1, [r0, #0x38]
_022571E0:
	ldr r2, [r0, #0x3c]
	ldr r1, [r0, #0x38]
	cmp r1, r2
	ble _022571EA
	str r2, [r0, #0x38]
_022571EA:
	bx lr

	thumb_func_start MOD11_022571EC
MOD11_022571EC: ; 0x022571EC
	push {r4, lr}
	mov r1, #1
	add r4, r0, #0
	bl MOD11_02257BEC
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02257206
	ldr r2, [r4, #0x38]
	ldr r1, [r4, #0x40]
	sub r1, r2, r1
	str r1, [r4, #0x38]
_02257206:
	pop {r4, pc}

	thumb_func_start MOD11_02257208
MOD11_02257208: ; 0x02257208
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02257222
	ldr r0, [r0]
	mov r1, #1
	bl FUN_020200BC
	add r0, r4, #0
	mov r1, #1
	bl MOD11_02257284
_02257222:
	ldr r0, [r4, #0xc]
	bl MOD11_0222FF74
	mov r1, #0x22
	lsl r1, r1, #4
	tst r0, r1
	bne _02257236
	add r0, r4, #0
	bl MOD11_02258188
_02257236:
	pop {r4, pc}

	thumb_func_start MOD11_02257238
MOD11_02257238: ; 0x02257238
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0225725C
	ldr r0, [r0]
	mov r1, #0
	bl FUN_020200BC
	ldr r0, [r4, #8]
	mov r1, #0
	ldr r0, [r0]
	bl FUN_02020208
	add r0, r4, #0
	mov r1, #0
	bl MOD11_02257284
_0225725C:
	add r0, r4, #0
	bl MOD11_022581B0
	pop {r4, pc}

	thumb_func_start MOD11_02257264
MOD11_02257264: ; 0x02257264
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	cmp r0, #0
	beq _02257280
	bl FUN_0200C6B0
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02257280
	add r1, r4, #0
	bl FUN_0200C6B0
_02257280:
	pop {r3, r4, r5, pc}
	.align 2, 0

	thumb_func_start MOD11_02257284
MOD11_02257284: ; 0x02257284
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r4, r1, #0
	cmp r0, #0
	beq _022572AA
	ldr r0, [r5, #0xc]
	bl MOD11_0222FF74
	mov r1, #0x22
	lsl r1, r1, #4
	tst r0, r1
	beq _022572A2
	cmp r4, #1
	beq _022572AA
_022572A2:
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl FUN_0200C644
_022572AA:
	pop {r3, r4, r5, pc}

	thumb_func_start MOD11_022572AC
MOD11_022572AC: ; 0x022572AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	cmp r0, #0
	beq _022572C4
	bl FUN_0200C644
	add r0, r5, #0
	add r1, r4, #0
	bl MOD11_02257284
_022572C4:
	pop {r3, r4, r5, pc}
	.align 2, 0

	thumb_func_start MOD11_022572C8
MOD11_022572C8: ; 0x022572C8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r6, r1, #0
	add r7, r2, #0
	cmp r0, #0
	bne _022572DA
	bl GF_AssertFail
_022572DA:
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	bl MOD11_02257FC0
	add r4, r0, #0
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r5, #4]
	add r1, r1, r6
	add r2, r2, r7
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl FUN_0200C6E4
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0225732C
	add r5, #0x25
	ldrb r3, [r5]
	mov r1, #0
	ldr r2, _02257330 ; =MOD11_0225E970
	ldrsh r1, [r4, r1]
	ldrsb r2, [r2, r3]
	ldr r0, [r0]
	add r1, r1, r6
	sub r1, r1, r2
	mov r2, #2
	ldrsh r2, [r4, r2]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r2, r2, r7
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl FUN_0200C6E4
_0225732C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02257330: .word MOD11_0225E970

	thumb_func_start MOD11_02257334
MOD11_02257334: ; 0x02257334
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #0
	bne _02257342
	bl GF_AssertFail
_02257342:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0225734C
	bl GF_AssertFail
_0225734C:
	add r0, r4, #0
	add r0, #0x4f
	ldrb r1, [r0]
	mov r0, #2
	bic r1, r0
	add r0, r4, #0
	add r0, #0x4f
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x4f
	ldrb r0, [r0]
	mov r1, #1
	bic r0, r1
	lsl r1, r5, #0x18
	lsr r2, r1, #0x18
	mov r1, #1
	and r1, r2
	orr r1, r0
	add r0, r4, #0
	add r0, #0x4f
	strb r1, [r0]
	cmp r5, #0
	bne _022573BA
	add r0, r4, #0
	add r0, #0x25
	ldrb r0, [r0]
	cmp r0, #7
	bhi _022573AC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02257390: ; jump table
	.short _022573A0 - _02257390 - 2 ; case 0
	.short _022573AC - _02257390 - 2 ; case 1
	.short _022573A0 - _02257390 - 2 ; case 2
	.short _022573AC - _02257390 - 2 ; case 3
	.short _022573A0 - _02257390 - 2 ; case 4
	.short _022573AC - _02257390 - 2 ; case 5
	.short _022573A0 - _02257390 - 2 ; case 6
	.short _022573A0 - _02257390 - 2 ; case 7
_022573A0:
	add r0, r4, #0
	mov r1, #0xa0
	mov r2, #0
	bl MOD11_022572C8
	b _022573C4
_022573AC:
	mov r1, #0x9f
	add r0, r4, #0
	mvn r1, r1
	mov r2, #0
	bl MOD11_022572C8
	b _022573C4
_022573BA:
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl MOD11_022572C8
_022573C4:
	ldr r0, _022573D0 ; =MOD11_022573D8
	ldr r2, _022573D4 ; =0x000003DE
	add r1, r4, #0
	bl FUN_0200CA44
	pop {r3, r4, r5, pc}
	.align 2, 0
_022573D0: .word MOD11_022573D8
_022573D4: .word 0x000003DE

	thumb_func_start MOD11_022573D8
MOD11_022573D8: ; 0x022573D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	mov r4, #0
	bl MOD11_02257FC0
	add r6, r0, #0
	add r1, sp, #0
	ldr r0, [r5, #4]
	add r1, #2
	add r2, sp, #0
	bl FUN_0200C7A0
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	cmp r0, #7
	bhi _0225745E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225740E: ; jump table
	.short _0225741E - _0225740E - 2 ; case 0
	.short _0225745E - _0225740E - 2 ; case 1
	.short _0225741E - _0225740E - 2 ; case 2
	.short _0225745E - _0225740E - 2 ; case 3
	.short _0225741E - _0225740E - 2 ; case 4
	.short _0225745E - _0225740E - 2 ; case 5
	.short _0225741E - _0225740E - 2 ; case 6
	.short _0225741E - _0225740E - 2 ; case 7
_0225741E:
	add r0, r5, #0
	add r0, #0x4f
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	add r0, sp, #0
	bne _02257444
	mov r1, #2
	ldrsh r2, [r0, r1]
	sub r2, #0x18
	strh r2, [r0, #2]
	add r2, r4, #0
	ldrsh r1, [r0, r1]
	ldrsh r2, [r6, r2]
	cmp r1, r2
	bge _0225749C
	strh r2, [r0, #2]
	add r4, r4, #1
	b _0225749C
_02257444:
	mov r1, #2
	ldrsh r2, [r0, r1]
	add r2, #0x18
	strh r2, [r0, #2]
	add r2, r4, #0
	ldrsh r2, [r6, r2]
	ldrsh r1, [r0, r1]
	add r2, #0xa0
	cmp r1, r2
	ble _0225749C
	strh r2, [r0, #2]
	add r4, r4, #1
	b _0225749C
_0225745E:
	add r0, r5, #0
	add r0, #0x4f
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	add r0, sp, #0
	bne _02257484
	mov r1, #2
	ldrsh r2, [r0, r1]
	add r2, #0x18
	strh r2, [r0, #2]
	mov r2, #0
	ldrsh r1, [r0, r1]
	ldrsh r2, [r6, r2]
	cmp r1, r2
	ble _0225749C
	strh r2, [r0, #2]
	add r4, r4, #1
	b _0225749C
_02257484:
	mov r1, #2
	ldrsh r2, [r0, r1]
	sub r2, #0x18
	strh r2, [r0, #2]
	mov r2, #0
	ldrsh r2, [r6, r2]
	ldrsh r1, [r0, r1]
	sub r2, #0x18
	cmp r1, r2
	bge _0225749C
	strh r2, [r0, #2]
	add r4, r4, #1
_0225749C:
	add r2, sp, #0
	mov r1, #2
	mov r3, #0
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r3]
	ldr r0, [r5, #4]
	bl FUN_0200C714
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _022574D0
	add r6, sp, #0
	mov r1, #2
	ldrsh r3, [r6, r1]
	add r1, r5, #0
	add r1, #0x25
	ldrb r2, [r1]
	ldr r1, _022574EC ; =MOD11_0225E970
	ldrsb r1, [r1, r2]
	mov r2, #0
	ldrsh r2, [r6, r2]
	sub r1, r3, r1
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	bl FUN_0200C714
_022574D0:
	cmp r4, #0
	ble _022574E8
	add r0, r5, #0
	add r0, #0x4f
	ldrb r1, [r0]
	mov r0, #2
	add r5, #0x4f
	orr r0, r1
	strb r0, [r5]
	add r0, r7, #0
	bl FUN_0200CAB4
_022574E8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022574EC: .word MOD11_0225E970

	thumb_func_start MOD11_022574F0
MOD11_022574F0: ; 0x022574F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl MOD11_0222FF68
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl MOD11_022300C4
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl MOD11_02230138
	add r4, r0, #0
	mov r0, #0x16
	mov r1, #5
	bl String_ctor
	mov r1, #0xf1
	str r0, [sp, #0x18]
	add r0, r7, #0
	lsl r1, r1, #2
	bl NewString_ReadMsgData
	add r1, r5, #0
	add r2, r5, #0
	add r1, #0x24
	add r2, #0x26
	str r0, [sp, #0x1c]
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r5, #0xc]
	bl MOD11_02230014
	bl FUN_020690E4
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl BufferBoxMonNickname
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	bl StringExpandPlaceholders
	mov r0, #0
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, sp, #0x24
	mov r2, #8
	mov r3, #2
	bl AddTextWindowTopLeftCorner
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02257630 ; =0x000E020F
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, sp, #0x24
	add r3, r1, #0
	bl AddTextPrinterParameterized3
	ldr r0, [r5, #4]
	ldr r6, [sp, #0x30]
	ldr r0, [r0]
	bl FUN_02020350
	add r4, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	add r0, r6, r0
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	ldr r1, _02257634 ; =MOD11_0225EC88
	ldr r3, [r4, #4]
	lsl r7, r0, #4
	ldrh r2, [r1, r7]
	mov r1, #0x19
	lsl r1, r1, #0x16
	add r1, r1, r2
	ldr r2, _02257638 ; =MOD11_0225EC8A
	add r0, r6, #0
	ldrh r2, [r2, r7]
	add r1, r3, r1
	bl MIi_CpuCopy16
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	ldr r1, _0225763C ; =MOD11_0225EC8C
	ldr r3, [r4, #4]
	lsl r7, r0, #4
	ldrh r2, [r1, r7]
	mov r1, #0x19
	lsl r1, r1, #0x16
	add r1, r1, r2
	ldr r2, _02257640 ; =MOD11_0225EC8E
	ldr r0, [sp, #0x20]
	ldrh r2, [r2, r7]
	add r1, r3, r1
	bl MIi_CpuCopy16
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	ldr r3, _02257644 ; =MOD11_0225EC90
	ldr r1, [r4, #4]
	lsl r2, r0, #4
	ldr r0, _02257638 ; =MOD11_0225EC8A
	ldrh r0, [r0, r2]
	add r0, r6, r0
	ldrh r6, [r3, r2]
	mov r3, #0x19
	lsl r3, r3, #0x16
	add r3, r3, r6
	add r1, r1, r3
	ldr r3, _02257648 ; =MOD11_0225EC92
	ldrh r2, [r3, r2]
	bl MIi_CpuCopy16
	add r5, #0x25
	ldrb r0, [r5]
	ldr r4, [r4, #4]
	lsl r2, r0, #4
	ldr r0, _02257640 ; =MOD11_0225EC8E
	ldrh r1, [r0, r2]
	ldr r0, [sp, #0x20]
	add r0, r0, r1
	ldr r1, _0225764C ; =MOD11_0225EC94
	ldrh r3, [r1, r2]
	mov r1, #0x19
	lsl r1, r1, #0x16
	add r1, r1, r3
	ldr r3, _02257650 ; =MOD11_0225EC96
	add r1, r4, r1
	ldrh r2, [r3, r2]
	bl MIi_CpuCopy16
	add r0, sp, #0x24
	bl RemoveWindow
	ldr r0, [sp, #0x18]
	bl String_dtor
	ldr r0, [sp, #0x1c]
	bl String_dtor
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02257630: .word 0x000E020F
_02257634: .word MOD11_0225EC88
_02257638: .word MOD11_0225EC8A
_0225763C: .word MOD11_0225EC8C
_02257640: .word MOD11_0225EC8E
_02257644: .word MOD11_0225EC90
_02257648: .word MOD11_0225EC92
_0225764C: .word MOD11_0225EC94
_02257650: .word MOD11_0225EC96

	thumb_func_start MOD11_02257654
MOD11_02257654: ; 0x02257654
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r0, #0x49
	ldrb r0, [r0]
	cmp r0, #0
	bne _02257666
	mov r0, #0x3e
	b _02257670
_02257666:
	cmp r0, #1
	bne _0225766E
	mov r0, #0x3c
	b _02257670
_0225766E:
	mov r0, #0x40
_02257670:
	bl MOD11_02257F60
	add r4, r0, #0
	mov r0, #5
	mov r1, #0x80
	bl AllocFromHeap
	add r7, r0, #0
	ldr r0, [sp]
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl FUN_02020350
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r1, _0225774C ; =MOD11_0225EAB8
	add r0, #0x25
	ldrb r0, [r0]
	lsl r2, r0, #3
	ldrh r3, [r1, r2]
	mov r1, #0x19
	lsl r1, r1, #0x16
	ldr r0, [sp, #4]
	add r1, r1, r3
	ldr r3, _02257750 ; =MOD11_0225EABA
	ldr r0, [r0, #4]
	ldrh r2, [r3, r2]
	add r0, r0, r1
	add r1, r7, #0
	bl MIi_CpuCopy16
	ldr r0, [sp]
	ldr r1, _02257754 ; =MOD11_0225EABC
	add r0, #0x25
	ldrb r0, [r0]
	lsl r2, r0, #3
	ldrh r3, [r1, r2]
	mov r1, #0x19
	ldr r0, [sp, #4]
	lsl r1, r1, #0x16
	add r1, r1, r3
	ldr r3, _02257758 ; =MOD11_0225EABE
	ldr r0, [r0, #4]
	ldrh r2, [r3, r2]
	add r0, r0, r1
	add r1, r7, #0
	add r1, #0x40
	bl MIi_CpuCopy16
	mov r2, #0
	add r1, r2, #0
_022576D6:
	mov r0, #0
	add r3, r7, r1
_022576DA:
	ldrb r5, [r4, r2]
	add r6, r4, r2
	add r0, r0, #1
	strb r5, [r3, #0x10]
	ldrb r6, [r6, #0x10]
	add r5, r3, #0
	add r5, #0x40
	strb r6, [r5]
	add r2, r2, #1
	add r3, r3, #1
	cmp r0, #0x10
	blt _022576DA
	add r1, #0x20
	add r2, #0x10
	cmp r1, #0x40
	blt _022576D6
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r0, #0x25
	ldrb r0, [r0]
	ldr r3, _0225774C ; =MOD11_0225EAB8
	ldr r1, [r1, #4]
	lsl r2, r0, #3
	ldrh r4, [r3, r2]
	mov r3, #0x19
	lsl r3, r3, #0x16
	add r3, r3, r4
	add r1, r1, r3
	ldr r3, _02257750 ; =MOD11_0225EABA
	add r0, r7, #0
	ldrh r2, [r3, r2]
	bl MIi_CpuCopy16
	ldr r0, [sp]
	ldr r3, _02257754 ; =MOD11_0225EABC
	add r0, #0x25
	str r0, [sp]
	ldrb r0, [r0]
	ldr r1, [sp, #4]
	lsl r2, r0, #3
	ldrh r4, [r3, r2]
	mov r3, #0x19
	lsl r3, r3, #0x16
	add r0, r7, #0
	ldr r1, [r1, #4]
	add r3, r3, r4
	add r1, r1, r3
	ldr r3, _02257758 ; =MOD11_0225EABE
	add r0, #0x40
	ldrh r2, [r3, r2]
	bl MIi_CpuCopy16
	add r0, r7, #0
	bl FreeToHeap
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225774C: .word MOD11_0225EAB8
_02257750: .word MOD11_0225EABA
_02257754: .word MOD11_0225EABC
_02257758: .word MOD11_0225EABE

	thumb_func_start MOD11_0225775C
MOD11_0225775C: ; 0x0225775C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	mov r0, #5
	mov r1, #0x60
	bl AllocFromHeap
	add r4, r0, #0
	mov r0, #5
	mov r1, #0xc0
	bl AllocFromHeap
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0xff
	mov r2, #0x60
	bl MI_CpuFill8
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl MOD11_022300BC
	ldr r1, [sp, #4]
	str r4, [sp]
	add r1, #0x48
	ldrb r1, [r1]
	mov r2, #3
	mov r3, #0
	bl FUN_0200BAAC
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl FUN_02020350
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	ldr r1, _0225786C ; =MOD11_0225EA28
	add r0, #0x25
	ldrb r0, [r0]
	lsl r2, r0, #3
	ldrh r3, [r1, r2]
	mov r1, #0x19
	lsl r1, r1, #0x16
	ldr r0, [sp, #8]
	add r1, r1, r3
	ldr r3, _02257870 ; =MOD11_0225EA2A
	ldr r0, [r0, #4]
	ldrh r2, [r3, r2]
	add r0, r0, r1
	add r1, r7, #0
	bl MIi_CpuCopy16
	ldr r0, [sp, #4]
	ldr r1, _02257874 ; =MOD11_0225EA2C
	add r0, #0x25
	ldrb r0, [r0]
	lsl r2, r0, #3
	ldrh r3, [r1, r2]
	mov r1, #0x19
	ldr r0, [sp, #8]
	lsl r1, r1, #0x16
	add r1, r1, r3
	ldr r3, _02257878 ; =MOD11_0225EA2E
	ldr r0, [r0, #4]
	ldrh r2, [r3, r2]
	add r0, r0, r1
	add r1, r7, #0
	add r1, #0x60
	bl MIi_CpuCopy16
	mov r2, #0
	add r1, r2, #0
_022577EE:
	mov r0, #0
	add r3, r7, r1
_022577F2:
	ldrb r5, [r4, r2]
	add r6, r4, r2
	add r0, r0, #1
	strb r5, [r3, #0x10]
	ldrb r6, [r6, #0x10]
	add r5, r3, #0
	add r5, #0x60
	strb r6, [r5]
	add r2, r2, #1
	add r3, r3, #1
	cmp r0, #0x10
	blt _022577F2
	add r1, #0x20
	add r2, #0x10
	cmp r1, #0x60
	blt _022577EE
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r0, #0x25
	ldrb r0, [r0]
	ldr r3, _0225786C ; =MOD11_0225EA28
	ldr r1, [r1, #4]
	lsl r2, r0, #3
	ldrh r5, [r3, r2]
	mov r3, #0x19
	lsl r3, r3, #0x16
	add r3, r3, r5
	add r1, r1, r3
	ldr r3, _02257870 ; =MOD11_0225EA2A
	add r0, r7, #0
	ldrh r2, [r3, r2]
	bl MIi_CpuCopy16
	ldr r0, [sp, #4]
	ldr r3, _02257874 ; =MOD11_0225EA2C
	add r0, #0x25
	str r0, [sp, #4]
	ldrb r0, [r0]
	ldr r1, [sp, #8]
	lsl r2, r0, #3
	ldrh r5, [r3, r2]
	mov r3, #0x19
	lsl r3, r3, #0x16
	add r0, r7, #0
	ldr r1, [r1, #4]
	add r3, r3, r5
	add r1, r1, r3
	ldr r3, _02257878 ; =MOD11_0225EA2E
	add r0, #0x60
	ldrh r2, [r3, r2]
	bl MIi_CpuCopy16
	add r0, r4, #0
	bl FreeToHeap
	add r0, r7, #0
	bl FreeToHeap
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0225786C: .word MOD11_0225EA28
_02257870: .word MOD11_0225EA2A
_02257874: .word MOD11_0225EA2C
_02257878: .word MOD11_0225EA2E

	thumb_func_start MOD11_0225787C
MOD11_0225787C: ; 0x0225787C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #5
	mov r1, #0x60
	bl AllocFromHeap
	mov r1, #0xff
	mov r2, #0x60
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [r5, #0xc]
	bl MOD11_022300B4
	str r4, [sp]
	add r1, r6, #0
	mov r2, #3
	mov r3, #1
	bl FUN_0200BAAC
	ldr r0, [r5, #4]
	ldr r0, [r0]
	bl FUN_02020350
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	mov r7, #0x19
	ldr r3, _022578F8 ; =MOD11_0225EA58
	lsl r2, r0, #3
	ldrh r3, [r3, r2]
	lsl r7, r7, #0x16
	ldr r1, [r6, #4]
	add r3, r7, r3
	add r1, r1, r3
	ldr r3, _022578FC ; =MOD11_0225EA5A
	add r0, r4, #0
	ldrh r2, [r3, r2]
	bl MIi_CpuCopy16
	add r5, #0x25
	ldrb r0, [r5]
	ldr r3, _02257900 ; =MOD11_0225EA5C
	ldr r1, [r6, #4]
	lsl r2, r0, #3
	ldrh r3, [r3, r2]
	ldr r0, _022578FC ; =MOD11_0225EA5A
	add r3, r7, r3
	add r1, r1, r3
	ldrh r0, [r0, r2]
	ldr r3, _02257904 ; =MOD11_0225EA5E
	ldrh r2, [r3, r2]
	add r0, r4, r0
	bl MIi_CpuCopy16
	add r0, r4, #0
	bl FreeToHeap
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022578F8: .word MOD11_0225EA58
_022578FC: .word MOD11_0225EA5A
_02257900: .word MOD11_0225EA5C
_02257904: .word MOD11_0225EA5E

	thumb_func_start MOD11_02257908
MOD11_02257908: ; 0x02257908
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #5
	mov r1, #0x60
	bl AllocFromHeap
	mov r1, #0xff
	mov r2, #0x60
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [r5, #0xc]
	bl MOD11_022300B4
	str r4, [sp]
	ldr r1, [r5, #0x2c]
	mov r2, #3
	mov r3, #0
	bl FUN_0200BAAC
	ldr r0, [r5, #4]
	ldr r0, [r0]
	bl FUN_02020350
	add r1, r0, #0
	add r5, #0x25
	ldrb r0, [r5]
	ldr r3, _02257960 ; =MOD11_0225E9F8
	ldr r1, [r1, #4]
	lsl r2, r0, #2
	ldrh r5, [r3, r2]
	mov r3, #0x19
	lsl r3, r3, #0x16
	add r3, r5, r3
	add r1, r1, r3
	ldr r3, _02257964 ; =MOD11_0225E9FA
	add r0, r4, #0
	ldrh r2, [r3, r2]
	bl MIi_CpuCopy16
	add r0, r4, #0
	bl FreeToHeap
	pop {r3, r4, r5, pc}
	.align 2, 0
_02257960: .word MOD11_0225E9F8
_02257964: .word MOD11_0225E9FA

	thumb_func_start MOD11_02257968
MOD11_02257968: ; 0x02257968
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x4b
	ldrb r0, [r0]
	cmp r0, #1
	bne _0225797C
	mov r0, #0x3b
	bl MOD11_02257F60
	b _02257982
_0225797C:
	mov r0, #0x38
	bl MOD11_02257F60
_02257982:
	add r4, r0, #0
	ldr r0, [r5, #4]
	ldr r0, [r0]
	bl FUN_02020350
	add r5, #0x25
	add r1, r0, #0
	ldrb r0, [r5]
	lsl r2, r0, #2
	add r0, r4, #0
	ldr r4, [r1, #4]
	ldr r1, _022579B0 ; =MOD11_0225E9C8
	ldrh r3, [r1, r2]
	mov r1, #0x19
	lsl r1, r1, #0x16
	add r1, r3, r1
	ldr r3, _022579B4 ; =MOD11_0225E9CA
	add r1, r4, r1
	ldrh r2, [r3, r2]
	bl MIi_CpuCopy16
	pop {r3, r4, r5, pc}
	nop
_022579B0: .word MOD11_0225E9C8
_022579B4: .word MOD11_0225E9CA

	thumb_func_start MOD11_022579B8
MOD11_022579B8: ; 0x022579B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl MOD11_02257F60
	add r4, r0, #0
	ldr r0, [r5, #4]
	ldr r0, [r0]
	bl FUN_02020350
	add r5, #0x25
	add r1, r0, #0
	ldrb r0, [r5]
	lsl r2, r0, #2
	add r0, r4, #0
	ldr r4, [r1, #4]
	ldr r1, _022579F0 ; =MOD11_0225E998
	ldrh r3, [r1, r2]
	mov r1, #0x19
	lsl r1, r1, #0x16
	add r1, r3, r1
	ldr r3, _022579F4 ; =MOD11_0225E99A
	add r1, r4, r1
	ldrh r2, [r3, r2]
	bl MIi_CpuCopy16
	pop {r3, r4, r5, pc}
	nop
_022579F0: .word MOD11_0225E998
_022579F4: .word MOD11_0225E99A

	thumb_func_start MOD11_022579F8
MOD11_022579F8: ; 0x022579F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	add r5, r1, #0
	bl MOD11_0222FF68
	add r6, r0, #0
	ldr r0, [r4, #0xc]
	bl MOD11_022300C4
	mov r1, #1
	lsl r1, r1, #0xa
	add r2, r5, #0
	tst r2, r1
	beq _02257A20
	sub r1, #0x4a
	bl NewString_ReadMsgData
	b _02257A26
_02257A20:
	add r1, #0xc4
	bl NewString_ReadMsgData
_02257A26:
	add r7, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, sp, #0x18
	mov r2, #0xd
	mov r3, #2
	bl AddTextWindowTopLeftCorner
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02257AD0 ; =0x000E020F
	add r2, r7, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, sp, #0x18
	add r3, r1, #0
	bl AddTextPrinterParameterized3
	ldr r0, [r4, #4]
	ldr r5, [sp, #0x24]
	ldr r0, [r0]
	bl FUN_02020350
	add r4, r0, #0
	mov r2, #0x1a
	mov r6, #0x19
	lsl r2, r2, #4
	lsl r6, r6, #0x16
	add r2, #0xa0
	ldr r1, [r4, #4]
	add r2, r6, r2
	add r1, r1, r2
	add r0, r5, #0
	mov r2, #0xc0
	bl MIi_CpuCopy16
	mov r2, #0xd
	mov r0, #0x1a
	lsl r2, r2, #6
	lsl r0, r0, #4
	ldr r1, [r4, #4]
	add r2, r6, r2
	add r1, r1, r2
	add r0, r5, r0
	mov r2, #0xc0
	bl MIi_CpuCopy16
	mov r2, #0xa
	lsl r2, r2, #8
	add r0, r5, #0
	ldr r1, [r4, #4]
	add r2, r6, r2
	add r1, r1, r2
	add r0, #0xc0
	mov r2, #0xe0
	bl MIi_CpuCopy16
	mov r0, #0x1a
	mov r1, #0xb
	lsl r0, r0, #4
	lsl r1, r1, #8
	add r0, r5, r0
	ldr r2, [r4, #4]
	add r1, r6, r1
	add r1, r2, r1
	add r0, #0xc0
	mov r2, #0xe0
	bl MIi_CpuCopy16
	add r0, sp, #0x18
	bl RemoveWindow
	add r0, r7, #0
	bl String_dtor
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02257AD0: .word 0x000E020F

	thumb_func_start MOD11_02257AD4
MOD11_02257AD4: ; 0x02257AD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	add r5, r1, #0
	bl MOD11_0222FF68
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0xc]
	bl MOD11_022300C4
	str r0, [sp, #0x20]
	ldr r0, [r4, #0xc]
	bl MOD11_02230138
	add r7, r0, #0
	mov r0, #0x1e
	mov r1, #5
	bl String_ctor
	mov r1, #1
	add r6, r0, #0
	lsl r1, r1, #0xa
	add r0, r5, #0
	tst r0, r1
	beq _02257B14
	ldr r0, [sp, #0x20]
	sub r1, #0x49
	bl NewString_ReadMsgData
	str r0, [sp, #0x18]
	b _02257B1E
_02257B14:
	ldr r0, [sp, #0x20]
	add r1, #0xc5
	bl NewString_ReadMsgData
	str r0, [sp, #0x18]
_02257B1E:
	mov r0, #1
	str r0, [sp]
	add r2, r4, #0
	str r0, [sp, #4]
	add r2, #0x27
	ldrb r2, [r2]
	add r0, r7, #0
	mov r1, #0
	mov r3, #2
	bl BufferIntegerAsString
	ldr r2, [sp, #0x18]
	add r0, r7, #0
	add r1, r6, #0
	bl StringExpandPlaceholders
	mov r0, #0
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x24
	mov r2, #0xd
	mov r3, #2
	bl AddTextWindowTopLeftCorner
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02257BE8 ; =0x000E020F
	add r2, r6, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, sp, #0x24
	add r3, r1, #0
	bl AddTextPrinterParameterized3
	ldr r0, [r4, #4]
	ldr r5, [sp, #0x30]
	ldr r0, [r0]
	bl FUN_02020350
	add r4, r0, #0
	mov r7, #0x19
	mov r2, #0x11
	lsl r7, r7, #0x16
	lsl r2, r2, #6
	ldr r1, [r4, #4]
	add r2, r7, r2
	add r1, r1, r2
	add r0, r5, #0
	mov r2, #0xc0
	bl MIi_CpuCopy16
	mov r2, #0x15
	mov r0, #0x1a
	lsl r2, r2, #6
	lsl r0, r0, #4
	ldr r1, [r4, #4]
	add r2, r7, r2
	add r1, r1, r2
	add r0, r5, r0
	mov r2, #0xc0
	bl MIi_CpuCopy16
	mov r2, #3
	lsl r2, r2, #0xa
	add r0, r5, #0
	ldr r1, [r4, #4]
	add r2, r7, r2
	add r1, r1, r2
	add r0, #0xc0
	mov r2, #0xe0
	bl MIi_CpuCopy16
	mov r0, #0x1a
	mov r1, #0xd
	lsl r0, r0, #4
	lsl r1, r1, #8
	add r0, r5, r0
	ldr r2, [r4, #4]
	add r1, r7, r1
	add r1, r2, r1
	add r0, #0xc0
	mov r2, #0xe0
	bl MIi_CpuCopy16
	add r0, sp, #0x24
	bl RemoveWindow
	add r0, r6, #0
	bl String_dtor
	ldr r0, [sp, #0x18]
	bl String_dtor
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02257BE8: .word 0x000E020F

	thumb_func_start MOD11_02257BEC
MOD11_02257BEC: ; 0x02257BEC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	bne _02257C10
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r3, r5, #0
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x30]
	add r3, #0x34
	bl MOD11_02257DE8
	add r6, r0, #0
	b _02257C48
_02257C10:
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x3c]
	mov r3, #0xb
	bl MOD11_02257F20
	add r1, r0, #0
	bne _02257C22
	mov r1, #1
_02257C22:
	ldr r6, [r5, #0x40]
	add r0, r6, #0
	bl _s32_div_f
	bl abs
	mov r1, #0xb
	lsl r0, r0, #0x10
	add r3, r5, #0
	str r1, [sp]
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, #0x38]
	add r2, r6, #0
	add r3, #0x44
	bl MOD11_02257DE8
	add r6, r0, #0
_02257C48:
	cmp r4, #0
	bne _02257C5A
	add r0, r5, #0
	add r0, #0x4f
	ldrb r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	cmp r0, #1
	beq _02257C64
_02257C5A:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl MOD11_02257C80
_02257C64:
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _02257C7A
	cmp r4, #0
	bne _02257C76
	mov r0, #0
	str r0, [r5, #0x34]
	b _02257C7A
_02257C76:
	mov r0, #0
	str r0, [r5, #0x44]
_02257C7A:
	add r0, r6, #0
	add sp, #8
	pop {r4, r5, r6, pc}

	thumb_func_start MOD11_02257C80
MOD11_02257C80: ; 0x02257C80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	ldr r0, [r6, #4]
	add r4, r1, #0
	ldr r0, [r0]
	bl FUN_02020350
	add r5, r0, #0
	cmp r4, #0
	beq _02257C9E
	cmp r4, #1
	beq _02257D50
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_02257C9E:
	add r0, sp, #0x10
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r3, r6, #0
	ldr r0, [r6, #0x2c]
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x30]
	add r3, #0x34
	bl MOD11_02257EA4
	mov r1, #0x30
	bl FUN_02079A24
	cmp r0, #1
	beq _02257CCE
	cmp r0, #2
	beq _02257CCA
	cmp r0, #3
	bne _02257CCE
	mov r0, #2
	b _02257CD0
_02257CCA:
	mov r0, #0xb
	b _02257CD0
_02257CCE:
	mov r0, #0x14
_02257CD0:
	bl MOD11_02257F60
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r0, #0x25
	ldrb r0, [r0]
	mov r4, #0
	lsl r1, r0, #3
	ldr r0, _02257DE0 ; =MOD11_0225EA8A
	ldrh r0, [r0, r1]
	lsr r7, r0, #5
_02257CE6:
	cmp r4, r7
	add r0, sp, #0x10
	bge _02257D16
	add r2, r6, #0
	add r2, #0x25
	ldrb r2, [r2]
	ldrb r0, [r0, r4]
	lsl r3, r2, #3
	ldr r2, _02257DE4 ; =MOD11_0225EA88
	lsl r1, r0, #5
	ldrh r3, [r2, r3]
	ldr r0, [sp, #0xc]
	mov r2, #0x19
	lsl r2, r2, #0x16
	add r0, r0, r1
	add r3, r2, r3
	lsl r2, r4, #5
	ldr r1, [r5, #4]
	add r2, r3, r2
	add r1, r1, r2
	mov r2, #0x20
	bl MIi_CpuCopy16
	b _02257D42
_02257D16:
	ldrb r0, [r0, r4]
	ldr r2, [r5, #4]
	lsl r1, r0, #5
	ldr r0, [sp, #0xc]
	add r0, r0, r1
	add r1, r6, #0
	add r1, #0x25
	ldrb r1, [r1]
	lsl r3, r1, #3
	ldr r1, _02257DE4 ; =MOD11_0225EA88
	add r1, r1, r3
	ldrh r3, [r1, #4]
	mov r1, #0x19
	lsl r1, r1, #0x16
	add r1, r1, r3
	sub r3, r4, r7
	lsl r3, r3, #5
	add r1, r1, r3
	add r1, r2, r1
	mov r2, #0x20
	bl MIi_CpuCopy16
_02257D42:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _02257CE6
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_02257D50:
	add r0, sp, #0x10
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	add r3, r6, #0
	ldr r0, [r6, #0x3c]
	ldr r1, [r6, #0x38]
	ldr r2, [r6, #0x40]
	add r3, #0x44
	bl MOD11_02257EA4
	add r6, #0x48
	ldrb r0, [r6]
	cmp r0, #0x64
	bne _02257D80
	mov r0, #0
	add r2, r0, #0
	add r1, sp, #0x10
_02257D74:
	strb r2, [r1, r0]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0xb
	blo _02257D74
_02257D80:
	mov r0, #0x1d
	bl MOD11_02257F60
	add r6, r0, #0
	mov r1, #0x19
	mov r0, #0x1a
	lsl r1, r1, #0x16
	lsl r0, r0, #6
	add r0, r1, r0
	str r0, [sp, #8]
	mov r0, #0xe
	lsl r0, r0, #8
	mov r4, #0
	add r7, r1, r0
_02257D9C:
	cmp r4, #4
	add r0, sp, #0x10
	bhs _02257DBA
	ldrb r0, [r0, r4]
	ldr r1, [sp, #8]
	lsl r2, r4, #5
	lsl r0, r0, #5
	add r1, r1, r2
	ldr r3, [r5, #4]
	add r0, r6, r0
	add r1, r3, r1
	mov r2, #0x20
	bl MIi_CpuCopy16
	b _02257DD0
_02257DBA:
	ldrb r0, [r0, r4]
	sub r2, r4, #4
	lsl r2, r2, #5
	lsl r0, r0, #5
	ldr r1, [r5, #4]
	add r2, r7, r2
	add r1, r1, r2
	add r0, r6, r0
	mov r2, #0x20
	bl MIi_CpuCopy16
_02257DD0:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xb
	blo _02257D9C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02257DE0: .word MOD11_0225EA8A
_02257DE4: .word MOD11_0225EA88

	thumb_func_start MOD11_02257DE8
MOD11_02257DE8: ; 0x02257DE8
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r2, sp, #0
	add r5, r3, #0
	ldrb r2, [r2, #0x10]
	mov r3, #2
	ldr r4, [r5]
	lsl r2, r2, #0x1b
	lsl r3, r3, #0x1e
	lsr r2, r2, #0x18
	cmp r4, r3
	bne _02257E0C
	cmp r0, r2
	bge _02257E0A
	lsl r3, r1, #8
	str r3, [r5]
	b _02257E0C
_02257E0A:
	str r1, [r5]
_02257E0C:
	sub r4, r1, r6
	bpl _02257E14
	mov r4, #0
	b _02257E1A
_02257E14:
	cmp r4, r0
	ble _02257E1A
	add r4, r0, #0
_02257E1A:
	cmp r0, r2
	bge _02257E32
	ldr r3, [r5]
	asr r1, r3, #8
	cmp r4, r1
	bne _02257E3E
	lsl r1, r3, #0x18
	lsr r1, r1, #0x18
	bne _02257E3E
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_02257E32:
	ldr r1, [r5]
	cmp r4, r1
	bne _02257E3E
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_02257E3E:
	cmp r0, r2
	bge _02257E7E
	lsl r0, r0, #8
	add r1, r2, #0
	bl _s32_div_f
	cmp r6, #0
	ldr r1, [r5]
	bge _02257E62
	add r0, r1, r0
	str r0, [r5]
	asr r0, r0, #8
	cmp r0, r4
	blt _02257EA2
	lsl r0, r4, #8
	str r0, [r5]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_02257E62:
	sub r1, r1, r0
	str r1, [r5]
	asr r0, r1, #8
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #0
	ble _02257E72
	add r0, r0, #1
_02257E72:
	cmp r0, r4
	bgt _02257EA2
	lsl r0, r4, #8
	str r0, [r5]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_02257E7E:
	cmp r6, #0
	ldr r1, [r5]
	add r0, sp, #0
	bge _02257E94
	ldrh r0, [r0, #0x14]
	add r0, r1, r0
	str r0, [r5]
	cmp r0, r4
	ble _02257EA0
	str r4, [r5]
	b _02257EA0
_02257E94:
	ldrh r0, [r0, #0x14]
	sub r0, r1, r0
	str r0, [r5]
	cmp r0, r4
	bge _02257EA0
	str r4, [r5]
_02257EA0:
	ldr r0, [r5]
_02257EA2:
	pop {r4, r5, r6, pc}

	thumb_func_start MOD11_02257EA4
MOD11_02257EA4: ; 0x02257EA4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r5, [sp, #0x18]
	sub r7, r1, r2
	bpl _02257EB2
	mov r7, #0
	b _02257EB8
_02257EB2:
	cmp r7, r6
	ble _02257EB8
	add r7, r6, #0
_02257EB8:
	add r0, sp, #8
	ldrb r4, [r0, #0x14]
	mov r1, #0
	lsl r2, r4, #3
	cmp r4, #0
	ble _02257ECE
	add r0, r1, #0
_02257EC6:
	strb r0, [r5, r1]
	add r1, r1, #1
	cmp r1, r4
	blt _02257EC6
_02257ECE:
	cmp r6, r2
	ldr r1, [r3]
	bhs _02257EE2
	add r0, r1, #0
	mul r0, r2
	add r1, r6, #0
	bl _u32_div_f
	lsr r0, r0, #8
	b _02257EEC
_02257EE2:
	add r0, r1, #0
	mul r0, r2
	add r1, r6, #0
	bl _u32_div_f
_02257EEC:
	add r2, r0, #0
	cmp r0, #0
	bne _02257EFC
	cmp r7, #0
	ble _02257EFC
	mov r2, #1
	strb r2, [r5]
	b _02257F18
_02257EFC:
	mov r3, #0
	cmp r4, #0
	ble _02257F18
	mov r1, #8
_02257F04:
	cmp r0, #8
	blo _02257F0E
	strb r1, [r5, r3]
	sub r0, #8
	b _02257F12
_02257F0E:
	strb r0, [r5, r3]
	b _02257F18
_02257F12:
	add r3, r3, #1
	cmp r3, r4
	blt _02257F04
_02257F18:
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start MOD11_02257F20
MOD11_02257F20: ; 0x02257F20
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	lsl r0, r3, #0x1b
	add r5, r2, #0
	lsr r6, r0, #0x18
	sub r4, r7, r1
	bpl _02257F32
	mov r4, #0
	b _02257F38
_02257F32:
	cmp r4, r5
	ble _02257F38
	add r4, r5, #0
_02257F38:
	add r0, r7, #0
	mul r0, r6
	add r1, r5, #0
	bl _s32_div_f
	add r7, r0, #0
	add r0, r4, #0
	mul r0, r6
	add r1, r5, #0
	bl _s32_div_f
	lsl r1, r7, #0x18
	lsl r0, r0, #0x18
	asr r1, r1, #0x18
	asr r0, r0, #0x18
	sub r0, r1, r0
	bl abs
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start MOD11_02257F60
MOD11_02257F60: ; 0x02257F60
	ldr r1, _02257F68 ; =MOD11_0225ECE8
	lsl r0, r0, #5
	add r0, r1, r0
	bx lr
	.align 2, 0
_02257F68: .word MOD11_0225ECE8

	thumb_func_start MOD11_02257F6C
MOD11_02257F6C: ; 0x02257F6C
	push {r3, lr}
	cmp r0, #5
	bhi _02257FB8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02257F7E: ; jump table
	.short _02257F8A - _02257F7E - 2 ; case 0
	.short _02257FA4 - _02257F7E - 2 ; case 1
	.short _02257FA8 - _02257F7E - 2 ; case 2
	.short _02257FAC - _02257F7E - 2 ; case 3
	.short _02257FB0 - _02257F7E - 2 ; case 4
	.short _02257FB4 - _02257F7E - 2 ; case 5
_02257F8A:
	mov r0, #2
	lsl r0, r0, #8
	tst r0, r1
	beq _02257F96
	mov r0, #7
	pop {r3, pc}
_02257F96:
	mov r0, #0x20
	tst r0, r1
	beq _02257FA0
	mov r0, #6
	pop {r3, pc}
_02257FA0:
	mov r0, #0
	pop {r3, pc}
_02257FA4:
	mov r0, #1
	pop {r3, pc}
_02257FA8:
	mov r0, #2
	pop {r3, pc}
_02257FAC:
	mov r0, #3
	pop {r3, pc}
_02257FB0:
	mov r0, #4
	pop {r3, pc}
_02257FB4:
	mov r0, #5
	pop {r3, pc}
_02257FB8:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}

	thumb_func_start MOD11_02257FC0
MOD11_02257FC0: ; 0x02257FC0
	push {r3, lr}
	cmp r0, #7
	bhi _02257FFE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02257FD2: ; jump table
	.short _02257FE2 - _02257FD2 - 2 ; case 0
	.short _02257FE6 - _02257FD2 - 2 ; case 1
	.short _02257FEA - _02257FD2 - 2 ; case 2
	.short _02257FEE - _02257FD2 - 2 ; case 3
	.short _02257FF2 - _02257FD2 - 2 ; case 4
	.short _02257FF6 - _02257FD2 - 2 ; case 5
	.short _02257FFA - _02257FD2 - 2 ; case 6
	.short _02257FFA - _02257FD2 - 2 ; case 7
_02257FE2:
	ldr r0, _02258008 ; =MOD11_0225EBEC
	pop {r3, pc}
_02257FE6:
	ldr r0, _0225800C ; =MOD11_0225EC20
	pop {r3, pc}
_02257FEA:
	ldr r0, _02258010 ; =MOD11_0225EAE8
	pop {r3, pc}
_02257FEE:
	ldr r0, _02258014 ; =MOD11_0225EB1C
	pop {r3, pc}
_02257FF2:
	ldr r0, _02258018 ; =MOD11_0225EB84
	pop {r3, pc}
_02257FF6:
	ldr r0, _0225801C ; =MOD11_0225EC54
	pop {r3, pc}
_02257FFA:
	ldr r0, _02258020 ; =MOD11_0225EBB8
	pop {r3, pc}
_02257FFE:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	nop
_02258008: .word MOD11_0225EBEC
_0225800C: .word MOD11_0225EC20
_02258010: .word MOD11_0225EAE8
_02258014: .word MOD11_0225EB1C
_02258018: .word MOD11_0225EB84
_0225801C: .word MOD11_0225EC54
_02258020: .word MOD11_0225EBB8

	thumb_func_start MOD11_02258024
MOD11_02258024: ; 0x02258024
	push {r3, lr}
	cmp r0, #7
	bhi _0225804E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02258036: ; jump table
	.short _02258046 - _02258036 - 2 ; case 0
	.short _0225804A - _02258036 - 2 ; case 1
	.short _02258046 - _02258036 - 2 ; case 2
	.short _0225804A - _02258036 - 2 ; case 3
	.short _02258046 - _02258036 - 2 ; case 4
	.short _0225804A - _02258036 - 2 ; case 5
	.short _02258046 - _02258036 - 2 ; case 6
	.short _02258046 - _02258036 - 2 ; case 7
_02258046:
	ldr r0, _02258058 ; =MOD11_0225EB50
	pop {r3, pc}
_0225804A:
	mov r0, #0
	pop {r3, pc}
_0225804E:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	nop
_02258058: .word MOD11_0225EB50

	thumb_func_start MOD11_0225805C
MOD11_0225805C: ; 0x0225805C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0
	strb r0, [r6]
	mov r0, #5
	mov r1, #0xc
	bl AllocFromHeap
	mov r1, #0
	mov r2, #0xc
	add r4, r0, #0
	bl MI_CpuFill8
	mov r2, #0xfa
	str r5, [r4]
	ldr r0, _0225808C ; =MOD11_02258090
	add r1, r4, #0
	lsl r2, r2, #2
	str r6, [r4, #4]
	bl FUN_0200CA44
	pop {r4, r5, r6, pc}
	nop
_0225808C: .word MOD11_02258090

	thumb_func_start MOD11_02258090
MOD11_02258090: ; 0x02258090
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r7, r0, #0
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	bl MOD11_02230080
	add r5, r0, #0
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	bl MOD11_022300CC
	add r6, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _022580BC
	cmp r0, #1
	beq _022580DA
	cmp r0, #2
	beq _02258112
	b _0225814A
_022580BC:
	ldr r1, _02258174 ; =0x00004E27
	add r0, r5, #0
	mov r2, #1
	bl FUN_0200C344
	add r5, r0, #0
	ldr r0, [r4]
	add r1, r5, #0
	ldr r0, [r0, #4]
	bl FUN_0200C66C
	strb r5, [r4, #9]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
_022580DA:
	mov r0, #0xa
	ldrsb r1, [r4, r0]
	add r1, r1, #4
	strb r1, [r4, #0xa]
	ldrsb r0, [r4, r0]
	cmp r0, #0x10
	blt _022580F2
	mov r0, #0x10
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
_022580F2:
	ldrb r0, [r4, #0xa]
	mov r1, #2
	mov r3, #1
	str r0, [sp]
	ldr r0, _02258178 ; =0x000073A5
	str r0, [sp, #4]
	ldrb r2, [r4, #9]
	add r0, r6, #0
	lsl r2, r2, #4
	add r2, #0xf
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl BlendPaletteUnfaded
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02258112:
	mov r0, #0xa
	ldrsb r1, [r4, r0]
	sub r1, r1, #4
	strb r1, [r4, #0xa]
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bgt _0225812A
	mov r0, #0
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
_0225812A:
	ldrb r0, [r4, #0xa]
	mov r1, #2
	mov r3, #1
	str r0, [sp]
	ldr r0, _02258178 ; =0x000073A5
	str r0, [sp, #4]
	ldrb r2, [r4, #9]
	add r0, r6, #0
	lsl r2, r2, #4
	add r2, #0xf
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl BlendPaletteUnfaded
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0225814A:
	ldr r1, _0225817C ; =0x00004E26
	add r0, r5, #0
	mov r2, #1
	bl FUN_0200C344
	add r1, r0, #0
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl FUN_0200C66C
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0]
	add r0, r4, #0
	bl FreeToHeap
	add r0, r7, #0
	bl FUN_0200CAB4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02258174: .word 0x00004E27
_02258178: .word 0x000073A5
_0225817C: .word 0x00004E26

	thumb_func_start MOD11_02258180
MOD11_02258180: ; 0x02258180
	bx lr
	.align 2, 0

	thumb_func_start MOD11_02258184
MOD11_02258184: ; 0x02258184
	bx lr
	.align 2, 0

	thumb_func_start MOD11_02258188
MOD11_02258188: ; 0x02258188
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	bne _022581A6
	add r0, r4, #0
	mov r1, #0
	add r0, #0x54
	strh r1, [r0]
	ldr r0, _022581A8 ; =MOD11_022581D4
	ldr r2, _022581AC ; =0x000003F2
	add r1, r4, #0
	bl FUN_0200CA44
	str r0, [r4, #0x50]
_022581A6:
	pop {r4, pc}
	.align 2, 0
_022581A8: .word MOD11_022581D4
_022581AC: .word 0x000003F2

	thumb_func_start MOD11_022581B0
MOD11_022581B0: ; 0x022581B0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _022581C2
	bl FUN_0200CAB4
	mov r0, #0
	str r0, [r4, #0x50]
_022581C2:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x54
	strh r1, [r0]
	add r0, r4, #0
	add r2, r1, #0
	bl MOD11_022572C8
	pop {r4, pc}

	thumb_func_start MOD11_022581D4
MOD11_022581D4: ; 0x022581D4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r1, #0x54
	ldrh r2, [r1]
	add r1, r4, #0
	add r1, #0x54
	add r2, #0x14
	strh r2, [r1]
	add r1, r4, #0
	add r1, #0x54
	ldrh r2, [r1]
	mov r1, #0x5a
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #0x54
	cmp r2, r1
	blo _022581FC
	ldrh r2, [r0]
	sub r1, r2, r1
	strh r1, [r0]
_022581FC:
	add r0, r4, #0
	add r0, #0x54
	ldrh r0, [r0]
	bl Sin
	mov r2, #6
	asr r1, r0, #0x1f
	lsl r2, r2, #0xa
	mov r3, #0
	bl _ll_mul
	mov r2, #2
	add r3, r0, #0
	add r5, r1, #0
	mov r1, #0
	lsl r2, r2, #0xa
	add r0, r4, #0
	add r3, r3, r2
	adc r5, r1
	lsl r2, r5, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	asr r2, r2, #0xc
	bl MOD11_022572C8
	pop {r3, r4, r5, pc}
	.align 2, 0

	thumb_func_start MOD11_02258238
MOD11_02258238: ; 0x02258238
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl MOD11_02230078
	str r0, [sp, #0x20]
	ldr r0, [r5, #4]
	bl MOD11_02230080
	add r7, r0, #0
	ldr r0, [r5, #4]
	bl MOD11_02230C68
	add r6, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #0
	ldrb r0, [r5, #9]
	bne _02258274
	lsl r1, r0, #1
	ldr r0, _02258320 ; =MOD11_0225F5C0
	ldrh r3, [r0, r1]
	ldr r0, _02258324 ; =0x00004E2D
	mov r1, #0x58
	str r1, [sp, #0x1c]
	add r4, r0, #0
	mov r1, #0x59
	sub r4, #8
	str r1, [sp, #0x18]
	b _02258288
_02258274:
	lsl r1, r0, #1
	ldr r0, _02258328 ; =MOD11_0225F5A8
	ldrh r3, [r0, r1]
	ldr r0, _0225832C ; =0x00004E2E
	mov r1, #0x5b
	str r1, [sp, #0x1c]
	add r4, r0, #0
	mov r1, #0x5c
	sub r4, #8
	str r1, [sp, #0x18]
_02258288:
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	add r1, r7, #0
	mov r2, #0x1b
	bl FUN_0200C00C
	ldr r0, [r5, #4]
	bl MOD11_022300CC
	mov r1, #0x1b
	str r1, [sp]
	ldrb r1, [r5, #9]
	mov r2, #6
	add r3, r1, #0
	mul r3, r2
	ldr r2, _02258330 ; =MOD11_0225F5D8
	lsl r1, r6, #1
	add r2, r2, r3
	ldrh r1, [r1, r2]
	ldr r2, [sp, #0x20]
	add r3, r7, #0
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r1, _02258334 ; =0x00004E29
	str r1, [sp, #0x14]
	mov r1, #2
	bl FUN_0200C0DC
	ldr r0, [r5, #4]
	bl MOD11_022300CC
	mov r1, #0
	str r1, [sp]
	mov r1, #0x20
	str r1, [sp, #4]
	mov r1, #0x70
	str r1, [sp, #8]
	ldrb r2, [r5, #9]
	mov r3, #6
	lsl r5, r6, #1
	mul r3, r2
	ldr r2, _02258330 ; =MOD11_0225F5D8
	mov r1, #0x1b
	add r2, r2, r3
	ldrh r2, [r5, r2]
	mov r3, #5
	bl PaletteData_LoadNarc
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x1b
	str r4, [sp, #4]
	bl FUN_0200C124
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #0x18]
	add r1, r7, #0
	mov r2, #0x1b
	str r4, [sp, #4]
	bl FUN_0200C13C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02258320: .word MOD11_0225F5C0
_02258324: .word 0x00004E2D
_02258328: .word MOD11_0225F5A8
_0225832C: .word 0x00004E2E
_02258330: .word MOD11_0225F5D8
_02258334: .word 0x00004E29

	thumb_func_start MOD11_02258338
MOD11_02258338: ; 0x02258338
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl MOD11_02230078
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl MOD11_02230080
	add r1, r0, #0
	add r0, r5, #0
	ldrb r3, [r4, #8]
	mov r2, #0x34
	ldr r5, _02258368 ; =MOD11_0225F61C
	mul r2, r3
	add r2, r5, r2
	bl FUN_0200C154
	str r0, [r4]
	ldr r0, [r0]
	bl FUN_0200C59C
	pop {r3, r4, r5, pc}
	nop
_02258368: .word MOD11_0225F61C

	thumb_func_start MOD11_0225836C
MOD11_0225836C: ; 0x0225836C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0225837E
	bl FUN_0200C3DC
	mov r0, #0
	str r0, [r4]
_0225837E:
	pop {r4, pc}

	thumb_func_start MOD11_02258380
MOD11_02258380: ; 0x02258380
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl MOD11_02230080
	add r4, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #0
	bne _02258396
	ldr r1, _022583BC ; =0x00004E2D
	b _02258398
_02258396:
	ldr r1, _022583C0 ; =0x00004E2E
_02258398:
	add r5, r1, #0
	add r0, r4, #0
	sub r5, #8
	bl FUN_0200C358
	ldr r1, _022583C4 ; =0x00004E29
	add r0, r4, #0
	bl FUN_0200C368
	add r0, r4, #0
	add r1, r5, #0
	bl FUN_0200C378
	add r0, r4, #0
	add r1, r5, #0
	bl FUN_0200C388
	pop {r3, r4, r5, pc}
	.align 2, 0
_022583BC: .word 0x00004E2D
_022583C0: .word 0x00004E2E
_022583C4: .word 0x00004E29

	thumb_func_start MOD11_022583C8
MOD11_022583C8: ; 0x022583C8
	push {r3, lr}
	ldr r0, [r0]
	cmp r0, #0
	beq _022583D4
	bl FUN_0200C644
_022583D4:
	pop {r3, pc}
	.align 2, 0

	thumb_func_start MOD11_022583D8
MOD11_022583D8: ; 0x022583D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #0
	add r1, r5, #0
	mov r2, #0x10
	add r7, r3, #0
	bl MIi_CpuClearFast
	str r4, [r5, #4]
	strb r6, [r5, #8]
	strb r7, [r5, #9]
	cmp r7, #0xc
	blt _022583FE
	bl GF_AssertFail
	mov r0, #0
	strb r0, [r5, #9]
_022583FE:
	add r0, r5, #0
	bl MOD11_02258238
	add r0, r5, #0
	bl MOD11_02258338
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD11_0225840C
MOD11_0225840C: ; 0x0225840C
	push {r4, lr}
	add r4, r0, #0
	bl MOD11_0225836C
	add r0, r4, #0
	bl MOD11_02258380
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x10
	bl MIi_CpuClearFast
	pop {r4, pc}
	.align 2, 0

	thumb_func_start MOD11_02258428
MOD11_02258428: ; 0x02258428
	push {r4, lr}
	mov r1, #7
	mov r0, #5
	lsl r1, r1, #8
	bl AllocFromHeap
	mov r2, #7
	mov r1, #0
	lsl r2, r2, #8
	add r4, r0, #0
	bl MI_CpuFill8
	mov r1, #0
	ldr r0, _0225844C ; =0x0000069F
	mvn r1, r1
	strb r1, [r4, r0]
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0225844C: .word 0x0000069F

	thumb_func_start MOD11_02258450
MOD11_02258450: ; 0x02258450
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r6, _022584A4 ; =MOD11_0225F97C
	add r5, r0, #0
	add r7, r4, #0
_0225845A:
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, r6, #0
	add r3, r7, #0
	bl InitBgFromTemplate
	add r1, r4, #4
	lsl r1, r1, #0x18
	ldr r2, _022584A8 ; =0x000002FF
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl BgFillTilemapBufferAndCommit
	add r1, r4, #4
	lsl r1, r1, #0x18
	mov r2, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl BgSetPosTextAndCommit
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #3
	mov r3, #0
	bl BgSetPosTextAndCommit
	add r4, r4, #1
	add r6, #0x1c
	cmp r4, #4
	blo _0225845A
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022584A4: .word MOD11_0225F97C
_022584A8: .word 0x000002FF

	thumb_func_start MOD11_022584AC
MOD11_022584AC: ; 0x022584AC
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_022584B4:
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #0
	bl ToggleBgLayer
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl FreeBgTilemapBuffer
	add r4, r4, #1
	cmp r4, #4
	blo _022584B4
	pop {r4, r5, r6, pc}

	thumb_func_start MOD11_022584D4
MOD11_022584D4: ; 0x022584D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	add r5, r1, #0
	bl MOD11_02258428
	add r6, r0, #0
	ldr r0, _0225863C ; =0x000006A1
	str r4, [r6]
	strb r5, [r6, r0]
	add r0, r4, #0
	bl MOD11_022300CC
	str r0, [sp, #0x10]
	mov r0, #0xd
	mov r1, #5
	bl FUN_02011744
	ldr r2, _02258640 ; =0x000004C8
	add r1, r6, #0
	str r0, [r6, r2]
	ldr r0, _02258644 ; =MOD11_0225B794
	add r2, #0x56
	bl FUN_0200CA44
	ldr r1, _02258648 ; =0x000006AC
	mov r7, #2
	str r0, [r6, r1]
	mov r4, #0
	lsl r7, r7, #0xa
	b _0225854E
_02258512:
	mov r0, #5
	add r1, r7, #0
	bl AllocFromHeap
	lsl r1, r4, #2
	add r1, r6, r1
	str r0, [r1, #0x3c]
	mov r0, #5
	str r0, [sp]
	ldr r1, _0225864C ; =MOD11_0225F6FC
	lsl r2, r4, #1
	ldrh r1, [r1, r2]
	mov r0, #7
	mov r2, #1
	add r3, sp, #0x18
	bl GfGfxLoader_GetScrnData
	add r5, r0, #0
	lsl r0, r4, #2
	add r0, r6, r0
	ldr r1, [r0, #0x3c]
	ldr r0, [sp, #0x18]
	add r2, r7, #0
	add r0, #0xc
	bl MIi_CpuCopy32
	add r0, r5, #0
	bl FreeToHeap
	add r4, r4, #1
_0225854E:
	cmp r4, #7
	blt _02258512
	mov r1, #2
	mov r0, #5
	lsl r1, r1, #8
	bl AllocFromHeap
	str r0, [r6, #0x58]
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	mov r1, #7
	mov r2, #0xc3
	mov r3, #5
	bl PaletteData_LoadNarc
	ldr r0, [sp, #0x10]
	mov r1, #1
	bl PaletteData_GetUnfadedBuf
	mov r2, #2
	ldr r1, [r6, #0x58]
	lsl r2, r2, #8
	bl MIi_CpuCopy16
	add r5, r6, #0
	mov r7, #0x46
	mov r4, #0
	add r5, #0x68
	lsl r7, r7, #2
	b _022585A2
_02258592:
	add r0, r4, #0
	mul r0, r7
	add r0, r5, r0
	mov r1, #0xff
	mov r2, #0x18
	bl MI_CpuFill8
	add r4, r4, #1
_022585A2:
	cmp r4, #4
	blt _02258592
	mov r0, #0
	str r0, [sp, #0xc]
	mov r7, #6
	b _022585DE
_022585AE:
	mov r0, #0x46
	ldr r1, [sp, #0xc]
	lsl r0, r0, #2
	mul r0, r1
	mov r5, #0
	add r4, r6, r0
	b _022585D4
_022585BC:
	add r0, r7, #0
	bl FUN_020799E8
	add r1, r0, #0
	mov r0, #5
	bl AllocFromHeap
	lsl r1, r5, #2
	add r1, r4, r1
	add r1, #0x80
	str r0, [r1]
	add r5, r5, #1
_022585D4:
	cmp r5, #4
	blt _022585BC
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
_022585DE:
	ldr r0, [sp, #0xc]
	cmp r0, #4
	blt _022585AE
	mov r0, #5
	mov r1, #0x20
	bl AllocFromHeap
	str r0, [r6, #0x5c]
	mov r0, #5
	mov r1, #0x20
	bl AllocFromHeap
	str r0, [r6, #0x60]
	ldr r1, [r6, #0x5c]
	ldr r0, [r6, #0x58]
	mov r2, #0x20
	bl MIi_CpuCopy16
	mov r0, #7
	mov r1, #0xca
	add r2, sp, #0x14
	mov r3, #5
	bl GfGfxLoader_GetPlttData
	add r4, r0, #0
	ldr r0, [sp, #0x14]
	ldr r1, [r6, #0x60]
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	bl MIi_CpuCopy16
	add r0, r4, #0
	bl FreeToHeap
	bl FUN_02002BE4
	bl FUN_02002C04
	ldr r0, _02258650 ; =MOD11_0225B824
	ldr r2, _02258654 ; =0x0000D6D8
	add r1, r6, #0
	bl FUN_0200CA44
	str r0, [r6, #0x64]
	add r0, r6, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0225863C: .word 0x000006A1
_02258640: .word 0x000004C8
_02258644: .word MOD11_0225B794
_02258648: .word 0x000006AC
_0225864C: .word MOD11_0225F6FC
_02258650: .word MOD11_0225B824
_02258654: .word 0x0000D6D8

	thumb_func_start MOD11_02258658
MOD11_02258658: ; 0x02258658
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl MOD11_0225ACB0
	add r0, r6, #0
	bl MOD11_02258B10
	add r0, r6, #0
	bl MOD11_022587A8
	ldr r0, _022586B4 ; =0x000004C8
	ldr r0, [r6, r0]
	bl FUN_020117BC
	ldr r0, _022586B8 ; =0x000006AC
	ldr r0, [r6, r0]
	bl FUN_0200CAB4
	mov r4, #0
	add r5, r6, #0
_02258680:
	ldr r0, [r5, #0x3c]
	bl FreeToHeap
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #7
	blt _02258680
	ldr r0, [r6, #0x58]
	bl FreeToHeap
	add r0, r6, #0
	bl MOD11_0225A6B0
	ldr r0, [r6, #0x5c]
	bl FreeToHeap
	ldr r0, [r6, #0x60]
	bl FreeToHeap
	ldr r0, [r6, #0x64]
	bl FUN_0200CAB4
	add r0, r6, #0
	bl FreeToHeap
	pop {r4, r5, r6, pc}
	.align 2, 0
_022586B4: .word 0x000004C8
_022586B8: .word 0x000006AC

	thumb_func_start MOD11_022586BC
MOD11_022586BC: ; 0x022586BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	ldr r0, [r7]
	bl MOD11_02230078
	add r6, r0, #0
	ldr r0, [r7]
	bl MOD11_02230080
	add r4, r0, #0
	ldr r0, [r7]
	bl MOD11_0222FF68
	add r5, r0, #0
	ldr r0, [r7]
	bl MOD11_022300CC
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #7
	mov r1, #0x11
	add r2, r5, #0
	mov r3, #4
	bl GfGfxLoader_LoadCharData
	ldr r2, _02258790 ; =0x00004E2D
	add r0, r6, #0
	add r1, r4, #0
	add r3, r2, #0
	bl FUN_0206E1D4
	ldr r0, [r7]
	bl MOD11_022300CC
	mov r1, #2
	str r1, [sp]
	ldr r1, _02258794 ; =0x00004E30
	add r2, r6, #0
	str r1, [sp, #4]
	mov r1, #3
	add r3, r4, #0
	bl FUN_0206E198
	mov r5, #0
_02258726:
	ldr r0, _02258798 ; =0x00004E35
	add r1, r4, #0
	add r0, r5, r0
	str r0, [sp]
	add r0, r6, #0
	mov r2, #2
	mov r3, #0
	bl FUN_0206E130
	add r5, r5, #1
	cmp r5, #4
	blt _02258726
	ldr r0, [r7]
	bl MOD11_0222FF74
	mov r1, #1
	lsl r1, r1, #0xa
	tst r0, r1
	beq _0225878C
	ldr r0, _0225879C ; =0x00004E40
	ldr r3, _022587A0 ; =0x00004FB2
	str r0, [sp]
	add r0, r3, #0
	str r3, [sp, #4]
	sub r0, #0xb
	str r0, [sp, #8]
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	add r1, r4, #0
	add r3, r3, #6
	bl MOD11_0225D6A4
	ldr r0, _0225879C ; =0x00004E40
	ldr r3, _022587A0 ; =0x00004FB2
	str r0, [sp]
	add r0, r3, #0
	str r3, [sp, #4]
	sub r0, #0xb
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #5
	add r3, r3, #6
	bl MOD11_0225D73C
	ldr r1, _022587A4 ; =0x000006F8
	str r0, [r7, r1]
_0225878C:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02258790: .word 0x00004E2D
_02258794: .word 0x00004E30
_02258798: .word 0x00004E35
_0225879C: .word 0x00004E40
_022587A0: .word 0x00004FB2
_022587A4: .word 0x000006F8

	thumb_func_start MOD11_022587A8
MOD11_022587A8: ; 0x022587A8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7]
	bl MOD11_02230078
	ldr r0, [r7]
	bl MOD11_02230080
	ldr r6, _02258808 ; =0x00004E35
	add r5, r0, #0
	mov r4, #0
_022587BE:
	add r0, r5, #0
	add r1, r4, r6
	bl FUN_0206E21C
	add r4, r4, #1
	cmp r4, #4
	blt _022587BE
	ldr r1, _0225880C ; =0x00004E30
	add r0, r5, #0
	bl FUN_0206E224
	ldr r1, _02258810 ; =0x00004E2D
	add r0, r5, #0
	add r2, r1, #0
	bl FUN_0206E22C
	ldr r0, [r7]
	bl MOD11_0222FF74
	mov r1, #1
	lsl r1, r1, #0xa
	tst r0, r1
	beq _02258806
	ldr r0, _02258814 ; =0x000006F8
	ldr r0, [r7, r0]
	bl MOD11_0225D7B8
	ldr r3, _02258818 ; =0x00004FA7
	ldr r2, _0225881C ; =0x00004E40
	add r1, r3, #0
	str r3, [sp]
	add r0, r5, #0
	add r1, #0x11
	add r3, #0xb
	bl MOD11_0225D714
_02258806:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02258808: .word 0x00004E35
_0225880C: .word 0x00004E30
_02258810: .word 0x00004E2D
_02258814: .word 0x000006F8
_02258818: .word 0x00004FA7
_0225881C: .word 0x00004E40

	thumb_func_start MOD11_02258820
MOD11_02258820: ; 0x02258820
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r7, r0, #0
	str r1, [sp, #0x18]
	str r2, [sp, #0x1c]
	cmp r3, #0
	beq _0225883A
	add r1, r7, #0
	add r0, r3, #0
	add r1, #0x18
	mov r2, #0x22
	bl MI_CpuCopy8
_0225883A:
	ldr r0, _0225893C ; =0x000006A2
	mov r1, #0
	strb r1, [r7, r0]
	ldr r0, [r7]
	bl MOD11_0222FF68
	str r0, [sp, #0x28]
	ldr r0, [r7]
	bl MOD11_02230078
	str r0, [sp, #0x24]
	ldr r0, [r7]
	bl MOD11_02230080
	str r0, [sp, #0x20]
	ldr r0, _02258940 ; =0x0000069F
	ldrsb r2, [r7, r0]
	mov r0, #0
	mvn r0, r0
	cmp r2, r0
	bne _0225886C
	mov r0, #1
	str r0, [sp, #0x1c]
	mov r5, #0
	b _02258874
_0225886C:
	mov r0, #0x30
	ldr r1, _02258944 ; =MOD11_0225FAAC
	mul r0, r2
	add r5, r1, r0
_02258874:
	ldr r0, [sp, #0x18]
	mov r1, #0x30
	ldr r2, _02258944 ; =MOD11_0225FAAC
	mul r1, r0
	add r0, r2, r1
	str r0, [sp, #0x2c]
	ldr r0, [r7]
	bl MOD11_022300CC
	mov r1, #2
	lsl r1, r1, #8
	str r1, [sp]
	ldr r1, [r7, #0x58]
	mov r2, #1
	mov r3, #0
	bl PaletteData_LoadPalette
	ldr r6, [sp, #0x2c]
	mov r4, #0
_0225889A:
	ldrh r2, [r6, #4]
	ldr r0, _02258948 ; =0x0000FFFF
	cmp r2, r0
	beq _022588D0
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	beq _022588AE
	ldrh r0, [r5, #4]
	cmp r2, r0
	beq _022588D0
_022588AE:
	lsl r2, r2, #2
	add r1, r4, #4
	add r2, r7, r2
	lsl r1, r1, #0x18
	mov r3, #2
	ldr r0, [sp, #0x28]
	ldr r2, [r2, #0x3c]
	lsr r1, r1, #0x18
	lsl r3, r3, #0xa
	bl BG_LoadScreenTilemapData
	add r1, r4, #4
	lsl r1, r1, #0x18
	ldr r0, [sp, #0x28]
	lsr r1, r1, #0x18
	bl ScheduleBgTilemapBufferTransfer
_022588D0:
	add r4, r4, #1
	add r6, r6, #2
	add r5, r5, #2
	cmp r4, #4
	blt _0225889A
	ldr r0, [r7]
	bl MOD11_022300CC
	mov r1, #0x1b
	str r1, [sp]
	mov r1, #0x24
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #7
	str r1, [sp, #0xc]
	mov r1, #2
	str r1, [sp, #0x10]
	ldr r1, _0225894C ; =0x00004E33
	ldr r2, [sp, #0x24]
	str r1, [sp, #0x14]
	ldr r3, [sp, #0x20]
	mov r1, #3
	bl FUN_0200C0DC
	ldr r1, _02258940 ; =0x0000069F
	ldr r0, [sp, #0x18]
	mov r2, #0xf
	strb r0, [r7, r1]
	mov r0, #4
	str r0, [sp]
	ldr r0, _02258950 ; =0x04001050
	mov r1, #2
	mov r3, #0x1b
	bl G2x_SetBlendAlpha_
	add r0, r7, #0
	bl MOD11_0225ACB0
	ldr r0, [sp, #0x2c]
	ldr r3, [r0, #0x28]
	cmp r3, #0
	beq _0225892E
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	add r0, r7, #0
	blx r3
_0225892E:
	ldr r0, _02258954 ; =MOD11_0225B700
	add r1, r7, #0
	mov r2, #0xa
	bl FUN_0200CA98
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225893C: .word 0x000006A2
_02258940: .word 0x0000069F
_02258944: .word MOD11_0225FAAC
_02258948: .word 0x0000FFFF
_0225894C: .word 0x00004E33
_02258950: .word 0x04001050
_02258954: .word MOD11_0225B700

	thumb_func_start MOD11_02258958
MOD11_02258958: ; 0x02258958
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r1, _02258ADC ; =0x000005D4
	str r0, [sp, #0x14]
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _02258970
	ldr r0, [sp, #0x14]
	add r1, #0x18
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02258974
_02258970:
	bl GF_AssertFail
_02258974:
	ldr r0, [sp, #0x14]
	ldr r0, [r0]
	bl MOD11_02230078
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	ldr r0, [r0]
	bl MOD11_02230080
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _02258AE0 ; =0x00004E33
	add r1, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r2, #0x1b
	mov r3, #0x90
	bl FUN_0200C00C
	mov r0, #1
	str r0, [sp]
	ldr r0, _02258AE4 ; =0x00004E2B
	add r1, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	mov r2, #0x1b
	mov r3, #0x8f
	bl FUN_0200C124
	mov r0, #1
	str r0, [sp]
	ldr r0, _02258AE4 ; =0x00004E2B
	add r1, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	mov r2, #0x1b
	mov r3, #0x91
	bl FUN_0200C13C
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _02258AE8 ; =0x00004E34
	add r1, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r2, #0x1b
	mov r3, #0x8d
	bl FUN_0200C00C
	mov r0, #1
	str r0, [sp]
	ldr r0, _02258AEC ; =0x00004E2C
	add r1, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	mov r2, #0x1b
	mov r3, #0x8c
	bl FUN_0200C124
	mov r0, #1
	str r0, [sp]
	ldr r0, _02258AEC ; =0x00004E2C
	add r1, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	mov r2, #0x1b
	mov r3, #0x8e
	bl FUN_0200C13C
	mov r0, #0
	ldr r4, [sp, #0x14]
	str r0, [sp, #0x1c]
	mov r6, #0xc
	mov r5, #0xf6
_02258A12:
	ldr r0, [sp, #0x18]
	ldr r2, _02258AF0 ; =MOD11_0225F8AC
	add r1, r7, #0
	bl FUN_0200C154
	ldr r1, _02258ADC ; =0x000005D4
	mov r3, #0x11
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	lsl r1, r6, #0x10
	ldr r0, [r0]
	asr r1, r1, #0x10
	mov r2, #0xd
	lsl r3, r3, #0x10
	bl FUN_0200C720
	ldr r0, _02258ADC ; =0x000005D4
	mov r1, #1
	ldr r0, [r4, r0]
	bl FUN_0200C840
	ldr r0, [sp, #0x18]
	ldr r2, _02258AF4 ; =MOD11_0225F8E0
	add r1, r7, #0
	bl FUN_0200C154
	ldr r1, _02258AF8 ; =0x000005EC
	mov r3, #0x11
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	lsl r1, r5, #0x10
	ldr r0, [r0]
	asr r1, r1, #0x10
	mov r2, #9
	lsl r3, r3, #0x10
	bl FUN_0200C720
	ldr r0, [sp, #0x1c]
	add r4, r4, #4
	add r0, r0, #1
	add r6, #0x13
	sub r5, #0xc
	str r0, [sp, #0x1c]
	cmp r0, #6
	blt _02258A12
	ldr r0, [sp, #0x14]
	bl MOD11_02258E30
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02258A82
	bl GF_AssertFail
_02258A82:
	ldr r0, _02258AFC ; =MOD11_02258BE0
	ldr r1, [sp, #0x14]
	ldr r2, _02258B00 ; =0x00000514
	bl FUN_0200CA44
	ldr r1, [sp, #0x14]
	str r0, [r1, #4]
	add r0, r1, #0
	ldr r0, [r0]
	bl MOD11_022300CC
	add r2, r0, #0
	ldr r0, _02258B04 ; =0x00004E3F
	ldr r3, _02258B08 ; =0x00004FB1
	str r0, [sp]
	add r0, r3, #0
	str r3, [sp, #4]
	sub r0, #0xb
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	add r1, r7, #0
	add r3, r3, #6
	bl MOD11_0225D3EC
	ldr r0, _02258B04 ; =0x00004E3F
	ldr r3, _02258B08 ; =0x00004FB1
	str r0, [sp]
	add r0, r3, #0
	str r3, [sp, #4]
	sub r0, #0xb
	str r0, [sp, #8]
	mov r2, #5
	str r2, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	add r1, r7, #0
	add r3, r3, #6
	bl MOD11_0225D484
	ldr r2, _02258B0C ; =0x000006EC
	ldr r1, [sp, #0x14]
	str r0, [r1, r2]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02258ADC: .word 0x000005D4
_02258AE0: .word 0x00004E33
_02258AE4: .word 0x00004E2B
_02258AE8: .word 0x00004E34
_02258AEC: .word 0x00004E2C
_02258AF0: .word MOD11_0225F8AC
_02258AF4: .word MOD11_0225F8E0
_02258AF8: .word 0x000005EC
_02258AFC: .word MOD11_02258BE0
_02258B00: .word 0x00000514
_02258B04: .word 0x00004E3F
_02258B08: .word 0x00004FB1
_02258B0C: .word 0x000006EC

	thumb_func_start MOD11_02258B10
MOD11_02258B10: ; 0x02258B10
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _02258BBC ; =0x000005D4
	ldr r1, [r6, r0]
	cmp r1, #0
	beq _02258B24
	add r0, #0x18
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _02258B28
_02258B24:
	bl GF_AssertFail
_02258B28:
	ldr r0, [r6]
	bl MOD11_02230078
	ldr r0, [r6]
	bl MOD11_02230080
	ldr r1, _02258BC0 ; =0x00004E33
	add r7, r0, #0
	bl FUN_0200C358
	ldr r1, _02258BC4 ; =0x00004E2B
	add r0, r7, #0
	bl FUN_0200C378
	ldr r1, _02258BC4 ; =0x00004E2B
	add r0, r7, #0
	bl FUN_0200C388
	ldr r1, _02258BC8 ; =0x00004E34
	add r0, r7, #0
	bl FUN_0200C358
	ldr r1, _02258BCC ; =0x00004E2C
	add r0, r7, #0
	bl FUN_0200C378
	ldr r1, _02258BCC ; =0x00004E2C
	add r0, r7, #0
	bl FUN_0200C388
	ldr r1, _02258BC0 ; =0x00004E33
	add r0, r7, #0
	bl FUN_0200C368
	mov r4, #0
	add r5, r6, #0
_02258B70:
	ldr r0, _02258BBC ; =0x000005D4
	ldr r0, [r5, r0]
	bl FUN_0200C3DC
	ldr r0, _02258BBC ; =0x000005D4
	mov r1, #0
	str r1, [r5, r0]
	add r0, #0x18
	ldr r0, [r5, r0]
	bl FUN_0200C3DC
	ldr r0, _02258BD0 ; =0x000005EC
	mov r1, #0
	str r1, [r5, r0]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _02258B70
	ldr r0, [r6, #4]
	bl FUN_0200CAB4
	ldr r3, _02258BD4 ; =0x00004FA6
	mov r0, #0
	str r0, [r6, #4]
	add r1, r3, #0
	str r3, [sp]
	ldr r2, _02258BD8 ; =0x00004E3F
	add r0, r7, #0
	add r1, #0x11
	add r3, #0xb
	bl MOD11_0225D45C
	ldr r0, _02258BDC ; =0x000006EC
	ldr r0, [r6, r0]
	bl MOD11_0225D508
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02258BBC: .word 0x000005D4
_02258BC0: .word 0x00004E33
_02258BC4: .word 0x00004E2B
_02258BC8: .word 0x00004E34
_02258BCC: .word 0x00004E2C
_02258BD0: .word 0x000005EC
_02258BD4: .word 0x00004FA6
_02258BD8: .word 0x00004E3F
_02258BDC: .word 0x000006EC

	thumb_func_start MOD11_02258BE0
MOD11_02258BE0: ; 0x02258BE0
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02258D54 ; =0x00000644
	add r5, r1, #0
	mov r7, #0
	add r4, r5, r0
	mov r6, #0xc
_02258BEC:
	ldrb r0, [r4, #3]
	cmp r0, #4
	bhi _02258C08
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02258BFE: ; jump table
	.short _02258C08 - _02258BFE - 2 ; case 0
	.short _02258C48 - _02258BFE - 2 ; case 1
	.short _02258C5A - _02258BFE - 2 ; case 2
	.short _02258CF2 - _02258BFE - 2 ; case 3
	.short _02258C5A - _02258BFE - 2 ; case 4
_02258C08:
	ldr r0, _02258D58 ; =0x000005D4
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl FUN_0200C650
	cmp r0, #0
	beq _02258C1C
	ldrb r0, [r4, #2]
	cmp r0, #0x57
	bhs _02258C1E
_02258C1C:
	b _02258D42
_02258C1E:
	mov r0, #0
	strb r0, [r4, #4]
	mov r0, #0xa
	strb r0, [r4, #5]
	bl LCRandom
	lsr r1, r0, #0x1f
	lsl r3, r0, #0x1d
	ldrb r2, [r4, #5]
	sub r3, r3, r1
	mov r0, #0x1d
	ror r3, r0
	add r0, r1, r3
	add r0, r2, r0
	strb r0, [r4, #5]
	mov r0, #2
	strb r0, [r4, #7]
	ldrb r0, [r4, #3]
	add r0, r0, #1
	strb r0, [r4, #3]
	b _02258D42
_02258C48:
	ldrb r1, [r4, #5]
	cmp r1, #0
	beq _02258C54
	sub r0, r1, #1
	strb r0, [r4, #5]
	b _02258D42
_02258C54:
	add r0, r0, #1
	strb r0, [r4, #3]
	b _02258D42
_02258C5A:
	ldr r0, _02258D58 ; =0x000005D4
	mov r1, #2
	ldr r0, [r5, r0]
	lsl r1, r1, #0xa
	bl FUN_0200C8BC
	mov r0, #0
	ldrsh r1, [r4, r0]
	mov r0, #6
	lsl r0, r0, #6
	add r0, r1, r0
	strh r0, [r4]
	mov r1, #0
	ldrsh r1, [r4, r1]
	ldr r0, _02258D58 ; =0x000005D4
	mov r3, #0x11
	asr r2, r1, #7
	lsr r2, r2, #0x18
	add r2, r1, r2
	asr r1, r2, #8
	add r1, r1, r6
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	mov r2, #0xd
	lsl r3, r3, #0x10
	bl FUN_0200C750
	ldrb r0, [r4, #6]
	add r0, r0, #1
	strb r0, [r4, #6]
	ldrb r1, [r4, #6]
	ldrb r0, [r4, #7]
	cmp r1, r0
	blo _02258D42
	mov r0, #0
	strb r0, [r4, #6]
	ldrb r0, [r4, #3]
	cmp r0, #2
	bne _02258CB0
	add r0, r0, #1
	strb r0, [r4, #3]
	b _02258D42
_02258CB0:
	ldr r0, _02258D58 ; =0x000005D4
	mov r1, #0
	ldr r0, [r5, r0]
	bl FUN_0200C898
	ldr r0, _02258D58 ; =0x000005D4
	lsl r1, r6, #0x10
	mov r3, #0x11
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	mov r2, #0xd
	lsl r3, r3, #0x10
	bl FUN_0200C750
	mov r0, #0
	strh r0, [r4]
	ldrb r0, [r4, #8]
	cmp r0, #1
	bhs _02258CEA
	add r0, r0, #1
	strb r0, [r4, #8]
	ldrb r0, [r4, #7]
	cmp r0, #1
	bls _02258CE4
	sub r0, r0, #1
	strb r0, [r4, #7]
_02258CE4:
	mov r0, #2
	strb r0, [r4, #3]
	b _02258D42
_02258CEA:
	mov r0, #0
	strb r0, [r4, #8]
	strb r0, [r4, #3]
	b _02258D42
_02258CF2:
	ldr r0, _02258D58 ; =0x000005D4
	ldr r1, _02258D5C ; =0xFFFFF800
	ldr r0, [r5, r0]
	bl FUN_0200C8BC
	mov r0, #0
	ldrsh r1, [r4, r0]
	mov r0, #6
	lsl r0, r0, #6
	sub r0, r1, r0
	strh r0, [r4]
	mov r1, #0
	ldrsh r1, [r4, r1]
	ldr r0, _02258D58 ; =0x000005D4
	mov r3, #0x11
	asr r2, r1, #7
	lsr r2, r2, #0x18
	add r2, r1, r2
	asr r1, r2, #8
	add r1, r1, r6
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	mov r2, #0xd
	lsl r3, r3, #0x10
	bl FUN_0200C750
	ldrb r0, [r4, #6]
	add r0, r0, #1
	strb r0, [r4, #6]
	ldrb r1, [r4, #7]
	ldrb r0, [r4, #6]
	lsl r1, r1, #1
	cmp r0, r1
	blt _02258D42
	mov r0, #0
	strb r0, [r4, #6]
	ldrb r0, [r4, #3]
	add r0, r0, #1
	strb r0, [r4, #3]
_02258D42:
	add r7, r7, #1
	add r4, #0xa
	add r5, r5, #4
	add r6, #0x13
	cmp r7, #6
	bge _02258D50
	b _02258BEC
_02258D50:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02258D54: .word 0x00000644
_02258D58: .word 0x000005D4
_02258D5C: .word 0xFFFFF800

	thumb_func_start MOD11_02258D60
MOD11_02258D60: ; 0x02258D60
	push {r3, r4}
	ldr r2, _02258D78 ; =0x00000646
	mov r4, #0
_02258D66:
	ldrb r3, [r1, r4]
	add r4, r4, #1
	strb r3, [r0, r2]
	add r0, #0xa
	cmp r4, #6
	blt _02258D66
	pop {r3, r4}
	bx lr
	nop
_02258D78: .word 0x00000646

	thumb_func_start MOD11_02258D7C
MOD11_02258D7C: ; 0x02258D7C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r4, #0
_02258D86:
	ldrb r0, [r6, r4]
	bl MOD11_0225A400
	add r1, r0, #0
	ldr r0, _02258DC8 ; =0x000005D4
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl FUN_02020130
	ldr r0, _02258DC8 ; =0x000005D4
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl FUN_0200C59C
	ldrb r0, [r7, r4]
	bl MOD11_0225A400
	add r1, r0, #0
	ldr r0, _02258DCC ; =0x000005EC
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl FUN_02020130
	ldr r0, _02258DCC ; =0x000005EC
	ldr r0, [r5, r0]
	ldr r0, [r0]
	bl FUN_0200C59C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _02258D86
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02258DC8: .word 0x000005D4
_02258DCC: .word 0x000005EC

	thumb_func_start MOD11_02258DD0
MOD11_02258DD0: ; 0x02258DD0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02258E28 ; =0x000005D4
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _02258DE4
	add r0, #0x18
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02258DE8
_02258DE4:
	bl GF_AssertFail
_02258DE8:
	ldr r7, _02258E28 ; =0x000005D4
	mov r6, #0
	add r4, r5, #0
_02258DEE:
	ldr r0, [r4, r7]
	mov r1, #1
	ldr r0, [r0]
	bl FUN_0200C63C
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #6
	blt _02258DEE
	ldr r0, [r5]
	bl MOD11_0222FF74
	mov r1, #1
	tst r0, r1
	beq _02258E24
	ldr r6, _02258E2C ; =0x000005EC
	mov r4, #0
	add r7, r1, #0
_02258E12:
	ldr r0, [r5, r6]
	add r1, r7, #0
	ldr r0, [r0]
	bl FUN_0200C63C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _02258E12
_02258E24:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02258E28: .word 0x000005D4
_02258E2C: .word 0x000005EC

	thumb_func_start MOD11_02258E30
MOD11_02258E30: ; 0x02258E30
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02258E70 ; =0x000005D4
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _02258E44
	add r0, #0x18
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02258E48
_02258E44:
	bl GF_AssertFail
_02258E48:
	ldr r7, _02258E70 ; =0x000005D4
	mov r4, #0
	add r6, r7, #0
	add r6, #0x18
_02258E50:
	ldr r0, [r5, r7]
	mov r1, #0
	ldr r0, [r0]
	bl FUN_0200C63C
	ldr r0, [r5, r6]
	mov r1, #0
	ldr r0, [r0]
	bl FUN_0200C63C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _02258E50
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02258E70: .word 0x000005D4

	thumb_func_start MOD11_02258E74
MOD11_02258E74: ; 0x02258E74
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02258F4C ; =0x0000069F
	mov r6, #0
	ldrsb r1, [r5, r0]
	sub r0, r6, #1
	cmp r1, r0
	bne _02258E88
	bl GF_AssertFail
_02258E88:
	ldr r0, _02258F4C ; =0x0000069F
	ldr r3, _02258F50 ; =MOD11_0225FAAC
	ldrsb r2, [r5, r0]
	mov r1, #0x30
	mul r1, r2
	add r4, r3, r1
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _02258EA2
	add r0, r0, #3
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _02258EA8
_02258EA2:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02258EA8:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _02258EB2
	bl GF_AssertFail
_02258EB2:
	ldr r0, [r5]
	bl MOD11_0222FF74
	mov r1, #1
	lsl r1, r1, #0xa
	tst r0, r1
	beq _02258ECA
	add r0, r5, #0
	bl MOD11_0225C784
	add r7, r0, #0
	b _02258EE4
_02258ECA:
	ldr r0, [r4, #0x14]
	bl FUN_02020988
	add r7, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	bne _02258EE4
	add r0, r5, #0
	bl MOD11_0225B8B0
	add r7, r0, #0
	add r6, r6, #1
_02258EE4:
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	cmp r7, r0
	bne _02258EF2
	mov r2, #0xff
	b _02258EFE
_02258EF2:
	ldr r1, [r4, #0x18]
	lsl r0, r7, #2
	ldr r0, [r1, r0]
	str r0, [sp]
	ldr r0, [r4, #0x1c]
	ldrb r2, [r0, r7]
_02258EFE:
	ldr r3, [r4, #0x2c]
	cmp r3, #0
	beq _02258F46
	ldr r1, [sp]
	add r0, r5, #0
	blx r3
	mov r1, #0
	mvn r1, r1
	str r0, [sp]
	cmp r0, r1
	beq _02258F46
	ldr r2, [r4, #0x24]
	cmp r2, #0
	beq _02258F20
	add r0, r5, #0
	add r1, r7, #0
	blx r2
_02258F20:
	mov r0, #0x6f
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	mov r2, #4
	bl MI_CpuFill8
	ldr r0, _02258F54 ; =0x000006EC
	ldr r0, [r5, r0]
	bl MOD11_0225D648
	cmp r6, #0
	ldr r0, _02258F58 ; =0x000006F4
	ble _02258F42
	mov r1, #1
	strb r1, [r5, r0]
	b _02258F46
_02258F42:
	mov r1, #0
	strb r1, [r5, r0]
_02258F46:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02258F4C: .word 0x0000069F
_02258F50: .word MOD11_0225FAAC
_02258F54: .word 0x000006EC
_02258F58: .word 0x000006F4

	thumb_func_start MOD11_02258F5C
MOD11_02258F5C: ; 0x02258F5C
	push {r3, lr}
	ldr r1, [r0, #8]
	cmp r1, #0
	bne _02258F7E
	ldr r1, [r0, #0xc]
	cmp r1, #0
	bne _02258F7E
	ldr r1, _02258F84 ; =0x00000684
	ldr r1, [r0, r1]
	cmp r1, #0
	bne _02258F7E
	bl MOD11_0225B780
	cmp r0, #1
	bne _02258F7E
	mov r0, #1
	pop {r3, pc}
_02258F7E:
	mov r0, #0
	pop {r3, pc}
	nop
_02258F84: .word 0x00000684

	thumb_func_start MOD11_02258F88
MOD11_02258F88: ; 0x02258F88
	push {r3, lr}
	cmp r0, #0x40
	bgt _02258FBE
	bge _02259014
	cmp r0, #0x10
	bgt _02258FB8
	bge _02258FEC
	cmp r0, #8
	bhi _02259024
	add r2, r0, r0
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02258FA6: ; jump table
	.short _02258FE0 - _02258FA6 - 2 ; case 0
	.short _02258FEC - _02258FA6 - 2 ; case 1
	.short _02258FEC - _02258FA6 - 2 ; case 2
	.short _02259024 - _02258FA6 - 2 ; case 3
	.short _02258FF8 - _02258FA6 - 2 ; case 4
	.short _02259024 - _02258FA6 - 2 ; case 5
	.short _02259024 - _02258FA6 - 2 ; case 6
	.short _02259024 - _02258FA6 - 2 ; case 7
	.short _02258FFC - _02258FA6 - 2 ; case 8
_02258FB8:
	cmp r0, #0x20
	beq _0225901C
	b _02259024
_02258FBE:
	mov r2, #1
	lsl r2, r2, #8
	cmp r0, r2
	bgt _02258FCE
	bge _02259008
	cmp r0, #0x80
	beq _02258FF8
	b _02259024
_02258FCE:
	lsl r1, r2, #1
	cmp r0, r1
	bgt _02258FD8
	beq _02259018
	b _02259024
_02258FD8:
	lsl r1, r2, #2
	cmp r0, r1
	beq _02259020
	b _02259024
_02258FE0:
	cmp r1, #4
	bne _02258FE8
	mov r0, #9
	pop {r3, pc}
_02258FE8:
	mov r0, #8
	pop {r3, pc}
_02258FEC:
	cmp r1, #4
	bne _02258FF4
	mov r0, #6
	pop {r3, pc}
_02258FF4:
	mov r0, #4
	pop {r3, pc}
_02258FF8:
	mov r0, #1
	pop {r3, pc}
_02258FFC:
	cmp r1, #4
	bne _02259004
	mov r0, #7
	pop {r3, pc}
_02259004:
	mov r0, #2
	pop {r3, pc}
_02259008:
	cmp r1, #4
	bne _02259010
	mov r0, #4
	pop {r3, pc}
_02259010:
	mov r0, #6
	pop {r3, pc}
_02259014:
	mov r0, #3
	pop {r3, pc}
_02259018:
	mov r0, #0xa
	pop {r3, pc}
_0225901C:
	mov r0, #5
	pop {r3, pc}
_02259020:
	mov r0, #0xb
	pop {r3, pc}
_02259024:
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}

	thumb_func_start MOD11_0225902C
MOD11_0225902C: ; 0x0225902C
	push {r4, r5}
	ldr r1, _0225908C ; =0x04001000
	ldr r2, _02259090 ; =0xFFFF1FFF
	ldr r3, [r1]
	add r5, r1, #0
	and r3, r2
	lsr r2, r1, #0xd
	orr r2, r3
	str r2, [r1]
	add r5, #0x4a
	ldrh r4, [r5]
	mov r3, #0x3f
	mov r2, #0x1f
	bic r4, r3
	orr r2, r4
	mov r4, #0x20
	orr r2, r4
	strh r2, [r5]
	add r1, #0x48
	ldrh r5, [r1]
	mov r2, #0x1b
	bic r5, r3
	orr r2, r5
	orr r2, r4
	strh r2, [r1]
	mov r1, #0x6e
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	asr r0, r1, #7
	lsr r0, r0, #0x18
	add r0, r1, r0
	asr r1, r0, #8
	mov r0, #0xff
	sub r0, r0, r1
	bpl _02259074
	mov r0, #0
_02259074:
	lsl r1, r0, #8
	mov r0, #0xff
	lsl r0, r0, #8
	and r1, r0
	mov r0, #0xff
	orr r0, r1
	ldr r1, _02259094 ; =0x04001040
	strh r0, [r1]
	mov r0, #0xc0
	strh r0, [r1, #4]
	pop {r4, r5}
	bx lr
	.align 2, 0
_0225908C: .word 0x04001000
_02259090: .word 0xFFFF1FFF
_02259094: .word 0x04001040

	thumb_func_start MOD11_02259098
MOD11_02259098: ; 0x02259098
	push {r4, lr}
	lsl r4, r2, #8
	mov r2, #0x6e
	add r3, r0, #0
	lsl r2, r2, #4
	ldr r0, [r3, r2]
	cmp r0, r4
	beq _022590BC
	add r0, r2, #4
	str r1, [r3, r0]
	add r2, #8
	str r4, [r3, r2]
	mov r2, #0x4b
	ldr r0, _022590C0 ; =MOD11_022590C4
	add r1, r3, #0
	lsl r2, r2, #4
	bl FUN_0200CA44
_022590BC:
	pop {r4, pc}
	nop
_022590C0: .word MOD11_022590C4

	thumb_func_start MOD11_022590C4
MOD11_022590C4: ; 0x022590C4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5]
	mov r4, #0
	bl MOD11_0222FF68
	add r7, r0, #0
	mov r0, #0x6e
	lsl r0, r0, #4
	add r1, r0, #4
	ldr r2, [r5, r0]
	ldr r1, [r5, r1]
	add r1, r2, r1
	str r1, [r5, r0]
	add r1, r0, #4
	ldr r1, [r5, r1]
	cmp r1, #0
	bgt _022590F6
	add r2, r0, #0
	add r2, #8
	ldr r2, [r5, r2]
	ldr r0, [r5, r0]
	cmp r0, r2
	ble _02259106
_022590F6:
	cmp r1, #0
	ble _0225910E
	ldr r0, _0225915C ; =0x000006E8
	ldr r2, [r5, r0]
	sub r0, #8
	ldr r0, [r5, r0]
	cmp r0, r2
	blt _0225910E
_02259106:
	mov r0, #0x6e
	lsl r0, r0, #4
	str r2, [r5, r0]
	mov r4, #1
_0225910E:
	mov r3, #0x6e
	lsl r3, r3, #4
	ldr r3, [r5, r3]
	add r0, r7, #0
	asr r6, r3, #7
	lsr r6, r6, #0x18
	add r6, r3, r6
	mov r1, #6
	mov r2, #0
	asr r3, r6, #8
	bl BgSetPosTextAndCommit
	add r0, r5, #0
	bl MOD11_0225902C
	cmp r4, #1
	bne _0225915A
	ldr r2, _02259160 ; =0x000002FF
	add r0, r7, #0
	mov r1, #7
	bl BgFillTilemapBufferAndCommit
	mov r0, #7
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #7
	mov r1, #0
	bl SetBgPriority
	ldr r2, _02259164 ; =0x04001000
	ldr r0, _02259168 ; =0xFFFF1FFF
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	ldr r0, [sp]
	bl FUN_0200CAB4
_0225915A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225915C: .word 0x000006E8
_02259160: .word 0x000002FF
_02259164: .word 0x04001000
_02259168: .word 0xFFFF1FFF

	thumb_func_start MOD11_0225916C
MOD11_0225916C: ; 0x0225916C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r0, _02259240 ; =0x000006A2
	mov r1, #1
	strb r1, [r5, r0]
	ldr r1, _02259244 ; =0x0400104A
	mov r4, #0x3f
	ldrh r2, [r1]
	mov r0, #0xf
	mov r7, #0xc
	bic r2, r4
	orr r0, r2
	mov r2, #0x20
	orr r0, r2
	strh r0, [r1]
	sub r0, r1, #2
	ldrh r3, [r0]
	bic r3, r4
	orr r3, r7
	orr r3, r2
	strh r3, [r0]
	ldrh r4, [r0]
	ldr r3, _02259248 ; =0xFFFFC0FF
	lsl r2, r2, #8
	and r4, r3
	lsl r3, r7, #8
	orr r3, r4
	orr r2, r3
	strh r2, [r0]
	add r2, r1, #0
	mov r0, #0xff
	sub r2, #0xa
	strh r0, [r2]
	mov r3, #0x90
	sub r2, r1, #6
	strh r3, [r2]
	add r2, r1, #0
	sub r2, #8
	strh r0, [r2]
	sub r0, r1, #4
	ldr r2, _0225924C ; =0x000090C0
	sub r1, #0x4a
	strh r2, [r0]
	ldr r2, [r1]
	ldr r0, _02259250 ; =0xFFFF1FFF
	and r2, r0
	lsl r0, r7, #0xb
	orr r0, r2
	str r0, [r1]
	mov r0, #5
	mov r1, #0x14
	bl AllocFromHeap
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	str r5, [r4]
	ldr r0, _02259254 ; =0xFFFF9C64
	strb r6, [r4, #0x12]
	strh r0, [r4, #8]
	mov r0, #0xfa
	lsl r0, r0, #4
	strh r0, [r4, #0xa]
	mov r0, #8
	ldrsh r1, [r4, r0]
	ldr r0, _02259258 ; =0x0000639C
	sub r0, r0, r1
	mov r1, #0x64
	bl _s32_div_f
	strh r0, [r4, #0xc]
	mov r0, #0xa
	ldrsh r1, [r4, r0]
	mov r0, #0xfa
	lsl r0, r0, #4
	sub r0, r0, r1
	mov r1, #0x64
	bl _s32_div_f
	strh r0, [r4, #0xe]
	ldr r0, _0225925C ; =0x0000070E
	bl PlaySE
	ldr r0, _02259260 ; =MOD11_0225B438
	ldr r2, _02259264 ; =0x000004BA
	add r1, r4, #0
	bl FUN_0200CA44
	ldr r0, _02259268 ; =MOD11_0225B644
	add r1, r4, #0
	bl FUN_02015F34
	cmp r0, #1
	beq _02259232
	bl GF_AssertFail
_02259232:
	ldr r0, _0225926C ; =MOD11_0225B538
	add r1, r4, #0
	mov r2, #0xa
	bl FUN_0200CA60
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02259240: .word 0x000006A2
_02259244: .word 0x0400104A
_02259248: .word 0xFFFFC0FF
_0225924C: .word 0x000090C0
_02259250: .word 0xFFFF1FFF
_02259254: .word 0xFFFF9C64
_02259258: .word 0x0000639C
_0225925C: .word 0x0000070E
_02259260: .word MOD11_0225B438
_02259264: .word 0x000004BA
_02259268: .word MOD11_0225B644
_0225926C: .word MOD11_0225B538

	thumb_func_start MOD11_02259270
MOD11_02259270: ; 0x02259270
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r4, [r5, #0x18]
	bl MOD11_02259284
	add r0, r5, #0
	add r1, r4, #0
	bl MOD11_0225916C
	pop {r3, r4, r5, pc}

	thumb_func_start MOD11_02259284
MOD11_02259284: ; 0x02259284
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, [r5]
	add r6, r5, #0
	ldrb r7, [r5, #0x18]
	add r6, #0x18
	bl MOD11_022300C4
	add r4, r0, #0
	ldr r0, _02259484 ; =0x0000069E
	strb r7, [r5, r0]
	ldr r0, [r5]
	bl MOD11_0222FF74
	mov r1, #0x20
	tst r0, r1
	beq _022592CA
	ldr r1, _02259488 ; =0x000003A3
	add r0, r4, #0
	bl NewString_ReadMsgData
	mov r1, #0xe9
	str r0, [sp, #0x24]
	add r0, r4, #0
	lsl r1, r1, #2
	bl NewString_ReadMsgData
	str r0, [sp, #0x20]
	ldr r1, _0225948C ; =0x000003A5
	add r0, r4, #0
	bl NewString_ReadMsgData
	str r0, [sp, #0x1c]
	b _0225931A
_022592CA:
	ldr r0, [r5]
	bl MOD11_0222FF74
	mov r1, #2
	lsl r1, r1, #8
	tst r0, r1
	beq _022592FA
	ldr r1, _02259490 ; =0x000004C7
	add r0, r4, #0
	bl NewString_ReadMsgData
	mov r1, #0xe9
	str r0, [sp, #0x24]
	add r0, r4, #0
	lsl r1, r1, #2
	bl NewString_ReadMsgData
	str r0, [sp, #0x20]
	ldr r1, _0225948C ; =0x000003A5
	add r0, r4, #0
	bl NewString_ReadMsgData
	str r0, [sp, #0x1c]
	b _0225931A
_022592FA:
	mov r1, #0xe7
	add r0, r4, #0
	lsl r1, r1, #2
	bl NewString_ReadMsgData
	str r0, [sp, #0x24]
	ldr r1, _02259494 ; =0x0000039D
	add r0, r4, #0
	bl NewString_ReadMsgData
	str r0, [sp, #0x20]
	ldr r1, _02259498 ; =0x0000039E
	add r0, r4, #0
	bl NewString_ReadMsgData
	str r0, [sp, #0x1c]
_0225931A:
	ldr r0, [r5]
	add r1, r7, #0
	bl MOD11_0223022C
	add r1, r0, #0
	ldr r0, [r5]
	bl MOD11_02230CB8
	cmp r0, #1
	bne _0225933E
	mov r1, #0x3a
	add r0, r4, #0
	lsl r1, r1, #4
	bl NewString_ReadMsgData
	add r4, r0, #0
	mov r1, #1
	b _0225934A
_0225933E:
	ldr r1, _0225949C ; =0x0000039F
	add r0, r4, #0
	bl NewString_ReadMsgData
	add r4, r0, #0
	mov r1, #0
_0225934A:
	ldr r0, _022594A0 ; =0x000006A3
	mov r3, #2
	strb r1, [r5, r0]
	ldr r0, _022594A4 ; =0x00010203
	ldr r1, _022594A8 ; =0x000004CC
	str r0, [sp]
	ldr r0, _022594AC ; =0x00004E33
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x54
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r2, [sp, #0x24]
	add r0, r5, #0
	add r1, r5, r1
	bl MOD11_0225A458
	ldr r0, _022594B0 ; =0x00040506
	mov r1, #0x4e
	str r0, [sp]
	mov r3, #2
	lsl r1, r1, #4
	ldr r0, _022594AC ; =0x00004E33
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x28
	str r0, [sp, #0xc]
	mov r0, #0xaa
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	add r1, r5, r1
	bl MOD11_0225A458
	ldr r0, _022594B4 ; =0x00070809
	ldr r1, _022594B8 ; =0x000004F4
	str r0, [sp]
	mov r3, #2
	ldr r0, _022594AC ; =0x00004E33
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xd8
	str r0, [sp, #0xc]
	mov r0, #0xaa
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	add r0, r5, #0
	add r1, r5, r1
	bl MOD11_0225A458
	ldr r0, _022594BC ; =0x000A0B0C
	ldr r1, _022594C0 ; =0x00000508
	str r0, [sp]
	mov r3, #2
	ldr r0, _022594AC ; =0x00004E33
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0xb2
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r5, r1
	add r2, r4, #0
	bl MOD11_0225A458
	ldr r0, [sp, #0x24]
	bl String_dtor
	ldr r0, [sp, #0x20]
	bl String_dtor
	ldr r0, [sp, #0x1c]
	bl String_dtor
	add r0, r4, #0
	bl String_dtor
	ldr r0, [r5]
	bl MOD11_0222FF74
	mov r1, #0x22
	lsl r1, r1, #4
	tst r0, r1
	bne _0225947E
	ldrb r1, [r6, #1]
	ldrb r2, [r6, #2]
	ldr r0, [r5]
	bl MOD11_02230014
	add r4, r0, #0
	add r0, r5, #0
	bl MOD11_0225A164
	ldrh r0, [r6, #6]
	mov r3, #4
	add r1, r4, #0
	str r0, [sp]
	ldrb r0, [r6, #3]
	add r2, r7, #0
	str r0, [sp, #4]
	ldrsh r3, [r6, r3]
	add r0, r5, #0
	bl MOD11_0225A270
	add r4, r0, #0
	ldr r0, _022594A8 ; =0x000004CC
	add r1, sp, #0x2c
	ldr r0, [r5, r0]
	add r2, sp, #0x28
	bl FUN_020119A4
	cmp r7, #4
	bne _0225945E
	ldr r0, _022594C4 ; =0x000004DC
	ldr r1, [sp, #0x2c]
	ldrh r0, [r5, r0]
	add r0, #0x10
	add r0, r1, r0
	str r0, [sp, #0x2c]
	b _02259464
_0225945E:
	ldr r0, [sp, #0x2c]
	sub r0, #0x10
	str r0, [sp, #0x2c]
_02259464:
	mov r3, #0x11
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x28]
	lsl r3, r3, #4
	sub r2, r2, r3
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, r4, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0xc
	bl FUN_0200C750
_0225947E:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02259484: .word 0x0000069E
_02259488: .word 0x000003A3
_0225948C: .word 0x000003A5
_02259490: .word 0x000004C7
_02259494: .word 0x0000039D
_02259498: .word 0x0000039E
_0225949C: .word 0x0000039F
_022594A0: .word 0x000006A3
_022594A4: .word 0x00010203
_022594A8: .word 0x000004CC
_022594AC: .word 0x00004E33
_022594B0: .word 0x00040506
_022594B4: .word 0x00070809
_022594B8: .word 0x000004F4
_022594BC: .word 0x000A0B0C
_022594C0: .word 0x00000508
_022594C4: .word 0x000004DC

	thumb_func_start MOD11_022594C8
MOD11_022594C8: ; 0x022594C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r4, [r5, #0x18]
	bl MOD11_022594DC
	add r0, r5, #0
	add r1, r4, #0
	bl MOD11_0225916C
	pop {r3, r4, r5, pc}

	thumb_func_start MOD11_022594DC
MOD11_022594DC: ; 0x022594DC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl MOD11_02259284
	ldr r0, [r5]
	bl MOD11_0222FF68
	mov r1, #0x10
	str r1, [sp]
	mov r1, #0x20
	str r1, [sp, #4]
	mov r1, #8
	str r1, [sp, #8]
	mov r1, #0x11
	str r1, [sp, #0xc]
	ldr r2, _02259534 ; =0x000002FF
	add r4, r0, #0
	mov r1, #4
	mov r3, #0
	bl FillBgTilemapRect
	add r0, r4, #0
	mov r1, #5
	bl ScheduleBgTilemapBufferTransfer
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl FUN_020119D0
	ldr r0, _02259538 ; =0x000004F4
	mov r1, #0
	ldr r0, [r5, r0]
	bl FUN_020119D0
	ldr r0, _0225953C ; =0x00000508
	mov r1, #0
	ldr r0, [r5, r0]
	bl FUN_020119D0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_02259534: .word 0x000002FF
_02259538: .word 0x000004F4
_0225953C: .word 0x00000508

	thumb_func_start MOD11_02259540
MOD11_02259540: ; 0x02259540
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r4, [r5, #0x18]
	bl MOD11_02259554
	add r0, r5, #0
	add r1, r4, #0
	bl MOD11_0225916C
	pop {r3, r4, r5, pc}

	thumb_func_start MOD11_02259554
MOD11_02259554: ; 0x02259554
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl MOD11_02259284
	ldr r0, [r5]
	bl MOD11_0222FF68
	mov r1, #0x10
	str r1, [sp]
	mov r1, #0xa
	str r1, [sp, #4]
	mov r1, #8
	str r1, [sp, #8]
	mov r1, #0x11
	str r1, [sp, #0xc]
	ldr r2, _022595C0 ; =0x000002FF
	mov r1, #4
	mov r3, #0
	add r4, r0, #0
	bl FillBgTilemapRect
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r2, _022595C0 ; =0x000002FF
	add r0, r4, #0
	mov r1, #4
	mov r3, #0x16
	bl FillBgTilemapRect
	add r0, r4, #0
	mov r1, #5
	bl ScheduleBgTilemapBufferTransfer
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl FUN_020119D0
	ldr r0, _022595C4 ; =0x000004F4
	mov r1, #0
	ldr r0, [r5, r0]
	bl FUN_020119D0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_022595C0: .word 0x000002FF
_022595C4: .word 0x000004F4

	thumb_func_start MOD11_022595C8
MOD11_022595C8: ; 0x022595C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r6, r5, #0
	add r6, #0x18
	bne _022595D8
	bl GF_AssertFail
_022595D8:
	ldrb r1, [r6, #0x10]
	ldr r0, _02259854 ; =0x0000069E
	strb r1, [r5, r0]
	ldr r0, [r5]
	bl MOD11_022300C4
	str r0, [sp, #0x1c]
	ldrb r1, [r6, #0x10]
	add r0, r5, #0
	bl MOD11_0225A69C
	str r0, [sp, #0x20]
	add r0, r5, #0
	bl MOD11_0225A9D4
	ldr r0, _02259858 ; =0x00070809
	ldr r1, _0225985C ; =0x000004CC
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, _02259860 ; =0x00004E33
	add r1, r5, r1
	str r0, [sp, #8]
	mov r0, #0x40
	str r0, [sp, #0xc]
	mov r0, #0x2e
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	mov r2, #0
	add r0, #0x28
	str r0, [sp, #0x18]
	add r0, r5, #0
	mov r3, #2
	bl MOD11_0225A458
	ldr r0, _02259858 ; =0x00070809
	mov r1, #0x4e
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, _02259860 ; =0x00004E33
	lsl r1, r1, #4
	str r0, [sp, #8]
	mov r0, #0xc0
	str r0, [sp, #0xc]
	mov r0, #0x2e
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	add r1, r5, r1
	add r0, #0x3c
	str r0, [sp, #0x18]
	add r0, r5, #0
	mov r2, #0
	mov r3, #2
	bl MOD11_0225A458
	ldr r0, _02259858 ; =0x00070809
	ldr r1, _02259864 ; =0x000004F4
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, _02259860 ; =0x00004E33
	add r1, r5, r1
	str r0, [sp, #8]
	mov r0, #0x40
	str r0, [sp, #0xc]
	mov r0, #0x6e
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	mov r2, #0
	add r0, #0x50
	str r0, [sp, #0x18]
	add r0, r5, #0
	mov r3, #2
	bl MOD11_0225A458
	ldr r0, _02259858 ; =0x00070809
	ldr r1, _02259868 ; =0x00000508
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, _02259860 ; =0x00004E33
	add r1, r5, r1
	str r0, [sp, #8]
	mov r0, #0xc0
	str r0, [sp, #0xc]
	mov r0, #0x6e
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	mov r2, #0
	add r0, #0x64
	str r0, [sp, #0x18]
	add r0, r5, #0
	mov r3, #2
	bl MOD11_0225A458
	ldr r0, [sp, #0x20]
	mov r4, #0
	str r0, [sp, #0x28]
	add r0, #0x78
	str r0, [sp, #0x28]
	ldr r0, _0225985C ; =0x000004CC
	add r7, r5, r0
	ldr r0, [sp, #0x20]
	add r0, #0xc8
	str r0, [sp, #0x20]
	b _02259748
_022596BE:
	add r1, r6, r4
	ldrb r0, [r1, #8]
	ldrb r1, [r1, #0xc]
	bl MOD11_0225B3D4
	str r0, [sp, #0x24]
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _02259860 ; =0x00004E33
	ldr r1, _0225986C ; =MOD11_0225F73C
	str r0, [sp, #8]
	lsl r0, r4, #2
	ldrh r1, [r1, r0]
	add r2, r4, #0
	add r2, #9
	str r1, [sp, #0xc]
	ldr r1, _0225986C ; =MOD11_0225F73C
	add r0, r1, r0
	ldrh r0, [r0, #2]
	add r1, r4, #0
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	mov r0, #0x14
	mul r1, r0
	ldr r0, [sp, #0x28]
	add r0, r0, r1
	mov r1, #0x14
	mul r1, r2
	mov r2, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r7, r1
	add r3, r2, #0
	bl MOD11_0225A458
	ldr r0, [sp, #0x24]
	ldr r1, _02259870 ; =MOD11_0225F78C
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _02259860 ; =0x00004E33
	add r2, r4, #5
	str r0, [sp, #8]
	lsl r0, r4, #2
	ldrh r1, [r1, r0]
	str r1, [sp, #0xc]
	ldr r1, _02259870 ; =MOD11_0225F78C
	add r0, r1, r0
	ldrh r0, [r0, #2]
	add r1, r4, #0
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	mov r0, #0x14
	mul r1, r0
	ldr r0, [sp, #0x20]
	add r0, r0, r1
	mov r1, #0x14
	mul r1, r2
	mov r2, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r7, r1
	add r3, r2, #0
	bl MOD11_0225A458
	add r4, r4, #1
_02259748:
	cmp r4, #4
	blt _022596BE
	ldr r0, [sp, #0x1c]
	ldr r1, _02259874 ; =0x000003A1
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r0, _02259878 ; =0x000A0B0C
	ldr r1, _0225987C ; =0x0000051C
	str r0, [sp]
	mov r3, #2
	ldr r0, _02259860 ; =0x00004E33
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0xb2
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r5, r1
	add r2, r4, #0
	bl MOD11_0225A458
	add r0, r4, #0
	bl String_dtor
	mov r4, #0
	mov r7, #3
	b _022597B0
_0225978A:
	lsl r0, r4, #1
	ldrh r0, [r6, r0]
	cmp r0, #0
	beq _022597A4
	add r1, r7, #0
	bl GetWazaAttr
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl MOD11_0225AB34
	b _022597AE
_022597A4:
	add r0, r5, #0
	add r1, r4, #0
	bl MOD11_0225AB50
	b _022597B4
_022597AE:
	add r4, r4, #1
_022597B0:
	cmp r4, #4
	blt _0225978A
_022597B4:
	ldr r0, [r5]
	bl MOD11_0222FF68
	ldrh r0, [r6]
	cmp r0, #0
	bne _022597E2
	ldr r0, _0225985C ; =0x000004CC
	mov r1, #0
	ldr r0, [r5, r0]
	bl FUN_020119D0
	mov r0, #0x53
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl FUN_020119D0
	mov r0, #0x16
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0
	bl FUN_020119D0
_022597E2:
	ldrh r0, [r6, #2]
	cmp r0, #0
	bne _02259808
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl FUN_020119D0
	ldr r0, _02259880 ; =0x00000544
	mov r1, #0
	ldr r0, [r5, r0]
	bl FUN_020119D0
	ldr r0, _02259884 ; =0x00000594
	mov r1, #0
	ldr r0, [r5, r0]
	bl FUN_020119D0
_02259808:
	ldrh r0, [r6, #4]
	cmp r0, #0
	bne _0225982C
	ldr r0, _02259864 ; =0x000004F4
	mov r1, #0
	ldr r0, [r5, r0]
	bl FUN_020119D0
	ldr r0, _02259888 ; =0x00000558
	mov r1, #0
	ldr r0, [r5, r0]
	bl FUN_020119D0
	ldr r0, _0225988C ; =0x000005A8
	mov r1, #0
	ldr r0, [r5, r0]
	bl FUN_020119D0
_0225982C:
	ldrh r0, [r6, #6]
	cmp r0, #0
	bne _02259850
	ldr r0, _02259868 ; =0x00000508
	mov r1, #0
	ldr r0, [r5, r0]
	bl FUN_020119D0
	ldr r0, _02259890 ; =0x0000056C
	mov r1, #0
	ldr r0, [r5, r0]
	bl FUN_020119D0
	ldr r0, _02259894 ; =0x000005BC
	mov r1, #0
	ldr r0, [r5, r0]
	bl FUN_020119D0
_02259850:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02259854: .word 0x0000069E
_02259858: .word 0x00070809
_0225985C: .word 0x000004CC
_02259860: .word 0x00004E33
_02259864: .word 0x000004F4
_02259868: .word 0x00000508
_0225986C: .word MOD11_0225F73C
_02259870: .word MOD11_0225F78C
_02259874: .word 0x000003A1
_02259878: .word 0x000A0B0C
_0225987C: .word 0x0000051C
_02259880: .word 0x00000544
_02259884: .word 0x00000594
_02259888: .word 0x00000558
_0225988C: .word 0x000005A8
_02259890: .word 0x0000056C
_02259894: .word 0x000005BC

	thumb_func_start MOD11_02259898
MOD11_02259898: ; 0x02259898
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5]
	bl MOD11_022300C4
	mov r1, #0xeb
	lsl r1, r1, #2
	add r6, r0, #0
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r1, _0225991C ; =0x000003AD
	add r0, r6, #0
	bl NewString_ReadMsgData
	add r6, r0, #0
	ldr r0, _02259920 ; =0x00010203
	ldr r1, _02259924 ; =0x000004CC
	str r0, [sp]
	mov r3, #2
	ldr r0, _02259928 ; =0x00004E33
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x44
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r5, r1
	add r2, r4, #0
	bl MOD11_0225A458
	ldr r0, _0225992C ; =0x000A0B0C
	mov r1, #0x4e
	str r0, [sp]
	mov r3, #2
	lsl r1, r1, #4
	ldr r0, _02259928 ; =0x00004E33
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x8c
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r5, r1
	add r2, r6, #0
	bl MOD11_0225A458
	add r0, r4, #0
	bl String_dtor
	add r0, r6, #0
	bl String_dtor
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0225991C: .word 0x000003AD
_02259920: .word 0x00010203
_02259924: .word 0x000004CC
_02259928: .word 0x00004E33
_0225992C: .word 0x000A0B0C

	thumb_func_start MOD11_02259930
MOD11_02259930: ; 0x02259930
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5]
	bl MOD11_022300C4
	ldr r1, _022599B4 ; =0x0000049D
	add r6, r0, #0
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r1, _022599B8 ; =0x0000049E
	add r0, r6, #0
	bl NewString_ReadMsgData
	add r6, r0, #0
	ldr r0, _022599BC ; =0x00010203
	ldr r1, _022599C0 ; =0x000004CC
	str r0, [sp]
	mov r3, #2
	ldr r0, _022599C4 ; =0x00004E33
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x44
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r5, r1
	add r2, r4, #0
	bl MOD11_0225A458
	ldr r0, _022599C8 ; =0x000A0B0C
	mov r1, #0x4e
	str r0, [sp]
	mov r3, #2
	lsl r1, r1, #4
	ldr r0, _022599C4 ; =0x00004E33
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x8c
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r5, r1
	add r2, r6, #0
	bl MOD11_0225A458
	add r0, r4, #0
	bl String_dtor
	add r0, r6, #0
	bl String_dtor
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_022599B4: .word 0x0000049D
_022599B8: .word 0x0000049E
_022599BC: .word 0x00010203
_022599C0: .word 0x000004CC
_022599C4: .word 0x00004E33
_022599C8: .word 0x000A0B0C

	thumb_func_start MOD11_022599CC
MOD11_022599CC: ; 0x022599CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, [r5]
	bl MOD11_022300C4
	add r6, r0, #0
	ldr r0, [r5]
	bl MOD11_02230138
	add r4, r0, #0
	ldr r1, _02259A98 ; =0x000004A2
	add r0, r6, #0
	bl NewString_ReadMsgData
	str r0, [sp, #0x1c]
	ldr r1, _02259A9C ; =0x000004A3
	add r0, r6, #0
	bl NewString_ReadMsgData
	str r0, [sp, #0x20]
	mov r0, #0x64
	mov r1, #5
	bl String_ctor
	add r6, r0, #0
	mov r0, #0x64
	mov r1, #5
	bl String_ctor
	add r7, r0, #0
	ldrh r2, [r5, #0x18]
	add r0, r4, #0
	mov r1, #0
	bl BufferMoveName
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	add r1, r6, #0
	bl StringExpandPlaceholders
	ldr r2, [sp, #0x20]
	add r0, r4, #0
	add r1, r7, #0
	bl StringExpandPlaceholders
	ldr r0, _02259AA0 ; =0x00010203
	ldr r1, _02259AA4 ; =0x000004CC
	str r0, [sp]
	mov r3, #2
	ldr r0, _02259AA8 ; =0x00004E33
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x44
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r5, r1
	add r2, r6, #0
	bl MOD11_0225A458
	ldr r0, _02259AAC ; =0x000A0B0C
	mov r1, #0x4e
	str r0, [sp]
	mov r3, #2
	lsl r1, r1, #4
	ldr r0, _02259AA8 ; =0x00004E33
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x8c
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r5, r1
	add r2, r7, #0
	bl MOD11_0225A458
	ldr r0, [sp, #0x1c]
	bl String_dtor
	ldr r0, [sp, #0x20]
	bl String_dtor
	add r0, r6, #0
	bl String_dtor
	add r0, r7, #0
	bl String_dtor
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02259A98: .word 0x000004A2
_02259A9C: .word 0x000004A3
_02259AA0: .word 0x00010203
_02259AA4: .word 0x000004CC
_02259AA8: .word 0x00004E33
_02259AAC: .word 0x000A0B0C

	thumb_func_start MOD11_02259AB0
MOD11_02259AB0: ; 0x02259AB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, [r5]
	bl MOD11_022300C4
	add r6, r0, #0
	ldr r0, [r5]
	bl MOD11_02230138
	add r4, r0, #0
	ldr r1, _02259B7C ; =0x000004C1
	add r0, r6, #0
	bl NewString_ReadMsgData
	str r0, [sp, #0x1c]
	ldr r1, _02259B80 ; =0x000004C2
	add r0, r6, #0
	bl NewString_ReadMsgData
	str r0, [sp, #0x20]
	mov r0, #0x64
	mov r1, #5
	bl String_ctor
	add r6, r0, #0
	mov r0, #0x64
	mov r1, #5
	bl String_ctor
	add r7, r0, #0
	ldrh r2, [r5, #0x18]
	add r0, r4, #0
	mov r1, #0
	bl BufferMoveName
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	add r1, r6, #0
	bl StringExpandPlaceholders
	ldr r2, [sp, #0x20]
	add r0, r4, #0
	add r1, r7, #0
	bl StringExpandPlaceholders
	ldr r0, _02259B84 ; =0x00010203
	ldr r1, _02259B88 ; =0x000004CC
	str r0, [sp]
	mov r3, #2
	ldr r0, _02259B8C ; =0x00004E33
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x44
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r5, r1
	add r2, r6, #0
	bl MOD11_0225A458
	ldr r0, _02259B90 ; =0x000A0B0C
	mov r1, #0x4e
	str r0, [sp]
	mov r3, #2
	lsl r1, r1, #4
	ldr r0, _02259B8C ; =0x00004E33
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x8c
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r5, r1
	add r2, r7, #0
	bl MOD11_0225A458
	ldr r0, [sp, #0x1c]
	bl String_dtor
	ldr r0, [sp, #0x20]
	bl String_dtor
	add r0, r6, #0
	bl String_dtor
	add r0, r7, #0
	bl String_dtor
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02259B7C: .word 0x000004C1
_02259B80: .word 0x000004C2
_02259B84: .word 0x00010203
_02259B88: .word 0x000004CC
_02259B8C: .word 0x00004E33
_02259B90: .word 0x000A0B0C

	thumb_func_start MOD11_02259B94
MOD11_02259B94: ; 0x02259B94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, [r5]
	bl MOD11_022300C4
	add r6, r0, #0
	ldr r0, [r5]
	bl MOD11_02230138
	add r4, r0, #0
	ldr r1, _02259C60 ; =0x000004BF
	add r0, r6, #0
	bl NewString_ReadMsgData
	mov r1, #0x13
	str r0, [sp, #0x1c]
	add r0, r6, #0
	lsl r1, r1, #6
	bl NewString_ReadMsgData
	str r0, [sp, #0x20]
	mov r0, #0x64
	mov r1, #5
	bl String_ctor
	add r6, r0, #0
	mov r0, #0x64
	mov r1, #5
	bl String_ctor
	add r7, r0, #0
	ldrh r2, [r5, #0x18]
	add r0, r4, #0
	mov r1, #0
	bl BufferMoveName
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	add r1, r6, #0
	bl StringExpandPlaceholders
	ldr r2, [sp, #0x20]
	add r0, r4, #0
	add r1, r7, #0
	bl StringExpandPlaceholders
	ldr r0, _02259C64 ; =0x00010203
	ldr r1, _02259C68 ; =0x000004CC
	str r0, [sp]
	mov r3, #2
	ldr r0, _02259C6C ; =0x00004E33
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x44
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r5, r1
	add r2, r6, #0
	bl MOD11_0225A458
	ldr r0, _02259C70 ; =0x000A0B0C
	mov r1, #0x4e
	str r0, [sp]
	mov r3, #2
	lsl r1, r1, #4
	ldr r0, _02259C6C ; =0x00004E33
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x8c
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r5, r1
	add r2, r7, #0
	bl MOD11_0225A458
	ldr r0, [sp, #0x1c]
	bl String_dtor
	ldr r0, [sp, #0x20]
	bl String_dtor
	add r0, r6, #0
	bl String_dtor
	add r0, r7, #0
	bl String_dtor
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02259C60: .word 0x000004BF
_02259C64: .word 0x00010203
_02259C68: .word 0x000004CC
_02259C6C: .word 0x00004E33
_02259C70: .word 0x000A0B0C

	thumb_func_start MOD11_02259C74
MOD11_02259C74: ; 0x02259C74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r5, r0, #0
	add r7, r5, #0
	add r7, #0x18
	add r0, r7, #0
	add r0, #0x21
	ldrb r1, [r0]
	mov r0, #0x6a
	lsl r0, r0, #4
	strb r1, [r5, r0]
	add r1, r7, #0
	add r1, #0x20
	ldrb r1, [r1]
	sub r0, r0, #2
	strb r1, [r5, r0]
	ldr r0, [r5]
	bl MOD11_022300C4
	str r0, [sp, #0x2c]
	ldr r0, [r5]
	bl MOD11_02230138
	str r0, [sp, #0x1c]
	add r0, r5, #0
	add r1, sp, #0x40
	mov r2, #0
	bl MOD11_0225ACD4
	add r0, r5, #0
	bl MOD11_0225A164
	add r0, r5, #0
	bl MOD11_0225A5C0
	add r1, sp, #0x38
	ldr r0, [r5]
	add r1, #2
	bl MOD11_02231504
	ldr r0, [r5]
	add r1, sp, #0x34
	bl MOD11_022314E0
	mov r0, #0x18
	mov r1, #5
	bl String_ctor
	str r0, [sp, #0x28]
	ldr r0, _02259E38 ; =0x000004CC
	mov r4, #0
	add r0, r5, r0
	str r0, [sp, #0x30]
	b _02259DEC
_02259CE0:
	add r1, r4, #2
	add r0, sp, #0x34
	ldrb r6, [r0, r1]
	lsl r0, r6, #3
	add r0, r7, r0
	ldrb r1, [r0, #1]
	lsl r0, r1, #0x1d
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02259DDA
	add r0, sp, #0x40
	ldrb r0, [r0, r4]
	cmp r0, #1
	bne _02259DDA
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	bne _02259D0E
	ldr r0, [sp, #0x2c]
	ldr r1, _02259E3C ; =0x000003C2
	bl NewString_ReadMsgData
	str r0, [sp, #0x24]
	b _02259D2A
_02259D0E:
	cmp r0, #1
	bne _02259D1E
	ldr r0, [sp, #0x2c]
	ldr r1, _02259E40 ; =0x000003C3
	bl NewString_ReadMsgData
	str r0, [sp, #0x24]
	b _02259D2A
_02259D1E:
	mov r1, #0xf1
	ldr r0, [sp, #0x2c]
	lsl r1, r1, #2
	bl NewString_ReadMsgData
	str r0, [sp, #0x24]
_02259D2A:
	lsl r2, r6, #3
	ldrb r2, [r7, r2]
	ldr r0, [r5]
	add r1, r6, #0
	bl MOD11_02230014
	str r0, [sp, #0x20]
	bl FUN_020690E4
	add r2, r0, #0
	ldr r0, [sp, #0x1c]
	mov r1, #0
	bl BufferBoxMonNickname
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x24]
	bl StringExpandPlaceholders
	mov r0, #1
	tst r0, r4
	beq _02259D5A
	ldr r0, _02259E44 ; =0x00010203
	b _02259D5C
_02259D5A:
	ldr r0, _02259E48 ; =0x00040506
_02259D5C:
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldr r0, _02259E4C ; =0x00004E33
	ldr r1, _02259E50 ; =MOD11_0225F7D4
	str r0, [sp, #8]
	lsl r0, r4, #2
	ldrh r1, [r1, r0]
	add r2, r4, #0
	mov r3, #2
	str r1, [sp, #0xc]
	ldr r1, _02259E50 ; =MOD11_0225F7D4
	add r0, r1, r0
	ldrh r0, [r0, #2]
	mov r1, #0x14
	mul r2, r1
	ldr r1, [sp, #0x30]
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	add r1, r1, r2
	str r0, [sp, #0x18]
	ldr r2, [sp, #0x28]
	add r0, r5, #0
	bl MOD11_0225A458
	ldr r0, [sp, #0x24]
	bl String_dtor
	cmp r4, #1
	beq _02259DA2
	cmp r4, #3
	beq _02259DBE
	b _02259DEA
_02259DA2:
	lsl r0, r6, #3
	add r6, r7, r0
	ldrh r0, [r6, #6]
	mov r3, #4
	ldr r1, [sp, #0x20]
	str r0, [sp]
	ldrb r0, [r6, #2]
	mov r2, #3
	str r0, [sp, #4]
	ldrsh r3, [r6, r3]
	add r0, r5, #0
	bl MOD11_0225A270
	b _02259DEA
_02259DBE:
	lsl r0, r6, #3
	add r6, r7, r0
	ldrh r0, [r6, #6]
	mov r3, #4
	ldr r1, [sp, #0x20]
	str r0, [sp]
	ldrb r0, [r6, #2]
	mov r2, #5
	str r0, [sp, #4]
	ldrsh r3, [r6, r3]
	add r0, r5, #0
	bl MOD11_0225A270
	b _02259DEA
_02259DDA:
	add r0, sp, #0x40
	ldrb r0, [r0, r4]
	cmp r0, #0
	bne _02259DEA
	add r0, r5, #0
	add r1, r4, #0
	bl MOD11_0225ABA4
_02259DEA:
	add r4, r4, #1
_02259DEC:
	cmp r4, #4
	bge _02259DF2
	b _02259CE0
_02259DF2:
	ldr r0, [sp, #0x28]
	bl String_dtor
	ldr r0, [sp, #0x2c]
	ldr r1, _02259E54 ; =0x000003A2
	bl NewString_ReadMsgData
	add r4, r0, #0
	ldr r0, _02259E58 ; =0x000A0B0C
	mov r3, #2
	str r0, [sp]
	ldr r0, _02259E4C ; =0x00004E33
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02259E5C ; =MOD11_0225F7C4
	add r2, r4, #0
	ldrh r1, [r0, #0x20]
	str r1, [sp, #0xc]
	ldrh r0, [r0, #0x22]
	ldr r1, _02259E60 ; =0x0000051C
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r5, r1
	bl MOD11_0225A458
	add r0, r4, #0
	bl String_dtor
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_02259E38: .word 0x000004CC
_02259E3C: .word 0x000003C2
_02259E40: .word 0x000003C3
_02259E44: .word 0x00010203
_02259E48: .word 0x00040506
_02259E4C: .word 0x00004E33
_02259E50: .word MOD11_0225F7D4
_02259E54: .word 0x000003A2
_02259E58: .word 0x000A0B0C
_02259E5C: .word MOD11_0225F7C4
_02259E60: .word 0x0000051C

	thumb_func_start MOD11_02259E64
MOD11_02259E64: ; 0x02259E64
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov r0, #0xff
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #1
	cmp r0, #5
	bhi _02259E8C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02259E80: ; jump table
	.short _02259E8C - _02259E80 - 2 ; case 0
	.short _02259E8C - _02259E80 - 2 ; case 1
	.short _02259E90 - _02259E80 - 2 ; case 2
	.short _02259EB4 - _02259E80 - 2 ; case 3
	.short _02259EBA - _02259E80 - 2 ; case 4
	.short _02259EC0 - _02259E80 - 2 ; case 5
_02259E8C:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_02259E90:
	ldr r0, _02259F24 ; =0x0000069E
	mov r7, #0
	ldrb r0, [r4, r0]
	add r6, r7, #0
	cmp r0, #0
	beq _02259EA6
	cmp r0, #2
	beq _02259EAA
	cmp r0, #4
	beq _02259EAA
	b _02259EC4
_02259EA6:
	str r0, [sp]
	b _02259EC4
_02259EAA:
	ldr r0, _02259F24 ; =0x0000069E
	ldrb r0, [r4, r0]
	sub r0, r0, #2
	str r0, [sp]
	b _02259EC4
_02259EB4:
	mov r7, #1
	add r6, r7, #0
	b _02259EC4
_02259EBA:
	mov r7, #2
	mov r6, #1
	b _02259EC4
_02259EC0:
	mov r7, #3
	mov r6, #1
_02259EC4:
	add r0, r4, #0
	add r1, r2, #0
	bl MOD11_0225ADD4
	ldr r0, _02259F28 ; =MOD11_0225AE4C
	add r1, r4, #0
	bl MOD11_0225AD80
	ldr r0, _02259F2C ; =MOD11_0225F854
	sub r2, r5, #1
	mov r1, #6
	mul r1, r2
	add r0, r0, r1
	ldr r1, _02259F30 ; =0x000006B4
	lsl r2, r2, #2
	str r0, [r4, r1]
	ldr r0, _02259F34 ; =MOD11_0225F70C
	add r3, r0, r2
	add r0, r1, #4
	str r3, [r4, r0]
	add r0, r1, #0
	mov r3, #1
	add r0, #0xc
	strb r3, [r4, r0]
	add r0, r1, #0
	add r0, #8
	str r5, [r4, r0]
	add r0, r1, #0
	add r0, #0xd
	strb r7, [r4, r0]
	add r3, r1, #0
	ldr r0, [sp]
	add r3, #0xe
	strb r0, [r4, r3]
	add r0, r1, #0
	add r0, #0xf
	strb r6, [r4, r0]
	ldr r0, _02259F38 ; =MOD11_0225F79C
	add r3, r0, r2
	ldrh r2, [r0, r2]
	add r0, r1, #0
	add r0, #0x10
	strh r2, [r4, r0]
	ldrh r0, [r3, #2]
	add r1, #0x12
	strh r0, [r4, r1]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02259F24: .word 0x0000069E
_02259F28: .word MOD11_0225AE4C
_02259F2C: .word MOD11_0225F854
_02259F30: .word 0x000006B4
_02259F34: .word MOD11_0225F70C
_02259F38: .word MOD11_0225F79C

	thumb_func_start MOD11_02259F3C
MOD11_02259F3C: ; 0x02259F3C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	add r4, r1, #0
	mvn r0, r0
	add r1, r2, #0
	cmp r4, r0
	bne _02259F50
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02259F50:
	add r2, r5, #0
	add r2, #0x18
	cmp r4, #1
	blt _02259F66
	cmp r4, #4
	bgt _02259F66
	sub r3, r4, #1
	lsl r3, r3, #1
	ldrh r2, [r2, r3]
	cmp r2, #0
	beq _02259FCA
_02259F66:
	sub r0, r4, #1
	cmp r4, #4
	bgt _02259F88
	add r2, r4, #1
	bmi _02259F8C
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02259F7C: ; jump table
	.short _02259F8C - _02259F7C - 2 ; case 0
	.short _02259F8C - _02259F7C - 2 ; case 1
	.short _02259F92 - _02259F7C - 2 ; case 2
	.short _02259F92 - _02259F7C - 2 ; case 3
	.short _02259F92 - _02259F7C - 2 ; case 4
	.short _02259F92 - _02259F7C - 2 ; case 5
_02259F88:
	cmp r4, #0xff
	beq _02259FA2
_02259F8C:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02259F92:
	mov r2, #6
	mul r2, r0
	ldr r3, _02259FCC ; =MOD11_0225F86C
	lsl r0, r0, #2
	add r7, r3, r2
	ldr r2, _02259FD0 ; =MOD11_0225F7AC
	add r6, r2, r0
	b _02259FA6
_02259FA2:
	ldr r7, _02259FD4 ; =MOD11_0225F884
	ldr r6, _02259FD8 ; =MOD11_0225F7BC
_02259FA6:
	add r0, r5, #0
	bl MOD11_0225ADD4
	ldr r0, _02259FDC ; =MOD11_0225AF9C
	add r1, r5, #0
	bl MOD11_0225AD80
	ldr r1, _02259FE0 ; =0x000006B4
	mov r2, #3
	str r7, [r5, r1]
	add r0, r1, #4
	str r6, [r5, r0]
	add r0, r1, #0
	add r0, #0xc
	strb r2, [r5, r0]
	add r1, #8
	str r4, [r5, r1]
	add r0, r4, #0
_02259FCA:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02259FCC: .word MOD11_0225F86C
_02259FD0: .word MOD11_0225F7AC
_02259FD4: .word MOD11_0225F884
_02259FD8: .word MOD11_0225F7BC
_02259FDC: .word MOD11_0225AF9C
_02259FE0: .word 0x000006B4

	thumb_func_start MOD11_02259FE4
MOD11_02259FE4: ; 0x02259FE4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0
	add r4, r1, #0
	mvn r0, r0
	cmp r4, r0
	beq _02259FFA
	cmp r4, #1
	beq _02259FFE
	cmp r4, #0xff
	beq _0225A002
_02259FFA:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_02259FFE:
	mov r6, #0
	b _0225A004
_0225A002:
	mov r6, #1
_0225A004:
	add r0, r5, #0
	add r1, r2, #0
	bl MOD11_0225ADD4
	ldr r0, _0225A048 ; =MOD11_0225AE4C
	add r1, r5, #0
	bl MOD11_0225AD80
	cmp r4, #1
	ldr r0, _0225A04C ; =0x000006B4
	bne _0225A022
	ldr r1, _0225A050 ; =MOD11_0225F6F6
	str r1, [r5, r0]
	ldr r1, _0225A054 ; =MOD11_0225F6CC
	b _0225A028
_0225A022:
	ldr r1, _0225A058 ; =MOD11_0225F6F0
	str r1, [r5, r0]
	ldr r1, _0225A05C ; =MOD11_0225F6C8
_0225A028:
	add r0, r0, #4
	str r1, [r5, r0]
	mov r0, #0x1b
	mov r1, #6
	lsl r0, r0, #6
	strb r1, [r5, r0]
	sub r1, r0, #4
	str r4, [r5, r1]
	add r1, r0, #1
	strb r6, [r5, r1]
	mov r1, #3
	add r0, r0, #3
	strb r1, [r5, r0]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_0225A048: .word MOD11_0225AE4C
_0225A04C: .word 0x000006B4
_0225A050: .word MOD11_0225F6F6
_0225A054: .word MOD11_0225F6CC
_0225A058: .word MOD11_0225F6F0
_0225A05C: .word MOD11_0225F6C8

	thumb_func_start MOD11_0225A060
MOD11_0225A060: ; 0x0225A060
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r1, sp, #0
	mov r2, #1
	add r4, r0, #0
	bl MOD11_0225ACD4
	cmp r5, #4
	bgt _0225A090
	add r0, r5, #1
	bmi _0225A094
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225A084: ; jump table
	.short _0225A094 - _0225A084 - 2 ; case 0
	.short _0225A094 - _0225A084 - 2 ; case 1
	.short _0225A09A - _0225A084 - 2 ; case 2
	.short _0225A0AA - _0225A084 - 2 ; case 3
	.short _0225A0BA - _0225A084 - 2 ; case 4
	.short _0225A0CA - _0225A084 - 2 ; case 5
_0225A090:
	cmp r5, #0xff
	beq _0225A0DA
_0225A094:
	add sp, #4
	add r0, r5, #0
	pop {r3, r4, r5, r6, pc}
_0225A09A:
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0225A116
	mov r0, #0
	add sp, #4
	mvn r0, r0
	pop {r3, r4, r5, r6, pc}
_0225A0AA:
	add r0, sp, #0
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0225A116
	mov r0, #0
	add sp, #4
	mvn r0, r0
	pop {r3, r4, r5, r6, pc}
_0225A0BA:
	add r0, sp, #0
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _0225A116
	mov r0, #0
	add sp, #4
	mvn r0, r0
	pop {r3, r4, r5, r6, pc}
_0225A0CA:
	add r0, sp, #0
	ldrb r0, [r0, #3]
	cmp r0, #0
	bne _0225A116
	mov r0, #0
	add sp, #4
	mvn r0, r0
	pop {r3, r4, r5, r6, pc}
_0225A0DA:
	add r0, r4, #0
	mov r1, #4
	bl MOD11_0225ADD4
	ldr r0, _0225A14C ; =MOD11_0225AE4C
	add r1, r4, #0
	bl MOD11_0225AD80
	ldr r0, _0225A150 ; =MOD11_0225F8A4
	ldr r1, _0225A154 ; =0x000006B4
	ldr r2, _0225A158 ; =MOD11_0225F80C
	str r0, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #0
	mov r2, #4
	add r0, #0xc
	strb r2, [r4, r0]
	add r0, r1, #0
	add r0, #8
	str r5, [r4, r0]
	add r0, r1, #0
	add r0, #0xd
	strb r2, [r4, r0]
	mov r0, #3
	add r1, #0xf
	strb r0, [r4, r1]
	add sp, #4
	add r0, r5, #0
	pop {r3, r4, r5, r6, pc}
_0225A116:
	ldr r0, [r4]
	bl MOD11_0222FF68
	ldr r2, _0225A15C ; =0x000002FF
	add r6, r0, #0
	mov r1, #5
	bl BgFillTilemapBufferAndCommit
	add r0, r6, #0
	mov r1, #5
	bl ScheduleBgTilemapBufferTransfer
	add r0, r4, #0
	add r1, r5, #0
	bl MOD11_0225ADD0
	ldr r0, _0225A160 ; =MOD11_0225B234
	add r1, r4, #0
	bl MOD11_0225AD80
	mov r0, #0x6d
	lsl r0, r0, #4
	str r5, [r4, r0]
	add r0, r5, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0225A14C: .word MOD11_0225AE4C
_0225A150: .word MOD11_0225F8A4
_0225A154: .word 0x000006B4
_0225A158: .word MOD11_0225F80C
_0225A15C: .word 0x000002FF
_0225A160: .word MOD11_0225B234

	thumb_func_start MOD11_0225A164
MOD11_0225A164: ; 0x0225A164
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5]
	bl MOD11_02230078
	add r4, r0, #0
	ldr r0, [r5]
	bl MOD11_02230080
	add r6, r0, #0
	ldr r0, [r5]
	bl MOD11_022300CC
	add r5, r0, #0
	bl FUN_0206B888
	mov r1, #0x13
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r1, #3
	str r1, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _0225A1DC ; =0x00004E32
	add r2, r4, #0
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r3, r6, #0
	bl FUN_0200C0DC
	bl FUN_0206B890
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0225A1E0 ; =0x00004E31
	add r1, r6, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x13
	bl FUN_0200C124
	bl FUN_0206B89C
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0225A1E0 ; =0x00004E31
	add r1, r6, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x13
	bl FUN_0200C13C
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_0225A1DC: .word 0x00004E32
_0225A1E0: .word 0x00004E31

	thumb_func_start MOD11_0225A1E4
MOD11_0225A1E4: ; 0x0225A1E4
	push {r4, lr}
	ldr r0, [r0]
	bl MOD11_02230080
	ldr r1, _0225A220 ; =0x00004E40
	add r4, r0, #0
	bl FUN_0200C358
	ldr r1, _0225A224 ; =0x00004E41
	add r0, r4, #0
	bl FUN_0200C358
	ldr r1, _0225A228 ; =0x00004E42
	add r0, r4, #0
	bl FUN_0200C358
	ldr r1, _0225A22C ; =0x00004E31
	add r0, r4, #0
	bl FUN_0200C378
	ldr r1, _0225A22C ; =0x00004E31
	add r0, r4, #0
	bl FUN_0200C388
	ldr r1, _0225A230 ; =0x00004E32
	add r0, r4, #0
	bl FUN_0200C368
	pop {r4, pc}
	nop
_0225A220: .word 0x00004E40
_0225A224: .word 0x00004E41
_0225A228: .word 0x00004E42
_0225A22C: .word 0x00004E31
_0225A230: .word 0x00004E32

	thumb_func_start MOD11_0225A234
MOD11_0225A234: ; 0x0225A234
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
	add r7, r4, #0
_0225A23E:
	ldr r0, _0225A268 ; =0x00000624
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0225A24E
	bl FUN_0200C3DC
	ldr r0, _0225A268 ; =0x00000624
	str r6, [r5, r0]
_0225A24E:
	ldr r0, _0225A26C ; =0x00000634
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0225A25E
	bl FUN_0200CAB4
	ldr r0, _0225A26C ; =0x00000634
	str r7, [r5, r0]
_0225A25E:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0225A23E
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225A268: .word 0x00000624
_0225A26C: .word 0x00000634

	thumb_func_start MOD11_0225A270
MOD11_0225A270: ; 0x0225A270
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r6, r2, #0
	add r4, r0, #0
	str r1, [sp, #0xc]
	str r3, [sp, #0x10]
	cmp r6, #2
	blt _0225A284
	sub r5, r6, #2
	b _0225A286
_0225A284:
	add r5, r6, #0
_0225A286:
	lsl r0, r5, #2
	add r1, r4, r0
	ldr r0, _0225A3D0 ; =0x00000624
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225A296
	bl GF_AssertFail
_0225A296:
	lsl r0, r5, #2
	add r1, r4, r0
	ldr r0, _0225A3D4 ; =0x00000634
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225A2A6
	bl GF_AssertFail
_0225A2A6:
	cmp r6, #5
	bhi _0225A2CE
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225A2B6: ; jump table
	.short _0225A2C2 - _0225A2B6 - 2 ; case 0
	.short _0225A2CE - _0225A2B6 - 2 ; case 1
	.short _0225A2C2 - _0225A2B6 - 2 ; case 2
	.short _0225A2C6 - _0225A2B6 - 2 ; case 3
	.short _0225A2C2 - _0225A2B6 - 2 ; case 4
	.short _0225A2CA - _0225A2B6 - 2 ; case 5
_0225A2C2:
	ldr r6, _0225A3D8 ; =0x00004E40
	b _0225A2D8
_0225A2C6:
	ldr r6, _0225A3DC ; =0x00004E41
	b _0225A2D8
_0225A2CA:
	ldr r6, _0225A3E0 ; =0x00004E42
	b _0225A2D8
_0225A2CE:
	bl GF_AssertFail
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225A2D8:
	ldr r0, [r4]
	bl MOD11_02230078
	str r0, [sp, #0x18]
	ldr r0, [r4]
	bl MOD11_02230080
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	bl FUN_0206B6C8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	mov r2, #0x13
	str r6, [sp, #8]
	bl FUN_0200C00C
	ldr r3, _0225A3E4 ; =MOD11_0225F948
	add r2, sp, #0x1c
	mov r7, #6
_0225A30A:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r7, r7, #1
	bne _0225A30A
	ldr r0, [r3]
	lsl r3, r5, #2
	str r0, [r2]
	ldr r2, _0225A3E8 ; =MOD11_0225F76C
	str r6, [sp, #0x30]
	ldrh r1, [r2, r3]
	add r0, sp, #0x1c
	strh r1, [r0]
	add r1, r2, r3
	ldrh r1, [r1, #2]
	add r2, sp, #0x1c
	strh r1, [r0, #2]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	bl FUN_0200C154
	add r3, sp, #0x1c
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	mov r3, #0x11
	lsl r3, r3, #0x10
	add r6, r0, #0
	bl FUN_0200C750
	ldr r0, [sp, #0xc]
	bl FUN_0206B87C
	add r1, r0, #0
	ldr r0, [r6]
	bl FUN_020202DC
	ldr r0, [sp, #0x10]
	mov r7, #0
	cmp r0, #0
	beq _0225A3A8
	ldr r0, [sp, #0x6c]
	cmp r0, #2
	beq _0225A3A8
	cmp r0, #3
	beq _0225A3A8
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x68]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	mov r2, #0x30
	bl FUN_02079A54
	cmp r0, #4
	bhi _0225A3A0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225A388: ; jump table
	.short _0225A3A0 - _0225A388 - 2 ; case 0
	.short _0225A39E - _0225A388 - 2 ; case 1
	.short _0225A39A - _0225A388 - 2 ; case 2
	.short _0225A396 - _0225A388 - 2 ; case 3
	.short _0225A392 - _0225A388 - 2 ; case 4
_0225A392:
	mov r7, #1
	b _0225A3A0
_0225A396:
	mov r7, #2
	b _0225A3A0
_0225A39A:
	mov r7, #3
	b _0225A3A0
_0225A39E:
	mov r7, #4
_0225A3A0:
	add r0, r6, #0
	add r1, r7, #0
	bl FUN_0200C5C0
_0225A3A8:
	add r0, r6, #0
	bl FUN_0200C5A8
	lsl r0, r5, #2
	add r1, r4, r0
	ldr r0, _0225A3D0 ; =0x00000624
	ldr r2, _0225A3EC ; =0x00000514
	str r6, [r1, r0]
	ldr r0, _0225A3F0 ; =MOD11_0225A3F4
	add r1, r6, #0
	bl FUN_0200CA44
	lsl r1, r5, #2
	add r2, r4, r1
	ldr r1, _0225A3D4 ; =0x00000634
	str r0, [r2, r1]
	add r0, r6, #0
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225A3D0: .word 0x00000624
_0225A3D4: .word 0x00000634
_0225A3D8: .word 0x00004E40
_0225A3DC: .word 0x00004E41
_0225A3E0: .word 0x00004E42
_0225A3E4: .word MOD11_0225F948
_0225A3E8: .word MOD11_0225F76C
_0225A3EC: .word 0x00000514
_0225A3F0: .word MOD11_0225A3F4

	thumb_func_start MOD11_0225A3F4
MOD11_0225A3F4: ; 0x0225A3F4
	ldr r3, _0225A3FC ; =FUN_0200C5A8
	add r0, r1, #0
	bx r3
	nop
_0225A3FC: .word FUN_0200C5A8

	thumb_func_start MOD11_0225A400
MOD11_0225A400: ; 0x0225A400
	cmp r0, #3
	bhi _0225A418
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225A410: ; jump table
	.short _0225A418 - _0225A410 - 2 ; case 0
	.short _0225A41C - _0225A410 - 2 ; case 1
	.short _0225A420 - _0225A410 - 2 ; case 2
	.short _0225A424 - _0225A410 - 2 ; case 3
_0225A418:
	mov r0, #0
	bx lr
_0225A41C:
	mov r0, #1
	bx lr
_0225A420:
	mov r0, #3
	bx lr
_0225A424:
	mov r0, #2
	bx lr

	thumb_func_start MOD11_0225A428
MOD11_0225A428: ; 0x0225A428
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r2, #0
	add r0, r1, #0
	add r1, r4, #0
	mov r2, #0
	add r7, r3, #0
	bl FUN_02002E14
	add r4, r0, #0
	asr r1, r4, #2
	lsr r1, r1, #0x1d
	add r1, r4, r1
	asr r5, r1, #3
	mov r1, #8
	bl FX_ModS32
	cmp r0, #0
	beq _0225A450
	add r5, r5, #1
_0225A450:
	str r4, [r6]
	str r5, [r7]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start MOD11_0225A458
MOD11_0225A458: ; 0x0225A458
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	add r5, r1, #0
	add r7, r0, #0
	ldr r0, [r5]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r6, [sp, #0x9c]
	ldr r4, [sp, #0xa8]
	cmp r0, #0
	beq _0225A472
	bl GF_AssertFail
_0225A472:
	ldr r0, [r7]
	bl MOD11_02230080
	str r0, [sp, #0x20]
	ldr r0, [r7]
	bl MOD11_0222FF68
	str r0, [sp, #0x24]
	cmp r4, #0
	bne _0225A494
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	add r2, sp, #0x2c
	add r3, sp, #0x28
	bl MOD11_0225A428
	b _0225A49C
_0225A494:
	ldrh r0, [r4, #0x12]
	str r0, [sp, #0x2c]
	ldrh r0, [r4, #0x10]
	str r0, [sp, #0x28]
_0225A49C:
	cmp r4, #0
	bne _0225A4DA
	add r0, sp, #0x3c
	bl InitWindow
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0x28]
	ldr r0, [sp, #0x24]
	lsl r2, r2, #0x18
	add r1, sp, #0x3c
	lsr r2, r2, #0x18
	mov r3, #2
	bl AddTextWindowTopLeftCorner
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r2, [sp, #0x18]
	add r0, sp, #0x3c
	str r3, [sp, #0x14]
	bl AddTextPrinterParameterized3
	b _0225A4E6
_0225A4DA:
	add r3, r4, #0
	add r2, sp, #0x3c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
_0225A4E6:
	add r0, sp, #0x3c
	mov r1, #2
	mov r2, #5
	bl FUN_02011898
	mov r1, #1
	mov r2, #2
	add r3, sp, #0x30
	bl FUN_0201D568
	ldr r0, [sp, #0xa4]
	cmp r0, #1
	bne _0225A50A
	ldr r1, [sp, #0x2c]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	sub r6, r6, r0
_0225A50A:
	ldr r0, _0225A588 ; =0x000004C8
	ldr r0, [r7, r0]
	str r0, [sp, #0x4c]
	add r0, sp, #0x3c
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x20]
	bl FUN_0200CA40
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x98]
	bl FUN_0200C334
	str r0, [sp, #0x58]
	mov r0, #0
	ldr r1, [sp, #0x34]
	str r0, [sp, #0x5c]
	str r0, [sp, #0x6c]
	mov r0, #0x64
	str r1, [sp, #0x60]
	mov r1, #0x42
	str r0, [sp, #0x70]
	mov r0, #2
	str r0, [sp, #0x74]
	mov r0, #5
	str r0, [sp, #0x78]
	ldr r2, [sp, #0xa0]
	lsl r1, r1, #2
	add r1, r2, r1
	add r0, sp, #0x4c
	str r6, [sp, #0x64]
	str r1, [sp, #0x68]
	bl FUN_020117E8
	ldr r1, [sp, #0x94]
	add r7, r0, #0
	bl FUN_02011AC0
	mov r2, #0x42
	ldr r3, [sp, #0xa0]
	lsl r2, r2, #2
	add r0, r7, #0
	add r1, r6, #0
	add r2, r3, r2
	bl FUN_020118C4
	cmp r4, #0
	bne _0225A570
	add r0, sp, #0x3c
	bl RemoveWindow
_0225A570:
	str r7, [r5]
	add r3, sp, #0x30
	ldmia r3!, {r0, r1}
	add r2, r5, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [sp, #0x2c]
	strh r0, [r5, #0x10]
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	nop
_0225A588: .word 0x000004C8

	thumb_func_start MOD11_0225A58C
MOD11_0225A58C: ; 0x0225A58C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x4d
	mov r6, #0
	lsl r0, r0, #4
	add r4, r5, r0
	add r7, r6, #0
_0225A59A:
	ldr r0, _0225A5BC ; =0x000004CC
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0225A5B0
	bl FUN_02011870
	add r0, r4, #0
	bl FUN_0201D5E8
	ldr r0, _0225A5BC ; =0x000004CC
	str r7, [r5, r0]
_0225A5B0:
	add r6, r6, #1
	add r5, #0x14
	add r4, #0x14
	cmp r6, #0xd
	blt _0225A59A
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225A5BC: .word 0x000004CC

	thumb_func_start MOD11_0225A5C0
MOD11_0225A5C0: ; 0x0225A5C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	ldr r0, [r7]
	bl MOD11_0222FF68
	mov r1, #5
	bl GetBgTilemapBuffer
	add r4, r0, #0
	add r0, r7, #0
	add r1, sp, #4
	mov r2, #0
	bl MOD11_0225ACD4
	add r0, sp, #0
	ldrb r0, [r0, #4]
	cmp r0, #1
	bne _0225A63A
	add r0, r7, #0
	mov r1, #1
	add r2, sp, #0
	mov r3, #0
	bl MOD11_0225AD2C
	add r0, sp, #0
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _0225A61E
	mov r5, #0xc
	mov r0, #0xa9
	lsl r6, r5, #5
	lsl r0, r0, #2
	mov r2, #0xf
_0225A604:
	lsl r1, r6, #1
	add r1, r4, r1
	add r3, r2, #0
	add r1, #0x1e
_0225A60C:
	add r3, r3, #1
	strh r0, [r1]
	add r1, r1, #2
	cmp r3, #0x10
	ble _0225A60C
	add r5, r5, #1
	add r6, #0x20
	cmp r5, #0x10
	ble _0225A604
_0225A61E:
	add r0, sp, #0
	ldrb r0, [r0, #3]
	cmp r0, #1
	bne _0225A63A
	mov r0, #0xa1
	lsl r0, r0, #2
	add r1, r4, r0
	mov r2, #2
	add r0, #0x20
_0225A630:
	add r2, r2, #1
	strh r0, [r1]
	add r1, r1, #2
	cmp r2, #0xc
	ble _0225A630
_0225A63A:
	add r0, sp, #0
	ldrb r0, [r0, #5]
	cmp r0, #1
	bne _0225A694
	add r0, r7, #0
	mov r1, #2
	add r2, sp, #0
	mov r3, #0
	bl MOD11_0225AD2C
	add r0, sp, #0
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _0225A668
	ldr r0, _0225A698 ; =0x000002A6
	mov r2, #0x13
	add r1, r4, r0
	sub r0, r0, #2
_0225A65E:
	add r2, r2, #1
	strh r0, [r1]
	add r1, r1, #2
	cmp r2, #0x1d
	ble _0225A65E
_0225A668:
	add r0, sp, #0
	ldrb r0, [r0, #3]
	cmp r0, #1
	bne _0225A694
	mov r0, #0xa9
	mov r5, #3
	mov r3, #0x60
	lsl r0, r0, #2
	mov r2, #0xf
_0225A67A:
	lsl r1, r3, #1
	add r1, r4, r1
	add r6, r2, #0
	add r1, #0x1e
_0225A682:
	add r6, r6, #1
	strh r0, [r1]
	add r1, r1, #2
	cmp r6, #0x10
	ble _0225A682
	add r5, r5, #1
	add r3, #0x20
	cmp r5, #7
	ble _0225A67A
_0225A694:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225A698: .word 0x000002A6

	thumb_func_start MOD11_0225A69C
MOD11_0225A69C: ; 0x0225A69C
	cmp r1, #2
	blt _0225A6A2
	sub r1, r1, #2
_0225A6A2:
	mov r2, #0x46
	lsl r2, r2, #2
	add r0, #0x68
	mul r2, r1
	add r0, r0, r2
	bx lr
	.align 2, 0

	thumb_func_start MOD11_0225A6B0
MOD11_0225A6B0: ; 0x0225A6B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp]
	mov r1, #0x13
	str r0, [sp, #0x10]
	add r0, #0x90
	str r0, [sp, #0x10]
	ldr r0, [sp]
	lsl r1, r1, #4
	str r0, [sp, #0xc]
	add r0, #0xe0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	add r0, r0, r1
	str r0, [sp, #8]
_0225A6D4:
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp]
	ldr r7, [sp, #0x10]
	ldr r6, [sp, #0xc]
	ldr r5, [sp, #8]
	str r0, [sp, #4]
	add r4, r0, #0
_0225A6E4:
	ldr r0, [sp, #4]
	add r0, #0x80
	ldr r0, [r0]
	bl FreeToHeap
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0]
	cmp r0, #0
	beq _0225A6FE
	add r0, r7, #0
	bl RemoveWindow
_0225A6FE:
	add r0, r4, #0
	add r0, #0xec
	ldr r0, [r0]
	cmp r0, #0
	beq _0225A70E
	add r0, r6, #0
	bl RemoveWindow
_0225A70E:
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0225A71E
	add r0, r5, #0
	bl RemoveWindow
_0225A71E:
	ldr r0, [sp, #4]
	add r4, #0x14
	add r0, r0, #4
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	add r7, #0x14
	add r0, r0, #1
	add r6, #0x14
	add r5, #0x14
	str r0, [sp, #0x18]
	cmp r0, #4
	blt _0225A6E4
	mov r0, #0x46
	ldr r1, [sp]
	lsl r0, r0, #2
	add r1, r1, r0
	str r1, [sp]
	ldr r1, [sp, #0x10]
	add r1, r1, r0
	str r1, [sp, #0x10]
	ldr r1, [sp, #0xc]
	add r1, r1, r0
	str r1, [sp, #0xc]
	ldr r1, [sp, #8]
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #4
	blt _0225A6D4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}

	thumb_func_start MOD11_0225A760
MOD11_0225A760: ; 0x0225A760
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r7, r0, #0
	ldr r0, [r7]
	add r5, r1, #0
	str r2, [sp, #8]
	bl MOD11_022300C4
	add r4, r0, #0
	add r0, r7, #0
	add r1, r5, #0
	bl MOD11_0225A69C
	str r0, [sp, #0x38]
	mov r0, #6
	bl FUN_020799E8
	str r0, [sp, #0xc]
	ldr r1, _0225A95C ; =0x000003AA
	add r0, r4, #0
	bl NewString_ReadMsgData
	str r0, [sp, #0x28]
	ldr r0, [r7]
	bl MOD11_02230138
	str r0, [sp, #0x24]
	mov r0, #0x10
	mov r1, #5
	bl String_ctor
	str r0, [sp, #0x30]
	ldr r1, _0225A960 ; =0x000003A9
	add r0, r4, #0
	bl NewString_ReadMsgData
	ldr r4, [sp, #0x38]
	str r0, [sp, #0x2c]
	mov r0, #0
	str r0, [sp, #0x34]
	add r0, r4, #0
	str r0, [sp, #0x1c]
	str r0, [sp, #0x18]
	add r0, #0x28
	str r0, [sp, #0x18]
	add r0, r4, #0
	str r0, [sp, #0x14]
	add r0, #0x78
	str r0, [sp, #0x14]
	add r0, r4, #0
	str r0, [sp, #0x10]
	add r0, #0xc8
	ldr r5, [sp, #8]
	add r6, r4, #0
	str r0, [sp, #0x10]
_0225A7CE:
	ldrh r0, [r5]
	ldrh r1, [r4]
	cmp r0, r1
	beq _0225A814
	cmp r0, #0
	beq _0225A814
	mov r1, #3
	bl GetWazaAttr
	str r0, [sp, #0x3c]
	bl FUN_0206E12C
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x3c]
	bl FUN_0206E0F0
	add r1, r0, #0
	mov r0, #5
	str r0, [sp]
	ldr r0, [sp, #0x40]
	mov r2, #1
	add r3, sp, #0x4c
	bl GfGfxLoader_GetCharData
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x4c]
	ldr r1, [sp, #0x1c]
	ldr r0, [r0, #0x14]
	ldr r1, [r1, #0x18]
	ldr r2, [sp, #0xc]
	bl MIi_CpuCopy32
	ldr r0, [sp, #0x44]
	bl FreeToHeap
_0225A814:
	ldr r0, [r6, #0x34]
	cmp r0, #0
	beq _0225A826
	ldrh r1, [r5]
	ldrh r0, [r4]
	cmp r1, r0
	beq _0225A846
	cmp r1, #0
	beq _0225A846
_0225A826:
	ldrh r0, [r5]
	mov r1, #5
	bl GetMoveName
	str r0, [sp, #0x48]
	ldr r0, _0225A964 ; =0x00070809
	ldr r1, [sp, #0x48]
	str r0, [sp]
	ldr r3, [sp, #0x18]
	add r0, r7, #0
	mov r2, #2
	bl MOD11_0225A968
	ldr r0, [sp, #0x48]
	bl String_dtor
_0225A846:
	add r0, r6, #0
	add r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _0225A876
	add r0, r6, #0
	add r0, #0xd4
	ldr r0, [r0]
	cmp r0, #0
	beq _0225A876
	ldrh r1, [r5]
	cmp r1, #0
	bne _0225A876
	ldrh r0, [r4]
	cmp r1, r0
	bne _0225A876
	ldrh r1, [r5, #8]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bne _0225A876
	ldrh r1, [r5, #0x10]
	ldrh r0, [r4, #0x10]
	cmp r1, r0
	beq _0225A906
_0225A876:
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrh r2, [r5, #8]
	ldr r0, [sp, #0x24]
	mov r1, #0
	mov r3, #2
	bl BufferIntegerAsString
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrh r2, [r5, #0x10]
	ldr r0, [sp, #0x24]
	mov r1, #1
	mov r3, #2
	bl BufferIntegerAsString
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x2c]
	bl StringExpandPlaceholders
	ldrh r0, [r5, #8]
	ldrh r1, [r5, #0x10]
	bl MOD11_0225B3D4
	str r0, [sp, #0x20]
	add r0, r6, #0
	add r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _0225A8CC
	ldrh r1, [r5]
	ldrh r0, [r4]
	cmp r1, r0
	bne _0225A8CC
	ldrh r1, [r5, #8]
	ldrh r0, [r4, #8]
	cmp r1, r0
	beq _0225A8DC
_0225A8CC:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x30]
	str r0, [sp]
	ldr r3, [sp, #0x14]
	add r0, r7, #0
	mov r2, #0
	bl MOD11_0225A968
_0225A8DC:
	add r0, r6, #0
	add r0, #0xd4
	ldr r0, [r0]
	cmp r0, #0
	beq _0225A8F6
	ldrh r1, [r5]
	ldrh r0, [r4]
	cmp r1, r0
	bne _0225A8F6
	ldrh r1, [r5, #8]
	ldrh r0, [r4, #8]
	cmp r1, r0
	beq _0225A906
_0225A8F6:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x28]
	str r0, [sp]
	ldr r3, [sp, #0x10]
	add r0, r7, #0
	mov r2, #0
	bl MOD11_0225A968
_0225A906:
	ldr r0, [sp, #0x1c]
	add r4, r4, #2
	add r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r5, r5, #2
	add r0, #0x14
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r6, #0x14
	add r0, #0x14
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #0x14
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x34]
	add r0, r0, #1
	str r0, [sp, #0x34]
	cmp r0, #4
	bge _0225A930
	b _0225A7CE
_0225A930:
	ldr r0, [sp, #0x28]
	bl String_dtor
	ldr r0, [sp, #0x2c]
	bl String_dtor
	ldr r0, [sp, #0x30]
	bl String_dtor
	mov r0, #0xc
_0225A944:
	ldr r1, [sp, #8]
	ldrh r2, [r1]
	add r1, r1, #2
	str r1, [sp, #8]
	ldr r1, [sp, #0x38]
	strh r2, [r1]
	add r1, r1, #2
	str r1, [sp, #0x38]
	sub r0, r0, #1
	bne _0225A944
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225A95C: .word 0x000003AA
_0225A960: .word 0x000003A9
_0225A964: .word 0x00070809

	thumb_func_start MOD11_0225A968
MOD11_0225A968: ; 0x0225A968
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r2, #0
	add r6, r1, #0
	add r5, r0, #0
	add r4, r3, #0
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #0x1c
	add r3, sp, #0x18
	bl MOD11_0225A428
	ldr r0, [sp, #0x1c]
	strh r0, [r4, #0x12]
	ldr r0, [sp, #0x18]
	strh r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0225A994
	add r0, r4, #0
	bl RemoveWindow
_0225A994:
	add r0, r4, #0
	bl InitWindow
	ldr r0, [r5]
	bl MOD11_0222FF68
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r2, [sp, #0x18]
	add r1, r4, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #2
	bl AddTextWindowTopLeftCorner
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	add r1, r7, #0
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	add r0, r4, #0
	add r2, r6, #0
	str r3, [sp, #0x14]
	bl AddTextPrinterParameterized3
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD11_0225A9D4
MOD11_0225A9D4: ; 0x0225A9D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r5, r0, #0
	str r0, [sp, #4]
	add r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r5]
	bl MOD11_02230078
	str r0, [sp, #0xc]
	ldr r0, [r5]
	bl MOD11_02230080
	ldr r1, _0225AAA8 ; =0x0000069E
	str r0, [sp, #8]
	ldrb r1, [r5, r1]
	add r0, r5, #0
	bl MOD11_0225A69C
	ldr r4, _0225AAAC ; =MOD11_0225F914
	str r0, [sp]
	add r3, sp, #0x10
	mov r2, #6
_0225AA02:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0225AA02
	ldr r0, [r4]
	mov r4, #0
	str r0, [r3]
	add r6, sp, #0x10
	b _0225AAA0
_0225AA14:
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _0225AAB0 ; =0x00000604
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225AA24
	bl GF_AssertFail
_0225AA24:
	ldr r0, [sp, #4]
	lsl r1, r4, #1
	ldrh r0, [r0, r1]
	cmp r0, #0
	beq _0225AA9E
	mov r1, #3
	bl GetWazaAttr
	add r2, r0, #0
	ldr r0, _0225AAB4 ; =0x00004E35
	ldr r1, _0225AAB8 ; =MOD11_0225F72C
	add r0, r4, r0
	str r0, [sp, #0x24]
	lsl r0, r4, #2
	ldrh r1, [r1, r0]
	add r3, sp, #0x10
	strh r1, [r6]
	ldr r1, _0225AAB8 ; =MOD11_0225F72C
	add r0, r1, r0
	ldrh r0, [r0, #2]
	ldr r1, [sp, #8]
	strh r0, [r6, #2]
	ldr r0, [sp, #0xc]
	bl FUN_0206E240
	lsl r1, r4, #2
	add r2, r5, r1
	ldr r1, _0225AAB0 ; =0x00000604
	mov r3, #0x11
	str r0, [r2, r1]
	add r0, r1, #0
	ldr r0, [r2, r0]
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	lsl r3, r3, #0x10
	bl FUN_0200C750
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _0225AAB0 ; =0x00000604
	ldr r0, [r1, r0]
	ldr r0, [r0]
	bl FUN_02020350
	add r7, r0, #0
	mov r0, #6
	bl FUN_020799E8
	add r2, r0, #0
	ldr r0, [sp]
	lsl r3, r4, #2
	add r0, r0, r3
	mov r3, #0x66
	ldr r1, [r7, #8]
	lsl r3, r3, #0x14
	ldr r0, [r0, #0x18]
	add r1, r3, r1
	bl MIi_CpuCopy16
_0225AA9E:
	add r4, r4, #1
_0225AAA0:
	cmp r4, #4
	blt _0225AA14
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0225AAA8: .word 0x0000069E
_0225AAAC: .word MOD11_0225F914
_0225AAB0: .word 0x00000604
_0225AAB4: .word 0x00004E35
_0225AAB8: .word MOD11_0225F72C

	thumb_func_start MOD11_0225AABC
MOD11_0225AABC: ; 0x0225AABC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	bl MOD11_02230078
	ldr r0, [r5]
	bl MOD11_02230080
	mov r4, #0
	ldr r7, _0225AAEC ; =0x00000604
	add r6, r4, #0
_0225AAD2:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0225AAE0
	bl FUN_0206E270
	ldr r0, _0225AAEC ; =0x00000604
	str r6, [r5, r0]
_0225AAE0:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0225AAD2
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225AAEC: .word 0x00000604

	thumb_func_start MOD11_0225AAF0
MOD11_0225AAF0: ; 0x0225AAF0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	bl MOD11_02230078
	ldr r0, [r5]
	bl MOD11_02230080
	mov r4, #0
	add r6, r0, #0
	add r7, r4, #0
_0225AB06:
	ldr r0, _0225AB2C ; =0x00000614
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0225AB20
	bl FUN_0206E2E8
	ldr r1, _0225AB30 ; =0x00004E39
	add r0, r6, #0
	add r1, r4, r1
	bl FUN_0206E2E0
	ldr r0, _0225AB2C ; =0x00000614
	str r7, [r5, r0]
_0225AB20:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0225AB06
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225AB2C: .word 0x00000614
_0225AB30: .word 0x00004E39

	thumb_func_start MOD11_0225AB34
MOD11_0225AB34: ; 0x0225AB34
	push {r3, r4, r5, lr}
	ldr r0, [r0]
	add r5, r1, #0
	add r4, r2, #0
	bl MOD11_022300CC
	add r4, #8
	add r1, r5, #0
	mov r2, #5
	mov r3, #1
	str r4, [sp]
	bl MOD08_02211E7C
	pop {r3, r4, r5, pc}

	thumb_func_start MOD11_0225AB50
MOD11_0225AB50: ; 0x0225AB50
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	bl MOD11_022300CC
	add r6, r0, #0
	mov r7, #0
	b _0225AB96
_0225AB62:
	ldr r1, _0225AB9C ; =MOD11_0225F6A8
	lsl r2, r4, #1
	add r1, r1, r2
	ldr r2, _0225ABA0 ; =MOD11_0225F74C
	lsl r3, r4, #2
	add r2, r2, r3
	add r0, r5, #0
	mov r3, #3
	str r7, [sp]
	bl MOD11_0225ADD8
	mov r0, #0x20
	str r0, [sp]
	add r3, r4, #0
	mov r1, #7
	add r3, #8
	lsl r3, r3, #0x14
	ldr r2, [r5, #0x58]
	lsl r1, r1, #6
	add r1, r2, r1
	add r0, r6, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl PaletteData_LoadPalette
	add r4, r4, #1
_0225AB96:
	cmp r4, #4
	blt _0225AB62
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225AB9C: .word MOD11_0225F6A8
_0225ABA0: .word MOD11_0225F74C

	thumb_func_start MOD11_0225ABA4
MOD11_0225ABA4: ; 0x0225ABA4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	ldr r1, _0225AC50 ; =MOD11_0225F684
	add r5, r0, #0
	ldrb r2, [r1, #6]
	add r0, sp, #0x10
	strb r2, [r0]
	ldrb r2, [r1, #7]
	strb r2, [r0, #1]
	ldrb r2, [r1, #8]
	ldrb r1, [r1, #9]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldr r0, [r5]
	bl MOD11_0222FF68
	add r6, r0, #0
	ldr r0, [r5]
	bl MOD11_022300CC
	add r7, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r2, _0225AC54 ; =MOD11_0225F6C0
	lsl r1, r4, #1
	add r1, r2, r1
	ldr r3, _0225AC58 ; =MOD11_0225F71C
	lsl r2, r4, #2
	add r2, r3, r2
	add r0, r5, #0
	mov r3, #4
	bl MOD11_0225ADD8
	mov r0, #0x20
	str r0, [sp]
	add r3, sp, #0x10
	ldrb r3, [r3, r4]
	mov r1, #7
	ldr r2, [r5, #0x58]
	lsl r1, r1, #6
	lsl r3, r3, #0x14
	add r1, r2, r1
	add r0, r7, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl PaletteData_LoadPalette
	add r0, r6, #0
	mov r1, #4
	bl ScheduleBgTilemapBufferTransfer
	ldr r0, _0225AC58 ; =MOD11_0225F71C
	lsl r1, r4, #2
	ldrb r2, [r0, r1]
	add r3, r0, r1
	str r2, [sp]
	ldrb r4, [r3, #3]
	ldrb r2, [r3, #2]
	sub r2, r4, r2
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	str r2, [sp, #4]
	ldrb r0, [r0, r1]
	ldrb r2, [r3, #1]
	mov r1, #5
	sub r0, r2, r0
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldrb r3, [r3, #2]
	ldr r2, _0225AC5C ; =0x000002FF
	add r0, r6, #0
	bl FillBgTilemapRect
	add r0, r6, #0
	mov r1, #5
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0225AC50: .word MOD11_0225F684
_0225AC54: .word MOD11_0225F6C0
_0225AC58: .word MOD11_0225F71C
_0225AC5C: .word 0x000002FF

	thumb_func_start MOD11_0225AC60
MOD11_0225AC60: ; 0x0225AC60
	push {r4, r5, r6, lr}
	mov r5, #0
	mov r6, #1
	add r4, r5, #0
_0225AC68:
	add r0, r5, #4
	cmp r0, #6
	beq _0225AC7A
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r4, #0
	bl ToggleBgLayer
	b _0225AC84
_0225AC7A:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #0
	bl ToggleBgLayer
_0225AC84:
	add r5, r5, #1
	cmp r5, #4
	blt _0225AC68
	pop {r4, r5, r6, pc}

	thumb_func_start MOD11_0225AC8C
MOD11_0225AC8C: ; 0x0225AC8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r1, #1
	bne _0225AC9A
	bl MOD11_0225ACB0
_0225AC9A:
	cmp r4, #1
	bne _0225ACA8
	ldr r0, _0225ACAC ; =MOD11_0225B76C
	add r1, r5, #0
	mov r2, #0xa
	bl FUN_0200CA98
_0225ACA8:
	pop {r3, r4, r5, pc}
	nop
_0225ACAC: .word MOD11_0225B76C

	thumb_func_start MOD11_0225ACB0
MOD11_0225ACB0: ; 0x0225ACB0
	push {r4, lr}
	add r4, r0, #0
	bl MOD11_0225AABC
	add r0, r4, #0
	bl MOD11_0225AAF0
	add r0, r4, #0
	bl MOD11_0225A58C
	add r0, r4, #0
	bl MOD11_0225A1E4
	add r0, r4, #0
	bl MOD11_0225A234
	pop {r4, pc}
	.align 2, 0

	thumb_func_start MOD11_0225ACD4
MOD11_0225ACD4: ; 0x0225ACD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	add r6, r5, #0
	add r1, sp, #0
	add r7, r2, #0
	add r6, #0x18
	bl MOD11_022314E0
	mov r0, #0
	b _0225AD1E
_0225ACEE:
	add r2, r0, #2
	add r1, sp, #0
	ldrb r1, [r1, r2]
	cmp r7, #1
	bne _0225AD0A
	lsl r1, r1, #3
	add r1, r6, r1
	ldrb r1, [r1, #1]
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1f
	bne _0225AD0A
	mov r1, #0
	strb r1, [r4, r0]
	b _0225AD1C
_0225AD0A:
	mov r1, #0x6a
	lsl r1, r1, #4
	ldrb r1, [r5, r1]
	lsl r2, r0, #2
	lsl r3, r1, #4
	ldr r1, _0225AD28 ; =MOD11_0225F9EC
	add r1, r1, r3
	ldr r1, [r2, r1]
	strb r1, [r4, r0]
_0225AD1C:
	add r0, r0, #1
_0225AD1E:
	cmp r0, #4
	blt _0225ACEE
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225AD28: .word MOD11_0225F9EC

	thumb_func_start MOD11_0225AD2C
MOD11_0225AD2C: ; 0x0225AD2C
	push {r4, lr}
	mov r4, #0x6a
	lsl r4, r4, #4
	ldrb r4, [r0, r4]
	cmp r4, #0xb
	bhi _0225AD76
	add r4, r4, r4
	add r4, pc
	ldrh r4, [r4, #6]
	lsl r4, r4, #0x10
	asr r4, r4, #0x10
	add pc, r4
_0225AD44: ; jump table
	.short _0225AD5C - _0225AD44 - 2 ; case 0
	.short _0225AD76 - _0225AD44 - 2 ; case 1
	.short _0225AD76 - _0225AD44 - 2 ; case 2
	.short _0225AD76 - _0225AD44 - 2 ; case 3
	.short _0225AD76 - _0225AD44 - 2 ; case 4
	.short _0225AD76 - _0225AD44 - 2 ; case 5
	.short _0225AD76 - _0225AD44 - 2 ; case 6
	.short _0225AD76 - _0225AD44 - 2 ; case 7
	.short _0225AD5C - _0225AD44 - 2 ; case 8
	.short _0225AD5C - _0225AD44 - 2 ; case 9
	.short _0225AD5C - _0225AD44 - 2 ; case 10
	.short _0225AD5C - _0225AD44 - 2 ; case 11
_0225AD5C:
	mov r4, #0
	add r0, r4, #0
	mov r3, #1
	sub r1, r1, #1
_0225AD64:
	cmp r4, r1
	bne _0225AD6C
	strb r3, [r2, r4]
	b _0225AD6E
_0225AD6C:
	strb r0, [r2, r4]
_0225AD6E:
	add r4, r4, #1
	cmp r4, #4
	blt _0225AD64
	pop {r4, pc}
_0225AD76:
	add r1, r2, #0
	add r2, r3, #0
	bl MOD11_0225ACD4
	pop {r4, pc}

	thumb_func_start MOD11_0225AD80
MOD11_0225AD80: ; 0x0225AD80
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0225AD90
	bl GF_AssertFail
_0225AD90:
	mov r0, #0x6b
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	mov r2, #0x24
	bl MI_CpuFill8
	ldr r2, _0225ADAC ; =0x00000514
	add r0, r5, #0
	add r1, r4, #0
	bl FUN_0200CA44
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0225ADAC: .word 0x00000514

	thumb_func_start MOD11_0225ADB0
MOD11_0225ADB0: ; 0x0225ADB0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0225ADCE
	bl FUN_0200CAB4
	mov r0, #0x6b
	lsl r0, r0, #4
	mov r1, #0
	add r0, r4, r0
	mov r2, #0x24
	str r1, [r4, #8]
	bl MI_CpuFill8
_0225ADCE:
	pop {r4, pc}

	thumb_func_start MOD11_0225ADD0
MOD11_0225ADD0: ; 0x0225ADD0
	bx lr
	.align 2, 0

	thumb_func_start MOD11_0225ADD4
MOD11_0225ADD4: ; 0x0225ADD4
	bx lr
	.align 2, 0

	thumb_func_start MOD11_0225ADD8
MOD11_0225ADD8: ; 0x0225ADD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5]
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	bl MOD11_0222FF68
	mov r1, #4
	str r0, [sp, #4]
	bl GetBgTilemapBuffer
	mov ip, r0
	lsl r0, r7, #2
	add r0, r5, r0
	ldr r0, [r0, #0x3c]
	ldrb r7, [r4]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	lsl r0, r0, #1
	ldrsh r1, [r6, r0]
	ldrb r0, [r4, #1]
	cmp r7, r0
	bgt _0225AE40
	lsl r6, r7, #5
_0225AE0C:
	lsl r2, r6, #1
	mov r0, ip
	add r5, r0, r2
	ldr r0, [sp]
	ldrb r3, [r4, #3]
	add r2, r0, r2
	ldrb r0, [r4, #2]
	cmp r0, r3
	bgt _0225AE36
	lsl r3, r0, #1
	add r2, r2, r3
	add r3, r5, r3
_0225AE24:
	ldrh r5, [r2]
	add r0, r0, #1
	add r2, r2, #2
	add r5, r1, r5
	strh r5, [r3]
	ldrb r5, [r4, #3]
	add r3, r3, #2
	cmp r0, r5
	ble _0225AE24
_0225AE36:
	ldrb r0, [r4, #1]
	add r7, r7, #1
	add r6, #0x20
	cmp r7, r0
	ble _0225AE0C
_0225AE40:
	ldr r0, [sp, #4]
	mov r1, #4
	bl ScheduleBgTilemapBufferTransfer
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_start MOD11_0225AE4C
MOD11_0225AE4C: ; 0x0225AE4C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r0, [r4]
	bl MOD11_0222FF68
	mov r3, #0x6b
	lsl r3, r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _0225AE6C
	cmp r0, #1
	beq _0225AEDC
	cmp r0, #2
	beq _0225AEF8
	b _0225AF66
_0225AE6C:
	mov r0, #2
	str r0, [sp]
	add r1, r3, #4
	add r2, r3, #0
	add r3, #0x10
	add r2, #8
	ldrb r3, [r4, r3]
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r0, r4, #0
	bl MOD11_0225ADD8
	ldr r0, _0225AF8C ; =0x000006C1
	add r2, sp, #4
	ldrb r1, [r4, r0]
	mov r0, #0x14
	mul r0, r1
	add r1, r4, r0
	ldr r0, _0225AF90 ; =0x000004CC
	ldr r0, [r1, r0]
	add r1, sp, #8
	bl FUN_020119A4
	ldr r0, _0225AF8C ; =0x000006C1
	ldr r2, [sp, #4]
	ldrb r1, [r4, r0]
	mov r0, #0x14
	sub r2, r2, #2
	mul r0, r1
	add r1, r4, r0
	ldr r0, _0225AF90 ; =0x000004CC
	ldr r0, [r1, r0]
	ldr r1, [sp, #8]
	bl FUN_020118C4
	ldr r0, _0225AF94 ; =0x000006C2
	ldrb r1, [r4, r0]
	cmp r1, #0xff
	beq _0225AECE
	lsl r1, r1, #2
	add r1, r4, r1
	sub r0, #0x9e
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225AECE
	mov r1, #0
	sub r2, r1, #2
	bl FUN_0200C82C
_0225AECE:
	mov r0, #0x6b
	lsl r0, r0, #4
	ldrsh r1, [r4, r0]
	add sp, #0xc
	add r1, r1, #1
	strh r1, [r4, r0]
	pop {r3, r4, pc}
_0225AEDC:
	add r0, r3, #2
	ldrsh r0, [r4, r0]
	add r1, r0, #1
	add r0, r3, #2
	strh r1, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0225AF86
	mov r1, #0
	add r0, r3, #2
	strh r1, [r4, r0]
	ldrsh r0, [r4, r3]
	add r0, r0, #1
	strh r0, [r4, r3]
_0225AEF8:
	mov r0, #1
	ldr r3, _0225AF98 ; =0x000006B4
	str r0, [sp]
	add r2, r3, #4
	ldr r1, [r4, r3]
	add r3, #0xc
	ldrb r3, [r4, r3]
	ldr r2, [r4, r2]
	add r0, r4, #0
	bl MOD11_0225ADD8
	ldr r0, _0225AF8C ; =0x000006C1
	add r2, sp, #4
	ldrb r1, [r4, r0]
	mov r0, #0x14
	mul r0, r1
	add r1, r4, r0
	ldr r0, _0225AF90 ; =0x000004CC
	ldr r0, [r1, r0]
	add r1, sp, #8
	bl FUN_020119A4
	ldr r0, _0225AF8C ; =0x000006C1
	ldr r2, [sp, #4]
	ldrb r1, [r4, r0]
	mov r0, #0x14
	add r2, r2, #1
	mul r0, r1
	add r1, r4, r0
	ldr r0, _0225AF90 ; =0x000004CC
	ldr r0, [r1, r0]
	ldr r1, [sp, #8]
	bl FUN_020118C4
	ldr r0, _0225AF94 ; =0x000006C2
	ldrb r1, [r4, r0]
	cmp r1, #0xff
	beq _0225AF58
	lsl r1, r1, #2
	add r1, r4, r1
	sub r0, #0x9e
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225AF58
	mov r1, #0
	mov r2, #1
	bl FUN_0200C82C
_0225AF58:
	mov r0, #0x6b
	lsl r0, r0, #4
	ldrsh r1, [r4, r0]
	add sp, #0xc
	add r1, r1, #1
	strh r1, [r4, r0]
	pop {r3, r4, pc}
_0225AF66:
	add r0, r3, #2
	ldrsh r0, [r4, r0]
	add r1, r0, #1
	add r0, r3, #2
	strh r1, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0225AF86
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl MOD11_0225AC8C
	add r0, r4, #0
	bl MOD11_0225ADB0
_0225AF86:
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0225AF8C: .word 0x000006C1
_0225AF90: .word 0x000004CC
_0225AF94: .word 0x000006C2
_0225AF98: .word 0x000006B4

	thumb_func_start MOD11_0225AF9C
MOD11_0225AF9C: ; 0x0225AF9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r1, #0
	ldr r0, [r4]
	bl MOD11_0222FF68
	ldr r0, _0225B21C ; =0x000006BC
	add r1, r4, #0
	ldr r0, [r4, r0]
	add r1, #0x18
	cmp r0, #4
	bgt _0225AFCE
	cmp r0, #0
	blt _0225B00A
	add r2, r0, r0
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0225AFC4: ; jump table
	.short _0225B00A - _0225AFC4 - 2 ; case 0
	.short _0225AFD2 - _0225AFC4 - 2 ; case 1
	.short _0225AFE0 - _0225AFC4 - 2 ; case 2
	.short _0225AFEE - _0225AFC4 - 2 ; case 3
	.short _0225AFFC - _0225AFC4 - 2 ; case 4
_0225AFCE:
	cmp r0, #0xff
	b _0225B00A
_0225AFD2:
	mov r0, #5
	str r0, [sp, #8]
	ldrh r0, [r1]
	mov r5, #0
	mov r6, #9
	str r0, [sp, #4]
	b _0225B012
_0225AFE0:
	mov r0, #6
	str r0, [sp, #8]
	ldrh r0, [r1, #2]
	mov r5, #1
	mov r6, #0xa
	str r0, [sp, #4]
	b _0225B012
_0225AFEE:
	mov r0, #7
	str r0, [sp, #8]
	ldrh r0, [r1, #4]
	mov r5, #2
	mov r6, #0xb
	str r0, [sp, #4]
	b _0225B012
_0225AFFC:
	mov r0, #8
	str r0, [sp, #8]
	ldrh r0, [r1, #6]
	mov r5, #3
	mov r6, #0xc
	str r0, [sp, #4]
	b _0225B012
_0225B00A:
	mov r5, #0
	add r6, r5, #0
	str r5, [sp, #8]
	str r5, [sp, #4]
_0225B012:
	mov r3, #0x6b
	lsl r3, r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _0225B026
	cmp r0, #1
	beq _0225B100
	cmp r0, #2
	beq _0225B11E
	b _0225B1F6
_0225B026:
	mov r0, #2
	str r0, [sp]
	add r1, r3, #4
	add r2, r3, #0
	add r3, #0x10
	add r2, #8
	ldrb r3, [r4, r3]
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r0, r4, #0
	bl MOD11_0225ADD8
	ldr r0, _0225B21C ; =0x000006BC
	add r1, sp, #0x20
	ldr r0, [r4, r0]
	cmp r0, #0xff
	beq _0225B0DA
	ldr r0, _0225B220 ; =0x000004CC
	add r2, sp, #0x1c
	add r7, r4, r0
	mov r0, #0x14
	mul r0, r5
	str r0, [sp, #0xc]
	ldr r0, [r7, r0]
	bl FUN_020119A4
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x1c]
	ldr r0, [r7, r0]
	ldr r1, [sp, #0x20]
	sub r2, r2, #2
	bl FUN_020118C4
	ldr r0, _0225B220 ; =0x000004CC
	add r1, sp, #0x20
	add r7, r4, r0
	mov r0, #0x14
	mul r0, r6
	str r0, [sp, #0x10]
	ldr r0, [r7, r0]
	add r2, sp, #0x1c
	bl FUN_020119A4
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x1c]
	ldr r0, [r7, r0]
	ldr r1, [sp, #0x20]
	sub r2, r2, #2
	bl FUN_020118C4
	ldr r0, _0225B220 ; =0x000004CC
	mov r1, #0x14
	add r6, r4, r0
	ldr r0, [sp, #8]
	add r2, sp, #0x1c
	add r7, r0, #0
	mul r7, r1
	ldr r0, [r6, r7]
	add r1, sp, #0x20
	bl FUN_020119A4
	ldr r2, [sp, #0x1c]
	ldr r0, [r6, r7]
	ldr r1, [sp, #0x20]
	sub r2, r2, #2
	bl FUN_020118C4
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0225B0F2
	lsl r5, r5, #2
	ldr r0, _0225B224 ; =0x00000604
	add r1, r4, r5
	ldr r0, [r1, r0]
	mov r1, #0
	ldr r0, [r0]
	sub r2, r1, #2
	bl FUN_0200C7FC
	ldr r0, _0225B228 ; =0x00000614
	add r1, r4, r5
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225B0F2
	mov r1, #0
	ldr r0, [r0]
	sub r2, r1, #2
	bl FUN_0200C7FC
	b _0225B0F2
_0225B0DA:
	ldr r0, _0225B22C ; =0x0000051C
	add r2, sp, #0x1c
	ldr r0, [r4, r0]
	bl FUN_020119A4
	ldr r0, _0225B22C ; =0x0000051C
	ldr r2, [sp, #0x1c]
	ldr r0, [r4, r0]
	ldr r1, [sp, #0x20]
	sub r2, r2, #2
	bl FUN_020118C4
_0225B0F2:
	mov r0, #0x6b
	lsl r0, r0, #4
	ldrsh r1, [r4, r0]
	add sp, #0x24
	add r1, r1, #1
	strh r1, [r4, r0]
	pop {r4, r5, r6, r7, pc}
_0225B100:
	add r0, r3, #2
	ldrsh r0, [r4, r0]
	add r1, r0, #1
	add r0, r3, #2
	strh r1, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bgt _0225B112
	b _0225B216
_0225B112:
	mov r1, #0
	add r0, r3, #2
	strh r1, [r4, r0]
	ldrsh r0, [r4, r3]
	add r0, r0, #1
	strh r0, [r4, r3]
_0225B11E:
	mov r0, #1
	ldr r3, _0225B230 ; =0x000006B4
	str r0, [sp]
	add r2, r3, #4
	ldr r1, [r4, r3]
	add r3, #0xc
	ldrb r3, [r4, r3]
	ldr r2, [r4, r2]
	add r0, r4, #0
	bl MOD11_0225ADD8
	ldr r0, _0225B21C ; =0x000006BC
	add r1, sp, #0x20
	ldr r0, [r4, r0]
	cmp r0, #0xff
	beq _0225B1D0
	ldr r0, _0225B220 ; =0x000004CC
	add r2, sp, #0x1c
	add r7, r4, r0
	mov r0, #0x14
	mul r0, r5
	str r0, [sp, #0x14]
	ldr r0, [r7, r0]
	bl FUN_020119A4
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x1c]
	ldr r0, [r7, r0]
	ldr r1, [sp, #0x20]
	add r2, r2, #1
	bl FUN_020118C4
	ldr r0, _0225B220 ; =0x000004CC
	add r1, sp, #0x20
	add r7, r4, r0
	mov r0, #0x14
	mul r0, r6
	str r0, [sp, #0x18]
	ldr r0, [r7, r0]
	add r2, sp, #0x1c
	bl FUN_020119A4
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r0, [r7, r0]
	ldr r1, [sp, #0x20]
	add r2, r2, #1
	bl FUN_020118C4
	ldr r0, _0225B220 ; =0x000004CC
	mov r1, #0x14
	add r6, r4, r0
	ldr r0, [sp, #8]
	add r2, sp, #0x1c
	add r7, r0, #0
	mul r7, r1
	ldr r0, [r6, r7]
	add r1, sp, #0x20
	bl FUN_020119A4
	ldr r2, [sp, #0x1c]
	ldr r0, [r6, r7]
	ldr r1, [sp, #0x20]
	add r2, r2, #1
	bl FUN_020118C4
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0225B1E8
	lsl r5, r5, #2
	ldr r0, _0225B224 ; =0x00000604
	add r1, r4, r5
	ldr r0, [r1, r0]
	mov r1, #0
	ldr r0, [r0]
	mov r2, #1
	bl FUN_0200C7FC
	ldr r0, _0225B228 ; =0x00000614
	add r1, r4, r5
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225B1E8
	ldr r0, [r0]
	mov r1, #0
	mov r2, #1
	bl FUN_0200C7FC
	b _0225B1E8
_0225B1D0:
	ldr r0, _0225B22C ; =0x0000051C
	add r2, sp, #0x1c
	ldr r0, [r4, r0]
	bl FUN_020119A4
	ldr r0, _0225B22C ; =0x0000051C
	ldr r2, [sp, #0x1c]
	ldr r0, [r4, r0]
	ldr r1, [sp, #0x20]
	add r2, r2, #1
	bl FUN_020118C4
_0225B1E8:
	mov r0, #0x6b
	lsl r0, r0, #4
	ldrsh r1, [r4, r0]
	add sp, #0x24
	add r1, r1, #1
	strh r1, [r4, r0]
	pop {r4, r5, r6, r7, pc}
_0225B1F6:
	add r0, r3, #2
	ldrsh r0, [r4, r0]
	add r1, r0, #1
	add r0, r3, #2
	strh r1, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0225B216
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl MOD11_0225AC8C
	add r0, r4, #0
	bl MOD11_0225ADB0
_0225B216:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0225B21C: .word 0x000006BC
_0225B220: .word 0x000004CC
_0225B224: .word 0x00000604
_0225B228: .word 0x00000614
_0225B22C: .word 0x0000051C
_0225B230: .word 0x000006B4

	thumb_func_start MOD11_0225B234
MOD11_0225B234: ; 0x0225B234
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r0, [r4]
	bl MOD11_0222FF68
	mov r1, #0x6b
	lsl r1, r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #3
	bls _0225B24C
	b _0225B3AE
_0225B24C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225B258: ; jump table
	.short _0225B260 - _0225B258 - 2 ; case 0
	.short _0225B2E8 - _0225B258 - 2 ; case 1
	.short _0225B304 - _0225B258 - 2 ; case 2
	.short _0225B38E - _0225B258 - 2 ; case 3
_0225B260:
	add r1, #0x20
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r2, sp, #4
	mov r3, #1
	bl MOD11_0225AD2C
	mov r5, #0
	mov r7, #2
	add r6, sp, #4
	b _0225B2D6
_0225B276:
	ldrb r0, [r6, r5]
	cmp r0, #1
	bne _0225B2D4
	mov r1, #6
	add r2, r5, #0
	mul r2, r1
	ldr r1, _0225B3C4 ; =MOD11_0225F88C
	lsl r3, r5, #2
	add r1, r1, r2
	ldr r2, _0225B3C8 ; =MOD11_0225F7FC
	add r0, r4, #0
	add r2, r2, r3
	mov r3, #4
	str r7, [sp]
	bl MOD11_0225ADD8
	mov r0, #0x14
	mul r0, r5
	add r1, r4, r0
	ldr r0, _0225B3CC ; =0x000004CC
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225B2C0
	add r1, sp, #0xc
	add r2, sp, #8
	bl FUN_020119A4
	mov r0, #0x14
	mul r0, r5
	add r1, r4, r0
	ldr r0, _0225B3CC ; =0x000004CC
	ldr r2, [sp, #8]
	ldr r0, [r1, r0]
	ldr r1, [sp, #0xc]
	sub r2, r2, #2
	bl FUN_020118C4
_0225B2C0:
	lsl r0, r5, #2
	add r1, r4, r0
	ldr r0, _0225B3D0 ; =0x00000624
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225B2D4
	mov r1, #0
	sub r2, r1, #2
	bl FUN_0200C82C
_0225B2D4:
	add r5, r5, #1
_0225B2D6:
	cmp r5, #4
	blt _0225B276
	mov r0, #0x6b
	lsl r0, r0, #4
	ldrsh r1, [r4, r0]
	add sp, #0x10
	add r1, r1, #1
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0225B2E8:
	add r0, r1, #2
	ldrsh r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #2
	strh r2, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0225B3BE
	mov r2, #0
	add r0, r1, #2
	strh r2, [r4, r0]
	ldrsh r0, [r4, r1]
	add r0, r0, #1
	strh r0, [r4, r1]
_0225B304:
	mov r1, #0x6d
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r2, sp, #4
	mov r3, #1
	bl MOD11_0225AD2C
	mov r5, #0
	mov r7, #1
	add r6, sp, #4
	b _0225B37C
_0225B31C:
	ldrb r0, [r6, r5]
	cmp r0, #1
	bne _0225B37A
	mov r1, #6
	add r2, r5, #0
	mul r2, r1
	ldr r1, _0225B3C4 ; =MOD11_0225F88C
	lsl r3, r5, #2
	add r1, r1, r2
	ldr r2, _0225B3C8 ; =MOD11_0225F7FC
	add r0, r4, #0
	add r2, r2, r3
	mov r3, #4
	str r7, [sp]
	bl MOD11_0225ADD8
	mov r0, #0x14
	mul r0, r5
	add r1, r4, r0
	ldr r0, _0225B3CC ; =0x000004CC
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225B366
	add r1, sp, #0xc
	add r2, sp, #8
	bl FUN_020119A4
	mov r0, #0x14
	mul r0, r5
	add r1, r4, r0
	ldr r0, _0225B3CC ; =0x000004CC
	ldr r2, [sp, #8]
	ldr r0, [r1, r0]
	ldr r1, [sp, #0xc]
	add r2, r2, #1
	bl FUN_020118C4
_0225B366:
	lsl r0, r5, #2
	add r1, r4, r0
	ldr r0, _0225B3D0 ; =0x00000624
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0225B37A
	mov r1, #0
	mov r2, #1
	bl FUN_0200C82C
_0225B37A:
	add r5, r5, #1
_0225B37C:
	cmp r5, #4
	blt _0225B31C
	mov r0, #0x6b
	lsl r0, r0, #4
	ldrsh r1, [r4, r0]
	add sp, #0x10
	add r1, r1, #1
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0225B38E:
	add r0, r1, #2
	ldrsh r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #2
	strh r2, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0225B3BE
	mov r2, #0
	add r0, r1, #2
	strh r2, [r4, r0]
	ldrsh r0, [r4, r1]
	add sp, #0x10
	add r0, r0, #1
	strh r0, [r4, r1]
	pop {r3, r4, r5, r6, r7, pc}
_0225B3AE:
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl MOD11_0225AC8C
	add r0, r4, #0
	bl MOD11_0225ADB0
_0225B3BE:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225B3C4: .word MOD11_0225F88C
_0225B3C8: .word MOD11_0225F7FC
_0225B3CC: .word 0x000004CC
_0225B3D0: .word 0x00000624

	thumb_func_start MOD11_0225B3D4
MOD11_0225B3D4: ; 0x0225B3D4
	cmp r0, #0
	bne _0225B3DC
	ldr r0, _0225B42C ; =0x00070800
	bx lr
_0225B3DC:
	cmp r1, r0
	bne _0225B3E4
	ldr r0, _0225B430 ; =0x00010200
	bx lr
_0225B3E4:
	cmp r1, #2
	bgt _0225B3F0
	cmp r0, #1
	bne _0225B428
	ldr r0, _0225B434 ; =0x00050600
	bx lr
_0225B3F0:
	cmp r1, #7
	bgt _0225B408
	cmp r0, #1
	beq _0225B3FE
	cmp r0, #2
	beq _0225B402
	b _0225B428
_0225B3FE:
	ldr r0, _0225B434 ; =0x00050600
	bx lr
_0225B402:
	mov r0, #0xc1
	lsl r0, r0, #0xa
	bx lr
_0225B408:
	asr r2, r1, #1
	lsr r2, r2, #0x1e
	add r2, r1, r2
	asr r2, r2, #2
	cmp r0, r2
	bgt _0225B418
	ldr r0, _0225B434 ; =0x00050600
	bx lr
_0225B418:
	lsr r2, r1, #0x1f
	add r2, r1, r2
	asr r1, r2, #1
	cmp r0, r1
	bgt _0225B428
	mov r0, #0xc1
	lsl r0, r0, #0xa
	bx lr
_0225B428:
	ldr r0, _0225B430 ; =0x00010200
	bx lr
	.align 2, 0
_0225B42C: .word 0x00070800
_0225B430: .word 0x00010200
_0225B434: .word 0x00050600

	thumb_func_start MOD11_0225B438
MOD11_0225B438: ; 0x0225B438
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl MOD11_0222FF68
	add r4, r0, #0
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	beq _0225B454
	cmp r0, #1
	beq _0225B4AA
	b _0225B4D6
_0225B454:
	mov r2, #8
	ldrsh r1, [r5, r2]
	ldr r0, _0225B528 ; =0x000018E7
	add r1, r1, r0
	strh r1, [r5, #8]
	mov r1, #0xa
	ldrsh r3, [r5, r1]
	mov r1, #0xfa
	lsl r1, r1, #2
	sub r1, r3, r1
	strh r1, [r5, #0xa]
	ldrsh r1, [r5, r2]
	lsl r0, r0, #2
	sub r0, r0, r1
	mov r1, #0x64
	bl _s32_div_f
	strh r0, [r5, #0xc]
	mov r0, #0xa
	ldrsh r0, [r5, r0]
	mov r1, #0x64
	neg r0, r0
	bl _s32_div_f
	strh r0, [r5, #0xe]
	mov r0, #8
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bge _0225B496
	mov r0, #0xa
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bgt _0225B526
_0225B496:
	mov r1, #0
	strh r1, [r5, #8]
	mov r0, #0x90
	strh r0, [r5, #0xa]
	strh r1, [r5, #0xc]
	strh r1, [r5, #0xe]
	ldrb r0, [r5, #0x13]
	add r0, r0, #1
	strb r0, [r5, #0x13]
	pop {r4, r5, r6, pc}
_0225B4AA:
	ldr r1, [r5]
	ldr r0, _0225B52C ; =0x000006A2
	mov r2, #0
	strb r2, [r1, r0]
	ldr r0, [r5, #4]
	bl FUN_0200CAB4
	bl FUN_02015F1C
	ldr r2, _0225B530 ; =0x04001000
	ldr r0, _0225B534 ; =0xFFFF1FFF
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	ldr r0, [r5]
	mov r1, #1
	bl MOD11_0225B77C
	ldrb r0, [r5, #0x13]
	add r0, r0, #1
	strb r0, [r5, #0x13]
	pop {r4, r5, r6, pc}
_0225B4D6:
	ldr r0, [r5]
	bl MOD11_0225B780
	cmp r0, #0
	beq _0225B526
	mov r2, #0
	add r0, r4, #0
	mov r1, #4
	add r3, r2, #0
	bl BgSetPosTextAndCommit
	add r0, r4, #0
	mov r1, #4
	mov r2, #3
	mov r3, #0
	bl BgSetPosTextAndCommit
	mov r2, #0
	add r0, r4, #0
	mov r1, #5
	add r3, r2, #0
	bl BgSetPosTextAndCommit
	add r0, r4, #0
	mov r1, #5
	mov r2, #3
	mov r3, #0
	bl BgSetPosTextAndCommit
	ldr r0, [r5]
	mov r1, #1
	ldr r0, [r0]
	bl MOD11_022312AC
	add r0, r5, #0
	bl FreeToHeap
	add r0, r6, #0
	bl FUN_0200CAB4
_0225B526:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0225B528: .word 0x000018E7
_0225B52C: .word 0x000006A2
_0225B530: .word 0x04001000
_0225B534: .word 0xFFFF1FFF

	thumb_func_start MOD11_0225B538
MOD11_0225B538: ; 0x0225B538
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl MOD11_0222FF68
	add r6, r0, #0
	ldrb r0, [r5, #0x12]
	cmp r0, #4
	bne _0225B586
	mov r0, #0xc
	ldrsh r1, [r5, r0]
	mov r0, #0xff
	sub r3, r0, r1
	cmp r3, #0
	ble _0225B55A
	mov r3, #0
_0225B55A:
	add r0, r6, #0
	mov r1, #4
	mov r2, #0
	bl BgSetPosTextAndCommit
	mov r3, #0xc
	ldrsh r4, [r5, r3]
	mov r3, #0xff
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	sub r3, r3, r4
	bl BgSetPosTextAndCommit
	mov r0, #8
	ldrsh r0, [r5, r0]
	mov r1, #0x64
	neg r0, r0
	bl _s32_div_f
	add r4, r0, #0
	b _0225B5B6
_0225B586:
	mov r0, #0xc
	ldrsh r3, [r5, r0]
	cmp r3, #0
	bge _0225B590
	mov r3, #0
_0225B590:
	add r0, r6, #0
	mov r1, #4
	mov r2, #0
	bl BgSetPosTextAndCommit
	mov r3, #0xc
	ldrsh r3, [r5, r3]
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl BgSetPosTextAndCommit
	mov r0, #8
	ldrsh r0, [r5, r0]
	mov r1, #0x64
	bl _s32_div_f
	add r4, r0, #0
	add r4, #0xff
_0225B5B6:
	add r0, r6, #0
	mov r1, #4
	mov r2, #3
	mov r3, #0
	bl BgSetPosTextAndCommit
	add r0, r6, #0
	mov r1, #5
	mov r2, #3
	mov r3, #0
	bl BgSetPosTextAndCommit
	mov r0, #0xa
	ldrsh r0, [r5, r0]
	mov r1, #0x64
	bl _s32_div_f
	add r0, #0x90
	cmp r4, #0
	bge _0225B5E2
	mov r4, #0
	b _0225B5E8
_0225B5E2:
	cmp r4, #0xff
	ble _0225B5E8
	mov r4, #0xff
_0225B5E8:
	cmp r0, #0xc0
	ble _0225B5F0
	mov r0, #0xc0
	b _0225B5F6
_0225B5F0:
	cmp r0, #0
	bge _0225B5F6
	mov r0, #0
_0225B5F6:
	ldrb r1, [r5, #0x12]
	cmp r1, #4
	bne _0225B60A
	lsl r1, r4, #0x18
	ldr r2, _0225B63C ; =0x04001040
	lsr r1, r1, #0x18
	strh r1, [r2]
	mov r1, #0x90
	strh r1, [r2, #4]
	b _0225B620
_0225B60A:
	cmp r4, #0
	bne _0225B610
	mov r4, #1
_0225B610:
	mov r1, #0xff
	lsl r2, r4, #8
	lsl r1, r1, #8
	and r1, r2
	ldr r2, _0225B63C ; =0x04001040
	strh r1, [r2]
	mov r1, #0x90
	strh r1, [r2, #4]
_0225B620:
	ldr r2, _0225B640 ; =0x04001042
	mov r1, #0xff
	lsl r0, r0, #0x18
	strh r1, [r2]
	lsr r1, r0, #0x18
	mov r0, #9
	lsl r0, r0, #0xc
	orr r0, r1
	strh r0, [r2, #4]
	mov r0, #0xe
	ldrsh r0, [r5, r0]
	strh r0, [r5, #0x10]
	pop {r4, r5, r6, pc}
	nop
_0225B63C: .word 0x04001040
_0225B640: .word 0x04001042

	thumb_func_start MOD11_0225B644
MOD11_0225B644: ; 0x0225B644
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, _0225B6FC ; =0x04000006
	ldrh r0, [r0]
	cmp r0, #0x90
	bne _0225B68E
	ldr r0, [r4]
	ldr r0, [r0]
	bl MOD11_0222FF68
	mov r2, #0
	mov r1, #4
	add r3, r2, #0
	add r5, r0, #0
	bl BgSetPosTextAndCommit
	mov r3, #0x10
	ldrsh r3, [r4, r3]
	add r0, r5, #0
	mov r1, #4
	mov r2, #3
	bl BgSetPosTextAndCommit
	mov r2, #0
	add r0, r5, #0
	mov r1, #5
	add r3, r2, #0
	bl BgSetPosTextAndCommit
	mov r3, #0x10
	ldrsh r3, [r4, r3]
	add r0, r5, #0
	mov r1, #5
	mov r2, #3
	bl BgSetPosTextAndCommit
	pop {r4, r5, r6, pc}
_0225B68E:
	cmp r0, #0xc0
	ble _0225B6F8
	ldr r0, [r4]
	ldr r0, [r0]
	bl MOD11_0222FF68
	ldrb r1, [r4, #0x12]
	add r5, r0, #0
	cmp r1, #4
	bne _0225B6C6
	mov r3, #0xc
	ldrsh r6, [r4, r3]
	mov r3, #0xff
	mov r1, #4
	mov r2, #0
	sub r3, r3, r6
	bl BgSetPosTextAndCommit
	mov r3, #0xc
	ldrsh r4, [r4, r3]
	mov r3, #0xff
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	sub r3, r3, r4
	bl BgSetPosTextAndCommit
	b _0225B6E0
_0225B6C6:
	mov r3, #0xc
	ldrsh r3, [r4, r3]
	mov r1, #4
	mov r2, #0
	bl BgSetPosTextAndCommit
	mov r3, #0xc
	ldrsh r3, [r4, r3]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl BgSetPosTextAndCommit
_0225B6E0:
	add r0, r5, #0
	mov r1, #4
	mov r2, #3
	mov r3, #0
	bl BgSetPosTextAndCommit
	add r0, r5, #0
	mov r1, #5
	mov r2, #3
	mov r3, #0
	bl BgSetPosTextAndCommit
_0225B6F8:
	pop {r4, r5, r6, pc}
	nop
_0225B6FC: .word 0x04000006

	thumb_func_start MOD11_0225B700
MOD11_0225B700: ; 0x0225B700
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	ldr r0, _0225B760 ; =0x0000069F
	ldr r2, _0225B764 ; =MOD11_0225FAAC
	ldrsb r1, [r1, r0]
	mov r0, #0x30
	ldr r7, _0225B768 ; =0x0000FFFF
	mul r0, r1
	add r6, r2, r0
	mov r4, #0
	add r5, r6, #0
_0225B716:
	ldrh r0, [r5, #4]
	cmp r0, r7
	bne _0225B72A
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #0
	bl ToggleBgLayer
	b _0225B736
_0225B72A:
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl ToggleBgLayer
_0225B736:
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blt _0225B716
	mov r4, #0
_0225B740:
	ldrh r1, [r6, #0xc]
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl SetBgPriority
	add r4, r4, #1
	add r6, r6, #2
	cmp r4, #4
	blt _0225B740
	ldr r0, [sp]
	bl FUN_0200CAB4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225B760: .word 0x0000069F
_0225B764: .word MOD11_0225FAAC
_0225B768: .word 0x0000FFFF

	thumb_func_start MOD11_0225B76C
MOD11_0225B76C: ; 0x0225B76C
	push {r4, lr}
	add r4, r0, #0
	bl MOD11_0225AC60
	add r0, r4, #0
	bl FUN_0200CAB4
	pop {r4, pc}

	thumb_func_start MOD11_0225B77C
MOD11_0225B77C: ; 0x0225B77C
	bx lr
	.align 2, 0

	thumb_func_start MOD11_0225B780
MOD11_0225B780: ; 0x0225B780
	ldr r1, _0225B790 ; =0x00000698
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _0225B78C
	mov r0, #1
	bx lr
_0225B78C:
	mov r0, #0
	bx lr
	.align 2, 0
_0225B790: .word 0x00000698

	thumb_func_start MOD11_0225B794
MOD11_0225B794: ; 0x0225B794
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r0, [r5]
	bl MOD11_022300CC
	add r4, r0, #0
	bl FUN_020038E4
	cmp r0, #0
	bne _0225B814
	ldr r0, _0225B818 ; =0x000006AA
	mov r1, #1
	ldrsh r0, [r5, r0]
	add r2, r1, #0
	add r3, r1, #0
	asr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, _0225B81C ; =0x00007FFF
	str r0, [sp, #4]
	add r0, r4, #0
	bl BlendPaletteUnfaded
	ldr r1, _0225B820 ; =0x000006A8
_0225B7C8:
	ldrb r0, [r5, r1]
	cmp r0, #0
	bne _0225B7DA
	add r0, r1, #2
	ldrsh r2, [r5, r0]
	mov r0, #2
	lsl r0, r0, #8
	add r2, r2, r0
	b _0225B7E4
_0225B7DA:
	add r0, r1, #2
	ldrsh r2, [r5, r0]
	mov r0, #2
	lsl r0, r0, #8
	sub r2, r2, r0
_0225B7E4:
	add r0, r1, #2
	strh r2, [r5, r0]
	ldr r0, _0225B818 ; =0x000006AA
	mov r1, #0x11
	ldrsh r2, [r5, r0]
	lsl r1, r1, #8
	cmp r2, r1
	blt _0225B804
	mov r1, #0xf
	lsl r1, r1, #8
	strh r1, [r5, r0]
	mov r1, #1
	sub r0, r0, #2
	add sp, #8
	strb r1, [r5, r0]
	pop {r3, r4, r5, pc}
_0225B804:
	cmp r2, #0
	bgt _0225B814
	mov r1, #1
	lsl r1, r1, #8
	strh r1, [r5, r0]
	mov r1, #0
	sub r0, r0, #2
	strb r1, [r5, r0]
_0225B814:
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_0225B818: .word 0x000006AA
_0225B81C: .word 0x00007FFF
_0225B820: .word 0x000006A8

	thumb_func_start MOD11_0225B824
MOD11_0225B824: ; 0x0225B824
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	bl FUN_02002BD4
	add r6, r0, #0
	bl FUN_02002BF4
	add r7, r0, #0
	bl FUN_02002BE4
	bl FUN_02002C04
	ldr r0, [r5]
	bl MOD11_022300CC
	add r4, r0, #0
	bl FUN_020038E4
	cmp r0, #0
	bne _0225B8A8
	add r0, r4, #0
	mov r1, #1
	bl PaletteData_GetFadedBuf
	add r4, r0, #0
	ldr r0, _0225B8AC ; =gMain + 0x40
	ldrh r0, [r0, #0x22]
	cmp r0, #0
	beq _0225B888
	cmp r6, #1
	beq _0225B866
	cmp r7, #1
	bne _0225B888
_0225B866:
	ldr r1, [r5, #0x5c]
	add r0, r4, #0
	add r0, #0x16
	add r1, #0x16
	mov r2, #0xa
	bl memcmp
	cmp r0, #0
	bne _0225B8A8
	ldr r0, [r5, #0x60]
	add r4, #0x16
	add r0, #0x16
	add r1, r4, #0
	mov r2, #0xa
	bl MIi_CpuCopy16
	pop {r3, r4, r5, r6, r7, pc}
_0225B888:
	ldr r1, [r5, #0x60]
	add r0, r4, #0
	add r0, #0x16
	add r1, #0x16
	mov r2, #0xa
	bl memcmp
	cmp r0, #0
	bne _0225B8A8
	ldr r0, [r5, #0x5c]
	add r4, #0x16
	add r0, #0x16
	add r1, r4, #0
	mov r2, #0xa
	bl MIi_CpuCopy16
_0225B8A8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225B8AC: .word gMain + 0x40

	thumb_func_start MOD11_0225B8B0
MOD11_0225B8B0: ; 0x0225B8B0
	push {r4, r5, r6, lr}
	mov r6, #0x6f
	lsl r6, r6, #4
	add r2, r6, #0
	add r5, r0, #0
	sub r2, #0x51
	ldrsb r2, [r5, r2]
	ldr r1, _0225B914 ; =MOD11_0225FAAC
	mov r3, #0x30
	add r4, r2, #0
	mul r4, r3
	add r4, r1, r4
	ldr r2, [r4, #0x20]
	cmp r2, #0
	bne _0225B8D4
	sub r3, #0x31
	add r0, r3, #0
	pop {r4, r5, r6, pc}
_0225B8D4:
	ldrb r1, [r5, r6]
	cmp r1, #0
	bne _0225B90C
	add r0, r6, #4
	ldrb r0, [r5, r0]
	cmp r0, #1
	beq _0225B8EC
	ldr r1, _0225B918 ; =gMain
	ldr r2, [r1, #0x48]
	ldr r1, _0225B91C ; =0x00000CF3
	tst r1, r2
	beq _0225B906
_0225B8EC:
	cmp r0, #0
	bne _0225B8F6
	ldr r0, _0225B920 ; =0x000005DC
	bl PlaySE
_0225B8F6:
	mov r1, #1
	ldr r0, _0225B924 ; =0x000006F4
	strb r1, [r5, r6]
	mov r2, #0
	strb r2, [r5, r0]
	ldr r2, [r4, #0x20]
	add r0, r5, #0
	blx r2
_0225B906:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_0225B90C:
	mov r1, #0
	blx r2
	pop {r4, r5, r6, pc}
	nop
_0225B914: .word MOD11_0225FAAC
_0225B918: .word gMain
_0225B91C: .word 0x00000CF3
_0225B920: .word 0x000005DC
_0225B924: .word 0x000006F4

	thumb_func_start MOD11_0225B928
MOD11_0225B928: ; 0x0225B928
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp, #8]
	mov r1, #0x6f
	lsl r1, r1, #4
	add r6, r0, #0
	add r2, r1, #0
	sub r2, #0x51
	ldrsb r3, [r6, r2]
	add r4, r6, r1
	mov r2, #0x30
	sub r1, #0x52
	ldr r0, _0225BAE8 ; =MOD11_0225FAAC
	mul r2, r3
	add r7, r0, r2
	ldrb r1, [r6, r1]
	ldr r0, [r6]
	bl MOD11_0223022C
	add r1, r0, #0
	ldr r0, [r6]
	bl MOD11_0222FF7C
	bl MOD11_02253A74
	ldr r1, [sp, #8]
	cmp r1, #1
	bne _0225B9AE
	mov r1, #0
	ldrsb r1, [r0, r1]
	ldr r2, _0225BAEC ; =MOD11_0225F698
	strb r1, [r4, #2]
	mov r1, #1
	ldrsb r0, [r0, r1]
	strb r0, [r4, #1]
	ldrsb r1, [r4, r1]
	lsl r0, r1, #1
	add r3, r1, r0
	mov r0, #2
	ldrsb r1, [r4, r0]
	add r0, r2, r3
	ldrb r1, [r1, r0]
	ldr r0, [r7, #0x14]
	lsl r3, r1, #2
	add r0, r0, r3
	ldrb r0, [r0, #1]
	sub r0, #8
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, [r7, #0x14]
	ldr r0, _0225BAF0 ; =0x000006EC
	add r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	ldr r0, [r6, r0]
	add r1, #8
	sub r2, #8
	add r3, #8
	bl MOD11_0225D5FC
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0225B9AE:
	ldr r0, _0225BAF4 ; =0x0000069F
	ldrsb r0, [r6, r0]
	cmp r0, #5
	beq _0225B9BA
	cmp r0, #6
	bne _0225B9CA
_0225B9BA:
	mov r1, #1
	ldr r3, _0225BAEC ; =MOD11_0225F698
	add r0, r4, #0
	add r2, r1, #0
	bl MOD11_0225C574
	add r5, r0, #0
	b _0225BA34
_0225B9CA:
	mov r0, #1
	ldrsb r1, [r4, r0]
	lsl r0, r1, #1
	add r2, r1, r0
	mov r0, #2
	ldr r1, _0225BAEC ; =MOD11_0225F698
	ldrsb r0, [r4, r0]
	add r1, r1, r2
	ldrb r0, [r0, r1]
	str r0, [sp, #0xc]
	cmp r0, #3
	bne _0225B9EC
	ldr r0, _0225BAF8 ; =gMain
	ldr r1, [r0, #0x48]
	mov r0, #0x40
	tst r0, r1
	bne _0225BA34
_0225B9EC:
	ldr r3, _0225BAEC ; =MOD11_0225F698
	add r0, r4, #0
	mov r1, #3
	mov r2, #2
	bl MOD11_0225C574
	add r5, r0, #0
	bne _0225BA34
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _0225BA34
	ldr r0, _0225BAF8 ; =gMain
	ldr r1, [r0, #0x48]
	mov r0, #0x20
	tst r0, r1
	beq _0225BA1E
	mov r0, #0
	strb r0, [r4, #2]
	mov r0, #1
	strb r0, [r4, #1]
	ldr r0, _0225BAFC ; =0x000005DC
	bl PlaySE
	mov r5, #0x20
	b _0225BA34
_0225BA1E:
	mov r0, #0x10
	tst r0, r1
	beq _0225BA34
	mov r0, #2
	strb r0, [r4, #2]
	mov r0, #1
	strb r0, [r4, #1]
	ldr r0, _0225BAFC ; =0x000005DC
	bl PlaySE
	mov r5, #0x10
_0225BA34:
	cmp r5, #0x20
	bhi _0225BA50
	bhs _0225BA5C
	cmp r5, #2
	bhi _0225BA4A
	cmp r5, #1
	blo _0225BAE0
	beq _0225BA9A
	cmp r5, #2
	beq _0225BAB0
	b _0225BAE0
_0225BA4A:
	cmp r5, #0x10
	beq _0225BA5C
	b _0225BAE0
_0225BA50:
	cmp r5, #0x40
	bhi _0225BA58
	beq _0225BA5C
	b _0225BAE0
_0225BA58:
	cmp r5, #0x80
	bne _0225BAE0
_0225BA5C:
	mov r0, #1
	ldrsb r1, [r4, r0]
	ldr r2, _0225BAEC ; =MOD11_0225F698
	lsl r0, r1, #1
	add r3, r1, r0
	mov r0, #2
	ldrsb r1, [r4, r0]
	add r0, r2, r3
	ldrb r1, [r1, r0]
	ldr r0, [r7, #0x14]
	lsl r3, r1, #2
	add r0, r0, r3
	ldrb r0, [r0, #1]
	sub r0, #8
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, [r7, #0x14]
	ldr r0, _0225BAF0 ; =0x000006EC
	add r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	ldr r0, [r6, r0]
	add r1, #8
	sub r2, #8
	add r3, #8
	bl MOD11_0225D5FC
	b _0225BAE0
_0225BA9A:
	mov r0, #1
	ldrsb r1, [r4, r0]
	ldr r2, _0225BAEC ; =MOD11_0225F698
	add sp, #0x10
	lsl r0, r1, #1
	add r3, r1, r0
	mov r0, #2
	ldrsb r1, [r4, r0]
	add r0, r2, r3
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0225BAB0:
	ldr r0, _0225BB00 ; =0x000006A3
	ldrb r0, [r6, r0]
	cmp r0, #1
	bne _0225BAE0
	mov r0, #0
	add r2, r0, #0
	mov r3, #1
	ldr r1, [r7, #0x18]
	ldr r5, [r7, #0x14]
	b _0225BACE
_0225BAC4:
	lsl r4, r0, #2
	ldr r4, [r1, r4]
	cmp r4, #4
	beq _0225BAE4
	add r0, r0, #1
_0225BACE:
	lsl r4, r0, #2
	ldrb r4, [r5, r4]
	cmp r0, r4
	bge _0225BADA
	add r4, r3, #0
	b _0225BADC
_0225BADA:
	add r4, r2, #0
_0225BADC:
	cmp r4, #0xff
	bne _0225BAC4
_0225BAE0:
	mov r0, #0
	mvn r0, r0
_0225BAE4:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225BAE8: .word MOD11_0225FAAC
_0225BAEC: .word MOD11_0225F698
_0225BAF0: .word 0x000006EC
_0225BAF4: .word 0x0000069F
_0225BAF8: .word gMain
_0225BAFC: .word 0x000005DC
_0225BB00: .word 0x000006A3

	thumb_func_start MOD11_0225BB04
MOD11_0225BB04: ; 0x0225BB04
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, _0225BB60 ; =0x0000069E
	ldr r0, [r5]
	ldrb r1, [r5, r1]
	bl MOD11_0223022C
	add r6, r0, #0
	cmp r4, #3
	bne _0225BB26
	ldr r0, [r5]
	add r1, r6, #0
	bl MOD11_02230CB8
	cmp r0, #0
	bne _0225BB5C
_0225BB26:
	ldr r0, [r5]
	add r1, r6, #0
	bl MOD11_0222FF7C
	bl MOD11_02253A74
	mov r5, #0
	ldr r1, _0225BB64 ; =MOD11_0225F698
	add r2, r5, #0
	b _0225BB58
_0225BB3A:
	lsl r6, r5, #1
	add r6, r5, r6
	add r3, r2, #0
	add r7, r1, r6
	b _0225BB52
_0225BB44:
	ldrb r6, [r3, r7]
	cmp r4, r6
	bne _0225BB50
	strb r3, [r0]
	strb r5, [r0, #1]
	pop {r3, r4, r5, r6, r7, pc}
_0225BB50:
	add r3, r3, #1
_0225BB52:
	cmp r3, #3
	blt _0225BB44
	add r5, r5, #1
_0225BB58:
	cmp r5, #2
	blt _0225BB3A
_0225BB5C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225BB60: .word 0x0000069E
_0225BB64: .word MOD11_0225F698

	thumb_func_start MOD11_0225BB68
MOD11_0225BB68: ; 0x0225BB68
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	mov r0, #0x6f
	lsl r0, r0, #4
	add r3, r0, #0
	sub r3, #0x51
	ldrsb r5, [r6, r3]
	mov r3, #0x30
	ldr r2, _0225BC54 ; =MOD11_0225FAAC
	mul r3, r5
	add r4, r6, r0
	add r5, r2, r3
	cmp r1, #1
	bne _0225BBCC
	mov r1, #0
	strb r1, [r4, #2]
	strb r1, [r4, #1]
	mov r1, #1
	ldrsb r2, [r4, r1]
	mov r3, #2
	ldr r1, _0225BC58 ; =MOD11_0225F688
	ldrsb r3, [r4, r3]
	add r1, r1, r2
	sub r0, r0, #4
	ldrb r2, [r3, r1]
	ldr r1, [r5, #0x14]
	lsl r3, r2, #2
	add r1, r1, r3
	ldrb r1, [r1, #1]
	sub r1, #8
	str r1, [sp]
	mov r1, #0x11
	lsl r1, r1, #0x10
	str r1, [sp, #4]
	ldr r4, [r5, #0x14]
	ldr r0, [r6, r0]
	add r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	add r1, #8
	sub r2, #8
	add r3, #8
	bl MOD11_0225D5FC
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r4, r5, r6, pc}
_0225BBCC:
	ldr r3, _0225BC58 ; =MOD11_0225F688
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	bl MOD11_0225C574
	cmp r0, #0x20
	bhi _0225BBF2
	bhs _0225BBFE
	cmp r0, #2
	bhi _0225BBEC
	cmp r0, #1
	blo _0225BC4A
	beq _0225BC38
	cmp r0, #2
	b _0225BC4A
_0225BBEC:
	cmp r0, #0x10
	beq _0225BBFE
	b _0225BC4A
_0225BBF2:
	cmp r0, #0x40
	bhi _0225BBFA
	beq _0225BBFE
	b _0225BC4A
_0225BBFA:
	cmp r0, #0x80
	bne _0225BC4A
_0225BBFE:
	mov r0, #1
	ldrsb r3, [r4, r0]
	mov r0, #2
	ldr r2, _0225BC58 ; =MOD11_0225F688
	ldrsb r1, [r4, r0]
	add r0, r2, r3
	ldrb r1, [r1, r0]
	ldr r0, [r5, #0x14]
	lsl r3, r1, #2
	add r0, r0, r3
	ldrb r0, [r0, #1]
	sub r0, #8
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, [r5, #0x14]
	ldr r0, _0225BC5C ; =0x000006EC
	add r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	ldr r0, [r6, r0]
	add r1, #8
	sub r2, #8
	add r3, #8
	bl MOD11_0225D5FC
	b _0225BC4A
_0225BC38:
	mov r0, #1
	ldrsb r3, [r4, r0]
	mov r0, #2
	ldr r2, _0225BC58 ; =MOD11_0225F688
	ldrsb r1, [r4, r0]
	add r0, r2, r3
	add sp, #8
	ldrb r0, [r1, r0]
	pop {r4, r5, r6, pc}
_0225BC4A:
	mov r0, #0
	mvn r0, r0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0225BC54: .word MOD11_0225FAAC
_0225BC58: .word MOD11_0225F688
_0225BC5C: .word 0x000006EC

	thumb_func_start MOD11_0225BC60
MOD11_0225BC60: ; 0x0225BC60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r1, #0
	add r5, r0, #0
	ldr r1, _0225BDD0 ; =0x0000069E
	ldr r0, [r5]
	ldrb r1, [r5, r1]
	bl MOD11_0223022C
	add r1, r0, #0
	ldr r0, [r5]
	bl MOD11_0222FF7C
	bl MOD11_02253A74
	mov r1, #0x6f
	lsl r1, r1, #4
	add r4, r5, r1
	sub r1, #0x51
	ldrsb r2, [r5, r1]
	add r3, r0, #0
	mov r1, #0x30
	mul r1, r2
	ldr r0, _0225BDD4 ; =MOD11_0225FAAC
	add r2, r5, #0
	add r6, r0, r1
	add r2, #0x18
	cmp r7, #1
	bne _0225BD10
	mov r0, #2
	ldrsb r0, [r3, r0]
	strb r0, [r4, #2]
	mov r0, #3
	ldrsb r0, [r3, r0]
	strb r0, [r4, #1]
	mov r0, #1
	ldrsb r0, [r4, r0]
	lsl r1, r0, #1
	mov r0, #2
	ldrsb r7, [r4, r0]
	ldr r0, _0225BDD8 ; =MOD11_0225F6A0
	add r0, r0, r1
	ldrb r0, [r7, r0]
	cmp r0, #0
	beq _0225BCDE
	sub r1, r0, #1
	lsl r1, r1, #1
	ldrh r1, [r2, r1]
	cmp r1, #0
	bne _0225BCDE
	mov r0, #0
	strb r0, [r3, #2]
	strb r0, [r3, #3]
	strb r0, [r4, #2]
	strb r0, [r4, #1]
	mov r0, #1
	ldrsb r0, [r4, r0]
	lsl r2, r0, #1
	mov r0, #2
	ldrsb r1, [r4, r0]
	ldr r0, _0225BDD8 ; =MOD11_0225F6A0
	add r0, r0, r2
	ldrb r0, [r1, r0]
_0225BCDE:
	ldr r1, [r6, #0x14]
	lsl r3, r0, #2
	add r0, r1, r3
	ldrb r0, [r0, #1]
	sub r0, #8
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, [r6, #0x14]
	ldr r0, _0225BDDC ; =0x000006EC
	add r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	ldr r0, [r5, r0]
	add r1, #8
	sub r2, #8
	add r3, #8
	bl MOD11_0225D5FC
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0225BD10:
	ldr r0, _0225BDD8 ; =MOD11_0225F6A0
	add r1, sp, #8
	mov r2, #6
	bl MI_CpuCopy8
	add r0, r4, #0
	mov r1, #2
	mov r2, #3
	add r3, sp, #8
	bl MOD11_0225C574
	cmp r0, #0x20
	bhi _0225BD42
	bhs _0225BD4E
	cmp r0, #2
	bhi _0225BD3C
	cmp r0, #1
	blo _0225BDC6
	beq _0225BD8A
	cmp r0, #2
	beq _0225BD9E
	b _0225BDC6
_0225BD3C:
	cmp r0, #0x10
	beq _0225BD4E
	b _0225BDC6
_0225BD42:
	cmp r0, #0x40
	bhi _0225BD4A
	beq _0225BD4E
	b _0225BDC6
_0225BD4A:
	cmp r0, #0x80
	bne _0225BDC6
_0225BD4E:
	mov r0, #1
	ldrsb r0, [r4, r0]
	ldr r2, _0225BDD8 ; =MOD11_0225F6A0
	lsl r3, r0, #1
	mov r0, #2
	ldrsb r1, [r4, r0]
	add r0, r2, r3
	ldrb r1, [r1, r0]
	ldr r0, [r6, #0x14]
	lsl r3, r1, #2
	add r0, r0, r3
	ldrb r0, [r0, #1]
	sub r0, #8
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, [r6, #0x14]
	ldr r0, _0225BDDC ; =0x000006EC
	add r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	ldr r0, [r5, r0]
	add r1, #8
	sub r2, #8
	add r3, #8
	bl MOD11_0225D5FC
	b _0225BDC6
_0225BD8A:
	mov r0, #1
	ldrsb r0, [r4, r0]
	ldr r2, _0225BDD8 ; =MOD11_0225F6A0
	add sp, #0x10
	lsl r3, r0, #1
	mov r0, #2
	ldrsb r1, [r4, r0]
	add r0, r2, r3
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0225BD9E:
	mov r0, #0
	add r2, r0, #0
	mov r3, #1
	ldr r1, [r6, #0x18]
	ldr r5, [r6, #0x14]
	b _0225BDB4
_0225BDAA:
	lsl r4, r0, #2
	ldr r4, [r1, r4]
	cmp r4, #0xff
	beq _0225BDCA
	add r0, r0, #1
_0225BDB4:
	lsl r4, r0, #2
	ldrb r4, [r5, r4]
	cmp r0, r4
	bge _0225BDC0
	add r4, r3, #0
	b _0225BDC2
_0225BDC0:
	add r4, r2, #0
_0225BDC2:
	cmp r4, #0xff
	bne _0225BDAA
_0225BDC6:
	mov r0, #0
	mvn r0, r0
_0225BDCA:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225BDD0: .word 0x0000069E
_0225BDD4: .word MOD11_0225FAAC
_0225BDD8: .word MOD11_0225F6A0
_0225BDDC: .word 0x000006EC

	thumb_func_start MOD11_0225BDE0
MOD11_0225BDE0: ; 0x0225BDE0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	beq _0225BE26
	ldr r1, _0225BE28 ; =0x0000069E
	ldr r0, [r5]
	ldrb r1, [r5, r1]
	bl MOD11_0223022C
	add r1, r0, #0
	ldr r0, [r5]
	bl MOD11_0222FF7C
	bl MOD11_02253A74
	mov r3, #0
	ldr r7, _0225BE2C ; =MOD11_0225F6A0
	add r1, r3, #0
	b _0225BE22
_0225BE06:
	lsl r5, r3, #1
	add r2, r1, #0
	add r6, r7, r5
	b _0225BE1C
_0225BE0E:
	ldrb r5, [r2, r6]
	cmp r4, r5
	bne _0225BE1A
	strb r2, [r0, #2]
	strb r3, [r0, #3]
	pop {r3, r4, r5, r6, r7, pc}
_0225BE1A:
	add r2, r2, #1
_0225BE1C:
	cmp r2, #2
	blt _0225BE0E
	add r3, r3, #1
_0225BE22:
	cmp r3, #3
	blt _0225BE06
_0225BE26:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225BE28: .word 0x0000069E
_0225BE2C: .word MOD11_0225F6A0

	thumb_func_start MOD11_0225BE30
MOD11_0225BE30: ; 0x0225BE30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	str r1, [sp, #0x18]
	add r6, r0, #0
	ldr r1, _0225C134 ; =0x0000069E
	mov r0, #0
	str r0, [sp, #0x44]
	ldrb r1, [r6, r1]
	ldr r0, [r6]
	bl MOD11_0223022C
	add r1, r0, #0
	ldr r0, [r6]
	bl MOD11_0222FF7C
	bl MOD11_02253A74
	mov r1, #0x6f
	lsl r1, r1, #4
	add r7, r6, r1
	sub r1, #0x51
	ldrsb r2, [r6, r1]
	str r0, [sp, #0x1c]
	mov r1, #0x30
	mul r1, r2
	ldr r0, _0225C138 ; =MOD11_0225FAAC
	mov r2, #6
	add r0, r0, r1
	str r0, [sp, #0x48]
	ldr r0, _0225C13C ; =MOD11_0225F690
	add r1, sp, #0x50
	bl MI_CpuCopy8
	add r1, sp, #0x58
	add r0, r6, #0
	add r1, #2
	mov r2, #1
	bl MOD11_0225ACD4
	add r1, sp, #0x54
	add r0, r6, #0
	add r1, #2
	mov r2, #0
	bl MOD11_0225ACD4
	add r0, sp, #0x54
	mov r2, #0
	mov r4, #0xff
	add r0, #2
	b _0225BEB0
_0225BE94:
	lsl r5, r2, #1
	add r1, sp, #0x50
	mov r3, #0
	add r1, r1, r5
	b _0225BEAA
_0225BE9E:
	ldrb r5, [r3, r1]
	ldrb r5, [r0, r5]
	cmp r5, #0
	bne _0225BEA8
	strb r4, [r3, r1]
_0225BEA8:
	add r3, r3, #1
_0225BEAA:
	cmp r3, #2
	blt _0225BE9E
	add r2, r2, #1
_0225BEB0:
	cmp r2, #2
	blt _0225BE94
	mov r0, #0x6a
	lsl r0, r0, #4
	ldrb r0, [r6, r0]
	cmp r0, #0xb
	bhi _0225BEE2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225BECA: ; jump table
	.short _0225BEE2 - _0225BECA - 2 ; case 0
	.short _0225BEEC - _0225BECA - 2 ; case 1
	.short _0225BEEC - _0225BECA - 2 ; case 2
	.short _0225BEEC - _0225BECA - 2 ; case 3
	.short _0225BEE2 - _0225BECA - 2 ; case 4
	.short _0225BEEC - _0225BECA - 2 ; case 5
	.short _0225BEE2 - _0225BECA - 2 ; case 6
	.short _0225BEEC - _0225BECA - 2 ; case 7
	.short _0225BEE2 - _0225BECA - 2 ; case 8
	.short _0225BEE2 - _0225BECA - 2 ; case 9
	.short _0225BEE2 - _0225BECA - 2 ; case 10
	.short _0225BEE2 - _0225BECA - 2 ; case 11
_0225BEE2:
	mov r0, #2
	mov ip, r0
	mov r0, #3
	str r0, [sp, #0x4c]
	b _0225C0C6
_0225BEEC:
	mov r0, #1
	str r0, [sp, #0x44]
	mov ip, r0
	mov r0, #2
	str r0, [sp, #0x4c]
	add r0, sp, #0x50
	ldrb r1, [r0, #9]
	cmp r1, #1
	bne _0225BF26
	ldrb r0, [r0, #7]
	cmp r0, #1
	bne _0225BF26
	ldr r0, [sp, #0x48]
	ldr r1, [r0, #0x14]
	ldrb r0, [r1, #0xe]
	ldrb r2, [r1, #0xd]
	str r0, [sp, #0x34]
	add r0, #8
	str r0, [sp, #0x34]
	ldrb r0, [r1, #7]
	sub r2, #8
	str r0, [sp, #0x30]
	sub r0, #8
	str r0, [sp, #0x30]
	ldrb r0, [r1, #0xc]
	str r0, [sp, #0x38]
	add r0, #8
	str r0, [sp, #0x38]
	b _0225BF92
_0225BF26:
	add r0, sp, #0x50
	ldrb r1, [r0, #9]
	cmp r1, #1
	bne _0225BF56
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _0225BF56
	ldr r0, [sp, #0x48]
	ldr r1, [r0, #0x14]
	ldrb r0, [r1, #0xe]
	ldrb r2, [r1, #0xd]
	str r0, [sp, #0x34]
	add r0, #8
	str r0, [sp, #0x34]
	ldrb r0, [r1, #0xf]
	sub r2, #8
	str r0, [sp, #0x30]
	sub r0, #8
	str r0, [sp, #0x30]
	ldrb r0, [r1, #0xc]
	str r0, [sp, #0x38]
	add r0, #8
	str r0, [sp, #0x38]
	b _0225BF92
_0225BF56:
	add r0, sp, #0x50
	ldrb r1, [r0, #9]
	cmp r1, #0
	bne _0225BF86
	ldrb r0, [r0, #7]
	cmp r0, #1
	bne _0225BF86
	ldr r0, [sp, #0x48]
	ldr r1, [r0, #0x14]
	ldrb r0, [r1, #6]
	ldrb r2, [r1, #5]
	str r0, [sp, #0x34]
	add r0, #8
	str r0, [sp, #0x34]
	ldrb r0, [r1, #7]
	sub r2, #8
	str r0, [sp, #0x30]
	sub r0, #8
	str r0, [sp, #0x30]
	ldrb r0, [r1, #4]
	str r0, [sp, #0x38]
	add r0, #8
	str r0, [sp, #0x38]
	b _0225BF92
_0225BF86:
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x34]
	str r0, [sp, #0x30]
	str r0, [sp, #0x38]
	add r2, r0, #0
_0225BF92:
	add r0, sp, #0x50
	ldrb r1, [r0, #6]
	cmp r1, #1
	bne _0225BFBA
	ldrb r0, [r0, #8]
	cmp r0, #1
	bne _0225BFBA
	ldr r0, [sp, #0x48]
	ldr r0, [r0, #0x14]
	ldrb r3, [r0, #2]
	ldrb r4, [r0, #0xb]
	ldrb r5, [r0]
	ldrb r0, [r0, #1]
	add r3, #8
	sub r4, #8
	str r0, [sp, #0x2c]
	sub r0, #8
	add r5, #8
	str r0, [sp, #0x2c]
	b _0225C014
_0225BFBA:
	add r0, sp, #0x50
	ldrb r1, [r0, #6]
	cmp r1, #1
	bne _0225BFE2
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _0225BFE2
	ldr r0, [sp, #0x48]
	ldr r0, [r0, #0x14]
	ldrb r3, [r0, #2]
	ldrb r4, [r0, #3]
	ldrb r5, [r0]
	ldrb r0, [r0, #1]
	add r3, #8
	sub r4, #8
	str r0, [sp, #0x2c]
	sub r0, #8
	add r5, #8
	str r0, [sp, #0x2c]
	b _0225C014
_0225BFE2:
	add r0, sp, #0x50
	ldrb r1, [r0, #6]
	cmp r1, #0
	bne _0225C00A
	ldrb r0, [r0, #8]
	cmp r0, #1
	bne _0225C00A
	ldr r0, [sp, #0x48]
	ldr r0, [r0, #0x14]
	ldrb r3, [r0, #0xa]
	ldrb r4, [r0, #0xb]
	ldrb r5, [r0, #8]
	ldrb r0, [r0, #9]
	add r3, #8
	sub r4, #8
	str r0, [sp, #0x2c]
	sub r0, #8
	add r5, #8
	str r0, [sp, #0x2c]
	b _0225C014
_0225C00A:
	mov r3, #0
	mvn r3, r3
	add r4, r3, #0
	add r5, r3, #0
	str r3, [sp, #0x2c]
_0225C014:
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x40]
	str r0, [sp, #0x3c]
	str r0, [sp, #0x28]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x34]
	cmp r0, r3
	beq _0225C04A
	add r1, r0, #0
	ldr r0, [sp, #0x40]
	cmp r1, r0
	beq _0225C032
	cmp r3, r0
	beq _0225C04A
_0225C032:
	mov r1, #0
	ldr r0, [sp, #0x34]
	mvn r1, r1
	cmp r0, r1
	bne _0225C044
	cmp r3, r1
	beq _0225C044
	str r3, [sp, #0x34]
	b _0225C04A
_0225C044:
	mov r0, #2
	str r3, [sp, #0x40]
	str r0, [sp, #0x20]
_0225C04A:
	ldr r0, [sp, #0x30]
	cmp r0, r4
	beq _0225C074
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0225C05C
	cmp r4, r1
	beq _0225C074
_0225C05C:
	mov r1, #0
	ldr r0, [sp, #0x30]
	mvn r1, r1
	cmp r0, r1
	bne _0225C06E
	cmp r4, r1
	beq _0225C06E
	str r4, [sp, #0x30]
	b _0225C074
_0225C06E:
	mov r0, #3
	str r4, [sp, #0x40]
	str r0, [sp, #0x20]
_0225C074:
	mov r1, #0
	ldr r0, [sp, #0x38]
	mvn r1, r1
	cmp r0, r1
	beq _0225C082
	cmp r5, r1
	beq _0225C096
_0225C082:
	mov r1, #0
	ldr r0, [sp, #0x38]
	mvn r1, r1
	cmp r0, r1
	bne _0225C094
	cmp r5, r1
	beq _0225C094
	str r5, [sp, #0x38]
	b _0225C096
_0225C094:
	str r2, [sp, #0x3c]
_0225C096:
	mov r1, #0
	mvn r1, r1
	cmp r2, r1
	beq _0225C0A8
	ldr r0, [sp, #0x2c]
	cmp r0, r1
	bne _0225C0A8
	str r2, [sp, #0x2c]
	b _0225C0C6
_0225C0A8:
	mov r1, #0
	mvn r1, r1
	cmp r2, r1
	bne _0225C0B6
	ldr r0, [sp, #0x2c]
	cmp r0, r1
	bne _0225C0C6
_0225C0B6:
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x20]
	cmp r0, #2
	bne _0225C0C4
	str r2, [sp, #0x24]
	b _0225C0C6
_0225C0C4:
	str r2, [sp, #0x28]
_0225C0C6:
	ldr r0, [sp, #0x18]
	cmp r0, #1
	beq _0225C0CE
	b _0225C236
_0225C0CE:
	ldr r0, [sp, #0x44]
	cmp r0, #0
	bne _0225C17A
	ldr r0, [sp, #0x1c]
	mov r1, #6
	ldrsb r1, [r0, r1]
	mov r0, #0x6a
	lsl r0, r0, #4
	ldrb r0, [r6, r0]
	cmp r1, r0
	bne _0225C0F6
	ldr r0, [sp, #0x1c]
	mov r1, #4
	ldrsb r0, [r0, r1]
	mov r1, #5
	strb r0, [r7, #2]
	ldr r0, [sp, #0x1c]
	ldrsb r0, [r0, r1]
	strb r0, [r7, #1]
	b _0225C12C
_0225C0F6:
	add r0, sp, #0x50
	ldrb r1, [r0, #0xd]
	cmp r1, #1
	bne _0225C106
	mov r0, #0
	strb r0, [r7, #2]
	strb r0, [r7, #1]
	b _0225C12C
_0225C106:
	ldrb r1, [r0, #0xb]
	cmp r1, #1
	bne _0225C116
	mov r0, #1
	strb r0, [r7, #2]
	mov r0, #0
	strb r0, [r7, #1]
	b _0225C12C
_0225C116:
	ldrb r0, [r0, #0xa]
	cmp r0, #1
	bne _0225C126
	mov r0, #0
	strb r0, [r7, #2]
	mov r0, #1
	strb r0, [r7, #1]
	b _0225C12C
_0225C126:
	mov r0, #1
	strb r0, [r7, #2]
	strb r0, [r7, #1]
_0225C12C:
	mov r0, #1
	ldrsb r0, [r7, r0]
	ldr r2, _0225C13C ; =MOD11_0225F690
	b _0225C140
	.align 2, 0
_0225C134: .word 0x0000069E
_0225C138: .word MOD11_0225FAAC
_0225C13C: .word MOD11_0225F690
_0225C140:
	lsl r3, r0, #1
	mov r0, #2
	ldrsb r1, [r7, r0]
	add r0, r2, r3
	ldrb r1, [r1, r0]
	ldr r0, [sp, #0x48]
	lsl r3, r1, #2
	ldr r0, [r0, #0x14]
	ldr r1, [sp, #0x48]
	add r0, r0, r3
	ldrb r0, [r0, #1]
	sub r0, #8
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, [r1, #0x14]
	ldr r0, _0225C418 ; =0x000006EC
	add r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	ldr r0, [r6, r0]
	add r1, #8
	sub r2, #8
	add r3, #8
	bl MOD11_0225D5FC
	b _0225C22E
_0225C17A:
	mov r2, #0
	strb r2, [r7, #2]
	ldr r0, [sp, #0x24]
	sub r1, r2, #1
	strb r2, [r7, #1]
	cmp r0, r1
	bne _0225C18E
	ldr r0, [sp, #0x28]
	cmp r0, r1
	beq _0225C198
_0225C18E:
	mov r1, #0
	ldr r0, [sp, #0x40]
	mvn r1, r1
	cmp r0, r1
	bne _0225C1B2
_0225C198:
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x34]
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0225C418 ; =0x000006EC
	ldr r2, [sp, #0x30]
	ldr r0, [r6, r0]
	ldr r3, [sp, #0x38]
	bl MOD11_0225D5FC
	b _0225C210
_0225C1B2:
	ldr r0, [sp, #0x24]
	cmp r0, r1
	beq _0225C1E8
	ldr r0, [sp, #0x28]
	cmp r0, r1
	bne _0225C1E8
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x34]
	str r0, [sp]
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0x38]
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x30]
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x10]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, _0225C418 ; =0x000006EC
	ldr r0, [r6, r0]
	bl MOD11_0225D52C
	b _0225C210
_0225C1E8:
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x34]
	str r0, [sp]
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0x38]
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	str r0, [sp, #0x10]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, _0225C418 ; =0x000006EC
	ldr r0, [r6, r0]
	bl MOD11_0225D52C
_0225C210:
	mov r1, #0
	ldr r0, [sp, #0x40]
	mvn r1, r1
	cmp r0, r1
	beq _0225C22E
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp]
	ldr r0, _0225C418 ; =0x000006EC
	ldr r1, [sp, #0x40]
	ldr r0, [r6, r0]
	ldr r2, [sp, #0x3c]
	ldr r3, [sp, #0x20]
	bl MOD11_0225D620
_0225C22E:
	mov r0, #0
	add sp, #0x60
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0225C236:
	ldr r0, [sp, #0x44]
	cmp r0, #0
	bne _0225C24A
	ldr r2, [sp, #0x4c]
	add r0, r7, #0
	mov r1, ip
	add r3, sp, #0x50
	bl MOD11_0225C574
	b _0225C256
_0225C24A:
	ldr r2, [sp, #0x4c]
	add r0, r7, #0
	mov r1, ip
	mov r3, #0
	bl MOD11_0225C574
_0225C256:
	cmp r0, #0x20
	bhi _0225C276
	bhs _0225C284
	cmp r0, #2
	bhi _0225C270
	cmp r0, #1
	blo _0225C26E
	bne _0225C268
	b _0225C3BE
_0225C268:
	cmp r0, #2
	bne _0225C26E
	b _0225C40A
_0225C26E:
	b _0225C410
_0225C270:
	cmp r0, #0x10
	beq _0225C284
	b _0225C410
_0225C276:
	cmp r0, #0x40
	bhi _0225C27E
	beq _0225C284
	b _0225C410
_0225C27E:
	cmp r0, #0x80
	beq _0225C284
	b _0225C410
_0225C284:
	ldr r0, [sp, #0x44]
	cmp r0, #0
	bne _0225C2CA
	mov r0, #1
	ldrsb r0, [r7, r0]
	ldr r2, _0225C41C ; =MOD11_0225F690
	lsl r3, r0, #1
	mov r0, #2
	ldrsb r1, [r7, r0]
	add r0, r2, r3
	ldrb r1, [r1, r0]
	ldr r0, [sp, #0x48]
	lsl r3, r1, #2
	ldr r0, [r0, #0x14]
	ldr r1, [sp, #0x48]
	add r0, r0, r3
	ldrb r0, [r0, #1]
	sub r0, #8
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, [r1, #0x14]
	ldr r0, _0225C418 ; =0x000006EC
	add r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	ldr r0, [r6, r0]
	add r1, #8
	sub r2, #8
	add r3, #8
	bl MOD11_0225D5FC
	b _0225C410
_0225C2CA:
	mov r2, #1
	ldrsb r0, [r7, r2]
	cmp r0, #0
	bne _0225C38C
	ldr r0, [sp, #0x28]
	sub r1, r2, #2
	cmp r0, r1
	bne _0225C2E0
	ldr r0, [sp, #0x24]
	cmp r0, r1
	beq _0225C2EA
_0225C2E0:
	mov r1, #0
	ldr r0, [sp, #0x40]
	mvn r1, r1
	cmp r0, r1
	bne _0225C304
_0225C2EA:
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x34]
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0225C418 ; =0x000006EC
	ldr r2, [sp, #0x30]
	ldr r0, [r6, r0]
	ldr r3, [sp, #0x38]
	bl MOD11_0225D5FC
	b _0225C362
_0225C304:
	ldr r0, [sp, #0x24]
	cmp r0, r1
	beq _0225C33A
	ldr r0, [sp, #0x28]
	cmp r0, r1
	bne _0225C33A
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x34]
	str r0, [sp]
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0x38]
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x30]
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x10]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, _0225C418 ; =0x000006EC
	ldr r0, [r6, r0]
	bl MOD11_0225D52C
	b _0225C362
_0225C33A:
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x34]
	str r0, [sp]
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0x38]
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	str r0, [sp, #0x10]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, _0225C418 ; =0x000006EC
	ldr r0, [r6, r0]
	bl MOD11_0225D52C
_0225C362:
	mov r1, #0
	ldr r0, [sp, #0x40]
	mvn r1, r1
	cmp r0, r1
	beq _0225C382
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp]
	ldr r0, _0225C418 ; =0x000006EC
	ldr r1, [sp, #0x40]
	ldr r0, [r6, r0]
	ldr r2, [sp, #0x3c]
	ldr r3, [sp, #0x20]
	bl MOD11_0225D620
	b _0225C410
_0225C382:
	ldr r0, _0225C418 ; =0x000006EC
	ldr r0, [r6, r0]
	bl MOD11_0225D664
	b _0225C410
_0225C38C:
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x48]
	ldr r0, [r0, #0x14]
	ldrb r0, [r0, #0x11]
	sub r0, #8
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r3, [r1, #0x14]
	ldr r0, _0225C418 ; =0x000006EC
	ldrb r1, [r3, #0x12]
	ldrb r2, [r3, #0x13]
	ldrb r3, [r3, #0x10]
	ldr r0, [r6, r0]
	add r1, #8
	sub r2, #8
	add r3, #8
	bl MOD11_0225D5FC
	ldr r0, _0225C418 ; =0x000006EC
	ldr r0, [r6, r0]
	bl MOD11_0225D664
	b _0225C410
_0225C3BE:
	ldr r0, [sp, #0x44]
	cmp r0, #1
	bne _0225C3E8
	mov r0, #1
	ldrsb r0, [r7, r0]
	cmp r0, #0
	ble _0225C3D2
	add sp, #0x60
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_0225C3D2:
	add r2, sp, #0x58
	mov r0, #0
	add r2, #2
	b _0225C3E2
_0225C3DA:
	ldrb r1, [r2, r0]
	cmp r1, #1
	beq _0225C414
	add r0, r0, #1
_0225C3E2:
	cmp r0, #4
	blt _0225C3DA
	b _0225C410
_0225C3E8:
	mov r0, #1
	ldrsb r0, [r7, r0]
	ldr r2, _0225C41C ; =MOD11_0225F690
	lsl r3, r0, #1
	mov r0, #2
	ldrsb r1, [r7, r0]
	add r0, r2, r3
	ldrb r0, [r1, r0]
	cmp r0, #4
	beq _0225C414
	add r1, sp, #0x58
	add r1, #2
	ldrb r1, [r1, r0]
	cmp r1, #1
	bne _0225C410
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
_0225C40A:
	add sp, #0x60
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_0225C410:
	mov r0, #0
	mvn r0, r0
_0225C414:
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225C418: .word 0x000006EC
_0225C41C: .word MOD11_0225F690

	thumb_func_start MOD11_0225C420
MOD11_0225C420: ; 0x0225C420
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #4
	beq _0225C470
	ldr r1, _0225C474 ; =0x0000069E
	ldr r0, [r5]
	ldrb r1, [r5, r1]
	bl MOD11_0223022C
	add r1, r0, #0
	ldr r0, [r5]
	bl MOD11_0222FF7C
	bl MOD11_02253A74
	mov r1, #0x6a
	lsl r1, r1, #4
	ldrb r1, [r5, r1]
	mov r3, #0
	ldr r7, _0225C478 ; =MOD11_0225F690
	strb r1, [r0, #6]
	add r1, r3, #0
	b _0225C46C
_0225C450:
	lsl r5, r3, #1
	add r2, r1, #0
	add r6, r7, r5
	b _0225C466
_0225C458:
	ldrb r5, [r2, r6]
	cmp r4, r5
	bne _0225C464
	strb r2, [r0, #4]
	strb r3, [r0, #5]
	pop {r3, r4, r5, r6, r7, pc}
_0225C464:
	add r2, r2, #1
_0225C466:
	cmp r2, #2
	blt _0225C458
	add r3, r3, #1
_0225C46C:
	cmp r3, #3
	blt _0225C450
_0225C470:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225C474: .word 0x0000069E
_0225C478: .word MOD11_0225F690

	thumb_func_start MOD11_0225C47C
MOD11_0225C47C: ; 0x0225C47C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	mov r0, #0x6f
	lsl r0, r0, #4
	add r3, r0, #0
	sub r3, #0x51
	ldrsb r5, [r6, r3]
	mov r3, #0x30
	ldr r2, _0225C568 ; =MOD11_0225FAAC
	mul r3, r5
	add r4, r6, r0
	add r5, r2, r3
	cmp r1, #1
	bne _0225C4DA
	mov r1, #1
	ldrsb r2, [r4, r1]
	mov r3, #2
	ldr r1, _0225C56C ; =MOD11_0225F684
	ldrsb r3, [r4, r3]
	add r1, r1, r2
	sub r0, r0, #4
	ldrb r2, [r3, r1]
	ldr r1, [r5, #0x14]
	lsl r3, r2, #2
	add r1, r1, r3
	ldrb r1, [r1, #1]
	sub r1, #8
	str r1, [sp]
	mov r1, #0x11
	lsl r1, r1, #0x10
	str r1, [sp, #4]
	ldr r4, [r5, #0x14]
	ldr r0, [r6, r0]
	add r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	add r1, #8
	sub r2, #8
	add r3, #8
	bl MOD11_0225D5FC
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r4, r5, r6, pc}
_0225C4DA:
	ldr r3, _0225C56C ; =MOD11_0225F684
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	bl MOD11_0225C574
	cmp r0, #0x20
	bhi _0225C502
	bhs _0225C50E
	cmp r0, #2
	bhi _0225C4FC
	cmp r0, #1
	blo _0225C560
	beq _0225C548
	cmp r0, #2
	beq _0225C55A
	b _0225C560
_0225C4FC:
	cmp r0, #0x10
	beq _0225C50E
	b _0225C560
_0225C502:
	cmp r0, #0x40
	bhi _0225C50A
	beq _0225C50E
	b _0225C560
_0225C50A:
	cmp r0, #0x80
	bne _0225C560
_0225C50E:
	mov r0, #1
	ldrsb r3, [r4, r0]
	mov r0, #2
	ldr r2, _0225C56C ; =MOD11_0225F684
	ldrsb r1, [r4, r0]
	add r0, r2, r3
	ldrb r1, [r1, r0]
	ldr r0, [r5, #0x14]
	lsl r3, r1, #2
	add r0, r0, r3
	ldrb r0, [r0, #1]
	sub r0, #8
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, [r5, #0x14]
	ldr r0, _0225C570 ; =0x000006EC
	add r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	ldr r0, [r6, r0]
	add r1, #8
	sub r2, #8
	add r3, #8
	bl MOD11_0225D5FC
	b _0225C560
_0225C548:
	mov r0, #1
	ldrsb r3, [r4, r0]
	mov r0, #2
	ldr r2, _0225C56C ; =MOD11_0225F684
	ldrsb r1, [r4, r0]
	add r0, r2, r3
	add sp, #8
	ldrb r0, [r1, r0]
	pop {r4, r5, r6, pc}
_0225C55A:
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225C560:
	mov r0, #0
	mvn r0, r0
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_0225C568: .word MOD11_0225FAAC
_0225C56C: .word MOD11_0225F684
_0225C570: .word 0x000006EC

	thumb_func_start MOD11_0225C574
MOD11_0225C574: ; 0x0225C574
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #2
	ldrsb r1, [r0, r1]
	add r6, r2, #0
	add r2, r3, #0
	cmp r1, r4
	blt _0225C588
	sub r1, r4, #1
	strb r1, [r0, #2]
_0225C588:
	mov r1, #1
	ldrsb r1, [r0, r1]
	cmp r1, r6
	blt _0225C594
	sub r1, r6, #1
	strb r1, [r0, #1]
_0225C594:
	mov r7, #2
	ldrsb r1, [r0, r7]
	mov r5, #1
	mov r3, #0x40
	str r1, [sp]
	ldrsb r1, [r0, r5]
	mov ip, r1
	ldr r1, _0225C764 ; =gMain
	ldr r1, [r1, #0x48]
	tst r3, r1
	beq _0225C5FA
	mov r1, ip
	sub r1, r1, #1
	strb r1, [r0, #1]
	ldrsb r1, [r0, r5]
	cmp r1, #0
	bge _0225C5BA
	mov r1, #0
	strb r1, [r0, #1]
_0225C5BA:
	cmp r2, #0
	beq _0225C5F6
	mov r3, #1
	mov r1, #2
	ldrsb r3, [r0, r3]
	ldrsb r1, [r0, r1]
	mul r3, r4
	add r1, r1, r3
	ldrb r1, [r2, r1]
	cmp r1, #0xff
	bne _0225C5F6
	add r1, r0, #1
	mov r7, #0
	mov r6, #1
_0225C5D6:
	ldrsb r3, [r1, r7]
	sub r3, r3, #1
	strb r3, [r1]
	ldrsb r3, [r0, r6]
	cmp r3, #0
	bge _0225C5E8
	mov r1, ip
	strb r1, [r0, #1]
	b _0225C5F6
_0225C5E8:
	mov r5, #2
	ldrsb r5, [r0, r5]
	mul r3, r4
	add r5, r2, r5
	ldrb r3, [r3, r5]
	cmp r3, #0xff
	beq _0225C5D6
_0225C5F6:
	mov r5, #0x40
	b _0225C70E
_0225C5FA:
	mov r3, #0x80
	tst r3, r1
	beq _0225C650
	mov r1, ip
	add r1, r1, #1
	strb r1, [r0, #1]
	ldrsb r1, [r0, r5]
	cmp r1, r6
	blt _0225C610
	sub r1, r6, #1
	strb r1, [r0, #1]
_0225C610:
	cmp r2, #0
	beq _0225C64C
	mov r3, #1
	mov r1, #2
	ldrsb r3, [r0, r3]
	ldrsb r1, [r0, r1]
	mul r3, r4
	add r1, r1, r3
	ldrb r1, [r2, r1]
	cmp r1, #0xff
	bne _0225C64C
	add r1, r0, #1
	mov r7, #1
_0225C62A:
	mov r3, #0
	ldrsb r3, [r1, r3]
	add r3, r3, #1
	strb r3, [r1]
	ldrsb r3, [r0, r7]
	cmp r3, r6
	blt _0225C63E
	mov r1, ip
	strb r1, [r0, #1]
	b _0225C64C
_0225C63E:
	mov r5, #2
	ldrsb r5, [r0, r5]
	mul r3, r4
	add r5, r2, r5
	ldrb r3, [r3, r5]
	cmp r3, #0xff
	beq _0225C62A
_0225C64C:
	mov r5, #0x80
	b _0225C70E
_0225C650:
	mov r3, #0x20
	tst r3, r1
	beq _0225C6A6
	ldr r1, [sp]
	sub r1, r1, #1
	strb r1, [r0, #2]
	ldrsb r1, [r0, r7]
	cmp r1, #0
	bge _0225C666
	mov r1, #0
	strb r1, [r0, #2]
_0225C666:
	cmp r2, #0
	beq _0225C6A2
	mov r3, #1
	mov r1, #2
	ldrsb r3, [r0, r3]
	ldrsb r1, [r0, r1]
	mul r3, r4
	add r1, r1, r3
	ldrb r1, [r2, r1]
	cmp r1, #0xff
	bne _0225C6A2
	add r5, r0, #2
	mov r7, #0
	mov r6, #2
_0225C682:
	ldrsb r1, [r5, r7]
	sub r1, r1, #1
	strb r1, [r5]
	ldrsb r3, [r0, r6]
	cmp r3, #0
	bge _0225C694
	ldr r1, [sp]
	strb r1, [r0, #2]
	b _0225C6A2
_0225C694:
	mov r1, #1
	ldrsb r1, [r0, r1]
	add r3, r2, r3
	mul r1, r4
	ldrb r1, [r1, r3]
	cmp r1, #0xff
	beq _0225C682
_0225C6A2:
	mov r5, #0x20
	b _0225C70E
_0225C6A6:
	mov r3, #0x10
	tst r3, r1
	beq _0225C6FC
	ldr r1, [sp]
	add r1, r1, #1
	strb r1, [r0, #2]
	ldrsb r1, [r0, r7]
	cmp r1, r4
	blt _0225C6BC
	sub r1, r4, #1
	strb r1, [r0, #2]
_0225C6BC:
	cmp r2, #0
	beq _0225C6F8
	mov r3, #1
	mov r1, #2
	ldrsb r3, [r0, r3]
	ldrsb r1, [r0, r1]
	mul r3, r4
	add r1, r1, r3
	ldrb r1, [r2, r1]
	cmp r1, #0xff
	bne _0225C6F8
	add r5, r0, #2
	mov r7, #0
	mov r6, #2
_0225C6D8:
	ldrsb r1, [r5, r7]
	add r1, r1, #1
	strb r1, [r5]
	ldrsb r3, [r0, r6]
	cmp r3, r4
	blt _0225C6EA
	ldr r1, [sp]
	strb r1, [r0, #2]
	b _0225C6F8
_0225C6EA:
	mov r1, #1
	ldrsb r1, [r0, r1]
	add r3, r2, r3
	mul r1, r4
	ldrb r1, [r1, r3]
	cmp r1, #0xff
	beq _0225C6D8
_0225C6F8:
	mov r5, #0x10
	b _0225C70E
_0225C6FC:
	add r3, r1, #0
	tst r3, r5
	bne _0225C70E
	tst r1, r7
	beq _0225C70A
	add r5, r7, #0
	b _0225C70E
_0225C70A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225C70E:
	cmp r2, #0
	beq _0225C738
	mov r1, ip
	add r3, r4, #0
	mul r3, r1
	ldr r1, [sp]
	add r1, r1, r3
	mov r3, #2
	ldrsb r6, [r0, r3]
	mov r3, #1
	ldrsb r3, [r0, r3]
	ldrb r1, [r2, r1]
	mul r3, r4
	add r3, r6, r3
	ldrb r2, [r2, r3]
	cmp r1, r2
	bne _0225C738
	ldr r1, [sp]
	strb r1, [r0, #2]
	mov r1, ip
	strb r1, [r0, #1]
_0225C738:
	mov r1, #2
	ldrsb r2, [r0, r1]
	ldr r1, [sp]
	cmp r2, r1
	bne _0225C74C
	mov r1, #1
	ldrsb r1, [r0, r1]
	mov r0, ip
	cmp r1, r0
	beq _0225C754
_0225C74C:
	ldr r0, _0225C768 ; =0x000005DC
	bl PlaySE
	b _0225C75E
_0225C754:
	mov r0, #0xf0
	tst r0, r5
	beq _0225C75E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225C75E:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225C764: .word gMain
_0225C768: .word 0x000005DC

	thumb_func_start MOD11_0225C76C
MOD11_0225C76C: ; 0x0225C76C
	ldr r1, _0225C774 ; =0x000006F4
	ldrb r0, [r0, r1]
	bx lr
	nop
_0225C774: .word 0x000006F4

	thumb_func_start MOD11_0225C778
MOD11_0225C778: ; 0x0225C778
	ldr r2, _0225C780 ; =0x000006F4
	strb r1, [r0, r2]
	bx lr
	nop
_0225C780: .word 0x000006F4

	thumb_func_start MOD11_0225C784
MOD11_0225C784: ; 0x0225C784
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl MOD11_02230078
	ldr r0, [r4]
	bl MOD11_02230080
	ldr r0, [r4]
	bl MOD11_022300CC
	ldr r0, [r4]
	bl MOD11_02231268
	cmp r0, #0
	bne _0225C7C0
	ldr r0, _0225C7E4 ; =0x000006FC
	ldrb r0, [r4, r0]
	cmp r0, #2
	blo _0225C7B0
	bl GF_AssertFail
_0225C7B0:
	ldr r1, _0225C7E4 ; =0x000006FC
	add r0, r4, #0
	ldrb r1, [r4, r1]
	lsl r2, r1, #2
	ldr r1, _0225C7E8 ; =MOD11_0225F6B8
	ldr r1, [r1, r2]
	blx r1
	b _0225C7C6
_0225C7C0:
	add r0, r4, #0
	bl MOD11_0225C8A0
_0225C7C6:
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0225C7E2
	ldr r1, _0225C7EC ; =0x000006FD
	mov r3, #0
	strb r3, [r4, r1]
	add r2, r1, #1
	strb r3, [r4, r2]
	sub r2, r1, #1
	ldrb r2, [r4, r2]
	sub r1, r1, #1
	add r2, r2, #1
	strb r2, [r4, r1]
_0225C7E2:
	pop {r4, pc}
	.align 2, 0
_0225C7E4: .word 0x000006FC
_0225C7E8: .word MOD11_0225F6B8
_0225C7EC: .word 0x000006FD

	thumb_func_start MOD11_0225C7F0
MOD11_0225C7F0: ; 0x0225C7F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0225C840 ; =0x000006FD
	ldrb r1, [r4, r0]
	cmp r1, #0
	bne _0225C820
	sub r0, r0, #5
	mov r3, #0x11
	ldr r0, [r4, r0]
	mov r1, #0x80
	mov r2, #0x3c
	lsl r3, r3, #0x10
	bl MOD11_0225D7D0
	ldr r0, _0225C844 ; =0x000006F8
	mov r1, #0x3c
	ldr r0, [r4, r0]
	bl MOD11_0225D820
	ldr r0, _0225C840 ; =0x000006FD
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0225C838
_0225C820:
	sub r0, r0, #5
	ldr r0, [r4, r0]
	bl MOD11_0225D824
	cmp r0, #1
	bne _0225C838
	ldr r0, _0225C840 ; =0x000006FD
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	mov r0, #0
	pop {r4, pc}
_0225C838:
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	nop
_0225C840: .word 0x000006FD
_0225C844: .word 0x000006F8

	thumb_func_start MOD11_0225C848
MOD11_0225C848: ; 0x0225C848
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0225C898 ; =0x000006FD
	ldrb r1, [r4, r0]
	cmp r1, #0
	bne _0225C878
	sub r0, r0, #5
	mov r3, #0x11
	ldr r0, [r4, r0]
	mov r1, #0x40
	mov r2, #0x16
	lsl r3, r3, #0x10
	bl MOD11_0225D7D0
	ldr r0, _0225C89C ; =0x000006F8
	mov r1, #0x3c
	ldr r0, [r4, r0]
	bl MOD11_0225D820
	ldr r0, _0225C898 ; =0x000006FD
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0225C890
_0225C878:
	sub r0, r0, #5
	ldr r0, [r4, r0]
	bl MOD11_0225D824
	cmp r0, #1
	bne _0225C890
	ldr r0, _0225C898 ; =0x000006FD
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
_0225C890:
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	nop
_0225C898: .word 0x000006FD
_0225C89C: .word 0x000006F8

	thumb_func_start MOD11_0225C8A0
MOD11_0225C8A0: ; 0x0225C8A0
	push {r4, lr}
	ldr r1, _0225C914 ; =0x000006FD
	add r4, r0, #0
	ldrb r0, [r4, r1]
	cmp r0, #0
	beq _0225C8B2
	cmp r0, #1
	beq _0225C8D0
	b _0225C8F4
_0225C8B2:
	add r0, r1, #1
	ldrb r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #1
	strb r2, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #0x3c
	bls _0225C90C
	mov r2, #0
	add r0, r1, #1
	strb r2, [r4, r0]
	ldrb r0, [r4, r1]
	add r0, r0, #1
	strb r0, [r4, r1]
	b _0225C90C
_0225C8D0:
	sub r0, r1, #5
	mov r3, #0x11
	ldr r0, [r4, r0]
	mov r1, #0x28
	mov r2, #0x92
	lsl r3, r3, #0x10
	bl MOD11_0225D7D0
	ldr r0, _0225C918 ; =0x000006F8
	mov r1, #0x3c
	ldr r0, [r4, r0]
	bl MOD11_0225D820
	ldr r0, _0225C914 ; =0x000006FD
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0225C90C
_0225C8F4:
	sub r0, r1, #5
	ldr r0, [r4, r0]
	bl MOD11_0225D824
	cmp r0, #1
	bne _0225C90C
	ldr r0, _0225C914 ; =0x000006FD
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
_0225C90C:
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	nop
_0225C914: .word 0x000006FD
_0225C918: .word 0x000006F8

	thumb_func_start MOD11_0225C91C
MOD11_0225C91C: ; 0x0225C91C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0x1b
	str r0, [sp]
	mov r0, #0x4a
	str r0, [sp, #4]
	mov r0, #0
	add r4, r1, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0225C990 ; =0x00004E41
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r2, #0
	add r2, r5, #0
	add r3, r4, #0
	bl FUN_0200C0DC
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0225C994 ; =0x00004FB9
	mov r2, #0x1b
	add r3, r2, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	add r3, #0xf9
	bl FUN_0200C00C
	mov r0, #1
	str r0, [sp]
	ldr r0, _0225C998 ; =0x00004FB3
	mov r2, #0x1b
	add r3, r2, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r3, #0xfa
	bl FUN_0200C124
	mov r0, #1
	str r0, [sp]
	ldr r0, _0225C99C ; =0x00004FA8
	mov r2, #0x1b
	add r3, r2, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r3, #0xfb
	bl FUN_0200C13C
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_0225C990: .word 0x00004E41
_0225C994: .word 0x00004FB9
_0225C998: .word 0x00004FB3
_0225C99C: .word 0x00004FA8

	thumb_func_start MOD11_0225C9A0
MOD11_0225C9A0: ; 0x0225C9A0
	push {r4, lr}
	ldr r1, _0225C9C4 ; =0x00004FB9
	add r4, r0, #0
	bl FUN_0200C358
	ldr r1, _0225C9C8 ; =0x00004E41
	add r0, r4, #0
	bl FUN_0200C368
	ldr r1, _0225C9CC ; =0x00004FB3
	add r0, r4, #0
	bl FUN_0200C378
	ldr r1, _0225C9D0 ; =0x00004FA8
	add r0, r4, #0
	bl FUN_0200C388
	pop {r4, pc}
	.align 2, 0
_0225C9C4: .word 0x00004FB9
_0225C9C8: .word 0x00004E41
_0225C9CC: .word 0x00004FB3
_0225C9D0: .word 0x00004FA8

	thumb_func_start MOD11_0225C9D4
MOD11_0225C9D4: ; 0x0225C9D4
	push {r4, lr}
	mov r0, #5
	lsl r1, r0, #6
	bl AllocFromHeap
	mov r2, #5
	mov r1, #0
	lsl r2, r2, #6
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, r4, #0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start MOD11_0225C9F0
MOD11_0225C9F0: ; 0x0225C9F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0225C9FE
	bl GF_AssertFail
_0225C9FE:
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}
	.align 2, 0

	thumb_func_start MOD11_0225CA08
MOD11_0225CA08: ; 0x0225CA08
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x38]
	str r3, [sp, #0x1c]
	str r0, [sp, #0x38]
	add r6, r1, #0
	str r2, [sp, #0x18]
	ldr r7, [sp, #0x3c]
	bl MOD11_0225C9D4
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x38]
	add r1, r6, #0
	str r0, [sp, #0x20]
	str r7, [sp]
	bl MOD11_0225CB10
	ldr r5, [sp, #0x20]
	mov r4, #0
	add r5, #0x1c
_0225CA32:
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	ldrb r0, [r0, r4]
	bl MOD11_0225D374
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	str r1, [sp]
	str r4, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	mov r1, #0x4f
	str r0, [sp, #0xc]
	lsl r1, r1, #2
	add r1, r2, r1
	ldr r3, [sp, #0x18]
	add r0, r5, #0
	add r2, r6, #0
	str r7, [sp, #0x10]
	bl MOD11_0225CDB0
	add r4, r4, #1
	add r5, #0x30
	cmp r4, #6
	blt _0225CA32
	ldr r0, [sp, #0x20]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start MOD11_0225CA6C
MOD11_0225CA6C: ; 0x0225CA6C
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _0225CA8A
	mov r2, #0
_0225CA74:
	ldr r1, [r0, #0x20]
	cmp r1, #0
	bne _0225CA82
	add r2, r2, #1
	add r0, #0x30
	cmp r2, #6
	blt _0225CA74
_0225CA82:
	cmp r2, #6
	bne _0225CA8A
	mov r0, #1
	bx lr
_0225CA8A:
	mov r0, #0
	bx lr
	.align 2, 0

	thumb_func_start MOD11_0225CA90
MOD11_0225CA90: ; 0x0225CA90
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	cmp r6, #0
	bne _0225CAA0
	bl GF_AssertFail
_0225CAA0:
	add r0, r6, #0
	add r1, r4, #0
	bl MOD11_0225CC68
	add r5, r6, #0
	mov r4, #0
	add r5, #0x1c
	add r6, #0x18
_0225CAB0:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	add r3, r6, #0
	bl MOD11_0225D1A8
	add r4, r4, #1
	add r5, #0x30
	cmp r4, #6
	blt _0225CAB0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start MOD11_0225CAC8
MOD11_0225CAC8: ; 0x0225CAC8
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _0225CAE6
	mov r2, #0
_0225CAD0:
	ldr r1, [r0, #0x20]
	cmp r1, #0
	bne _0225CADE
	add r2, r2, #1
	add r0, #0x30
	cmp r2, #6
	blt _0225CAD0
_0225CADE:
	cmp r2, #6
	bne _0225CAE6
	mov r0, #1
	bx lr
_0225CAE6:
	mov r0, #0
	bx lr
	.align 2, 0

	thumb_func_start MOD11_0225CAEC
MOD11_0225CAEC: ; 0x0225CAEC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6]
	bl FUN_0200C3DC
	mov r4, #0
	add r5, r6, #0
_0225CAFA:
	ldr r0, [r5, #0x1c]
	bl FUN_0200C3DC
	add r4, r4, #1
	add r5, #0x30
	cmp r4, #6
	blt _0225CAFA
	add r0, r6, #0
	bl MOD11_0225C9F0
	pop {r4, r5, r6, pc}

	thumb_func_start MOD11_0225CB10
MOD11_0225CB10: ; 0x0225CB10
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	mov r1, #0
	cmp r0, #0
	bne _0225CB2A
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0225CB2A
	mov r1, #1
_0225CB2A:
	cmp r1, #0
	bne _0225CB32
	bl GF_AssertFail
_0225CB32:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x1c
	bl MI_CpuFill8
	ldr r1, [sp, #0x18]
	ldr r2, _0225CBA8 ; =MOD11_0225FE48
	add r0, r7, #0
	bl FUN_0200C154
	str r0, [r5]
	cmp r6, #0
	ldr r0, [r5]
	bne _0225CB68
	ldr r2, _0225CBAC ; =MOD11_0225FE38
	lsl r3, r4, #1
	ldrsh r2, [r2, r3]
	mov r1, #0x16
	lsl r1, r1, #4
	bl FUN_0200C714
	ldr r0, [r5]
	mov r1, #8
	ldr r0, [r0]
	bl FUN_02020130
	b _0225CB80
_0225CB68:
	ldr r2, _0225CBB0 ; =MOD11_0225FE30
	lsl r3, r4, #1
	ldrsh r2, [r2, r3]
	mov r1, #0x5f
	mvn r1, r1
	bl FUN_0200C714
	ldr r0, [r5]
	mov r1, #7
	ldr r0, [r0]
	bl FUN_02020130
_0225CB80:
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0200C59C
	str r6, [r5, #0xc]
	mov r2, #0x7d
	str r4, [r5, #0x10]
	mov r0, #0
	strb r0, [r5, #0x1a]
	ldr r0, _0225CBB4 ; =MOD11_0225CBBC
	add r1, r5, #0
	lsl r2, r2, #2
	bl FUN_0200CA44
	str r0, [r5, #4]
	ldr r0, _0225CBB8 ; =0x00000711
	bl PlaySE
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225CBA8: .word MOD11_0225FE48
_0225CBAC: .word MOD11_0225FE38
_0225CBB0: .word MOD11_0225FE30
_0225CBB4: .word MOD11_0225CBBC
_0225CBB8: .word 0x00000711

	thumb_func_start MOD11_0225CBBC
MOD11_0225CBBC: ; 0x0225CBBC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldrb r1, [r4, #0x1a]
	cmp r1, #0
	beq _0225CBCE
	cmp r1, #1
	beq _0225CBEA
	b _0225CC52
_0225CBCE:
	add r1, sp, #0
	ldr r0, [r4]
	add r1, #2
	add r2, sp, #0
	bl FUN_0200C7A0
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	lsl r0, r0, #8
	str r0, [r4, #0x14]
	ldrb r0, [r4, #0x1a]
	add r0, r0, #1
	strb r0, [r4, #0x1a]
_0225CBEA:
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x14]
	cmp r0, #0
	bne _0225CC22
	mov r0, #0xe
	lsl r0, r0, #8
	sub r2, r1, r0
	lsl r1, r0, #4
	str r2, [r4, #0x14]
	cmp r2, r1
	bgt _0225CC0A
	lsl r0, r0, #4
	str r0, [r4, #0x14]
	ldrb r0, [r4, #0x1a]
	add r0, r0, #1
	strb r0, [r4, #0x1a]
_0225CC0A:
	ldr r2, [r4, #0x10]
	ldr r1, [r4, #0x14]
	lsl r3, r2, #1
	ldr r2, _0225CC60 ; =MOD11_0225FE38
	lsl r1, r1, #8
	ldrsh r2, [r2, r3]
	ldr r0, [r4]
	asr r1, r1, #0x10
	bl FUN_0200C714
	add sp, #4
	pop {r3, r4, pc}
_0225CC22:
	mov r0, #0xe
	lsl r0, r0, #8
	add r1, r1, r0
	mov r0, #2
	lsl r0, r0, #0xc
	str r1, [r4, #0x14]
	cmp r1, r0
	blt _0225CC3A
	str r0, [r4, #0x14]
	ldrb r0, [r4, #0x1a]
	add r0, r0, #1
	strb r0, [r4, #0x1a]
_0225CC3A:
	ldr r2, [r4, #0x10]
	ldr r1, [r4, #0x14]
	lsl r3, r2, #1
	ldr r2, _0225CC64 ; =MOD11_0225FE30
	lsl r1, r1, #8
	ldrsh r2, [r2, r3]
	ldr r0, [r4]
	asr r1, r1, #0x10
	bl FUN_0200C714
	add sp, #4
	pop {r3, r4, pc}
_0225CC52:
	bl FUN_0200CAB4
	mov r0, #0
	str r0, [r4, #4]
	add sp, #4
	pop {r3, r4, pc}
	nop
_0225CC60: .word MOD11_0225FE38
_0225CC64: .word MOD11_0225FE30

	thumb_func_start MOD11_0225CC68
MOD11_0225CC68: ; 0x0225CC68
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	cmp r0, #0
	beq _0225CC7A
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0225CC7E
_0225CC7A:
	bl GF_AssertFail
_0225CC7E:
	mov r0, #0
	strb r0, [r5, #0x1a]
	str r4, [r5, #8]
	cmp r4, #0
	bne _0225CC8C
	mov r0, #4
	b _0225CC8C
_0225CC8C:
	strb r0, [r5, #0x1b]
	mov r2, #0x7d
	ldr r0, _0225CCA0 ; =MOD11_0225CCA4
	add r1, r5, #0
	lsl r2, r2, #2
	bl FUN_0200CA44
	str r0, [r5, #4]
	pop {r3, r4, r5, pc}
	nop
_0225CCA0: .word MOD11_0225CCA4

	thumb_func_start MOD11_0225CCA4
MOD11_0225CCA4: ; 0x0225CCA4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	beq _0225CCBC
	cmp r0, #1
	beq _0225CCFC
	cmp r0, #2
	beq _0225CD10
	b _0225CD8E
_0225CCBC:
	add r1, sp, #4
	ldr r0, [r4]
	add r1, #2
	add r2, sp, #4
	bl FUN_0200C7A0
	add r1, sp, #4
	mov r0, #2
	ldrsh r0, [r1, r0]
	mov r1, #1
	lsl r0, r0, #8
	str r0, [r4, #0x14]
	ldr r0, [r4]
	bl FUN_0200C90C
	mov r0, #1
	lsl r0, r0, #0xc
	strh r0, [r4, #0x18]
	mov r0, #0x18
	ldrsh r0, [r4, r0]
	mov r1, #0
	mov r2, #0x3f
	asr r3, r0, #8
	mov r0, #0x10
	sub r0, r0, r3
	str r0, [sp]
	ldr r0, _0225CDA0 ; =0x04000050
	bl G2x_SetBlendAlpha_
	ldrb r0, [r4, #0x1a]
	add r0, r0, #1
	strb r0, [r4, #0x1a]
_0225CCFC:
	ldrb r0, [r4, #0x1b]
	cmp r0, #0
	beq _0225CD0A
	sub r0, r0, #1
	add sp, #8
	strb r0, [r4, #0x1b]
	pop {r3, r4, r5, pc}
_0225CD0A:
	ldrb r0, [r4, #0x1a]
	add r0, r0, #1
	strb r0, [r4, #0x1a]
_0225CD10:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0225CD54
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x14]
	cmp r0, #0
	bne _0225CD3A
	mov r0, #1
	lsl r0, r0, #0xa
	sub r1, r1, r0
	str r1, [r4, #0x14]
	ldr r2, [r4, #0x10]
	lsl r1, r1, #8
	lsl r3, r2, #1
	ldr r2, _0225CDA4 ; =MOD11_0225FE38
	ldr r0, [r4]
	ldrsh r2, [r2, r3]
	asr r1, r1, #0x10
	bl FUN_0200C714
	b _0225CD54
_0225CD3A:
	mov r0, #1
	lsl r0, r0, #0xa
	add r1, r1, r0
	str r1, [r4, #0x14]
	ldr r2, [r4, #0x10]
	lsl r1, r1, #8
	lsl r3, r2, #1
	ldr r2, _0225CDA8 ; =MOD11_0225FE30
	ldr r0, [r4]
	ldrsh r2, [r2, r3]
	asr r1, r1, #0x10
	bl FUN_0200C714
_0225CD54:
	mov r1, #0x18
	ldrsh r2, [r4, r1]
	add r0, r1, #0
	add r0, #0xe8
	sub r0, r2, r0
	strh r0, [r4, #0x18]
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _0225CD78
	mov r1, #0
	strh r1, [r4, #0x18]
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0200C63C
	ldrb r0, [r4, #0x1a]
	add r0, r0, #1
	strb r0, [r4, #0x1a]
_0225CD78:
	mov r0, #0x18
	ldrsh r0, [r4, r0]
	add sp, #8
	asr r1, r0, #8
	mov r0, #0x10
	sub r0, r0, r1
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _0225CDAC ; =0x04000052
	strh r1, [r0]
	pop {r3, r4, r5, pc}
_0225CD8E:
	bl MOD11_02231678
	add r0, r5, #0
	bl FUN_0200CAB4
	mov r0, #0
	str r0, [r4, #4]
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_0225CDA0: .word 0x04000050
_0225CDA4: .word MOD11_0225FE38
_0225CDA8: .word MOD11_0225FE30
_0225CDAC: .word 0x04000052

	thumb_func_start MOD11_0225CDB0
MOD11_0225CDB0: ; 0x0225CDB0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r7, r1, #0
	add r6, r2, #0
	mov r1, #0
	str r3, [sp]
	ldr r4, [sp, #0x1c]
	cmp r0, #0
	bne _0225CDCC
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0225CDCC
	mov r1, #1
_0225CDCC:
	cmp r1, #0
	bne _0225CDD4
	bl GF_AssertFail
_0225CDD4:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x30
	bl MI_CpuFill8
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	ldr r2, _0225CEA4 ; =MOD11_0225FE7C
	bl FUN_0200C154
	str r0, [r5]
	cmp r6, #0
	ldr r0, [r5]
	bne _0225CE02
	ldr r2, [sp, #0x18]
	mov r1, #0x45
	lsl r3, r2, #1
	ldr r2, _0225CEA8 ; =MOD11_0225FE40
	lsl r1, r1, #2
	ldrsh r2, [r2, r3]
	bl FUN_0200C714
	b _0225CE12
_0225CE02:
	ldr r2, [sp, #0x18]
	mov r1, #0x13
	lsl r3, r2, #1
	ldr r2, _0225CEAC ; =MOD11_0225FE28
	mvn r1, r1
	ldrsh r2, [r2, r3]
	bl FUN_0200C714
_0225CE12:
	ldr r0, [r5]
	ldr r1, [sp, #0x20]
	ldr r0, [r0]
	bl FUN_02020130
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_0200C59C
	add r0, r5, #0
	str r6, [r5, #8]
	add r0, #0x2d
	strb r4, [r0]
	ldr r0, [sp, #0x18]
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x20]
	bl MOD11_0225D3B4
	add r1, r5, #0
	add r1, #0x2e
	strb r0, [r1]
	ldr r0, [sp, #0x20]
	str r7, [r5, #0x14]
	cmp r0, #6
	bne _0225CE48
	ldr r0, _0225CEB0 ; =0x00000713
	b _0225CE4A
_0225CE48:
	ldr r0, _0225CEB4 ; =0x00000712
_0225CE4A:
	strh r0, [r5, #0x2a]
	cmp r6, #0
	bne _0225CE5E
	lsl r0, r4, #4
	add r0, #0xa2
	str r0, [r5, #0x20]
	mov r0, #0xf
	mul r0, r4
	add r0, #0x9c
	b _0225CE70
_0225CE5E:
	lsl r1, r4, #4
	mov r0, #0x5e
	sub r0, r0, r1
	str r0, [r5, #0x20]
	mov r0, #0xf
	add r1, r4, #0
	mul r1, r0
	mov r0, #0x64
	sub r0, r0, r1
_0225CE70:
	str r0, [r5, #0x24]
	add r0, r5, #0
	mov r1, #0
	add r0, #0x2c
	strb r1, [r0]
	ldr r0, [sp]
	ldr r2, _0225CEB8 ; =0x000001F5
	cmp r0, #0
	bne _0225CE96
	lsl r0, r4, #1
	add r0, r4, r0
	add r0, r0, #5
	strh r0, [r5, #0x28]
	ldr r0, _0225CEBC ; =MOD11_0225CEC4
	add r1, r5, #0
	bl FUN_0200CA44
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0225CE96:
	ldr r0, _0225CEC0 ; =MOD11_0225D0C4
	strh r1, [r5, #0x28]
	add r1, r5, #0
	bl FUN_0200CA44
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225CEA4: .word MOD11_0225FE7C
_0225CEA8: .word MOD11_0225FE40
_0225CEAC: .word MOD11_0225FE28
_0225CEB0: .word 0x00000713
_0225CEB4: .word 0x00000712
_0225CEB8: .word 0x000001F5
_0225CEBC: .word MOD11_0225CEC4
_0225CEC0: .word MOD11_0225D0C4

	thumb_func_start MOD11_0225CEC4
MOD11_0225CEC4: ; 0x0225CEC4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #6
	bls _0225CED6
	b _0225D0A6
_0225CED6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225CEE2: ; jump table
	.short _0225CEF0 - _0225CEE2 - 2 ; case 0
	.short _0225CF14 - _0225CEE2 - 2 ; case 1
	.short _0225CF22 - _0225CEE2 - 2 ; case 2
	.short _0225CFA4 - _0225CEE2 - 2 ; case 3
	.short _0225CFBC - _0225CEE2 - 2 ; case 4
	.short _0225CFFC - _0225CEE2 - 2 ; case 5
	.short _0225D02A - _0225CEE2 - 2 ; case 6
_0225CEF0:
	add r1, sp, #0
	ldr r0, [r4]
	add r1, #2
	add r2, sp, #0
	bl FUN_0200C7A0
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	lsl r0, r0, #8
	str r0, [r4, #0x1c]
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2c
	strb r1, [r0]
_0225CF14:
	mov r0, #0x28
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0225CF22
	sub r0, r0, #1
	strh r0, [r4, #0x28]
	pop {r3, r4, r5, pc}
_0225CF22:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x1c]
	cmp r0, #0
	bne _0225CF66
	mov r0, #0xe
	lsl r0, r0, #8
	sub r1, r1, r0
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x24]
	lsl r0, r0, #8
	cmp r1, r0
	bgt _0225CF50
	str r0, [r4, #0x1c]
	ldrh r0, [r4, #0x2a]
	bl PlaySE
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2c
	strb r1, [r0]
_0225CF50:
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #0x1c]
	lsl r3, r2, #1
	ldr r2, _0225D0BC ; =MOD11_0225FE40
	lsl r1, r1, #8
	ldrsh r2, [r2, r3]
	ldr r0, [r4]
	asr r1, r1, #0x10
	bl FUN_0200C714
	b _0225CF9A
_0225CF66:
	mov r0, #0xe
	lsl r0, r0, #8
	add r1, r1, r0
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x24]
	lsl r0, r0, #8
	cmp r1, r0
	blt _0225CF86
	str r0, [r4, #0x1c]
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2c
	strb r1, [r0]
_0225CF86:
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #0x1c]
	lsl r3, r2, #1
	ldr r2, _0225D0C0 ; =MOD11_0225FE28
	lsl r1, r1, #8
	ldrsh r2, [r2, r3]
	ldr r0, [r4]
	asr r1, r1, #0x10
	bl FUN_0200C714
_0225CF9A:
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0200C59C
	pop {r3, r4, r5, pc}
_0225CFA4:
	ldr r1, [r4, #0x14]
	mov r0, #0
	ldrsb r0, [r1, r0]
	add r0, r0, #1
	strb r0, [r1]
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2c
	strb r1, [r0]
_0225CFBC:
	ldr r1, [r4, #0x14]
	mov r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #6
	beq _0225CFD0
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0200C59C
	pop {r3, r4, r5, pc}
_0225CFD0:
	ldr r0, [r4, #8]
	cmp r0, #0
	ldr r0, [r4]
	bne _0225CFE2
	ldr r0, [r0]
	mov r1, #1
	bl FUN_02020208
	b _0225CFEA
_0225CFE2:
	ldr r0, [r0]
	mov r1, #1
	bl FUN_02020208
_0225CFEA:
	mov r0, #0
	strh r0, [r4, #0x28]
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2c
	strb r1, [r0]
_0225CFFC:
	mov r0, #0x28
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0x28]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	blt _0225D0BA
	add r1, r4, #0
	ldr r0, [r4]
	add r1, #0x2e
	ldrb r1, [r1]
	ldr r0, [r0]
	bl FUN_02020130
	mov r0, #0
	strh r0, [r4, #0x28]
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2c
	strb r1, [r0]
_0225D02A:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x1c]
	cmp r0, #0
	bne _0225D068
	mov r0, #6
	lsl r0, r0, #8
	add r1, r1, r0
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	lsl r0, r0, #8
	cmp r1, r0
	blt _0225D052
	str r0, [r4, #0x1c]
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2c
	strb r1, [r0]
_0225D052:
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #0x1c]
	lsl r3, r2, #1
	ldr r2, _0225D0BC ; =MOD11_0225FE40
	lsl r1, r1, #8
	ldrsh r2, [r2, r3]
	ldr r0, [r4]
	asr r1, r1, #0x10
	bl FUN_0200C714
	b _0225D09C
_0225D068:
	mov r0, #6
	lsl r0, r0, #8
	sub r1, r1, r0
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	lsl r0, r0, #8
	cmp r1, r0
	bgt _0225D088
	str r0, [r4, #0x1c]
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2c
	strb r1, [r0]
_0225D088:
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #0x1c]
	lsl r3, r2, #1
	ldr r2, _0225D0C0 ; =MOD11_0225FE28
	lsl r1, r1, #8
	ldrsh r2, [r2, r3]
	ldr r0, [r4]
	asr r1, r1, #0x10
	bl FUN_0200C714
_0225D09C:
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0200C59C
	pop {r3, r4, r5, pc}
_0225D0A6:
	ldr r0, [r4]
	mov r1, #0
	ldr r0, [r0]
	bl FUN_02020208
	add r0, r5, #0
	bl FUN_0200CAB4
	mov r0, #0
	str r0, [r4, #4]
_0225D0BA:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0225D0BC: .word MOD11_0225FE40
_0225D0C0: .word MOD11_0225FE28

	thumb_func_start MOD11_0225D0C4
MOD11_0225D0C4: ; 0x0225D0C4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	add r1, #0x2c
	ldrb r1, [r1]
	cmp r1, #0
	beq _0225D0DC
	cmp r1, #1
	beq _0225D10A
	cmp r1, #2
	beq _0225D11A
	b _0225D192
_0225D0DC:
	add r1, sp, #0
	ldr r0, [r4]
	add r1, #2
	add r2, sp, #0
	bl FUN_0200C7A0
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	mov r1, #0
	lsl r0, r0, #8
	str r0, [r4, #0x1c]
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_02020208
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2c
	strb r1, [r0]
_0225D10A:
	mov r0, #0x28
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0225D11A
	sub r0, r0, #1
	add sp, #4
	strh r0, [r4, #0x28]
	pop {r3, r4, pc}
_0225D11A:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x1c]
	cmp r0, #0
	bne _0225D15A
	mov r0, #0xe
	lsl r0, r0, #8
	sub r1, r1, r0
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	lsl r0, r0, #8
	cmp r1, r0
	bgt _0225D142
	str r0, [r4, #0x1c]
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2c
	strb r1, [r0]
_0225D142:
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #0x1c]
	lsl r3, r2, #1
	ldr r2, _0225D1A0 ; =MOD11_0225FE40
	lsl r1, r1, #8
	ldrsh r2, [r2, r3]
	ldr r0, [r4]
	asr r1, r1, #0x10
	bl FUN_0200C714
	add sp, #4
	pop {r3, r4, pc}
_0225D15A:
	mov r0, #0xe
	lsl r0, r0, #8
	add r1, r1, r0
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	lsl r0, r0, #8
	cmp r1, r0
	blt _0225D17A
	str r0, [r4, #0x1c]
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2c
	strb r1, [r0]
_0225D17A:
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #0x1c]
	lsl r3, r2, #1
	ldr r2, _0225D1A4 ; =MOD11_0225FE28
	lsl r1, r1, #8
	ldrsh r2, [r2, r3]
	ldr r0, [r4]
	asr r1, r1, #0x10
	bl FUN_0200C714
	add sp, #4
	pop {r3, r4, pc}
_0225D192:
	bl FUN_0200CAB4
	mov r0, #0
	str r0, [r4, #4]
	add sp, #4
	pop {r3, r4, pc}
	nop
_0225D1A0: .word MOD11_0225FE40
_0225D1A4: .word MOD11_0225FE28

	thumb_func_start MOD11_0225D1A8
MOD11_0225D1A8: ; 0x0225D1A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r6, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	cmp r0, #0
	beq _0225D1BE
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0225D1C2
_0225D1BE:
	bl GF_AssertFail
_0225D1C2:
	add r0, r5, #0
	mov r1, #0
	add r0, #0x2c
	strb r1, [r0]
	cmp r7, #0
	str r4, [r5, #0x18]
	ldr r2, _0225D200 ; =0x000001F5
	bne _0225D1EC
	lsl r0, r6, #1
	add r0, r6, r0
	strh r0, [r5, #0x28]
	add r0, r5, #0
	mov r1, #4
	add r0, #0x2f
	strb r1, [r0]
	ldr r0, _0225D204 ; =MOD11_0225D20C
	add r1, r5, #0
	bl FUN_0200CA44
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0225D1EC:
	add r0, r5, #0
	strh r1, [r5, #0x28]
	add r0, #0x2f
	strb r1, [r0]
	ldr r0, _0225D208 ; =MOD11_0225D31C
	add r1, r5, #0
	bl FUN_0200CA44
	str r0, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225D200: .word 0x000001F5
_0225D204: .word MOD11_0225D20C
_0225D208: .word MOD11_0225D31C

	thumb_func_start MOD11_0225D20C
MOD11_0225D20C: ; 0x0225D20C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #0x18]
	add r5, r0, #0
	mov r0, #0
	ldrsh r0, [r1, r0]
	cmp r0, #0
	bne _0225D224
	add r0, r4, #0
	mov r1, #0x64
	add r0, #0x2c
	strb r1, [r0]
_0225D224:
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #2
	bgt _0225D23E
	cmp r0, #0
	blt _0225D2FA
	beq _0225D242
	cmp r0, #1
	beq _0225D26E
	cmp r0, #2
	beq _0225D294
	b _0225D2FA
_0225D23E:
	cmp r0, #0x64
	b _0225D2FA
_0225D242:
	add r1, sp, #0
	ldr r0, [r4]
	add r1, #2
	add r2, sp, #0
	bl FUN_0200C7A0
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	mov r1, #1
	lsl r0, r0, #8
	str r0, [r4, #0x1c]
	ldr r0, [r4]
	bl FUN_0200C90C
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2c
	strb r1, [r0]
_0225D26E:
	add r0, r4, #0
	add r0, #0x2f
	ldrb r0, [r0]
	cmp r0, #0
	beq _0225D286
	add r0, r4, #0
	add r0, #0x2f
	ldrb r0, [r0]
	add r4, #0x2f
	sub r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0225D286:
	mov r0, #0x28
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0225D294
	sub r0, r0, #1
	strh r0, [r4, #0x28]
	pop {r3, r4, r5, pc}
_0225D294:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x1c]
	cmp r0, #0
	bne _0225D2B8
	mov r0, #3
	lsl r0, r0, #0xa
	sub r1, r1, r0
	str r1, [r4, #0x1c]
	ldr r2, [r4, #0xc]
	lsl r1, r1, #8
	lsl r3, r2, #1
	ldr r2, _0225D310 ; =MOD11_0225FE40
	ldr r0, [r4]
	ldrsh r2, [r2, r3]
	asr r1, r1, #0x10
	bl FUN_0200C714
	b _0225D2D2
_0225D2B8:
	mov r0, #3
	lsl r0, r0, #0xa
	add r1, r1, r0
	str r1, [r4, #0x1c]
	ldr r2, [r4, #0xc]
	lsl r1, r1, #8
	lsl r3, r2, #1
	ldr r2, _0225D314 ; =MOD11_0225FE28
	ldr r0, [r4]
	ldrsh r2, [r2, r3]
	asr r1, r1, #0x10
	bl FUN_0200C714
_0225D2D2:
	ldr r1, [r4, #0x1c]
	ldr r0, _0225D318 ; =0xFFFFF000
	cmp r1, r0
	blt _0225D2E2
	mov r0, #0x11
	lsl r0, r0, #0xc
	cmp r1, r0
	ble _0225D2F0
_0225D2E2:
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x2c
	strb r1, [r0]
_0225D2F0:
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_0200C59C
	pop {r3, r4, r5, pc}
_0225D2FA:
	ldr r0, [r4]
	mov r1, #0
	ldr r0, [r0]
	bl FUN_0200C63C
	add r0, r5, #0
	bl FUN_0200CAB4
	mov r0, #0
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0225D310: .word MOD11_0225FE40
_0225D314: .word MOD11_0225FE28
_0225D318: .word 0xFFFFF000

	thumb_func_start MOD11_0225D31C
MOD11_0225D31C: ; 0x0225D31C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #0x18]
	add r5, r0, #0
	mov r0, #0
	ldrsh r0, [r1, r0]
	cmp r0, #0
	bne _0225D334
	add r0, r4, #0
	mov r1, #0x64
	add r0, #0x2c
	strb r1, [r0]
_0225D334:
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0225D346
	cmp r0, #1
	beq _0225D370
	cmp r0, #0x64
	b _0225D35C
_0225D346:
	ldr r0, [r4]
	mov r1, #1
	bl FUN_0200C90C
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r4, #0x2c
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0225D35C:
	ldr r0, [r4]
	mov r1, #0
	ldr r0, [r0]
	bl FUN_0200C63C
	add r0, r5, #0
	bl FUN_0200CAB4
	mov r0, #0
	str r0, [r4, #4]
_0225D370:
	pop {r3, r4, r5, pc}
	.align 2, 0

	thumb_func_start MOD11_0225D374
MOD11_0225D374: ; 0x0225D374
	cmp r0, #3
	bhi _0225D38C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225D384: ; jump table
	.short _0225D38C - _0225D384 - 2 ; case 0
	.short _0225D390 - _0225D384 - 2 ; case 1
	.short _0225D39C - _0225D384 - 2 ; case 2
	.short _0225D3A8 - _0225D384 - 2 ; case 3
_0225D38C:
	mov r0, #6
	bx lr
_0225D390:
	cmp r1, #0
	bne _0225D398
	mov r0, #3
	bx lr
_0225D398:
	mov r0, #0
	bx lr
_0225D39C:
	cmp r1, #0
	bne _0225D3A4
	mov r0, #5
	bx lr
_0225D3A4:
	mov r0, #2
	bx lr
_0225D3A8:
	cmp r1, #0
	bne _0225D3B0
	mov r0, #4
	bx lr
_0225D3B0:
	mov r0, #1
	bx lr

	thumb_func_start MOD11_0225D3B4
MOD11_0225D3B4: ; 0x0225D3B4
	cmp r0, #6
	bhi _0225D3EA
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225D3C4: ; jump table
	.short _0225D3D8 - _0225D3C4 - 2 ; case 0
	.short _0225D3E8 - _0225D3C4 - 2 ; case 1
	.short _0225D3E0 - _0225D3C4 - 2 ; case 2
	.short _0225D3D4 - _0225D3C4 - 2 ; case 3
	.short _0225D3E4 - _0225D3C4 - 2 ; case 4
	.short _0225D3DC - _0225D3C4 - 2 ; case 5
	.short _0225D3D2 - _0225D3C4 - 2 ; case 6
_0225D3D2:
	bx lr
_0225D3D4:
	mov r0, #0
	bx lr
_0225D3D8:
	mov r0, #3
	bx lr
_0225D3DC:
	mov r0, #2
	bx lr
_0225D3E0:
	mov r0, #5
	bx lr
_0225D3E4:
	mov r0, #1
	bx lr
_0225D3E8:
	mov r0, #4
_0225D3EA:
	bx lr

	thumb_func_start MOD11_0225D3EC
MOD11_0225D3EC: ; 0x0225D3EC
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0x1b
	str r0, [sp]
	mov r0, #0x2c
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x28]
	add r4, r1, #0
	add r6, r3, #0
	str r0, [sp, #0x14]
	add r0, r2, #0
	mov r1, #3
	add r2, r5, #0
	add r3, r4, #0
	bl FUN_0200C0DC
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1b
	mov r3, #0xba
	str r6, [sp, #8]
	bl FUN_0200C00C
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x1b
	mov r3, #0xbb
	bl FUN_0200C124
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x30]
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x1b
	mov r3, #0xbc
	bl FUN_0200C13C
	add sp, #0x18
	pop {r4, r5, r6, pc}

	thumb_func_start MOD11_0225D45C
MOD11_0225D45C: ; 0x0225D45C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl FUN_0200C358
	add r0, r5, #0
	add r1, r4, #0
	bl FUN_0200C368
	add r0, r5, #0
	add r1, r6, #0
	bl FUN_0200C378
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	bl FUN_0200C388
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start MOD11_0225D484
MOD11_0225D484: ; 0x0225D484
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r3, #0
	mov ip, r2
	ldr r3, _0225D4FC ; =MOD11_0225FEB0
	add r6, r0, #0
	add r7, r1, #0
	add r2, sp, #4
	mov r4, #6
_0225D496:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r4, r4, #1
	bne _0225D496
	ldr r0, [r3]
	mov r1, #0x18
	str r0, [r2]
	ldr r0, [sp, #0x50]
	str r5, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x60]
	str r0, [sp, #0x30]
	mov r0, ip
	bl AllocFromHeap
	mov r1, #0
	mov r2, #0x18
	str r0, [sp]
	bl MI_CpuFill8
	ldr r5, [sp]
	mov r4, #0
_0225D4CE:
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #4
	bl FUN_0200C154
	mov r1, #0
	stmia r5!, {r0}
	bl FUN_0200C644
	add r4, r4, #1
	cmp r4, #5
	blt _0225D4CE
	ldr r0, _0225D500 ; =MOD11_0225D670
	ldr r1, [sp]
	ldr r2, _0225D504 ; =0x00009C40
	bl FUN_0200CA44
	ldr r1, [sp]
	str r0, [r1, #0x14]
	add r0, r1, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225D4FC: .word MOD11_0225FEB0
_0225D500: .word MOD11_0225D670
_0225D504: .word 0x00009C40

	thumb_func_start MOD11_0225D508
MOD11_0225D508: ; 0x0225D508
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_0225D510:
	ldr r0, [r5]
	bl FUN_0200C3DC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _0225D510
	ldr r0, [r6, #0x14]
	bl FUN_0200CAB4
	add r0, r6, #0
	bl FreeToHeap
	pop {r4, r5, r6, pc}

	thumb_func_start MOD11_0225D52C
MOD11_0225D52C: ; 0x0225D52C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r4, [sp, #0x24]
	add r6, r3, #0
	ldr r0, [r5]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	add r3, r4, #0
	bl FUN_0200C750
	ldr r2, [sp, #0x10]
	lsl r1, r6, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r5, #4]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	add r3, r4, #0
	bl FUN_0200C750
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r5, #8]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	add r3, r4, #0
	bl FUN_0200C750
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r5, #0xc]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	add r3, r4, #0
	bl FUN_0200C750
	ldr r0, [r5]
	mov r1, #0
	bl FUN_0200C5C0
	ldr r0, [r5, #4]
	mov r1, #1
	bl FUN_0200C5C0
	ldr r0, [r5, #8]
	mov r1, #2
	bl FUN_0200C5C0
	ldr r0, [r5, #0xc]
	mov r1, #3
	bl FUN_0200C5C0
	mov r4, #0
	mov r6, #1
_0225D5A2:
	ldr r0, [r5]
	add r1, r6, #0
	bl FUN_0200C644
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0225D5A2
	pop {r4, r5, r6, pc}

	thumb_func_start MOD11_0225D5B4
MOD11_0225D5B4: ; 0x0225D5B4
	push {r4, lr}
	sub sp, #0x18
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
	mov r4, #3
	lsl r4, r4, #0x12
	str r4, [sp, #0x14]
	bl MOD11_0225D52C
	add sp, #0x18
	pop {r4, pc}
	.align 2, 0

	thumb_func_start MOD11_0225D5DC
MOD11_0225D5DC: ; 0x0225D5DC
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r2, #0
	str r3, [sp]
	ldr r2, [sp, #0x20]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r4, [sp, #0xc]
	str r2, [sp, #0x10]
	add r2, r3, #0
	add r3, r4, #0
	bl MOD11_0225D5B4
	add sp, #0x14
	pop {r3, r4, pc}
	.align 2, 0

	thumb_func_start MOD11_0225D5FC
MOD11_0225D5FC: ; 0x0225D5FC
	push {r4, lr}
	sub sp, #0x18
	add r4, r2, #0
	str r3, [sp]
	ldr r2, [sp, #0x20]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r4, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r2, [sp, #0x24]
	str r2, [sp, #0x14]
	add r2, r3, #0
	add r3, r4, #0
	bl MOD11_0225D52C
	add sp, #0x18
	pop {r4, pc}
	.align 2, 0

	thumb_func_start MOD11_0225D620
MOD11_0225D620: ; 0x0225D620
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r5, #0x10]
	ldr r3, [sp, #0x10]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl FUN_0200C750
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	bl FUN_0200C5C0
	ldr r0, [r5, #0x10]
	mov r1, #1
	bl FUN_0200C644
	pop {r3, r4, r5, pc}

	thumb_func_start MOD11_0225D648
MOD11_0225D648: ; 0x0225D648
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_0225D650:
	ldr r0, [r5]
	add r1, r6, #0
	bl FUN_0200C644
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _0225D650
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start MOD11_0225D664
MOD11_0225D664: ; 0x0225D664
	ldr r3, _0225D66C ; =FUN_0200C644
	ldr r0, [r0, #0x10]
	mov r1, #0
	bx r3
	.align 2, 0
_0225D66C: .word FUN_0200C644

	thumb_func_start MOD11_0225D670
MOD11_0225D670: ; 0x0225D670
	push {r4, r5, r6, lr}
	add r6, r1, #0
	ldr r0, [r6]
	bl FUN_0200C658
	cmp r0, #0
	beq _0225D6A0
	mov r4, #0
	add r5, r6, #0
_0225D682:
	ldr r0, [r5]
	bl FUN_0200C5A8
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0225D682
	ldr r0, [r6, #0x10]
	bl FUN_0200C658
	cmp r0, #1
	bne _0225D6A0
	ldr r0, [r6, #0x10]
	bl FUN_0200C5A8
_0225D6A0:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start MOD11_0225D6A4
MOD11_0225D6A4: ; 0x0225D6A4
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0x52
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x28]
	add r4, r1, #0
	add r6, r3, #0
	str r0, [sp, #0x14]
	add r0, r2, #0
	mov r1, #3
	add r2, r5, #0
	add r3, r4, #0
	bl FUN_0200C0DC
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x52
	mov r3, #0xa
	str r6, [sp, #8]
	bl FUN_0200C00C
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x52
	mov r3, #0xc
	bl FUN_0200C124
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x30]
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x52
	mov r3, #0xd
	bl FUN_0200C13C
	add sp, #0x18
	pop {r4, r5, r6, pc}

	thumb_func_start MOD11_0225D714
MOD11_0225D714: ; 0x0225D714
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl FUN_0200C358
	add r0, r5, #0
	add r1, r4, #0
	bl FUN_0200C368
	add r0, r5, #0
	add r1, r6, #0
	bl FUN_0200C378
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	bl FUN_0200C388
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start MOD11_0225D73C
MOD11_0225D73C: ; 0x0225D73C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r5, _0225D7AC ; =MOD11_0225FEE4
	add r6, r3, #0
	add r7, r0, #0
	str r1, [sp]
	add r4, sp, #4
	mov r3, #6
_0225D74C:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r3, r3, #1
	bne _0225D74C
	ldr r0, [r5]
	mov r1, #0x20
	str r0, [r4]
	ldr r0, [sp, #0x50]
	str r6, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x60]
	str r0, [sp, #0x30]
	add r0, r2, #0
	bl AllocFromHeap
	mov r1, #0
	mov r2, #0x20
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r1, [sp]
	add r0, r7, #0
	add r2, sp, #4
	bl FUN_0200C154
	mov r1, #0
	str r0, [r4]
	bl FUN_0200C644
	mov r0, #3
	lsl r0, r0, #0x12
	str r0, [r4, #0x14]
	ldr r0, _0225D7B0 ; =MOD11_0225D828
	ldr r2, _0225D7B4 ; =0x000003E7
	add r1, r4, #0
	bl FUN_0200CA44
	str r0, [r4, #4]
	add r0, r4, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225D7AC: .word MOD11_0225FEE4
_0225D7B0: .word MOD11_0225D828
_0225D7B4: .word 0x000003E7

	thumb_func_start MOD11_0225D7B8
MOD11_0225D7B8: ; 0x0225D7B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl FUN_0200C3DC
	ldr r0, [r4, #4]
	bl FUN_0200CAB4
	add r0, r4, #0
	bl FreeToHeap
	pop {r4, pc}

	thumb_func_start MOD11_0225D7D0
MOD11_0225D7D0: ; 0x0225D7D0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl MOD11_0225D98C
	str r7, [r5, #8]
	str r4, [r5, #0xc]
	str r6, [r5, #0x14]
	lsl r1, r7, #0x10
	lsl r2, r4, #0x10
	ldr r0, [r5]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	add r3, r6, #0
	bl FUN_0200C750
	ldr r0, [r5]
	mov r1, #1
	bl FUN_0200C644
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start MOD11_0225D800
MOD11_0225D800: ; 0x0225D800
	push {r3, lr}
	mov r3, #3
	lsl r3, r3, #0x12
	bl MOD11_0225D7D0
	pop {r3, pc}

	thumb_func_start MOD11_0225D80C
MOD11_0225D80C: ; 0x0225D80C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	bl FUN_0200C644
	add r0, r4, #0
	bl MOD11_0225D98C
	pop {r4, pc}

	thumb_func_start MOD11_0225D820
MOD11_0225D820: ; 0x0225D820
	strh r1, [r0, #0x18]
	bx lr

	thumb_func_start MOD11_0225D824
MOD11_0225D824: ; 0x0225D824
	ldrb r0, [r0, #0x1b]
	bx lr

	thumb_func_start MOD11_0225D828
MOD11_0225D828: ; 0x0225D828
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldrb r0, [r4, #0x1b]
	cmp r0, #1
	bne _0225D836
	mov r0, #0
	strb r0, [r4, #0x1b]
_0225D836:
	mov r0, #0x18
	ldrsh r1, [r4, r0]
	cmp r1, #0
	ble _0225D84C
	sub r1, r1, #1
	strh r1, [r4, #0x18]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _0225D84C
	mov r0, #1
	strb r0, [r4, #0x1a]
_0225D84C:
	ldr r0, [r4]
	bl FUN_0200C658
	cmp r0, #0
	bne _0225D858
	b _0225D984
_0225D858:
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	bne _0225D8DA
	mov r1, #0xfa
	ldr r2, [r4, #0x10]
	lsl r1, r1, #2
	add r2, r2, r1
	add r0, r4, #0
	ldr r1, _0225D988 ; =0x00004650
	add r0, #0x10
	str r2, [r4, #0x10]
	cmp r2, r1
	blt _0225D886
	ldr r2, [r0]
	sub r1, r2, r1
	str r1, [r0]
	ldrb r0, [r4, #0x1a]
	cmp r0, #1
	bne _0225D886
	mov r0, #1
	strb r0, [r4, #0x1c]
	mov r0, #0
	strb r0, [r4, #0x1a]
_0225D886:
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	bne _0225D8DA
	ldr r0, [r4, #0x10]
	mov r1, #0x64
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl Sin
	mov r2, #0xe
	asr r1, r0, #0x1f
	lsl r2, r2, #0xc
	mov r3, #0
	bl _ll_mul
	add r5, r1, #0
	ldr r1, [r4, #8]
	mov r2, #2
	add r6, r0, #0
	lsl r1, r1, #0x10
	mov r7, #0
	lsl r2, r2, #0xa
	asr r1, r1, #0x10
	add r2, r6, r2
	adc r5, r7
	lsl r5, r5, #0x14
	lsr r2, r2, #0xc
	orr r2, r5
	asr r5, r2, #0xb
	lsr r5, r5, #0x14
	add r5, r2, r5
	ldr r3, [r4, #0xc]
	asr r2, r5, #0xc
	sub r2, r3, r2
	lsl r2, r2, #0x10
	ldr r0, [r4]
	ldr r3, [r4, #0x14]
	asr r2, r2, #0x10
	bl FUN_0200C750
_0225D8DA:
	ldrb r0, [r4, #0x1c]
	cmp r0, #1
	bne _0225D97E
	ldrb r0, [r4, #0x1d]
	cmp r0, #3
	bhi _0225D97E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225D8F2: ; jump table
	.short _0225D8FA - _0225D8F2 - 2 ; case 0
	.short _0225D912 - _0225D8F2 - 2 ; case 1
	.short _0225D934 - _0225D8F2 - 2 ; case 2
	.short _0225D962 - _0225D8F2 - 2 ; case 3
_0225D8FA:
	ldrb r0, [r4, #0x1e]
	add r0, r0, #1
	strb r0, [r4, #0x1e]
	ldrb r0, [r4, #0x1e]
	cmp r0, #3
	bls _0225D97E
	mov r0, #0
	strb r0, [r4, #0x1e]
	ldrb r0, [r4, #0x1d]
	add r0, r0, #1
	strb r0, [r4, #0x1d]
	b _0225D97E
_0225D912:
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #8]
	add r2, #8
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4]
	ldr r3, [r4, #0x14]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl FUN_0200C750
	mov r0, #1
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x1d]
	add r0, r0, #1
	strb r0, [r4, #0x1d]
	b _0225D97E
_0225D934:
	ldrb r0, [r4, #0x1e]
	add r0, r0, #1
	strb r0, [r4, #0x1e]
	ldrb r0, [r4, #0x1e]
	cmp r0, #2
	bls _0225D97E
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #8]
	add r2, r2, #2
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4]
	ldr r3, [r4, #0x14]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl FUN_0200C750
	mov r0, #0
	strb r0, [r4, #0x1e]
	ldrb r0, [r4, #0x1d]
	add r0, r0, #1
	strb r0, [r4, #0x1d]
	b _0225D97E
_0225D962:
	ldrb r0, [r4, #0x1e]
	add r0, r0, #1
	strb r0, [r4, #0x1e]
	ldrb r0, [r4, #0x1e]
	cmp r0, #2
	bls _0225D97E
	add r0, r4, #0
	bl MOD11_0225D80C
	mov r0, #0
	strb r0, [r4, #0x1e]
	ldrb r0, [r4, #0x1d]
	add r0, r0, #1
	strb r0, [r4, #0x1d]
_0225D97E:
	ldr r0, [r4]
	bl FUN_0200C5A8
_0225D984:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225D988: .word 0x00004650

	thumb_func_start MOD11_0225D98C
MOD11_0225D98C: ; 0x0225D98C
	mov r1, #0
	str r1, [r0, #0x10]
	strb r1, [r0, #0x1c]
	strb r1, [r0, #0x1d]
	strb r1, [r0, #0x1e]
	bx lr

	.section .rodata

	.global MOD11_0225E818
MOD11_0225E818: ; 0x0225E818
	.byte 0x06, 0x01, 0x08, 0x03, 0x07, 0x05, 0x00, 0x00

	.global MOD11_0225E820
MOD11_0225E820: ; 0x0225E820
	.byte 0x09, 0x17, 0x05, 0x13, 0x0D, 0x11, 0x0F, 0x07
	.byte 0x15, 0x0B, 0x19, 0x0B, 0x0B, 0x00, 0x00, 0x00

	.global MOD11_0225E830
MOD11_0225E830: ; 0x0225E830
	.byte 0x0A

	.global MOD11_0225E831
MOD11_0225E831: ; 0x0225E831
	.byte 0x28, 0x0A, 0x23, 0x0A, 0x1E, 0x0A, 0x19
	.byte 0x0A, 0x14, 0x0A, 0x0F, 0x0A, 0x0A, 0x0F, 0x0A, 0x14, 0x0A, 0x19, 0x0A, 0x1E, 0x0A, 0x23, 0x0A
	.byte 0x28, 0x0A

	.global MOD11_0225E84A
MOD11_0225E84A: ; 0x0225E84A
	.byte 0x00, 0x00, 0x97, 0x72, 0xFF, 0x3F, 0xF0, 0x7A, 0xDF, 0x7A, 0xD7, 0x53, 0xF5, 0x67
	.byte 0x2C, 0x7B, 0x7E, 0x2B, 0x1F, 0x43, 0xDD, 0x7B, 0x3F, 0x2A, 0x3F, 0x29, 0xCE, 0x45, 0x1F, 0x73
	.byte 0x51, 0x7F, 0x1E, 0x15

	.global MOD11_0225E86C
MOD11_0225E86C: ; 0x0225E86C
	.byte 0xFF, 0x7F, 0x00, 0x00, 0xFF, 0x7F, 0x00, 0x00, 0xFF, 0x7F, 0x00, 0x00
	.byte 0xFF, 0x7F, 0x00, 0x00, 0xFF, 0x7F, 0x00, 0x00, 0xFF, 0x7F, 0x00, 0x00, 0xFF, 0x7F, 0x00, 0x00
	.byte 0xFF, 0x7F, 0x00, 0x00, 0xFF, 0x7F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	.global MOD11_0225E89C
MOD11_0225E89C: ; 0x0225E89C
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2F, 0x4E, 0x00, 0x00, 0x2A, 0x4E, 0x00, 0x00
	.byte 0x27, 0x4E, 0x00, 0x00, 0x27, 0x4E, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00

	.global MOD11_0225E8D0
MOD11_0225E8D0: ; 0x0225E8D0
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xDE, 0xFF, 0x04, 0x00
	.byte 0xE4, 0xFF, 0xF5, 0xFF, 0x32, 0x00, 0xF4, 0xFF, 0xFF, 0x7F, 0xFF, 0x7F, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xDE, 0xFF, 0x04, 0x00, 0xE4, 0xFF, 0xF5, 0xFF, 0x32, 0x00, 0xF4, 0xFF, 0xFF, 0x7F, 0xFF, 0x7F
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xDE, 0xFF, 0x04, 0x00, 0xE4, 0xFF, 0xF5, 0xFF, 0x32, 0x00, 0xF4, 0xFF
	.byte 0xFF, 0x7F, 0xFF, 0x7F, 0xFF, 0xFF, 0xFF, 0xFF, 0xDF, 0xFF, 0xFA, 0xFF, 0xE4, 0xFF, 0xEE, 0xFF
	.byte 0x32, 0x00, 0xDC, 0xFF, 0xFF, 0x7F, 0xFF, 0x7F, 0xFF, 0xFF, 0xFF, 0xFF, 0xDF, 0xFF, 0xFE, 0xFF
	.byte 0xE4, 0xFF, 0xEE, 0xFF, 0x32, 0x00, 0xE4, 0xFF, 0xFF, 0x7F, 0xFF, 0x7F, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xDE, 0xFF, 0x04, 0x00, 0xE4, 0xFF, 0xF5, 0xFF, 0x32, 0x00, 0xF4, 0xFF, 0xFF, 0x7F, 0xFF, 0x7F
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xDE, 0xFF, 0x04, 0x00, 0xE4, 0xFF, 0xF5, 0xFF, 0x32, 0x00, 0xF4, 0xFF
	.byte 0xFF, 0x7F, 0xFF, 0x7F, 0xFF, 0xFF, 0xFF, 0xFF, 0xDE, 0xFF, 0x04, 0x00, 0xE9, 0xFF, 0xFF, 0xFF
	.byte 0x32, 0x00, 0xFE, 0xFF, 0xFF, 0x7F, 0xFF, 0x7F

	.global MOD11_0225E970
MOD11_0225E970: ; 0x0225E970
	.byte 0x40, 0x00, 0x48, 0x00, 0x40, 0x00, 0x00, 0x00
	.byte 0x40, 0x02, 0xC0, 0x00, 0x40, 0x03, 0xC0, 0x00, 0x00, 0x0A, 0xE0, 0x00, 0x00, 0x0B, 0xE0, 0x00
	.byte 0x40, 0x04, 0xC0, 0x00, 0x40, 0x05, 0xC0, 0x00, 0x00, 0x0C, 0xE0, 0x00, 0x00, 0x0D, 0xE0, 0x00

	.global MOD11_0225E998
MOD11_0225E998: ; 0x0225E998
	.byte 0x60, 0x04

	.global MOD11_0225E99A
MOD11_0225E99A: ; 0x0225E99A
	.byte 0x60, 0x00, 0x40, 0x04, 0x60, 0x00, 0x60, 0x04, 0x60, 0x00, 0x40, 0x04, 0x60, 0x00
	.byte 0x60, 0x04, 0x60, 0x00, 0x40, 0x04, 0x60, 0x00

	.global MOD11_0225E9B0
MOD11_0225E9B0: ; 0x0225E9B0
	.byte 0x00, 0x00

	.global MOD11_0225E9B2
MOD11_0225E9B2: ; 0x0225E9B2
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xC0, 0x04, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC0, 0x04, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00

	.global MOD11_0225E9C8
MOD11_0225E9C8: ; 0x0225E9C8
	.byte 0x40, 0x04

	.global MOD11_0225E9CA
MOD11_0225E9CA: ; 0x0225E9CA
	.byte 0x20, 0x00, 0x20, 0x04, 0x20, 0x00, 0x40, 0x04, 0x20, 0x00, 0x20, 0x04, 0x20, 0x00
	.byte 0x40, 0x04, 0x20, 0x00, 0x20, 0x04, 0x20, 0x00

	.global MOD11_0225E9E0
MOD11_0225E9E0: ; 0x0225E9E0
	.byte 0x00, 0x00

	.global MOD11_0225E9E2
MOD11_0225E9E2: ; 0x0225E9E2
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xC0, 0x0C, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC0, 0x0C, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00

	.global MOD11_0225E9F8
MOD11_0225E9F8: ; 0x0225E9F8
	.byte 0x80, 0x0D

	.global MOD11_0225E9FA
MOD11_0225E9FA: ; 0x0225E9FA
	.byte 0x60, 0x00, 0xA0, 0x06, 0x60, 0x00, 0x80, 0x0C, 0x60, 0x00, 0xA0, 0x06, 0x60, 0x00
	.byte 0x80, 0x0C, 0x60, 0x00, 0xA0, 0x06, 0x60, 0x00

	.global MOD11_0225EA10
MOD11_0225EA10: ; 0x0225EA10
	.byte 0x00, 0x00

	.global MOD11_0225EA12
MOD11_0225EA12: ; 0x0225EA12
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x60, 0x0C, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x0C, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00

	.global MOD11_0225EA28
MOD11_0225EA28: ; 0x0225EA28
	.byte 0x80, 0x0A

	.global MOD11_0225EA2A
MOD11_0225EA2A: ; 0x0225EA2A
	.byte 0x60, 0x00

	.global MOD11_0225EA2C
MOD11_0225EA2C: ; 0x0225EA2C
	.byte 0x80, 0x0B

	.global MOD11_0225EA2E
MOD11_0225EA2E: ; 0x0225EA2E
	.byte 0x60, 0x00, 0x60, 0x0A, 0x60, 0x00, 0x60, 0x0B, 0x60, 0x00
	.byte 0x80, 0x0A, 0x60, 0x00, 0x80, 0x0B, 0x60, 0x00, 0x60, 0x0A, 0x60, 0x00, 0x60, 0x0B, 0x60, 0x00
	.byte 0x80, 0x0A, 0x60, 0x00, 0x80, 0x0B, 0x60, 0x00, 0x60, 0x0A, 0x60, 0x00, 0x60, 0x0B, 0x60, 0x00

	.global MOD11_0225EA58
MOD11_0225EA58: ; 0x0225EA58
	.byte 0x00, 0x0D

	.global MOD11_0225EA5A
MOD11_0225EA5A: ; 0x0225EA5A
	.byte 0x60, 0x00

	.global MOD11_0225EA5C
MOD11_0225EA5C: ; 0x0225EA5C
	.byte 0x00, 0x00

	.global MOD11_0225EA5E
MOD11_0225EA5E: ; 0x0225EA5E
	.byte 0x00, 0x00, 0x20, 0x06, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x60, 0x00, 0x20, 0x06, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x0C, 0x60, 0x00, 0x20, 0x06, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00

	.global MOD11_0225EA88
MOD11_0225EA88: ; 0x0225EA88
	.byte 0xE0, 0x04

	.global MOD11_0225EA8A
MOD11_0225EA8A: ; 0x0225EA8A
	.byte 0x00, 0x00, 0x00, 0x0C, 0xC0, 0x00, 0xE0, 0x04, 0x20, 0x00, 0x00, 0x0C, 0xA0, 0x00
	.byte 0xE0, 0x04, 0x00, 0x00, 0x00, 0x0C, 0xC0, 0x00, 0xE0, 0x04, 0x20, 0x00, 0x00, 0x0C, 0xA0, 0x00
	.byte 0xE0, 0x04, 0x00, 0x00, 0x00, 0x0C, 0xC0, 0x00, 0xE0, 0x04, 0x20, 0x00, 0x00, 0x0C, 0xA0, 0x00

	.global MOD11_0225EAB8
MOD11_0225EAB8: ; 0x0225EAB8
	.byte 0x40, 0x0A

	.global MOD11_0225EABA
MOD11_0225EABA: ; 0x0225EABA
	.byte 0x40, 0x00

	.global MOD11_0225EABC
MOD11_0225EABC: ; 0x0225EABC
	.byte 0x40, 0x0B

	.global MOD11_0225EABE
MOD11_0225EABE: ; 0x0225EABE
	.byte 0x40, 0x00, 0x20, 0x0A, 0x40, 0x00, 0x20, 0x0B, 0x40, 0x00
	.byte 0x40, 0x0A, 0x40, 0x00, 0x40, 0x0B, 0x40, 0x00, 0x20, 0x0A, 0x40, 0x00, 0x20, 0x0B, 0x40, 0x00
	.byte 0x40, 0x0A, 0x40, 0x00, 0x40, 0x0B, 0x40, 0x00, 0x20, 0x0A, 0x40, 0x00, 0x20, 0x0B, 0x40, 0x00

	.global MOD11_0225EAE8
MOD11_0225EAE8: ; 0x0225EAE8
	.byte 0xC0, 0x00, 0x67, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00, 0x00, 0x26, 0x4E, 0x00, 0x00, 0x87, 0x00, 0x00, 0x00
	.byte 0x86, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	.global MOD11_0225EB1C
MOD11_0225EB1C: ; 0x0225EB1C
	.byte 0x40, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x82, 0x00, 0x00, 0x00, 0x26, 0x4E, 0x00, 0x00
	.byte 0x81, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global MOD11_0225EB50
MOD11_0225EB50: ; 0x0225EB50
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x79, 0x00, 0x00, 0x00
	.byte 0x26, 0x4E, 0x00, 0x00, 0x78, 0x00, 0x00, 0x00, 0x77, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global MOD11_0225EB84
MOD11_0225EB84: ; 0x0225EB84
	.byte 0xC6, 0x00, 0x84, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x8B, 0x00, 0x00, 0x00, 0x26, 0x4E, 0x00, 0x00, 0x8A, 0x00, 0x00, 0x00, 0x89, 0x00, 0x00, 0x00
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global MOD11_0225EBB8
MOD11_0225EBB8: ; 0x0225EBB8
	.byte 0xC0, 0x00, 0x74, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0xBD, 0x00, 0x00, 0x00, 0x28, 0x4E, 0x00, 0x00, 0xBE, 0x00, 0x00, 0x00
	.byte 0xBF, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	.global MOD11_0225EBEC
MOD11_0225EBEC: ; 0x0225EBEC
	.byte 0xC6, 0x00, 0x74, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x7F, 0x00, 0x00, 0x00, 0x26, 0x4E, 0x00, 0x00
	.byte 0x7E, 0x00, 0x00, 0x00, 0x7D, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global MOD11_0225EC20
MOD11_0225EC20: ; 0x0225EC20
	.byte 0x3A, 0x00, 0x24, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x7C, 0x00, 0x00, 0x00
	.byte 0x26, 0x4E, 0x00, 0x00, 0x7B, 0x00, 0x00, 0x00, 0x7A, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global MOD11_0225EC54
MOD11_0225EC54: ; 0x0225EC54
	.byte 0x3A, 0x00, 0x2D, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x1B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x85, 0x00, 0x00, 0x00, 0x26, 0x4E, 0x00, 0x00, 0x84, 0x00, 0x00, 0x00, 0x83, 0x00, 0x00, 0x00
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global MOD11_0225EC88
MOD11_0225EC88: ; 0x0225EC88
	.byte 0x40, 0x02

	.global MOD11_0225EC8A
MOD11_0225EC8A: ; 0x0225EC8A
	.byte 0xC0, 0x00

	.global MOD11_0225EC8C
MOD11_0225EC8C: ; 0x0225EC8C
	.byte 0x40, 0x03

	.global MOD11_0225EC8E
MOD11_0225EC8E: ; 0x0225EC8E
	.byte 0xC0, 0x00

	.global MOD11_0225EC90
MOD11_0225EC90: ; 0x0225EC90
	.byte 0x00, 0x0A

	.global MOD11_0225EC92
MOD11_0225EC92: ; 0x0225EC92
	.byte 0x40, 0x00

	.global MOD11_0225EC94
MOD11_0225EC94: ; 0x0225EC94
	.byte 0x00, 0x0B

	.global MOD11_0225EC96
MOD11_0225EC96: ; 0x0225EC96
	.byte 0x40, 0x00
	.byte 0x20, 0x02, 0xE0, 0x00, 0x20, 0x03, 0xE0, 0x00, 0x00, 0x0A, 0x20, 0x00, 0x00, 0x0B, 0x20, 0x00
	.byte 0x40, 0x02, 0xC0, 0x00, 0x40, 0x03, 0xC0, 0x00, 0x00, 0x0A, 0x40, 0x00, 0x00, 0x0B, 0x40, 0x00
	.byte 0x20, 0x02, 0xE0, 0x00, 0x20, 0x03, 0xE0, 0x00, 0x00, 0x0A, 0x20, 0x00, 0x00, 0x0B, 0x20, 0x00
	.byte 0x40, 0x02, 0xC0, 0x00, 0x40, 0x03, 0xC0, 0x00, 0x00, 0x0A, 0x40, 0x00, 0x00, 0x0B, 0x40, 0x00
	.byte 0x20, 0x02, 0xE0, 0x00, 0x20, 0x03, 0xE0, 0x00, 0x00, 0x0A, 0x20, 0x00, 0x00, 0x0B, 0x20, 0x00

	.global MOD11_0225ECE8
MOD11_0225ECE8: ; 0x0225ECE8
	.byte 0x1F, 0x44, 0x44, 0x44, 0x4F, 0x44, 0xAA, 0xA4, 0x4F, 0x32, 0x99, 0x93, 0x4F, 0x33, 0x99, 0x99
	.byte 0x4F, 0x44, 0xAA, 0xA4, 0x1F, 0x44, 0x44, 0x44, 0xFF, 0x21, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x44, 0x44, 0x44, 0xA4, 0xAA, 0x4A, 0x34, 0x93, 0x49, 0x39, 0x24, 0x93, 0x99, 0x39, 0x24
	.byte 0xA4, 0x4A, 0x44, 0x34, 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33
	.byte 0x22, 0x22, 0x22, 0x22, 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x44, 0x44, 0x44, 0x26, 0x22, 0x22, 0x22, 0x35, 0x33, 0x33, 0x33, 0x35, 0x33, 0x33, 0x33
	.byte 0x26, 0x22, 0x22, 0x22, 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x44, 0x44, 0x44, 0x66, 0x22, 0x22, 0x22, 0x55, 0x33, 0x33, 0x33, 0x55, 0x33, 0x33, 0x33
	.byte 0x66, 0x22, 0x22, 0x22, 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x44, 0x44, 0x44, 0x66, 0x26, 0x22, 0x22, 0x55, 0x35, 0x33, 0x33, 0x55, 0x35, 0x33, 0x33
	.byte 0x66, 0x26, 0x22, 0x22, 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x44, 0x44, 0x44, 0x66, 0x66, 0x22, 0x22, 0x55, 0x55, 0x33, 0x33, 0x55, 0x55, 0x33, 0x33
	.byte 0x66, 0x66, 0x22, 0x22, 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x44, 0x44, 0x44, 0x66, 0x66, 0x26, 0x22, 0x55, 0x55, 0x35, 0x33, 0x55, 0x55, 0x35, 0x33
	.byte 0x66, 0x66, 0x26, 0x22, 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x44, 0x44, 0x44, 0x66, 0x66, 0x66, 0x22, 0x55, 0x55, 0x55, 0x33, 0x55, 0x55, 0x55, 0x33
	.byte 0x66, 0x66, 0x66, 0x22, 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x44, 0x44, 0x44, 0x66, 0x66, 0x66, 0x26, 0x55, 0x55, 0x55, 0x35, 0x55, 0x55, 0x55, 0x35
	.byte 0x66, 0x66, 0x66, 0x26, 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x44, 0x44, 0x44, 0x66, 0x66, 0x66, 0x66, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55
	.byte 0x66, 0x66, 0x66, 0x66, 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33
	.byte 0x22, 0x22, 0x22, 0x22, 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x44, 0x44, 0x44, 0x28, 0x22, 0x22, 0x22, 0x37, 0x33, 0x33, 0x33, 0x37, 0x33, 0x33, 0x33
	.byte 0x28, 0x22, 0x22, 0x22, 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x44, 0x44, 0x44, 0x88, 0x22, 0x22, 0x22, 0x77, 0x33, 0x33, 0x33, 0x77, 0x33, 0x33, 0x33
	.byte 0x88, 0x22, 0x22, 0x22, 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x44, 0x44, 0x44, 0x88, 0x28, 0x22, 0x22, 0x77, 0x37, 0x33, 0x33, 0x77, 0x37, 0x33, 0x33
	.byte 0x88, 0x28, 0x22, 0x22, 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x44, 0x44, 0x44, 0x88, 0x88, 0x22, 0x22, 0x77, 0x77, 0x33, 0x33, 0x77, 0x77, 0x33, 0x33
	.byte 0x88, 0x88, 0x22, 0x22, 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x44, 0x44, 0x44, 0x88, 0x88, 0x28, 0x22, 0x77, 0x77, 0x37, 0x33, 0x77, 0x77, 0x37, 0x33
	.byte 0x88, 0x88, 0x28, 0x22, 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x44, 0x44, 0x44, 0x88, 0x88, 0x88, 0x22, 0x77, 0x77, 0x77, 0x33, 0x77, 0x77, 0x77, 0x33
	.byte 0x88, 0x88, 0x88, 0x22, 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x44, 0x44, 0x44, 0x88, 0x88, 0x88, 0x28, 0x77, 0x77, 0x77, 0x37, 0x77, 0x77, 0x77, 0x37
	.byte 0x88, 0x88, 0x88, 0x28, 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x44, 0x44, 0x44, 0x88, 0x88, 0x88, 0x88, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77, 0x77
	.byte 0x88, 0x88, 0x88, 0x88, 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33, 0x33
	.byte 0x22, 0x22, 0x22, 0x22, 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x44, 0x44, 0x44, 0x2A, 0x22, 0x22, 0x22, 0x39, 0x33, 0x33, 0x33, 0x39, 0x33, 0x33, 0x33
	.byte 0x2A, 0x22, 0x22, 0x22, 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x44, 0x44, 0x44, 0xAA, 0x22, 0x22, 0x22, 0x99, 0x33, 0x33, 0x33, 0x99, 0x33, 0x33, 0x33
	.byte 0xAA, 0x22, 0x22, 0x22, 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x44, 0x44, 0x44, 0xAA, 0x2A, 0x22, 0x22, 0x99, 0x39, 0x33, 0x33, 0x99, 0x39, 0x33, 0x33
	.byte 0xAA, 0x2A, 0x22, 0x22, 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x44, 0x44, 0x44, 0xAA, 0xAA, 0x22, 0x22, 0x99, 0x99, 0x33, 0x33, 0x99, 0x99, 0x33, 0x33
	.byte 0xAA, 0xAA, 0x22, 0x22, 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x44, 0x44, 0x44, 0xAA, 0xAA, 0x2A, 0x22, 0x99, 0x99, 0x39, 0x33, 0x99, 0x99, 0x39, 0x33
	.byte 0xAA, 0xAA, 0x2A, 0x22, 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x44, 0x44, 0x44, 0xAA, 0xAA, 0xAA, 0x22, 0x99, 0x99, 0x99, 0x33, 0x99, 0x99, 0x99, 0x33
	.byte 0xAA, 0xAA, 0xAA, 0x22, 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x44, 0x44, 0x44, 0xAA, 0xAA, 0xAA, 0x2A, 0x99, 0x99, 0x99, 0x39, 0x99, 0x99, 0x99, 0x39
	.byte 0xAA, 0xAA, 0xAA, 0x2A, 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x44, 0x44, 0x44, 0xAA, 0xAA, 0xAA, 0xAA, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99, 0x99
	.byte 0xAA, 0xAA, 0xAA, 0xAA, 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x11, 0x11, 0x11, 0x11, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x21, 0x11, 0x21, 0x11
	.byte 0x32, 0x22, 0x32, 0x22, 0x44, 0x44, 0x44, 0x44, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x11, 0x11, 0x11, 0x11, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x2B, 0x11, 0x21, 0x11
	.byte 0x3C, 0x22, 0x32, 0x22, 0x44, 0x44, 0x44, 0x44, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x11, 0x11, 0x11, 0x11, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0xCB, 0x11, 0x21, 0x11
	.byte 0xCC, 0x22, 0x32, 0x22, 0x44, 0x44, 0x44, 0x44, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x11, 0x11, 0x11, 0x11, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0xCB, 0x1B, 0x21, 0x11
	.byte 0xCC, 0x2C, 0x32, 0x22, 0x44, 0x44, 0x44, 0x44, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x11, 0x11, 0x11, 0x11, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0xCB, 0xBB, 0x21, 0x11
	.byte 0xCC, 0xCC, 0x32, 0x22, 0x44, 0x44, 0x44, 0x44, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x11, 0x11, 0x11, 0x11, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0xCB, 0xBB, 0x2B, 0x11
	.byte 0xCC, 0xCC, 0x3C, 0x22, 0x44, 0x44, 0x44, 0x44, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x11, 0x11, 0x11, 0x11, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0xCB, 0xBB, 0xCB, 0x11
	.byte 0xCC, 0xCC, 0xCC, 0x22, 0x44, 0x44, 0x44, 0x44, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x11, 0x11, 0x11, 0x11, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0xCB, 0xBB, 0xCB, 0x1B
	.byte 0xCC, 0xCC, 0xCC, 0x2C, 0x44, 0x44, 0x44, 0x44, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x11, 0x11, 0x11, 0x11, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0x44, 0xCB, 0xBB, 0xCB, 0xBB
	.byte 0xCC, 0xCC, 0xCC, 0xCC, 0x44, 0x44, 0x44, 0x44, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x1F, 0xF3, 0x1F, 0x33, 0x31, 0xF3, 0xF3, 0x33, 0x33, 0xF3, 0xFF, 0xF3, 0x33, 0xF3, 0x33, 0xF3
	.byte 0x33, 0xF3, 0x33, 0xF3, 0x31, 0x33, 0x33, 0xF3, 0x1F, 0x33, 0x33, 0xF3, 0xFF, 0x11, 0x11, 0x11
	.byte 0x33, 0x33, 0x33, 0x33, 0x33, 0xF3, 0xFF, 0x33, 0xF3, 0xF3, 0x33, 0x3F, 0x3F, 0xF3, 0xFF, 0x33
	.byte 0x33, 0xF3, 0xF3, 0x33, 0x3F, 0xF3, 0x33, 0x3F, 0xF3, 0x33, 0x33, 0x33, 0x11, 0x11, 0x11, 0x11
	.byte 0x33, 0x33, 0xF1, 0xFF, 0xF3, 0xFF, 0x13, 0xFF, 0x3F, 0x33, 0x33, 0xFF, 0xF3, 0x3F, 0x33, 0xFF
	.byte 0x33, 0xF3, 0x33, 0xFF, 0xFF, 0x3F, 0x13, 0xFF, 0x33, 0x33, 0xF1, 0xFF, 0x11, 0x11, 0xFF, 0xFF
	.byte 0x1F, 0x88, 0x88, 0x88, 0x81, 0xF8, 0xFF, 0x88, 0x88, 0xF8, 0x88, 0x8F, 0x88, 0xF8, 0xFF, 0x88
	.byte 0x88, 0xF8, 0x88, 0x88, 0x81, 0xF8, 0x88, 0x88, 0x1F, 0x88, 0x88, 0x88, 0xFF, 0x11, 0x11, 0x11
	.byte 0x88, 0x88, 0x88, 0x88, 0xF8, 0x8F, 0xF8, 0xFF, 0x8F, 0xF8, 0xF8, 0x88, 0x8F, 0xF8, 0xF8, 0xFF
	.byte 0xFF, 0xFF, 0xF8, 0xF8, 0x8F, 0xF8, 0xF8, 0x88, 0x88, 0x88, 0x88, 0x88, 0x11, 0x11, 0x11, 0x11
	.byte 0x88, 0xF1, 0xFF, 0xFF, 0x88, 0x18, 0xFF, 0xFF, 0x8F, 0x88, 0xFF, 0xFF, 0x88, 0x88, 0xFF, 0xFF
	.byte 0x88, 0x88, 0xFF, 0xFF, 0x8F, 0x18, 0xFF, 0xFF, 0x88, 0xF1, 0xFF, 0xFF, 0x11, 0xFF, 0xFF, 0xFF
	.byte 0x1F, 0xCC, 0xCC, 0xCC, 0xC1, 0xFC, 0xFF, 0xCF, 0xCC, 0xFC, 0xCC, 0xCC, 0xCC, 0xFC, 0xFF, 0xCC
	.byte 0xCC, 0xFC, 0xCC, 0xCC, 0xC1, 0xFC, 0xCC, 0xCC, 0x1F, 0xCC, 0xCC, 0xCC, 0xFF, 0x11, 0x11, 0x11
	.byte 0xCC, 0xCC, 0xCC, 0xCC, 0xFF, 0xCF, 0xFC, 0xFF, 0xCF, 0xFC, 0xCC, 0xFC, 0xFF, 0xCF, 0xCC, 0xCF
	.byte 0xCF, 0xCF, 0xFC, 0xCC, 0xCF, 0xFC, 0xFC, 0xFF, 0xCC, 0xCC, 0xCC, 0xCC, 0x11, 0x11, 0x11, 0x11
	.byte 0xCC, 0xF1, 0xFF, 0xFF, 0xCF, 0x1C, 0xFF, 0xFF, 0xCC, 0xCC, 0xFF, 0xFF, 0xCC, 0xCC, 0xFF, 0xFF
	.byte 0xCC, 0xCC, 0xFF, 0xFF, 0xCF, 0x1C, 0xFF, 0xFF, 0xCC, 0xF1, 0xFF, 0xFF, 0x11, 0xFF, 0xFF, 0xFF
	.byte 0x1F, 0x33, 0x33, 0x33, 0x31, 0x33, 0xFF, 0x3F, 0x33, 0xF3, 0x33, 0x33, 0x33, 0x33, 0xFF, 0x33
	.byte 0x33, 0x33, 0x33, 0x3F, 0x31, 0xF3, 0xFF, 0x33, 0x1F, 0x33, 0x33, 0x33, 0xFF, 0x11, 0x11, 0x11
	.byte 0x33, 0x33, 0x33, 0x33, 0x3F, 0x33, 0xF3, 0xFF, 0x3F, 0x33, 0xF3, 0x33, 0x3F, 0x33, 0xF3, 0xFF
	.byte 0x3F, 0x33, 0xF3, 0x33, 0xFF, 0xFF, 0xF3, 0x33, 0x33, 0x33, 0x33, 0x33, 0x11, 0x11, 0x11, 0x11
	.byte 0x33, 0xF1, 0xFF, 0xFF, 0x33, 0x13, 0xFF, 0xFF, 0x3F, 0x33, 0xFF, 0xFF, 0x33, 0x33, 0xFF, 0xFF
	.byte 0x33, 0x33, 0xFF, 0xFF, 0x33, 0x13, 0xFF, 0xFF, 0x33, 0xF1, 0xFF, 0xFF, 0x11, 0xFF, 0xFF, 0xFF
	.byte 0x1F, 0xDD, 0xDD, 0xDD, 0xD1, 0xFD, 0xFF, 0xDD, 0xDD, 0xFD, 0xDD, 0xDF, 0xDD, 0xFD, 0xFF, 0xDD
	.byte 0xDD, 0xFD, 0xDD, 0xDD, 0xD1, 0xFD, 0xDD, 0xDD, 0x1F, 0xDD, 0xDD, 0xDD, 0xFF, 0x11, 0x11, 0x11
	.byte 0xDD, 0xDD, 0xDD, 0xDD, 0xFD, 0xFF, 0xFD, 0xDD, 0xDF, 0xDD, 0xFD, 0xDF, 0xFD, 0xDF, 0xFD, 0xF1
	.byte 0xDD, 0xFD, 0xFD, 0xFD, 0xFF, 0xDF, 0xFD, 0xDD, 0xDD, 0xDD, 0xDD, 0xDD, 0x11, 0x11, 0x11, 0x11
	.byte 0xDD, 0xF1, 0xFF, 0xFF, 0xDF, 0x1D, 0xFF, 0xFF, 0xDF, 0xDD, 0xFF, 0xFF, 0xDF, 0xDD, 0xFF, 0xFF
	.byte 0xDF, 0xDD, 0xFF, 0xFF, 0xDF, 0x1D, 0xFF, 0xFF, 0xDD, 0xF1, 0xFF, 0xFF, 0x11, 0xFF, 0xFF, 0xFF
	.byte 0x1F, 0xAA, 0xAA, 0xAA, 0xA1, 0xFA, 0xFF, 0xAA, 0xAA, 0xFA, 0xAA, 0xAF, 0xAA, 0xFA, 0xFF, 0xAA
	.byte 0xAA, 0xFA, 0xAA, 0xAF, 0xA1, 0xFA, 0xFF, 0xAA, 0x1F, 0xAA, 0xAA, 0xAA, 0xFF, 0x11, 0x11, 0x11
	.byte 0xAA, 0xAA, 0xAA, 0xAA, 0xFF, 0xAF, 0xFA, 0xAA, 0xAF, 0xFA, 0xFA, 0xAF, 0xFF, 0xAF, 0xFA, 0xF1
	.byte 0xAF, 0xAF, 0xFA, 0xFA, 0xAF, 0xFA, 0xFA, 0xAA, 0xAA, 0xAA, 0xAA, 0xAA, 0x11, 0x11, 0x11, 0x11
	.byte 0xAA, 0xF1, 0xFF, 0xFF, 0xAF, 0x1A, 0xFF, 0xFF, 0xAF, 0xAA, 0xFF, 0xFF, 0xAF, 0xAA, 0xFF, 0xFF
	.byte 0xAF, 0xAA, 0xFF, 0xFF, 0xAF, 0x1A, 0xFF, 0xFF, 0xAA, 0xF1, 0xFF, 0xFF, 0x11, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0x33, 0xF4, 0xFF, 0x3F, 0x9F, 0x4A, 0xFF, 0x93, 0x99, 0xAA, 0xF4, 0x33, 0x33, 0x44, 0xF4
	.byte 0xF3, 0x2F, 0x22, 0xF4, 0x4F, 0x22, 0x42, 0xFF, 0xFF, 0x44, 0xF4, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xAF, 0xAA, 0xF1, 0xFF, 0x1A, 0x11, 0x1A, 0xEF, 0x1A, 0xFF, 0x1A, 0xEF, 0xAF, 0xAA, 0xF1, 0xEF
	.byte 0xFF, 0x1A, 0xFF, 0xEF, 0xAA, 0xAA, 0x1A, 0xEF, 0x11, 0x1A, 0x11, 0xEF, 0xFF, 0x1A, 0xFF, 0x2F
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x2E, 0xFF, 0xFF, 0xFF, 0x2E, 0xFF, 0xFF, 0xFF, 0x2E, 0xEF, 0x2E, 0x2E
	.byte 0x2E, 0xEF, 0x2E, 0x2E, 0x2E, 0xEF, 0x2E, 0x2E, 0xEE, 0x2E, 0xEE, 0x22, 0x22, 0x22, 0x22, 0xF2
	.byte 0xFF, 0x1C, 0xFF, 0xFF, 0xCF, 0xCC, 0xF1, 0xEF, 0x1C, 0x1C, 0x1C, 0xEF, 0xF1, 0x1C, 0xF1, 0xEF
	.byte 0xCF, 0xCC, 0xF1, 0xEF, 0x1C, 0x11, 0x1C, 0xEF, 0x1C, 0xFF, 0x1C, 0xEF, 0xCF, 0xCC, 0xF1, 0x2F
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x2E, 0xFF, 0xFF, 0xFF, 0x2E, 0xFF, 0xFF, 0xFF, 0x2E, 0xEF, 0x2E, 0x2E
	.byte 0x2E, 0xEF, 0x2E, 0x2E, 0x2E, 0xEF, 0x2E, 0x2E, 0xEE, 0x2E, 0xEE, 0x22, 0x22, 0x22, 0x22, 0xF2
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xEF, 0xFF, 0xFF, 0xFF, 0xEF, 0xFF, 0xFF, 0xFF, 0xEF
	.byte 0xFF, 0xFF, 0xFF, 0xEF, 0xFF, 0xFF, 0xFF, 0xEF, 0xFF, 0xFF, 0xFF, 0xEF, 0xFF, 0xFF, 0xFF, 0x2F
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x2E, 0xFF, 0xFF, 0xFF, 0x2E, 0xFF, 0xFF, 0xFF, 0x2E, 0xEF, 0x2E, 0x2E
	.byte 0x2E, 0xEF, 0x2E, 0x2E, 0x2E, 0xEF, 0x2E, 0x2E, 0xEE, 0x2E, 0xEE, 0x22, 0x22, 0x22, 0x22, 0xF2
	.byte 0x1F, 0x44, 0x44, 0x44, 0x4F, 0x44, 0xAA, 0xA4, 0x4F, 0x32, 0x99, 0x93, 0x4F, 0x33, 0x99, 0x99
	.byte 0x4F, 0x44, 0xAA, 0xA4, 0x1F, 0x44, 0x44, 0x44, 0xFF, 0x21, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x44, 0x44, 0x44, 0xA4, 0xAA, 0x4A, 0x34, 0x93, 0x49, 0x39, 0x24, 0x93, 0x99, 0x39, 0x24
	.byte 0xA4, 0x4A, 0x44, 0x34, 0x44, 0x44, 0x44, 0x44, 0x22, 0x22, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x44, 0x14, 0xFF, 0xFF, 0x43, 0x44, 0xFF, 0xFF, 0x42, 0x42, 0xF2, 0xFF, 0x42, 0x43, 0xF2, 0xFF
	.byte 0x43, 0x44, 0xF2, 0xFF, 0x44, 0x24, 0xF2, 0xFF, 0x22, 0x22, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x24, 0xFF, 0xFF, 0x4F, 0xF2, 0xFF, 0xFF, 0x24, 0xFF
	.byte 0xFF, 0x4F, 0xF2, 0xFF, 0xFF, 0x24, 0xFF, 0xFF, 0x4F, 0xF2, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF

	.global MOD11_0225F5A8
MOD11_0225F5A8: ; 0x0225F5A8
	.byte 0x60, 0x00, 0x6A, 0x00, 0x5A, 0x00, 0x70, 0x00, 0x64, 0x00, 0x6E, 0x00, 0x66, 0x00, 0x5E, 0x00
	.byte 0x62, 0x00, 0x68, 0x00, 0x6C, 0x00, 0x00, 0x00

	.global MOD11_0225F5C0
MOD11_0225F5C0: ; 0x0225F5C0
	.byte 0x5F, 0x00, 0x69, 0x00, 0x57, 0x00, 0x6F, 0x00
	.byte 0x63, 0x00, 0x6D, 0x00, 0x65, 0x00, 0x5D, 0x00, 0x61, 0x00, 0x67, 0x00, 0x6B, 0x00, 0x00, 0x00

	.global MOD11_0225F5D8
MOD11_0225F5D8: ; 0x0225F5D8
	.byte 0x07, 0x00, 0x08, 0x00, 0x09, 0x00, 0x16, 0x00, 0x17, 0x00, 0x18, 0x00, 0x01, 0x00, 0x02, 0x00
	.byte 0x03, 0x00, 0x1F, 0x00, 0x20, 0x00, 0x21, 0x00, 0x0D, 0x00, 0x0E, 0x00, 0x0F, 0x00, 0x1C, 0x00
	.byte 0x1D, 0x00, 0x1E, 0x00, 0x10, 0x00, 0x11, 0x00, 0x12, 0x00, 0x04, 0x00, 0x05, 0x00, 0x06, 0x00
	.byte 0x0A, 0x00, 0x0B, 0x00, 0x0C, 0x00, 0x13, 0x00, 0x14, 0x00, 0x15, 0x00, 0x19, 0x00, 0x1A, 0x00
	.byte 0x1B, 0x00, 0x00, 0x00

	.global MOD11_0225F61C
MOD11_0225F61C: ; 0x0225F61C
	.byte 0x50, 0x01, 0x88, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE8, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2D, 0x4E, 0x00, 0x00, 0x29, 0x4E, 0x00, 0x00
	.byte 0x25, 0x4E, 0x00, 0x00, 0x25, 0x4E, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB0, 0xFF, 0x58, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xE8, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x2E, 0x4E, 0x00, 0x00
	.byte 0x29, 0x4E, 0x00, 0x00, 0x26, 0x4E, 0x00, 0x00, 0x26, 0x4E, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global MOD11_0225F684
MOD11_0225F684: ; 0x0225F684
	.byte 0x00, 0x01, 0x00, 0x00

	.global MOD11_0225F688
MOD11_0225F688: ; 0x0225F688
	.byte 0x00, 0x01, 0x06, 0x0C, 0x0D, 0x05, 0x00, 0x00

	.global MOD11_0225F690
MOD11_0225F690: ; 0x0225F690
	.byte 0x03, 0x01, 0x00, 0x02, 0x04, 0x04, 0x00, 0x00

	.global MOD11_0225F698
MOD11_0225F698: ; 0x0225F698
	.byte 0x00, 0x00, 0x00, 0x01, 0x03, 0x02, 0x00, 0x00

	.global MOD11_0225F6A0
MOD11_0225F6A0: ; 0x0225F6A0
	.byte 0x01, 0x02, 0x03, 0x04, 0x00, 0x00, 0x00, 0x00

	.global MOD11_0225F6A8
MOD11_0225F6A8: ; 0x0225F6A8
	.byte 0x2F, 0x02, 0x2C, 0x02, 0x29, 0x02, 0x26, 0x02

	.global MOD11_0225F6B0
MOD11_0225F6B0: ; 0x0225F6B0
	.byte 0x01, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00

	.global MOD11_0225F6B8
MOD11_0225F6B8: ; 0x0225F6B8
	.word MOD11_0225C7F0, MOD11_0225C848

	.global MOD11_0225F6C0
MOD11_0225F6C0: ; 0x0225F6C0
	.byte 0x38, 0x02, 0x35, 0x02, 0x32, 0x02, 0x3B, 0x02

	.global MOD11_0225F6C8
MOD11_0225F6C8: ; 0x0225F6C8
	.byte 0x0D, 0x14, 0x00, 0x1F

	.global MOD11_0225F6CC
MOD11_0225F6CC: ; 0x0225F6CC
	.byte 0x04, 0x0B, 0x00, 0x1F

	.global MOD11_0225F6D0
MOD11_0225F6D0: ; 0x0225F6D0
	.byte 0x18, 0x90, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00

	.global MOD11_0225F6D8
MOD11_0225F6D8: ; 0x0225F6D8
	.byte 0x28, 0x60, 0x08, 0xF8, 0x70, 0xA8, 0x08, 0xF8, 0xFF, 0x00, 0x00, 0x00

	.global MOD11_0225F6E4
MOD11_0225F6E4: ; 0x0225F6E4
	.byte 0x28, 0x80, 0x18, 0xE8
	.byte 0x98, 0xC0, 0x58, 0xA8, 0xFF, 0x00, 0x00, 0x00

	.global MOD11_0225F6F0
MOD11_0225F6F0: ; 0x0225F6F0
	.byte 0x00, 0x00, 0x05, 0x00, 0x0A, 0x00

	.global MOD11_0225F6F6
MOD11_0225F6F6: ; 0x0225F6F6
	.byte 0x00, 0x00
	.byte 0xC0, 0x00, 0x80, 0x01

	.global MOD11_0225F6FC
MOD11_0225F6FC: ; 0x0225F6FC
	.byte 0x25, 0x00, 0x1F, 0x00, 0x23, 0x00, 0x20, 0x00, 0x21, 0x00, 0x24, 0x00
	.byte 0x22, 0x00, 0x00, 0x00

	.global MOD11_0225F70C
MOD11_0225F70C: ; 0x0225F70C
	.byte 0x04, 0x0F, 0x02, 0x1D, 0x11, 0x17, 0x00, 0x09, 0x11, 0x17, 0x16, 0x1F
	.byte 0x12, 0x17, 0x0B, 0x14

	.global MOD11_0225F71C
MOD11_0225F71C: ; 0x0225F71C
	.byte 0x0B, 0x11, 0x00, 0x0E, 0x01, 0x09, 0x11, 0x1F, 0x0B, 0x11, 0x11, 0x1F
	.byte 0x01, 0x09, 0x00, 0x0E

	.global MOD11_0225F72C
MOD11_0225F72C: ; 0x0225F72C
	.byte 0x20, 0x00, 0x3E, 0x00, 0xA0, 0x00, 0x3E, 0x00, 0x20, 0x00, 0x7E, 0x00
	.byte 0xA0, 0x00, 0x7E, 0x00

	.global MOD11_0225F73C
MOD11_0225F73C: ; 0x0225F73C
	.byte 0x4C, 0x00, 0x3E, 0x00, 0xCC, 0x00, 0x3E, 0x00, 0x4C, 0x00, 0x7E, 0x00
	.byte 0xCC, 0x00, 0x7E, 0x00

	.global MOD11_0225F74C
MOD11_0225F74C: ; 0x0225F74C
	.byte 0x03, 0x09, 0x00, 0x0F, 0x03, 0x09, 0x10, 0x1F, 0x0B, 0x11, 0x00, 0x0F
	.byte 0x0B, 0x11, 0x10, 0x1F

	.global MOD11_0225F75C
MOD11_0225F75C: ; 0x0225F75C
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00

	.global MOD11_0225F76C
MOD11_0225F76C: ; 0x0225F76C
	.byte 0x3C, 0x00, 0x74, 0x00, 0xC4, 0x00, 0x38, 0x00, 0xC4, 0x00, 0x74, 0x00
	.byte 0x3C, 0x00, 0x38, 0x00

	.global MOD11_0225F77C
MOD11_0225F77C: ; 0x0225F77C
	.byte 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	.global MOD11_0225F78C
MOD11_0225F78C: ; 0x0225F78C
	.byte 0x3B, 0x00, 0x3E, 0x00, 0xBB, 0x00, 0x3E, 0x00, 0x3B, 0x00, 0x7E, 0x00
	.byte 0xBB, 0x00, 0x7E, 0x00

	.global MOD11_0225F79C
MOD11_0225F79C: ; 0x0225F79C
	.byte 0x80, 0x00, 0x4C, 0x00, 0x28, 0x00, 0xA4, 0x00, 0xD8, 0x00, 0xA4, 0x00
	.byte 0x80, 0x00, 0xA8, 0x00

	.global MOD11_0225F7AC
MOD11_0225F7AC: ; 0x0225F7AC
	.byte 0x02, 0x09, 0x00, 0x0F, 0x02, 0x09, 0x10, 0x1F, 0x0A, 0x11, 0x00, 0x0F
	.byte 0x0A, 0x11, 0x10, 0x1F

	.global MOD11_0225F7BC
MOD11_0225F7BC: ; 0x0225F7BC
	.byte 0x12, 0x17, 0x01, 0x1E

	.global MOD11_0225F7C0
MOD11_0225F7C0: ; 0x0225F7C0
	.byte 0x01, 0x00, 0x00, 0x00

	.global MOD11_0225F7C4
MOD11_0225F7C4: ; 0x0225F7C4
	.byte 0x02, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00

	.global MOD11_0225F7D4
MOD11_0225F7D4: ; 0x0225F7D4
	.byte 0x3C, 0x00, 0x74, 0x00
	.byte 0xC4, 0x00, 0x20, 0x00, 0xC4, 0x00, 0x74, 0x00, 0x3C, 0x00, 0x20, 0x00, 0x80, 0x00, 0xB2, 0x00

	.global MOD11_0225F7E8
MOD11_0225F7E8: ; 0x0225F7E8
	.byte 0x18, 0x90, 0x00, 0xFF, 0x90, 0xC0, 0x00, 0x50, 0x90, 0xC0, 0xB0, 0xFF, 0x98, 0xC0, 0x58, 0xA8
	.byte 0xFF, 0x00, 0x00, 0x00

	.global MOD11_0225F7FC
MOD11_0225F7FC: ; 0x0225F7FC
	.byte 0x0A, 0x11, 0x00, 0x0E, 0x00, 0x09, 0x11, 0x1F, 0x0A, 0x11, 0x11, 0x1F
	.byte 0x00, 0x09, 0x00, 0x0E

	.global MOD11_0225F80C
MOD11_0225F80C: ; 0x0225F80C
	.byte 0x12, 0x17, 0x01, 0x1E

	.global MOD11_0225F810
MOD11_0225F810: ; 0x0225F810
	.byte 0xFF, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00

	.global MOD11_0225F824
MOD11_0225F824: ; 0x0225F824
	.byte 0x58, 0x90, 0x00, 0x78
	.byte 0x08, 0x50, 0x88, 0xFF, 0x58, 0x90, 0x88, 0xFF, 0x08, 0x50, 0x00, 0x78, 0x98, 0xC0, 0x08, 0xF8
	.byte 0xFF, 0x00, 0x00, 0x00

	.global MOD11_0225F83C
MOD11_0225F83C: ; 0x0225F83C
	.byte 0x98, 0xC0, 0x08, 0xF8, 0x18, 0x50, 0x00, 0x80, 0x18, 0x50, 0x80, 0xFF
	.byte 0x58, 0x90, 0x00, 0x80, 0x58, 0x90, 0x80, 0xFF, 0xFF, 0x00, 0x00, 0x00

	.global MOD11_0225F854
MOD11_0225F854: ; 0x0225F854
	.byte 0x00, 0x00, 0xC0, 0x00
	.byte 0x80, 0x01, 0x00, 0x00, 0xC0, 0x00, 0x80, 0x01, 0x00, 0x00, 0xC0, 0x00, 0x80, 0x01, 0x00, 0x00
	.byte 0xC0, 0x00, 0x80, 0x01

	.global MOD11_0225F86C
MOD11_0225F86C: ; 0x0225F86C
	.byte 0x00, 0x00, 0xC0, 0x00, 0x80, 0x01, 0x00, 0x00, 0xC0, 0x00, 0x80, 0x01
	.byte 0x00, 0x00, 0xC0, 0x00, 0x80, 0x01, 0x00, 0x00, 0xC0, 0x00, 0x80, 0x01

	.global MOD11_0225F884
MOD11_0225F884: ; 0x0225F884
	.byte 0x00, 0x00, 0xC0, 0x00
	.byte 0x80, 0x01, 0x00, 0x00

	.global MOD11_0225F88C
MOD11_0225F88C: ; 0x0225F88C
	.byte 0x00, 0x00, 0xC0, 0x00, 0x80, 0x01, 0x00, 0x00, 0xC0, 0x00, 0x80, 0x01
	.byte 0x00, 0x00, 0xC0, 0x00, 0x80, 0x01, 0x00, 0x00, 0xC0, 0x00, 0x80, 0x01

	.global MOD11_0225F8A4
MOD11_0225F8A4: ; 0x0225F8A4
	.byte 0x00, 0x00, 0xC0, 0x00
	.byte 0x80, 0x01, 0x00, 0x00

	.global MOD11_0225F8AC
MOD11_0225F8AC: ; 0x0225F8AC
	.byte 0x0C, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x33, 0x4E, 0x00, 0x00, 0x33, 0x4E, 0x00, 0x00
	.byte 0x2B, 0x4E, 0x00, 0x00, 0x2B, 0x4E, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global MOD11_0225F8E0
MOD11_0225F8E0: ; 0x0225F8E0
	.byte 0xF6, 0x00, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x34, 0x4E, 0x00, 0x00
	.byte 0x33, 0x4E, 0x00, 0x00, 0x2C, 0x4E, 0x00, 0x00, 0x2C, 0x4E, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global MOD11_0225F914
MOD11_0225F914: ; 0x0225F914
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x35, 0x4E, 0x00, 0x00, 0x30, 0x4E, 0x00, 0x00, 0x2D, 0x4E, 0x00, 0x00, 0x2D, 0x4E, 0x00, 0x00
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global MOD11_0225F948
MOD11_0225F948: ; 0x0225F948
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x41, 0x4E, 0x00, 0x00, 0x32, 0x4E, 0x00, 0x00, 0x31, 0x4E, 0x00, 0x00
	.byte 0x31, 0x4E, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	.global MOD11_0225F97C
MOD11_0225F97C: ; 0x0225F97C
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0E, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	.global MOD11_0225F9EC
MOD11_0225F9EC: ; 0x0225F9EC
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00

	.global MOD11_0225FAAC
MOD11_0225FAAC: ; 0x0225FAAC
	.byte 0x11, 0x00, 0xC3, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0xFF
	.byte 0x02, 0x00, 0x01, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	.short 0x0011, 0x00C3, 0x0001, 0x0002, 0x0000, 0xFFFF, 0x0002, 0x0003, 0x0003, 0x0000
	.word MOD11_0225F7E8, MOD11_0225F75C, MOD11_0225FE10, MOD11_0225B928, MOD11_0225BB04, MOD11_02259270, MOD11_02259E64

	.short 0x0011, 0x00C3, 0x0001, 0x0002, 0x0000, 0xFFFF, 0x0002, 0x0003, 0x0003, 0x0000
	.word MOD11_0225F7E8, MOD11_0225F75C, MOD11_0225FE10, MOD11_0225B928, MOD11_0225BB04, MOD11_02259270, MOD11_02259E64

	.short 0x0011, 0x00C3, 0x0001, 0x0002, 0x0000, 0xFFFF, 0x0002, 0x0003, 0x0003, 0x0000
	.word MOD11_0225F7E8, MOD11_0225F75C, MOD11_0225FE10, MOD11_0225B928, MOD11_0225BB04, MOD11_02259284, MOD11_02259E64

	.short 0x0011, 0x00C3, 0x0001, 0x0002, 0x0000, 0xFFFF, 0x0002, 0x0003, 0x0003, 0x0000
	.word MOD11_0225F7E8, MOD11_0225F75C, MOD11_0225FE10, MOD11_0225B928, MOD11_0225BB04, MOD11_02259284, MOD11_02259E64

	.short 0x0011, 0x00C3, 0x0001, 0x0002, 0x0000, 0xFFFF, 0x0002, 0x0003, 0x0003, 0x0000
	.word MOD11_0225F6D0, MOD11_0225F75C, MOD11_0225FE10, MOD11_0225B928, MOD11_0225BB04, MOD11_022594C8, MOD11_02259E64

	.short 0x0011, 0x00C3, 0x0001, 0x0002, 0x0000, 0xFFFF, 0x0002, 0x0003, 0x0003, 0x0000
	.word MOD11_0225F6D0, MOD11_0225F75C, MOD11_0225FE10, MOD11_0225B928, MOD11_0225BB04, MOD11_022594DC, MOD11_02259E64

	.short 0x0011, 0x00C3, 0x0001, 0xFFFF, 0x0000, 0xFFFF, 0x0002, 0x0001, 0x0003, 0x0000
	.word MOD11_0225F7E8, MOD11_0225F75C, MOD11_0225FE10, MOD11_0225B928, MOD11_0225BB04, MOD11_02259270, MOD11_02259E64

	.short 0x0011, 0x00C3, 0x0001, 0xFFFF, 0x0000, 0xFFFF, 0x0002, 0x0001, 0x0003, 0x0000
	.word MOD11_0225F7E8, MOD11_0225F75C, MOD11_0225FE10, MOD11_0225B928, MOD11_0225BB04, MOD11_02259284, MOD11_02259E64

	.short 0x0011, 0x00C3, 0x0001, 0xFFFF, 0x0000, 0xFFFF, 0x0002, 0x0003, 0x0003, 0x0000
	.word MOD11_0225F6E4, MOD11_0225F77C, MOD11_0225FE14, MOD11_0225BB68, 0x00000000, MOD11_02259540, MOD11_02259E64

	.short 0x0011, 0x00C3, 0x0001, 0xFFFF, 0x0000, 0xFFFF, 0x0002, 0x0003, 0x0003, 0x0000
	.word MOD11_0225F6E4, MOD11_0225F77C, MOD11_0225FE14, MOD11_0225BB68, 0x00000000, MOD11_02259554, MOD11_02259E64

	.short 0x0011, 0x00C3, 0x0003, 0xFFFF, 0x0000, 0xFFFF, 0x0002, 0x0001, 0x0003, 0x0000
	.word MOD11_0225F83C, MOD11_0225F810, MOD11_0225FE18, MOD11_0225BC60, MOD11_0225BDE0, MOD11_022595C8, MOD11_02259F3C

	.short 0x0011, 0x00C3, 0x0004, 0x0005, 0x0000, 0xFFFF, 0x0002, 0x0001, 0x0003, 0x0000
	.word MOD11_0225F824, MOD11_0225F7C0, MOD11_0225FE20, MOD11_0225BE30, MOD11_0225C420, MOD11_02259C74, MOD11_0225A060

	.short 0x0011, 0x00C3, 0x0006, 0xFFFF, 0x0000, 0xFFFF, 0x0002, 0x0001, 0x0003, 0x0000
	.word MOD11_0225F6D8, MOD11_0225F6B0, MOD11_0225FE0C, MOD11_0225C47C, 0x00000000, MOD11_02259898, MOD11_02259FE4

	.short 0x0011, 0x00C3, 0x0006, 0xFFFF, 0x0000, 0xFFFF, 0x0002, 0x0001, 0x0003, 0x0000
	.word MOD11_0225F6D8, MOD11_0225F6B0, MOD11_0225FE0C, MOD11_0225C47C, 0x00000000, MOD11_02259930, MOD11_02259FE4

	.short 0x0011, 0x00C3, 0x0006, 0xFFFF, 0x0000, 0xFFFF, 0x0002, 0x0001, 0x0003, 0x0000
	.word MOD11_0225F6D8, MOD11_0225F6B0, MOD11_0225FE0C, MOD11_0225C47C, 0x00000000, MOD11_022599CC, MOD11_02259FE4

	.short 0x0011, 0x00C3, 0x0006, 0xFFFF, 0x0000, 0xFFFF, 0x0002, 0x0001, 0x0003, 0x0000
	.word MOD11_0225F6D8, MOD11_0225F6B0, MOD11_0225FE0C, MOD11_0225C47C, 0x00000000, MOD11_02259AB0, MOD11_02259FE4

	.short 0x0011, 0x00C3, 0x0006, 0xFFFF, 0x0000, 0xFFFF, 0x0002, 0x0001, 0x0003, 0x0000
	.word MOD11_0225F6D8, MOD11_0225F6B0, MOD11_0225FE0C, MOD11_0225C47C, 0x00000000, MOD11_02259B94, MOD11_02259FE4

	.global MOD11_0225FE0C
MOD11_0225FE0C: ; 0x0225FE0C
	.byte 0x01, 0x04, 0x00, 0x00

	.global MOD11_0225FE10
MOD11_0225FE10: ; 0x0225FE10
	.byte 0x01, 0x02, 0x03, 0x04

	.global MOD11_0225FE14
MOD11_0225FE14: ; 0x0225FE14
	.byte 0x01, 0x04, 0x00, 0x00

	.global MOD11_0225FE18
MOD11_0225FE18: ; 0x0225FE18
	.byte 0x04, 0x08, 0x09, 0x0A, 0x0B, 0x00, 0x00, 0x00

	.global MOD11_0225FE20
MOD11_0225FE20: ; 0x0225FE20
	.byte 0x06, 0x0C, 0x0D, 0x05, 0x04, 0x00, 0x00, 0x00

	.global MOD11_0225FE28
MOD11_0225FE28: ; 0x0225FE28
	.byte 0x0E, 0x00, 0x32, 0x00, 0x32, 0x00, 0x00, 0x00

	.global MOD11_0225FE30
MOD11_0225FE30: ; 0x0225FE30
	.byte 0x14, 0x00, 0x38, 0x00, 0x38, 0x00, 0x00, 0x00

	.global MOD11_0225FE38
MOD11_0225FE38: ; 0x0225FE38
	.byte 0x5C, 0x00, 0x80, 0x00, 0x80, 0x00, 0x00, 0x00

	.global MOD11_0225FE40
MOD11_0225FE40: ; 0x0225FE40
	.byte 0x56, 0x00, 0x7A, 0x00, 0x7A, 0x00, 0x00, 0x00

	.global MOD11_0225FE48
MOD11_0225FE48: ; 0x0225FE48
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0xB9, 0x4F, 0x00, 0x00, 0x41, 0x4E, 0x00, 0x00, 0xB3, 0x4F, 0x00, 0x00
	.byte 0xA8, 0x4F, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	.global MOD11_0225FE7C
MOD11_0225FE7C: ; 0x0225FE7C
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xB9, 0x4F, 0x00, 0x00, 0x41, 0x4E, 0x00, 0x00
	.byte 0xB3, 0x4F, 0x00, 0x00, 0xA8, 0x4F, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global MOD11_0225FEB0
MOD11_0225FEB0: ; 0x0225FEB0
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global MOD11_0225FEE4
MOD11_0225FEE4: ; 0x0225FEE4
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
