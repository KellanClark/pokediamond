	.include "asm/macros.inc"
	.include "global.inc"

	.extern UNK_020F34FC
	.extern UNK_020F3538
	.extern gSystem
	.extern FUN_0203BB90
	.extern FUN_0203BC04

	.text 

	thumb_func_start ScrCmd_Unk0132
ScrCmd_Unk0132: ; 0x0203D248
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_Poketch_Get
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl GetVarPointer
	add r5, r0, #0x0
	add r0, r4, #0x0
	bl Save_Poketch_IsGiven
	strh r0, [r5, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0133
ScrCmd_Unk0133: ; 0x0203D278
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r1, r5, #0x0
	add r1, #0x80
	ldr r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl VarGet
	add r5, r0, #0x0
	ldr r0, [r4, #0xc]
	bl Save_Poketch_Get
	add r1, r5, #0x0
	bl Save_Poketch_UnlockApp
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0134
ScrCmd_Unk0134: ; 0x0203D2A4
	push {r4-r6, lr}
	add r4, r0, #0x0
	add r1, r4, #0x0
	add r1, #0x80
	ldr r5, [r1, #0x0]
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r6, r0, #0x0
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0x0
	ldr r0, [r4, #0x0]
	bl GetVarPointer
	add r4, r0, #0x0
	ldr r0, [r5, #0xc]
	bl Save_Poketch_Get
	add r1, r6, #0x0
	bl Save_Poketch_AppIsUnlocked
	strh r0, [r4, #0x0]
	mov r0, #0x0
	pop {r4-r6, pc}

	thumb_func_start ScrCmd_Unk0135
ScrCmd_Unk0135: ; 0x0203D2E4
	push {r4, lr}
	add r4, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	str r0, [r4, #0x64]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl FUN_02031588
	ldr r1, _0203D310 ; =FUN_0203D314
	add r0, r4, #0x0
	bl SetupNativeScript
	mov r0, #0x1
	pop {r4, pc}
	nop
_0203D310: .word FUN_0203D314 

	thumb_func_start FUN_0203D314
FUN_0203D314: ; 0x0203D314
	push {r4, lr}
	add r4, r0, #0x0
	bl FUN_02030F20
	cmp r0, #0x2
	bge _0203D324
	mov r0, #0x1
	pop {r4, pc}
_0203D324:
	ldr r0, [r4, #0x64]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl FUN_020315D8
	pop {r4, pc}

	thumb_func_start ScrCmd_Unk0136
ScrCmd_Unk0136: ; 0x0203D330
	push {r3, lr}
	bl FUN_0203168C
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0137
ScrCmd_Unk0137: ; 0x0203D33C
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FieldSysGetAttrAddr
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl GetVarPointer
	add r5, r0, #0x0
	ldr r0, [r4, #0x0]
	bl FUN_0205296C
	strh r0, [r5, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0138
ScrCmd_Unk0138: ; 0x0203D36C
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r4, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FieldSysGetAttrAddr
	add r1, r0, #0x0
	add r5, #0x80
	ldr r0, [r5, #0x0]
	ldr r1, [r1, #0x0]
	ldr r0, [r0, #0x78]
	bl FUN_02052C0C
	strh r0, [r4, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0139
ScrCmd_Unk0139: ; 0x0203D3A4
	push {r4, lr}
	bl ScriptReadHalfword
	add r4, r0, #0x0
	cmp r4, #0x5
	beq _0203D3BC
	cmp r4, #0x7
	beq _0203D3BC
	cmp r4, #0x9
	beq _0203D3BC
	cmp r4, #0x6
	bne _0203D3C2
_0203D3BC:
	bl FUN_02031C54
	b _0203D3CA
_0203D3C2:
	cmp r4, #0xb
	bne _0203D3CA
	bl FUN_02031C64
_0203D3CA:
	bl FUN_02031190
	cmp r0, #0x0
	bne _0203D3D8
	add r0, r4, #0x0
	bl FUN_02052B74
_0203D3D8:
	mov r0, #0x0
	pop {r4, pc}

	thumb_func_start ScrCmd_Unk013C
ScrCmd_Unk013C: ; 0x0203D3DC
	push {r3-r7, lr}
	sub sp, #0x8
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xa
	bl FieldSysGetAttrAddr
	add r7, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FieldSysGetAttrAddr
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r4, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl ScriptEnvironment_GetSavePtr
	bl Save_PlayerData_GetProfileAddr
	add r5, #0x80
	str r0, [sp, #0x4]
	ldr r0, [r5, #0x0]
	bl ScriptEnvironment_GetSavePtr
	bl FUN_02013B5C
	add r5, r0, #0x0
	cmp r4, #0x0
	bne _0203D432
	ldr r0, [r7, #0x0]
	bl FUN_02058448
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	b _0203D434
_0203D432:
	mov r2, #0x0
_0203D434:
	str r5, [sp, #0x0]
	ldr r0, [r6, #0x0]
	ldr r3, [sp, #0x4]
	add r1, r4, #0x0
	bl FUN_02052D08
	mov r0, #0x0
	add sp, #0x8
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk013D
ScrCmd_Unk013D: ; 0x0203D448
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl FUN_0208881C
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk013E
ScrCmd_Unk013E: ; 0x0203D458
	push {r4, lr}
	add r4, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x7c]
	bl FUN_02052F74
	bl FUN_02031B50
	ldr r1, _0203D478 ; =FUN_0203D47C
	add r0, r4, #0x0
	bl SetupNativeScript
	mov r0, #0x1
	pop {r4, pc}
	nop
_0203D478: .word FUN_0203D47C 

	thumb_func_start FUN_0203D47C
FUN_0203D47C: ; 0x0203D47C
	push {r3, lr}
	bl FUN_02030F20
	cmp r0, #0x2
	bge _0203D48A
	mov r0, #0x1
	pop {r3, pc}
_0203D48A:
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk013F
ScrCmd_Unk013F: ; 0x0203D490
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xa
	bl FieldSysGetAttrAddr
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	str r0, [sp, #0x0]
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r6, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FieldSysGetAttrAddr
	add r7, r0, #0x0
	ldr r0, [r4, #0x0]
	bl FUN_02058448
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r2, [sp, #0x0]
	ldr r0, [r0, #0x78]
	ldr r3, [r7, #0x0]
	bl FUN_02052A10
	strh r0, [r6, #0x0]
	mov r0, #0x0
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk02BA
ScrCmd_Unk02BA: ; 0x0203D4E8
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r4, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x78]
	bl FUN_020527A8
	strh r0, [r4, #0x0]
	ldrh r0, [r4, #0x0]
	cmp r0, #0x0
	beq _0203D522
	add r5, #0x80
	ldr r0, [r5, #0x0]
	mov r1, #0x13
	bl FieldSysGetAttrAddr
	ldr r0, [r0, #0x0]
	bl FreeToHeap
_0203D522:
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0140
ScrCmd_Unk0140: ; 0x0203D528
	push {r4-r6, lr}
	add r4, r0, #0x0
	add r0, #0x80
	ldr r5, [r0, #0x0]
	mov r1, #0xa
	add r0, r5, #0x0
	bl FieldSysGetAttrAddr
	add r6, r0, #0x0
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0x0
	ldr r0, [r4, #0x0]
	bl GetVarPointer
	add r4, r0, #0x0
	ldr r0, [r6, #0x0]
	bl FUN_02058448
	add r1, r0, #0x0
	ldr r0, [r5, #0x78]
	bl FUN_020524CC
	strh r0, [r4, #0x0]
	mov r0, #0x0
	pop {r4-r6, pc}

	thumb_func_start ScrCmd_Unk0146
ScrCmd_Unk0146: ; 0x0203D560
	push {r3-r7, lr}
	add r4, r0, #0x0
	add r0, #0x80
	ldr r5, [r0, #0x0]
	mov r1, #0xa
	add r0, r5, #0x0
	bl FieldSysGetAttrAddr
	add r6, r0, #0x0
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r7, r0, #0x0
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0x0
	ldr r0, [r4, #0x0]
	bl GetVarPointer
	add r4, r0, #0x0
	ldr r0, [r6, #0x0]
	bl FUN_02058448
	add r1, r0, #0x0
	ldr r0, [r5, #0x78]
	add r2, r7, #0x0
	bl FUN_02052544
	strh r0, [r4, #0x0]
	mov r0, #0x0
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0141
ScrCmd_Unk0141: ; 0x0203D5B0
	push {r4, lr}
	add r4, r0, #0x0
	bl ScriptReadHalfword
	str r0, [r4, #0x64]
	ldr r1, _0203D5C8 ; =FUN_0203D5CC
	add r0, r4, #0x0
	bl SetupNativeScript
	mov r0, #0x1
	pop {r4, pc}
	nop
_0203D5C8: .word FUN_0203D5CC 

	thumb_func_start FUN_0203D5CC
FUN_0203D5CC: ; 0x0203D5CC
	push {r4-r6, lr}
	add r6, r0, #0x0
	add r0, #0x80
	ldr r5, [r0, #0x0]
	ldr r0, [r5, #0x78]
	bl FUN_02052604
	ldr r1, [r6, #0x64]
	add r4, r0, #0x0
	lsl r1, r1, #0x10
	add r0, r5, #0x0
	lsr r1, r1, #0x10
	bl GetVarPointer
	cmp r4, #0x0
	bne _0203D5F0
	mov r0, #0x0
	pop {r4-r6, pc}
_0203D5F0:
	strh r4, [r0, #0x0]
	mov r0, #0x1
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0142
ScrCmd_Unk0142: ; 0x0203D5F8
	push {r3, lr}
	add r0, #0x80
	ldr r1, [r0, #0x0]
	ldr r0, [r1, #0x34]
	ldr r1, [r1, #0x7c]
	bl FUN_020534DC
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk013A
ScrCmd_Unk013A: ; 0x0203D60C
	push {r3, lr}
	mov r0, #0x4
	bl FUN_02052B74
	bl FUN_02031C2C
	mov r0, #0x0
	pop {r3, pc}

	thumb_func_start ScrCmd_Unk013B
ScrCmd_Unk013B: ; 0x0203D61C
	push {r3, lr}
	bl FUN_02031C64
	bl FUN_02031B50
	mov r0, #0x0
	bl FUN_02052B74
	mov r0, #0x0
	pop {r3, pc}

	thumb_func_start ScrCmd_Unk0143
ScrCmd_Unk0143: ; 0x0203D630
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r1, r5, #0x0
	add r1, #0x80
	ldr r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl VarGet
	add r2, r0, #0x0
	ldr r0, [r4, #0x78]
	add r1, r6, #0x0
	bl FUN_0205265C
	mov r0, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0144
ScrCmd_Unk0144: ; 0x0203D66C
	push {r4, lr}
	add r4, r0, #0x0
	bl ScriptReadHalfword
	str r0, [r4, #0x64]
	ldr r1, _0203D684 ; =FUN_0203D688
	add r0, r4, #0x0
	bl SetupNativeScript
	mov r0, #0x1
	pop {r4, pc}
	nop
_0203D684: .word FUN_0203D688 

	thumb_func_start FUN_0203D688
FUN_0203D688: ; 0x0203D688
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r1, [r5, #0x64]
	add r0, #0x80
	lsl r1, r1, #0x10
	ldr r0, [r0, #0x0]
	lsr r1, r1, #0x10
	bl GetVarPointer
	add r4, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x78]
	bl FUN_02052608
	cmp r0, #0x1
	blo _0203D6BC
	add r5, #0x80
	strh r0, [r4, #0x0]
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0x78]
	bl FUN_02052E10
	mov r0, #0x1
	pop {r3-r5, pc}
_0203D6BC:
	mov r0, #0x0
	strh r0, [r4, #0x0]
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0145
ScrCmd_Unk0145: ; 0x0203D6C4
	push {r4, lr}
	add r4, r0, #0x0
	bl ScriptReadHalfword
	str r0, [r4, #0x64]
	ldr r1, _0203D6DC ; =FUN_0203D6E0
	add r0, r4, #0x0
	bl SetupNativeScript
	mov r0, #0x1
	pop {r4, pc}
	nop
_0203D6DC: .word FUN_0203D6E0 

	thumb_func_start FUN_0203D6E0
FUN_0203D6E0: ; 0x0203D6E0
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r1, [r5, #0x64]
	add r0, #0x80
	lsl r1, r1, #0x10
	ldr r0, [r0, #0x0]
	lsr r1, r1, #0x10
	bl GetVarPointer
	add r4, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x78]
	bl FUN_02052648
	ldr r1, _0203D724 ; =gSystem
	ldr r2, [r1, #0x48]
	mov r1, #0x2
	tst r1, r2
	beq _0203D716
	add r5, #0x80
	ldr r0, [r5, #0x0]
	mov r1, #0x8
	ldr r0, [r0, #0x78]
	bl FUN_02052718
_0203D716:
	cmp r0, #0x0
	beq _0203D720
	strh r0, [r4, #0x0]
	mov r0, #0x1
	pop {r3-r5, pc}
_0203D720:
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4
_0203D724: .word gSystem

	thumb_func_start ScrCmd_Unk0153
ScrCmd_Unk0153: ; 0x0203D728
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x10]
	bl FUN_02049EA4
	mov r0, #0x1
	pop {r3, pc}

	thumb_func_start ScrCmd_Unk0154
ScrCmd_Unk0154: ; 0x0203D738
	push {r4-r6, lr}
	add r4, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl ScriptEnvironment_GetSavePtr
	bl Save_PlayerData_GetProfileAddr
	add r4, #0x80
	add r5, r0, #0x0
	ldr r0, [r4, #0x0]
	mov r1, #0xf
	bl FieldSysGetAttrAddr
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl PlayerProfile_GetTrainerID
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl PlayerProfile_GetTrainerGender
	add r1, r0, #0x0
	ldr r2, [r4, #0x0]
	add r0, r6, #0x0
	bl FUN_0205363C
	mov r0, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0155
ScrCmd_Unk0155: ; 0x0203D774
	push {r3-r7, lr}
	add r4, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl ScriptEnvironment_GetSavePtr
	bl Save_PlayerData_GetProfileAddr
	add r5, r0, #0x0
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r7, r0, #0x0
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0x0
	ldr r0, [r4, #0x0]
	bl GetVarPointer
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl PlayerProfile_GetTrainerID
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl PlayerProfile_GetTrainerGender
	add r1, r0, #0x0
	add r0, r6, #0x0
	add r2, r7, #0x0
	bl FUN_02053678
	strh r0, [r4, #0x0]
	add r0, r5, #0x0
	bl PlayerProfile_GetTrainerGender
	ldrh r1, [r4, #0x0]
	mov r2, #0x2
	bl FUN_020536D0
	strh r0, [r4, #0x0]
	mov r0, #0x0
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk029C
ScrCmd_Unk029C: ; 0x0203D7DC
	push {r3-r7, lr}
	add r4, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl ScriptEnvironment_GetSavePtr
	bl Save_PlayerData_GetProfileAddr
	add r5, r0, #0x0
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r7, r0, #0x0
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0x0
	ldr r0, [r4, #0x0]
	bl GetVarPointer
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl PlayerProfile_GetTrainerID
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl PlayerProfile_GetTrainerGender
	add r1, r0, #0x0
	add r0, r6, #0x0
	add r2, r7, #0x0
	bl FUN_02053678
	strh r0, [r4, #0x0]
	mov r0, #0x0
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0156
ScrCmd_Unk0156: ; 0x0203D834
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl ScriptEnvironment_GetSavePtr
	bl Save_PlayerData_GetProfileAddr
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl VarGet
	add r1, r0, #0x0
	lsl r1, r1, #0x18
	add r0, r4, #0x0
	lsr r1, r1, #0x18
	bl PlayerProfile_SetAvatar
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk014B
ScrCmd_Unk014B: ; 0x0203D868
	push {r3, lr}
	ldr r0, [r0, #0x74]
	bl FUN_02048498
	mov r0, #0x1
	pop {r3, pc}

	thumb_func_start ScrCmd_Unk014C
ScrCmd_Unk014C: ; 0x0203D874
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r5, #0x80
	add r4, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_LocalFieldData_Get
	add r1, r4, #0x0
	bl FUN_02034E04
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_GetPlayerGender
ScrCmd_GetPlayerGender: ; 0x0203D8A0
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl ScriptEnvironment_GetSavePtr
	bl Save_PlayerData_GetProfileAddr
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl GetVarPointer
	add r5, r0, #0x0
	add r0, r4, #0x0
	bl PlayerProfile_GetTrainerGender
	strh r0, [r5, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}

	thumb_func_start ScrCmd_HealParty
ScrCmd_HealParty: ; 0x0203D8D0
	push {r3, lr}
	ldr r0, [r0, #0x74]
	bl FUN_02046528
	ldr r0, [r0, #0xc]
	bl SaveArray_PlayerParty_Get
	bl HealParty
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk014F
ScrCmd_Unk014F: ; 0x0203D8E8
	mov r0, #0x0
	bx lr

	thumb_func_start ScrCmd_Unk0150
ScrCmd_Unk0150: ; 0x0203D8EC
	push {r4, lr}
	add r4, r0, #0x0
	bl FUN_02050024
	ldr r1, _0203D900 ; =FUN_0203D904
	add r0, r4, #0x0
	bl SetupNativeScript
	mov r0, #0x1
	pop {r4, pc}
	.balign 4
_0203D900: .word FUN_0203D904 

	thumb_func_start FUN_0203D904
FUN_0203D904: ; 0x0203D904
	push {r3, lr}
	bl FUN_02031810
	cmp r0, #0x1
	beq _0203D91A
	bl FUN_0202EDF8
	cmp r0, #0x1
	beq _0203D91A
	mov r0, #0x1
	pop {r3, pc}
_0203D91A:
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk02BB
ScrCmd_Unk02BB: ; 0x0203D920
	push {r4, lr}
	add r4, r0, #0x0
	bl FUN_02050048
	ldr r1, _0203D934 ; =FUN_0203D904
	add r0, r4, #0x0
	bl SetupNativeScript
	mov r0, #0x1
	pop {r4, pc}
	.balign 4
_0203D934: .word FUN_0203D904 

	thumb_func_start ScrCmd_Unk0151
ScrCmd_Unk0151: ; 0x0203D938
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl FUN_0204FF5C
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0152
ScrCmd_Unk0152: ; 0x0203D948
	push {r3, lr}
	bl ScriptReadHalfword
	bl FUN_0204F6DC
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk017A
ScrCmd_Unk017A: ; 0x0203D958
	push {r4-r6, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r5, #0x80
	add r4, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_Bag_Get
	add r1, r6, #0x0
	bl Bag_PocketNotEmpty
	strh r0, [r4, #0x0]
	mov r0, #0x0
	pop {r4-r6, pc}

	thumb_func_start ScrCmd_Unk0186
ScrCmd_Unk0186: ; 0x0203D998
	push {r4-r6, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r5, #0x80
	add r3, r0, #0x0
	ldr r0, [r5, #0x0]
	add r1, r4, #0x0
	add r2, r6, #0x0
	bl FUN_02034B74
	mov r0, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0187
ScrCmd_Unk0187: ; 0x0203D9E8
	push {r4-r7, lr}
	sub sp, #0xc
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r7, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	str r0, [sp, #0x4]
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	str r0, [sp, #0x8]
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r5, #0x80
	add r4, r0, #0x0
	ldr r0, [r5, #0x0]
	add r1, r6, #0x0
	ldr r0, [r0, #0x34]
	bl FUN_02058060
	ldr r2, [sp, #0x4]
	ldr r3, [sp, #0x8]
	add r5, r0, #0x0
	add r1, r7, #0x0
	str r4, [sp, #0x0]
	bl FUN_02058E28
	add r0, r5, #0x0
	bl FUN_02059D1C
	mov r0, #0x0
	add sp, #0xc
	pop {r4-r7, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0188
ScrCmd_Unk0188: ; 0x0203DA78
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r5, #0x80
	add r2, r0, #0x0
	ldr r0, [r5, #0x0]
	add r1, r4, #0x0
	bl FUN_02034BDC
	mov r0, #0x0
	pop {r3-r5, pc}

	thumb_func_start ScrCmd_Unk0189
ScrCmd_Unk0189: ; 0x0203DAB0
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r5, #0x80
	add r2, r0, #0x0
	ldr r0, [r5, #0x0]
	add r1, r4, #0x0
	bl FUN_02034BAC
	mov r0, #0x0
	pop {r3-r5, pc}

	thumb_func_start ScrCmd_Unk018A
ScrCmd_Unk018A: ; 0x0203DAE8
	push {r4-r6, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r5, #0x80
	add r3, r0, #0x0
	ldr r0, [r5, #0x0]
	add r1, r4, #0x0
	add r2, r6, #0x0
	bl FUN_02034C0C
	mov r0, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk018B
ScrCmd_Unk018B: ; 0x0203DB38
	push {r4-r6, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r5, #0x80
	add r3, r0, #0x0
	ldr r0, [r5, #0x0]
	add r1, r4, #0x0
	add r2, r6, #0x0
	bl FUN_02034C34
	mov r0, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk018C
ScrCmd_Unk018C: ; 0x0203DB88
	push {r4-r6, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r5, #0x80
	add r4, r0, #0x0
	ldr r0, [r5, #0x0]
	add r1, r6, #0x0
	ldr r0, [r0, #0x34]
	bl FUN_02058060
	add r5, r0, #0x0
	bne _0203DBC6
	bl GF_AssertFail
_0203DBC6:
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl MOD05_021F1EC0
	mov r0, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk018F
ScrCmd_Unk018F: ; 0x0203DBD4
	push {r3-r5, lr}
	add r4, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xc
	bl FieldSysGetAttrAddr
	add r5, r0, #0x0
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0x0
	ldr r0, [r4, #0x0]
	bl VarGet
	ldr r1, [r5, #0x0]
	cmp r1, #0x0
	beq _0203DBFC
	strh r0, [r1, #0x0]
_0203DBFC:
	mov r0, #0x0
	pop {r3-r5, pc}

	thumb_func_start ScrCmd_Unk0168
ScrCmd_Unk0168: ; 0x0203DC00
	push {r3-r7, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r7, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	lsl r1, r4, #0x5
	ldr r3, [r5, #0x8]
	add r2, r0, #0x0
	add r0, r3, #0x1
	str r0, [r5, #0x8]
	add r5, #0x80
	lsl r4, r6, #0x5
	ldrb r3, [r3, #0x0]
	ldr r0, [r5, #0x0]
	add r1, r7, r1
	add r2, r2, r4
	bl MOD05_021DAE40
	mov r0, #0x0
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0169
ScrCmd_Unk0169: ; 0x0203DC58
	push {r3, lr}
	ldr r2, [r0, #0x8]
	add r1, r2, #0x1
	str r1, [r0, #0x8]
	add r0, #0x80
	ldrb r1, [r2, #0x0]
	ldr r0, [r0, #0x0]
	bl MOD05_021DAF78
	mov r0, #0x1
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk016A
ScrCmd_Unk016A: ; 0x0203DC70
	push {r3, lr}
	ldr r2, [r0, #0x8]
	add r1, r2, #0x1
	str r1, [r0, #0x8]
	add r0, #0x80
	ldrb r1, [r2, #0x0]
	ldr r0, [r0, #0x0]
	bl MOD05_021DAF98
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk016B
ScrCmd_Unk016B: ; 0x0203DC88
	push {r3, lr}
	ldr r2, [r0, #0x8]
	add r1, r2, #0x1
	str r1, [r0, #0x8]
	add r0, #0x80
	ldrb r1, [r2, #0x0]
	ldr r0, [r0, #0x0]
	bl MOD05_021DAED4
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk016C
ScrCmd_Unk016C: ; 0x0203DCA0
	push {r3, lr}
	ldr r2, [r0, #0x8]
	add r1, r2, #0x1
	str r1, [r0, #0x8]
	add r0, #0x80
	ldrb r1, [r2, #0x0]
	ldr r0, [r0, #0x0]
	bl MOD05_021DAF28
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk016F
ScrCmd_Unk016F: ; 0x0203DCB8
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl FUN_02064CA8
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0170
ScrCmd_Unk0170: ; 0x0203DCC8
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl MOD06_02241230
	mov r0, #0x1
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0171
ScrCmd_Unk0171: ; 0x0203DCD8
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl FUN_02064CC8
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0172
ScrCmd_Unk0172: ; 0x0203DCE8
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl MOD06_02241914
	mov r0, #0x1
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0173
ScrCmd_Unk0173: ; 0x0203DCF8
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl FUN_02064D10
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0174
ScrCmd_Unk0174: ; 0x0203DD08
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl FUN_02064D4C
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0175
ScrCmd_Unk0175: ; 0x0203DD18
	push {r3, lr}
	add r1, r0, #0x0
	add r1, #0x80
	ldr r2, [r0, #0x8]
	ldr r3, [r1, #0x0]
	add r1, r2, #0x1
	str r1, [r0, #0x8]
	ldrb r1, [r2, #0x0]
	add r0, r3, #0x0
	bl FUN_02064D88
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0176
ScrCmd_Unk0176: ; 0x0203DD34
	push {r3, lr}
	add r1, r0, #0x0
	add r1, #0x80
	ldr r2, [r0, #0x8]
	ldr r3, [r1, #0x0]
	add r1, r2, #0x1
	str r1, [r0, #0x8]
	ldrb r1, [r2, #0x0]
	add r0, r3, #0x0
	bl MOD06_02242A38
	mov r0, #0x1
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk01AC
ScrCmd_Unk01AC: ; 0x0203DD50
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl FUN_020388B4
	mov r0, #0x1
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk019E
ScrCmd_Unk019E: ; 0x0203DD60
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0x14
	bl FieldSysGetAttrAddr
	add r4, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xa
	bl FieldSysGetAttrAddr
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r7, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	str r0, [r5, #0x64]
	ldr r0, [r6, #0x0]
	bl FUN_02058448
	add r1, r5, #0x0
	add r1, #0x80
	add r2, r0, #0x0
	ldr r1, [r1, #0x0]
	add r0, r7, #0x0
	bl MOD18_0224CA54
	str r0, [r4, #0x0]
	ldr r1, _0203DDBC ; =FUN_0203DDC0
	add r0, r5, #0x0
	bl SetupNativeScript
	mov r0, #0x1
	pop {r3-r7, pc}
	.balign 4
_0203DDBC: .word FUN_0203DDC0 

	thumb_func_start FUN_0203DDC0
FUN_0203DDC0: ; 0x0203DDC0
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0x14
	bl FieldSysGetAttrAddr
	add r4, r0, #0x0
	add r0, r5, #0x0
	ldr r1, [r5, #0x64]
	add r0, #0x80
	lsl r1, r1, #0x10
	ldr r0, [r0, #0x0]
	lsr r1, r1, #0x10
	bl GetVarPointer
	add r5, r0, #0x0
	ldr r0, [r4, #0x0]
	bl MOD18_0224CA2C
	strh r0, [r5, #0x0]
	ldrh r1, [r5, #0x0]
	ldr r0, _0203DDFC ; =0x0000FFFE
	cmp r1, r0
	beq _0203DDF6
	mov r0, #0x1
	pop {r3-r5, pc}
_0203DDF6:
	mov r0, #0x0
	pop {r3-r5, pc}
	nop
_0203DDFC: .word 0x0000FFFE

	thumb_func_start ScrCmd_Unk019F
ScrCmd_Unk019F: ; 0x0203DE00
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0x3
	bl FieldSysGetAttrAddr
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	bl MOD18_0224CA58
	strb r0, [r4, #0x0]
	ldr r1, _0203DE34 ; =FUN_0203DE38
	add r0, r5, #0x0
	bl SetupNativeScript
	mov r0, #0x1
	pop {r3-r5, pc}
	.balign 4
_0203DE34: .word FUN_0203DE38 

	thumb_func_start FUN_0203DE38
FUN_0203DE38: ; 0x0203DE38
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0x3
	bl FieldSysGetAttrAddr
	ldrb r0, [r0, #0x0]
	bl FUN_020546C8
	pop {r3, pc}

	thumb_func_start ScrCmd_Unk01A0
ScrCmd_Unk01A0: ; 0x0203DE4C
	push {r3, lr}
	bl MOD11_0224CA94
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk01A1
ScrCmd_Unk01A1: ; 0x0203DE58
	push {r3-r5, lr}
	add r4, r0, #0x0
	ldr r2, [r4, #0x8]
	add r1, r2, #0x1
	str r1, [r4, #0x8]
	ldrb r5, [r2, #0x0]
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0x0
	ldr r0, [r4, #0x0]
	bl VarGet
	add r1, r0, #0x0
	add r0, r5, #0x0
	bl MOD18_0224CAA0
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk01A2
ScrCmd_Unk01A2: ; 0x0203DE80
	push {r3-r5, lr}
	add r4, r0, #0x0
	ldr r2, [r4, #0x8]
	add r1, r2, #0x1
	str r1, [r4, #0x8]
	ldrb r5, [r2, #0x0]
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0x0
	ldr r0, [r4, #0x0]
	bl VarGet
	add r1, r0, #0x0
	add r0, r5, #0x0
	bl MOD18_0224CAB4
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk003F
ScrCmd_Unk003F: ; 0x0203DEA8
	push {r3, lr}
	sub sp, #0x8
	mov r3, #0x0
	str r3, [sp, #0x0]
	str r3, [sp, #0x4]
	mov r1, #0x1
	ldr r0, [r0, #0x74]
	add r2, r1, #0x0
	bl MOD06_02242BE0
	mov r0, #0x1
	add sp, #0x8
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk01B1
ScrCmd_Unk01B1: ; 0x0203DEC4
	push {r3-r5, lr}
	add r4, r0, #0x0
	add r1, r4, #0x0
	add r1, #0x80
	ldr r5, [r1, #0x0]
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0x0
	ldr r0, [r4, #0x0]
	bl VarGet
	add r1, r0, #0x0
	ldr r0, [r5, #0x34]
	bl FUN_02058060
	add r4, r0, #0x0
	bne _0203DEEC
	bl GF_AssertFail
_0203DEEC:
	add r0, r4, #0x0
	mov r1, #0x0
	bl FUN_0205889C
	mov r0, #0x0
	pop {r3-r5, pc}

	thumb_func_start ScrCmd_Unk01B2
ScrCmd_Unk01B2: ; 0x0203DEF8
	push {r3-r5, lr}
	add r4, r0, #0x0
	add r1, r4, #0x0
	add r1, #0x80
	ldr r5, [r1, #0x0]
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0x0
	ldr r0, [r4, #0x0]
	bl VarGet
	add r1, r0, #0x0
	ldr r0, [r5, #0x34]
	bl FUN_02058060
	add r4, r0, #0x0
	bne _0203DF20
	bl GF_AssertFail
_0203DF20:
	add r0, r4, #0x0
	mov r1, #0x1
	bl FUN_0205889C
	mov r0, #0x0
	pop {r3-r5, pc}

	thumb_func_start ScrCmd_Unk01B3
ScrCmd_Unk01B3: ; 0x0203DF2C
	push {r3, lr}
	ldr r0, [r0, #0x74]
	bl FUN_02066818
	mov r0, #0x1
	pop {r3, pc}

	thumb_func_start ScrCmd_Unk01B4
ScrCmd_Unk01B4: ; 0x0203DF38
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r1, r5, #0x0
	add r1, #0x80
	ldr r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl GetVarPointer
	add r5, r0, #0x0
	ldr r0, [r4, #0xc]
	bl Save_Mailbox_Get
	mov r1, #0x0
	bl Mailbox_CountMessages
	strh r0, [r5, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}

	thumb_func_start ScrCmd_Unk01B5
ScrCmd_Unk01B5: ; 0x0203DF64
	push {r4, lr}
	add r4, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r1, r0, #0x0
	ldr r0, [r4, #0x74]
	bl FUN_02063650
	mov r0, #0x1
	pop {r4, pc}

	thumb_func_start ScrCmd_Unk01B6
ScrCmd_Unk01B6: ; 0x0203DF84
	push {r3-r5, lr}
	add r4, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r4, #0x80
	add r5, r0, #0x0
	ldr r0, [r4, #0x0]
	bl Script_GetTimeOfDay
	strh r0, [r5, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}

	thumb_func_start ScrCmd_Unk01B7
ScrCmd_Unk01B7: ; 0x0203DFA8
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl VarGet
	add r5, r0, #0x0
	bl LCRandom
	add r1, r5, #0x0
	bl _s32_div_f
	strh r1, [r4, #0x0]
	mov r0, #0x1
	pop {r3-r5, pc}

	thumb_func_start ScrCmd_Unk01B8
ScrCmd_Unk01B8: ; 0x0203DFE0
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl VarGet
	add r5, r0, #0x0
	bl LCRandom
	add r1, r5, #0x0
	bl _s32_div_f
	strh r1, [r4, #0x0]
	mov r0, #0x1
	pop {r3-r5, pc}

	thumb_func_start ScrCmd_Unk01C1
ScrCmd_Unk01C1: ; 0x0203E018
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r1, r5, #0x0
	add r1, #0x80
	ldr r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl VarGet
	add r1, r0, #0x0
	add r0, r4, #0x0
	bl MOD05_021F3A18
	strh r0, [r6, #0x0]
	mov r0, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk01C2
ScrCmd_Unk01C2: ; 0x0203E054
	push {r3-r5, lr}
	add r4, r0, #0x0
	add r1, r4, #0x0
	add r1, #0x80
	ldr r5, [r1, #0x0]
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0x0
	ldr r0, [r4, #0x0]
	bl VarGet
	add r1, r0, #0x0
	add r0, r5, #0x0
	bl MOD05_021F3AB4
	mov r0, #0x0
	pop {r3-r5, pc}

	thumb_func_start ScrCmd_Unk01C3
ScrCmd_Unk01C3: ; 0x0203E078
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r1, r5, #0x0
	add r1, #0x80
	ldr r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r7, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl VarGet
	lsl r1, r6, #0x18
	lsl r2, r7, #0x18
	add r3, r0, #0x0
	add r0, r4, #0x0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl MOD05_021F3B7C
	mov r0, #0x0
	pop {r3-r7, pc}

	thumb_func_start ScrCmd_Unk01C4
ScrCmd_Unk01C4: ; 0x0203E0CC
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r1, r5, #0x0
	add r1, #0x80
	ldr r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r7, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl VarGet
	lsl r1, r6, #0x18
	lsl r2, r7, #0x18
	add r3, r0, #0x0
	add r0, r4, #0x0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl MOD05_021F3B4C
	mov r0, #0x0
	pop {r3-r7, pc}

	thumb_func_start ScrCmd_Unk01C5
ScrCmd_Unk01C5: ; 0x0203E120
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0xc]
	bl SaveArray_Flags_Get
	mov r1, #0x82
	lsl r1, r1, #0x8
	bl FUN_0205F3F8
	mov r0, #0x0
	pop {r3, pc}

	thumb_func_start ScrCmd_Unk01CC
ScrCmd_Unk01CC: ; 0x0203E138
	push {r4, lr}
	add r0, #0x80
	ldr r4, [r0, #0x0]
	ldr r0, [r4, #0xc]
	bl SaveArray_Flags_Get
	mov r1, #0x1
	bl FUN_0205F2D4
	ldr r0, [r4, #0xc]
	bl FUN_020289A4
	mov r1, #0x1
	bl FUN_020289B0
	add r1, r4, #0x0
	add r1, #0x98
	str r0, [r1, #0x0]
	add r0, r4, #0x0
	bl FUN_02048C58
	mov r0, #0x0
	pop {r4, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk01CD
ScrCmd_Unk01CD: ; 0x0203E168
	push {r3-r7, lr}
	add r4, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r7, r0, #0x0
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	str r0, [sp, #0x0]
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0x14
	bl FieldSysGetAttrAddr
	add r5, r0, #0x0
	add r0, r7, #0x0
	sub r0, #0x10
	cmp r0, #0xa
	bhi _0203E23A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #0x6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203E1EA: ; jump table (using 16-bit offset)
	.short _0203E200 - _0203E1EA - 2; case 0
	.short _0203E20C - _0203E1EA - 2; case 1
	.short _0203E218 - _0203E1EA - 2; case 2
	.short _0203E226 - _0203E1EA - 2; case 3
	.short _0203E23A - _0203E1EA - 2; case 4
	.short _0203E226 - _0203E1EA - 2; case 5
	.short _0203E226 - _0203E1EA - 2; case 6
	.short _0203E226 - _0203E1EA - 2; case 7
	.short _0203E226 - _0203E1EA - 2; case 8
	.short _0203E226 - _0203E1EA - 2; case 9
	.short _0203E226 - _0203E1EA - 2; case 10
_0203E200:
	mov r0, #0x4
	mov r6, #0x1
	bl FUN_02029120
	str r0, [r5, #0x0]
	b _0203E23E
_0203E20C:
	mov r0, #0x4
	mov r6, #0x1
	bl FUN_0202912C
	str r0, [r5, #0x0]
	b _0203E23E
_0203E218:
	ldr r0, [sp, #0x0]
	mov r1, #0x4
	mov r6, #0x1
	bl FUN_02029138
	str r0, [r5, #0x0]
	b _0203E23E
_0203E226:
	sub r7, #0x13
	lsl r0, r7, #0x18
	ldr r1, [sp, #0x0]
	lsr r0, r0, #0x18
	mov r2, #0x4
	mov r6, #0x1
	bl FUN_0202914C
	str r0, [r5, #0x0]
	b _0203E23E
_0203E23A:
	mov r0, #0x1
	pop {r3-r7, pc}
_0203E23E:
	add r4, #0x80
	ldr r0, [r4, #0x0]
	ldr r1, [r5, #0x0]
	add r0, #0x98
	ldr r0, [r0, #0x0]
	add r2, r6, #0x0
	bl FUN_02028AD4
	mov r0, #0x1
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk01CE
ScrCmd_Unk01CE: ; 0x0203E254
	mov r0, #0x0
	bx lr

	thumb_func_start ScrCmd_Unk01D2
ScrCmd_Unk01D2: ; 0x0203E258
	push {r4-r6, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r5, #0x80
	add r6, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_FashionData_Get
	bl FUN_0202708C
	add r1, r4, #0x0
	add r2, r6, #0x0
	bl FUN_020271A4
	mov r0, #0x0
	pop {r4-r6, pc}

	thumb_func_start ScrCmd_Unk01D3
ScrCmd_Unk01D3: ; 0x0203E29C
	push {r3-r7, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r7, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r5, #0x80
	add r4, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_FashionData_Get
	bl FUN_0202708C
	add r1, r6, #0x0
	add r2, r7, #0x0
	bl FUN_020270D8
	strh r0, [r4, #0x0]
	mov r0, #0x0
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk01D4
ScrCmd_Unk01D4: ; 0x0203E2F8
	push {r3-r7, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r7, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r5, #0x80
	add r4, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_FashionData_Get
	bl FUN_0202708C
	add r1, r7, #0x0
	bl FUN_02027114
	cmp r6, r0
	bhi _0203E352
	mov r0, #0x1
	b _0203E354
_0203E352:
	mov r0, #0x0
_0203E354:
	strh r0, [r4, #0x0]
	mov r0, #0x0
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk01D5
ScrCmd_Unk01D5: ; 0x0203E35C
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r5, #0x80
	add r4, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_FashionData_Get
	bl FUN_0202708C
	add r1, r4, #0x0
	bl FUN_02027264
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk01D6
ScrCmd_Unk01D6: ; 0x0203E38C
	push {r4-r6, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r5, #0x80
	add r4, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_FashionData_Get
	bl FUN_0202708C
	add r1, r6, #0x0
	bl FUN_02027100
	strh r0, [r4, #0x0]
	mov r0, #0x0
	pop {r4-r6, pc}

	thumb_func_start ScrCmd_Unk01E8
ScrCmd_Unk01E8: ; 0x0203E3D0
	push {r3-r5, lr}
	add r4, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_Pokedex_Get
	add r5, r0, #0x0
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0x0
	ldr r0, [r4, #0x0]
	bl GetVarPointer
	add r4, r0, #0x0
	mov r0, #0x0
	strh r0, [r4, #0x0]
	add r0, r5, #0x0
	bl Pokedex_HasCompletedSinnohDex
	cmp r0, #0x1
	bne _0203E404
	mov r0, #0x1
	strh r0, [r4, #0x0]
_0203E404:
	mov r0, #0x0
	pop {r3-r5, pc}

	thumb_func_start ScrCmd_Unk01E9
ScrCmd_Unk01E9: ; 0x0203E408
	push {r3-r5, lr}
	add r4, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_Pokedex_Get
	add r5, r0, #0x0
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0x0
	ldr r0, [r4, #0x0]
	bl GetVarPointer
	add r4, r0, #0x0
	mov r0, #0x0
	strh r0, [r4, #0x0]
	add r0, r5, #0x0
	bl Pokedex_HasCompletedNationalDex
	cmp r0, #0x1
	bne _0203E43C
	mov r0, #0x1
	strh r0, [r4, #0x0]
_0203E43C:
	mov r0, #0x0
	pop {r3-r5, pc}

	thumb_func_start ScrCmd_Unk01EA
ScrCmd_Unk01EA: ; 0x0203E440
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0x13
	bl FieldSysGetAttrAddr
	add r4, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0x20
	mov r2, #0x0
	bl FUN_02038AF4
	str r0, [r4, #0x0]
	ldr r1, _0203E46C ; =FUN_0203BB90
	add r0, r5, #0x0
	bl SetupNativeScript
	mov r0, #0x1
	pop {r3-r5, pc}
	.balign 4
_0203E46C: .word FUN_0203BB90 

	thumb_func_start ScrCmd_Unk01EB
ScrCmd_Unk01EB: ; 0x0203E470
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0x13
	bl FieldSysGetAttrAddr
	add r4, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0x20
	mov r2, #0x1
	bl FUN_02038AF4
	str r0, [r4, #0x0]
	ldr r1, _0203E49C ; =FUN_0203BB90
	add r0, r5, #0x0
	bl SetupNativeScript
	mov r0, #0x1
	pop {r3-r5, pc}
	.balign 4
_0203E49C: .word FUN_0203BB90 

	thumb_func_start ScrCmd_Unk01EC
ScrCmd_Unk01EC: ; 0x0203E4A0
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0xc]
	bl MOD06_0224CBB0
	mov r0, #0x0
	pop {r3, pc}

	thumb_func_start ScrCmd_Unk01ED
ScrCmd_Unk01ED: ; 0x0203E4B0
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r5, #0x80
	add r4, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl MOD06_0224CC24
	strh r0, [r4, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk01EF
ScrCmd_Unk01EF: ; 0x0203E4D8
	push {r4, lr}
	add r4, r0, #0x0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0x0
	ldr r0, [r4, #0x0]
	bl GetVarPointer
	mov r0, #0x0
	pop {r4, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk01E5
ScrCmd_Unk01E5: ; 0x0203E4F0
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r5, #0x80
	add r4, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_GameStats_Get
	add r1, r4, #0x0
	bl GameStats_Inc
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk01E6
ScrCmd_Unk01E6: ; 0x0203E510
	push {r3-r7, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r7, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r6, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	add r1, r4, #0x0
	bl GetVarPointer
	add r4, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	add r1, r6, #0x0
	bl GetVarPointer
	add r5, #0x80
	add r6, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_GameStats_Get
	add r1, r7, #0x0
	bl GameStats_GetCapped
	ldr r1, _0203E564 ; =0xFFFF0000
	and r1, r0
	lsr r1, r1, #0x10
	strh r1, [r4, #0x0]
	strh r0, [r6, #0x0]
	mov r0, #0x0
	pop {r3-r7, pc}
	.balign 4
_0203E564: .word 0xFFFF0000

	thumb_func_start ScrCmd_Unk01E7
ScrCmd_Unk01E7: ; 0x0203E568
	push {r4-r6, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	ldr r1, [r5, #0x8]
	add r2, r1, #0x1
	str r2, [r5, #0x8]
	lsl r2, r4, #0x10
	add r4, r2, #0x0
	orr r4, r0
	ldrb r0, [r1, #0x0]
	cmp r0, #0x0
	beq _0203E59C
	cmp r0, #0x1
	beq _0203E5B0
	cmp r0, #0x2
	beq _0203E5C4
	b _0203E5D6
_0203E59C:
	add r5, #0x80
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_GameStats_Get
	add r1, r6, #0x0
	add r2, r4, #0x0
	bl GameStats_Add
	b _0203E5D6
_0203E5B0:
	add r5, #0x80
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_GameStats_Get
	add r1, r6, #0x0
	add r2, r4, #0x0
	bl GameStats_SetCapped
	b _0203E5D6
_0203E5C4:
	add r5, #0x80
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_GameStats_Get
	add r1, r6, #0x0
	add r2, r4, #0x0
	bl GameStats_UpdateBounded
_0203E5D6:
	mov r0, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0202
ScrCmd_Unk0202: ; 0x0203E5DC
	push {r3-r7, lr}
	sub sp, #0x8
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_LocalFieldData_Get
	add r7, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0xc]
	bl SaveArray_Flags_Get
	str r0, [sp, #0x0]
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0xc]
	bl FUN_02022504
	ldr r1, [r5, #0x8]
	str r0, [sp, #0x4]
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	ldrb r4, [r1, #0x0]
	add r0, r7, #0x0
	bl FUN_02034E24
	add r6, r0, #0x0
	add r0, r7, #0x0
	bl FUN_02034E28
	add r7, r0, #0x0
	cmp r4, #0x0
	beq _0203E62C
	cmp r4, #0x1
	beq _0203E642
	b _0203E66E
_0203E62C:
	ldr r0, [sp, #0x0]
	bl FUN_0205F1F4
	ldr r0, [sp, #0x4]
	bl FUN_02060FD0
	mov r0, #0x1e
	strh r0, [r6, #0x0]
	mov r0, #0x0
	strh r0, [r7, #0x0]
	b _0203E66E
_0203E642:
	ldr r0, [sp, #0x0]
	bl FUN_0205F204
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl FUN_02061574
	mov r0, #0x4
	bl FUN_0202912C
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	mov r2, #0x1
	add r0, #0x98
	ldr r0, [r0, #0x0]
	bl FUN_02028AD4
	mov r0, #0x0
	strh r0, [r6, #0x0]
	strh r0, [r7, #0x0]
_0203E66E:
	mov r0, #0x0
	add sp, #0x8
	pop {r3-r7, pc}

	thumb_func_start ScrCmd_Unk0206
ScrCmd_Unk0206: ; 0x0203E674
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl FUN_0206015C
	mov r0, #0x1
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk020D
ScrCmd_Unk020D: ; 0x0203E684
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r2, [r5, #0x8]
	add r1, r2, #0x1
	str r1, [r5, #0x8]
	ldrb r4, [r2, #0x0]
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r5, #0x80
	add r6, r0, #0x0
	ldr r0, [r5, #0x0]
	add r1, r4, #0x0
	bl MOD06_022456E8
	strh r0, [r6, #0x0]
	mov r0, #0x1
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk020E
ScrCmd_Unk020E: ; 0x0203E6B4
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl FUN_02064E20
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk020F
ScrCmd_Unk020F: ; 0x0203E6C4
	push {r4-r6, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	mov r1, #0x0
	add r6, r0, #0x0
	mov r0, #0x41
	add r2, r1, #0x0
	bl FUN_0200433C
	add r5, #0x80
	ldrh r1, [r4, #0x0]
	ldr r0, [r5, #0x0]
	add r2, r6, #0x0
	bl MOD06_0224525C
	mov r0, #0x1
	pop {r4-r6, pc}

	thumb_func_start ScrCmd_Unk0210
ScrCmd_Unk0210: ; 0x0203E6FC
	push {r4-r6, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r5, #0x80
	add r4, r0, #0x0
	ldr r0, [r5, #0x0]
	add r1, r6, #0x0
	bl MOD06_02245340
	strh r0, [r4, #0x0]
	mov r0, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0211
ScrCmd_Unk0211: ; 0x0203E72C
	push {r3, lr}
	ldr r2, [r0, #0x8]
	add r1, r2, #0x1
	str r1, [r0, #0x8]
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldrb r1, [r2, #0x0]
	ldr r0, [r0, #0x38]
	bl FUN_02055560
	mov r0, #0x1
	pop {r3, pc}

	thumb_func_start ScrCmd_Unk0214
ScrCmd_Unk0214: ; 0x0203E744
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0xc]
	bl SaveArray_Flags_Get
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl GetVarPointer
	add r5, r0, #0x0
	add r0, r4, #0x0
	bl FUN_0205F688
	strh r0, [r5, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0218
ScrCmd_Unk0218: ; 0x0203E774
	push {r3-r7, lr}
	add r4, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_Pokedex_Get
	add r7, r0, #0x0
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0x0
	ldr r0, [r4, #0x0]
	bl GetVarPointer
	str r0, [sp, #0x0]
	add r0, r7, #0x0
	bl Pokedex_CountSinnohDexSeen
	add r4, r0, #0x0
	bl LCRandom
	add r1, r4, #0x0
	bl _s32_div_f
	lsl r0, r1, #0x10
	lsr r6, r0, #0x10
	ldr r0, [sp, #0x0]
	mov r1, #0x19
	strh r1, [r0, #0x0]
	mov r4, #0x1
	mov r5, #0x0
_0203E7B6:
	add r0, r7, #0x0
	add r1, r4, #0x0
	bl Pokedex_CheckMonSeenFlag
	cmp r0, #0x1
	bne _0203E7DC
	add r0, r4, #0x0
	bl SpeciesToSinnohDexNo
	cmp r0, #0x0
	beq _0203E7DC
	cmp r5, r6
	bne _0203E7D6
	ldr r0, [sp, #0x0]
	strh r4, [r0, #0x0]
	b _0203E7E8
_0203E7D6:
	add r0, r5, #0x1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
_0203E7DC:
	add r0, r4, #0x1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, _0203E7EC ; =0x000001ED
	cmp r4, r0
	bls _0203E7B6
_0203E7E8:
	mov r0, #0x0
	pop {r3-r7, pc}
	.balign 4
_0203E7EC: .word 0x000001ED

	thumb_func_start ScrCmd_Unk0219
ScrCmd_Unk0219: ; 0x0203E7F0
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r5, #0x80
	add r4, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl SaveArray_Flags_Get
	add r1, r4, #0x0
	bl FUN_0205F5A4
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk021A
ScrCmd_Unk021A: ; 0x0203E81C
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r5, #0x80
	add r4, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl SaveArray_Flags_Get
	bl FUN_0205F594
	strh r0, [r4, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk021B
ScrCmd_Unk021B: ; 0x0203E848
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0xc]
	bl FUN_0202AA00
	mov r0, #0x0
	pop {r3, pc}

	thumb_func_start ScrCmd_Unk021C
ScrCmd_Unk021C: ; 0x0203E858
	push {r3, lr}
	ldr r2, [r0, #0x8]
	add r1, r2, #0x1
	str r1, [r0, #0x8]
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldrb r1, [r2, #0x0]
	ldr r0, [r0, #0xc]
	bl FUN_02060490
	mov r0, #0x0
	pop {r3, pc}

	thumb_func_start ScrCmd_Unk0226
ScrCmd_Unk0226: ; 0x0203E870
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0x14
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #0x8]
	add r4, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	ldrb r1, [r1, #0x0]
	mov r0, #0xb
	bl MOD06_0224884C
	str r0, [r4, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}

	thumb_func_start ScrCmd_Unk0227
ScrCmd_Unk0227: ; 0x0203E894
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0x14
	bl FieldSysGetAttrAddr
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl GetVarPointer
	add r5, r0, #0x0
	ldr r0, [r4, #0x0]
	bl MOD06_022488EC
	strh r0, [r5, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0228
ScrCmd_Unk0228: ; 0x0203E8C4
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0x14
	bl FieldSysGetAttrAddr
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl GetVarPointer
	add r5, r0, #0x0
	ldr r0, [r4, #0x0]
	bl MOD06_022488F4
	strh r0, [r5, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0229
ScrCmd_Unk0229: ; 0x0203E8F4
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0x14
	bl FieldSysGetAttrAddr
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r2, r0, #0x0
	ldr r0, [r5, #0x74]
	ldr r1, [r4, #0x0]
	mov r3, #0xb
	bl FUN_02060790
	mov r0, #0x1
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk022A
ScrCmd_Unk022A: ; 0x0203E928
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0x14
	bl FieldSysGetAttrAddr
	ldr r0, [r0, #0x0]
	bl MOD06_022488CC
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk022B
ScrCmd_Unk022B: ; 0x0203E940
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_Pokedex_Get
	bl FUN_02024D4C
	mov r0, #0x0
	pop {r3, pc}

	thumb_func_start ScrCmd_Unk022C
ScrCmd_Unk022C: ; 0x0203E954
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_Pokedex_Get
	bl FUN_02024CE0
	mov r0, #0x0
	pop {r3, pc}

	thumb_func_start ScrCmd_Unk022D
ScrCmd_Unk022D: ; 0x0203E968
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r2, [r5, #0x8]
	add r1, r2, #0x1
	str r1, [r5, #0x8]
	ldrb r4, [r2, #0x0]
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r6, r0, #0x0
	mov r0, #0x0
	strh r0, [r6, #0x0]
	cmp r4, #0x1
	bne _0203E9AE
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_Pokedex_Get
	bl Pokedex_SetNatDexFlag
	add r5, #0x80
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_PlayerData_GetProfileAddr
	bl PlayerProfile_SetNatDexFlag
	b _0203E9C8
_0203E9AE:
	cmp r4, #0x2
	bne _0203E9C4
	add r5, #0x80
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_Pokedex_Get
	bl Pokedex_GetNatDexFlag
	strh r0, [r6, #0x0]
	b _0203E9C8
_0203E9C4:
	bl GF_AssertFail
_0203E9C8:
	mov r0, #0x0
	pop {r4-r6, pc}

	thumb_func_start ScrCmd_Unk0233
ScrCmd_Unk0233: ; 0x0203E9CC
	push {r4-r7, lr}
	sub sp, #0xc
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	str r0, [sp, #0x0]
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r5, #0x80
	add r4, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl SaveArray_PlayerParty_Get
	add r1, r4, #0x0
	bl GetPartyMonByIndex
	add r5, r0, #0x0
	mov r1, #0xd
	mov r2, #0x0
	bl GetMonData
	add r4, r0, #0x0
	add r0, r5, #0x0
	mov r1, #0xe
	mov r2, #0x0
	bl GetMonData
	add r6, r0, #0x0
	add r0, r5, #0x0
	mov r1, #0xf
	mov r2, #0x0
	bl GetMonData
	add r7, r0, #0x0
	add r0, r5, #0x0
	mov r1, #0x10
	mov r2, #0x0
	bl GetMonData
	str r0, [sp, #0x4]
	add r0, r5, #0x0
	mov r1, #0x11
	mov r2, #0x0
	bl GetMonData
	str r0, [sp, #0x8]
	add r0, r5, #0x0
	mov r1, #0x12
	mov r2, #0x0
	bl GetMonData
	add r1, r4, r6
	add r2, r7, r1
	ldr r1, [sp, #0x4]
	add r2, r1, r2
	ldr r1, [sp, #0x8]
	add r1, r1, r2
	add r1, r0, r1
	ldr r0, [sp, #0x0]
	strh r1, [r0, #0x0]
	mov r0, #0x0
	add sp, #0xc
	pop {r4-r7, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0234
ScrCmd_Unk0234: ; 0x0203EA68
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0x0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0x0
	ldr r0, [r4, #0x0]
	bl GetVarPointer
	add r4, r0, #0x0
	add r0, sp, #0x0
	bl GF_RTC_CopyDate
	ldr r0, [sp, #0xc]
	strh r0, [r4, #0x0]
	mov r0, #0x0
	add sp, #0x10
	pop {r4, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0239
ScrCmd_Unk0239: ; 0x0203EA90
	push {r4, lr}
	add r4, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r1, r0, #0x0
	ldr r0, [r4, #0x74]
	bl MOD06_022411F4
	mov r0, #0x1
	pop {r4, pc}

	thumb_func_start ScrCmd_Unk023A
ScrCmd_Unk023A: ; 0x0203EAB0
	push {r3-r7, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r5, #0x80
	add r7, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl SaveArray_PlayerParty_Get
	add r1, r7, #0x0
	bl GetPartyMonByIndex
	mov r1, #0x5
	mov r2, #0x0
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r5, #0x0
	bl MOD05_021F61E8
	strh r0, [r4, #0x0]
	add r0, r5, #0x0
	bl MOD05_021F61DC
	strh r0, [r6, #0x0]
	mov r0, #0x0
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk023B
ScrCmd_Unk023B: ; 0x0203EB20
	push {r4, lr}
	add r4, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r1, r0, #0x0
	add r4, #0x80
	lsl r1, r1, #0x18
	ldr r0, [r4, #0x0]
	lsr r1, r1, #0x18
	bl MOD06_0224C27C
	mov r0, #0x1
	pop {r4, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk023C
ScrCmd_Unk023C: ; 0x0203EB48
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r2, r0, #0x0
	add r5, #0x80
	lsl r1, r4, #0x18
	lsl r2, r2, #0x18
	ldr r0, [r5, #0x0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	bl MOD06_0224C520
	mov r0, #0x1
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk023D
ScrCmd_Unk023D: ; 0x0203EB88
	push {r4-r7, lr}
	sub sp, #0xc
	add r5, r0, #0x0
	ldr r1, [r5, #0x8]
	add r2, r1, #0x1
	str r2, [r5, #0x8]
	ldrb r6, [r1, #0x0]
	add r1, r2, #0x1
	str r1, [r5, #0x8]
	ldrb r4, [r2, #0x0]
	bl ScriptReadHalfword
	str r0, [sp, #0x8]
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r7, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	str r7, [sp, #0x0]
	add r5, #0x80
	str r0, [sp, #0x4]
	ldr r0, [r5, #0x0]
	ldr r3, [sp, #0x8]
	add r1, r6, #0x0
	add r2, r4, #0x0
	bl FUN_020607D4
	mov r0, #0x1
	add sp, #0xc
	pop {r4-r7, pc}

	thumb_func_start ScrCmd_GameVersion
ScrCmd_GameVersion: ; 0x0203EBC8
	push {r4, lr}
	add r4, r0, #0x0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0x0
	ldr r0, [r4, #0x0]
	bl GetVarPointer
	mov r1, #GAME_VERSION
	strh r1, [r0, #0x0]
	mov r0, #0x0
	pop {r4, pc}
	.balign 4

	thumb_func_start ScrCmd_GiveWallpaper
ScrCmd_GiveWallpaper: ; 0x0203EBE4
	push {r3-r7, lr}
	sub sp, #0x10
	add r5, r0, #0x0
	add r0, #0x80
	ldr r6, [r0, #0x0]
	add r0, r6, #0x0
	bl ScriptEnvironment_GetSavePtr
	bl Save_PlayerData_GetProfileAddr
	str r0, [sp, #0x4]
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r4, r0, #0x0
	ldr r0, [r6, #0xc]
	bl GetStoragePCPointer
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r7, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	str r0, [sp, #0x8]
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	str r0, [sp, #0xc]
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl VarGet
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x4]
	ldr r2, [sp, #0x8]
	ldr r3, [sp, #0xc]
	add r1, r7, #0x0
	bl MOD06_0224D14C
	add r5, r0, #0x0
	mov r0, #0x0
	mvn r0, r0
	cmp r5, r0
	beq _0203EC7E
	cmp r5, #0x7
	ble _0203EC88
_0203EC7E:
	mov r0, #0xff
	strh r0, [r4, #0x0]
	add sp, #0x10
	mov r0, #0x0
	pop {r3-r7, pc}
_0203EC88:
	add r0, r6, #0x0
	add r1, r5, #0x0
	bl PCStorage_IsBonusWallpaperUnlocked
	cmp r0, #0x0
	beq _0203EC98
	mov r0, #0x0
	b _0203ECA2
_0203EC98:
	add r0, r6, #0x0
	add r1, r5, #0x0
	bl PCStorage_UnlockBonusWallpaper
	add r0, r5, #0x1
_0203ECA2:
	strh r0, [r4, #0x0]
	mov r0, #0x0
	add sp, #0x10
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk024A
ScrCmd_Unk024A: ; 0x0203ECAC
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r1, r5, #0x0
	add r1, #0x80
	ldr r1, [r1, #0x0]
	ldr r4, [r1, #0xc]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl GetVarPointer
	add r5, r0, #0x0
	add r0, r4, #0x0
	bl FUN_02026CB4
	bl FUN_020269CC
	strh r0, [r5, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}

	thumb_func_start ScrCmd_Unk024B
ScrCmd_Unk024B: ; 0x0203ECD8
	push {r3, lr}
	add r1, r0, #0x0
	add r1, #0x80
	ldr r2, [r0, #0x8]
	ldr r3, [r1, #0x0]
	add r1, r2, #0x1
	str r1, [r0, #0x8]
	ldrb r1, [r2, #0x0]
	add r0, r3, #0x0
	bl MOD06_0224C678
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk024C
ScrCmd_Unk024C: ; 0x0203ECF4
	push {r3, lr}
	add r1, r0, #0x0
	add r1, #0x80
	ldr r2, [r0, #0x8]
	ldr r3, [r1, #0x0]
	add r1, r2, #0x1
	str r1, [r0, #0x8]
	ldrb r1, [r2, #0x0]
	add r0, r3, #0x0
	bl MOD06_0224C6E8
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk024D
ScrCmd_Unk024D: ; 0x0203ED10
	push {r3, lr}
	add r1, r0, #0x0
	add r1, #0x80
	ldr r2, [r0, #0x8]
	ldr r3, [r1, #0x0]
	add r1, r2, #0x1
	str r1, [r0, #0x8]
	ldrb r1, [r2, #0x0]
	add r0, r3, #0x0
	bl MOD06_0224C6F4
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start Script_SetMonSeenFlagBySpecies
Script_SetMonSeenFlagBySpecies: ; 0x0203ED2C
	push {r4-r6, lr}
	sub sp, #0x10
	ldr r0, [r0, #0xc]
	add r5, r1, #0x0
	bl Save_Pokedex_Get
	add r6, r0, #0x0
	mov r0, #0x20
	bl AllocMonZeroed
	add r4, r0, #0x0
	bl ZeroMonData
	mov r0, #0x0
	str r0, [sp, #0x0]
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	str r0, [sp, #0xc]
	add r0, r4, #0x0
	add r1, r5, #0x0
	mov r2, #0x32
	mov r3, #0x20
	bl CreateMon
	add r0, r6, #0x0
	add r1, r4, #0x0
	bl Pokedex_SetMonSeenFlag
	add r0, r4, #0x0
	bl FreeToHeap
	add sp, #0x10
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start ScrCmd_PCFreeSpace
ScrCmd_PCFreeSpace: ; 0x0203ED70
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r5, #0x80
	add r4, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl GetStoragePCPointer
	bl PCStorage_CountMonsAndEggsInAllBoxes
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0x87
	lsl r0, r0, #0x2
	sub r0, r0, r1
	strh r0, [r4, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}

	thumb_func_start ScrCmd_Unk0258
ScrCmd_Unk0258: ; 0x0203EDA4
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0x16
	bl FieldSysGetAttrAddr
	add r4, r0, #0x0
	mov r0, #0x0
	add r5, #0x80
	str r0, [r4, #0x0]
	ldr r0, [r5, #0x0]
	bl MOD05_021E7184
	str r0, [r4, #0x0]
	mov r0, #0x1
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0259
ScrCmd_Unk0259: ; 0x0203EDC8
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0x16
	bl FieldSysGetAttrAddr
	ldr r0, [r0, #0x0]
	bl MOD05_021E71E8
	mov r0, #0x1
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk025A
ScrCmd_Unk025A: ; 0x0203EDE0
	push {r4, lr}
	add r4, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r1, r0, #0x0
	add r4, #0x80
	lsl r1, r1, #0x18
	ldr r0, [r4, #0x0]
	lsr r1, r1, #0x18
	bl MOD06_0224E554
	mov r0, #0x1
	pop {r4, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk025B
ScrCmd_Unk025B: ; 0x0203EE08
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl FUN_0206486C
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk025C
ScrCmd_Unk025C: ; 0x0203EE18
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl FUN_020649D4
	mov r0, #0x1
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk025D
ScrCmd_Unk025D: ; 0x0203EE28
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r5, #0x80
	add r4, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_020649B0
	cmp r0, #0x0
	beq _0203EE4E
	mov r0, #0x1
	b _0203EE50
_0203EE4E:
	mov r0, #0x0
_0203EE50:
	strh r0, [r4, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk025E
ScrCmd_Unk025E: ; 0x0203EE58
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl MOD06_0224E764
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk025F
ScrCmd_Unk025F: ; 0x0203EE68
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl MOD06_0224E7C4
	mov r0, #0x1
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0260
ScrCmd_Unk0260: ; 0x0203EE78
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r5, #0x80
	add r4, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_GameStats_Get
	add r1, r4, #0x0
	bl GameStats_AddSpecial
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0262
ScrCmd_Unk0262: ; 0x0203EE98
	push {r4-r6, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r5, #0x80
	add r4, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl SaveArray_PlayerParty_Get
	add r1, r6, #0x0
	bl PartyHasMon
	strh r0, [r4, #0x0]
	mov r0, #0x1
	pop {r4-r6, pc}

	thumb_func_start ScrCmd_Unk0263
ScrCmd_Unk0263: ; 0x0203EED8
	push {r3-r7, lr}
	sub sp, #0x8
	add r4, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r1, sp, #0x4
	strh r0, [r1, #0x0]
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0xc]
	bl SaveArray_PlayerParty_Get
	str r0, [sp, #0x0]
	bl GetPartyCount
	add r4, #0x80
	add r6, r0, #0x0
	ldr r0, [r4, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_Pokedex_Get
	add r7, r0, #0x0
	mov r5, #0x0
	cmp r6, #0x0
	ble _0203EF4E
_0203EF18:
	ldr r0, [sp, #0x0]
	add r1, r5, #0x0
	bl GetPartyMonByIndex
	mov r1, #0x5
	mov r2, #0x0
	add r4, r0, #0x0
	bl GetMonData
	ldr r1, _0203EF54 ; =0x00000182
	cmp r0, r1
	bne _0203EF48
	add r0, r4, #0x0
	mov r1, #0x70
	add r2, sp, #0x4
	bl SetMonData
	add r0, r4, #0x0
	bl CalcMonLevelAndStats
	add r0, r7, #0x0
	add r1, r4, #0x0
	bl Pokedex_SetMonCaughtFlag
_0203EF48:
	add r5, r5, #0x1
	cmp r5, r6
	blt _0203EF18
_0203EF4E:
	mov r0, #0x1
	add sp, #0x8
	pop {r3-r7, pc}
	.balign 4
_0203EF54: .word 0x00000182

	thumb_func_start ScrCmd_Unk0264
ScrCmd_Unk0264: ; 0x0203EF58
	push {r3-r7, lr}
	sub sp, #0x30
	add r4, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r4, #0x80
	str r0, [sp, #0x0]
	ldr r0, [r4, #0x0]
	ldr r0, [r0, #0xc]
	bl SaveArray_PlayerParty_Get
	str r0, [sp, #0xc]
	bl GetPartyCount
	add r2, sp, #0x18
	mov r4, #0x0
	ldr r3, _0203F008 ; =UNK_020F34FC
	str r0, [sp, #0x8]
	add r7, r2, #0x0
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	ldr r0, [sp, #0x8]
	str r4, [sp, #0x4]
	cmp r0, #0x0
	ble _0203EFFC
	mov r5, #0x1
	str r7, [sp, #0x14]
_0203EFA2:
	ldr r0, [sp, #0xc]
	add r1, r4, #0x0
	bl GetPartyMonByIndex
	add r6, r0, #0x0
	mov r1, #0x5
	mov r2, #0x0
	bl GetMonData
	str r0, [sp, #0x10]
	add r0, r6, #0x0
	mov r1, #0x70
	mov r2, #0x0
	bl GetMonData
	add r3, r0, #0x0
	mov r0, #0x67
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0x2
	cmp r1, r0
	bne _0203EFF2
	mov r2, #0x0
	add r1, r2, #0x0
	str r3, [r7, #0x0]
	cmp r4, #0x0
	ble _0203EFE8
	ldr r6, [sp, #0x14]
_0203EFD8:
	ldr r0, [r6, #0x0]
	cmp r3, r0
	bne _0203EFE0
	add r2, r5, #0x0
_0203EFE0:
	add r1, r1, #0x1
	add r6, r6, #0x4
	cmp r1, r4
	blt _0203EFD8
_0203EFE8:
	cmp r2, #0x0
	bne _0203EFF2
	ldr r0, [sp, #0x4]
	add r0, r0, #0x1
	str r0, [sp, #0x4]
_0203EFF2:
	ldr r0, [sp, #0x8]
	add r4, r4, #0x1
	add r7, r7, #0x4
	cmp r4, r0
	blt _0203EFA2
_0203EFFC:
	ldr r1, [sp, #0x4]
	ldr r0, [sp, #0x0]
	strh r1, [r0, #0x0]
	mov r0, #0x1
	add sp, #0x30
	pop {r3-r7, pc}
	.balign 4
_0203F008: .word UNK_020F34FC

	thumb_func_start ScrCmd_Unk0265
ScrCmd_Unk0265: ; 0x0203F00C
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0xc]
	bl SaveArray_Flags_Get
	bl FUN_0205F1C4
	mov r0, #0x0
	pop {r3, pc}

	thumb_func_start ScrCmd_Unk0266
ScrCmd_Unk0266: ; 0x0203F020
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0xc]
	bl SaveArray_Flags_Get
	bl FUN_0205F1D4
	mov r0, #0x0
	pop {r3, pc}

	thumb_func_start ScrCmd_Unk0267
ScrCmd_Unk0267: ; 0x0203F034
	push {r4, lr}
	add r4, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r4, #0x80
	add r1, r0, #0x0
	ldr r0, [r4, #0x0]
	ldr r0, [r0, #0x10]
	bl FUN_020389CC
	mov r0, #0x1
	pop {r4, pc}

	thumb_func_start ScrCmd_Unk0268
ScrCmd_Unk0268: ; 0x0203F058
	push {r3-r5, lr}
	add r4, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r4, #0x80
	add r5, r0, #0x0
	ldr r0, [r4, #0x0]
	bl Script_GetHour
	strh r0, [r5, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}

	thumb_func_start ScrCmd_Unk0269
ScrCmd_Unk0269: ; 0x0203F07C
	push {r3-r7, lr}
	sub sp, #0x10
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r7, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	str r0, [sp, #0xc]
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	str r0, [sp, #0x8]
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r4, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	add r1, r7, #0x0
	ldr r0, [r0, #0x34]
	bl FUN_02058060
	add r7, r0, #0x0
	bne _0203F0FA
	bl GF_AssertFail
_0203F0FA:
	str r6, [sp, #0x0]
	str r4, [sp, #0x4]
	ldr r0, [r5, #0x74]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x8]
	add r1, r7, #0x0
	bl FUN_02054F50
	mov r0, #0x1
	add sp, #0x10
	pop {r3-r7, pc}

	thumb_func_start ScrCmd_Unk026A
ScrCmd_Unk026A: ; 0x0203F110
	push {r3-r7, lr}
	add r4, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r5, r0, #0x0
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r7, r0, #0x0
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r6, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	add r1, r5, #0x0
	ldr r0, [r0, #0x34]
	bl FUN_02058060
	add r5, r0, #0x0
	bne _0203F164
	bl GF_AssertFail
_0203F164:
	ldr r0, [r4, #0x74]
	add r1, r5, #0x0
	add r2, r7, #0x0
	add r3, r6, #0x0
	bl FUN_0205502C
	mov r0, #0x1
	pop {r3-r7, pc}

	thumb_func_start ScrCmd_Unk026B
ScrCmd_Unk026B: ; 0x0203F174
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r5, #0x80
	add r4, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl FUN_02054E30
	strh r0, [r4, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk026C
ScrCmd_Unk026C: ; 0x0203F19C
	push {r4-r7, lr}
	sub sp, #0x24
	add r4, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r4, #0x80
	str r0, [sp, #0x0]
	ldr r0, [r4, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_FashionData_Get
	bl FUN_0202708C
	mov r6, #0x0
	add r7, r0, #0x0
	add r4, r6, #0x0
	add r5, sp, #0x4
_0203F1CA:
	add r1, r4, #0x0
	add r0, r7, #0x0
	add r1, #0x22
	mov r2, #0x1
	bl FUN_020270D8
	cmp r0, #0x1
	bne _0203F1E0
	mov r0, #0x1
	strh r0, [r5, #0x0]
	add r6, r6, #0x1
_0203F1E0:
	add r4, r4, #0x1
	add r5, r5, #0x2
	cmp r4, #0x10
	blt _0203F1CA
	cmp r6, #0x0
	bne _0203F1F8
	ldr r0, [sp, #0x0]
	ldr r1, _0203F230 ; =0x0000FFFF
	add sp, #0x24
	strh r1, [r0, #0x0]
	mov r0, #0x0
	pop {r4-r7, pc}
_0203F1F8:
	bl LCRandom
	add r1, r6, #0x0
	bl _s32_div_f
	mov r4, #0x0
	add r2, sp, #0x4
_0203F206:
	ldrh r0, [r2, #0x0]
	cmp r0, #0x1
	bne _0203F212
	cmp r1, #0x0
	beq _0203F21A
	sub r1, r1, #0x1
_0203F212:
	add r4, r4, #0x1
	add r2, r2, #0x2
	cmp r4, #0x10
	blt _0203F206
_0203F21A:
	cmp r4, #0x10
	blt _0203F222
	bl GF_AssertFail
_0203F222:
	ldr r0, [sp, #0x0]
	add r4, #0x22
	strh r4, [r0, #0x0]
	mov r0, #0x0
	add sp, #0x24
	pop {r4-r7, pc}
	nop
_0203F230: .word 0x0000FFFF

	thumb_func_start ScrCmd_Unk026E
ScrCmd_Unk026E: ; 0x0203F234
	push {r4, lr}
	add r4, r0, #0x0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0x0
	ldr r0, [r4, #0x0]
	bl GetVarPointer
	ldr r1, _0203F250 ; =gSystem + 0x60
	ldrb r1, [r1, #0x6]
	strh r1, [r0, #0x0]
	mov r0, #0x1
	pop {r4, pc}
	.balign 4
_0203F250: .word gSystem + 0x60

	thumb_func_start ScrCmd_Unk026F
ScrCmd_Unk026F: ; 0x0203F254
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0xc]
	bl SaveArray_Flags_Get
	mov r1, #0x0
	bl FUN_0205F698
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0270
ScrCmd_Unk0270: ; 0x0203F26C
	push {r4-r6, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	ldr r1, [r5, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r5, #0x80
	ldr r0, [r5, #0x0]
	ldrb r4, [r1, #0x0]
	ldr r0, [r0, #0xc]
	bl SaveArray_Flags_Get
	cmp r4, #0x0
	beq _0203F2A0
	add r1, r6, #0x0
	bl FUN_0205F4E4
	b _0203F2A6
_0203F2A0:
	add r1, r6, #0x0
	bl FUN_0205F50C
_0203F2A6:
	mov r0, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0273
ScrCmd_Unk0273: ; 0x0203F2AC
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FieldSysGetAttrAddr
	ldr r1, [r5, #0x8]
	add r6, r0, #0x0
	add r0, r1, #0x1
	str r0, [r5, #0x8]
	add r0, r5, #0x0
	ldrb r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl VarGet
	add r2, r0, #0x0
	ldr r0, [r6, #0x0]
	add r1, r4, #0x0
	bl BufferContestBackgroundName
	mov r0, #0x1
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0275
ScrCmd_Unk0275: ; 0x0203F2E4
	push {r3-r5, lr}
	add r4, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0xc]
	bl SaveArray_Flags_Get
	add r5, r0, #0x0
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0x0
	ldr r0, [r4, #0x0]
	bl GetVarPointer
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl FUN_0205F6C8
	cmp r0, #0xa
	blo _0203F314
	mov r0, #0x1
	b _0203F316
_0203F314:
	mov r0, #0x0
_0203F316:
	strh r0, [r4, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}

	thumb_func_start ScrCmd_Unk0277
ScrCmd_Unk0277: ; 0x0203F31C
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r5, #0x80
	add r4, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl SaveArray_Flags_Get
	bl FUN_0205F648
	strh r0, [r4, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0279
ScrCmd_Unk0279: ; 0x0203F348
	push {r4-r6, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r5, #0x80
	add r6, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_FashionData_Get
	bl FUN_0202708C
	add r1, r4, #0x0
	add r2, r6, #0x0
	bl FUN_02027210
	mov r0, #0x0
	pop {r4-r6, pc}

	thumb_func_start ScrCmd_Unk027A
ScrCmd_Unk027A: ; 0x0203F38C
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl FUN_02046030
	mov r0, #0x1
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk027B
ScrCmd_Unk027B: ; 0x0203F39C
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0xc]
	bl FUN_0205F668
	mov r0, #0x0
	pop {r3, pc}

	thumb_func_start ScrCmd_Unk027D
ScrCmd_Unk027D: ; 0x0203F3AC
	push {r3-r7, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r7, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FieldSysGetAttrAddr
	add r5, #0x80
	add r6, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl FUN_02013B5C
	bl FUN_02013B74
	cmp r0, #0x20
	bne _0203F3FE
	ldr r0, _0203F414 ; =0x0000FFFF
	strh r0, [r4, #0x0]
	mov r0, #0x0
	pop {r3-r7, pc}
_0203F3FE:
	strh r0, [r4, #0x0]
	bl FUN_02013BE4
	add r2, r0, #0x0
	ldr r0, [r6, #0x0]
	add r1, r7, #0x0
	bl BufferECWord
	mov r0, #0x0
	pop {r3-r7, pc}
	nop
_0203F414: .word 0x0000FFFF

	thumb_func_start ScrCmd_Unk027F
ScrCmd_Unk027F: ; 0x0203F418
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r5, #0x80
	add r4, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl FUN_02013B5C
	bl FUN_02013BC8
	cmp r0, #0x1
	bne _0203F444
	mov r0, #0x1
	b _0203F446
_0203F444:
	mov r0, #0x0
_0203F446:
	strh r0, [r4, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}

	thumb_func_start ScrCmd_Unk027E
ScrCmd_Unk027E: ; 0x0203F44C
	push {r3-r5, lr}
	add r4, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0xc]
	bl SaveArray_Flags_Get
	add r5, r0, #0x0
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0x0
	ldr r0, [r4, #0x0]
	bl GetVarPointer
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl FUN_0205F710
	cmp r0, #0x5
	blo _0203F47C
	mov r0, #0x1
	b _0203F47E
_0203F47C:
	mov r0, #0x0
_0203F47E:
	strh r0, [r4, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}

	thumb_func_start ScrCmd_Unk0282
ScrCmd_Unk0282: ; 0x0203F484
	push {r3-r7, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r5, #0x80
	ldr r5, [r5, #0x0]
	add r4, r0, #0x0
	ldr r0, [r5, #0xc]
	bl Save_SysInfo_Get
	add r7, r0, #0x0
	bl Save_SysInfo_GetBirthMonth
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl Script_GetMonth
	cmp r6, r0
	bne _0203F4CE
	add r0, r7, #0x0
	bl Save_SysInfo_GetBirthDay
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl Script_GetDay
	cmp r6, r0
	bne _0203F4CE
	mov r0, #0x1
	strh r0, [r4, #0x0]
	b _0203F4D2
_0203F4CE:
	mov r0, #0x0
	strh r0, [r4, #0x0]
_0203F4D2:
	mov r0, #0x0
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0284
ScrCmd_Unk0284: ; 0x0203F4D8
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_Pokedex_Get
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl GetVarPointer
	add r5, r0, #0x0
	add r0, r4, #0x0
	bl Pokedex_CountSeenUnown
	strh r0, [r5, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0285
ScrCmd_Unk0285: ; 0x0203F508
	push {r3-r7, lr}
	add r6, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r6, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r7, r0, #0x0
	add r0, r6, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r6, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r1, r6, #0x0
	add r1, #0x80
	ldr r1, [r1, #0x0]
	ldr r2, [r1, #0x1c]
	ldr r1, [r2, #0x8]
	lsl r1, r1, #0x10
	lsr r5, r1, #0x10
	ldr r1, [r2, #0xc]
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	cmp r7, #0x3
	blo _0203F54C
	ldr r7, _0203F5C8 ; =0x0000010E
	b _0203F582
_0203F54C:
	cmp r0, #0x1e
	blo _0203F556
	mov r7, #0x43
	lsl r7, r7, #0x2
	b _0203F582
_0203F556:
	bl LCRandom
	mov r1, #0x64
	bl _s32_div_f
	cmp r1, #0x19
	bge _0203F568
	ldr r7, _0203F5CC ; =0x0000010D
	b _0203F582
_0203F568:
	bl LCRandom
	mov r1, #0x6
	bl _s32_div_f
	lsl r0, r1, #0x10
	lsr r1, r0, #0x10
	mov r0, #0x6
	mul r0, r7
	add r0, r1, r0
	lsl r1, r0, #0x1
	ldr r0, _0203F5D0 ; =UNK_020F3538
	ldrh r7, [r0, r1]
_0203F582:
	cmp r5, #0xb
	bne _0203F59A
	cmp r4, #0x1
	bne _0203F58E
	mov r4, #0x0
	b _0203F5A4
_0203F58E:
	cmp r4, #0x14
	bne _0203F596
	mov r4, #0x2
	b _0203F5A4
_0203F596:
	mov r4, #0x5
	b _0203F5A4
_0203F59A:
	cmp r5, #0x14
	bne _0203F5A2
	mov r4, #0x1
	b _0203F5A4
_0203F5A2:
	mov r4, #0x3
_0203F5A4:
	mov r5, #0x0
_0203F5A6:
	cmp r5, r4
	beq _0203F5B8
	add r0, r6, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	add r1, r5, #0x0
	add r2, r7, #0x0
	bl FUN_02034C24
_0203F5B8:
	add r0, r5, #0x1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0x4
	blo _0203F5A6
	mov r0, #0x0
	pop {r3-r7, pc}
	nop
_0203F5C8: .word 0x0000010E
_0203F5CC: .word 0x0000010D
_0203F5D0: .word UNK_020F3538

	thumb_func_start ScrCmd_Unk0286
ScrCmd_Unk0286: ; 0x0203F5D4
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0xc]
	bl SaveArray_Flags_Get
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl GetVarPointer
	add r5, r0, #0x0
	add r0, r4, #0x0
	bl FUN_0205F720
	strh r0, [r5, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0287
ScrCmd_Unk0287: ; 0x0203F604
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0xc]
	bl SaveArray_Flags_Get
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl GetVarPointer
	add r5, r0, #0x0
	add r0, r4, #0x0
	bl FUN_0205F740
	strh r0, [r5, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0288
ScrCmd_Unk0288: ; 0x0203F634
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0xc]
	bl SaveArray_Flags_Get
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl GetVarPointer
	add r5, r0, #0x0
	add r0, r4, #0x0
	bl FUN_0205F760
	strh r0, [r5, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0289
ScrCmd_Unk0289: ; 0x0203F664
	push {r3-r7, lr}
	sub sp, #0x8
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r4, r0, #0x0
	add r0, r5, #0x0
	mov r2, #0x0
	add r3, sp, #0x0
	add r0, #0x8
_0203F684:
	ldr r6, [r0, #0x0]
	ldr r1, [r5, #0x8]
	add r6, r6, #0x1
	str r6, [r0, #0x0]
	ldrb r1, [r1, #0x0]
	add r2, r2, #0x1
	strb r1, [r3, #0x0]
	add r3, r3, #0x1
	cmp r2, #0x5
	blt _0203F684
	ldr r1, [r0, #0x0]
	ldr r2, [r5, #0x8]
	add r1, r1, #0x1
	str r1, [r0, #0x0]
	ldrb r6, [r2, #0x0]
	mov r0, #0x4
	bl FUN_02027E5C
	add r1, sp, #0x0
	add r2, r6, #0x0
	mov r3, #0x0
	add r7, r0, #0x0
	bl FUN_02027F04
	add r5, #0x80
	add r6, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl FUN_02028048
	add r1, r7, #0x0
	bl FUN_02028094
	add r5, r0, #0x0
	add r0, r7, #0x0
	bl FreeToHeap
	ldr r0, _0203F6E0 ; =0x0000FFFF
	cmp r5, r0
	bne _0203F6D8
	strh r0, [r4, #0x0]
	b _0203F6DA
_0203F6D8:
	strh r6, [r4, #0x0]
_0203F6DA:
	mov r0, #0x0
	add sp, #0x8
	pop {r3-r7, pc}
	.balign 4
_0203F6E0: .word 0x0000FFFF

	thumb_func_start ScrCmd_Unk028A
ScrCmd_Unk028A: ; 0x0203F6E4
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r5, #0x80
	add r4, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl FUN_02028048
	bl FUN_02028074
	ldr r1, _0203F71C ; =0x0000FFFF
	cmp r0, r1
	bne _0203F712
	mov r0, #0x0
	b _0203F714
_0203F712:
	mov r0, #0x1
_0203F714:
	strh r0, [r4, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}
	nop
_0203F71C: .word 0x0000FFFF

	thumb_func_start ScrCmd_Unk028B
ScrCmd_Unk028B: ; 0x0203F720
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r2, [r5, #0x8]
	add r1, r2, #0x1
	str r1, [r5, #0x8]
	ldrb r4, [r2, #0x0]
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r5, #0x80
	add r6, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl SaveArray_Flags_Get
	add r5, r0, #0x0
	cmp r4, #0x3
	bls _0203F752
	bl GF_AssertFail
_0203F752:
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_0205F4A0
	strh r0, [r6, #0x0]
	mov r0, #0x0
	pop {r4-r6, pc}

	thumb_func_start ScrCmd_Unk028F
ScrCmd_Unk028F: ; 0x0203F760
	push {r3-r5, lr}
	add r4, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r4, #0x80
	add r5, r0, #0x0
	ldr r0, [r4, #0x0]
	mov r1, #0x20
	ldr r0, [r0, #0xc]
	add r2, sp, #0x0
	bl LoadHallOfFame
	ldr r1, [sp, #0x0]
	add r4, r0, #0x0
	cmp r1, #0x0
	bne _0203F798
	mov r1, #0x0
	strh r1, [r5, #0x0]
	bl FreeToHeap
	mov r0, #0x1
	pop {r3-r5, pc}
_0203F798:
	cmp r1, #0x1
	bne _0203F7AE
	mov r1, #0x0
	bl Save_HOF_TranslateRecordIdx
	strh r0, [r5, #0x0]
	add r0, r4, #0x0
	bl FreeToHeap
	mov r0, #0x1
	pop {r3-r5, pc}
_0203F7AE:
	cmp r1, #0x2
	bne _0203F7BE
	mov r1, #0x0
	strh r1, [r5, #0x0]
	bl FreeToHeap
	mov r0, #0x1
	pop {r3-r5, pc}
_0203F7BE:
	mov r0, #0x0
	strh r0, [r5, #0x0]
	mov r0, #0x1
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0290
ScrCmd_Unk0290: ; 0x0203F7C8
	push {r4-r6, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r6, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0x13
	bl FieldSysGetAttrAddr
	add r1, r5, #0x0
	add r1, #0x80
	add r4, r0, #0x0
	ldr r1, [r1, #0x0]
	mov r0, #0x20
	add r2, r6, #0x0
	bl FUN_02037A48
	str r0, [r4, #0x0]
	ldr r1, _0203F808 ; =FUN_0203BC04
	add r0, r5, #0x0
	bl SetupNativeScript
	mov r0, #0x1
	pop {r4-r6, pc}
	.balign 4
_0203F808: .word FUN_0203BC04 

	thumb_func_start ScrCmd_Unk0291
ScrCmd_Unk0291: ; 0x0203F80C
	push {r4-r6, lr}
	add r4, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r6, r0, #0x0
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r4, #0x80
	add r5, r0, #0x0
	ldr r0, [r4, #0x0]
	mov r1, #0x13
	bl FieldSysGetAttrAddr
	add r4, r0, #0x0
	ldr r0, [r4, #0x0]
	cmp r0, #0x0
	bne _0203F84C
	bl GF_AssertFail
_0203F84C:
	ldr r0, [r4, #0x0]
	bl FUN_02037A40
	strh r0, [r6, #0x0]
	ldrh r0, [r6, #0x0]
	cmp r0, #0x7
	bne _0203F85E
	mov r0, #0xff
	strh r0, [r6, #0x0]
_0203F85E:
	ldr r0, [r4, #0x0]
	bl FUN_02037A70
	strh r0, [r5, #0x0]
	ldrh r0, [r5, #0x0]
	cmp r0, #0x1
	bne _0203F870
	mov r0, #0x1
	b _0203F872
_0203F870:
	mov r0, #0x0
_0203F872:
	strh r0, [r5, #0x0]
	ldr r0, [r4, #0x0]
	bl FreeToHeap
	mov r0, #0x0
	str r0, [r4, #0x0]
	pop {r4-r6, pc}

	thumb_func_start ScrCmd_Unk0292
ScrCmd_Unk0292: ; 0x0203F880
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r2, [r5, #0x8]
	add r1, r2, #0x1
	str r1, [r5, #0x8]
	ldrb r4, [r2, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl GetVarPointer
	add r5, r0, #0x0
	cmp r4, #0x64
	bls _0203F8A2
	mov r4, #0x64
_0203F8A2:
	bl LCRandom
	mov r1, #0x65
	bl _s32_div_f
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	cmp r0, r4
	bgt _0203F8B8
	mov r0, #0x1
	b _0203F8BA
_0203F8B8:
	mov r0, #0x0
_0203F8BA:
	strh r0, [r5, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}

	thumb_func_start ScrCmd_Unk029E
ScrCmd_Unk029E: ; 0x0203F8C0
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	cmp r4, #0x0
	beq _0203F8FC
	cmp r4, #0x1
	beq _0203F906
	cmp r4, #0x2
	beq _0203F910
	b _0203F91A
_0203F8FC:
	mov r2, #0x0
	mov r3, #0x20
	bl MOD06_0224F12C
	b _0203F91E
_0203F906:
	mov r2, #0x1
	mov r3, #0x20
	bl MOD06_0224F12C
	b _0203F91E
_0203F910:
	mov r2, #0x2
	mov r3, #0x20
	bl MOD06_0224F12C
	b _0203F91E
_0203F91A:
	bl GF_AssertFail
_0203F91E:
	mov r0, #0x1
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk0293
ScrCmd_Unk0293: ; 0x0203F924
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0xc]
	bl SaveArray_Flags_Get
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl GetVarPointer
	add r5, r0, #0x0
	add r0, r4, #0x0
	bl FUN_0205F6A8
	strh r0, [r5, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk029F
ScrCmd_Unk029F: ; 0x0203F954
	push {r4, lr}
	add r4, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	cmp r0, #0x0
	bne _0203F978
	add r4, #0x80
	ldr r0, [r4, #0x0]
	ldr r0, [r0, #0x10]
	bl MOD06_02239944
	b _0203F982
_0203F978:
	add r4, #0x80
	ldr r0, [r4, #0x0]
	ldr r0, [r0, #0x10]
	bl MOD06_02239AAC
_0203F982:
	mov r0, #0x1
	pop {r4, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk02A3
ScrCmd_Unk02A3: ; 0x0203F988
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r5, #0x80
	add r4, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl FUN_0203384C
	strh r0, [r4, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk02A4
ScrCmd_Unk02A4: ; 0x0203F9B0
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r5, #0x80
	add r4, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl FUN_020286EC
	bl FUN_02028448
	strh r0, [r4, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk02A2
ScrCmd_Unk02A2: ; 0x0203F9DC
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r5, #0x80
	add r4, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl FUN_02026CC4
	ldr r1, _0203FA10 ; =0x0000FF79
	add r1, r4, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, #0x1
	bhi _0203FA0C
	bl FUN_02025C30
_0203FA0C:
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4
_0203FA10: .word 0x0000FF79

	thumb_func_start ScrCmd_Unk02A7
ScrCmd_Unk02A7: ; 0x0203FA14
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl GetVarPointer
	mov r1, #0x0
	strh r1, [r0, #0x0]
	ldr r1, _0203FA54 ; =0x0000012A
	cmp r4, r1
	blo _0203FA4E
	add r1, #0xf
	cmp r4, r1
	bhi _0203FA4E
	mov r1, #0x1
	strh r1, [r0, #0x0]
_0203FA4E:
	mov r0, #0x0
	pop {r3-r5, pc}
	nop
_0203FA54: .word 0x0000012A

	thumb_func_start ScrCmd_Unk02AA
ScrCmd_Unk02AA: ; 0x0203FA58
	push {r3-r7, lr}
	sub sp, #0x10
	add r4, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r6, r0, #0x0
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	str r0, [sp, #0x4]
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	str r0, [sp, #0x8]
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	str r0, [sp, #0xc]
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r4, #0x80
	add r1, r0, #0x0
	ldr r0, [r4, #0x0]
	bl VarGet
	add r7, r0, #0x0
	mov r0, #0x20
	bl MessageFormat_New
	add r4, r0, #0x0
	ldr r2, _0203FB48 ; =0x00000147
	mov r0, #0x0
	mov r1, #0x1a
	mov r3, #0x20
	bl NewMsgDataFromNarc
	add r5, r0, #0x0
	ldr r2, [sp, #0x4]
	add r0, r4, #0x0
	mov r1, #0x0
	bl BufferECWord
	ldr r2, [sp, #0x8]
	add r0, r4, #0x0
	mov r1, #0x1
	bl BufferECWord
	ldr r2, [sp, #0xc]
	add r0, r4, #0x0
	mov r1, #0x2
	bl BufferECWord
	add r0, r4, #0x0
	mov r1, #0x3
	add r2, r7, #0x0
	bl BufferECWord
	add r0, r4, #0x0
	add r1, r5, #0x0
	mov r2, #0x1
	mov r3, #0x20
	bl ReadMsgData_ExpandPlaceholders
	add r7, r0, #0x0
	add r0, r5, #0x0
	mov r1, #0x0
	bl NewString_ReadMsgData
	str r0, [sp, #0x0]
	ldr r1, [sp, #0x0]
	add r0, r7, #0x0
	bl StringCompare
	cmp r0, #0x0
	bne _0203FB24
	mov r0, #0x1
	b _0203FB26
_0203FB24:
	mov r0, #0x0
_0203FB26:
	strh r0, [r6, #0x0]
	add r0, r7, #0x0
	bl String_Delete
	ldr r0, [sp, #0x0]
	bl String_Delete
	add r0, r5, #0x0
	bl DestroyMsgData
	add r0, r4, #0x0
	bl MessageFormat_Delete
	mov r0, #0x0
	add sp, #0x10
	pop {r3-r7, pc}
	nop
_0203FB48: .word 0x00000147

	thumb_func_start ScrCmd_Unk02AC
ScrCmd_Unk02AC: ; 0x0203FB4C
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_SysInfo_Get
	mov r1, #0x1
	bl FUN_02023828
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk02AF
ScrCmd_Unk02AF: ; 0x0203FB64
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r1, r5, #0x0
	add r1, #0x80
	ldr r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl GetVarPointer
	add r5, r0, #0x0
	add r0, r4, #0x0
	mov r1, #0xf
	bl FieldSysGetAttrAddr
	ldr r0, [r0, #0x0]
	bl FUN_0205296C
	strh r0, [r5, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk02B0
ScrCmd_Unk02B0: ; 0x0203FB94
	push {r3, lr}
	bl FUN_02033E74
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk02B1
ScrCmd_Unk02B1: ; 0x0203FBA0
	push {r3, lr}
	bl FUN_02033ED0
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk02B2
ScrCmd_Unk02B2: ; 0x0203FBAC
	push {r3, lr}
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl FUN_02034E48
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk02B5
ScrCmd_Unk02B5: ; 0x0203FBBC
	push {r3-r7, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	add r5, #0x80
	add r7, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_LocalFieldData_Get
	bl FUN_02034DCC
	str r4, [r0, #0x0]
	str r6, [r0, #0x8]
	mov r1, #0x0
	str r7, [r0, #0xc]
	mvn r1, r1
	str r1, [r0, #0x4]
	mov r1, #0x1
	str r1, [r0, #0x10]
	mov r0, #0x0
	pop {r3-r7, pc}

	thumb_func_start ScrCmd_Unk02B6
ScrCmd_Unk02B6: ; 0x0203FC1C
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl VarGet
	ldr r2, [r5, #0x8]
	add r1, r0, #0x0
	add r0, r2, #0x1
	str r0, [r5, #0x8]
	add r5, #0x80
	ldr r0, [r5, #0x0]
	ldrb r4, [r2, #0x0]
	ldr r0, [r0, #0x34]
	bl FUN_02058060
	add r5, r0, #0x0
	bne _0203FC4C
	bl GF_AssertFail
_0203FC4C:
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_020588B8
	mov r0, #0x0
	pop {r3-r5, pc}

	thumb_func_start ScrCmd_Unk02BE
ScrCmd_Unk02BE: ; 0x0203FC58
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r1, r5, #0x0
	add r1, #0x80
	ldr r4, [r1, #0x0]
	bl ScriptReadHalfword
	add r5, #0x80
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	bl GetVarPointer
	add r5, r0, #0x0
	add r0, r4, #0x0
	bl FUN_02065078
	strh r0, [r5, #0x0]
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk02C1
ScrCmd_Unk02C1: ; 0x0203FC80
	push {r3-r5, lr}
	add r0, #0x80
	ldr r5, [r0, #0x0]
	mov r1, #0x28
	add r0, r5, #0x0
	bl FieldSysGetAttrAddr
	add r4, r0, #0x0
	ldr r0, [r5, #0xc]
	bl Save_FileDoesNotBelongToPlayer
	cmp r0, #0x0
	bne _0203FCAA
	add r0, r5, #0x0
	mov r1, #0x4
	mov r2, #0x3
	bl MOD05_021E8588
	str r0, [r4, #0x0]
	bl MOD05_021E84F4
_0203FCAA:
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk02C2
ScrCmd_Unk02C2: ; 0x0203FCB0
	push {r3-r5, lr}
	add r0, #0x80
	ldr r5, [r0, #0x0]
	mov r1, #0x28
	add r0, r5, #0x0
	bl FieldSysGetAttrAddr
	add r4, r0, #0x0
	ldr r0, [r5, #0xc]
	bl Save_FileDoesNotBelongToPlayer
	cmp r0, #0x0
	bne _0203FCD6
	ldr r0, [r4, #0x0]
	bl MOD05_021E856C
	ldr r0, [r4, #0x0]
	bl MOD05_021E85E4
_0203FCD6:
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start ScrCmd_Unk02C3
ScrCmd_Unk02C3: ; 0x0203FCDC
	push {r3, lr}
	ldr r2, [r0, #0x8]
	add r1, r2, #0x1
	str r1, [r0, #0x8]
	add r0, #0x80
	ldrb r1, [r2, #0x0]
	ldr r0, [r0, #0x0]
	bl FUN_0206367C
	mov r0, #0x0
	pop {r3, pc}
	.balign 4
