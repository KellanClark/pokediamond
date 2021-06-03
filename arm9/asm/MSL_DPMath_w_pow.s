	.include "asm/macros.inc"
	.include "global.inc"

	.text

	arm_func_start pow
pow: ; 0x020E8564
	ldr ip, _020E856C ; =__ieee754_pow
	bx r12
	.balign 4
_020E856C: .word __ieee754_pow
	arm_func_end pow

	.section .exceptix,4

	.word pow
	.short 13
	.word 0x00000000
