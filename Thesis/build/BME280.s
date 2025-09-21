	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.cpu	cortex-a8
	.eabi_attribute	6, 10	@ Tag_CPU_arch
	.eabi_attribute	7, 65	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.fpu	neon
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 2	@ Tag_ABI_FP_denormal
	.eabi_attribute	23, 1	@ Tag_ABI_FP_number_model
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	28, 1	@ Tag_ABI_VFP_args
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.eabi_attribute	68, 1	@ Tag_Virtualization_use
	.file	"/root/Bela/projects/Thesis/build/BME280.bc"
	.file	1 "./include" "I2c.h"
	.file	2 "/usr/include/arm-linux-gnueabihf/bits" "types.h"
	.file	3 "/usr/include" "stdio.h"
	.file	4 "/usr/lib/llvm-3.9/bin/../lib/clang/3.9.1/include" "stddef.h"
	.file	5 "/usr/include" "stdint.h"
	.file	6 "/root/Bela/projects/Thesis" "BME280.h"
	.file	7 "/usr/include/arm-linux-gnueabihf/sys" "types.h"
	.file	8 "/usr/bin/../lib/gcc/arm-linux-gnueabihf/6.3.0/../../../../include/arm-linux-gnueabihf/c++/6.3.0/bits" "c++config.h"
	.file	9 "/usr/include/arm-linux-gnueabihf/bits" "math-finite.h"
	.file	10 "/usr/include/arm-linux-gnueabihf/bits" "mathcalls.h"
	.file	11 "/usr/include/arm-linux-gnueabihf/bits" "mathdef.h"
	.file	12 "/usr/include" "unistd.h"
	.file	13 "/usr/include" "time.h"
	.globl	_ZN6BME280C2ERKNS_8SettingsE
	.p2align	2
	.type	_ZN6BME280C2ERKNS_8SettingsE,%function
_ZN6BME280C2ERKNS_8SettingsE:           @ @_ZN6BME280C2ERKNS_8SettingsE
.Lfunc_begin0:
	.file	14 "/root/Bela/projects/Thesis" "BME280.cpp"
	.loc	14 41 0                 @ /root/Bela/projects/Thesis/BME280.cpp:41:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: BME280:this <- %R0
	@DEBUG_VALUE: BME280:settings <- %R1
	.loc	14 41 1 prologue_end    @ /root/Bela/projects/Thesis/BME280.cpp:41:1
	movw	r2, :lower16:_ZTV6BME280
	movt	r2, :upper16:_ZTV6BME280
	add	r2, r2, #8
	str	r2, [r0]
	.loc	14 39 3                 @ /root/Bela/projects/Thesis/BME280.cpp:39:3
	vld1.32	{d16, d17}, [r1]
	add	r1, r1, #12
.Ltmp0:
	vld1.32	{d18, d19}, [r1]
	add	r1, r0, #28
	vst1.32	{d18, d19}, [r1]
	add	r1, r0, #16
	vst1.32	{d16, d17}, [r1]
	.loc	14 40 3                 @ /root/Bela/projects/Thesis/BME280.cpp:40:3
	mov	r1, #0
	strb	r1, [r0, #80]
	.loc	14 42 1                 @ /root/Bela/projects/Thesis/BME280.cpp:42:1
	bx	lr
.Ltmp1:
.Lfunc_end0:
	.size	_ZN6BME280C2ERKNS_8SettingsE, .Lfunc_end0-_ZN6BME280C2ERKNS_8SettingsE
	.cfi_endproc
	.fnend

	.globl	_ZN6BME28010InitializeEv
	.p2align	2
	.type	_ZN6BME28010InitializeEv,%function
_ZN6BME28010InitializeEv:               @ @_ZN6BME28010InitializeEv
.Lfunc_begin1:
	.loc	14 47 0                 @ /root/Bela/projects/Thesis/BME280.cpp:47:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
.Ltmp2:
	.cfi_def_cfa_offset 36
.Ltmp3:
	.cfi_offset lr, -4
.Ltmp4:
	.cfi_offset r11, -8
.Ltmp5:
	.cfi_offset r10, -12
.Ltmp6:
	.cfi_offset r9, -16
.Ltmp7:
	.cfi_offset r8, -20
.Ltmp8:
	.cfi_offset r7, -24
.Ltmp9:
	.cfi_offset r6, -28
.Ltmp10:
	.cfi_offset r5, -32
.Ltmp11:
	.cfi_offset r4, -36
	.setfp	r11, sp, #28
	add	r11, sp, #28
.Ltmp12:
	.cfi_def_cfa r11, 8
	.pad	#28
	sub	sp, sp, #28
	@DEBUG_VALUE: Initialize:this <- %R0
	mov	r4, r0
.Ltmp13:
	@DEBUG_VALUE: ReadChipID:this <- %R4
	@DEBUG_VALUE: Initialize:success <- 1
	@DEBUG_VALUE: Initialize:this <- %R4
	add	r2, sp, #23
.Ltmp14:
	.loc	14 92 5 prologue_end    @ /root/Bela/projects/Thesis/BME280.cpp:92:5
	ldr	r0, [r4]
	mov	r1, #208
	mov	r3, #1
	ldr	r7, [r0, #24]
	mov	r0, r4
	blx	r7
	.loc	14 95 11                @ /root/Bela/projects/Thesis/BME280.cpp:95:11
	ldrb	r0, [sp, #23]
	.loc	14 95 4 is_stmt 0       @ /root/Bela/projects/Thesis/BME280.cpp:95:4
	cmp	r0, #88
	beq	.LBB1_3
.Ltmp15:
@ BB#1:
	@DEBUG_VALUE: Initialize:this <- %R4
	@DEBUG_VALUE: ReadChipID:this <- %R4
	cmp	r0, #96
	bne	.LBB1_7
.Ltmp16:
@ BB#2:
	@DEBUG_VALUE: Initialize:this <- %R4
	@DEBUG_VALUE: ReadChipID:this <- %R4
	.loc	14 98 23 is_stmt 1      @ /root/Bela/projects/Thesis/BME280.cpp:98:23
	mov	r0, #96
	b	.LBB1_4
.Ltmp17:
.LBB1_3:
	@DEBUG_VALUE: Initialize:this <- %R4
	@DEBUG_VALUE: ReadChipID:this <- %R4
	.loc	14 101 23               @ /root/Bela/projects/Thesis/BME280.cpp:101:23
	mov	r0, #88
.Ltmp18:
.LBB1_4:
	@DEBUG_VALUE: Initialize:this <- %R4
	@DEBUG_VALUE: ReadChipID:this <- %R4
	str	r0, [r4, #76]
.Ltmp19:
	@DEBUG_VALUE: ReadTrim:ord <- 0
	@DEBUG_VALUE: ReadTrim:success <- 1
	@DEBUG_VALUE: ReadTrim:this <- %R4
	.loc	14 178 44               @ /root/Bela/projects/Thesis/BME280.cpp:178:44
	add	r2, r4, #44
	.loc	14 178 15 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:178:15
	ldr	r0, [r4]
	mov	r1, #136
	mov	r3, #6
	ldr	r7, [r0, #24]
	mov	r0, r4
	blx	r7
	mov	r5, r0
.Ltmp20:
	@DEBUG_VALUE: ReadTrim:ord <- 6
	.loc	14 183 15 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:183:15
	ldr	r0, [r4]
	.loc	14 183 45 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:183:45
	add	r2, r4, #50
	.loc	14 183 15               @ /root/Bela/projects/Thesis/BME280.cpp:183:15
	mov	r1, #142
	mov	r3, #18
	ldr	r7, [r0, #24]
	mov	r0, r4
	blx	r7
	mov	r6, r0
.Ltmp21:
	@DEBUG_VALUE: ReadTrim:ord <- 24
	.loc	14 188 15 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:188:15
	ldr	r0, [r4]
	.loc	14 188 44 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:188:44
	add	r2, r4, #68
	.loc	14 188 15               @ /root/Bela/projects/Thesis/BME280.cpp:188:15
	mov	r1, #161
	mov	r3, #1
	ldr	r7, [r0, #24]
	mov	r0, r4
	blx	r7
.Ltmp22:
	@DEBUG_VALUE: ReadTrim:ord <- 25
	.loc	14 193 15 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:193:15
	ldr	r1, [r4]
	.loc	14 193 44 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:193:44
	add	r2, r4, #69
	.loc	14 193 15               @ /root/Bela/projects/Thesis/BME280.cpp:193:15
	mov	r3, #7
	ldr	r7, [r1, #24]
	.loc	14 178 15 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:178:15
	and	r1, r5, r6
	.loc	14 183 12               @ /root/Bela/projects/Thesis/BME280.cpp:183:12
	and	r8, r1, r0
	.loc	14 193 15               @ /root/Bela/projects/Thesis/BME280.cpp:193:15
	mov	r0, r4
	mov	r1, #225
	blx	r7
.Ltmp23:
	@DEBUG_VALUE: ReadTrim:ord <- 32
	.loc	14 56 21                @ /root/Bela/projects/Thesis/BME280.cpp:56:21
	ldr	r7, [r4, #36]
.Ltmp24:
	@DEBUG_VALUE: InitializeFilter:filter <- %R7
	@DEBUG_VALUE: InitializeFilter:this <- %R4
	mov	r1, #0
.Ltmp25:
	.loc	14 56 10 is_stmt 0      @ /root/Bela/projects/Thesis/BME280.cpp:56:10
	cmp	r7, #0
	beq	.LBB1_6
.Ltmp26:
@ BB#5:
	@DEBUG_VALUE: InitializeFilter:this <- %R4
	@DEBUG_VALUE: InitializeFilter:filter <- %R7
	@DEBUG_VALUE: ReadTrim:this <- %R4
	@DEBUG_VALUE: Initialize:this <- %R4
	@DEBUG_VALUE: ReadChipID:this <- %R4
	.loc	14 76 21 is_stmt 1      @ /root/Bela/projects/Thesis/BME280.cpp:76:21
	str	r1, [r4, #36]
.Ltmp27:
	.loc	14 165 73               @ /root/Bela/projects/Thesis/BME280.cpp:165:73
	add	r10, r4, #24
	str	r0, [sp, #12]           @ 4-byte Spill
.Ltmp28:
	.loc	14 119 4                @ /root/Bela/projects/Thesis/BME280.cpp:119:4
	ldr	r0, [r4]
.Ltmp29:
	@DEBUG_VALUE: CalculateRegisters:this <- %R4
	.loc	14 167 110              @ /root/Bela/projects/Thesis/BME280.cpp:167:110
	ldr	r1, [r4, #40]
	.loc	14 165 36               @ /root/Bela/projects/Thesis/BME280.cpp:165:36
	ldr	r6, [r4, #16]
	.loc	14 165 109 is_stmt 0    @ /root/Bela/projects/Thesis/BME280.cpp:165:109
	str	r1, [sp, #16]           @ 4-byte Spill
.Ltmp30:
	.loc	14 119 4 is_stmt 1      @ /root/Bela/projects/Thesis/BME280.cpp:119:4
	mov	r1, #242
.Ltmp31:
	.loc	14 165 73               @ /root/Bela/projects/Thesis/BME280.cpp:165:73
	ldm	r10, {r5, r9, r10}
.Ltmp32:
	.loc	14 119 4                @ /root/Bela/projects/Thesis/BME280.cpp:119:4
	ldr	r3, [r0, #20]
	mov	r0, r4
	ldrb	r2, [r4, #20]
	blx	r3
	.loc	14 120 4                @ /root/Bela/projects/Thesis/BME280.cpp:120:4
	ldr	r0, [r4]
.Ltmp33:
	.loc	14 165 81               @ /root/Bela/projects/Thesis/BME280.cpp:165:81
	lsl	r1, r5, #2
	.loc	14 165 50 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:165:50
	orr	r1, r1, r6, lsl #5
.Ltmp34:
	.loc	14 120 4 is_stmt 1      @ /root/Bela/projects/Thesis/BME280.cpp:120:4
	ldr	r3, [r0, #20]
.Ltmp35:
	.loc	14 165 87               @ /root/Bela/projects/Thesis/BME280.cpp:165:87
	orr	r0, r1, r9
.Ltmp36:
	.loc	14 120 4                @ /root/Bela/projects/Thesis/BME280.cpp:120:4
	mov	r1, #244
	uxtb	r2, r0
	mov	r0, r4
	blx	r3
	.loc	14 121 4                @ /root/Bela/projects/Thesis/BME280.cpp:121:4
	ldr	r0, [r4]
	mov	r1, #245
	ldr	r3, [r0, #20]
.Ltmp37:
	.loc	14 167 88               @ /root/Bela/projects/Thesis/BME280.cpp:167:88
	ldr	r0, [sp, #16]           @ 4-byte Reload
	orr	r0, r0, r10, lsl #5
.Ltmp38:
	.loc	14 121 4                @ /root/Bela/projects/Thesis/BME280.cpp:121:4
	uxtb	r2, r0
	mov	r0, r4
	blx	r3
	add	r1, sp, #24
.Ltmp39:
	@DEBUG_VALUE: InitializeFilter:dummy <- [%R1+0]
	mov	r0, #0
.Ltmp40:
	.loc	14 81 3                 @ /root/Bela/projects/Thesis/BME280.cpp:81:3
	str	r0, [sp]
	mov	r0, #1
	str	r0, [sp, #4]
	mov	r0, r4
	mov	r2, r1
	mov	r3, r1
	bl	_ZN6BME2804readERfS0_S0_NS_8TempUnitENS_8PresUnitE
.Ltmp41:
	ldr	r0, [sp, #12]           @ 4-byte Reload
.Ltmp42:
	.loc	14 59 7                 @ /root/Bela/projects/Thesis/BME280.cpp:59:7
	lsl	r1, r7, #2
.Ltmp43:
	.loc	14 83 21                @ /root/Bela/projects/Thesis/BME280.cpp:83:21
	str	r7, [r4, #36]
.Ltmp44:
.LBB1_6:
	@DEBUG_VALUE: InitializeFilter:this <- %R4
	@DEBUG_VALUE: InitializeFilter:filter <- %R7
	@DEBUG_VALUE: ReadTrim:this <- %R4
	@DEBUG_VALUE: Initialize:this <- %R4
	@DEBUG_VALUE: ReadChipID:this <- %R4
	str	r1, [sp, #16]           @ 4-byte Spill
.Ltmp45:
	.loc	14 188 12               @ /root/Bela/projects/Thesis/BME280.cpp:188:12
	and	r5, r8, r0
.Ltmp46:
	@DEBUG_VALUE: CalculateRegisters:this <- %R4
	.loc	14 119 4                @ /root/Bela/projects/Thesis/BME280.cpp:119:4
	ldr	r0, [r4]
	mov	r1, #242
	ldrb	r2, [r4, #20]
.Ltmp47:
	.loc	14 165 36               @ /root/Bela/projects/Thesis/BME280.cpp:165:36
	ldr	r6, [r4, #16]
.Ltmp48:
	.loc	14 119 4                @ /root/Bela/projects/Thesis/BME280.cpp:119:4
	ldr	r3, [r0, #20]
	mov	r0, r4
.Ltmp49:
	.loc	14 167 110              @ /root/Bela/projects/Thesis/BME280.cpp:167:110
	ldr	r9, [r4, #40]
	.loc	14 165 109              @ /root/Bela/projects/Thesis/BME280.cpp:165:109
	ldr	r7, [r4, #28]
.Ltmp50:
	.loc	14 167 34               @ /root/Bela/projects/Thesis/BME280.cpp:167:34
	ldr	r10, [r4, #32]
	.loc	14 165 73               @ /root/Bela/projects/Thesis/BME280.cpp:165:73
	ldr	r8, [r4, #24]
.Ltmp51:
	.loc	14 119 4                @ /root/Bela/projects/Thesis/BME280.cpp:119:4
	blx	r3
	.loc	14 120 4                @ /root/Bela/projects/Thesis/BME280.cpp:120:4
	ldr	r0, [r4]
.Ltmp52:
	.loc	14 165 81               @ /root/Bela/projects/Thesis/BME280.cpp:165:81
	lsl	r1, r8, #2
	.loc	14 165 50 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:165:50
	orr	r1, r1, r6, lsl #5
.Ltmp53:
	.loc	14 120 4 is_stmt 1      @ /root/Bela/projects/Thesis/BME280.cpp:120:4
	ldr	r3, [r0, #20]
.Ltmp54:
	.loc	14 165 87               @ /root/Bela/projects/Thesis/BME280.cpp:165:87
	orr	r0, r1, r7
.Ltmp55:
	.loc	14 120 4                @ /root/Bela/projects/Thesis/BME280.cpp:120:4
	mov	r1, #244
	uxtb	r2, r0
	mov	r0, r4
	blx	r3
.Ltmp56:
	.loc	14 167 52               @ /root/Bela/projects/Thesis/BME280.cpp:167:52
	ldr	r1, [sp, #16]           @ 4-byte Reload
.Ltmp57:
	.loc	14 121 4                @ /root/Bela/projects/Thesis/BME280.cpp:121:4
	ldr	r0, [r4]
.Ltmp58:
	.loc	14 167 52               @ /root/Bela/projects/Thesis/BME280.cpp:167:52
	orr	r1, r1, r10, lsl #5
.Ltmp59:
	.loc	14 121 4                @ /root/Bela/projects/Thesis/BME280.cpp:121:4
	ldr	r3, [r0, #20]
.Ltmp60:
	.loc	14 167 88               @ /root/Bela/projects/Thesis/BME280.cpp:167:88
	orr	r0, r1, r9
.Ltmp61:
	.loc	14 121 4                @ /root/Bela/projects/Thesis/BME280.cpp:121:4
	mov	r1, #245
	uxtb	r2, r0
	mov	r0, r4
	blx	r3
	b	.LBB1_8
.Ltmp62:
.LBB1_7:                                @ %_ZN6BME28010ReadChipIDEv.exit
	@DEBUG_VALUE: Initialize:this <- %R4
	@DEBUG_VALUE: ReadChipID:this <- %R4
	mov	r5, #0
.Ltmp63:
	.loc	14 104 23               @ /root/Bela/projects/Thesis/BME280.cpp:104:23
	str	r5, [r4, #76]
.Ltmp64:
.LBB1_8:
	@DEBUG_VALUE: Initialize:this <- %R4
	@DEBUG_VALUE: ReadChipID:this <- %R4
	.loc	14 64 18                @ /root/Bela/projects/Thesis/BME280.cpp:64:18
	strb	r5, [r4, #80]
	.loc	14 66 4                 @ /root/Bela/projects/Thesis/BME280.cpp:66:4
	mov	r0, r5
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Ltmp65:
.Lfunc_end1:
	.size	_ZN6BME28010InitializeEv, .Lfunc_end1-_ZN6BME28010InitializeEv
	.cfi_endproc
	.fnend

	.globl	_ZN6BME28010ReadChipIDEv
	.p2align	2
	.type	_ZN6BME28010ReadChipIDEv,%function
_ZN6BME28010ReadChipIDEv:               @ @_ZN6BME28010ReadChipIDEv
.Lfunc_begin2:
	.loc	14 89 0                 @ /root/Bela/projects/Thesis/BME280.cpp:89:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset lr, -4
.Ltmp68:
	.cfi_offset r11, -8
.Ltmp69:
	.cfi_offset r5, -12
.Ltmp70:
	.cfi_offset r4, -16
	.setfp	r11, sp, #8
	add	r11, sp, #8
.Ltmp71:
	.cfi_def_cfa r11, 8
	.pad	#8
	sub	sp, sp, #8
	@DEBUG_VALUE: ReadChipID:this <- %R0
	mov	r4, r0
.Ltmp72:
	@DEBUG_VALUE: ReadChipID:this <- %R4
	add	r2, sp, #7
.Ltmp73:
	@DEBUG_VALUE: ReadChipID:id <- [%R2+0]
	.loc	14 92 5 prologue_end    @ /root/Bela/projects/Thesis/BME280.cpp:92:5
	ldr	r0, [r4]
	mov	r1, #208
	mov	r3, #1
	mov	r5, #1
	ldr	r12, [r0, #24]
	mov	r0, r4
	blx	r12
.Ltmp74:
	.loc	14 95 11                @ /root/Bela/projects/Thesis/BME280.cpp:95:11
	ldrb	r0, [sp, #7]
	.loc	14 95 4 is_stmt 0       @ /root/Bela/projects/Thesis/BME280.cpp:95:4
	cmp	r0, #88
	beq	.LBB2_3
.Ltmp75:
@ BB#1:
	@DEBUG_VALUE: ReadChipID:this <- %R4
	cmp	r0, #96
	bne	.LBB2_4
.Ltmp76:
@ BB#2:
	@DEBUG_VALUE: ReadChipID:this <- %R4
	.loc	14 98 23 is_stmt 1      @ /root/Bela/projects/Thesis/BME280.cpp:98:23
	mov	r0, #96
	mov	r5, #1
	str	r0, [r4, #76]
	b	.LBB2_5
.Ltmp77:
.LBB2_3:
	@DEBUG_VALUE: ReadChipID:this <- %R4
	.loc	14 101 23               @ /root/Bela/projects/Thesis/BME280.cpp:101:23
	mov	r0, #88
	str	r0, [r4, #76]
	b	.LBB2_5
.Ltmp78:
.LBB2_4:
	@DEBUG_VALUE: ReadChipID:this <- %R4
	mov	r5, #0
	.loc	14 104 23               @ /root/Bela/projects/Thesis/BME280.cpp:104:23
	str	r5, [r4, #76]
.Ltmp79:
.LBB2_5:
	@DEBUG_VALUE: ReadChipID:this <- %R4
	.loc	14 109 1                @ /root/Bela/projects/Thesis/BME280.cpp:109:1
	mov	r0, r5
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Ltmp80:
.Lfunc_end2:
	.size	_ZN6BME28010ReadChipIDEv, .Lfunc_end2-_ZN6BME28010ReadChipIDEv
	.cfi_endproc
	.fnend

	.globl	_ZN6BME2808ReadTrimEv
	.p2align	2
	.type	_ZN6BME2808ReadTrimEv,%function
_ZN6BME2808ReadTrimEv:                  @ @_ZN6BME2808ReadTrimEv
.Lfunc_begin3:
	.loc	14 173 0                @ /root/Bela/projects/Thesis/BME280.cpp:173:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
.Ltmp81:
	.cfi_def_cfa_offset 24
.Ltmp82:
	.cfi_offset lr, -4
.Ltmp83:
	.cfi_offset r11, -8
.Ltmp84:
	.cfi_offset r7, -12
.Ltmp85:
	.cfi_offset r6, -16
.Ltmp86:
	.cfi_offset r5, -20
.Ltmp87:
	.cfi_offset r4, -24
	.setfp	r11, sp, #16
	add	r11, sp, #16
.Ltmp88:
	.cfi_def_cfa r11, 8
	@DEBUG_VALUE: ReadTrim:this <- %R0
	mov	r4, r0
.Ltmp89:
	@DEBUG_VALUE: ReadTrim:success <- 1
	@DEBUG_VALUE: ReadTrim:ord <- 0
	@DEBUG_VALUE: ReadTrim:this <- %R4
	.loc	14 178 15 prologue_end  @ /root/Bela/projects/Thesis/BME280.cpp:178:15
	mov	r1, #136
	mov	r2, r4
	mov	r3, #6
	ldr	r0, [r2], #44
	ldr	r6, [r0, #24]
	mov	r0, r4
	blx	r6
	.loc	14 183 15               @ /root/Bela/projects/Thesis/BME280.cpp:183:15
	mov	r2, r4
	.loc	14 178 15               @ /root/Bela/projects/Thesis/BME280.cpp:178:15
	mov	r7, r0
.Ltmp90:
	@DEBUG_VALUE: ReadTrim:ord <- 6
	.loc	14 183 15               @ /root/Bela/projects/Thesis/BME280.cpp:183:15
	ldr	r0, [r2], #50
	mov	r1, #142
	mov	r3, #18
	ldr	r6, [r0, #24]
	mov	r0, r4
	blx	r6
	.loc	14 188 15               @ /root/Bela/projects/Thesis/BME280.cpp:188:15
	mov	r2, r4
	.loc	14 183 15               @ /root/Bela/projects/Thesis/BME280.cpp:183:15
	mov	r6, r0
.Ltmp91:
	@DEBUG_VALUE: ReadTrim:ord <- 24
	.loc	14 188 15               @ /root/Bela/projects/Thesis/BME280.cpp:188:15
	ldr	r0, [r2], #68
	mov	r1, #161
	mov	r3, #1
	ldr	r5, [r0, #24]
	mov	r0, r4
	blx	r5
.Ltmp92:
	@DEBUG_VALUE: ReadTrim:ord <- 25
	.loc	14 193 15               @ /root/Bela/projects/Thesis/BME280.cpp:193:15
	mov	r2, r4
	.loc	14 178 15               @ /root/Bela/projects/Thesis/BME280.cpp:178:15
	and	r3, r7, r6
	.loc	14 193 15               @ /root/Bela/projects/Thesis/BME280.cpp:193:15
	ldr	r1, [r2], #69
	.loc	14 183 12               @ /root/Bela/projects/Thesis/BME280.cpp:183:12
	and	r5, r3, r0
	.loc	14 193 15               @ /root/Bela/projects/Thesis/BME280.cpp:193:15
	mov	r0, r4
	mov	r3, #7
	ldr	r7, [r1, #24]
	mov	r1, #225
	blx	r7
	.loc	14 188 12               @ /root/Bela/projects/Thesis/BME280.cpp:188:12
	and	r0, r5, r0
.Ltmp93:
	@DEBUG_VALUE: ReadTrim:ord <- 32
	.loc	14 207 4 discriminator 2 @ /root/Bela/projects/Thesis/BME280.cpp:207:4
	pop	{r4, r5, r6, r7, r11, pc}
.Ltmp94:
.Lfunc_end3:
	.size	_ZN6BME2808ReadTrimEv, .Lfunc_end3-_ZN6BME2808ReadTrimEv
	.cfi_endproc
	.fnend

	.globl	_ZN6BME28016InitializeFilterEv
	.p2align	2
	.type	_ZN6BME28016InitializeFilterEv,%function
_ZN6BME28016InitializeFilterEv:         @ @_ZN6BME28016InitializeFilterEv
.Lfunc_begin4:
	.loc	14 72 0                 @ /root/Bela/projects/Thesis/BME280.cpp:72:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
.Ltmp95:
	.cfi_def_cfa_offset 36
.Ltmp96:
	.cfi_offset lr, -4
.Ltmp97:
	.cfi_offset r11, -8
.Ltmp98:
	.cfi_offset r10, -12
.Ltmp99:
	.cfi_offset r9, -16
.Ltmp100:
	.cfi_offset r8, -20
.Ltmp101:
	.cfi_offset r7, -24
.Ltmp102:
	.cfi_offset r6, -28
.Ltmp103:
	.cfi_offset r5, -32
.Ltmp104:
	.cfi_offset r4, -36
	.setfp	r11, sp, #28
	add	r11, sp, #28
.Ltmp105:
	.cfi_def_cfa r11, 8
	.pad	#12
	sub	sp, sp, #12
	@DEBUG_VALUE: InitializeFilter:this <- %R0
	mov	r4, r0
.Ltmp106:
	@DEBUG_VALUE: InitializeFilter:this <- %R4
	mov	r0, #0
.Ltmp107:
	.loc	14 75 30 prologue_end   @ /root/Bela/projects/Thesis/BME280.cpp:75:30
	ldr	r9, [r4, #36]
.Ltmp108:
	@DEBUG_VALUE: InitializeFilter:filter <- %R9
	.loc	14 119 4                @ /root/Bela/projects/Thesis/BME280.cpp:119:4
	mov	r1, #242
.Ltmp109:
	.loc	14 76 21                @ /root/Bela/projects/Thesis/BME280.cpp:76:21
	str	r0, [r4, #36]
.Ltmp110:
	.loc	14 119 4                @ /root/Bela/projects/Thesis/BME280.cpp:119:4
	ldr	r0, [r4]
.Ltmp111:
	@DEBUG_VALUE: CalculateRegisters:this <- %R4
	@DEBUG_VALUE: WriteSettings:this <- %R4
	ldrb	r2, [r4, #20]
.Ltmp112:
	.loc	14 165 36               @ /root/Bela/projects/Thesis/BME280.cpp:165:36
	ldr	r7, [r4, #16]
.Ltmp113:
	.loc	14 119 4                @ /root/Bela/projects/Thesis/BME280.cpp:119:4
	ldr	r3, [r0, #20]
	mov	r0, r4
.Ltmp114:
	.loc	14 167 110              @ /root/Bela/projects/Thesis/BME280.cpp:167:110
	ldr	r10, [r4, #40]
	.loc	14 167 34 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:167:34
	ldr	r5, [r4, #32]
	.loc	14 165 109 is_stmt 1    @ /root/Bela/projects/Thesis/BME280.cpp:165:109
	ldr	r6, [r4, #28]
	.loc	14 165 73 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:165:73
	ldr	r8, [r4, #24]
.Ltmp115:
	.loc	14 119 4 is_stmt 1      @ /root/Bela/projects/Thesis/BME280.cpp:119:4
	blx	r3
	.loc	14 120 4                @ /root/Bela/projects/Thesis/BME280.cpp:120:4
	ldr	r1, [r4]
.Ltmp116:
	.loc	14 165 81               @ /root/Bela/projects/Thesis/BME280.cpp:165:81
	lsl	r0, r8, #2
	.loc	14 165 50 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:165:50
	orr	r0, r0, r7, lsl #5
	.loc	14 165 87               @ /root/Bela/projects/Thesis/BME280.cpp:165:87
	orr	r0, r0, r6
.Ltmp117:
	.loc	14 120 4 is_stmt 1      @ /root/Bela/projects/Thesis/BME280.cpp:120:4
	ldr	r3, [r1, #20]
	mov	r1, #244
	uxtb	r2, r0
	mov	r0, r4
	blx	r3
	.loc	14 121 4                @ /root/Bela/projects/Thesis/BME280.cpp:121:4
	ldr	r0, [r4]
	mov	r1, #245
	ldr	r3, [r0, #20]
.Ltmp118:
	.loc	14 167 88               @ /root/Bela/projects/Thesis/BME280.cpp:167:88
	orr	r0, r10, r5, lsl #5
.Ltmp119:
	.loc	14 121 4                @ /root/Bela/projects/Thesis/BME280.cpp:121:4
	uxtb	r2, r0
	mov	r0, r4
	blx	r3
	mov	r1, #0
.Ltmp120:
	.loc	14 81 3                 @ /root/Bela/projects/Thesis/BME280.cpp:81:3
	mov	r0, #1
	str	r1, [sp]
	add	r1, sp, #8
.Ltmp121:
	@DEBUG_VALUE: InitializeFilter:dummy <- [%R1+0]
	str	r0, [sp, #4]
	mov	r0, r4
	mov	r2, r1
	mov	r3, r1
	bl	_ZN6BME2804readERfS0_S0_NS_8TempUnitENS_8PresUnitE
.Ltmp122:
	.loc	14 83 21                @ /root/Bela/projects/Thesis/BME280.cpp:83:21
	str	r9, [r4, #36]
	.loc	14 84 1                 @ /root/Bela/projects/Thesis/BME280.cpp:84:1
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Ltmp123:
.Lfunc_end4:
	.size	_ZN6BME28016InitializeFilterEv, .Lfunc_end4-_ZN6BME28016InitializeFilterEv
	.cfi_endproc
	.fnend

	.globl	_ZN6BME28013WriteSettingsEv
	.p2align	2
	.type	_ZN6BME28013WriteSettingsEv,%function
_ZN6BME28013WriteSettingsEv:            @ @_ZN6BME28013WriteSettingsEv
.Lfunc_begin5:
	.loc	14 114 0                @ /root/Bela/projects/Thesis/BME280.cpp:114:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
.Ltmp124:
	.cfi_def_cfa_offset 36
.Ltmp125:
	.cfi_offset lr, -4
.Ltmp126:
	.cfi_offset r11, -8
.Ltmp127:
	.cfi_offset r10, -12
.Ltmp128:
	.cfi_offset r9, -16
.Ltmp129:
	.cfi_offset r8, -20
.Ltmp130:
	.cfi_offset r7, -24
.Ltmp131:
	.cfi_offset r6, -28
.Ltmp132:
	.cfi_offset r5, -32
.Ltmp133:
	.cfi_offset r4, -36
	.setfp	r11, sp, #28
	add	r11, sp, #28
.Ltmp134:
	.cfi_def_cfa r11, 8
	.pad	#4
	sub	sp, sp, #4
	@DEBUG_VALUE: WriteSettings:this <- %R0
	mov	r4, r0
.Ltmp135:
	@DEBUG_VALUE: CalculateRegisters:this <- %R4
	@DEBUG_VALUE: WriteSettings:this <- %R4
	.loc	14 165 73 prologue_end  @ /root/Bela/projects/Thesis/BME280.cpp:165:73
	add	r10, r4, #24
.Ltmp136:
	.loc	14 119 4                @ /root/Bela/projects/Thesis/BME280.cpp:119:4
	ldr	r0, [r4]
	mov	r1, #242
.Ltmp137:
	.loc	14 165 36               @ /root/Bela/projects/Thesis/BME280.cpp:165:36
	ldr	r5, [r4, #16]
	.loc	14 165 73 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:165:73
	ldm	r10, {r6, r7, r8, r9, r10}
.Ltmp138:
	.loc	14 119 4 is_stmt 1      @ /root/Bela/projects/Thesis/BME280.cpp:119:4
	ldr	r3, [r0, #20]
	mov	r0, r4
	ldrb	r2, [r4, #20]
	blx	r3
	.loc	14 120 4                @ /root/Bela/projects/Thesis/BME280.cpp:120:4
	ldr	r0, [r4]
.Ltmp139:
	.loc	14 165 81               @ /root/Bela/projects/Thesis/BME280.cpp:165:81
	lsl	r1, r6, #2
	.loc	14 165 50 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:165:50
	orr	r1, r1, r5, lsl #5
.Ltmp140:
	.loc	14 120 4 is_stmt 1      @ /root/Bela/projects/Thesis/BME280.cpp:120:4
	ldr	r3, [r0, #20]
.Ltmp141:
	.loc	14 165 87               @ /root/Bela/projects/Thesis/BME280.cpp:165:87
	orr	r0, r1, r7
.Ltmp142:
	.loc	14 120 4                @ /root/Bela/projects/Thesis/BME280.cpp:120:4
	mov	r1, #244
	uxtb	r2, r0
	mov	r0, r4
	blx	r3
.Ltmp143:
	.loc	14 167 82               @ /root/Bela/projects/Thesis/BME280.cpp:167:82
	lsl	r0, r9, #2
.Ltmp144:
	.loc	14 121 4                @ /root/Bela/projects/Thesis/BME280.cpp:121:4
	ldr	r1, [r4]
.Ltmp145:
	.loc	14 167 52               @ /root/Bela/projects/Thesis/BME280.cpp:167:52
	orr	r0, r0, r8, lsl #5
	.loc	14 167 88 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:167:88
	orr	r0, r0, r10
.Ltmp146:
	.loc	14 121 4 is_stmt 1      @ /root/Bela/projects/Thesis/BME280.cpp:121:4
	ldr	r3, [r1, #20]
	mov	r1, #245
	uxtb	r2, r0
	mov	r0, r4
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
.Ltmp147:
	bx	r3
.Ltmp148:
.Lfunc_end5:
	.size	_ZN6BME28013WriteSettingsEv, .Lfunc_end5-_ZN6BME28013WriteSettingsEv
	.cfi_endproc
	.fnend

	.globl	_ZN6BME2804readERfS0_S0_NS_8TempUnitENS_8PresUnitE
	.p2align	3
	.type	_ZN6BME2804readERfS0_S0_NS_8TempUnitENS_8PresUnitE,%function
_ZN6BME2804readERfS0_S0_NS_8TempUnitENS_8PresUnitE: @ @_ZN6BME2804readERfS0_S0_NS_8TempUnitENS_8PresUnitE
.Lfunc_begin6:
	.loc	14 413 0                @ /root/Bela/projects/Thesis/BME280.cpp:413:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
.Ltmp149:
	.cfi_def_cfa_offset 36
.Ltmp150:
	.cfi_offset lr, -4
.Ltmp151:
	.cfi_offset r11, -8
.Ltmp152:
	.cfi_offset r10, -12
.Ltmp153:
	.cfi_offset r9, -16
.Ltmp154:
	.cfi_offset r8, -20
.Ltmp155:
	.cfi_offset r7, -24
.Ltmp156:
	.cfi_offset r6, -28
.Ltmp157:
	.cfi_offset r5, -32
.Ltmp158:
	.cfi_offset r4, -36
	.setfp	r11, sp, #28
	add	r11, sp, #28
.Ltmp159:
	.cfi_def_cfa r11, 8
	.pad	#36
	sub	sp, sp, #36
	@DEBUG_VALUE: read:this <- %R0
	@DEBUG_VALUE: read:pressure <- %R1
	@DEBUG_VALUE: read:temp <- %R2
	@DEBUG_VALUE: read:humidity <- %R3
	mov	r9, r1
.Ltmp160:
	@DEBUG_VALUE: read:pressure <- %R9
	add	r1, sp, #4
.Ltmp161:
	@DEBUG_VALUE: read:data <- [%R1+0]
	mov	r4, r3
.Ltmp162:
	@DEBUG_VALUE: read:humidity <- %R4
	mov	r7, r2
.Ltmp163:
	@DEBUG_VALUE: read:temp <- %R7
	mov	r6, r0
.Ltmp164:
	@DEBUG_VALUE: read:this <- %R6
	.loc	14 416 8 prologue_end   @ /root/Bela/projects/Thesis/BME280.cpp:416:8
	bl	_ZN6BME2808ReadDataEPi
.Ltmp165:
	.loc	14 416 7 is_stmt 0      @ /root/Bela/projects/Thesis/BME280.cpp:416:7
	cmp	r0, #0
	beq	.LBB6_2
.Ltmp166:
@ BB#1:
	@DEBUG_VALUE: read:this <- %R6
	@DEBUG_VALUE: read:temp <- %R7
	@DEBUG_VALUE: read:humidity <- %R4
	@DEBUG_VALUE: read:pressure <- %R9
	@DEBUG_VALUE: read:presUnit <- undef
	str	r4, [sp]                @ 4-byte Spill
	.loc	14 421 42 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:421:42
	ldr	r4, [sp, #20]
.Ltmp167:
	.loc	14 421 24 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:421:24
	ldr	r0, [sp, #16]
.Ltmp168:
	@DEBUG_VALUE: CalculateTemperature:this <- %R6
	.loc	14 421 59               @ /root/Bela/projects/Thesis/BME280.cpp:421:59
	ldr	r1, [sp, #24]
.Ltmp169:
	.loc	14 258 40 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:258:40
	ldr	r2, [r6, #44]
.Ltmp170:
	.loc	14 421 50               @ /root/Bela/projects/Thesis/BME280.cpp:421:50
	lsl	r4, r4, #4
.Ltmp171:
	.loc	14 258 23               @ /root/Bela/projects/Thesis/BME280.cpp:258:23
	ldrb	r8, [r6, #45]
.Ltmp172:
	.loc	14 421 39               @ /root/Bela/projects/Thesis/BME280.cpp:421:39
	orr	r0, r4, r0, lsl #12
	.loc	14 421 56 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:421:56
	orr	r0, r0, r1, asr #4
.Ltmp173:
	@DEBUG_VALUE: read:rawTemp <- %R0
	@DEBUG_VALUE: CalculateTemperature:raw <- %R0
	.loc	14 260 22 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:260:22
	ldrb	r5, [r6, #49]
	.loc	14 258 40               @ /root/Bela/projects/Thesis/BME280.cpp:258:40
	uxtb	r1, r2
.Ltmp174:
	.loc	14 420 28               @ /root/Bela/projects/Thesis/BME280.cpp:420:28
	ldr	lr, [sp, #4]
.Ltmp175:
	.loc	14 258 38               @ /root/Bela/projects/Thesis/BME280.cpp:258:38
	orr	r1, r1, r8, lsl #8
.Ltmp176:
	.loc	14 420 46               @ /root/Bela/projects/Thesis/BME280.cpp:420:46
	ldr	r10, [sp, #8]
.Ltmp177:
	.loc	14 262 26               @ /root/Bela/projects/Thesis/BME280.cpp:262:26
	rsb	r4, r1, r0, asr #4
	.loc	14 261 19               @ /root/Bela/projects/Thesis/BME280.cpp:261:19
	asr	r0, r0, #3
.Ltmp178:
	.loc	14 261 25 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:261:25
	sub	r0, r0, r1, lsl #1
	.loc	14 261 64               @ /root/Bela/projects/Thesis/BME280.cpp:261:64
	asr	r1, r2, #16
	.loc	14 262 47 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:262:47
	mul	r4, r4, r4
	.loc	14 260 39               @ /root/Bela/projects/Thesis/BME280.cpp:260:39
	ldrb	r2, [r6, #48]
.Ltmp179:
	.loc	14 420 63               @ /root/Bela/projects/Thesis/BME280.cpp:420:63
	ldr	r3, [sp, #12]
.Ltmp180:
	.loc	14 260 37               @ /root/Bela/projects/Thesis/BME280.cpp:260:37
	orr	r2, r2, r5, lsl #8
	.loc	14 261 52               @ /root/Bela/projects/Thesis/BME280.cpp:261:52
	mul	r0, r0, r1
	.loc	14 265 67 discriminator 2 @ /root/Bela/projects/Thesis/BME280.cpp:265:67
	vldr	d17, .LCPI6_0
	.loc	14 262 102              @ /root/Bela/projects/Thesis/BME280.cpp:262:102
	sxth	r2, r2
	.loc	14 265 43 discriminator 1 @ /root/Bela/projects/Thesis/BME280.cpp:265:43
	vldr	d18, .LCPI6_1
	ldr	r12, [r11, #8]
	@DEBUG_VALUE: read:tempUnit <- %R12
	.loc	14 262 83               @ /root/Bela/projects/Thesis/BME280.cpp:262:83
	lsr	r1, r4, #12
	.loc	14 265 72 discriminator 2 @ /root/Bela/projects/Thesis/BME280.cpp:265:72
	vldr	d19, .LCPI6_2
	.loc	14 262 90               @ /root/Bela/projects/Thesis/BME280.cpp:262:90
	mul	r1, r2, r1
	.loc	14 265 11               @ /root/Bela/projects/Thesis/BME280.cpp:265:11
	cmp	r12, #0
	.loc	14 262 111              @ /root/Bela/projects/Thesis/BME280.cpp:262:111
	asr	r1, r1, #14
.Ltmp181:
	@DEBUG_VALUE: CalculateTemperature:var2 <- %R1
	.loc	14 263 18               @ /root/Bela/projects/Thesis/BME280.cpp:263:18
	add	r4, r1, r0, asr #11
.Ltmp182:
	@DEBUG_VALUE: read:t_fine <- %R4
	@DEBUG_VALUE: CalculateHumidity:t_fine <- %R4
	.loc	14 264 20               @ /root/Bela/projects/Thesis/BME280.cpp:264:20
	add	r0, r4, r4, lsl #2
.Ltmp183:
	.loc	14 424 15               @ /root/Bela/projects/Thesis/BME280.cpp:424:15
	mov	r2, r4
.Ltmp184:
	.loc	14 264 24               @ /root/Bela/projects/Thesis/BME280.cpp:264:24
	add	r0, r0, #128
	.loc	14 264 31 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:264:31
	asr	r0, r0, #8
.Ltmp185:
	@DEBUG_VALUE: CalculateTemperature:final <- %R0
	.loc	14 265 38 is_stmt 1 discriminator 1 @ /root/Bela/projects/Thesis/BME280.cpp:265:38
	vmov	s0, r0
.Ltmp186:
	@DEBUG_VALUE: CalculateTemperature:final <- %S0
	.loc	14 420 54               @ /root/Bela/projects/Thesis/BME280.cpp:420:54
	lsl	r0, r10, #4
	.loc	14 420 43 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:420:43
	orr	r0, r0, lr, lsl #12
.Ltmp187:
	.loc	14 265 38 is_stmt 1 discriminator 1 @ /root/Bela/projects/Thesis/BME280.cpp:265:38
	vcvt.f64.s32	d16, s0
.Ltmp188:
	.loc	14 420 60               @ /root/Bela/projects/Thesis/BME280.cpp:420:60
	orr	r1, r0, r3, asr #4
.Ltmp189:
	@DEBUG_VALUE: read:rawPressure <- %R1
	ldr	r3, [r11, #12]
	.loc	14 424 15               @ /root/Bela/projects/Thesis/BME280.cpp:424:15
	mov	r0, r6
	.loc	14 422 44               @ /root/Bela/projects/Thesis/BME280.cpp:422:44
	ldr	r8, [sp, #32]
	.loc	14 422 28 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:422:28
	ldr	r5, [sp, #28]
.Ltmp190:
	.loc	14 265 67 is_stmt 1 discriminator 2 @ /root/Bela/projects/Thesis/BME280.cpp:265:67
	vmul.f64	d17, d16, d17
	.loc	14 265 43 is_stmt 0 discriminator 1 @ /root/Bela/projects/Thesis/BME280.cpp:265:43
	vmul.f64	d16, d16, d18
	.loc	14 265 72 discriminator 2 @ /root/Bela/projects/Thesis/BME280.cpp:265:72
	vadd.f64	d17, d17, d19
	.loc	14 265 11               @ /root/Bela/projects/Thesis/BME280.cpp:265:11
	vmoveq.f64	d17, d16
	.loc	14 265 11 discriminator 3 @ /root/Bela/projects/Thesis/BME280.cpp:265:11
	vcvt.f32.f64	s0, d17
.Ltmp191:
	.loc	14 423 9 is_stmt 1      @ /root/Bela/projects/Thesis/BME280.cpp:423:9
	vstr	s0, [r7]
	.loc	14 424 15               @ /root/Bela/projects/Thesis/BME280.cpp:424:15
	bl	_ZN6BME28017CalculatePressureEiiNS_8PresUnitE
.Ltmp192:
	.loc	14 424 13 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:424:13
	vstr	s0, [r9]
.Ltmp193:
	.loc	14 285 19 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:285:19
	sub	r2, r4, #76800
.Ltmp194:
	@DEBUG_VALUE: CalculateHumidity:var1 <- %R2
	.loc	14 278 21               @ /root/Bela/projects/Thesis/BME280.cpp:278:21
	ldr	r0, [r6, #68]
	.loc	14 281 22               @ /root/Bela/projects/Thesis/BME280.cpp:281:22
	ldr	r1, [r6, #72]
	.loc	14 288 30               @ /root/Bela/projects/Thesis/BME280.cpp:288:30
	mov	r6, #32768
.Ltmp195:
	.loc	14 293 35               @ /root/Bela/projects/Thesis/BME280.cpp:293:35
	vldr	d17, .LCPI6_3
	.loc	14 280 21               @ /root/Bela/projects/Thesis/BME280.cpp:280:21
	lsr	r3, r0, #24
	.loc	14 287 81               @ /root/Bela/projects/Thesis/BME280.cpp:287:81
	mul	r3, r2, r3
	.loc	14 287 55 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:287:55
	asr	r7, r1, #24
.Ltmp196:
	.loc	14 287 43               @ /root/Bela/projects/Thesis/BME280.cpp:287:43
	mul	r7, r2, r7
	.loc	14 288 30 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:288:30
	add	r3, r6, r3, asr #11
.Ltmp197:
	.loc	14 422 42               @ /root/Bela/projects/Thesis/BME280.cpp:422:42
	orr	r6, r8, r5, lsl #8
.Ltmp198:
	@DEBUG_VALUE: read:rawHumidity <- %R6
	@DEBUG_VALUE: CalculateHumidity:raw <- %R6
	.loc	14 286 27               @ /root/Bela/projects/Thesis/BME280.cpp:286:27
	mov	r5, #16384
	.loc	14 287 64               @ /root/Bela/projects/Thesis/BME280.cpp:287:64
	asr	r7, r7, #10
	.loc	14 286 27               @ /root/Bela/projects/Thesis/BME280.cpp:286:27
	add	r6, r5, r6, lsl #14
.Ltmp199:
	.loc	14 287 71               @ /root/Bela/projects/Thesis/BME280.cpp:287:71
	mul	r3, r3, r7
	.loc	14 288 58               @ /root/Bela/projects/Thesis/BME280.cpp:288:58
	mov	r7, #2097152
	add	r3, r7, r3, asr #10
	.loc	14 281 46               @ /root/Bela/projects/Thesis/BME280.cpp:281:46
	ubfx	r7, r1, #8, #4
	.loc	14 281 38 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:281:38
	orr	r7, r7, r1, lsl #4
	.loc	14 286 55 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:286:55
	sub	r7, r6, r7, lsl #20
	.loc	14 289 14               @ /root/Bela/projects/Thesis/BME280.cpp:289:14
	sbfx	r6, r0, #8, #16
	.loc	14 282 38               @ /root/Bela/projects/Thesis/BME280.cpp:282:38
	ubfx	r1, r1, #12, #12
	.loc	14 290 70               @ /root/Bela/projects/Thesis/BME280.cpp:290:70
	uxtb	r0, r0
	.loc	14 288 80               @ /root/Bela/projects/Thesis/BME280.cpp:288:80
	mul	r3, r3, r6
	.loc	14 286 85               @ /root/Bela/projects/Thesis/BME280.cpp:286:85
	mls	r1, r2, r1, r7
	.loc	14 289 22               @ /root/Bela/projects/Thesis/BME280.cpp:289:22
	add	r2, r3, #8192
.Ltmp200:
	.loc	14 289 30 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:289:30
	asr	r2, r2, #14
	.loc	14 287 22 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:287:22
	asr	r1, r1, #15
	.loc	14 287 29 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:287:29
	mul	r1, r2, r1
.Ltmp201:
	@DEBUG_VALUE: CalculateHumidity:var1 <- %R1
	.loc	14 290 29 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:290:29
	asr	r2, r1, #15
	.loc	14 290 36 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:290:36
	mul	r2, r2, r2
	.loc	14 290 52               @ /root/Bela/projects/Thesis/BME280.cpp:290:52
	lsr	r2, r2, #7
	.loc	14 290 58               @ /root/Bela/projects/Thesis/BME280.cpp:290:58
	mul	r0, r2, r0
	.loc	14 290 17               @ /root/Bela/projects/Thesis/BME280.cpp:290:17
	sub	r0, r1, r0, lsr #4
.Ltmp202:
	@DEBUG_VALUE: CalculateHumidity:var1 <- %R0
	.loc	14 291 12 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:291:12
	cmp	r0, #0
	movwlt	r0, #0
.Ltmp203:
	.loc	14 292 12               @ /root/Bela/projects/Thesis/BME280.cpp:292:12
	cmp	r0, #419430400
	movgt	r0, #419430400
	.loc	14 293 28               @ /root/Bela/projects/Thesis/BME280.cpp:293:28
	asr	r0, r0, #12
	.loc	14 293 11 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:293:11
	vmov	s0, r0
	vcvt.f64.u32	d16, s0
.Ltmp204:
	.loc	14 425 13 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:425:13
	ldr	r0, [sp]                @ 4-byte Reload
.Ltmp205:
	.loc	14 293 35               @ /root/Bela/projects/Thesis/BME280.cpp:293:35
	vmul.f64	d16, d16, d17
	.loc	14 293 11 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:293:11
	vcvt.f32.f64	s0, d16
.Ltmp206:
	.loc	14 425 13 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:425:13
	vstr	s0, [r0]
.Ltmp207:
	@DEBUG_VALUE: CalculateHumidity:this <- %R6
	@DEBUG_VALUE: CalculateTemperature:unit <- %R12
	.loc	14 426 1 discriminator 2 @ /root/Bela/projects/Thesis/BME280.cpp:426:1
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Ltmp208:
.LBB6_2:
	@DEBUG_VALUE: read:this <- %R6
	@DEBUG_VALUE: read:temp <- %R7
	@DEBUG_VALUE: read:humidity <- %R4
	@DEBUG_VALUE: read:pressure <- %R9
	.loc	14 417 34               @ /root/Bela/projects/Thesis/BME280.cpp:417:34
	movw	r0, #0
	movt	r0, #32704
	str	r0, [r4]
	.loc	14 417 23 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:417:23
	str	r0, [r7]
	.loc	14 417 16               @ /root/Bela/projects/Thesis/BME280.cpp:417:16
	str	r0, [r9]
.Ltmp209:
	.loc	14 426 1 is_stmt 1 discriminator 2 @ /root/Bela/projects/Thesis/BME280.cpp:426:1
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Ltmp210:
	.p2align	3
@ BB#3:
.LCPI6_0:
	.long	2370821947              @ double 0.017999999999999999
	.long	1066561175
.LCPI6_1:
	.long	1202590843              @ double 0.01
	.long	1065646817
.LCPI6_2:
	.long	0                       @ double 32
	.long	1077936128
.LCPI6_3:
	.long	0                       @ double 9.765625E-4
	.long	1062207488
.Lfunc_end6:
	.size	_ZN6BME2804readERfS0_S0_NS_8TempUnitENS_8PresUnitE, .Lfunc_end6-_ZN6BME2804readERfS0_S0_NS_8TempUnitENS_8PresUnitE
	.cfi_endproc
	.fnend

	.globl	_ZN6BME28018CalculateRegistersERhS0_S0_
	.p2align	2
	.type	_ZN6BME28018CalculateRegistersERhS0_S0_,%function
_ZN6BME28018CalculateRegistersERhS0_S0_: @ @_ZN6BME28018CalculateRegistersERhS0_S0_
.Lfunc_begin7:
	.loc	14 161 0                @ /root/Bela/projects/Thesis/BME280.cpp:161:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r11, lr}
	push	{r11, lr}
.Ltmp211:
	.cfi_def_cfa_offset 8
.Ltmp212:
	.cfi_offset lr, -4
.Ltmp213:
	.cfi_offset r11, -8
	@DEBUG_VALUE: CalculateRegisters:this <- %R0
	@DEBUG_VALUE: CalculateRegisters:ctrlHum <- %R1
	@DEBUG_VALUE: CalculateRegisters:ctrlMeas <- %R2
	@DEBUG_VALUE: CalculateRegisters:config <- %R3
.Ltmp214:
	.loc	14 163 34 prologue_end  @ /root/Bela/projects/Thesis/BME280.cpp:163:34
	ldr	r12, [r0, #20]
	.loc	14 163 12 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:163:12
	strb	r12, [r1]
	.loc	14 165 73 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:165:73
	ldr	r1, [r0, #24]
.Ltmp215:
	.loc	14 165 36 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:165:36
	ldr	r12, [r0, #16]
	.loc	14 165 109              @ /root/Bela/projects/Thesis/BME280.cpp:165:109
	ldr	lr, [r0, #28]
	.loc	14 165 81               @ /root/Bela/projects/Thesis/BME280.cpp:165:81
	lsl	r1, r1, #2
	.loc	14 165 50               @ /root/Bela/projects/Thesis/BME280.cpp:165:50
	orr	r1, r1, r12, lsl #5
	.loc	14 165 87               @ /root/Bela/projects/Thesis/BME280.cpp:165:87
	orr	r1, r1, lr
	.loc	14 165 13               @ /root/Bela/projects/Thesis/BME280.cpp:165:13
	strb	r1, [r2]
	.loc	14 167 75 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:167:75
	ldr	r2, [r0, #36]
.Ltmp216:
	.loc	14 167 34 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:167:34
	ldr	r1, [r0, #32]
	.loc	14 167 110              @ /root/Bela/projects/Thesis/BME280.cpp:167:110
	ldr	r0, [r0, #40]
.Ltmp217:
	.loc	14 167 82               @ /root/Bela/projects/Thesis/BME280.cpp:167:82
	lsl	r2, r2, #2
	.loc	14 167 52               @ /root/Bela/projects/Thesis/BME280.cpp:167:52
	orr	r1, r2, r1, lsl #5
	.loc	14 167 88               @ /root/Bela/projects/Thesis/BME280.cpp:167:88
	orr	r0, r1, r0
	.loc	14 167 11               @ /root/Bela/projects/Thesis/BME280.cpp:167:11
	strb	r0, [r3]
	.loc	14 168 1 is_stmt 1      @ /root/Bela/projects/Thesis/BME280.cpp:168:1
	pop	{r11, pc}
.Ltmp218:
.Lfunc_end7:
	.size	_ZN6BME28018CalculateRegistersERhS0_S0_, .Lfunc_end7-_ZN6BME28018CalculateRegistersERhS0_S0_
	.cfi_endproc
	.fnend

	.globl	_ZN6BME28011setSettingsERKNS_8SettingsE
	.p2align	2
	.type	_ZN6BME28011setSettingsERKNS_8SettingsE,%function
_ZN6BME28011setSettingsERKNS_8SettingsE: @ @_ZN6BME28011setSettingsERKNS_8SettingsE
.Lfunc_begin8:
	.loc	14 130 0                @ /root/Bela/projects/Thesis/BME280.cpp:130:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
.Ltmp219:
	.cfi_def_cfa_offset 36
.Ltmp220:
	.cfi_offset lr, -4
.Ltmp221:
	.cfi_offset r11, -8
.Ltmp222:
	.cfi_offset r10, -12
.Ltmp223:
	.cfi_offset r9, -16
.Ltmp224:
	.cfi_offset r8, -20
.Ltmp225:
	.cfi_offset r7, -24
.Ltmp226:
	.cfi_offset r6, -28
.Ltmp227:
	.cfi_offset r5, -32
.Ltmp228:
	.cfi_offset r4, -36
	.setfp	r11, sp, #28
	add	r11, sp, #28
.Ltmp229:
	.cfi_def_cfa r11, 8
	.pad	#4
	sub	sp, sp, #4
	@DEBUG_VALUE: setSettings:this <- %R0
	@DEBUG_VALUE: setSettings:settings <- %R1
	mov	r4, r0
.Ltmp230:
	@DEBUG_VALUE: setSettings:this <- %R4
	.loc	14 131 15 prologue_end  @ /root/Bela/projects/Thesis/BME280.cpp:131:15
	add	r0, r1, #12
.Ltmp231:
	@DEBUG_VALUE: CalculateRegisters:this <- %R4
	@DEBUG_VALUE: WriteSettings:this <- %R4
	vld1.32	{d16, d17}, [r1]
.Ltmp232:
	.loc	14 165 73               @ /root/Bela/projects/Thesis/BME280.cpp:165:73
	add	r10, r4, #24
.Ltmp233:
	.loc	14 119 4                @ /root/Bela/projects/Thesis/BME280.cpp:119:4
	mov	r1, #242
.Ltmp234:
	.loc	14 131 15               @ /root/Bela/projects/Thesis/BME280.cpp:131:15
	vld1.32	{d18, d19}, [r0]
	.loc	14 131 4 is_stmt 0      @ /root/Bela/projects/Thesis/BME280.cpp:131:4
	add	r0, r4, #16
	.loc	14 131 15               @ /root/Bela/projects/Thesis/BME280.cpp:131:15
	vst1.32	{d16, d17}, [r0]
	add	r0, r4, #28
	vst1.32	{d18, d19}, [r0]
.Ltmp235:
	.loc	14 119 4 is_stmt 1      @ /root/Bela/projects/Thesis/BME280.cpp:119:4
	ldr	r0, [r4]
.Ltmp236:
	.loc	14 165 36               @ /root/Bela/projects/Thesis/BME280.cpp:165:36
	ldr	r5, [r4, #16]
	.loc	14 165 73 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:165:73
	ldm	r10, {r6, r7, r8, r9, r10}
.Ltmp237:
	.loc	14 119 4 is_stmt 1      @ /root/Bela/projects/Thesis/BME280.cpp:119:4
	ldr	r3, [r0, #20]
	mov	r0, r4
	ldrb	r2, [r4, #20]
	blx	r3
	.loc	14 120 4                @ /root/Bela/projects/Thesis/BME280.cpp:120:4
	ldr	r0, [r4]
.Ltmp238:
	.loc	14 165 81               @ /root/Bela/projects/Thesis/BME280.cpp:165:81
	lsl	r1, r6, #2
	.loc	14 165 50 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:165:50
	orr	r1, r1, r5, lsl #5
.Ltmp239:
	.loc	14 120 4 is_stmt 1      @ /root/Bela/projects/Thesis/BME280.cpp:120:4
	ldr	r3, [r0, #20]
.Ltmp240:
	.loc	14 165 87               @ /root/Bela/projects/Thesis/BME280.cpp:165:87
	orr	r0, r1, r7
.Ltmp241:
	.loc	14 120 4                @ /root/Bela/projects/Thesis/BME280.cpp:120:4
	mov	r1, #244
	uxtb	r2, r0
	mov	r0, r4
	blx	r3
.Ltmp242:
	.loc	14 167 82               @ /root/Bela/projects/Thesis/BME280.cpp:167:82
	lsl	r0, r9, #2
.Ltmp243:
	.loc	14 121 4                @ /root/Bela/projects/Thesis/BME280.cpp:121:4
	ldr	r1, [r4]
.Ltmp244:
	.loc	14 167 52               @ /root/Bela/projects/Thesis/BME280.cpp:167:52
	orr	r0, r0, r8, lsl #5
	.loc	14 167 88 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:167:88
	orr	r0, r0, r10
.Ltmp245:
	.loc	14 121 4 is_stmt 1      @ /root/Bela/projects/Thesis/BME280.cpp:121:4
	ldr	r3, [r1, #20]
	mov	r1, #245
	uxtb	r2, r0
	mov	r0, r4
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
.Ltmp246:
	bx	r3
.Ltmp247:
.Lfunc_end8:
	.size	_ZN6BME28011setSettingsERKNS_8SettingsE, .Lfunc_end8-_ZN6BME28011setSettingsERKNS_8SettingsE
	.cfi_endproc
	.fnend

	.globl	_ZNK6BME28011getSettingsEv
	.p2align	2
	.type	_ZNK6BME28011getSettingsEv,%function
_ZNK6BME28011getSettingsEv:             @ @_ZNK6BME28011getSettingsEv
.Lfunc_begin9:
	.loc	14 138 0                @ /root/Bela/projects/Thesis/BME280.cpp:138:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: getSettings:this <- %R0
	.loc	14 139 11 prologue_end  @ /root/Bela/projects/Thesis/BME280.cpp:139:11
	add	r0, r0, #16
.Ltmp248:
	.loc	14 139 4 is_stmt 0      @ /root/Bela/projects/Thesis/BME280.cpp:139:4
	bx	lr
.Ltmp249:
.Lfunc_end9:
	.size	_ZNK6BME28011getSettingsEv, .Lfunc_end9-_ZNK6BME28011getSettingsEv
	.cfi_endproc
	.fnend

	.globl	_ZN6BME2805beginEv
	.p2align	2
	.type	_ZN6BME2805beginEv,%function
_ZN6BME2805beginEv:                     @ @_ZN6BME2805beginEv
.Lfunc_begin10:
	.loc	14 147 0 is_stmt 1      @ /root/Bela/projects/Thesis/BME280.cpp:147:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
.Ltmp250:
	.cfi_def_cfa_offset 16
.Ltmp251:
	.cfi_offset lr, -4
.Ltmp252:
	.cfi_offset r11, -8
.Ltmp253:
	.cfi_offset r10, -12
.Ltmp254:
	.cfi_offset r4, -16
	.setfp	r11, sp, #8
	add	r11, sp, #8
.Ltmp255:
	.cfi_def_cfa r11, 8
	@DEBUG_VALUE: begin:this <- %R0
	mov	r4, r0
.Ltmp256:
	@DEBUG_VALUE: begin:this <- %R4
	.loc	14 148 19 prologue_end  @ /root/Bela/projects/Thesis/BME280.cpp:148:19
	ldr	r0, [r4]
	ldr	r1, [r0, #8]
	.loc	14 148 19 is_stmt 0 discriminator 1 @ /root/Bela/projects/Thesis/BME280.cpp:148:19
	mov	r0, r4
	blx	r1
	.loc	14 149 15 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:149:15
	ldrb	r1, [r4, #80]
	.loc	14 149 12 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:149:12
	and	r0, r1, r0
	.loc	14 151 4 is_stmt 1      @ /root/Bela/projects/Thesis/BME280.cpp:151:4
	pop	{r4, r10, r11, pc}
.Ltmp257:
.Lfunc_end10:
	.size	_ZN6BME2805beginEv, .Lfunc_end10-_ZN6BME2805beginEv
	.cfi_endproc
	.fnend

	.globl	_ZN6BME2808ReadDataEPi
	.p2align	2
	.type	_ZN6BME2808ReadDataEPi,%function
_ZN6BME2808ReadDataEPi:                 @ @_ZN6BME2808ReadDataEPi
.Lfunc_begin11:
	.loc	14 216 0                @ /root/Bela/projects/Thesis/BME280.cpp:216:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
.Ltmp258:
	.cfi_def_cfa_offset 36
.Ltmp259:
	.cfi_offset lr, -4
.Ltmp260:
	.cfi_offset r11, -8
.Ltmp261:
	.cfi_offset r10, -12
.Ltmp262:
	.cfi_offset r9, -16
.Ltmp263:
	.cfi_offset r8, -20
.Ltmp264:
	.cfi_offset r7, -24
.Ltmp265:
	.cfi_offset r6, -28
.Ltmp266:
	.cfi_offset r5, -32
.Ltmp267:
	.cfi_offset r4, -36
	.setfp	r11, sp, #28
	add	r11, sp, #28
.Ltmp268:
	.cfi_def_cfa r11, 8
	.pad	#12
	sub	sp, sp, #12
	@DEBUG_VALUE: ReadData:this <- %R0
	@DEBUG_VALUE: ReadData:data <- %R1
	mov	r5, r0
.Ltmp269:
	@DEBUG_VALUE: ReadData:this <- %R5
	mov	r4, r1
.Ltmp270:
	@DEBUG_VALUE: ReadData:data <- %R4
	.loc	14 221 19 prologue_end  @ /root/Bela/projects/Thesis/BME280.cpp:221:19
	ldr	r0, [r5, #28]
.Ltmp271:
	.loc	14 221 8 is_stmt 0      @ /root/Bela/projects/Thesis/BME280.cpp:221:8
	cmp	r0, #1
	bne	.LBB11_2
.Ltmp272:
@ BB#1:
	@DEBUG_VALUE: ReadData:data <- %R4
	@DEBUG_VALUE: ReadData:this <- %R5
	@DEBUG_VALUE: CalculateRegisters:this <- %R5
	.loc	14 119 4 is_stmt 1      @ /root/Bela/projects/Thesis/BME280.cpp:119:4
	ldr	r0, [r5]
	mov	r1, #242
	ldrb	r2, [r5, #20]
.Ltmp273:
	.loc	14 165 36               @ /root/Bela/projects/Thesis/BME280.cpp:165:36
	ldr	r6, [r5, #16]
.Ltmp274:
	.loc	14 119 4                @ /root/Bela/projects/Thesis/BME280.cpp:119:4
	ldr	r3, [r0, #20]
	mov	r0, r5
.Ltmp275:
	.loc	14 167 34               @ /root/Bela/projects/Thesis/BME280.cpp:167:34
	ldr	r8, [r5, #32]
	.loc	14 167 75 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:167:75
	ldr	r10, [r5, #36]
	.loc	14 167 110              @ /root/Bela/projects/Thesis/BME280.cpp:167:110
	ldr	r9, [r5, #40]
	.loc	14 165 73 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:165:73
	ldr	r7, [r5, #24]
.Ltmp276:
	.loc	14 119 4                @ /root/Bela/projects/Thesis/BME280.cpp:119:4
	blx	r3
	.loc	14 120 4                @ /root/Bela/projects/Thesis/BME280.cpp:120:4
	ldr	r0, [r5]
.Ltmp277:
	.loc	14 165 44               @ /root/Bela/projects/Thesis/BME280.cpp:165:44
	lsl	r1, r6, #5
	.loc	14 165 87 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:165:87
	orr	r1, r1, r7, lsl #2
.Ltmp278:
	.loc	14 120 4 is_stmt 1      @ /root/Bela/projects/Thesis/BME280.cpp:120:4
	ldr	r3, [r0, #20]
.Ltmp279:
	.loc	14 165 87               @ /root/Bela/projects/Thesis/BME280.cpp:165:87
	orr	r0, r1, #1
.Ltmp280:
	.loc	14 120 4                @ /root/Bela/projects/Thesis/BME280.cpp:120:4
	mov	r1, #244
	uxtb	r2, r0
	mov	r0, r5
	blx	r3
	.loc	14 121 4                @ /root/Bela/projects/Thesis/BME280.cpp:121:4
	ldr	r0, [r5]
.Ltmp281:
	.loc	14 167 82               @ /root/Bela/projects/Thesis/BME280.cpp:167:82
	lsl	r1, r10, #2
	.loc	14 167 52 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:167:52
	orr	r1, r1, r8, lsl #5
.Ltmp282:
	.loc	14 121 4 is_stmt 1      @ /root/Bela/projects/Thesis/BME280.cpp:121:4
	ldr	r3, [r0, #20]
.Ltmp283:
	.loc	14 167 88               @ /root/Bela/projects/Thesis/BME280.cpp:167:88
	orr	r0, r1, r9
.Ltmp284:
	.loc	14 121 4                @ /root/Bela/projects/Thesis/BME280.cpp:121:4
	mov	r1, #245
	uxtb	r2, r0
	mov	r0, r5
	blx	r3
.Ltmp285:
.LBB11_2:
	@DEBUG_VALUE: ReadData:data <- %R4
	@DEBUG_VALUE: ReadData:this <- %R5
	.loc	14 227 14               @ /root/Bela/projects/Thesis/BME280.cpp:227:14
	ldr	r0, [r5]
	add	r6, sp, #4
	mov	r1, #247
	mov	r3, #8
	mov	r2, r6
	ldr	r7, [r0, #24]
	mov	r0, r5
	blx	r7
.Ltmp286:
	@DEBUG_VALUE: i <- 1
	.loc	14 231 38               @ /root/Bela/projects/Thesis/BME280.cpp:231:38
	vld1.32	{d16[0]}, [r6:32]
	add	r1, r6, #4
	vmovl.u8	q8, d16
	vmovl.u16	q8, d16
	.loc	14 231 15 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:231:15
	vst1.32	{d16, d17}, [r4]!
.Ltmp287:
	.loc	14 231 38               @ /root/Bela/projects/Thesis/BME280.cpp:231:38
	vld1.32	{d16[0]}, [r1:32]
	vmovl.u8	q8, d16
	vmovl.u16	q8, d16
	.loc	14 231 15               @ /root/Bela/projects/Thesis/BME280.cpp:231:15
	vst1.32	{d16, d17}, [r4]
.Ltmp288:
	.loc	14 244 4 is_stmt 1      @ /root/Bela/projects/Thesis/BME280.cpp:244:4
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Ltmp289:
.Lfunc_end11:
	.size	_ZN6BME2808ReadDataEPi, .Lfunc_end11-_ZN6BME2808ReadDataEPi
	.cfi_endproc
	.fnend

	.globl	_ZN6BME28020CalculateTemperatureEiRiNS_8TempUnitE
	.p2align	3
	.type	_ZN6BME28020CalculateTemperatureEiRiNS_8TempUnitE,%function
_ZN6BME28020CalculateTemperatureEiRiNS_8TempUnitE: @ @_ZN6BME28020CalculateTemperatureEiRiNS_8TempUnitE
.Lfunc_begin12:
	.loc	14 255 0                @ /root/Bela/projects/Thesis/BME280.cpp:255:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r5, r6, lr}
	push	{r4, r5, r6, lr}
.Ltmp290:
	.cfi_def_cfa_offset 16
.Ltmp291:
	.cfi_offset lr, -4
.Ltmp292:
	.cfi_offset r6, -8
.Ltmp293:
	.cfi_offset r5, -12
.Ltmp294:
	.cfi_offset r4, -16
	@DEBUG_VALUE: CalculateTemperature:this <- %R0
	@DEBUG_VALUE: CalculateTemperature:raw <- %R1
	@DEBUG_VALUE: CalculateTemperature:t_fine <- %R2
	@DEBUG_VALUE: CalculateTemperature:unit <- %R3
.Ltmp295:
	.loc	14 258 40 prologue_end  @ /root/Bela/projects/Thesis/BME280.cpp:258:40
	ldr	r12, [r0, #44]
	.loc	14 265 11               @ /root/Bela/projects/Thesis/BME280.cpp:265:11
	cmp	r3, #0
	.loc	14 258 23               @ /root/Bela/projects/Thesis/BME280.cpp:258:23
	ldrb	lr, [r0, #45]
	.loc	14 260 22               @ /root/Bela/projects/Thesis/BME280.cpp:260:22
	ldrb	r5, [r0, #49]
	.loc	14 258 40               @ /root/Bela/projects/Thesis/BME280.cpp:258:40
	uxtb	r4, r12
	.loc	14 260 39               @ /root/Bela/projects/Thesis/BME280.cpp:260:39
	ldrb	r0, [r0, #48]
.Ltmp296:
	.loc	14 258 38               @ /root/Bela/projects/Thesis/BME280.cpp:258:38
	orr	lr, r4, lr, lsl #8
	.loc	14 265 67 discriminator 2 @ /root/Bela/projects/Thesis/BME280.cpp:265:67
	vldr	d17, .LCPI12_0
	.loc	14 262 26               @ /root/Bela/projects/Thesis/BME280.cpp:262:26
	rsb	r4, lr, r1, asr #4
	.loc	14 260 37               @ /root/Bela/projects/Thesis/BME280.cpp:260:37
	orr	r0, r0, r5, lsl #8
	.loc	14 261 19               @ /root/Bela/projects/Thesis/BME280.cpp:261:19
	asr	r1, r1, #3
.Ltmp297:
	.loc	14 265 43 discriminator 1 @ /root/Bela/projects/Thesis/BME280.cpp:265:43
	vldr	d18, .LCPI12_1
	.loc	14 262 47               @ /root/Bela/projects/Thesis/BME280.cpp:262:47
	mul	r6, r4, r4
	.loc	14 261 25               @ /root/Bela/projects/Thesis/BME280.cpp:261:25
	sub	r1, r1, lr, lsl #1
	.loc	14 262 102              @ /root/Bela/projects/Thesis/BME280.cpp:262:102
	sxth	r0, r0
	.loc	14 261 64               @ /root/Bela/projects/Thesis/BME280.cpp:261:64
	asr	r4, r12, #16
	.loc	14 265 72 discriminator 2 @ /root/Bela/projects/Thesis/BME280.cpp:265:72
	vldr	d19, .LCPI12_2
	.loc	14 261 52               @ /root/Bela/projects/Thesis/BME280.cpp:261:52
	mul	r1, r4, r1
	.loc	14 262 83               @ /root/Bela/projects/Thesis/BME280.cpp:262:83
	lsr	r6, r6, #12
	.loc	14 262 90 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:262:90
	mul	r0, r0, r6
	.loc	14 262 111              @ /root/Bela/projects/Thesis/BME280.cpp:262:111
	asr	r0, r0, #14
.Ltmp298:
	@DEBUG_VALUE: CalculateTemperature:var2 <- %R0
	.loc	14 263 18 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:263:18
	add	r0, r0, r1, asr #11
.Ltmp299:
	.loc	14 264 20               @ /root/Bela/projects/Thesis/BME280.cpp:264:20
	add	r1, r0, r0, lsl #2
	.loc	14 264 24 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:264:24
	add	r1, r1, #128
	.loc	14 264 31               @ /root/Bela/projects/Thesis/BME280.cpp:264:31
	asr	r1, r1, #8
.Ltmp300:
	@DEBUG_VALUE: CalculateTemperature:final <- %R1
	.loc	14 265 38 is_stmt 1 discriminator 1 @ /root/Bela/projects/Thesis/BME280.cpp:265:38
	vmov	s0, r1
.Ltmp301:
	@DEBUG_VALUE: CalculateTemperature:final <- %S0
	vcvt.f64.s32	d16, s0
	.loc	14 263 11               @ /root/Bela/projects/Thesis/BME280.cpp:263:11
	str	r0, [r2]
	.loc	14 265 67 discriminator 2 @ /root/Bela/projects/Thesis/BME280.cpp:265:67
	vmul.f64	d17, d16, d17
	.loc	14 265 43 is_stmt 0 discriminator 1 @ /root/Bela/projects/Thesis/BME280.cpp:265:43
	vmul.f64	d16, d16, d18
	.loc	14 265 72 discriminator 2 @ /root/Bela/projects/Thesis/BME280.cpp:265:72
	vadd.f64	d17, d17, d19
	.loc	14 265 11               @ /root/Bela/projects/Thesis/BME280.cpp:265:11
	vmoveq.f64	d17, d16
	.loc	14 265 11 discriminator 3 @ /root/Bela/projects/Thesis/BME280.cpp:265:11
	vcvt.f32.f64	s0, d17
.Ltmp302:
	.loc	14 265 4 discriminator 3 @ /root/Bela/projects/Thesis/BME280.cpp:265:4
	pop	{r4, r5, r6, pc}
.Ltmp303:
	.p2align	3
@ BB#1:
.LCPI12_0:
	.long	2370821947              @ double 0.017999999999999999
	.long	1066561175
.LCPI12_1:
	.long	1202590843              @ double 0.01
	.long	1065646817
.LCPI12_2:
	.long	0                       @ double 32
	.long	1077936128
.Lfunc_end12:
	.size	_ZN6BME28020CalculateTemperatureEiRiNS_8TempUnitE, .Lfunc_end12-_ZN6BME28020CalculateTemperatureEiRiNS_8TempUnitE
	.cfi_endproc
	.fnend

	.globl	_ZN6BME28017CalculateHumidityEii
	.p2align	3
	.type	_ZN6BME28017CalculateHumidityEii,%function
_ZN6BME28017CalculateHumidityEii:       @ @_ZN6BME28017CalculateHumidityEii
.Lfunc_begin13:
	.loc	14 275 0 is_stmt 1      @ /root/Bela/projects/Thesis/BME280.cpp:275:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, lr}
	push	{r4, lr}
.Ltmp304:
	.cfi_def_cfa_offset 8
.Ltmp305:
	.cfi_offset lr, -4
.Ltmp306:
	.cfi_offset r4, -8
	@DEBUG_VALUE: CalculateHumidity:this <- %R0
	@DEBUG_VALUE: CalculateHumidity:raw <- %R1
	@DEBUG_VALUE: CalculateHumidity:t_fine <- %R2
.Ltmp307:
	.loc	14 278 21 prologue_end  @ /root/Bela/projects/Thesis/BME280.cpp:278:21
	ldr	r12, [r0, #68]
	.loc	14 285 19               @ /root/Bela/projects/Thesis/BME280.cpp:285:19
	sub	r2, r2, #76800
.Ltmp308:
	@DEBUG_VALUE: CalculateHumidity:var1 <- %R2
	.loc	14 281 22               @ /root/Bela/projects/Thesis/BME280.cpp:281:22
	ldr	r0, [r0, #72]
.Ltmp309:
	.loc	14 288 30               @ /root/Bela/projects/Thesis/BME280.cpp:288:30
	mov	r4, #32768
	.loc	14 293 35               @ /root/Bela/projects/Thesis/BME280.cpp:293:35
	vldr	d17, .LCPI13_0
	.loc	14 280 21               @ /root/Bela/projects/Thesis/BME280.cpp:280:21
	lsr	r3, r12, #24
	.loc	14 287 81               @ /root/Bela/projects/Thesis/BME280.cpp:287:81
	mul	lr, r3, r2
	.loc	14 287 55 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:287:55
	asr	r3, r0, #24
	.loc	14 287 43               @ /root/Bela/projects/Thesis/BME280.cpp:287:43
	mul	r3, r3, r2
	.loc	14 288 30 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:288:30
	add	r4, r4, lr, asr #11
	.loc	14 287 64               @ /root/Bela/projects/Thesis/BME280.cpp:287:64
	asr	r3, r3, #10
	.loc	14 287 71 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:287:71
	mul	lr, r3, r4
	.loc	14 281 46 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:281:46
	ubfx	r4, r0, #8, #4
	.loc	14 281 38 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:281:38
	orr	r4, r4, r0, lsl #4
	.loc	14 286 27 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:286:27
	mov	r3, #16384
	add	r1, r3, r1, lsl #14
.Ltmp310:
	.loc	14 282 38               @ /root/Bela/projects/Thesis/BME280.cpp:282:38
	ubfx	r0, r0, #12, #12
	.loc	14 286 55               @ /root/Bela/projects/Thesis/BME280.cpp:286:55
	sub	r1, r1, r4, lsl #20
	.loc	14 286 85 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:286:85
	mls	r0, r0, r2, r1
	.loc	14 288 58 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:288:58
	mov	r1, #2097152
	add	r1, r1, lr, asr #10
	.loc	14 289 14               @ /root/Bela/projects/Thesis/BME280.cpp:289:14
	sbfx	r2, r12, #8, #16
.Ltmp311:
	.loc	14 288 80               @ /root/Bela/projects/Thesis/BME280.cpp:288:80
	mul	r1, r1, r2
	.loc	14 290 70               @ /root/Bela/projects/Thesis/BME280.cpp:290:70
	uxtb	r2, r12
	.loc	14 287 22               @ /root/Bela/projects/Thesis/BME280.cpp:287:22
	asr	r0, r0, #15
	.loc	14 289 22               @ /root/Bela/projects/Thesis/BME280.cpp:289:22
	add	r1, r1, #8192
	.loc	14 289 30 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:289:30
	asr	r1, r1, #14
	.loc	14 287 29 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:287:29
	mul	r0, r1, r0
.Ltmp312:
	@DEBUG_VALUE: CalculateHumidity:var1 <- %R0
	.loc	14 290 29               @ /root/Bela/projects/Thesis/BME280.cpp:290:29
	asr	r1, r0, #15
	.loc	14 290 36 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:290:36
	mul	r1, r1, r1
	.loc	14 290 52               @ /root/Bela/projects/Thesis/BME280.cpp:290:52
	lsr	r1, r1, #7
	.loc	14 290 58               @ /root/Bela/projects/Thesis/BME280.cpp:290:58
	mul	r1, r1, r2
	.loc	14 290 17               @ /root/Bela/projects/Thesis/BME280.cpp:290:17
	sub	r0, r0, r1, lsr #4
.Ltmp313:
	.loc	14 291 12 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:291:12
	cmp	r0, #0
	movwlt	r0, #0
	.loc	14 292 12               @ /root/Bela/projects/Thesis/BME280.cpp:292:12
	cmp	r0, #419430400
	movgt	r0, #419430400
	.loc	14 293 28               @ /root/Bela/projects/Thesis/BME280.cpp:293:28
	asr	r0, r0, #12
	.loc	14 293 11 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:293:11
	vmov	s0, r0
	vcvt.f64.u32	d16, s0
	.loc	14 293 35               @ /root/Bela/projects/Thesis/BME280.cpp:293:35
	vmul.f64	d16, d16, d17
	.loc	14 293 11               @ /root/Bela/projects/Thesis/BME280.cpp:293:11
	vcvt.f32.f64	s0, d16
	.loc	14 293 4                @ /root/Bela/projects/Thesis/BME280.cpp:293:4
	pop	{r4, pc}
.Ltmp314:
	.p2align	3
@ BB#1:
.LCPI13_0:
	.long	0                       @ double 9.765625E-4
	.long	1062207488
.Lfunc_end13:
	.size	_ZN6BME28017CalculateHumidityEii, .Lfunc_end13-_ZN6BME28017CalculateHumidityEii
	.cfi_endproc
	.fnend

	.globl	_ZN6BME28017CalculatePressureEiiNS_8PresUnitE
	.p2align	3
	.type	_ZN6BME28017CalculatePressureEiiNS_8PresUnitE,%function
_ZN6BME28017CalculatePressureEiiNS_8PresUnitE: @ @_ZN6BME28017CalculatePressureEiiNS_8PresUnitE
.Lfunc_begin14:
	.loc	14 304 0 is_stmt 1      @ /root/Bela/projects/Thesis/BME280.cpp:304:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
.Ltmp315:
	.cfi_def_cfa_offset 36
.Ltmp316:
	.cfi_offset lr, -4
.Ltmp317:
	.cfi_offset r11, -8
.Ltmp318:
	.cfi_offset r10, -12
.Ltmp319:
	.cfi_offset r9, -16
.Ltmp320:
	.cfi_offset r8, -20
.Ltmp321:
	.cfi_offset r7, -24
.Ltmp322:
	.cfi_offset r6, -28
.Ltmp323:
	.cfi_offset r5, -32
.Ltmp324:
	.cfi_offset r4, -36
	.setfp	r11, sp, #28
	add	r11, sp, #28
.Ltmp325:
	.cfi_def_cfa r11, 8
	.pad	#28
	sub	sp, sp, #28
	@DEBUG_VALUE: CalculatePressure:this <- %R0
	@DEBUG_VALUE: CalculatePressure:raw <- %R1
	@DEBUG_VALUE: CalculatePressure:t_fine <- %R2
	@DEBUG_VALUE: CalculatePressure:unit <- %R3
	mov	r5, r0
.Ltmp326:
	@DEBUG_VALUE: CalculatePressure:this <- %R5
	.loc	14 319 20 prologue_end  @ /root/Bela/projects/Thesis/BME280.cpp:319:20
	asr	r0, r2, #31
	subs	r2, r2, #131072
.Ltmp327:
	mov	r12, r3
.Ltmp328:
	@DEBUG_VALUE: CalculatePressure:unit <- %R12
	sbc	r3, r0, #0
	.loc	14 319 27 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:319:27
	adds	r0, r2, #3072
	adc	r10, r3, #0
	.loc	14 310 39 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:310:39
	ldr	r3, [r5, #52]
	.loc	14 320 16               @ /root/Bela/projects/Thesis/BME280.cpp:320:16
	umull	r8, r2, r0, r0
	mla	r2, r0, r10, r2
	mla	r4, r0, r10, r2
	.loc	14 323 36               @ /root/Bela/projects/Thesis/BME280.cpp:323:36
	asr	r2, r3, #16
	.loc	14 323 25 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:323:25
	umull	lr, r6, r2, r8
	str	r4, [sp, #24]           @ 4-byte Spill
	mla	r2, r2, r4, r6
	.loc	14 310 22 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:310:22
	ldrb	r4, [r5, #53]
	.loc	14 323 36               @ /root/Bela/projects/Thesis/BME280.cpp:323:36
	asr	r6, r3, #31
	.loc	14 310 39               @ /root/Bela/projects/Thesis/BME280.cpp:310:39
	uxtb	r3, r3
	.loc	14 310 37 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:310:37
	orr	r3, r3, r4, lsl #8
	.loc	14 323 25 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:323:25
	mla	r2, r6, r8, r2
	.loc	14 323 70 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:323:70
	sxth	r3, r3
	.loc	14 323 78               @ /root/Bela/projects/Thesis/BME280.cpp:323:78
	umull	r4, r6, r0, r3
	.loc	14 323 70               @ /root/Bela/projects/Thesis/BME280.cpp:323:70
	asr	r7, r3, #31
	.loc	14 323 78               @ /root/Bela/projects/Thesis/BME280.cpp:323:78
	mla	r6, r0, r7, r6
	.loc	14 323 44               @ /root/Bela/projects/Thesis/BME280.cpp:323:44
	lsr	r7, lr, #8
	orr	r7, r7, r2, lsl #24
	.loc	14 323 78               @ /root/Bela/projects/Thesis/BME280.cpp:323:78
	mla	r3, r10, r3, r6
	.loc	14 309 40 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:309:40
	ldrb	r6, [r5, #50]
	.loc	14 323 50               @ /root/Bela/projects/Thesis/BME280.cpp:323:50
	adds	r7, r7, r4, lsl #12
	.loc	14 323 78 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:323:78
	lsl	r3, r3, #12
	orr	r9, r3, r4, lsr #20
	.loc	14 309 23 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:309:23
	ldrb	r3, [r5, #51]
	.loc	14 323 50               @ /root/Bela/projects/Thesis/BME280.cpp:323:50
	adc	r2, r9, r2, asr #8
	.loc	14 324 34               @ /root/Bela/projects/Thesis/BME280.cpp:324:34
	add	r2, r2, #32768
	.loc	14 309 38               @ /root/Bela/projects/Thesis/BME280.cpp:309:38
	orr	r3, r6, r3, lsl #8
	.loc	14 324 43               @ /root/Bela/projects/Thesis/BME280.cpp:324:43
	umull	r7, r6, r7, r3
	mla	r3, r2, r3, r6
	.loc	14 324 63 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:324:63
	asr	r9, r3, #1
.Ltmp329:
	.loc	14 325 13 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:325:13
	orr	r7, r9, r3, asr #31
.Ltmp330:
	.loc	14 325 8 is_stmt 0      @ /root/Bela/projects/Thesis/BME280.cpp:325:8
	cmp	r7, #0
	beq	.LBB14_5
.Ltmp331:
@ BB#1:
	@DEBUG_VALUE: CalculatePressure:unit <- %R12
	@DEBUG_VALUE: CalculatePressure:this <- %R5
	@DEBUG_VALUE: CalculatePressure:raw <- %R1
	.loc	14 324 63 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:324:63
	asr	r2, r3, #31
	mov	lr, r1
	.loc	14 319 27               @ /root/Bela/projects/Thesis/BME280.cpp:319:27
	str	r2, [sp, #12]           @ 4-byte Spill
	movw	r6, #0
	.loc	14 314 40               @ /root/Bela/projects/Thesis/BME280.cpp:314:40
	ldr	r1, [r5, #60]
.Ltmp332:
	.loc	14 319 27               @ /root/Bela/projects/Thesis/BME280.cpp:319:27
	movt	r6, #65534
	.loc	14 314 22               @ /root/Bela/projects/Thesis/BME280.cpp:314:22
	str	r1, [sp, #16]           @ 4-byte Spill
	ldrb	r4, [r5, #61]
	.loc	14 314 40 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:314:40
	uxtb	r7, r1
	str	r12, [sp, #20]          @ 4-byte Spill
	.loc	14 312 40 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:312:40
	ldrb	r1, [r5, #56]
	.loc	14 314 38               @ /root/Bela/projects/Thesis/BME280.cpp:314:38
	orr	r4, r7, r4, lsl #8
	.loc	14 312 22               @ /root/Bela/projects/Thesis/BME280.cpp:312:22
	str	r1, [sp, #8]            @ 4-byte Spill
	.loc	14 320 23               @ /root/Bela/projects/Thesis/BME280.cpp:320:23
	ldr	r3, [sp, #24]           @ 4-byte Reload
	.loc	14 320 34 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:320:34
	sxth	r4, r4
	.loc	14 312 22 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:312:22
	ldrb	r1, [r5, #57]
	.loc	14 320 23               @ /root/Bela/projects/Thesis/BME280.cpp:320:23
	umull	r7, r12, r4, r8
.Ltmp333:
	.loc	14 313 40               @ /root/Bela/projects/Thesis/BME280.cpp:313:40
	str	r1, [sp, #4]            @ 4-byte Spill
	.loc	14 313 22 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:313:22
	ldrb	r1, [r5, #59]
	.loc	14 313 40               @ /root/Bela/projects/Thesis/BME280.cpp:313:40
	ldrb	r2, [r5, #58]
	.loc	14 320 23 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:320:23
	mla	r12, r4, r3, r12
	.loc	14 320 34 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:320:34
	asr	r4, r4, #31
	.loc	14 313 38 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:313:38
	orr	r1, r2, r1, lsl #8
	.loc	14 320 23               @ /root/Bela/projects/Thesis/BME280.cpp:320:23
	mla	r12, r4, r8, r12
	.loc	14 321 36               @ /root/Bela/projects/Thesis/BME280.cpp:321:36
	sxth	r1, r1
	.loc	14 321 44 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:321:44
	umull	r2, r4, r0, r6
	.loc	14 321 36               @ /root/Bela/projects/Thesis/BME280.cpp:321:36
	asr	r6, r1, #31
	umull	r8, r3, r2, r1
	mla	r2, r2, r6, r3
	.loc	14 319 27 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:319:27
	mvn	r3, #0
	.loc	14 312 38               @ /root/Bela/projects/Thesis/BME280.cpp:312:38
	ldr	r6, [sp, #4]            @ 4-byte Reload
	.loc	14 321 44               @ /root/Bela/projects/Thesis/BME280.cpp:321:44
	mla	r0, r0, r3, r4
	.loc	14 319 27               @ /root/Bela/projects/Thesis/BME280.cpp:319:27
	movw	r3, #0
	movt	r3, #65534
	.loc	14 321 44               @ /root/Bela/projects/Thesis/BME280.cpp:321:44
	mla	r0, r10, r3, r0
	.loc	14 327 42               @ /root/Bela/projects/Thesis/BME280.cpp:327:42
	movw	r3, #3125
	mla	r1, r0, r1, r2
	.loc	14 326 23               @ /root/Bela/projects/Thesis/BME280.cpp:326:23
	rsb	r0, lr, #1048576
	.loc	14 326 15 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:326:15
	and	r2, r0, #-2147483648
	.loc	14 327 27 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:327:27
	orr	r2, r2, r0, lsr #1
	.loc	14 321 16               @ /root/Bela/projects/Thesis/BME280.cpp:321:16
	rsbs	r0, r7, r0, lsl #31
	sbc	r2, r2, r12
	.loc	14 322 16               @ /root/Bela/projects/Thesis/BME280.cpp:322:16
	adds	r0, r0, r8
	adc	r1, r2, r1
	.loc	14 312 38               @ /root/Bela/projects/Thesis/BME280.cpp:312:38
	ldr	r2, [sp, #8]            @ 4-byte Reload
	.loc	14 327 42               @ /root/Bela/projects/Thesis/BME280.cpp:327:42
	umull	r0, r7, r0, r3
	.loc	14 312 38               @ /root/Bela/projects/Thesis/BME280.cpp:312:38
	orr	r2, r2, r6, lsl #8
	.loc	14 322 29               @ /root/Bela/projects/Thesis/BME280.cpp:322:29
	sxth	r2, r2
	.loc	14 327 34               @ /root/Bela/projects/Thesis/BME280.cpp:327:34
	sub	r1, r1, r2, lsl #3
	.loc	14 327 49 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:327:49
	mov	r2, r9
	.loc	14 327 42               @ /root/Bela/projects/Thesis/BME280.cpp:327:42
	mla	r1, r1, r3, r7
	.loc	14 327 49               @ /root/Bela/projects/Thesis/BME280.cpp:327:49
	ldr	r3, [sp, #12]           @ 4-byte Reload
	bl	__aeabi_ldivmod
	.loc	14 317 22 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:317:22
	ldrb	r2, [r5, #67]
	.loc	14 328 42               @ /root/Bela/projects/Thesis/BME280.cpp:328:42
	lsr	r7, r0, #13
	.loc	14 317 40               @ /root/Bela/projects/Thesis/BME280.cpp:317:40
	ldrb	r3, [r5, #66]
	.loc	14 328 42               @ /root/Bela/projects/Thesis/BME280.cpp:328:42
	orr	r7, r7, r1, lsl #19
	.loc	14 332 32               @ /root/Bela/projects/Thesis/BME280.cpp:332:32
	vldr	d17, .LCPI14_1
	.loc	14 317 38               @ /root/Bela/projects/Thesis/BME280.cpp:317:38
	orr	r2, r3, r2, lsl #8
	.loc	14 328 22               @ /root/Bela/projects/Thesis/BME280.cpp:328:22
	sxth	r2, r2
	.loc	14 328 30 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:328:30
	umull	r3, r6, r7, r2
	.loc	14 328 22               @ /root/Bela/projects/Thesis/BME280.cpp:328:22
	asr	r4, r2, #31
	.loc	14 328 30               @ /root/Bela/projects/Thesis/BME280.cpp:328:30
	mla	r6, r7, r4, r6
	.loc	14 328 42               @ /root/Bela/projects/Thesis/BME280.cpp:328:42
	asr	r4, r1, #13
	.loc	14 328 30               @ /root/Bela/projects/Thesis/BME280.cpp:328:30
	mla	r12, r4, r2, r6
	.loc	14 316 22 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:316:22
	ldrb	r6, [r5, #65]
	.loc	14 316 40 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:316:40
	ldrb	r5, [r5, #64]
.Ltmp334:
	.loc	14 328 49 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:328:49
	umull	lr, r2, r3, r7
	mla	r2, r3, r4, r2
	.loc	14 316 38               @ /root/Bela/projects/Thesis/BME280.cpp:316:38
	orr	r3, r5, r6, lsl #8
	.loc	14 329 22               @ /root/Bela/projects/Thesis/BME280.cpp:329:22
	sxth	r3, r3
	.loc	14 329 30 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:329:30
	umull	r4, r5, r3, r0
	mla	r5, r3, r1, r5
	.loc	14 329 22               @ /root/Bela/projects/Thesis/BME280.cpp:329:22
	asr	r3, r3, #31
	.loc	14 328 49 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:328:49
	mla	r2, r12, r7, r2
	.loc	14 328 69 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:328:69
	lsr	r7, lr, #25
	.loc	14 329 30 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:329:30
	mla	r3, r3, r0, r5
	.loc	14 329 42 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:329:42
	lsr	r5, r4, #19
	.loc	14 328 69 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:328:69
	orr	r7, r7, r2, lsl #7
	.loc	14 329 42               @ /root/Bela/projects/Thesis/BME280.cpp:329:42
	lsr	r6, r3, #19
	orr	r3, r5, r3, lsl #13
	.loc	14 330 26               @ /root/Bela/projects/Thesis/BME280.cpp:330:26
	adds	r0, r3, r0
	adc	r1, r6, r1
	.loc	14 330 33 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:330:33
	adds	r0, r0, r7
	adc	r1, r1, r2, asr #25
	.loc	14 330 41               @ /root/Bela/projects/Thesis/BME280.cpp:330:41
	lsr	r0, r0, #8
	orr	r0, r0, r1, lsl #24
	.loc	14 330 60               @ /root/Bela/projects/Thesis/BME280.cpp:330:60
	ldr	r1, [sp, #16]           @ 4-byte Reload
	asr	r1, r1, #16
	.loc	14 330 47               @ /root/Bela/projects/Thesis/BME280.cpp:330:47
	add	r0, r0, r1, lsl #4
	.loc	14 332 12 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:332:12
	vmov	s0, r0
	vcvt.f64.u32	d16, s0
	.loc	14 335 4                @ /root/Bela/projects/Thesis/BME280.cpp:335:4
	ldr	r0, [sp, #20]           @ 4-byte Reload
	sub	r0, r0, #1
	cmp	r0, #5
	.loc	14 332 32               @ /root/Bela/projects/Thesis/BME280.cpp:332:32
	vmul.f64	d16, d16, d17
	.loc	14 332 12 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:332:12
	vcvt.f32.f64	s0, d16
.Ltmp335:
	@DEBUG_VALUE: CalculatePressure:final <- %S0
	bhi	.LBB14_12
.Ltmp336:
@ BB#2:
	@DEBUG_VALUE: CalculatePressure:final <- %S0
	adr	r1, .LJTI14_0
	lsl	r0, r0, #2
	ldr	pc, [r0, r1]
.Ltmp337:
@ BB#3:
	.p2align	2
.LJTI14_0:
	.long	.LBB14_4
	.long	.LBB14_6
	.long	.LBB14_7
	.long	.LBB14_8
	.long	.LBB14_9
	.long	.LBB14_10
.LBB14_4:
.Ltmp338:
	@DEBUG_VALUE: CalculatePressure:final <- %S0
	.loc	14 337 16 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:337:16
	vcvt.f64.f32	d16, s0
	vldr	d17, .LCPI14_7
	b	.LBB14_11
.Ltmp339:
.LBB14_5:
	@DEBUG_VALUE: CalculatePressure:unit <- %R12
	@DEBUG_VALUE: CalculatePressure:this <- %R5
	@DEBUG_VALUE: CalculatePressure:raw <- %R1
	vldr	s0, .LCPI14_0
	.loc	14 358 1                @ /root/Bela/projects/Thesis/BME280.cpp:358:1
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Ltmp340:
.LBB14_6:
	@DEBUG_VALUE: CalculatePressure:final <- %S0
	.loc	14 340 16               @ /root/Bela/projects/Thesis/BME280.cpp:340:16
	vcvt.f64.f32	d16, s0
	vldr	d17, .LCPI14_6
	b	.LBB14_11
.Ltmp341:
.LBB14_7:
	@DEBUG_VALUE: CalculatePressure:final <- %S0
	.loc	14 343 16               @ /root/Bela/projects/Thesis/BME280.cpp:343:16
	vcvt.f64.f32	d16, s0
	vldr	d17, .LCPI14_5
	b	.LBB14_11
.Ltmp342:
.LBB14_8:
	@DEBUG_VALUE: CalculatePressure:final <- %S0
	.loc	14 346 16               @ /root/Bela/projects/Thesis/BME280.cpp:346:16
	vcvt.f64.f32	d16, s0
	vldr	d17, .LCPI14_4
	b	.LBB14_11
.Ltmp343:
.LBB14_9:
	@DEBUG_VALUE: CalculatePressure:final <- %S0
	.loc	14 349 16               @ /root/Bela/projects/Thesis/BME280.cpp:349:16
	vcvt.f64.f32	d16, s0
	vldr	d17, .LCPI14_3
	b	.LBB14_11
.Ltmp344:
.LBB14_10:
	@DEBUG_VALUE: CalculatePressure:final <- %S0
	.loc	14 352 16               @ /root/Bela/projects/Thesis/BME280.cpp:352:16
	vcvt.f64.f32	d16, s0
	vldr	d17, .LCPI14_2
.Ltmp345:
.LBB14_11:
	@DEBUG_VALUE: CalculatePressure:final <- %S0
	vmul.f64	d16, d16, d17
	vcvt.f32.f64	s0, d16
.Ltmp346:
	@DEBUG_VALUE: CalculatePressure:final <- %S0
.LBB14_12:
	@DEBUG_VALUE: CalculatePressure:final <- %S0
	.loc	14 358 1                @ /root/Bela/projects/Thesis/BME280.cpp:358:1
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Ltmp347:
	.p2align	3
@ BB#13:
.LCPI14_1:
	.long	0                       @ double 0.00390625
	.long	1064304640
.LCPI14_2:
	.long	4008727042              @ double 1.4503800000000017E-4
	.long	1059259050
.LCPI14_3:
	.long	2339367386              @ double 0.0075006170000002318
	.long	1065269495
.LCPI14_4:
	.long	2296604913              @ double 1.0000000000000001E-5
	.long	1055193269
.LCPI14_5:
	.long	174478791               @ double 9.8692328947364092E-6
	.long	1055175297
.LCPI14_6:
	.long	590455363               @ double 2.9530100000000145E-4
	.long	1060330068
.LCPI14_7:
	.long	1202590843              @ double 0.01
	.long	1065646817
.LCPI14_0:
	.long	2143289344              @ float NaN
.Lfunc_end14:
	.size	_ZN6BME28017CalculatePressureEiiNS_8PresUnitE, .Lfunc_end14-_ZN6BME28017CalculatePressureEiiNS_8PresUnitE
	.cfi_endproc
	.fnend

	.globl	_ZN6BME2804tempENS_8TempUnitE
	.p2align	3
	.type	_ZN6BME2804tempENS_8TempUnitE,%function
_ZN6BME2804tempENS_8TempUnitE:          @ @_ZN6BME2804tempENS_8TempUnitE
.Lfunc_begin15:
	.loc	14 366 0                @ /root/Bela/projects/Thesis/BME280.cpp:366:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r5, r6, r10, r11, lr}
	push	{r4, r5, r6, r10, r11, lr}
.Ltmp348:
	.cfi_def_cfa_offset 24
.Ltmp349:
	.cfi_offset lr, -4
.Ltmp350:
	.cfi_offset r11, -8
.Ltmp351:
	.cfi_offset r10, -12
.Ltmp352:
	.cfi_offset r6, -16
.Ltmp353:
	.cfi_offset r5, -20
.Ltmp354:
	.cfi_offset r4, -24
	.setfp	r11, sp, #16
	add	r11, sp, #16
.Ltmp355:
	.cfi_def_cfa r11, 8
	.pad	#32
	sub	sp, sp, #32
	@DEBUG_VALUE: temp:this <- %R0
	@DEBUG_VALUE: temp:unit <- %R1
	mov	r6, r1
.Ltmp356:
	@DEBUG_VALUE: temp:unit <- %R6
	mov	r1, sp
.Ltmp357:
	@DEBUG_VALUE: temp:data <- [%R1+0]
	mov	r5, r0
.Ltmp358:
	@DEBUG_VALUE: temp:this <- %R5
	.loc	14 369 8 prologue_end   @ /root/Bela/projects/Thesis/BME280.cpp:369:8
	bl	_ZN6BME2808ReadDataEPi
.Ltmp359:
	.loc	14 369 7 is_stmt 0      @ /root/Bela/projects/Thesis/BME280.cpp:369:7
	cmp	r0, #1
	bne	.LBB15_2
.Ltmp360:
@ BB#1:
	@DEBUG_VALUE: temp:this <- %R5
	@DEBUG_VALUE: temp:unit <- %R6
	@DEBUG_VALUE: CalculateTemperature:this <- %R5
	@DEBUG_VALUE: CalculateTemperature:raw <- %R0
	.loc	14 370 24 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:370:24
	add	r2, sp, #12
.Ltmp361:
	.loc	14 265 67 discriminator 2 @ /root/Bela/projects/Thesis/BME280.cpp:265:67
	vldr	d17, .LCPI15_1
	.loc	14 265 43 is_stmt 0 discriminator 1 @ /root/Bela/projects/Thesis/BME280.cpp:265:43
	vldr	d18, .LCPI15_2
	.loc	14 265 11               @ /root/Bela/projects/Thesis/BME280.cpp:265:11
	cmp	r6, #0
.Ltmp362:
	.loc	14 370 24 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:370:24
	ldm	r2, {r0, r1, r2}
.Ltmp363:
	.loc	14 258 40               @ /root/Bela/projects/Thesis/BME280.cpp:258:40
	ldr	r3, [r5, #44]
	.loc	14 258 23 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:258:23
	ldrb	r4, [r5, #45]
.Ltmp364:
	.loc	14 370 50 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:370:50
	lsl	r1, r1, #4
	.loc	14 370 39 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:370:39
	orr	r0, r1, r0, lsl #12
.Ltmp365:
	.loc	14 265 72 is_stmt 1 discriminator 2 @ /root/Bela/projects/Thesis/BME280.cpp:265:72
	vldr	d19, .LCPI15_3
	.loc	14 258 40               @ /root/Bela/projects/Thesis/BME280.cpp:258:40
	uxtb	r1, r3
.Ltmp366:
	.loc	14 370 56               @ /root/Bela/projects/Thesis/BME280.cpp:370:56
	orr	r0, r0, r2, asr #4
.Ltmp367:
	@DEBUG_VALUE: temp:rawTemp <- %R0
	.loc	14 258 38               @ /root/Bela/projects/Thesis/BME280.cpp:258:38
	orr	r1, r1, r4, lsl #8
	.loc	14 260 22               @ /root/Bela/projects/Thesis/BME280.cpp:260:22
	ldrb	r4, [r5, #49]
	.loc	14 262 26               @ /root/Bela/projects/Thesis/BME280.cpp:262:26
	rsb	r2, r1, r0, asr #4
	.loc	14 261 19               @ /root/Bela/projects/Thesis/BME280.cpp:261:19
	asr	r0, r0, #3
.Ltmp368:
	.loc	14 261 25 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:261:25
	sub	r0, r0, r1, lsl #1
	.loc	14 260 39 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:260:39
	ldrb	r5, [r5, #48]
.Ltmp369:
	.loc	14 262 47               @ /root/Bela/projects/Thesis/BME280.cpp:262:47
	mul	r2, r2, r2
	.loc	14 261 64               @ /root/Bela/projects/Thesis/BME280.cpp:261:64
	asr	r1, r3, #16
	.loc	14 261 52 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:261:52
	mul	r0, r0, r1
	.loc	14 262 83 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:262:83
	lsr	r1, r2, #12
	.loc	14 260 37               @ /root/Bela/projects/Thesis/BME280.cpp:260:37
	orr	r2, r5, r4, lsl #8
	.loc	14 262 102              @ /root/Bela/projects/Thesis/BME280.cpp:262:102
	sxth	r2, r2
	.loc	14 262 90 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:262:90
	mul	r1, r2, r1
	.loc	14 262 111              @ /root/Bela/projects/Thesis/BME280.cpp:262:111
	asr	r1, r1, #14
.Ltmp370:
	@DEBUG_VALUE: CalculateTemperature:var2 <- %R1
	.loc	14 263 18 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:263:18
	add	r0, r1, r0, asr #11
	.loc	14 264 20               @ /root/Bela/projects/Thesis/BME280.cpp:264:20
	add	r0, r0, r0, lsl #2
	.loc	14 264 24 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:264:24
	add	r0, r0, #128
	.loc	14 264 31               @ /root/Bela/projects/Thesis/BME280.cpp:264:31
	asr	r0, r0, #8
.Ltmp371:
	@DEBUG_VALUE: CalculateTemperature:final <- %R0
	.loc	14 265 38 is_stmt 1 discriminator 1 @ /root/Bela/projects/Thesis/BME280.cpp:265:38
	vmov	s0, r0
.Ltmp372:
	@DEBUG_VALUE: CalculateTemperature:final <- %S0
	vcvt.f64.s32	d16, s0
	.loc	14 265 67 is_stmt 0 discriminator 2 @ /root/Bela/projects/Thesis/BME280.cpp:265:67
	vmul.f64	d17, d16, d17
	.loc	14 265 43 discriminator 1 @ /root/Bela/projects/Thesis/BME280.cpp:265:43
	vmul.f64	d16, d16, d18
	.loc	14 265 72 discriminator 2 @ /root/Bela/projects/Thesis/BME280.cpp:265:72
	vadd.f64	d17, d17, d19
	.loc	14 265 11               @ /root/Bela/projects/Thesis/BME280.cpp:265:11
	vmoveq.f64	d17, d16
	.loc	14 265 11 discriminator 3 @ /root/Bela/projects/Thesis/BME280.cpp:265:11
	vcvt.f32.f64	s0, d17
.Ltmp373:
	@DEBUG_VALUE: CalculateTemperature:unit <- %R6
	.loc	14 372 1 is_stmt 1 discriminator 1 @ /root/Bela/projects/Thesis/BME280.cpp:372:1
	sub	sp, r11, #16
	pop	{r4, r5, r6, r10, r11, pc}
.Ltmp374:
.LBB15_2:
	@DEBUG_VALUE: temp:this <- %R5
	@DEBUG_VALUE: temp:unit <- %R6
	vldr	s0, .LCPI15_0
	sub	sp, r11, #16
	pop	{r4, r5, r6, r10, r11, pc}
.Ltmp375:
	.p2align	3
@ BB#3:
.LCPI15_1:
	.long	2370821947              @ double 0.017999999999999999
	.long	1066561175
.LCPI15_2:
	.long	1202590843              @ double 0.01
	.long	1065646817
.LCPI15_3:
	.long	0                       @ double 32
	.long	1077936128
.LCPI15_0:
	.long	2143289344              @ float NaN
.Lfunc_end15:
	.size	_ZN6BME2804tempENS_8TempUnitE, .Lfunc_end15-_ZN6BME2804tempENS_8TempUnitE
	.cfi_endproc
	.fnend

	.globl	_ZN6BME2804presENS_8PresUnitE
	.p2align	2
	.type	_ZN6BME2804presENS_8PresUnitE,%function
_ZN6BME2804presENS_8PresUnitE:          @ @_ZN6BME2804presENS_8PresUnitE
.Lfunc_begin16:
	.loc	14 380 0                @ /root/Bela/projects/Thesis/BME280.cpp:380:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
.Ltmp376:
	.cfi_def_cfa_offset 24
.Ltmp377:
	.cfi_offset lr, -4
.Ltmp378:
	.cfi_offset r11, -8
.Ltmp379:
	.cfi_offset r7, -12
.Ltmp380:
	.cfi_offset r6, -16
.Ltmp381:
	.cfi_offset r5, -20
.Ltmp382:
	.cfi_offset r4, -24
	.setfp	r11, sp, #16
	add	r11, sp, #16
.Ltmp383:
	.cfi_def_cfa r11, 8
	.pad	#32
	sub	sp, sp, #32
	@DEBUG_VALUE: pres:this <- %R0
	@DEBUG_VALUE: pres:unit <- %R1
	mov	r4, r1
.Ltmp384:
	@DEBUG_VALUE: pres:unit <- %R4
	mov	r1, sp
.Ltmp385:
	@DEBUG_VALUE: pres:data <- [%R1+0]
	mov	r5, r0
.Ltmp386:
	@DEBUG_VALUE: pres:this <- %R5
	.loc	14 383 8 prologue_end   @ /root/Bela/projects/Thesis/BME280.cpp:383:8
	bl	_ZN6BME2808ReadDataEPi
.Ltmp387:
	.loc	14 383 7 is_stmt 0      @ /root/Bela/projects/Thesis/BME280.cpp:383:7
	cmp	r0, #1
	bne	.LBB16_2
.Ltmp388:
@ BB#1:
	@DEBUG_VALUE: pres:this <- %R5
	@DEBUG_VALUE: pres:unit <- %R4
	.loc	14 384 42 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:384:42
	ldr	r0, [sp, #16]
	.loc	14 385 28               @ /root/Bela/projects/Thesis/BME280.cpp:385:28
	ldr	r12, [sp]
	.loc	14 385 46 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:385:46
	ldmib	sp, {r3, lr}
	.loc	14 384 50 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:384:50
	lsl	r0, r0, #4
	.loc	14 384 24 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:384:24
	ldr	r2, [sp, #12]
.Ltmp389:
	@DEBUG_VALUE: CalculateTemperature:this <- %R5
	@DEBUG_VALUE: CalculateTemperature:unit <- 0
	.loc	14 384 59               @ /root/Bela/projects/Thesis/BME280.cpp:384:59
	ldr	r1, [sp, #20]
.Ltmp390:
	.loc	14 258 40 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:258:40
	ldr	r6, [r5, #44]
	.loc	14 258 23 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:258:23
	ldrb	r7, [r5, #45]
.Ltmp391:
	.loc	14 384 39 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:384:39
	orr	r0, r0, r2, lsl #12
	.loc	14 384 56 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:384:56
	orr	r0, r0, r1, asr #4
.Ltmp392:
	@DEBUG_VALUE: pres:rawTemp <- %R0
	@DEBUG_VALUE: CalculateTemperature:raw <- %R0
	.loc	14 258 40 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:258:40
	uxtb	r1, r6
	.loc	14 258 38 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:258:38
	orr	r1, r1, r7, lsl #8
	.loc	14 260 22 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:260:22
	ldrb	r7, [r5, #49]
	.loc	14 262 26               @ /root/Bela/projects/Thesis/BME280.cpp:262:26
	rsb	r2, r1, r0, asr #4
	.loc	14 261 19               @ /root/Bela/projects/Thesis/BME280.cpp:261:19
	asr	r0, r0, #3
.Ltmp393:
	.loc	14 261 25 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:261:25
	sub	r0, r0, r1, lsl #1
	.loc	14 261 64               @ /root/Bela/projects/Thesis/BME280.cpp:261:64
	asr	r1, r6, #16
	.loc	14 262 47 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:262:47
	mul	r2, r2, r2
	.loc	14 260 39               @ /root/Bela/projects/Thesis/BME280.cpp:260:39
	ldrb	r6, [r5, #48]
	.loc	14 261 52               @ /root/Bela/projects/Thesis/BME280.cpp:261:52
	mul	r0, r0, r1
	.loc	14 262 83               @ /root/Bela/projects/Thesis/BME280.cpp:262:83
	lsr	r1, r2, #12
	.loc	14 260 37               @ /root/Bela/projects/Thesis/BME280.cpp:260:37
	orr	r2, r6, r7, lsl #8
	.loc	14 262 102              @ /root/Bela/projects/Thesis/BME280.cpp:262:102
	sxth	r2, r2
	.loc	14 262 90 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:262:90
	mul	r1, r2, r1
	.loc	14 262 111              @ /root/Bela/projects/Thesis/BME280.cpp:262:111
	asr	r1, r1, #14
.Ltmp394:
	@DEBUG_VALUE: CalculateTemperature:var2 <- %R1
	.loc	14 263 18 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:263:18
	add	r2, r1, r0, asr #11
.Ltmp395:
	@DEBUG_VALUE: pres:t_fine <- %R2
	.loc	14 385 54               @ /root/Bela/projects/Thesis/BME280.cpp:385:54
	lsl	r0, r3, #4
	.loc	14 387 11               @ /root/Bela/projects/Thesis/BME280.cpp:387:11
	mov	r3, r4
	.loc	14 385 43               @ /root/Bela/projects/Thesis/BME280.cpp:385:43
	orr	r0, r0, r12, lsl #12
	.loc	14 385 60 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:385:60
	orr	r1, r0, lr, asr #4
.Ltmp396:
	@DEBUG_VALUE: pres:rawPressure <- %R1
	.loc	14 387 11 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:387:11
	mov	r0, r5
	bl	_ZN6BME28017CalculatePressureEiiNS_8PresUnitE
.Ltmp397:
	.loc	14 388 1 discriminator 1 @ /root/Bela/projects/Thesis/BME280.cpp:388:1
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
.Ltmp398:
.LBB16_2:
	@DEBUG_VALUE: pres:this <- %R5
	@DEBUG_VALUE: pres:unit <- %R4
	vldr	s0, .LCPI16_0
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
.Ltmp399:
	.p2align	2
@ BB#3:
.LCPI16_0:
	.long	2143289344              @ float NaN
.Lfunc_end16:
	.size	_ZN6BME2804presENS_8PresUnitE, .Lfunc_end16-_ZN6BME2804presENS_8PresUnitE
	.cfi_endproc
	.fnend

	.globl	_ZN6BME2803humEv
	.p2align	3
	.type	_ZN6BME2803humEv,%function
_ZN6BME2803humEv:                       @ @_ZN6BME2803humEv
.Lfunc_begin17:
	.loc	14 393 0                @ /root/Bela/projects/Thesis/BME280.cpp:393:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
.Ltmp400:
	.cfi_def_cfa_offset 16
.Ltmp401:
	.cfi_offset lr, -4
.Ltmp402:
	.cfi_offset r11, -8
.Ltmp403:
	.cfi_offset r5, -12
.Ltmp404:
	.cfi_offset r4, -16
	.setfp	r11, sp, #8
	add	r11, sp, #8
.Ltmp405:
	.cfi_def_cfa r11, 8
	.pad	#32
	sub	sp, sp, #32
	@DEBUG_VALUE: hum:this <- %R0
	mov	r1, sp
.Ltmp406:
	@DEBUG_VALUE: hum:data <- [%R1+0]
	mov	r4, r0
.Ltmp407:
	@DEBUG_VALUE: hum:this <- %R4
	.loc	14 396 8 prologue_end   @ /root/Bela/projects/Thesis/BME280.cpp:396:8
	bl	_ZN6BME2808ReadDataEPi
.Ltmp408:
	.loc	14 396 7 is_stmt 0      @ /root/Bela/projects/Thesis/BME280.cpp:396:7
	cmp	r0, #1
	bne	.LBB17_2
.Ltmp409:
@ BB#1:
	@DEBUG_VALUE: hum:this <- %R4
	.loc	14 397 42 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:397:42
	add	r12, sp, #16
	.loc	14 397 24 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:397:24
	ldr	lr, [sp, #12]
.Ltmp410:
	@DEBUG_VALUE: CalculateTemperature:this <- %R4
	@DEBUG_VALUE: CalculateTemperature:unit <- 0
	.loc	14 293 35 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:293:35
	vldr	d17, .LCPI17_1
.Ltmp411:
	.loc	14 397 42               @ /root/Bela/projects/Thesis/BME280.cpp:397:42
	ldm	r12, {r2, r3, r12}
.Ltmp412:
	.loc	14 258 40               @ /root/Bela/projects/Thesis/BME280.cpp:258:40
	ldr	r0, [r4, #44]
.Ltmp413:
	.loc	14 397 50               @ /root/Bela/projects/Thesis/BME280.cpp:397:50
	lsl	r2, r2, #4
.Ltmp414:
	.loc	14 258 23               @ /root/Bela/projects/Thesis/BME280.cpp:258:23
	ldrb	r1, [r4, #45]
.Ltmp415:
	.loc	14 397 39               @ /root/Bela/projects/Thesis/BME280.cpp:397:39
	orr	r2, r2, lr, lsl #12
.Ltmp416:
	.loc	14 260 22               @ /root/Bela/projects/Thesis/BME280.cpp:260:22
	ldrb	lr, [r4, #49]
.Ltmp417:
	.loc	14 397 56               @ /root/Bela/projects/Thesis/BME280.cpp:397:56
	orr	r2, r2, r3, asr #4
.Ltmp418:
	@DEBUG_VALUE: hum:rawTemp <- %R2
	@DEBUG_VALUE: CalculateTemperature:raw <- %R2
	.loc	14 258 40               @ /root/Bela/projects/Thesis/BME280.cpp:258:40
	uxtb	r3, r0
	.loc	14 258 38 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:258:38
	orr	r1, r3, r1, lsl #8
	.loc	14 260 39 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:260:39
	ldrb	r5, [r4, #48]
	.loc	14 262 26               @ /root/Bela/projects/Thesis/BME280.cpp:262:26
	rsb	r3, r1, r2, asr #4
	.loc	14 261 19               @ /root/Bela/projects/Thesis/BME280.cpp:261:19
	asr	r2, r2, #3
.Ltmp419:
	.loc	14 261 25 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:261:25
	sub	r1, r2, r1, lsl #1
	.loc	14 260 37 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:260:37
	orr	r2, r5, lr, lsl #8
	.loc	14 262 47               @ /root/Bela/projects/Thesis/BME280.cpp:262:47
	mul	r3, r3, r3
	.loc	14 261 64               @ /root/Bela/projects/Thesis/BME280.cpp:261:64
	asr	r0, r0, #16
	.loc	14 262 102              @ /root/Bela/projects/Thesis/BME280.cpp:262:102
	sxth	r2, r2
	.loc	14 261 52               @ /root/Bela/projects/Thesis/BME280.cpp:261:52
	mul	r0, r1, r0
	.loc	14 262 83               @ /root/Bela/projects/Thesis/BME280.cpp:262:83
	lsr	r1, r3, #12
.Ltmp420:
	.loc	14 281 22               @ /root/Bela/projects/Thesis/BME280.cpp:281:22
	ldr	r3, [r4, #72]
.Ltmp421:
	.loc	14 262 90               @ /root/Bela/projects/Thesis/BME280.cpp:262:90
	mul	r2, r2, r1
.Ltmp422:
	@DEBUG_VALUE: CalculateHumidity:this <- %R4
	.loc	14 278 21               @ /root/Bela/projects/Thesis/BME280.cpp:278:21
	ldr	r1, [r4, #68]
.Ltmp423:
	.loc	14 261 73               @ /root/Bela/projects/Thesis/BME280.cpp:261:73
	asr	r0, r0, #11
.Ltmp424:
	@DEBUG_VALUE: CalculateTemperature:var1 <- %R0
	.loc	14 287 55               @ /root/Bela/projects/Thesis/BME280.cpp:287:55
	asr	r5, r3, #24
	.loc	14 288 30               @ /root/Bela/projects/Thesis/BME280.cpp:288:30
	mov	r4, #32768
.Ltmp425:
	.loc	14 263 18               @ /root/Bela/projects/Thesis/BME280.cpp:263:18
	add	r0, r0, r2, asr #14
.Ltmp426:
	.loc	14 280 21               @ /root/Bela/projects/Thesis/BME280.cpp:280:21
	lsr	r2, r1, #24
	.loc	14 285 19               @ /root/Bela/projects/Thesis/BME280.cpp:285:19
	sub	r0, r0, #76800
.Ltmp427:
	@DEBUG_VALUE: CalculateHumidity:var1 <- %R0
	.loc	14 287 81               @ /root/Bela/projects/Thesis/BME280.cpp:287:81
	mul	r2, r0, r2
	.loc	14 287 43 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:287:43
	mul	r5, r0, r5
	.loc	14 288 30 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:288:30
	add	r2, r4, r2, asr #11
	.loc	14 288 58 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:288:58
	mov	r4, #2097152
	.loc	14 287 64 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:287:64
	asr	r5, r5, #10
	.loc	14 287 71 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:287:71
	mul	r2, r2, r5
.Ltmp428:
	.loc	14 398 44 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:398:44
	ldr	r5, [sp, #28]
	.loc	14 398 42 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:398:42
	orr	r5, r5, r12, lsl #8
.Ltmp429:
	@DEBUG_VALUE: hum:rawHumidity <- %R5
	@DEBUG_VALUE: CalculateHumidity:raw <- %R5
	.loc	14 288 58 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:288:58
	add	lr, r4, r2, asr #10
	.loc	14 281 46               @ /root/Bela/projects/Thesis/BME280.cpp:281:46
	ubfx	r4, r3, #8, #4
	.loc	14 286 27               @ /root/Bela/projects/Thesis/BME280.cpp:286:27
	mov	r2, #16384
	.loc	14 281 38               @ /root/Bela/projects/Thesis/BME280.cpp:281:38
	orr	r4, r4, r3, lsl #4
	.loc	14 286 27               @ /root/Bela/projects/Thesis/BME280.cpp:286:27
	add	r2, r2, r5, lsl #14
	.loc	14 289 14               @ /root/Bela/projects/Thesis/BME280.cpp:289:14
	sbfx	r5, r1, #8, #16
.Ltmp430:
	.loc	14 282 38               @ /root/Bela/projects/Thesis/BME280.cpp:282:38
	ubfx	r3, r3, #12, #12
	.loc	14 286 55               @ /root/Bela/projects/Thesis/BME280.cpp:286:55
	sub	r2, r2, r4, lsl #20
	.loc	14 288 80               @ /root/Bela/projects/Thesis/BME280.cpp:288:80
	mul	r5, lr, r5
	.loc	14 290 70               @ /root/Bela/projects/Thesis/BME280.cpp:290:70
	uxtb	r1, r1
	.loc	14 286 85               @ /root/Bela/projects/Thesis/BME280.cpp:286:85
	mls	r0, r0, r3, r2
.Ltmp431:
	.loc	14 289 22               @ /root/Bela/projects/Thesis/BME280.cpp:289:22
	add	r2, r5, #8192
	.loc	14 289 30 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:289:30
	asr	r2, r2, #14
	.loc	14 287 22 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:287:22
	asr	r0, r0, #15
	.loc	14 287 29 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:287:29
	mul	r0, r2, r0
.Ltmp432:
	@DEBUG_VALUE: CalculateHumidity:var1 <- %R0
	.loc	14 290 29 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:290:29
	asr	r2, r0, #15
	.loc	14 290 36 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:290:36
	mul	r2, r2, r2
	.loc	14 290 52               @ /root/Bela/projects/Thesis/BME280.cpp:290:52
	lsr	r2, r2, #7
	.loc	14 290 58               @ /root/Bela/projects/Thesis/BME280.cpp:290:58
	mul	r1, r2, r1
	.loc	14 290 17               @ /root/Bela/projects/Thesis/BME280.cpp:290:17
	sub	r0, r0, r1, lsr #4
.Ltmp433:
	.loc	14 291 12 is_stmt 1     @ /root/Bela/projects/Thesis/BME280.cpp:291:12
	cmp	r0, #0
	movwlt	r0, #0
	.loc	14 292 12               @ /root/Bela/projects/Thesis/BME280.cpp:292:12
	cmp	r0, #419430400
	movgt	r0, #419430400
	.loc	14 293 28               @ /root/Bela/projects/Thesis/BME280.cpp:293:28
	asr	r0, r0, #12
	.loc	14 293 11 is_stmt 0     @ /root/Bela/projects/Thesis/BME280.cpp:293:11
	vmov	s0, r0
	vcvt.f64.u32	d16, s0
	.loc	14 293 35               @ /root/Bela/projects/Thesis/BME280.cpp:293:35
	vmul.f64	d16, d16, d17
	.loc	14 293 11               @ /root/Bela/projects/Thesis/BME280.cpp:293:11
	vcvt.f32.f64	s0, d16
.Ltmp434:
	.loc	14 401 1 is_stmt 1 discriminator 1 @ /root/Bela/projects/Thesis/BME280.cpp:401:1
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.LBB17_2:
.Ltmp435:
	@DEBUG_VALUE: hum:this <- %R4
	vldr	s0, .LCPI17_0
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Ltmp436:
	.p2align	3
@ BB#3:
.LCPI17_1:
	.long	0                       @ double 9.765625E-4
	.long	1062207488
.LCPI17_0:
	.long	2143289344              @ float NaN
.Lfunc_end17:
	.size	_ZN6BME2803humEv, .Lfunc_end17-_ZN6BME2803humEv
	.cfi_endproc
	.fnend

	.globl	_ZN6BME2809chipModelEv
	.p2align	2
	.type	_ZN6BME2809chipModelEv,%function
_ZN6BME2809chipModelEv:                 @ @_ZN6BME2809chipModelEv
.Lfunc_begin18:
	.loc	14 433 0                @ /root/Bela/projects/Thesis/BME280.cpp:433:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: chipModel:this <- %R0
	.loc	14 434 11 prologue_end  @ /root/Bela/projects/Thesis/BME280.cpp:434:11
	ldr	r0, [r0, #76]
.Ltmp437:
	.loc	14 434 4 is_stmt 0      @ /root/Bela/projects/Thesis/BME280.cpp:434:4
	bx	lr
.Ltmp438:
.Lfunc_end18:
	.size	_ZN6BME2809chipModelEv, .Lfunc_end18-_ZN6BME2809chipModelEv
	.cfi_endproc
	.fnend

	.section	.text._ZN3I2cD2Ev,"axG",%progbits,_ZN3I2cD2Ev,comdat
	.weak	_ZN3I2cD2Ev
	.p2align	2
	.type	_ZN3I2cD2Ev,%function
_ZN3I2cD2Ev:                            @ @_ZN3I2cD2Ev
.Lfunc_begin19:
	.loc	1 90 0 is_stmt 1        @ ./include/I2c.h:90:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: ~I2c:this <- %R0
	.loc	1 90 20 prologue_end    @ ./include/I2c.h:90:20
	bx	lr
.Ltmp439:
.Lfunc_end19:
	.size	_ZN3I2cD2Ev, .Lfunc_end19-_ZN3I2cD2Ev
	.cfi_endproc
	.fnend

	.section	.text._ZN6BME280D0Ev,"axG",%progbits,_ZN6BME280D0Ev,comdat
	.weak	_ZN6BME280D0Ev
	.p2align	2
	.type	_ZN6BME280D0Ev,%function
_ZN6BME280D0Ev:                         @ @_ZN6BME280D0Ev
.Lfunc_begin20:
	.loc	6 46 0                  @ /root/Bela/projects/Thesis/BME280.h:46:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: ~BME280:this <- %R0
	.loc	6 46 7 prologue_end discriminator 1 @ /root/Bela/projects/Thesis/BME280.h:46:7
	b	_ZdlPv
.Ltmp440:
.Lfunc_end20:
	.size	_ZN6BME280D0Ev, .Lfunc_end20-_ZN6BME280D0Ev
	.cfi_endproc
	.fnend

	.type	_ZTV6BME280,%object     @ @_ZTV6BME280
	.section	.rodata,"a",%progbits
	.globl	_ZTV6BME280
	.p2align	2
_ZTV6BME280:
	.long	0
	.long	_ZTI6BME280
	.long	_ZN3I2cD2Ev
	.long	_ZN6BME280D0Ev
	.long	_ZN6BME28010InitializeEv
	.long	_ZN6BME28011setSettingsERKNS_8SettingsE
	.long	_ZNK6BME28011getSettingsEv
	.long	__cxa_pure_virtual
	.long	__cxa_pure_virtual
	.size	_ZTV6BME280, 36

	.type	_ZTS6BME280,%object     @ @_ZTS6BME280
	.globl	_ZTS6BME280
_ZTS6BME280:
	.asciz	"6BME280"
	.size	_ZTS6BME280, 8

	.type	_ZTS3I2c,%object        @ @_ZTS3I2c
	.section	.rodata._ZTS3I2c,"aG",%progbits,_ZTS3I2c,comdat
	.weak	_ZTS3I2c
_ZTS3I2c:
	.asciz	"3I2c"
	.size	_ZTS3I2c, 5

	.type	_ZTI3I2c,%object        @ @_ZTI3I2c
	.section	.rodata._ZTI3I2c,"aG",%progbits,_ZTI3I2c,comdat
	.weak	_ZTI3I2c
	.p2align	2
_ZTI3I2c:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS3I2c
	.size	_ZTI3I2c, 8

	.type	_ZTI6BME280,%object     @ @_ZTI6BME280
	.section	.rodata,"a",%progbits
	.globl	_ZTI6BME280
	.p2align	2
_ZTI6BME280:
	.long	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.long	_ZTS6BME280
	.long	_ZTI3I2c
	.size	_ZTI6BME280, 12

	.file	15 "<stdin>"
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)" @ string offset=0
.Linfo_string1:
	.asciz	"/root/Bela/projects/Thesis/build/BME280.cpp" @ string offset=45
.Linfo_string2:
	.asciz	"/root/Bela"            @ string offset=89
.Linfo_string3:
	.asciz	"_vptr$I2c"             @ string offset=100
.Linfo_string4:
	.asciz	"int"                   @ string offset=110
.Linfo_string5:
	.asciz	"__vtbl_ptr_type"       @ string offset=114
.Linfo_string6:
	.asciz	"i2C_bus"               @ string offset=130
.Linfo_string7:
	.asciz	"i2C_address"           @ string offset=138
.Linfo_string8:
	.asciz	"i2C_file"              @ string offset=150
.Linfo_string9:
	.asciz	"_ZN3I2c9readBytesEPvj" @ string offset=159
.Linfo_string10:
	.asciz	"readBytes"             @ string offset=181
.Linfo_string11:
	.asciz	"__ssize_t"             @ string offset=191
.Linfo_string12:
	.asciz	"ssize_t"               @ string offset=201
.Linfo_string13:
	.asciz	"unsigned int"          @ string offset=209
.Linfo_string14:
	.asciz	"size_t"                @ string offset=222
.Linfo_string15:
	.asciz	"_ZN3I2c10writeBytesEPKvj" @ string offset=229
.Linfo_string16:
	.asciz	"writeBytes"            @ string offset=254
.Linfo_string17:
	.asciz	"I2c"                   @ string offset=265
.Linfo_string18:
	.asciz	"_ZN3I2c10initI2C_RWEiii" @ string offset=269
.Linfo_string19:
	.asciz	"initI2C_RW"            @ string offset=293
.Linfo_string20:
	.asciz	"_ZN3I2c8closeI2CEv"    @ string offset=304
.Linfo_string21:
	.asciz	"closeI2C"              @ string offset=323
.Linfo_string22:
	.asciz	"~I2c"                  @ string offset=332
.Linfo_string23:
	.asciz	"CTRL_HUM_ADDR"         @ string offset=337
.Linfo_string24:
	.asciz	"unsigned char"         @ string offset=351
.Linfo_string25:
	.asciz	"uint8_t"               @ string offset=365
.Linfo_string26:
	.asciz	"CTRL_MEAS_ADDR"        @ string offset=373
.Linfo_string27:
	.asciz	"CONFIG_ADDR"           @ string offset=388
.Linfo_string28:
	.asciz	"PRESS_ADDR"            @ string offset=400
.Linfo_string29:
	.asciz	"TEMP_ADDR"             @ string offset=411
.Linfo_string30:
	.asciz	"HUM_ADDR"              @ string offset=421
.Linfo_string31:
	.asciz	"TEMP_DIG_ADDR"         @ string offset=430
.Linfo_string32:
	.asciz	"PRESS_DIG_ADDR"        @ string offset=444
.Linfo_string33:
	.asciz	"HUM_DIG_ADDR1"         @ string offset=459
.Linfo_string34:
	.asciz	"HUM_DIG_ADDR2"         @ string offset=473
.Linfo_string35:
	.asciz	"ID_ADDR"               @ string offset=487
.Linfo_string36:
	.asciz	"TEMP_DIG_LENGTH"       @ string offset=495
.Linfo_string37:
	.asciz	"PRESS_DIG_LENGTH"      @ string offset=511
.Linfo_string38:
	.asciz	"HUM_DIG_ADDR1_LENGTH"  @ string offset=528
.Linfo_string39:
	.asciz	"HUM_DIG_ADDR2_LENGTH"  @ string offset=549
.Linfo_string40:
	.asciz	"DIG_LENGTH"            @ string offset=570
.Linfo_string41:
	.asciz	"SENSOR_DATA_LENGTH"    @ string offset=581
.Linfo_string42:
	.asciz	"m_settings"            @ string offset=600
.Linfo_string43:
	.asciz	"tempOSR"               @ string offset=611
.Linfo_string44:
	.asciz	"OSR_Off"               @ string offset=619
.Linfo_string45:
	.asciz	"OSR_X1"                @ string offset=627
.Linfo_string46:
	.asciz	"OSR_X2"                @ string offset=634
.Linfo_string47:
	.asciz	"OSR_X4"                @ string offset=641
.Linfo_string48:
	.asciz	"OSR_X8"                @ string offset=648
.Linfo_string49:
	.asciz	"OSR_X16"               @ string offset=655
.Linfo_string50:
	.asciz	"OSR"                   @ string offset=663
.Linfo_string51:
	.asciz	"humOSR"                @ string offset=667
.Linfo_string52:
	.asciz	"presOSR"               @ string offset=674
.Linfo_string53:
	.asciz	"mode"                  @ string offset=682
.Linfo_string54:
	.asciz	"Mode_Sleep"            @ string offset=687
.Linfo_string55:
	.asciz	"Mode_Forced"           @ string offset=698
.Linfo_string56:
	.asciz	"Mode_Normal"           @ string offset=710
.Linfo_string57:
	.asciz	"Mode"                  @ string offset=722
.Linfo_string58:
	.asciz	"standbyTime"           @ string offset=727
.Linfo_string59:
	.asciz	"StandbyTime_500us"     @ string offset=739
.Linfo_string60:
	.asciz	"StandbyTime_62500us"   @ string offset=757
.Linfo_string61:
	.asciz	"StandbyTime_125ms"     @ string offset=777
.Linfo_string62:
	.asciz	"StandbyTime_250ms"     @ string offset=795
.Linfo_string63:
	.asciz	"StandbyTime_50ms"      @ string offset=813
.Linfo_string64:
	.asciz	"StandbyTime_1000ms"    @ string offset=830
.Linfo_string65:
	.asciz	"StandbyTime_10ms"      @ string offset=849
.Linfo_string66:
	.asciz	"StandbyTime_20ms"      @ string offset=866
.Linfo_string67:
	.asciz	"StandbyTime"           @ string offset=883
.Linfo_string68:
	.asciz	"filter"                @ string offset=895
.Linfo_string69:
	.asciz	"Filter_Off"            @ string offset=902
.Linfo_string70:
	.asciz	"Filter_2"              @ string offset=913
.Linfo_string71:
	.asciz	"Filter_4"              @ string offset=922
.Linfo_string72:
	.asciz	"Filter_8"              @ string offset=931
.Linfo_string73:
	.asciz	"Filter_16"             @ string offset=940
.Linfo_string74:
	.asciz	"Filter"                @ string offset=950
.Linfo_string75:
	.asciz	"spiEnable"             @ string offset=957
.Linfo_string76:
	.asciz	"SpiEnable_False"       @ string offset=967
.Linfo_string77:
	.asciz	"SpiEnable_True"        @ string offset=983
.Linfo_string78:
	.asciz	"SpiEnable"             @ string offset=998
.Linfo_string79:
	.asciz	"Settings"              @ string offset=1008
.Linfo_string80:
	.asciz	"m_dig"                 @ string offset=1017
.Linfo_string81:
	.asciz	"sizetype"              @ string offset=1023
.Linfo_string82:
	.asciz	"m_chip_model"          @ string offset=1032
.Linfo_string83:
	.asciz	"ChipModel_UNKNOWN"     @ string offset=1045
.Linfo_string84:
	.asciz	"ChipModel_BMP280"      @ string offset=1063
.Linfo_string85:
	.asciz	"ChipModel_BME280"      @ string offset=1080
.Linfo_string86:
	.asciz	"ChipModel"             @ string offset=1097
.Linfo_string87:
	.asciz	"m_initialized"         @ string offset=1107
.Linfo_string88:
	.asciz	"bool"                  @ string offset=1121
.Linfo_string89:
	.asciz	"BME280"                @ string offset=1126
.Linfo_string90:
	.asciz	"_ZN6BME2805beginEv"    @ string offset=1133
.Linfo_string91:
	.asciz	"begin"                 @ string offset=1152
.Linfo_string92:
	.asciz	"_ZN6BME2804tempENS_8TempUnitE" @ string offset=1158
.Linfo_string93:
	.asciz	"temp"                  @ string offset=1188
.Linfo_string94:
	.asciz	"float"                 @ string offset=1193
.Linfo_string95:
	.asciz	"TempUnit_Celsius"      @ string offset=1199
.Linfo_string96:
	.asciz	"TempUnit_Fahrenheit"   @ string offset=1216
.Linfo_string97:
	.asciz	"TempUnit"              @ string offset=1236
.Linfo_string98:
	.asciz	"_ZN6BME2804presENS_8PresUnitE" @ string offset=1245
.Linfo_string99:
	.asciz	"pres"                  @ string offset=1275
.Linfo_string100:
	.asciz	"PresUnit_Pa"           @ string offset=1280
.Linfo_string101:
	.asciz	"PresUnit_hPa"          @ string offset=1292
.Linfo_string102:
	.asciz	"PresUnit_inHg"         @ string offset=1305
.Linfo_string103:
	.asciz	"PresUnit_atm"          @ string offset=1319
.Linfo_string104:
	.asciz	"PresUnit_bar"          @ string offset=1332
.Linfo_string105:
	.asciz	"PresUnit_torr"         @ string offset=1345
.Linfo_string106:
	.asciz	"PresUnit_psi"          @ string offset=1359
.Linfo_string107:
	.asciz	"PresUnit"              @ string offset=1372
.Linfo_string108:
	.asciz	"_ZN6BME2803humEv"      @ string offset=1381
.Linfo_string109:
	.asciz	"hum"                   @ string offset=1398
.Linfo_string110:
	.asciz	"_ZN6BME2804readERfS0_S0_NS_8TempUnitENS_8PresUnitE" @ string offset=1402
.Linfo_string111:
	.asciz	"read"                  @ string offset=1453
.Linfo_string112:
	.asciz	"_ZN6BME2809chipModelEv" @ string offset=1458
.Linfo_string113:
	.asciz	"chipModel"             @ string offset=1481
.Linfo_string114:
	.asciz	"_ZN6BME28010InitializeEv" @ string offset=1491
.Linfo_string115:
	.asciz	"Initialize"            @ string offset=1516
.Linfo_string116:
	.asciz	"_ZN6BME28016InitializeFilterEv" @ string offset=1527
.Linfo_string117:
	.asciz	"InitializeFilter"      @ string offset=1558
.Linfo_string118:
	.asciz	"_ZN6BME28011setSettingsERKNS_8SettingsE" @ string offset=1575
.Linfo_string119:
	.asciz	"setSettings"           @ string offset=1615
.Linfo_string120:
	.asciz	"_ZNK6BME28011getSettingsEv" @ string offset=1627
.Linfo_string121:
	.asciz	"getSettings"           @ string offset=1654
.Linfo_string122:
	.asciz	"_ZN6BME28013WriteRegisterEhh" @ string offset=1666
.Linfo_string123:
	.asciz	"WriteRegister"         @ string offset=1695
.Linfo_string124:
	.asciz	"_ZN6BME28012ReadRegisterEhPhh" @ string offset=1709
.Linfo_string125:
	.asciz	"ReadRegister"          @ string offset=1739
.Linfo_string126:
	.asciz	"_ZN6BME28018CalculateRegistersERhS0_S0_" @ string offset=1752
.Linfo_string127:
	.asciz	"CalculateRegisters"    @ string offset=1792
.Linfo_string128:
	.asciz	"_ZN6BME28013WriteSettingsEv" @ string offset=1811
.Linfo_string129:
	.asciz	"WriteSettings"         @ string offset=1839
.Linfo_string130:
	.asciz	"_ZN6BME28010ReadChipIDEv" @ string offset=1853
.Linfo_string131:
	.asciz	"ReadChipID"            @ string offset=1878
.Linfo_string132:
	.asciz	"_ZN6BME2808ReadTrimEv" @ string offset=1889
.Linfo_string133:
	.asciz	"ReadTrim"              @ string offset=1911
.Linfo_string134:
	.asciz	"_ZN6BME2808ReadDataEPi" @ string offset=1920
.Linfo_string135:
	.asciz	"ReadData"              @ string offset=1943
.Linfo_string136:
	.asciz	"int32_t"               @ string offset=1952
.Linfo_string137:
	.asciz	"_ZN6BME28020CalculateTemperatureEiRiNS_8TempUnitE" @ string offset=1960
.Linfo_string138:
	.asciz	"CalculateTemperature"  @ string offset=2010
.Linfo_string139:
	.asciz	"_ZN6BME28017CalculateHumidityEii" @ string offset=2031
.Linfo_string140:
	.asciz	"CalculateHumidity"     @ string offset=2064
.Linfo_string141:
	.asciz	"_ZN6BME28017CalculatePressureEiiNS_8PresUnitE" @ string offset=2082
.Linfo_string142:
	.asciz	"CalculatePressure"     @ string offset=2128
.Linfo_string143:
	.asciz	"uint32_t"              @ string offset=2146
.Linfo_string144:
	.asciz	"long long int"         @ string offset=2155
.Linfo_string145:
	.asciz	"int64_t"               @ string offset=2169
.Linfo_string146:
	.asciz	"std"                   @ string offset=2177
.Linfo_string147:
	.asciz	"__acos_finite"         @ string offset=2181
.Linfo_string148:
	.asciz	"acos"                  @ string offset=2195
.Linfo_string149:
	.asciz	"double"                @ string offset=2200
.Linfo_string150:
	.asciz	"__asin_finite"         @ string offset=2207
.Linfo_string151:
	.asciz	"asin"                  @ string offset=2221
.Linfo_string152:
	.asciz	"atan"                  @ string offset=2226
.Linfo_string153:
	.asciz	"__atan2_finite"        @ string offset=2231
.Linfo_string154:
	.asciz	"atan2"                 @ string offset=2246
.Linfo_string155:
	.asciz	"ceil"                  @ string offset=2252
.Linfo_string156:
	.asciz	"cos"                   @ string offset=2257
.Linfo_string157:
	.asciz	"__cosh_finite"         @ string offset=2261
.Linfo_string158:
	.asciz	"cosh"                  @ string offset=2275
.Linfo_string159:
	.asciz	"__exp_finite"          @ string offset=2280
.Linfo_string160:
	.asciz	"exp"                   @ string offset=2293
.Linfo_string161:
	.asciz	"fabs"                  @ string offset=2297
.Linfo_string162:
	.asciz	"floor"                 @ string offset=2302
.Linfo_string163:
	.asciz	"__fmod_finite"         @ string offset=2308
.Linfo_string164:
	.asciz	"fmod"                  @ string offset=2322
.Linfo_string165:
	.asciz	"frexp"                 @ string offset=2327
.Linfo_string166:
	.asciz	"ldexp"                 @ string offset=2333
.Linfo_string167:
	.asciz	"__log_finite"          @ string offset=2339
.Linfo_string168:
	.asciz	"log"                   @ string offset=2352
.Linfo_string169:
	.asciz	"__log10_finite"        @ string offset=2356
.Linfo_string170:
	.asciz	"log10"                 @ string offset=2371
.Linfo_string171:
	.asciz	"modf"                  @ string offset=2377
.Linfo_string172:
	.asciz	"__pow_finite"          @ string offset=2382
.Linfo_string173:
	.asciz	"pow"                   @ string offset=2395
.Linfo_string174:
	.asciz	"sin"                   @ string offset=2399
.Linfo_string175:
	.asciz	"__sinh_finite"         @ string offset=2403
.Linfo_string176:
	.asciz	"sinh"                  @ string offset=2417
.Linfo_string177:
	.asciz	"__sqrt_finite"         @ string offset=2422
.Linfo_string178:
	.asciz	"sqrt"                  @ string offset=2436
.Linfo_string179:
	.asciz	"tan"                   @ string offset=2441
.Linfo_string180:
	.asciz	"tanh"                  @ string offset=2445
.Linfo_string181:
	.asciz	"double_t"              @ string offset=2450
.Linfo_string182:
	.asciz	"float_t"               @ string offset=2459
.Linfo_string183:
	.asciz	"__acosh_finite"        @ string offset=2467
.Linfo_string184:
	.asciz	"acosh"                 @ string offset=2482
.Linfo_string185:
	.asciz	"__acoshf_finite"       @ string offset=2488
.Linfo_string186:
	.asciz	"acoshf"                @ string offset=2504
.Linfo_string187:
	.asciz	"acoshl"                @ string offset=2511
.Linfo_string188:
	.asciz	"long double"           @ string offset=2518
.Linfo_string189:
	.asciz	"asinh"                 @ string offset=2530
.Linfo_string190:
	.asciz	"asinhf"                @ string offset=2536
.Linfo_string191:
	.asciz	"asinhl"                @ string offset=2543
.Linfo_string192:
	.asciz	"__atanh_finite"        @ string offset=2550
.Linfo_string193:
	.asciz	"atanh"                 @ string offset=2565
.Linfo_string194:
	.asciz	"__atanhf_finite"       @ string offset=2571
.Linfo_string195:
	.asciz	"atanhf"                @ string offset=2587
.Linfo_string196:
	.asciz	"atanhl"                @ string offset=2594
.Linfo_string197:
	.asciz	"cbrt"                  @ string offset=2601
.Linfo_string198:
	.asciz	"cbrtf"                 @ string offset=2606
.Linfo_string199:
	.asciz	"cbrtl"                 @ string offset=2612
.Linfo_string200:
	.asciz	"copysign"              @ string offset=2618
.Linfo_string201:
	.asciz	"copysignf"             @ string offset=2627
.Linfo_string202:
	.asciz	"copysignl"             @ string offset=2637
.Linfo_string203:
	.asciz	"erf"                   @ string offset=2647
.Linfo_string204:
	.asciz	"erff"                  @ string offset=2651
.Linfo_string205:
	.asciz	"erfl"                  @ string offset=2656
.Linfo_string206:
	.asciz	"erfc"                  @ string offset=2661
.Linfo_string207:
	.asciz	"erfcf"                 @ string offset=2666
.Linfo_string208:
	.asciz	"erfcl"                 @ string offset=2672
.Linfo_string209:
	.asciz	"__exp2_finite"         @ string offset=2678
.Linfo_string210:
	.asciz	"exp2"                  @ string offset=2692
.Linfo_string211:
	.asciz	"__exp2f_finite"        @ string offset=2697
.Linfo_string212:
	.asciz	"exp2f"                 @ string offset=2712
.Linfo_string213:
	.asciz	"exp2l"                 @ string offset=2718
.Linfo_string214:
	.asciz	"expm1"                 @ string offset=2724
.Linfo_string215:
	.asciz	"expm1f"                @ string offset=2730
.Linfo_string216:
	.asciz	"expm1l"                @ string offset=2737
.Linfo_string217:
	.asciz	"fdim"                  @ string offset=2744
.Linfo_string218:
	.asciz	"fdimf"                 @ string offset=2749
.Linfo_string219:
	.asciz	"fdiml"                 @ string offset=2755
.Linfo_string220:
	.asciz	"fma"                   @ string offset=2761
.Linfo_string221:
	.asciz	"fmaf"                  @ string offset=2765
.Linfo_string222:
	.asciz	"fmal"                  @ string offset=2770
.Linfo_string223:
	.asciz	"fmax"                  @ string offset=2775
.Linfo_string224:
	.asciz	"fmaxf"                 @ string offset=2780
.Linfo_string225:
	.asciz	"fmaxl"                 @ string offset=2786
.Linfo_string226:
	.asciz	"fmin"                  @ string offset=2792
.Linfo_string227:
	.asciz	"fminf"                 @ string offset=2797
.Linfo_string228:
	.asciz	"fminl"                 @ string offset=2803
.Linfo_string229:
	.asciz	"__hypot_finite"        @ string offset=2809
.Linfo_string230:
	.asciz	"hypot"                 @ string offset=2824
.Linfo_string231:
	.asciz	"__hypotf_finite"       @ string offset=2830
.Linfo_string232:
	.asciz	"hypotf"                @ string offset=2846
.Linfo_string233:
	.asciz	"hypotl"                @ string offset=2853
.Linfo_string234:
	.asciz	"ilogb"                 @ string offset=2860
.Linfo_string235:
	.asciz	"ilogbf"                @ string offset=2866
.Linfo_string236:
	.asciz	"ilogbl"                @ string offset=2873
.Linfo_string237:
	.asciz	"lgamma"                @ string offset=2880
.Linfo_string238:
	.asciz	"lgammaf"               @ string offset=2887
.Linfo_string239:
	.asciz	"lgammal"               @ string offset=2895
.Linfo_string240:
	.asciz	"llrint"                @ string offset=2903
.Linfo_string241:
	.asciz	"llrintf"               @ string offset=2910
.Linfo_string242:
	.asciz	"llrintl"               @ string offset=2918
.Linfo_string243:
	.asciz	"llround"               @ string offset=2926
.Linfo_string244:
	.asciz	"llroundf"              @ string offset=2934
.Linfo_string245:
	.asciz	"llroundl"              @ string offset=2943
.Linfo_string246:
	.asciz	"log1p"                 @ string offset=2952
.Linfo_string247:
	.asciz	"log1pf"                @ string offset=2958
.Linfo_string248:
	.asciz	"log1pl"                @ string offset=2965
.Linfo_string249:
	.asciz	"__log2_finite"         @ string offset=2972
.Linfo_string250:
	.asciz	"log2"                  @ string offset=2986
.Linfo_string251:
	.asciz	"__log2f_finite"        @ string offset=2991
.Linfo_string252:
	.asciz	"log2f"                 @ string offset=3006
.Linfo_string253:
	.asciz	"log2l"                 @ string offset=3012
.Linfo_string254:
	.asciz	"logb"                  @ string offset=3018
.Linfo_string255:
	.asciz	"logbf"                 @ string offset=3023
.Linfo_string256:
	.asciz	"logbl"                 @ string offset=3029
.Linfo_string257:
	.asciz	"lrint"                 @ string offset=3035
.Linfo_string258:
	.asciz	"long int"              @ string offset=3041
.Linfo_string259:
	.asciz	"lrintf"                @ string offset=3050
.Linfo_string260:
	.asciz	"lrintl"                @ string offset=3057
.Linfo_string261:
	.asciz	"lround"                @ string offset=3064
.Linfo_string262:
	.asciz	"lroundf"               @ string offset=3071
.Linfo_string263:
	.asciz	"lroundl"               @ string offset=3079
.Linfo_string264:
	.asciz	"nan"                   @ string offset=3087
.Linfo_string265:
	.asciz	"char"                  @ string offset=3091
.Linfo_string266:
	.asciz	"nanf"                  @ string offset=3096
.Linfo_string267:
	.asciz	"nanl"                  @ string offset=3101
.Linfo_string268:
	.asciz	"nearbyint"             @ string offset=3106
.Linfo_string269:
	.asciz	"nearbyintf"            @ string offset=3116
.Linfo_string270:
	.asciz	"nearbyintl"            @ string offset=3127
.Linfo_string271:
	.asciz	"nextafter"             @ string offset=3138
.Linfo_string272:
	.asciz	"nextafterf"            @ string offset=3148
.Linfo_string273:
	.asciz	"nextafterl"            @ string offset=3159
.Linfo_string274:
	.asciz	"nexttoward"            @ string offset=3170
.Linfo_string275:
	.asciz	"nexttowardf"           @ string offset=3181
.Linfo_string276:
	.asciz	"nexttowardl"           @ string offset=3193
.Linfo_string277:
	.asciz	"__remainder_finite"    @ string offset=3205
.Linfo_string278:
	.asciz	"remainder"             @ string offset=3224
.Linfo_string279:
	.asciz	"__remainderf_finite"   @ string offset=3234
.Linfo_string280:
	.asciz	"remainderf"            @ string offset=3254
.Linfo_string281:
	.asciz	"remainderl"            @ string offset=3265
.Linfo_string282:
	.asciz	"remquo"                @ string offset=3276
.Linfo_string283:
	.asciz	"remquof"               @ string offset=3283
.Linfo_string284:
	.asciz	"remquol"               @ string offset=3291
.Linfo_string285:
	.asciz	"rint"                  @ string offset=3299
.Linfo_string286:
	.asciz	"rintf"                 @ string offset=3304
.Linfo_string287:
	.asciz	"rintl"                 @ string offset=3310
.Linfo_string288:
	.asciz	"round"                 @ string offset=3316
.Linfo_string289:
	.asciz	"roundf"                @ string offset=3322
.Linfo_string290:
	.asciz	"roundl"                @ string offset=3329
.Linfo_string291:
	.asciz	"scalbln"               @ string offset=3336
.Linfo_string292:
	.asciz	"scalblnf"              @ string offset=3344
.Linfo_string293:
	.asciz	"scalblnl"              @ string offset=3353
.Linfo_string294:
	.asciz	"scalbn"                @ string offset=3362
.Linfo_string295:
	.asciz	"scalbnf"               @ string offset=3369
.Linfo_string296:
	.asciz	"scalbnl"               @ string offset=3377
.Linfo_string297:
	.asciz	"tgamma"                @ string offset=3385
.Linfo_string298:
	.asciz	"tgammaf"               @ string offset=3392
.Linfo_string299:
	.asciz	"tgammal"               @ string offset=3400
.Linfo_string300:
	.asciz	"trunc"                 @ string offset=3408
.Linfo_string301:
	.asciz	"truncf"                @ string offset=3414
.Linfo_string302:
	.asciz	"truncl"                @ string offset=3421
.Linfo_string303:
	.asciz	"signed char"           @ string offset=3428
.Linfo_string304:
	.asciz	"int8_t"                @ string offset=3440
.Linfo_string305:
	.asciz	"short"                 @ string offset=3447
.Linfo_string306:
	.asciz	"int16_t"               @ string offset=3453
.Linfo_string307:
	.asciz	"int_fast8_t"           @ string offset=3461
.Linfo_string308:
	.asciz	"int_fast16_t"          @ string offset=3473
.Linfo_string309:
	.asciz	"int_fast32_t"          @ string offset=3486
.Linfo_string310:
	.asciz	"int_fast64_t"          @ string offset=3499
.Linfo_string311:
	.asciz	"int_least8_t"          @ string offset=3512
.Linfo_string312:
	.asciz	"int_least16_t"         @ string offset=3525
.Linfo_string313:
	.asciz	"int_least32_t"         @ string offset=3539
.Linfo_string314:
	.asciz	"int_least64_t"         @ string offset=3553
.Linfo_string315:
	.asciz	"intmax_t"              @ string offset=3567
.Linfo_string316:
	.asciz	"__intptr_t"            @ string offset=3576
.Linfo_string317:
	.asciz	"intptr_t"              @ string offset=3587
.Linfo_string318:
	.asciz	"unsigned short"        @ string offset=3596
.Linfo_string319:
	.asciz	"uint16_t"              @ string offset=3611
.Linfo_string320:
	.asciz	"long long unsigned int" @ string offset=3620
.Linfo_string321:
	.asciz	"uint64_t"              @ string offset=3643
.Linfo_string322:
	.asciz	"uint_fast8_t"          @ string offset=3652
.Linfo_string323:
	.asciz	"uint_fast16_t"         @ string offset=3665
.Linfo_string324:
	.asciz	"uint_fast32_t"         @ string offset=3679
.Linfo_string325:
	.asciz	"uint_fast64_t"         @ string offset=3693
.Linfo_string326:
	.asciz	"uint_least8_t"         @ string offset=3707
.Linfo_string327:
	.asciz	"uint_least16_t"        @ string offset=3721
.Linfo_string328:
	.asciz	"uint_least32_t"        @ string offset=3736
.Linfo_string329:
	.asciz	"uint_least64_t"        @ string offset=3751
.Linfo_string330:
	.asciz	"uintmax_t"             @ string offset=3766
.Linfo_string331:
	.asciz	"uintptr_t"             @ string offset=3776
.Linfo_string332:
	.asciz	"__clock_t"             @ string offset=3786
.Linfo_string333:
	.asciz	"clock_t"               @ string offset=3796
.Linfo_string334:
	.asciz	"__time_t"              @ string offset=3804
.Linfo_string335:
	.asciz	"time_t"                @ string offset=3813
.Linfo_string336:
	.asciz	"tm"                    @ string offset=3820
.Linfo_string337:
	.asciz	"clock"                 @ string offset=3823
.Linfo_string338:
	.asciz	"difftime"              @ string offset=3829
.Linfo_string339:
	.asciz	"mktime"                @ string offset=3838
.Linfo_string340:
	.asciz	"time"                  @ string offset=3845
.Linfo_string341:
	.asciz	"asctime"               @ string offset=3850
.Linfo_string342:
	.asciz	"ctime"                 @ string offset=3858
.Linfo_string343:
	.asciz	"gmtime"                @ string offset=3864
.Linfo_string344:
	.asciz	"localtime"             @ string offset=3871
.Linfo_string345:
	.asciz	"strftime"              @ string offset=3881
.Linfo_string346:
	.asciz	"this"                  @ string offset=3890
.Linfo_string347:
	.asciz	"id"                    @ string offset=3895
.Linfo_string348:
	.asciz	"ord"                   @ string offset=3898
.Linfo_string349:
	.asciz	"success"               @ string offset=3902
.Linfo_string350:
	.asciz	"dummy"                 @ string offset=3910
.Linfo_string351:
	.asciz	"ctrlHum"               @ string offset=3916
.Linfo_string352:
	.asciz	"ctrlMeas"              @ string offset=3924
.Linfo_string353:
	.asciz	"config"                @ string offset=3933
.Linfo_string354:
	.asciz	"raw"                   @ string offset=3940
.Linfo_string355:
	.asciz	"t_fine"                @ string offset=3944
.Linfo_string356:
	.asciz	"unit"                  @ string offset=3951
.Linfo_string357:
	.asciz	"var2"                  @ string offset=3956
.Linfo_string358:
	.asciz	"final"                 @ string offset=3961
.Linfo_string359:
	.asciz	"var1"                  @ string offset=3967
.Linfo_string360:
	.asciz	"dig_T1"                @ string offset=3972
.Linfo_string361:
	.asciz	"dig_T2"                @ string offset=3979
.Linfo_string362:
	.asciz	"dig_T3"                @ string offset=3986
.Linfo_string363:
	.asciz	"dig_H1"                @ string offset=3993
.Linfo_string364:
	.asciz	"dig_H2"                @ string offset=4000
.Linfo_string365:
	.asciz	"dig_H3"                @ string offset=4007
.Linfo_string366:
	.asciz	"dig_H4"                @ string offset=4014
.Linfo_string367:
	.asciz	"dig_H5"                @ string offset=4021
.Linfo_string368:
	.asciz	"dig_H6"                @ string offset=4028
.Linfo_string369:
	.asciz	"~BME280"               @ string offset=4035
.Linfo_string370:
	.asciz	"_ZN6BME280C2ERKNS_8SettingsE" @ string offset=4043
.Linfo_string371:
	.asciz	"_ZN3I2cD2Ev"           @ string offset=4072
.Linfo_string372:
	.asciz	"_ZN6BME280D0Ev"        @ string offset=4084
.Linfo_string373:
	.asciz	"settings"              @ string offset=4099
.Linfo_string374:
	.asciz	"data"                  @ string offset=4108
.Linfo_string375:
	.asciz	"pressure"              @ string offset=4113
.Linfo_string376:
	.asciz	"humidity"              @ string offset=4122
.Linfo_string377:
	.asciz	"presUnit"              @ string offset=4131
.Linfo_string378:
	.asciz	"rawTemp"               @ string offset=4140
.Linfo_string379:
	.asciz	"tempUnit"              @ string offset=4148
.Linfo_string380:
	.asciz	"rawPressure"           @ string offset=4157
.Linfo_string381:
	.asciz	"rawHumidity"           @ string offset=4169
.Linfo_string382:
	.asciz	"buffer"                @ string offset=4181
.Linfo_string383:
	.asciz	"i"                     @ string offset=4188
.Linfo_string384:
	.asciz	"dig_P1"                @ string offset=4190
.Linfo_string385:
	.asciz	"dig_P2"                @ string offset=4197
.Linfo_string386:
	.asciz	"dig_P3"                @ string offset=4204
.Linfo_string387:
	.asciz	"dig_P4"                @ string offset=4211
.Linfo_string388:
	.asciz	"dig_P5"                @ string offset=4218
.Linfo_string389:
	.asciz	"dig_P6"                @ string offset=4225
.Linfo_string390:
	.asciz	"dig_P7"                @ string offset=4232
.Linfo_string391:
	.asciz	"dig_P8"                @ string offset=4239
.Linfo_string392:
	.asciz	"dig_P9"                @ string offset=4246
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
	.long	.Lfunc_begin0
	.long	.Ltmp0
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc1:
	.long	.Lfunc_begin1
	.long	.Ltmp13
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp13
	.long	.Ltmp65
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc2:
	.long	.Ltmp13
	.long	.Ltmp65
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc3:
	.long	.Ltmp19
	.long	.Ltmp20
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	0                       @ 0
	.byte	159                     @ DW_OP_stack_value
	.long	.Ltmp20
	.long	.Ltmp21
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	6                       @ 6
	.byte	159                     @ DW_OP_stack_value
	.long	.Ltmp21
	.long	.Ltmp22
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	24                      @ 24
	.byte	159                     @ DW_OP_stack_value
	.long	.Ltmp22
	.long	.Ltmp23
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	25                      @ 25
	.byte	159                     @ DW_OP_stack_value
	.long	.Ltmp23
	.long	.Lfunc_end1
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	32                      @ 32
	.byte	159                     @ DW_OP_stack_value
	.long	0
	.long	0
.Ldebug_loc4:
	.long	.Ltmp19
	.long	.Ltmp62
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc5:
	.long	.Ltmp24
	.long	.Ltmp50
	.short	1                       @ Loc expr size
	.byte	87                      @ DW_OP_reg7
	.long	0
	.long	0
.Ldebug_loc6:
	.long	.Ltmp24
	.long	.Ltmp62
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc7:
	.long	.Ltmp29
	.long	.Ltmp44
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc8:
	.long	.Ltmp39
	.long	.Ltmp41
	.short	2                       @ Loc expr size
	.byte	113                     @ DW_OP_breg1
	.byte	0                       @ 0
	.long	0
	.long	0
.Ldebug_loc9:
	.long	.Ltmp46
	.long	.Ltmp62
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc10:
	.long	.Lfunc_begin2
	.long	.Ltmp72
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp72
	.long	.Ltmp80
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc11:
	.long	.Lfunc_begin3
	.long	.Ltmp89
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp89
	.long	.Ltmp94
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc12:
	.long	.Ltmp89
	.long	.Ltmp90
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	0                       @ 0
	.byte	159                     @ DW_OP_stack_value
	.long	.Ltmp90
	.long	.Ltmp91
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	6                       @ 6
	.byte	159                     @ DW_OP_stack_value
	.long	.Ltmp91
	.long	.Ltmp92
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	24                      @ 24
	.byte	159                     @ DW_OP_stack_value
	.long	.Ltmp92
	.long	.Ltmp93
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	25                      @ 25
	.byte	159                     @ DW_OP_stack_value
	.long	.Ltmp93
	.long	.Lfunc_end3
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	32                      @ 32
	.byte	159                     @ DW_OP_stack_value
	.long	0
	.long	0
.Ldebug_loc13:
	.long	.Lfunc_begin4
	.long	.Ltmp106
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp106
	.long	.Ltmp123
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc14:
	.long	.Ltmp108
	.long	.Ltmp123
	.short	1                       @ Loc expr size
	.byte	89                      @ DW_OP_reg9
	.long	0
	.long	0
.Ldebug_loc15:
	.long	.Ltmp111
	.long	.Ltmp123
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc16:
	.long	.Ltmp111
	.long	.Ltmp123
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc17:
	.long	.Ltmp121
	.long	.Ltmp122
	.short	2                       @ Loc expr size
	.byte	113                     @ DW_OP_breg1
	.byte	0                       @ 0
	.long	0
	.long	0
.Ldebug_loc18:
	.long	.Lfunc_begin5
	.long	.Ltmp135
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp135
	.long	.Ltmp147
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc19:
	.long	.Ltmp135
	.long	.Ltmp147
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc20:
	.long	.Lfunc_begin6
	.long	.Ltmp164
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp164
	.long	.Ltmp195
	.short	1                       @ Loc expr size
	.byte	86                      @ DW_OP_reg6
	.long	.Ltmp208
	.long	.Ltmp210
	.short	1                       @ Loc expr size
	.byte	86                      @ DW_OP_reg6
	.long	0
	.long	0
.Ldebug_loc21:
	.long	.Lfunc_begin6
	.long	.Ltmp160
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	.Ltmp160
	.long	.Ltmp210
	.short	1                       @ Loc expr size
	.byte	89                      @ DW_OP_reg9
	.long	0
	.long	0
.Ldebug_loc22:
	.long	.Lfunc_begin6
	.long	.Ltmp163
	.short	1                       @ Loc expr size
	.byte	82                      @ DW_OP_reg2
	.long	.Ltmp163
	.long	.Ltmp196
	.short	1                       @ Loc expr size
	.byte	87                      @ DW_OP_reg7
	.long	.Ltmp208
	.long	.Ltmp210
	.short	1                       @ Loc expr size
	.byte	87                      @ DW_OP_reg7
	.long	0
	.long	0
.Ldebug_loc23:
	.long	.Lfunc_begin6
	.long	.Ltmp162
	.short	1                       @ Loc expr size
	.byte	83                      @ DW_OP_reg3
	.long	.Ltmp162
	.long	.Ltmp167
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	.Ltmp208
	.long	.Ltmp210
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc24:
	.long	.Ltmp168
	.long	.Ltmp195
	.short	1                       @ Loc expr size
	.byte	86                      @ DW_OP_reg6
	.long	0
	.long	0
.Ldebug_loc25:
	.long	.Ltmp173
	.long	.Ltmp178
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc26:
	.long	.Ltmp173
	.long	.Ltmp178
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc27:
	.long	.Lfunc_begin6
	.long	.Ltmp192
	.short	1                       @ Loc expr size
	.byte	92                      @ DW_OP_reg12
	.long	0
	.long	0
.Ldebug_loc28:
	.long	.Ltmp181
	.long	.Ltmp189
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc29:
	.long	.Ltmp182
	.long	.Ltmp208
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc30:
	.long	.Ltmp182
	.long	.Ltmp208
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc31:
	.long	.Ltmp185
	.long	.Ltmp186
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp186
	.long	.Ltmp191
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc32:
	.long	.Ltmp189
	.long	.Ltmp192
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc33:
	.long	.Ltmp194
	.long	.Ltmp200
	.short	1                       @ Loc expr size
	.byte	82                      @ DW_OP_reg2
	.long	.Ltmp201
	.long	.Ltmp202
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	.Ltmp202
	.long	.Ltmp203
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc34:
	.long	.Ltmp198
	.long	.Ltmp199
	.short	1                       @ Loc expr size
	.byte	86                      @ DW_OP_reg6
	.long	0
	.long	0
.Ldebug_loc35:
	.long	.Ltmp198
	.long	.Ltmp199
	.short	1                       @ Loc expr size
	.byte	86                      @ DW_OP_reg6
	.long	0
	.long	0
.Ldebug_loc36:
	.long	.Ltmp207
	.long	.Ltmp208
	.short	1                       @ Loc expr size
	.byte	86                      @ DW_OP_reg6
	.long	0
	.long	0
.Ldebug_loc37:
	.long	.Ltmp207
	.long	.Ltmp208
	.short	1                       @ Loc expr size
	.byte	92                      @ DW_OP_reg12
	.long	0
	.long	0
.Ldebug_loc38:
	.long	.Lfunc_begin7
	.long	.Ltmp217
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc39:
	.long	.Lfunc_begin7
	.long	.Ltmp215
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc40:
	.long	.Lfunc_begin7
	.long	.Ltmp216
	.short	1                       @ Loc expr size
	.byte	82                      @ DW_OP_reg2
	.long	0
	.long	0
.Ldebug_loc41:
	.long	.Lfunc_begin8
	.long	.Ltmp230
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp230
	.long	.Ltmp246
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc42:
	.long	.Lfunc_begin8
	.long	.Ltmp234
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc43:
	.long	.Ltmp231
	.long	.Ltmp246
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc44:
	.long	.Ltmp231
	.long	.Ltmp246
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc45:
	.long	.Lfunc_begin9
	.long	.Ltmp248
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc46:
	.long	.Lfunc_begin10
	.long	.Ltmp256
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp256
	.long	.Ltmp257
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc47:
	.long	.Lfunc_begin11
	.long	.Ltmp269
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp269
	.long	.Ltmp289
	.short	1                       @ Loc expr size
	.byte	85                      @ DW_OP_reg5
	.long	0
	.long	0
.Ldebug_loc48:
	.long	.Lfunc_begin11
	.long	.Ltmp270
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	.Ltmp270
	.long	.Ltmp287
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc49:
	.long	.Ltmp272
	.long	.Ltmp285
	.short	1                       @ Loc expr size
	.byte	85                      @ DW_OP_reg5
	.long	0
	.long	0
.Ldebug_loc50:
	.long	.Lfunc_begin12
	.long	.Ltmp296
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc51:
	.long	.Lfunc_begin12
	.long	.Ltmp297
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc52:
	.long	.Ltmp298
	.long	.Ltmp299
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc53:
	.long	.Ltmp300
	.long	.Ltmp301
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	.Ltmp301
	.long	.Ltmp302
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc54:
	.long	.Lfunc_begin13
	.long	.Ltmp309
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc55:
	.long	.Lfunc_begin13
	.long	.Ltmp310
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc56:
	.long	.Lfunc_begin13
	.long	.Ltmp308
	.short	1                       @ Loc expr size
	.byte	82                      @ DW_OP_reg2
	.long	0
	.long	0
.Ldebug_loc57:
	.long	.Ltmp308
	.long	.Ltmp311
	.short	1                       @ Loc expr size
	.byte	82                      @ DW_OP_reg2
	.long	.Ltmp312
	.long	.Ltmp313
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc58:
	.long	.Lfunc_begin14
	.long	.Ltmp326
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp326
	.long	.Ltmp334
	.short	1                       @ Loc expr size
	.byte	85                      @ DW_OP_reg5
	.long	.Ltmp339
	.long	.Ltmp340
	.short	1                       @ Loc expr size
	.byte	85                      @ DW_OP_reg5
	.long	0
	.long	0
.Ldebug_loc59:
	.long	.Lfunc_begin14
	.long	.Ltmp332
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	.Ltmp339
	.long	.Ltmp340
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc60:
	.long	.Lfunc_begin14
	.long	.Ltmp327
	.short	1                       @ Loc expr size
	.byte	82                      @ DW_OP_reg2
	.long	0
	.long	0
.Ldebug_loc61:
	.long	.Lfunc_begin14
	.long	.Ltmp328
	.short	1                       @ Loc expr size
	.byte	83                      @ DW_OP_reg3
	.long	.Ltmp328
	.long	.Ltmp333
	.short	1                       @ Loc expr size
	.byte	92                      @ DW_OP_reg12
	.long	.Ltmp339
	.long	.Ltmp340
	.short	1                       @ Loc expr size
	.byte	92                      @ DW_OP_reg12
	.long	0
	.long	0
.Ldebug_loc62:
	.long	.Ltmp335
	.long	.Ltmp337
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	.Ltmp338
	.long	.Ltmp339
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	.Ltmp340
	.long	.Ltmp347
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc63:
	.long	.Lfunc_begin15
	.long	.Ltmp358
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp358
	.long	.Ltmp369
	.short	1                       @ Loc expr size
	.byte	85                      @ DW_OP_reg5
	.long	.Ltmp374
	.long	.Ltmp375
	.short	1                       @ Loc expr size
	.byte	85                      @ DW_OP_reg5
	.long	0
	.long	0
.Ldebug_loc64:
	.long	.Lfunc_begin15
	.long	.Ltmp356
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	.Ltmp356
	.long	.Ltmp375
	.short	1                       @ Loc expr size
	.byte	86                      @ DW_OP_reg6
	.long	0
	.long	0
.Ldebug_loc65:
	.long	.Ltmp360
	.long	.Ltmp369
	.short	1                       @ Loc expr size
	.byte	85                      @ DW_OP_reg5
	.long	0
	.long	0
.Ldebug_loc66:
	.long	.Ltmp360
	.long	.Ltmp363
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc67:
	.long	.Ltmp367
	.long	.Ltmp368
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc68:
	.long	.Ltmp370
	.long	.Ltmp374
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc69:
	.long	.Ltmp371
	.long	.Ltmp372
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp372
	.long	.Ltmp373
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc70:
	.long	.Ltmp373
	.long	.Ltmp374
	.short	1                       @ Loc expr size
	.byte	86                      @ DW_OP_reg6
	.long	0
	.long	0
.Ldebug_loc71:
	.long	.Lfunc_begin16
	.long	.Ltmp386
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp386
	.long	.Ltmp399
	.short	1                       @ Loc expr size
	.byte	85                      @ DW_OP_reg5
	.long	0
	.long	0
.Ldebug_loc72:
	.long	.Lfunc_begin16
	.long	.Ltmp384
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	.Ltmp384
	.long	.Ltmp399
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc73:
	.long	.Ltmp389
	.long	.Ltmp398
	.short	1                       @ Loc expr size
	.byte	85                      @ DW_OP_reg5
	.long	0
	.long	0
.Ldebug_loc74:
	.long	.Ltmp392
	.long	.Ltmp393
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc75:
	.long	.Ltmp392
	.long	.Ltmp393
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc76:
	.long	.Ltmp394
	.long	.Ltmp396
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc77:
	.long	.Ltmp395
	.long	.Ltmp397
	.short	1                       @ Loc expr size
	.byte	82                      @ DW_OP_reg2
	.long	0
	.long	0
.Ldebug_loc78:
	.long	.Ltmp396
	.long	.Ltmp397
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc79:
	.long	.Lfunc_begin17
	.long	.Ltmp407
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp407
	.long	.Ltmp425
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	.Ltmp435
	.long	.Ltmp436
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc80:
	.long	.Ltmp410
	.long	.Ltmp425
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc81:
	.long	.Ltmp418
	.long	.Ltmp419
	.short	1                       @ Loc expr size
	.byte	82                      @ DW_OP_reg2
	.long	0
	.long	0
.Ldebug_loc82:
	.long	.Ltmp418
	.long	.Ltmp419
	.short	1                       @ Loc expr size
	.byte	82                      @ DW_OP_reg2
	.long	0
	.long	0
.Ldebug_loc83:
	.long	.Ltmp422
	.long	.Ltmp425
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc84:
	.long	.Ltmp424
	.long	.Ltmp426
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc85:
	.long	.Ltmp427
	.long	.Ltmp431
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp432
	.long	.Ltmp433
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc86:
	.long	.Ltmp429
	.long	.Ltmp430
	.short	1                       @ Loc expr size
	.byte	85                      @ DW_OP_reg5
	.long	0
	.long	0
.Ldebug_loc87:
	.long	.Ltmp429
	.long	.Ltmp430
	.short	1                       @ Loc expr size
	.byte	85                      @ DW_OP_reg5
	.long	0
	.long	0
.Ldebug_loc88:
	.long	.Lfunc_begin18
	.long	.Ltmp437
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
	.section	.debug_abbrev,"",%progbits
.Lsection_abbrev:
	.byte	1                       @ Abbreviation Code
	.byte	17                      @ DW_TAG_compile_unit
	.byte	1                       @ DW_CHILDREN_yes
	.byte	37                      @ DW_AT_producer
	.byte	14                      @ DW_FORM_strp
	.byte	19                      @ DW_AT_language
	.byte	5                       @ DW_FORM_data2
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	16                      @ DW_AT_stmt_list
	.byte	23                      @ DW_FORM_sec_offset
	.byte	27                      @ DW_AT_comp_dir
	.byte	14                      @ DW_FORM_strp
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	85                      @ DW_AT_ranges
	.byte	23                      @ DW_FORM_sec_offset
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	2                       @ Abbreviation Code
	.byte	2                       @ DW_TAG_class_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	29                      @ DW_AT_containing_type
	.byte	19                      @ DW_FORM_ref4
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	3                       @ Abbreviation Code
	.byte	28                      @ DW_TAG_inheritance
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	56                      @ DW_AT_data_member_location
	.byte	11                      @ DW_FORM_data1
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	4                       @ Abbreviation Code
	.byte	13                      @ DW_TAG_member
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	28                      @ DW_AT_const_value
	.byte	15                      @ DW_FORM_udata
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	5                       @ Abbreviation Code
	.byte	13                      @ DW_TAG_member
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	28                      @ DW_AT_const_value
	.byte	15                      @ DW_FORM_udata
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	6                       @ Abbreviation Code
	.byte	13                      @ DW_TAG_member
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	56                      @ DW_AT_data_member_location
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	7                       @ Abbreviation Code
	.byte	19                      @ DW_TAG_structure_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	8                       @ Abbreviation Code
	.byte	13                      @ DW_TAG_member
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	56                      @ DW_AT_data_member_location
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	9                       @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	10                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	11                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	12                      @ Abbreviation Code
	.byte	4                       @ DW_TAG_enumeration_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	13                      @ Abbreviation Code
	.byte	40                      @ DW_TAG_enumerator
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	28                      @ DW_AT_const_value
	.byte	13                      @ DW_FORM_sdata
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	14                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	15                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	16                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	17                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	76                      @ DW_AT_virtuality
	.byte	11                      @ DW_FORM_data1
	.byte	77                      @ DW_AT_vtable_elem_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	29                      @ DW_AT_containing_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	18                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	76                      @ DW_AT_virtuality
	.byte	11                      @ DW_FORM_data1
	.byte	77                      @ DW_AT_vtable_elem_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	29                      @ DW_AT_containing_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	19                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	76                      @ DW_AT_virtuality
	.byte	11                      @ DW_FORM_data1
	.byte	77                      @ DW_AT_vtable_elem_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	29                      @ DW_AT_containing_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	20                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	21                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	22                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	76                      @ DW_AT_virtuality
	.byte	11                      @ DW_FORM_data1
	.byte	77                      @ DW_AT_vtable_elem_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	29                      @ DW_AT_containing_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	23                      @ Abbreviation Code
	.byte	13                      @ DW_TAG_member
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	56                      @ DW_AT_data_member_location
	.byte	11                      @ DW_FORM_data1
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	24                      @ Abbreviation Code
	.byte	13                      @ DW_TAG_member
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	56                      @ DW_AT_data_member_location
	.byte	11                      @ DW_FORM_data1
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	25                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	76                      @ DW_AT_virtuality
	.byte	11                      @ DW_FORM_data1
	.byte	77                      @ DW_AT_vtable_elem_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	29                      @ DW_AT_containing_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	26                      @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	27                      @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	28                      @ Abbreviation Code
	.byte	21                      @ DW_TAG_subroutine_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	29                      @ Abbreviation Code
	.byte	36                      @ DW_TAG_base_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	62                      @ DW_AT_encoding
	.byte	11                      @ DW_FORM_data1
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	30                      @ Abbreviation Code
	.byte	22                      @ DW_TAG_typedef
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	31                      @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	32                      @ Abbreviation Code
	.byte	38                      @ DW_TAG_const_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	33                      @ Abbreviation Code
	.byte	66                      @ DW_TAG_rvalue_reference_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	34                      @ Abbreviation Code
	.byte	38                      @ DW_TAG_const_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	35                      @ Abbreviation Code
	.byte	1                       @ DW_TAG_array_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	36                      @ Abbreviation Code
	.byte	33                      @ DW_TAG_subrange_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	55                      @ DW_AT_count
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	37                      @ Abbreviation Code
	.byte	36                      @ DW_TAG_base_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	62                      @ DW_AT_encoding
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	38                      @ Abbreviation Code
	.byte	16                      @ DW_TAG_reference_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	39                      @ Abbreviation Code
	.byte	57                      @ DW_TAG_namespace
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	40                      @ Abbreviation Code
	.byte	8                       @ DW_TAG_imported_declaration
	.byte	0                       @ DW_CHILDREN_no
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	24                      @ DW_AT_import
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	41                      @ Abbreviation Code
	.byte	8                       @ DW_TAG_imported_declaration
	.byte	0                       @ DW_CHILDREN_no
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	24                      @ DW_AT_import
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	42                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	43                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	44                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	45                      @ Abbreviation Code
	.byte	22                      @ DW_TAG_typedef
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	46                      @ Abbreviation Code
	.byte	19                      @ DW_TAG_structure_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	47                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	48                      @ Abbreviation Code
	.byte	55                      @ DW_TAG_restrict_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	49                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	100                     @ DW_AT_object_pointer
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	71                      @ DW_AT_specification
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	50                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	51                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	23                      @ DW_FORM_sec_offset
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	52                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	71                      @ DW_AT_specification
	.byte	19                      @ DW_FORM_ref4
	.byte	32                      @ DW_AT_inline
	.byte	11                      @ DW_FORM_data1
	.byte	100                     @ DW_AT_object_pointer
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	53                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	54                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	55                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	56                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	100                     @ DW_AT_object_pointer
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	71                      @ DW_AT_specification
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	57                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	23                      @ DW_FORM_sec_offset
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	58                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	28                      @ DW_AT_const_value
	.byte	15                      @ DW_FORM_udata
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	59                      @ Abbreviation Code
	.byte	29                      @ DW_TAG_inlined_subroutine
	.byte	1                       @ DW_CHILDREN_yes
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	85                      @ DW_AT_ranges
	.byte	23                      @ DW_FORM_sec_offset
	.byte	88                      @ DW_AT_call_file
	.byte	11                      @ DW_FORM_data1
	.byte	89                      @ DW_AT_call_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	60                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	23                      @ DW_FORM_sec_offset
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	61                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	62                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	23                      @ DW_FORM_sec_offset
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	63                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	28                      @ DW_AT_const_value
	.byte	15                      @ DW_FORM_udata
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	64                      @ Abbreviation Code
	.byte	29                      @ DW_TAG_inlined_subroutine
	.byte	1                       @ DW_CHILDREN_yes
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	88                      @ DW_AT_call_file
	.byte	11                      @ DW_FORM_data1
	.byte	89                      @ DW_AT_call_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	65                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	100                     @ DW_AT_object_pointer
	.byte	19                      @ DW_FORM_ref4
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	66                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	67                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	68                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	71                      @ DW_AT_specification
	.byte	19                      @ DW_FORM_ref4
	.byte	32                      @ DW_AT_inline
	.byte	11                      @ DW_FORM_data1
	.byte	100                     @ DW_AT_object_pointer
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	69                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	70                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	100                     @ DW_AT_object_pointer
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	71                      @ DW_AT_specification
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	71                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	23                      @ DW_FORM_sec_offset
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	72                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	73                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	23                      @ DW_FORM_sec_offset
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	74                      @ Abbreviation Code
	.byte	29                      @ DW_TAG_inlined_subroutine
	.byte	1                       @ DW_CHILDREN_yes
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	85                      @ DW_AT_ranges
	.byte	23                      @ DW_FORM_sec_offset
	.byte	88                      @ DW_AT_call_file
	.byte	11                      @ DW_FORM_data1
	.byte	89                      @ DW_AT_call_line
	.byte	5                       @ DW_FORM_data2
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	75                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	76                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	77                      @ Abbreviation Code
	.byte	11                      @ DW_TAG_lexical_block
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	78                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	28                      @ DW_AT_const_value
	.byte	13                      @ DW_FORM_sdata
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	79                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	28                      @ DW_AT_const_value
	.byte	13                      @ DW_FORM_sdata
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	80                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	100                     @ DW_AT_object_pointer
	.byte	19                      @ DW_FORM_ref4
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	71                      @ DW_AT_specification
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	0                       @ EOM(3)
	.section	.debug_info,"",%progbits
.Lsection_info:
.Lcu_begin0:
	.long	9139                    @ Length of Unit
	.short	4                       @ DWARF version number
	.long	.Lsection_abbrev        @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0x23ac DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	4                       @ DW_AT_language
	.long	.Linfo_string1          @ DW_AT_name
	.long	.Lline_table_start0     @ DW_AT_stmt_list
	.long	.Linfo_string2          @ DW_AT_comp_dir
	.long	0                       @ DW_AT_low_pc
	.long	.Ldebug_ranges17        @ DW_AT_ranges
	.byte	2                       @ Abbrev [2] 0x26:0x544 DW_TAG_class_type
	.long	1386                    @ DW_AT_containing_type
	.long	.Linfo_string89         @ DW_AT_name
	.byte	84                      @ DW_AT_byte_size
	.byte	6                       @ DW_AT_decl_file
	.byte	46                      @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x32:0x7 DW_TAG_inheritance
	.long	1386                    @ DW_AT_type
	.byte	0                       @ DW_AT_data_member_location
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	4                       @ Abbrev [4] 0x39:0xd DW_TAG_member
	.long	.Linfo_string23         @ DW_AT_name
	.long	1709                    @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.byte	245                     @ DW_AT_decl_line
                                        @ DW_AT_external
                                        @ DW_AT_declaration
	.ascii	"\362\001"              @ DW_AT_const_value
	.byte	4                       @ Abbrev [4] 0x46:0xd DW_TAG_member
	.long	.Linfo_string26         @ DW_AT_name
	.long	1709                    @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.byte	246                     @ DW_AT_decl_line
                                        @ DW_AT_external
                                        @ DW_AT_declaration
	.ascii	"\364\001"              @ DW_AT_const_value
	.byte	4                       @ Abbrev [4] 0x53:0xd DW_TAG_member
	.long	.Linfo_string27         @ DW_AT_name
	.long	1709                    @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.byte	247                     @ DW_AT_decl_line
                                        @ DW_AT_external
                                        @ DW_AT_declaration
	.ascii	"\365\001"              @ DW_AT_const_value
	.byte	4                       @ Abbrev [4] 0x60:0xd DW_TAG_member
	.long	.Linfo_string28         @ DW_AT_name
	.long	1709                    @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.byte	248                     @ DW_AT_decl_line
                                        @ DW_AT_external
                                        @ DW_AT_declaration
	.ascii	"\367\001"              @ DW_AT_const_value
	.byte	4                       @ Abbrev [4] 0x6d:0xd DW_TAG_member
	.long	.Linfo_string29         @ DW_AT_name
	.long	1709                    @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.byte	249                     @ DW_AT_decl_line
                                        @ DW_AT_external
                                        @ DW_AT_declaration
	.ascii	"\372\001"              @ DW_AT_const_value
	.byte	4                       @ Abbrev [4] 0x7a:0xd DW_TAG_member
	.long	.Linfo_string30         @ DW_AT_name
	.long	1709                    @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.byte	250                     @ DW_AT_decl_line
                                        @ DW_AT_external
                                        @ DW_AT_declaration
	.ascii	"\375\001"              @ DW_AT_const_value
	.byte	4                       @ Abbrev [4] 0x87:0xd DW_TAG_member
	.long	.Linfo_string31         @ DW_AT_name
	.long	1709                    @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.byte	251                     @ DW_AT_decl_line
                                        @ DW_AT_external
                                        @ DW_AT_declaration
	.ascii	"\210\001"              @ DW_AT_const_value
	.byte	4                       @ Abbrev [4] 0x94:0xd DW_TAG_member
	.long	.Linfo_string32         @ DW_AT_name
	.long	1709                    @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.byte	252                     @ DW_AT_decl_line
                                        @ DW_AT_external
                                        @ DW_AT_declaration
	.ascii	"\216\001"              @ DW_AT_const_value
	.byte	4                       @ Abbrev [4] 0xa1:0xd DW_TAG_member
	.long	.Linfo_string33         @ DW_AT_name
	.long	1709                    @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.byte	253                     @ DW_AT_decl_line
                                        @ DW_AT_external
                                        @ DW_AT_declaration
	.ascii	"\241\001"              @ DW_AT_const_value
	.byte	4                       @ Abbrev [4] 0xae:0xd DW_TAG_member
	.long	.Linfo_string34         @ DW_AT_name
	.long	1709                    @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.byte	254                     @ DW_AT_decl_line
                                        @ DW_AT_external
                                        @ DW_AT_declaration
	.ascii	"\341\001"              @ DW_AT_const_value
	.byte	4                       @ Abbrev [4] 0xbb:0xd DW_TAG_member
	.long	.Linfo_string35         @ DW_AT_name
	.long	1709                    @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.byte	255                     @ DW_AT_decl_line
                                        @ DW_AT_external
                                        @ DW_AT_declaration
	.ascii	"\320\001"              @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0xc8:0xd DW_TAG_member
	.long	.Linfo_string36         @ DW_AT_name
	.long	1709                    @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.short	257                     @ DW_AT_decl_line
                                        @ DW_AT_external
                                        @ DW_AT_declaration
	.byte	6                       @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0xd5:0xd DW_TAG_member
	.long	.Linfo_string37         @ DW_AT_name
	.long	1709                    @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.short	258                     @ DW_AT_decl_line
                                        @ DW_AT_external
                                        @ DW_AT_declaration
	.byte	18                      @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0xe2:0xd DW_TAG_member
	.long	.Linfo_string38         @ DW_AT_name
	.long	1709                    @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.short	259                     @ DW_AT_decl_line
                                        @ DW_AT_external
                                        @ DW_AT_declaration
	.byte	1                       @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0xef:0xd DW_TAG_member
	.long	.Linfo_string39         @ DW_AT_name
	.long	1709                    @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.short	260                     @ DW_AT_decl_line
                                        @ DW_AT_external
                                        @ DW_AT_declaration
	.byte	7                       @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0xfc:0xd DW_TAG_member
	.long	.Linfo_string40         @ DW_AT_name
	.long	1709                    @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.short	261                     @ DW_AT_decl_line
                                        @ DW_AT_external
                                        @ DW_AT_declaration
	.byte	32                      @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0x109:0xd DW_TAG_member
	.long	.Linfo_string41         @ DW_AT_name
	.long	1709                    @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.short	262                     @ DW_AT_decl_line
                                        @ DW_AT_external
                                        @ DW_AT_declaration
	.byte	8                       @ DW_AT_const_value
	.byte	6                       @ Abbrev [6] 0x116:0xd DW_TAG_member
	.long	.Linfo_string42         @ DW_AT_name
	.long	291                     @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.short	268                     @ DW_AT_decl_line
	.byte	16                      @ DW_AT_data_member_location
	.byte	7                       @ Abbrev [7] 0x123:0x8d DW_TAG_structure_type
	.long	.Linfo_string79         @ DW_AT_name
	.byte	28                      @ DW_AT_byte_size
	.byte	6                       @ DW_AT_decl_file
	.byte	126                     @ DW_AT_decl_line
	.byte	8                       @ Abbrev [8] 0x12b:0xc DW_TAG_member
	.long	.Linfo_string43         @ DW_AT_name
	.long	432                     @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.byte	144                     @ DW_AT_decl_line
	.byte	0                       @ DW_AT_data_member_location
	.byte	8                       @ Abbrev [8] 0x137:0xc DW_TAG_member
	.long	.Linfo_string51         @ DW_AT_name
	.long	432                     @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.byte	145                     @ DW_AT_decl_line
	.byte	4                       @ DW_AT_data_member_location
	.byte	8                       @ Abbrev [8] 0x143:0xc DW_TAG_member
	.long	.Linfo_string52         @ DW_AT_name
	.long	432                     @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.byte	146                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_data_member_location
	.byte	8                       @ Abbrev [8] 0x14f:0xc DW_TAG_member
	.long	.Linfo_string53         @ DW_AT_name
	.long	477                     @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.byte	147                     @ DW_AT_decl_line
	.byte	12                      @ DW_AT_data_member_location
	.byte	8                       @ Abbrev [8] 0x15b:0xc DW_TAG_member
	.long	.Linfo_string58         @ DW_AT_name
	.long	504                     @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.byte	148                     @ DW_AT_decl_line
	.byte	16                      @ DW_AT_data_member_location
	.byte	8                       @ Abbrev [8] 0x167:0xc DW_TAG_member
	.long	.Linfo_string68         @ DW_AT_name
	.long	561                     @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.byte	149                     @ DW_AT_decl_line
	.byte	20                      @ DW_AT_data_member_location
	.byte	8                       @ Abbrev [8] 0x173:0xc DW_TAG_member
	.long	.Linfo_string75         @ DW_AT_name
	.long	600                     @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.byte	150                     @ DW_AT_decl_line
	.byte	24                      @ DW_AT_data_member_location
	.byte	9                       @ Abbrev [9] 0x17f:0x30 DW_TAG_subprogram
	.long	.Linfo_string79         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	128                     @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x186:0x5 DW_TAG_formal_parameter
	.long	1732                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	11                      @ Abbrev [11] 0x18b:0x5 DW_TAG_formal_parameter
	.long	432                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x190:0x5 DW_TAG_formal_parameter
	.long	432                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x195:0x5 DW_TAG_formal_parameter
	.long	432                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x19a:0x5 DW_TAG_formal_parameter
	.long	477                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x19f:0x5 DW_TAG_formal_parameter
	.long	504                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x1a4:0x5 DW_TAG_formal_parameter
	.long	561                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x1a9:0x5 DW_TAG_formal_parameter
	.long	600                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x1b0:0x2d DW_TAG_enumeration_type
	.long	.Linfo_string50         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	6                       @ DW_AT_decl_file
	.byte	71                      @ DW_AT_decl_line
	.byte	13                      @ Abbrev [13] 0x1b8:0x6 DW_TAG_enumerator
	.long	.Linfo_string44         @ DW_AT_name
	.byte	0                       @ DW_AT_const_value
	.byte	13                      @ Abbrev [13] 0x1be:0x6 DW_TAG_enumerator
	.long	.Linfo_string45         @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	13                      @ Abbrev [13] 0x1c4:0x6 DW_TAG_enumerator
	.long	.Linfo_string46         @ DW_AT_name
	.byte	2                       @ DW_AT_const_value
	.byte	13                      @ Abbrev [13] 0x1ca:0x6 DW_TAG_enumerator
	.long	.Linfo_string47         @ DW_AT_name
	.byte	3                       @ DW_AT_const_value
	.byte	13                      @ Abbrev [13] 0x1d0:0x6 DW_TAG_enumerator
	.long	.Linfo_string48         @ DW_AT_name
	.byte	4                       @ DW_AT_const_value
	.byte	13                      @ Abbrev [13] 0x1d6:0x6 DW_TAG_enumerator
	.long	.Linfo_string49         @ DW_AT_name
	.byte	5                       @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x1dd:0x1b DW_TAG_enumeration_type
	.long	.Linfo_string57         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	6                       @ DW_AT_decl_file
	.byte	81                      @ DW_AT_decl_line
	.byte	13                      @ Abbrev [13] 0x1e5:0x6 DW_TAG_enumerator
	.long	.Linfo_string54         @ DW_AT_name
	.byte	0                       @ DW_AT_const_value
	.byte	13                      @ Abbrev [13] 0x1eb:0x6 DW_TAG_enumerator
	.long	.Linfo_string55         @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	13                      @ Abbrev [13] 0x1f1:0x6 DW_TAG_enumerator
	.long	.Linfo_string56         @ DW_AT_name
	.byte	3                       @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x1f8:0x39 DW_TAG_enumeration_type
	.long	.Linfo_string67         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	6                       @ DW_AT_decl_file
	.byte	88                      @ DW_AT_decl_line
	.byte	13                      @ Abbrev [13] 0x200:0x6 DW_TAG_enumerator
	.long	.Linfo_string59         @ DW_AT_name
	.byte	0                       @ DW_AT_const_value
	.byte	13                      @ Abbrev [13] 0x206:0x6 DW_TAG_enumerator
	.long	.Linfo_string60         @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	13                      @ Abbrev [13] 0x20c:0x6 DW_TAG_enumerator
	.long	.Linfo_string61         @ DW_AT_name
	.byte	2                       @ DW_AT_const_value
	.byte	13                      @ Abbrev [13] 0x212:0x6 DW_TAG_enumerator
	.long	.Linfo_string62         @ DW_AT_name
	.byte	3                       @ DW_AT_const_value
	.byte	13                      @ Abbrev [13] 0x218:0x6 DW_TAG_enumerator
	.long	.Linfo_string63         @ DW_AT_name
	.byte	4                       @ DW_AT_const_value
	.byte	13                      @ Abbrev [13] 0x21e:0x6 DW_TAG_enumerator
	.long	.Linfo_string64         @ DW_AT_name
	.byte	5                       @ DW_AT_const_value
	.byte	13                      @ Abbrev [13] 0x224:0x6 DW_TAG_enumerator
	.long	.Linfo_string65         @ DW_AT_name
	.byte	6                       @ DW_AT_const_value
	.byte	13                      @ Abbrev [13] 0x22a:0x6 DW_TAG_enumerator
	.long	.Linfo_string66         @ DW_AT_name
	.byte	7                       @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x231:0x27 DW_TAG_enumeration_type
	.long	.Linfo_string74         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	6                       @ DW_AT_decl_file
	.byte	100                     @ DW_AT_decl_line
	.byte	13                      @ Abbrev [13] 0x239:0x6 DW_TAG_enumerator
	.long	.Linfo_string69         @ DW_AT_name
	.byte	0                       @ DW_AT_const_value
	.byte	13                      @ Abbrev [13] 0x23f:0x6 DW_TAG_enumerator
	.long	.Linfo_string70         @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	13                      @ Abbrev [13] 0x245:0x6 DW_TAG_enumerator
	.long	.Linfo_string71         @ DW_AT_name
	.byte	2                       @ DW_AT_const_value
	.byte	13                      @ Abbrev [13] 0x24b:0x6 DW_TAG_enumerator
	.long	.Linfo_string72         @ DW_AT_name
	.byte	3                       @ DW_AT_const_value
	.byte	13                      @ Abbrev [13] 0x251:0x6 DW_TAG_enumerator
	.long	.Linfo_string73         @ DW_AT_name
	.byte	4                       @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x258:0x15 DW_TAG_enumeration_type
	.long	.Linfo_string78         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	6                       @ DW_AT_decl_file
	.byte	109                     @ DW_AT_decl_line
	.byte	13                      @ Abbrev [13] 0x260:0x6 DW_TAG_enumerator
	.long	.Linfo_string76         @ DW_AT_name
	.byte	0                       @ DW_AT_const_value
	.byte	13                      @ Abbrev [13] 0x266:0x6 DW_TAG_enumerator
	.long	.Linfo_string77         @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	6                       @ Abbrev [6] 0x26d:0xd DW_TAG_member
	.long	.Linfo_string80         @ DW_AT_name
	.long	1737                    @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.short	270                     @ DW_AT_decl_line
	.byte	44                      @ DW_AT_data_member_location
	.byte	6                       @ Abbrev [6] 0x27a:0xd DW_TAG_member
	.long	.Linfo_string82         @ DW_AT_name
	.long	647                     @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.short	271                     @ DW_AT_decl_line
	.byte	76                      @ DW_AT_data_member_location
	.byte	12                      @ Abbrev [12] 0x287:0x1d DW_TAG_enumeration_type
	.long	.Linfo_string86         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	6                       @ DW_AT_decl_file
	.byte	115                     @ DW_AT_decl_line
	.byte	13                      @ Abbrev [13] 0x28f:0x6 DW_TAG_enumerator
	.long	.Linfo_string83         @ DW_AT_name
	.byte	0                       @ DW_AT_const_value
	.byte	13                      @ Abbrev [13] 0x295:0x7 DW_TAG_enumerator
	.long	.Linfo_string84         @ DW_AT_name
	.asciz	"\330"                  @ DW_AT_const_value
	.byte	13                      @ Abbrev [13] 0x29c:0x7 DW_TAG_enumerator
	.long	.Linfo_string85         @ DW_AT_name
	.asciz	"\340"                  @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	6                       @ Abbrev [6] 0x2a4:0xd DW_TAG_member
	.long	.Linfo_string87         @ DW_AT_name
	.long	1756                    @ DW_AT_type
	.byte	6                       @ DW_AT_decl_file
	.short	273                     @ DW_AT_decl_line
	.byte	80                      @ DW_AT_data_member_location
	.byte	14                      @ Abbrev [14] 0x2b1:0x13 DW_TAG_subprogram
	.long	.Linfo_string89         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	160                     @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	10                      @ Abbrev [10] 0x2b9:0x5 DW_TAG_formal_parameter
	.long	1763                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	11                      @ Abbrev [11] 0x2be:0x5 DW_TAG_formal_parameter
	.long	1768                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x2c4:0x16 DW_TAG_subprogram
	.long	.Linfo_string90         @ DW_AT_linkage_name
	.long	.Linfo_string91         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	165                     @ DW_AT_decl_line
	.long	1756                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	10                      @ Abbrev [10] 0x2d4:0x5 DW_TAG_formal_parameter
	.long	1763                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x2da:0x1b DW_TAG_subprogram
	.long	.Linfo_string92         @ DW_AT_linkage_name
	.long	.Linfo_string93         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	173                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	10                      @ Abbrev [10] 0x2ea:0x5 DW_TAG_formal_parameter
	.long	1763                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	11                      @ Abbrev [11] 0x2ef:0x5 DW_TAG_formal_parameter
	.long	757                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x2f5:0x15 DW_TAG_enumeration_type
	.long	.Linfo_string97         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	6                       @ DW_AT_decl_file
	.byte	54                      @ DW_AT_decl_line
	.byte	13                      @ Abbrev [13] 0x2fd:0x6 DW_TAG_enumerator
	.long	.Linfo_string95         @ DW_AT_name
	.byte	0                       @ DW_AT_const_value
	.byte	13                      @ Abbrev [13] 0x303:0x6 DW_TAG_enumerator
	.long	.Linfo_string96         @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x30a:0x1b DW_TAG_subprogram
	.long	.Linfo_string98         @ DW_AT_linkage_name
	.long	.Linfo_string99         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	179                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	10                      @ Abbrev [10] 0x31a:0x5 DW_TAG_formal_parameter
	.long	1763                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	11                      @ Abbrev [11] 0x31f:0x5 DW_TAG_formal_parameter
	.long	805                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x325:0x33 DW_TAG_enumeration_type
	.long	.Linfo_string107        @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	6                       @ DW_AT_decl_file
	.byte	60                      @ DW_AT_decl_line
	.byte	13                      @ Abbrev [13] 0x32d:0x6 DW_TAG_enumerator
	.long	.Linfo_string100        @ DW_AT_name
	.byte	0                       @ DW_AT_const_value
	.byte	13                      @ Abbrev [13] 0x333:0x6 DW_TAG_enumerator
	.long	.Linfo_string101        @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	13                      @ Abbrev [13] 0x339:0x6 DW_TAG_enumerator
	.long	.Linfo_string102        @ DW_AT_name
	.byte	2                       @ DW_AT_const_value
	.byte	13                      @ Abbrev [13] 0x33f:0x6 DW_TAG_enumerator
	.long	.Linfo_string103        @ DW_AT_name
	.byte	3                       @ DW_AT_const_value
	.byte	13                      @ Abbrev [13] 0x345:0x6 DW_TAG_enumerator
	.long	.Linfo_string104        @ DW_AT_name
	.byte	4                       @ DW_AT_const_value
	.byte	13                      @ Abbrev [13] 0x34b:0x6 DW_TAG_enumerator
	.long	.Linfo_string105        @ DW_AT_name
	.byte	5                       @ DW_AT_const_value
	.byte	13                      @ Abbrev [13] 0x351:0x6 DW_TAG_enumerator
	.long	.Linfo_string106        @ DW_AT_name
	.byte	6                       @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x358:0x16 DW_TAG_subprogram
	.long	.Linfo_string108        @ DW_AT_linkage_name
	.long	.Linfo_string109        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	185                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	10                      @ Abbrev [10] 0x368:0x5 DW_TAG_formal_parameter
	.long	1763                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	16                      @ Abbrev [16] 0x36e:0x2b DW_TAG_subprogram
	.long	.Linfo_string110        @ DW_AT_linkage_name
	.long	.Linfo_string111        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	189                     @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	10                      @ Abbrev [10] 0x37a:0x5 DW_TAG_formal_parameter
	.long	1763                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	11                      @ Abbrev [11] 0x37f:0x5 DW_TAG_formal_parameter
	.long	1785                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x384:0x5 DW_TAG_formal_parameter
	.long	1785                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x389:0x5 DW_TAG_formal_parameter
	.long	1785                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x38e:0x5 DW_TAG_formal_parameter
	.long	757                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x393:0x5 DW_TAG_formal_parameter
	.long	805                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x399:0x16 DW_TAG_subprogram
	.long	.Linfo_string112        @ DW_AT_linkage_name
	.long	.Linfo_string113        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	203                     @ DW_AT_decl_line
	.long	647                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	10                      @ Abbrev [10] 0x3a9:0x5 DW_TAG_formal_parameter
	.long	1763                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0x3af:0x1e DW_TAG_subprogram
	.long	.Linfo_string114        @ DW_AT_linkage_name
	.long	.Linfo_string115        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	219                     @ DW_AT_decl_line
	.long	1756                    @ DW_AT_type
	.byte	1                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	2
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	2                       @ DW_AT_accessibility
                                        @ DW_ACCESS_protected
	.long	38                      @ DW_AT_containing_type
	.byte	10                      @ Abbrev [10] 0x3c7:0x5 DW_TAG_formal_parameter
	.long	1763                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	16                      @ Abbrev [16] 0x3cd:0x12 DW_TAG_subprogram
	.long	.Linfo_string116        @ DW_AT_linkage_name
	.long	.Linfo_string117        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	224                     @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	2                       @ DW_AT_accessibility
                                        @ DW_ACCESS_protected
	.byte	10                      @ Abbrev [10] 0x3d9:0x5 DW_TAG_formal_parameter
	.long	1763                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0x3df:0x1f DW_TAG_subprogram
	.long	.Linfo_string118        @ DW_AT_linkage_name
	.long	.Linfo_string119        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	232                     @ DW_AT_decl_line
	.byte	1                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	3
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	2                       @ DW_AT_accessibility
                                        @ DW_ACCESS_protected
	.long	38                      @ DW_AT_containing_type
	.byte	10                      @ Abbrev [10] 0x3f3:0x5 DW_TAG_formal_parameter
	.long	1763                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	11                      @ Abbrev [11] 0x3f8:0x5 DW_TAG_formal_parameter
	.long	1768                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0x3fe:0x1e DW_TAG_subprogram
	.long	.Linfo_string120        @ DW_AT_linkage_name
	.long	.Linfo_string121        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	236                     @ DW_AT_decl_line
	.long	1768                    @ DW_AT_type
	.byte	1                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	4
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	2                       @ DW_AT_accessibility
                                        @ DW_ACCESS_protected
	.long	38                      @ DW_AT_containing_type
	.byte	10                      @ Abbrev [10] 0x416:0x5 DW_TAG_formal_parameter
	.long	1790                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	19                      @ Abbrev [19] 0x41c:0x28 DW_TAG_subprogram
	.long	.Linfo_string122        @ DW_AT_linkage_name
	.long	.Linfo_string123        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.short	282                     @ DW_AT_decl_line
	.long	1756                    @ DW_AT_type
	.byte	2                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	5
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.long	38                      @ DW_AT_containing_type
	.byte	10                      @ Abbrev [10] 0x434:0x5 DW_TAG_formal_parameter
	.long	1763                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	11                      @ Abbrev [11] 0x439:0x5 DW_TAG_formal_parameter
	.long	1714                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x43e:0x5 DW_TAG_formal_parameter
	.long	1714                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	19                      @ Abbrev [19] 0x444:0x2d DW_TAG_subprogram
	.long	.Linfo_string124        @ DW_AT_linkage_name
	.long	.Linfo_string125        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.short	288                     @ DW_AT_decl_line
	.long	1756                    @ DW_AT_type
	.byte	2                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	6
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.long	38                      @ DW_AT_containing_type
	.byte	10                      @ Abbrev [10] 0x45c:0x5 DW_TAG_formal_parameter
	.long	1763                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	11                      @ Abbrev [11] 0x461:0x5 DW_TAG_formal_parameter
	.long	1714                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x466:0x5 DW_TAG_formal_parameter
	.long	1800                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x46b:0x5 DW_TAG_formal_parameter
	.long	1714                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x471:0x21 DW_TAG_subprogram
	.long	.Linfo_string126        @ DW_AT_linkage_name
	.long	.Linfo_string127        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.short	300                     @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x47d:0x5 DW_TAG_formal_parameter
	.long	1763                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	11                      @ Abbrev [11] 0x482:0x5 DW_TAG_formal_parameter
	.long	1805                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x487:0x5 DW_TAG_formal_parameter
	.long	1805                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x48c:0x5 DW_TAG_formal_parameter
	.long	1805                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x492:0x12 DW_TAG_subprogram
	.long	.Linfo_string128        @ DW_AT_linkage_name
	.long	.Linfo_string129        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.short	307                     @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x49e:0x5 DW_TAG_formal_parameter
	.long	1763                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x4a4:0x16 DW_TAG_subprogram
	.long	.Linfo_string130        @ DW_AT_linkage_name
	.long	.Linfo_string131        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.short	313                     @ DW_AT_decl_line
	.long	1756                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x4b4:0x5 DW_TAG_formal_parameter
	.long	1763                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x4ba:0x16 DW_TAG_subprogram
	.long	.Linfo_string132        @ DW_AT_linkage_name
	.long	.Linfo_string133        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.short	318                     @ DW_AT_decl_line
	.long	1756                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x4ca:0x5 DW_TAG_formal_parameter
	.long	1763                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x4d0:0x1b DW_TAG_subprogram
	.long	.Linfo_string134        @ DW_AT_linkage_name
	.long	.Linfo_string135        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.short	323                     @ DW_AT_decl_line
	.long	1756                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x4e0:0x5 DW_TAG_formal_parameter
	.long	1763                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	11                      @ Abbrev [11] 0x4e5:0x5 DW_TAG_formal_parameter
	.long	1810                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x4eb:0x25 DW_TAG_subprogram
	.long	.Linfo_string137        @ DW_AT_linkage_name
	.long	.Linfo_string138        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.short	330                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x4fb:0x5 DW_TAG_formal_parameter
	.long	1763                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	11                      @ Abbrev [11] 0x500:0x5 DW_TAG_formal_parameter
	.long	1815                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x505:0x5 DW_TAG_formal_parameter
	.long	1826                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x50a:0x5 DW_TAG_formal_parameter
	.long	757                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x510:0x20 DW_TAG_subprogram
	.long	.Linfo_string139        @ DW_AT_linkage_name
	.long	.Linfo_string140        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.short	338                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x520:0x5 DW_TAG_formal_parameter
	.long	1763                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	11                      @ Abbrev [11] 0x525:0x5 DW_TAG_formal_parameter
	.long	1815                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x52a:0x5 DW_TAG_formal_parameter
	.long	1815                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x530:0x25 DW_TAG_subprogram
	.long	.Linfo_string141        @ DW_AT_linkage_name
	.long	.Linfo_string142        @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.short	345                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x540:0x5 DW_TAG_formal_parameter
	.long	1763                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	11                      @ Abbrev [11] 0x545:0x5 DW_TAG_formal_parameter
	.long	1815                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x54a:0x5 DW_TAG_formal_parameter
	.long	1815                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x54f:0x5 DW_TAG_formal_parameter
	.long	805                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	22                      @ Abbrev [22] 0x555:0x14 DW_TAG_subprogram
	.long	.Linfo_string369        @ DW_AT_name
	.byte	1                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	0
                                        @ DW_AT_declaration
                                        @ DW_AT_artificial
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.long	38                      @ DW_AT_containing_type
	.byte	10                      @ Abbrev [10] 0x563:0x5 DW_TAG_formal_parameter
	.long	1763                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	2                       @ Abbrev [2] 0x56a:0xf0 DW_TAG_class_type
	.long	1386                    @ DW_AT_containing_type
	.long	.Linfo_string17         @ DW_AT_name
	.byte	16                      @ DW_AT_byte_size
	.byte	1                       @ DW_AT_decl_file
	.byte	23                      @ DW_AT_decl_line
	.byte	23                      @ Abbrev [23] 0x576:0xa DW_TAG_member
	.long	.Linfo_string3          @ DW_AT_name
	.long	1626                    @ DW_AT_type
	.byte	0                       @ DW_AT_data_member_location
                                        @ DW_AT_artificial
	.byte	24                      @ Abbrev [24] 0x580:0xd DW_TAG_member
	.long	.Linfo_string6          @ DW_AT_name
	.long	1645                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	27                      @ DW_AT_decl_line
	.byte	4                       @ DW_AT_data_member_location
	.byte	2                       @ DW_AT_accessibility
                                        @ DW_ACCESS_protected
	.byte	24                      @ Abbrev [24] 0x58d:0xd DW_TAG_member
	.long	.Linfo_string7          @ DW_AT_name
	.long	1645                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	28                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_data_member_location
	.byte	2                       @ DW_AT_accessibility
                                        @ DW_ACCESS_protected
	.byte	24                      @ Abbrev [24] 0x59a:0xd DW_TAG_member
	.long	.Linfo_string8          @ DW_AT_name
	.long	1645                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	29                      @ DW_AT_decl_line
	.byte	12                      @ DW_AT_data_member_location
	.byte	2                       @ DW_AT_accessibility
                                        @ DW_ACCESS_protected
	.byte	15                      @ Abbrev [15] 0x5a7:0x20 DW_TAG_subprogram
	.long	.Linfo_string9          @ DW_AT_linkage_name
	.long	.Linfo_string10         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	31                      @ DW_AT_decl_line
	.long	1652                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	10                      @ Abbrev [10] 0x5b7:0x5 DW_TAG_formal_parameter
	.long	1674                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	11                      @ Abbrev [11] 0x5bc:0x5 DW_TAG_formal_parameter
	.long	1679                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x5c1:0x5 DW_TAG_formal_parameter
	.long	1680                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x5c7:0x20 DW_TAG_subprogram
	.long	.Linfo_string15         @ DW_AT_linkage_name
	.long	.Linfo_string16         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	32                      @ DW_AT_decl_line
	.long	1652                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	10                      @ Abbrev [10] 0x5d7:0x5 DW_TAG_formal_parameter
	.long	1674                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	11                      @ Abbrev [11] 0x5dc:0x5 DW_TAG_formal_parameter
	.long	1698                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x5e1:0x5 DW_TAG_formal_parameter
	.long	1680                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	14                      @ Abbrev [14] 0x5e7:0xe DW_TAG_subprogram
	.long	.Linfo_string17         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	33                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	10                      @ Abbrev [10] 0x5ef:0x5 DW_TAG_formal_parameter
	.long	1674                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	14                      @ Abbrev [14] 0x5f5:0x13 DW_TAG_subprogram
	.long	.Linfo_string17         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	34                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	10                      @ Abbrev [10] 0x5fd:0x5 DW_TAG_formal_parameter
	.long	1674                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	11                      @ Abbrev [11] 0x602:0x5 DW_TAG_formal_parameter
	.long	1704                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x608:0x25 DW_TAG_subprogram
	.long	.Linfo_string18         @ DW_AT_linkage_name
	.long	.Linfo_string19         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	35                      @ DW_AT_decl_line
	.long	1645                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	10                      @ Abbrev [10] 0x618:0x5 DW_TAG_formal_parameter
	.long	1674                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	11                      @ Abbrev [11] 0x61d:0x5 DW_TAG_formal_parameter
	.long	1645                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x622:0x5 DW_TAG_formal_parameter
	.long	1645                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x627:0x5 DW_TAG_formal_parameter
	.long	1645                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x62d:0x16 DW_TAG_subprogram
	.long	.Linfo_string20         @ DW_AT_linkage_name
	.long	.Linfo_string21         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	36                      @ DW_AT_decl_line
	.long	1645                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	10                      @ Abbrev [10] 0x63d:0x5 DW_TAG_formal_parameter
	.long	1674                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	25                      @ Abbrev [25] 0x643:0x16 DW_TAG_subprogram
	.long	.Linfo_string22         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	38                      @ DW_AT_decl_line
	.byte	1                       @ DW_AT_virtuality
	.byte	2                       @ DW_AT_vtable_elem_location
	.byte	16
	.byte	0
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.long	1386                    @ DW_AT_containing_type
	.byte	10                      @ Abbrev [10] 0x653:0x5 DW_TAG_formal_parameter
	.long	1674                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x65a:0x5 DW_TAG_pointer_type
	.long	1631                    @ DW_AT_type
	.byte	27                      @ Abbrev [27] 0x65f:0x9 DW_TAG_pointer_type
	.long	1640                    @ DW_AT_type
	.long	.Linfo_string5          @ DW_AT_name
	.byte	28                      @ Abbrev [28] 0x668:0x5 DW_TAG_subroutine_type
	.long	1645                    @ DW_AT_type
	.byte	29                      @ Abbrev [29] 0x66d:0x7 DW_TAG_base_type
	.long	.Linfo_string4          @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	30                      @ Abbrev [30] 0x674:0xb DW_TAG_typedef
	.long	1663                    @ DW_AT_type
	.long	.Linfo_string12         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	104                     @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x67f:0xb DW_TAG_typedef
	.long	1645                    @ DW_AT_type
	.long	.Linfo_string11         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	172                     @ DW_AT_decl_line
	.byte	26                      @ Abbrev [26] 0x68a:0x5 DW_TAG_pointer_type
	.long	1386                    @ DW_AT_type
	.byte	31                      @ Abbrev [31] 0x68f:0x1 DW_TAG_pointer_type
	.byte	30                      @ Abbrev [30] 0x690:0xb DW_TAG_typedef
	.long	1691                    @ DW_AT_type
	.long	.Linfo_string14         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	62                      @ DW_AT_decl_line
	.byte	29                      @ Abbrev [29] 0x69b:0x7 DW_TAG_base_type
	.long	.Linfo_string13         @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	26                      @ Abbrev [26] 0x6a2:0x5 DW_TAG_pointer_type
	.long	1703                    @ DW_AT_type
	.byte	32                      @ Abbrev [32] 0x6a7:0x1 DW_TAG_const_type
	.byte	33                      @ Abbrev [33] 0x6a8:0x5 DW_TAG_rvalue_reference_type
	.long	1386                    @ DW_AT_type
	.byte	34                      @ Abbrev [34] 0x6ad:0x5 DW_TAG_const_type
	.long	1714                    @ DW_AT_type
	.byte	30                      @ Abbrev [30] 0x6b2:0xb DW_TAG_typedef
	.long	1725                    @ DW_AT_type
	.long	.Linfo_string25         @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	48                      @ DW_AT_decl_line
	.byte	29                      @ Abbrev [29] 0x6bd:0x7 DW_TAG_base_type
	.long	.Linfo_string24         @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	26                      @ Abbrev [26] 0x6c4:0x5 DW_TAG_pointer_type
	.long	291                     @ DW_AT_type
	.byte	35                      @ Abbrev [35] 0x6c9:0xc DW_TAG_array_type
	.long	1714                    @ DW_AT_type
	.byte	36                      @ Abbrev [36] 0x6ce:0x6 DW_TAG_subrange_type
	.long	1749                    @ DW_AT_type
	.byte	32                      @ DW_AT_count
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x6d5:0x7 DW_TAG_base_type
	.long	.Linfo_string81         @ DW_AT_name
	.byte	8                       @ DW_AT_byte_size
	.byte	7                       @ DW_AT_encoding
	.byte	29                      @ Abbrev [29] 0x6dc:0x7 DW_TAG_base_type
	.long	.Linfo_string88         @ DW_AT_name
	.byte	2                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	26                      @ Abbrev [26] 0x6e3:0x5 DW_TAG_pointer_type
	.long	38                      @ DW_AT_type
	.byte	38                      @ Abbrev [38] 0x6e8:0x5 DW_TAG_reference_type
	.long	1773                    @ DW_AT_type
	.byte	34                      @ Abbrev [34] 0x6ed:0x5 DW_TAG_const_type
	.long	291                     @ DW_AT_type
	.byte	29                      @ Abbrev [29] 0x6f2:0x7 DW_TAG_base_type
	.long	.Linfo_string94         @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	38                      @ Abbrev [38] 0x6f9:0x5 DW_TAG_reference_type
	.long	1778                    @ DW_AT_type
	.byte	26                      @ Abbrev [26] 0x6fe:0x5 DW_TAG_pointer_type
	.long	1795                    @ DW_AT_type
	.byte	34                      @ Abbrev [34] 0x703:0x5 DW_TAG_const_type
	.long	38                      @ DW_AT_type
	.byte	26                      @ Abbrev [26] 0x708:0x5 DW_TAG_pointer_type
	.long	1714                    @ DW_AT_type
	.byte	38                      @ Abbrev [38] 0x70d:0x5 DW_TAG_reference_type
	.long	1714                    @ DW_AT_type
	.byte	26                      @ Abbrev [26] 0x712:0x5 DW_TAG_pointer_type
	.long	1815                    @ DW_AT_type
	.byte	30                      @ Abbrev [30] 0x717:0xb DW_TAG_typedef
	.long	1645                    @ DW_AT_type
	.long	.Linfo_string136        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	196                     @ DW_AT_decl_line
	.byte	38                      @ Abbrev [38] 0x722:0x5 DW_TAG_reference_type
	.long	1815                    @ DW_AT_type
	.byte	30                      @ Abbrev [30] 0x727:0xb DW_TAG_typedef
	.long	1691                    @ DW_AT_type
	.long	.Linfo_string143        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	51                      @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x732:0xb DW_TAG_typedef
	.long	1853                    @ DW_AT_type
	.long	.Linfo_string145        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	197                     @ DW_AT_decl_line
	.byte	29                      @ Abbrev [29] 0x73d:0x7 DW_TAG_base_type
	.long	.Linfo_string144        @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	39                      @ Abbrev [39] 0x744:0x520 DW_TAG_namespace
	.long	.Linfo_string146        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	199                     @ DW_AT_decl_line
	.byte	40                      @ Abbrev [40] 0x74b:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	106                     @ DW_AT_decl_line
	.long	3172                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0x752:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	125                     @ DW_AT_decl_line
	.long	3200                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0x759:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	144                     @ DW_AT_decl_line
	.long	3221                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0x760:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	163                     @ DW_AT_decl_line
	.long	3238                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0x767:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	184                     @ DW_AT_decl_line
	.long	3264                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0x76e:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	203                     @ DW_AT_decl_line
	.long	3281                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0x775:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	222                     @ DW_AT_decl_line
	.long	3298                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0x77c:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	241                     @ DW_AT_decl_line
	.long	3319                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x783:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	260                     @ DW_AT_decl_line
	.long	3340                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x78b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	279                     @ DW_AT_decl_line
	.long	3357                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x793:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	298                     @ DW_AT_decl_line
	.long	3374                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x79b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	319                     @ DW_AT_decl_line
	.long	3400                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x7a3:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	338                     @ DW_AT_decl_line
	.long	3427                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x7ab:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	357                     @ DW_AT_decl_line
	.long	3449                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x7b3:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	376                     @ DW_AT_decl_line
	.long	3471                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x7bb:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	395                     @ DW_AT_decl_line
	.long	3493                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x7c3:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	407                     @ DW_AT_decl_line
	.long	3520                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x7cb:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	444                     @ DW_AT_decl_line
	.long	3547                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x7d3:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	463                     @ DW_AT_decl_line
	.long	3564                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x7db:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	482                     @ DW_AT_decl_line
	.long	3586                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x7e3:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	501                     @ DW_AT_decl_line
	.long	3608                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x7eb:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	520                     @ DW_AT_decl_line
	.long	3625                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x7f3:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1101                    @ DW_AT_decl_line
	.long	3642                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x7fb:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1102                    @ DW_AT_decl_line
	.long	3653                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x803:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1105                    @ DW_AT_decl_line
	.long	3664                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x80b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1106                    @ DW_AT_decl_line
	.long	3685                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x813:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1107                    @ DW_AT_decl_line
	.long	3706                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x81b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1109                    @ DW_AT_decl_line
	.long	3734                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x823:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1110                    @ DW_AT_decl_line
	.long	3751                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x82b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1111                    @ DW_AT_decl_line
	.long	3768                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x833:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1113                    @ DW_AT_decl_line
	.long	3785                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x83b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1114                    @ DW_AT_decl_line
	.long	3806                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x843:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1115                    @ DW_AT_decl_line
	.long	3827                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x84b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1117                    @ DW_AT_decl_line
	.long	3848                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x853:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1118                    @ DW_AT_decl_line
	.long	3865                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x85b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1119                    @ DW_AT_decl_line
	.long	3882                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x863:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1121                    @ DW_AT_decl_line
	.long	3899                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x86b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1122                    @ DW_AT_decl_line
	.long	3921                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x873:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1123                    @ DW_AT_decl_line
	.long	3943                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x87b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1125                    @ DW_AT_decl_line
	.long	3965                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x883:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1126                    @ DW_AT_decl_line
	.long	3983                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x88b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1127                    @ DW_AT_decl_line
	.long	4001                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x893:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1129                    @ DW_AT_decl_line
	.long	4019                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x89b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1130                    @ DW_AT_decl_line
	.long	4037                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x8a3:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1131                    @ DW_AT_decl_line
	.long	4055                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x8ab:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1133                    @ DW_AT_decl_line
	.long	4073                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x8b3:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1134                    @ DW_AT_decl_line
	.long	4094                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x8bb:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1135                    @ DW_AT_decl_line
	.long	4115                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x8c3:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1137                    @ DW_AT_decl_line
	.long	4136                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x8cb:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1138                    @ DW_AT_decl_line
	.long	4153                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x8d3:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1139                    @ DW_AT_decl_line
	.long	4170                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x8db:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1141                    @ DW_AT_decl_line
	.long	4187                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x8e3:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1142                    @ DW_AT_decl_line
	.long	4210                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x8eb:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1143                    @ DW_AT_decl_line
	.long	4233                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x8f3:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1145                    @ DW_AT_decl_line
	.long	4256                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x8fb:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1146                    @ DW_AT_decl_line
	.long	4284                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x903:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1147                    @ DW_AT_decl_line
	.long	4312                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x90b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1149                    @ DW_AT_decl_line
	.long	4340                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x913:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1150                    @ DW_AT_decl_line
	.long	4363                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x91b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1151                    @ DW_AT_decl_line
	.long	4386                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x923:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1153                    @ DW_AT_decl_line
	.long	4409                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x92b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1154                    @ DW_AT_decl_line
	.long	4432                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x933:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1155                    @ DW_AT_decl_line
	.long	4455                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x93b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1157                    @ DW_AT_decl_line
	.long	4478                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x943:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1158                    @ DW_AT_decl_line
	.long	4504                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x94b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1159                    @ DW_AT_decl_line
	.long	4530                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x953:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1161                    @ DW_AT_decl_line
	.long	4556                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x95b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1162                    @ DW_AT_decl_line
	.long	4574                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x963:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1163                    @ DW_AT_decl_line
	.long	4592                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x96b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1165                    @ DW_AT_decl_line
	.long	4610                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x973:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1166                    @ DW_AT_decl_line
	.long	4628                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x97b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1167                    @ DW_AT_decl_line
	.long	4646                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x983:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1169                    @ DW_AT_decl_line
	.long	4664                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x98b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1170                    @ DW_AT_decl_line
	.long	4682                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x993:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1171                    @ DW_AT_decl_line
	.long	4700                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x99b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1173                    @ DW_AT_decl_line
	.long	4718                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x9a3:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1174                    @ DW_AT_decl_line
	.long	4736                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x9ab:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1175                    @ DW_AT_decl_line
	.long	4754                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x9b3:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1177                    @ DW_AT_decl_line
	.long	4772                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x9bb:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1178                    @ DW_AT_decl_line
	.long	4789                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x9c3:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1179                    @ DW_AT_decl_line
	.long	4806                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x9cb:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1181                    @ DW_AT_decl_line
	.long	4823                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x9d3:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1182                    @ DW_AT_decl_line
	.long	4845                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x9db:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1183                    @ DW_AT_decl_line
	.long	4867                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x9e3:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1185                    @ DW_AT_decl_line
	.long	4889                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x9eb:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1186                    @ DW_AT_decl_line
	.long	4906                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x9f3:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1187                    @ DW_AT_decl_line
	.long	4923                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0x9fb:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1189                    @ DW_AT_decl_line
	.long	4940                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xa03:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1190                    @ DW_AT_decl_line
	.long	4965                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xa0b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1191                    @ DW_AT_decl_line
	.long	4983                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xa13:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1193                    @ DW_AT_decl_line
	.long	5001                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xa1b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1194                    @ DW_AT_decl_line
	.long	5019                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xa23:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1195                    @ DW_AT_decl_line
	.long	5037                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xa2b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1197                    @ DW_AT_decl_line
	.long	5055                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xa33:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1198                    @ DW_AT_decl_line
	.long	5089                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xa3b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1199                    @ DW_AT_decl_line
	.long	5106                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xa43:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1201                    @ DW_AT_decl_line
	.long	5123                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xa4b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1202                    @ DW_AT_decl_line
	.long	5141                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xa53:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1203                    @ DW_AT_decl_line
	.long	5159                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xa5b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1205                    @ DW_AT_decl_line
	.long	5177                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xa63:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1206                    @ DW_AT_decl_line
	.long	5200                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xa6b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1207                    @ DW_AT_decl_line
	.long	5223                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xa73:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1209                    @ DW_AT_decl_line
	.long	5246                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xa7b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1210                    @ DW_AT_decl_line
	.long	5269                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xa83:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1211                    @ DW_AT_decl_line
	.long	5292                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xa8b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1213                    @ DW_AT_decl_line
	.long	5315                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xa93:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1214                    @ DW_AT_decl_line
	.long	5342                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xa9b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1215                    @ DW_AT_decl_line
	.long	5369                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xaa3:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1217                    @ DW_AT_decl_line
	.long	5396                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xaab:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1218                    @ DW_AT_decl_line
	.long	5424                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xab3:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1219                    @ DW_AT_decl_line
	.long	5452                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xabb:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1221                    @ DW_AT_decl_line
	.long	5480                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xac3:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1222                    @ DW_AT_decl_line
	.long	5498                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xacb:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1223                    @ DW_AT_decl_line
	.long	5516                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xad3:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1225                    @ DW_AT_decl_line
	.long	5534                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xadb:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1226                    @ DW_AT_decl_line
	.long	5552                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xae3:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1227                    @ DW_AT_decl_line
	.long	5570                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xaeb:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1229                    @ DW_AT_decl_line
	.long	5588                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xaf3:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1230                    @ DW_AT_decl_line
	.long	5611                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xafb:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1231                    @ DW_AT_decl_line
	.long	5634                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xb03:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1233                    @ DW_AT_decl_line
	.long	5657                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xb0b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1234                    @ DW_AT_decl_line
	.long	5680                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xb13:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1235                    @ DW_AT_decl_line
	.long	5703                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xb1b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1237                    @ DW_AT_decl_line
	.long	5726                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xb23:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1238                    @ DW_AT_decl_line
	.long	5744                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xb2b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1239                    @ DW_AT_decl_line
	.long	5762                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xb33:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1241                    @ DW_AT_decl_line
	.long	5780                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xb3b:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1242                    @ DW_AT_decl_line
	.long	5798                    @ DW_AT_import
	.byte	41                      @ Abbrev [41] 0xb43:0x8 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.short	1243                    @ DW_AT_decl_line
	.long	5816                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xb4b:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	48                      @ DW_AT_decl_line
	.long	5834                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xb52:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	49                      @ DW_AT_decl_line
	.long	5852                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xb59:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	50                      @ DW_AT_decl_line
	.long	1815                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xb60:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	51                      @ DW_AT_decl_line
	.long	1842                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xb67:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	53                      @ DW_AT_decl_line
	.long	5870                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xb6e:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	54                      @ DW_AT_decl_line
	.long	5881                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xb75:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	55                      @ DW_AT_decl_line
	.long	5892                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xb7c:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	56                      @ DW_AT_decl_line
	.long	5903                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xb83:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	58                      @ DW_AT_decl_line
	.long	5914                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xb8a:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	59                      @ DW_AT_decl_line
	.long	5925                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xb91:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	60                      @ DW_AT_decl_line
	.long	5936                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xb98:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	61                      @ DW_AT_decl_line
	.long	5947                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xb9f:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	63                      @ DW_AT_decl_line
	.long	5958                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xba6:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	64                      @ DW_AT_decl_line
	.long	5969                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xbad:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	66                      @ DW_AT_decl_line
	.long	1714                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xbb4:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	67                      @ DW_AT_decl_line
	.long	5992                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xbbb:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	68                      @ DW_AT_decl_line
	.long	1831                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xbc2:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	69                      @ DW_AT_decl_line
	.long	6010                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xbc9:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	71                      @ DW_AT_decl_line
	.long	6028                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xbd0:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	72                      @ DW_AT_decl_line
	.long	6039                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xbd7:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	73                      @ DW_AT_decl_line
	.long	6050                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xbde:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	74                      @ DW_AT_decl_line
	.long	6061                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xbe5:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	76                      @ DW_AT_decl_line
	.long	6072                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xbec:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	77                      @ DW_AT_decl_line
	.long	6083                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xbf3:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	78                      @ DW_AT_decl_line
	.long	6094                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xbfa:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	79                      @ DW_AT_decl_line
	.long	6105                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xc01:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	81                      @ DW_AT_decl_line
	.long	6116                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xc08:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	82                      @ DW_AT_decl_line
	.long	6127                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xc0f:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	60                      @ DW_AT_decl_line
	.long	6138                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xc16:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	61                      @ DW_AT_decl_line
	.long	6160                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xc1d:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	62                      @ DW_AT_decl_line
	.long	6182                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xc24:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	64                      @ DW_AT_decl_line
	.long	6188                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xc2b:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	65                      @ DW_AT_decl_line
	.long	6199                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xc32:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	66                      @ DW_AT_decl_line
	.long	6221                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xc39:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	67                      @ DW_AT_decl_line
	.long	6243                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xc40:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	68                      @ DW_AT_decl_line
	.long	6265                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xc47:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	69                      @ DW_AT_decl_line
	.long	6298                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xc4e:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	70                      @ DW_AT_decl_line
	.long	6326                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xc55:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	71                      @ DW_AT_decl_line
	.long	6343                    @ DW_AT_import
	.byte	40                      @ Abbrev [40] 0xc5c:0x7 DW_TAG_imported_declaration
	.byte	8                       @ DW_AT_decl_file
	.byte	72                      @ DW_AT_decl_line
	.long	6360                    @ DW_AT_import
	.byte	0                       @ End Of Children Mark
	.byte	42                      @ Abbrev [42] 0xc64:0x15 DW_TAG_subprogram
	.long	.Linfo_string147        @ DW_AT_linkage_name
	.long	.Linfo_string148        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	24                      @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xc73:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xc79:0x7 DW_TAG_base_type
	.long	.Linfo_string149        @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	42                      @ Abbrev [42] 0xc80:0x15 DW_TAG_subprogram
	.long	.Linfo_string150        @ DW_AT_linkage_name
	.long	.Linfo_string151        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	52                      @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xc8f:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0xc95:0x11 DW_TAG_subprogram
	.long	.Linfo_string152        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	58                      @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xca0:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	42                      @ Abbrev [42] 0xca6:0x1a DW_TAG_subprogram
	.long	.Linfo_string153        @ DW_AT_linkage_name
	.long	.Linfo_string154        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	65                      @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xcb5:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xcba:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0xcc0:0x11 DW_TAG_subprogram
	.long	.Linfo_string155        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	178                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xccb:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0xcd1:0x11 DW_TAG_subprogram
	.long	.Linfo_string156        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	63                      @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xcdc:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	42                      @ Abbrev [42] 0xce2:0x15 DW_TAG_subprogram
	.long	.Linfo_string157        @ DW_AT_linkage_name
	.long	.Linfo_string158        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	95                      @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xcf1:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	42                      @ Abbrev [42] 0xcf7:0x15 DW_TAG_subprogram
	.long	.Linfo_string159        @ DW_AT_linkage_name
	.long	.Linfo_string160        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	108                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xd06:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0xd0c:0x11 DW_TAG_subprogram
	.long	.Linfo_string161        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	181                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xd17:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0xd1d:0x11 DW_TAG_subprogram
	.long	.Linfo_string162        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	184                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xd28:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	42                      @ Abbrev [42] 0xd2e:0x1a DW_TAG_subprogram
	.long	.Linfo_string163        @ DW_AT_linkage_name
	.long	.Linfo_string164        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	158                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xd3d:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xd42:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0xd48:0x16 DW_TAG_subprogram
	.long	.Linfo_string165        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	103                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xd53:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xd58:0x5 DW_TAG_formal_parameter
	.long	3422                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xd5e:0x5 DW_TAG_pointer_type
	.long	1645                    @ DW_AT_type
	.byte	43                      @ Abbrev [43] 0xd63:0x16 DW_TAG_subprogram
	.long	.Linfo_string166        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	106                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xd6e:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xd73:0x5 DW_TAG_formal_parameter
	.long	1645                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0xd79:0x16 DW_TAG_subprogram
	.long	.Linfo_string167        @ DW_AT_linkage_name
	.long	.Linfo_string168        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.short	363                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xd89:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0xd8f:0x16 DW_TAG_subprogram
	.long	.Linfo_string169        @ DW_AT_linkage_name
	.long	.Linfo_string170        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.short	376                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xd9f:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0xda5:0x16 DW_TAG_subprogram
	.long	.Linfo_string171        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	115                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xdb0:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xdb5:0x5 DW_TAG_formal_parameter
	.long	3515                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xdbb:0x5 DW_TAG_pointer_type
	.long	3193                    @ DW_AT_type
	.byte	21                      @ Abbrev [21] 0xdc0:0x1b DW_TAG_subprogram
	.long	.Linfo_string172        @ DW_AT_linkage_name
	.long	.Linfo_string173        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.short	402                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xdd0:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xdd5:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0xddb:0x11 DW_TAG_subprogram
	.long	.Linfo_string174        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	65                      @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xde6:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0xdec:0x16 DW_TAG_subprogram
	.long	.Linfo_string175        @ DW_AT_linkage_name
	.long	.Linfo_string176        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.short	452                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xdfc:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0xe02:0x16 DW_TAG_subprogram
	.long	.Linfo_string177        @ DW_AT_linkage_name
	.long	.Linfo_string178        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.short	465                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xe12:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0xe18:0x11 DW_TAG_subprogram
	.long	.Linfo_string179        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	67                      @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xe23:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0xe29:0x11 DW_TAG_subprogram
	.long	.Linfo_string180        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	76                      @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xe34:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	30                      @ Abbrev [30] 0xe3a:0xb DW_TAG_typedef
	.long	3193                    @ DW_AT_type
	.long	.Linfo_string181        @ DW_AT_name
	.byte	11                      @ DW_AT_decl_file
	.byte	28                      @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0xe45:0xb DW_TAG_typedef
	.long	1778                    @ DW_AT_type
	.long	.Linfo_string182        @ DW_AT_name
	.byte	11                      @ DW_AT_decl_file
	.byte	26                      @ DW_AT_decl_line
	.byte	42                      @ Abbrev [42] 0xe50:0x15 DW_TAG_subprogram
	.long	.Linfo_string183        @ DW_AT_linkage_name
	.long	.Linfo_string184        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	38                      @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xe5f:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	42                      @ Abbrev [42] 0xe65:0x15 DW_TAG_subprogram
	.long	.Linfo_string185        @ DW_AT_linkage_name
	.long	.Linfo_string186        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	41                      @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xe74:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	42                      @ Abbrev [42] 0xe7a:0x15 DW_TAG_subprogram
	.long	.Linfo_string183        @ DW_AT_linkage_name
	.long	.Linfo_string187        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	44                      @ DW_AT_decl_line
	.long	3727                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xe89:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xe8f:0x7 DW_TAG_base_type
	.long	.Linfo_string188        @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	43                      @ Abbrev [43] 0xe96:0x11 DW_TAG_subprogram
	.long	.Linfo_string189        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	90                      @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xea1:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0xea7:0x11 DW_TAG_subprogram
	.long	.Linfo_string190        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	90                      @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xeb2:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0xeb8:0x11 DW_TAG_subprogram
	.long	.Linfo_string191        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	90                      @ DW_AT_decl_line
	.long	3727                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xec3:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	42                      @ Abbrev [42] 0xec9:0x15 DW_TAG_subprogram
	.long	.Linfo_string192        @ DW_AT_linkage_name
	.long	.Linfo_string193        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	81                      @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xed8:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	42                      @ Abbrev [42] 0xede:0x15 DW_TAG_subprogram
	.long	.Linfo_string194        @ DW_AT_linkage_name
	.long	.Linfo_string195        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	84                      @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xeed:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	42                      @ Abbrev [42] 0xef3:0x15 DW_TAG_subprogram
	.long	.Linfo_string192        @ DW_AT_linkage_name
	.long	.Linfo_string196        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	87                      @ DW_AT_decl_line
	.long	3727                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xf02:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0xf08:0x11 DW_TAG_subprogram
	.long	.Linfo_string197        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	169                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xf13:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0xf19:0x11 DW_TAG_subprogram
	.long	.Linfo_string198        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	169                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xf24:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0xf2a:0x11 DW_TAG_subprogram
	.long	.Linfo_string199        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	169                     @ DW_AT_decl_line
	.long	3727                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xf35:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0xf3b:0x16 DW_TAG_subprogram
	.long	.Linfo_string200        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	221                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xf46:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xf4b:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0xf51:0x16 DW_TAG_subprogram
	.long	.Linfo_string201        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	221                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xf5c:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xf61:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0xf67:0x16 DW_TAG_subprogram
	.long	.Linfo_string202        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	221                     @ DW_AT_decl_line
	.long	3727                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xf72:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xf77:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0xf7d:0x12 DW_TAG_subprogram
	.long	.Linfo_string203        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	259                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xf89:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0xf8f:0x12 DW_TAG_subprogram
	.long	.Linfo_string204        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	259                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xf9b:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0xfa1:0x12 DW_TAG_subprogram
	.long	.Linfo_string205        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	259                     @ DW_AT_decl_line
	.long	3727                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xfad:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0xfb3:0x12 DW_TAG_subprogram
	.long	.Linfo_string206        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	260                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xfbf:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0xfc5:0x12 DW_TAG_subprogram
	.long	.Linfo_string207        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	260                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xfd1:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0xfd7:0x12 DW_TAG_subprogram
	.long	.Linfo_string208        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	260                     @ DW_AT_decl_line
	.long	3727                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xfe3:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	42                      @ Abbrev [42] 0xfe9:0x15 DW_TAG_subprogram
	.long	.Linfo_string209        @ DW_AT_linkage_name
	.long	.Linfo_string210        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	146                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xff8:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	42                      @ Abbrev [42] 0xffe:0x15 DW_TAG_subprogram
	.long	.Linfo_string211        @ DW_AT_linkage_name
	.long	.Linfo_string212        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	147                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x100d:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	42                      @ Abbrev [42] 0x1013:0x15 DW_TAG_subprogram
	.long	.Linfo_string209        @ DW_AT_linkage_name
	.long	.Linfo_string213        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	150                     @ DW_AT_decl_line
	.long	3727                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1022:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0x1028:0x11 DW_TAG_subprogram
	.long	.Linfo_string214        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	128                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1033:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0x1039:0x11 DW_TAG_subprogram
	.long	.Linfo_string215        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	128                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1044:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0x104a:0x11 DW_TAG_subprogram
	.long	.Linfo_string216        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	128                     @ DW_AT_decl_line
	.long	3727                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1055:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x105b:0x17 DW_TAG_subprogram
	.long	.Linfo_string217        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	354                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1067:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x106c:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1072:0x17 DW_TAG_subprogram
	.long	.Linfo_string218        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	354                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x107e:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x1083:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1089:0x17 DW_TAG_subprogram
	.long	.Linfo_string219        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	354                     @ DW_AT_decl_line
	.long	3727                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1095:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x109a:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x10a0:0x1c DW_TAG_subprogram
	.long	.Linfo_string220        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	373                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x10ac:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x10b1:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x10b6:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x10bc:0x1c DW_TAG_subprogram
	.long	.Linfo_string221        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	373                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x10c8:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x10cd:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x10d2:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x10d8:0x1c DW_TAG_subprogram
	.long	.Linfo_string222        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	373                     @ DW_AT_decl_line
	.long	3727                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x10e4:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x10e9:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x10ee:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x10f4:0x17 DW_TAG_subprogram
	.long	.Linfo_string223        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	357                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1100:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x1105:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x110b:0x17 DW_TAG_subprogram
	.long	.Linfo_string224        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	357                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1117:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x111c:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1122:0x17 DW_TAG_subprogram
	.long	.Linfo_string225        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	357                     @ DW_AT_decl_line
	.long	3727                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x112e:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x1133:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1139:0x17 DW_TAG_subprogram
	.long	.Linfo_string226        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	360                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1145:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x114a:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1150:0x17 DW_TAG_subprogram
	.long	.Linfo_string227        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	360                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x115c:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x1161:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1167:0x17 DW_TAG_subprogram
	.long	.Linfo_string228        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	360                     @ DW_AT_decl_line
	.long	3727                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1173:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x1178:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	42                      @ Abbrev [42] 0x117e:0x1a DW_TAG_subprogram
	.long	.Linfo_string229        @ DW_AT_linkage_name
	.long	.Linfo_string230        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	174                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x118d:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x1192:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	42                      @ Abbrev [42] 0x1198:0x1a DW_TAG_subprogram
	.long	.Linfo_string231        @ DW_AT_linkage_name
	.long	.Linfo_string232        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	177                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x11a7:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x11ac:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	42                      @ Abbrev [42] 0x11b2:0x1a DW_TAG_subprogram
	.long	.Linfo_string229        @ DW_AT_linkage_name
	.long	.Linfo_string233        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	180                     @ DW_AT_decl_line
	.long	3727                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x11c1:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x11c6:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x11cc:0x12 DW_TAG_subprogram
	.long	.Linfo_string234        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	313                     @ DW_AT_decl_line
	.long	1645                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x11d8:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x11de:0x12 DW_TAG_subprogram
	.long	.Linfo_string235        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	313                     @ DW_AT_decl_line
	.long	1645                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x11ea:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x11f0:0x12 DW_TAG_subprogram
	.long	.Linfo_string236        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	313                     @ DW_AT_decl_line
	.long	1645                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x11fc:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1202:0x12 DW_TAG_subprogram
	.long	.Linfo_string237        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.short	308                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x120e:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1214:0x12 DW_TAG_subprogram
	.long	.Linfo_string238        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.short	319                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1220:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1226:0x12 DW_TAG_subprogram
	.long	.Linfo_string239        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.short	329                     @ DW_AT_decl_line
	.long	3727                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1232:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1238:0x12 DW_TAG_subprogram
	.long	.Linfo_string240        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	344                     @ DW_AT_decl_line
	.long	1853                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1244:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x124a:0x12 DW_TAG_subprogram
	.long	.Linfo_string241        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	344                     @ DW_AT_decl_line
	.long	1853                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1256:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x125c:0x12 DW_TAG_subprogram
	.long	.Linfo_string242        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	344                     @ DW_AT_decl_line
	.long	1853                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1268:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x126e:0x12 DW_TAG_subprogram
	.long	.Linfo_string243        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	350                     @ DW_AT_decl_line
	.long	1853                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x127a:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1280:0x12 DW_TAG_subprogram
	.long	.Linfo_string244        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	350                     @ DW_AT_decl_line
	.long	1853                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x128c:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1292:0x12 DW_TAG_subprogram
	.long	.Linfo_string245        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	350                     @ DW_AT_decl_line
	.long	1853                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x129e:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0x12a4:0x11 DW_TAG_subprogram
	.long	.Linfo_string246        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	131                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x12af:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0x12b5:0x11 DW_TAG_subprogram
	.long	.Linfo_string247        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	131                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x12c0:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0x12c6:0x11 DW_TAG_subprogram
	.long	.Linfo_string248        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	131                     @ DW_AT_decl_line
	.long	3727                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x12d1:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x12d7:0x16 DW_TAG_subprogram
	.long	.Linfo_string249        @ DW_AT_linkage_name
	.long	.Linfo_string250        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.short	390                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x12e7:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x12ed:0x16 DW_TAG_subprogram
	.long	.Linfo_string251        @ DW_AT_linkage_name
	.long	.Linfo_string252        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.short	391                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x12fd:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x1303:0x16 DW_TAG_subprogram
	.long	.Linfo_string249        @ DW_AT_linkage_name
	.long	.Linfo_string253        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.short	394                     @ DW_AT_decl_line
	.long	3727                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1313:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0x1319:0x11 DW_TAG_subprogram
	.long	.Linfo_string254        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	134                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1324:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0x132a:0x11 DW_TAG_subprogram
	.long	.Linfo_string255        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	134                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1335:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0x133b:0x11 DW_TAG_subprogram
	.long	.Linfo_string256        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	134                     @ DW_AT_decl_line
	.long	3727                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1346:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x134c:0x12 DW_TAG_subprogram
	.long	.Linfo_string257        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	342                     @ DW_AT_decl_line
	.long	4958                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1358:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x135e:0x7 DW_TAG_base_type
	.long	.Linfo_string258        @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	44                      @ Abbrev [44] 0x1365:0x12 DW_TAG_subprogram
	.long	.Linfo_string259        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	342                     @ DW_AT_decl_line
	.long	4958                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1371:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1377:0x12 DW_TAG_subprogram
	.long	.Linfo_string260        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	342                     @ DW_AT_decl_line
	.long	4958                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1383:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1389:0x12 DW_TAG_subprogram
	.long	.Linfo_string261        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	348                     @ DW_AT_decl_line
	.long	4958                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1395:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x139b:0x12 DW_TAG_subprogram
	.long	.Linfo_string262        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	348                     @ DW_AT_decl_line
	.long	4958                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x13a7:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x13ad:0x12 DW_TAG_subprogram
	.long	.Linfo_string263        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	348                     @ DW_AT_decl_line
	.long	4958                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x13b9:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0x13bf:0x11 DW_TAG_subprogram
	.long	.Linfo_string264        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	228                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x13ca:0x5 DW_TAG_formal_parameter
	.long	5072                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x13d0:0x5 DW_TAG_pointer_type
	.long	5077                    @ DW_AT_type
	.byte	34                      @ Abbrev [34] 0x13d5:0x5 DW_TAG_const_type
	.long	5082                    @ DW_AT_type
	.byte	29                      @ Abbrev [29] 0x13da:0x7 DW_TAG_base_type
	.long	.Linfo_string265        @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	43                      @ Abbrev [43] 0x13e1:0x11 DW_TAG_subprogram
	.long	.Linfo_string266        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	228                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x13ec:0x5 DW_TAG_formal_parameter
	.long	5072                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0x13f2:0x11 DW_TAG_subprogram
	.long	.Linfo_string267        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	228                     @ DW_AT_decl_line
	.long	3727                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x13fd:0x5 DW_TAG_formal_parameter
	.long	5072                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1403:0x12 DW_TAG_subprogram
	.long	.Linfo_string268        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	322                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x140f:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1415:0x12 DW_TAG_subprogram
	.long	.Linfo_string269        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	322                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1421:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1427:0x12 DW_TAG_subprogram
	.long	.Linfo_string270        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	322                     @ DW_AT_decl_line
	.long	3727                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1433:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1439:0x17 DW_TAG_subprogram
	.long	.Linfo_string271        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	292                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1445:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x144a:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1450:0x17 DW_TAG_subprogram
	.long	.Linfo_string272        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	292                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x145c:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x1461:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1467:0x17 DW_TAG_subprogram
	.long	.Linfo_string273        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	292                     @ DW_AT_decl_line
	.long	3727                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1473:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x1478:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x147e:0x17 DW_TAG_subprogram
	.long	.Linfo_string274        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	294                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x148a:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x148f:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1495:0x17 DW_TAG_subprogram
	.long	.Linfo_string275        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	294                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x14a1:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x14a6:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x14ac:0x17 DW_TAG_subprogram
	.long	.Linfo_string276        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	294                     @ DW_AT_decl_line
	.long	3727                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x14b8:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x14bd:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x14c3:0x1b DW_TAG_subprogram
	.long	.Linfo_string277        @ DW_AT_linkage_name
	.long	.Linfo_string278        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.short	418                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x14d3:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x14d8:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x14de:0x1b DW_TAG_subprogram
	.long	.Linfo_string279        @ DW_AT_linkage_name
	.long	.Linfo_string280        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.short	421                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x14ee:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x14f3:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x14f9:0x1b DW_TAG_subprogram
	.long	.Linfo_string277        @ DW_AT_linkage_name
	.long	.Linfo_string281        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.short	424                     @ DW_AT_decl_line
	.long	3727                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1509:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x150e:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1514:0x1c DW_TAG_subprogram
	.long	.Linfo_string282        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	335                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1520:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x1525:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x152a:0x5 DW_TAG_formal_parameter
	.long	3422                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1530:0x1c DW_TAG_subprogram
	.long	.Linfo_string283        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	335                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x153c:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x1541:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x1546:0x5 DW_TAG_formal_parameter
	.long	3422                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x154c:0x1c DW_TAG_subprogram
	.long	.Linfo_string284        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	335                     @ DW_AT_decl_line
	.long	3727                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1558:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x155d:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x1562:0x5 DW_TAG_formal_parameter
	.long	3422                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1568:0x12 DW_TAG_subprogram
	.long	.Linfo_string285        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	289                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1574:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x157a:0x12 DW_TAG_subprogram
	.long	.Linfo_string286        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	289                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1586:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x158c:0x12 DW_TAG_subprogram
	.long	.Linfo_string287        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	289                     @ DW_AT_decl_line
	.long	3727                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1598:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x159e:0x12 DW_TAG_subprogram
	.long	.Linfo_string288        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	326                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x15aa:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x15b0:0x12 DW_TAG_subprogram
	.long	.Linfo_string289        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	326                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x15bc:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x15c2:0x12 DW_TAG_subprogram
	.long	.Linfo_string290        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	326                     @ DW_AT_decl_line
	.long	3727                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x15ce:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x15d4:0x17 DW_TAG_subprogram
	.long	.Linfo_string291        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	318                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x15e0:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x15e5:0x5 DW_TAG_formal_parameter
	.long	4958                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x15eb:0x17 DW_TAG_subprogram
	.long	.Linfo_string292        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	318                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x15f7:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x15fc:0x5 DW_TAG_formal_parameter
	.long	4958                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1602:0x17 DW_TAG_subprogram
	.long	.Linfo_string293        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	318                     @ DW_AT_decl_line
	.long	3727                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x160e:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x1613:0x5 DW_TAG_formal_parameter
	.long	4958                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1619:0x17 DW_TAG_subprogram
	.long	.Linfo_string294        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	309                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1625:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x162a:0x5 DW_TAG_formal_parameter
	.long	1645                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1630:0x17 DW_TAG_subprogram
	.long	.Linfo_string295        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	309                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x163c:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x1641:0x5 DW_TAG_formal_parameter
	.long	1645                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1647:0x17 DW_TAG_subprogram
	.long	.Linfo_string296        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	309                     @ DW_AT_decl_line
	.long	3727                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1653:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x1658:0x5 DW_TAG_formal_parameter
	.long	1645                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x165e:0x12 DW_TAG_subprogram
	.long	.Linfo_string297        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.short	480                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x166a:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1670:0x12 DW_TAG_subprogram
	.long	.Linfo_string298        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.short	487                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x167c:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1682:0x12 DW_TAG_subprogram
	.long	.Linfo_string299        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.short	495                     @ DW_AT_decl_line
	.long	3727                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x168e:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x1694:0x12 DW_TAG_subprogram
	.long	.Linfo_string300        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	330                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x16a0:0x5 DW_TAG_formal_parameter
	.long	3193                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x16a6:0x12 DW_TAG_subprogram
	.long	.Linfo_string301        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	330                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x16b2:0x5 DW_TAG_formal_parameter
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	44                      @ Abbrev [44] 0x16b8:0x12 DW_TAG_subprogram
	.long	.Linfo_string302        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.short	330                     @ DW_AT_decl_line
	.long	3727                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x16c4:0x5 DW_TAG_formal_parameter
	.long	3727                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	30                      @ Abbrev [30] 0x16ca:0xb DW_TAG_typedef
	.long	5845                    @ DW_AT_type
	.long	.Linfo_string304        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	194                     @ DW_AT_decl_line
	.byte	29                      @ Abbrev [29] 0x16d5:0x7 DW_TAG_base_type
	.long	.Linfo_string303        @ DW_AT_name
	.byte	6                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	30                      @ Abbrev [30] 0x16dc:0xb DW_TAG_typedef
	.long	5863                    @ DW_AT_type
	.long	.Linfo_string306        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	195                     @ DW_AT_decl_line
	.byte	29                      @ Abbrev [29] 0x16e7:0x7 DW_TAG_base_type
	.long	.Linfo_string305        @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	2                       @ DW_AT_byte_size
	.byte	30                      @ Abbrev [30] 0x16ee:0xb DW_TAG_typedef
	.long	5845                    @ DW_AT_type
	.long	.Linfo_string307        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	90                      @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x16f9:0xb DW_TAG_typedef
	.long	1645                    @ DW_AT_type
	.long	.Linfo_string308        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	96                      @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x1704:0xb DW_TAG_typedef
	.long	1645                    @ DW_AT_type
	.long	.Linfo_string309        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	97                      @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x170f:0xb DW_TAG_typedef
	.long	1853                    @ DW_AT_type
	.long	.Linfo_string310        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	99                      @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x171a:0xb DW_TAG_typedef
	.long	5845                    @ DW_AT_type
	.long	.Linfo_string311        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	65                      @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x1725:0xb DW_TAG_typedef
	.long	5863                    @ DW_AT_type
	.long	.Linfo_string312        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	66                      @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x1730:0xb DW_TAG_typedef
	.long	1645                    @ DW_AT_type
	.long	.Linfo_string313        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	67                      @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x173b:0xb DW_TAG_typedef
	.long	1853                    @ DW_AT_type
	.long	.Linfo_string314        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	72                      @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x1746:0xb DW_TAG_typedef
	.long	1853                    @ DW_AT_type
	.long	.Linfo_string315        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	138                     @ DW_AT_decl_line
	.byte	45                      @ Abbrev [45] 0x1751:0xc DW_TAG_typedef
	.long	5981                    @ DW_AT_type
	.long	.Linfo_string317        @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.short	270                     @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x175d:0xb DW_TAG_typedef
	.long	1645                    @ DW_AT_type
	.long	.Linfo_string316        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	186                     @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x1768:0xb DW_TAG_typedef
	.long	6003                    @ DW_AT_type
	.long	.Linfo_string319        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	49                      @ DW_AT_decl_line
	.byte	29                      @ Abbrev [29] 0x1773:0x7 DW_TAG_base_type
	.long	.Linfo_string318        @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	2                       @ DW_AT_byte_size
	.byte	30                      @ Abbrev [30] 0x177a:0xb DW_TAG_typedef
	.long	6021                    @ DW_AT_type
	.long	.Linfo_string321        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	58                      @ DW_AT_decl_line
	.byte	29                      @ Abbrev [29] 0x1785:0x7 DW_TAG_base_type
	.long	.Linfo_string320        @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	30                      @ Abbrev [30] 0x178c:0xb DW_TAG_typedef
	.long	1725                    @ DW_AT_type
	.long	.Linfo_string322        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	103                     @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x1797:0xb DW_TAG_typedef
	.long	1691                    @ DW_AT_type
	.long	.Linfo_string323        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	109                     @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x17a2:0xb DW_TAG_typedef
	.long	1691                    @ DW_AT_type
	.long	.Linfo_string324        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	110                     @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x17ad:0xb DW_TAG_typedef
	.long	6021                    @ DW_AT_type
	.long	.Linfo_string325        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	112                     @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x17b8:0xb DW_TAG_typedef
	.long	1725                    @ DW_AT_type
	.long	.Linfo_string326        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	76                      @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x17c3:0xb DW_TAG_typedef
	.long	6003                    @ DW_AT_type
	.long	.Linfo_string327        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	77                      @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x17ce:0xb DW_TAG_typedef
	.long	1691                    @ DW_AT_type
	.long	.Linfo_string328        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	78                      @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x17d9:0xb DW_TAG_typedef
	.long	6021                    @ DW_AT_type
	.long	.Linfo_string329        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	83                      @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x17e4:0xb DW_TAG_typedef
	.long	6021                    @ DW_AT_type
	.long	.Linfo_string330        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	140                     @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x17ef:0xb DW_TAG_typedef
	.long	1691                    @ DW_AT_type
	.long	.Linfo_string331        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	128                     @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x17fa:0xb DW_TAG_typedef
	.long	6149                    @ DW_AT_type
	.long	.Linfo_string333        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	59                      @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x1805:0xb DW_TAG_typedef
	.long	4958                    @ DW_AT_type
	.long	.Linfo_string332        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	135                     @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x1810:0xb DW_TAG_typedef
	.long	6171                    @ DW_AT_type
	.long	.Linfo_string335        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	75                      @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x181b:0xb DW_TAG_typedef
	.long	4958                    @ DW_AT_type
	.long	.Linfo_string334        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	139                     @ DW_AT_decl_line
	.byte	46                      @ Abbrev [46] 0x1826:0x6 DW_TAG_structure_type
	.long	.Linfo_string336        @ DW_AT_name
	.byte	44                      @ DW_AT_byte_size
                                        @ DW_AT_declaration
	.byte	47                      @ Abbrev [47] 0x182c:0xb DW_TAG_subprogram
	.long	.Linfo_string337        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	189                     @ DW_AT_decl_line
	.long	6138                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	43                      @ Abbrev [43] 0x1837:0x16 DW_TAG_subprogram
	.long	.Linfo_string338        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	195                     @ DW_AT_decl_line
	.long	3193                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1842:0x5 DW_TAG_formal_parameter
	.long	6160                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x1847:0x5 DW_TAG_formal_parameter
	.long	6160                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0x184d:0x11 DW_TAG_subprogram
	.long	.Linfo_string339        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	199                     @ DW_AT_decl_line
	.long	6160                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1858:0x5 DW_TAG_formal_parameter
	.long	6238                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x185e:0x5 DW_TAG_pointer_type
	.long	6182                    @ DW_AT_type
	.byte	43                      @ Abbrev [43] 0x1863:0x11 DW_TAG_subprogram
	.long	.Linfo_string340        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	192                     @ DW_AT_decl_line
	.long	6160                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x186e:0x5 DW_TAG_formal_parameter
	.long	6260                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x1874:0x5 DW_TAG_pointer_type
	.long	6160                    @ DW_AT_type
	.byte	44                      @ Abbrev [44] 0x1879:0x12 DW_TAG_subprogram
	.long	.Linfo_string341        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	261                     @ DW_AT_decl_line
	.long	6283                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1885:0x5 DW_TAG_formal_parameter
	.long	6288                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x188b:0x5 DW_TAG_pointer_type
	.long	5082                    @ DW_AT_type
	.byte	26                      @ Abbrev [26] 0x1890:0x5 DW_TAG_pointer_type
	.long	6293                    @ DW_AT_type
	.byte	34                      @ Abbrev [34] 0x1895:0x5 DW_TAG_const_type
	.long	6182                    @ DW_AT_type
	.byte	44                      @ Abbrev [44] 0x189a:0x12 DW_TAG_subprogram
	.long	.Linfo_string342        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.short	264                     @ DW_AT_decl_line
	.long	6283                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x18a6:0x5 DW_TAG_formal_parameter
	.long	6316                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x18ac:0x5 DW_TAG_pointer_type
	.long	6321                    @ DW_AT_type
	.byte	34                      @ Abbrev [34] 0x18b1:0x5 DW_TAG_const_type
	.long	6160                    @ DW_AT_type
	.byte	43                      @ Abbrev [43] 0x18b6:0x11 DW_TAG_subprogram
	.long	.Linfo_string343        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	239                     @ DW_AT_decl_line
	.long	6238                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x18c1:0x5 DW_TAG_formal_parameter
	.long	6316                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0x18c7:0x11 DW_TAG_subprogram
	.long	.Linfo_string344        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	243                     @ DW_AT_decl_line
	.long	6238                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x18d2:0x5 DW_TAG_formal_parameter
	.long	6316                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	43                      @ Abbrev [43] 0x18d8:0x20 DW_TAG_subprogram
	.long	.Linfo_string345        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	205                     @ DW_AT_decl_line
	.long	1680                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x18e3:0x5 DW_TAG_formal_parameter
	.long	6392                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x18e8:0x5 DW_TAG_formal_parameter
	.long	1680                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x18ed:0x5 DW_TAG_formal_parameter
	.long	6397                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x18f2:0x5 DW_TAG_formal_parameter
	.long	6402                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	48                      @ Abbrev [48] 0x18f8:0x5 DW_TAG_restrict_type
	.long	6283                    @ DW_AT_type
	.byte	48                      @ Abbrev [48] 0x18fd:0x5 DW_TAG_restrict_type
	.long	5072                    @ DW_AT_type
	.byte	48                      @ Abbrev [48] 0x1902:0x5 DW_TAG_restrict_type
	.long	6288                    @ DW_AT_type
	.byte	49                      @ Abbrev [49] 0x1907:0x34 DW_TAG_subprogram
	.long	.Lfunc_begin0           @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	6432                    @ DW_AT_object_pointer
	.byte	14                      @ DW_AT_decl_file
	.byte	36                      @ DW_AT_decl_line
	.long	.Linfo_string370        @ DW_AT_linkage_name
	.long	689                     @ DW_AT_specification
	.byte	50                      @ Abbrev [50] 0x1920:0xb DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	80
	.long	.Linfo_string346        @ DW_AT_name
	.long	6492                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	51                      @ Abbrev [51] 0x192b:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc0            @ DW_AT_location
	.long	.Linfo_string373        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	38                      @ DW_AT_decl_line
	.long	1768                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	52                      @ Abbrev [52] 0x193b:0x21 DW_TAG_subprogram
	.byte	14                      @ DW_AT_decl_file
	.byte	88                      @ DW_AT_decl_line
	.long	1188                    @ DW_AT_specification
	.byte	1                       @ DW_AT_inline
	.long	6471                    @ DW_AT_object_pointer
	.byte	53                      @ Abbrev [53] 0x1947:0x9 DW_TAG_formal_parameter
	.long	.Linfo_string346        @ DW_AT_name
	.long	6492                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	54                      @ Abbrev [54] 0x1950:0xb DW_TAG_variable
	.long	.Linfo_string347        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	90                      @ DW_AT_decl_line
	.long	6497                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x195c:0x5 DW_TAG_pointer_type
	.long	38                      @ DW_AT_type
	.byte	35                      @ Abbrev [35] 0x1961:0xc DW_TAG_array_type
	.long	1714                    @ DW_AT_type
	.byte	36                      @ Abbrev [36] 0x1966:0x6 DW_TAG_subrange_type
	.long	1749                    @ DW_AT_type
	.byte	1                       @ DW_AT_count
	.byte	0                       @ End Of Children Mark
	.byte	52                      @ Abbrev [52] 0x196d:0x2c DW_TAG_subprogram
	.byte	14                      @ DW_AT_decl_file
	.byte	172                     @ DW_AT_decl_line
	.long	1210                    @ DW_AT_specification
	.byte	1                       @ DW_AT_inline
	.long	6521                    @ DW_AT_object_pointer
	.byte	53                      @ Abbrev [53] 0x1979:0x9 DW_TAG_formal_parameter
	.long	.Linfo_string346        @ DW_AT_name
	.long	6492                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	54                      @ Abbrev [54] 0x1982:0xb DW_TAG_variable
	.long	.Linfo_string348        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	174                     @ DW_AT_decl_line
	.long	1714                    @ DW_AT_type
	.byte	54                      @ Abbrev [54] 0x198d:0xb DW_TAG_variable
	.long	.Linfo_string349        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	175                     @ DW_AT_decl_line
	.long	1756                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	52                      @ Abbrev [52] 0x1999:0x2c DW_TAG_subprogram
	.byte	14                      @ DW_AT_decl_file
	.byte	71                      @ DW_AT_decl_line
	.long	973                     @ DW_AT_specification
	.byte	1                       @ DW_AT_inline
	.long	6565                    @ DW_AT_object_pointer
	.byte	53                      @ Abbrev [53] 0x19a5:0x9 DW_TAG_formal_parameter
	.long	.Linfo_string346        @ DW_AT_name
	.long	6492                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	54                      @ Abbrev [54] 0x19ae:0xb DW_TAG_variable
	.long	.Linfo_string68         @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	75                      @ DW_AT_decl_line
	.long	561                     @ DW_AT_type
	.byte	54                      @ Abbrev [54] 0x19b9:0xb DW_TAG_variable
	.long	.Linfo_string350        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	80                      @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	52                      @ Abbrev [52] 0x19c5:0x37 DW_TAG_subprogram
	.byte	14                      @ DW_AT_decl_file
	.byte	155                     @ DW_AT_decl_line
	.long	1137                    @ DW_AT_specification
	.byte	1                       @ DW_AT_inline
	.long	6609                    @ DW_AT_object_pointer
	.byte	53                      @ Abbrev [53] 0x19d1:0x9 DW_TAG_formal_parameter
	.long	.Linfo_string346        @ DW_AT_name
	.long	6492                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	55                      @ Abbrev [55] 0x19da:0xb DW_TAG_formal_parameter
	.long	.Linfo_string351        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	157                     @ DW_AT_decl_line
	.long	1805                    @ DW_AT_type
	.byte	55                      @ Abbrev [55] 0x19e5:0xb DW_TAG_formal_parameter
	.long	.Linfo_string352        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	158                     @ DW_AT_decl_line
	.long	1805                    @ DW_AT_type
	.byte	55                      @ Abbrev [55] 0x19f0:0xb DW_TAG_formal_parameter
	.long	.Linfo_string353        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	159                     @ DW_AT_decl_line
	.long	1805                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	52                      @ Abbrev [52] 0x19fc:0x37 DW_TAG_subprogram
	.byte	14                      @ DW_AT_decl_file
	.byte	113                     @ DW_AT_decl_line
	.long	1170                    @ DW_AT_specification
	.byte	1                       @ DW_AT_inline
	.long	6664                    @ DW_AT_object_pointer
	.byte	53                      @ Abbrev [53] 0x1a08:0x9 DW_TAG_formal_parameter
	.long	.Linfo_string346        @ DW_AT_name
	.long	6492                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	54                      @ Abbrev [54] 0x1a11:0xb DW_TAG_variable
	.long	.Linfo_string351        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	115                     @ DW_AT_decl_line
	.long	1714                    @ DW_AT_type
	.byte	54                      @ Abbrev [54] 0x1a1c:0xb DW_TAG_variable
	.long	.Linfo_string352        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	115                     @ DW_AT_decl_line
	.long	1714                    @ DW_AT_type
	.byte	54                      @ Abbrev [54] 0x1a27:0xb DW_TAG_variable
	.long	.Linfo_string353        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	115                     @ DW_AT_decl_line
	.long	1714                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	56                      @ Abbrev [56] 0x1a33:0xe1 DW_TAG_subprogram
	.long	.Lfunc_begin1           @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	6728                    @ DW_AT_object_pointer
	.byte	14                      @ DW_AT_decl_file
	.byte	46                      @ DW_AT_decl_line
	.long	943                     @ DW_AT_specification
	.byte	57                      @ Abbrev [57] 0x1a48:0xd DW_TAG_formal_parameter
	.long	.Ldebug_loc1            @ DW_AT_location
	.long	.Linfo_string346        @ DW_AT_name
	.long	6492                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	58                      @ Abbrev [58] 0x1a55:0xc DW_TAG_variable
	.byte	1                       @ DW_AT_const_value
	.long	.Linfo_string349        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	48                      @ DW_AT_decl_line
	.long	1756                    @ DW_AT_type
	.byte	59                      @ Abbrev [59] 0x1a61:0x1d DW_TAG_inlined_subroutine
	.long	6459                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges0         @ DW_AT_ranges
	.byte	14                      @ DW_AT_call_file
	.byte	50                      @ DW_AT_call_line
	.byte	60                      @ Abbrev [60] 0x1a6c:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc2            @ DW_AT_location
	.long	6471                    @ DW_AT_abstract_origin
	.byte	61                      @ Abbrev [61] 0x1a75:0x8 DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	23
	.long	6480                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	59                      @ Abbrev [59] 0x1a7e:0x24 DW_TAG_inlined_subroutine
	.long	6509                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges1         @ DW_AT_ranges
	.byte	14                      @ DW_AT_call_file
	.byte	54                      @ DW_AT_call_line
	.byte	60                      @ Abbrev [60] 0x1a89:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc4            @ DW_AT_location
	.long	6521                    @ DW_AT_abstract_origin
	.byte	62                      @ Abbrev [62] 0x1a92:0x9 DW_TAG_variable
	.long	.Ldebug_loc3            @ DW_AT_location
	.long	6530                    @ DW_AT_abstract_origin
	.byte	63                      @ Abbrev [63] 0x1a9b:0x6 DW_TAG_variable
	.byte	1                       @ DW_AT_const_value
	.long	6541                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	59                      @ Abbrev [59] 0x1aa2:0x4c DW_TAG_inlined_subroutine
	.long	6553                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges2         @ DW_AT_ranges
	.byte	14                      @ DW_AT_call_file
	.byte	58                      @ DW_AT_call_line
	.byte	60                      @ Abbrev [60] 0x1aad:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc6            @ DW_AT_location
	.long	6565                    @ DW_AT_abstract_origin
	.byte	62                      @ Abbrev [62] 0x1ab6:0x9 DW_TAG_variable
	.long	.Ldebug_loc5            @ DW_AT_location
	.long	6574                    @ DW_AT_abstract_origin
	.byte	62                      @ Abbrev [62] 0x1abf:0x9 DW_TAG_variable
	.long	.Ldebug_loc8            @ DW_AT_location
	.long	6585                    @ DW_AT_abstract_origin
	.byte	64                      @ Abbrev [64] 0x1ac8:0x25 DW_TAG_inlined_subroutine
	.long	6652                    @ DW_AT_abstract_origin
	.long	.Ltmp27                 @ DW_AT_low_pc
	.long	.Ltmp40-.Ltmp27         @ DW_AT_high_pc
	.byte	14                      @ DW_AT_call_file
	.byte	78                      @ DW_AT_call_line
	.byte	59                      @ Abbrev [59] 0x1ad7:0x15 DW_TAG_inlined_subroutine
	.long	6597                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges3         @ DW_AT_ranges
	.byte	14                      @ DW_AT_call_file
	.byte	117                     @ DW_AT_call_line
	.byte	60                      @ Abbrev [60] 0x1ae2:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc7            @ DW_AT_location
	.long	6609                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	64                      @ Abbrev [64] 0x1aee:0x25 DW_TAG_inlined_subroutine
	.long	6652                    @ DW_AT_abstract_origin
	.long	.Ltmp46                 @ DW_AT_low_pc
	.long	.Ltmp62-.Ltmp46         @ DW_AT_high_pc
	.byte	14                      @ DW_AT_call_file
	.byte	61                      @ DW_AT_call_line
	.byte	59                      @ Abbrev [59] 0x1afd:0x15 DW_TAG_inlined_subroutine
	.long	6597                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges4         @ DW_AT_ranges
	.byte	14                      @ DW_AT_call_file
	.byte	117                     @ DW_AT_call_line
	.byte	60                      @ Abbrev [60] 0x1b08:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc9            @ DW_AT_location
	.long	6609                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	65                      @ Abbrev [65] 0x1b14:0x25 DW_TAG_subprogram
	.long	.Lfunc_begin2           @ DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	6951                    @ DW_AT_object_pointer
	.long	6459                    @ DW_AT_abstract_origin
	.byte	60                      @ Abbrev [60] 0x1b27:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc10           @ DW_AT_location
	.long	6471                    @ DW_AT_abstract_origin
	.byte	61                      @ Abbrev [61] 0x1b30:0x8 DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	7
	.long	6480                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	65                      @ Abbrev [65] 0x1b39:0x2c DW_TAG_subprogram
	.long	.Lfunc_begin3           @ DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	6988                    @ DW_AT_object_pointer
	.long	6509                    @ DW_AT_abstract_origin
	.byte	60                      @ Abbrev [60] 0x1b4c:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc11           @ DW_AT_location
	.long	6521                    @ DW_AT_abstract_origin
	.byte	63                      @ Abbrev [63] 0x1b55:0x6 DW_TAG_variable
	.byte	1                       @ DW_AT_const_value
	.long	6541                    @ DW_AT_abstract_origin
	.byte	62                      @ Abbrev [62] 0x1b5b:0x9 DW_TAG_variable
	.long	.Ldebug_loc12           @ DW_AT_location
	.long	6530                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	65                      @ Abbrev [65] 0x1b65:0x59 DW_TAG_subprogram
	.long	.Lfunc_begin4           @ DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	7032                    @ DW_AT_object_pointer
	.long	6553                    @ DW_AT_abstract_origin
	.byte	60                      @ Abbrev [60] 0x1b78:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc13           @ DW_AT_location
	.long	6565                    @ DW_AT_abstract_origin
	.byte	62                      @ Abbrev [62] 0x1b81:0x9 DW_TAG_variable
	.long	.Ldebug_loc14           @ DW_AT_location
	.long	6574                    @ DW_AT_abstract_origin
	.byte	62                      @ Abbrev [62] 0x1b8a:0x9 DW_TAG_variable
	.long	.Ldebug_loc17           @ DW_AT_location
	.long	6585                    @ DW_AT_abstract_origin
	.byte	59                      @ Abbrev [59] 0x1b93:0x2a DW_TAG_inlined_subroutine
	.long	6652                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges5         @ DW_AT_ranges
	.byte	14                      @ DW_AT_call_file
	.byte	78                      @ DW_AT_call_line
	.byte	60                      @ Abbrev [60] 0x1b9e:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc16           @ DW_AT_location
	.long	6664                    @ DW_AT_abstract_origin
	.byte	59                      @ Abbrev [59] 0x1ba7:0x15 DW_TAG_inlined_subroutine
	.long	6597                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges6         @ DW_AT_ranges
	.byte	14                      @ DW_AT_call_file
	.byte	117                     @ DW_AT_call_line
	.byte	60                      @ Abbrev [60] 0x1bb2:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc15           @ DW_AT_location
	.long	6609                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	65                      @ Abbrev [65] 0x1bbe:0x41 DW_TAG_subprogram
	.long	.Lfunc_begin5           @ DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	7121                    @ DW_AT_object_pointer
	.long	6652                    @ DW_AT_abstract_origin
	.byte	60                      @ Abbrev [60] 0x1bd1:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc18           @ DW_AT_location
	.long	6664                    @ DW_AT_abstract_origin
	.byte	66                      @ Abbrev [66] 0x1bda:0x5 DW_TAG_variable
	.long	6673                    @ DW_AT_abstract_origin
	.byte	66                      @ Abbrev [66] 0x1bdf:0x5 DW_TAG_variable
	.long	6684                    @ DW_AT_abstract_origin
	.byte	66                      @ Abbrev [66] 0x1be4:0x5 DW_TAG_variable
	.long	6695                    @ DW_AT_abstract_origin
	.byte	59                      @ Abbrev [59] 0x1be9:0x15 DW_TAG_inlined_subroutine
	.long	6597                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges7         @ DW_AT_ranges
	.byte	14                      @ DW_AT_call_file
	.byte	117                     @ DW_AT_call_line
	.byte	60                      @ Abbrev [60] 0x1bf4:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc19           @ DW_AT_location
	.long	6609                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	52                      @ Abbrev [52] 0x1bff:0x7f DW_TAG_subprogram
	.byte	14                      @ DW_AT_decl_file
	.byte	249                     @ DW_AT_decl_line
	.long	1259                    @ DW_AT_specification
	.byte	1                       @ DW_AT_inline
	.long	7179                    @ DW_AT_object_pointer
	.byte	53                      @ Abbrev [53] 0x1c0b:0x9 DW_TAG_formal_parameter
	.long	.Linfo_string346        @ DW_AT_name
	.long	6492                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	55                      @ Abbrev [55] 0x1c14:0xb DW_TAG_formal_parameter
	.long	.Linfo_string354        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	251                     @ DW_AT_decl_line
	.long	1815                    @ DW_AT_type
	.byte	55                      @ Abbrev [55] 0x1c1f:0xb DW_TAG_formal_parameter
	.long	.Linfo_string355        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	252                     @ DW_AT_decl_line
	.long	1826                    @ DW_AT_type
	.byte	55                      @ Abbrev [55] 0x1c2a:0xb DW_TAG_formal_parameter
	.long	.Linfo_string356        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	253                     @ DW_AT_decl_line
	.long	757                     @ DW_AT_type
	.byte	67                      @ Abbrev [67] 0x1c35:0xc DW_TAG_variable
	.long	.Linfo_string357        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	257                     @ DW_AT_decl_line
	.long	1815                    @ DW_AT_type
	.byte	67                      @ Abbrev [67] 0x1c41:0xc DW_TAG_variable
	.long	.Linfo_string358        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	257                     @ DW_AT_decl_line
	.long	1815                    @ DW_AT_type
	.byte	67                      @ Abbrev [67] 0x1c4d:0xc DW_TAG_variable
	.long	.Linfo_string359        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	257                     @ DW_AT_decl_line
	.long	1815                    @ DW_AT_type
	.byte	67                      @ Abbrev [67] 0x1c59:0xc DW_TAG_variable
	.long	.Linfo_string360        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	258                     @ DW_AT_decl_line
	.long	5992                    @ DW_AT_type
	.byte	67                      @ Abbrev [67] 0x1c65:0xc DW_TAG_variable
	.long	.Linfo_string361        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	259                     @ DW_AT_decl_line
	.long	5852                    @ DW_AT_type
	.byte	67                      @ Abbrev [67] 0x1c71:0xc DW_TAG_variable
	.long	.Linfo_string362        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	260                     @ DW_AT_decl_line
	.long	5852                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	68                      @ Abbrev [68] 0x1c7e:0x83 DW_TAG_subprogram
	.byte	14                      @ DW_AT_decl_file
	.short	270                     @ DW_AT_decl_line
	.long	1296                    @ DW_AT_specification
	.byte	1                       @ DW_AT_inline
	.long	7307                    @ DW_AT_object_pointer
	.byte	53                      @ Abbrev [53] 0x1c8b:0x9 DW_TAG_formal_parameter
	.long	.Linfo_string346        @ DW_AT_name
	.long	6492                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	69                      @ Abbrev [69] 0x1c94:0xc DW_TAG_formal_parameter
	.long	.Linfo_string354        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	272                     @ DW_AT_decl_line
	.long	1815                    @ DW_AT_type
	.byte	69                      @ Abbrev [69] 0x1ca0:0xc DW_TAG_formal_parameter
	.long	.Linfo_string355        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	273                     @ DW_AT_decl_line
	.long	1815                    @ DW_AT_type
	.byte	67                      @ Abbrev [67] 0x1cac:0xc DW_TAG_variable
	.long	.Linfo_string359        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	277                     @ DW_AT_decl_line
	.long	1815                    @ DW_AT_type
	.byte	67                      @ Abbrev [67] 0x1cb8:0xc DW_TAG_variable
	.long	.Linfo_string363        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	278                     @ DW_AT_decl_line
	.long	1714                    @ DW_AT_type
	.byte	67                      @ Abbrev [67] 0x1cc4:0xc DW_TAG_variable
	.long	.Linfo_string364        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	279                     @ DW_AT_decl_line
	.long	5852                    @ DW_AT_type
	.byte	67                      @ Abbrev [67] 0x1cd0:0xc DW_TAG_variable
	.long	.Linfo_string365        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	280                     @ DW_AT_decl_line
	.long	1714                    @ DW_AT_type
	.byte	67                      @ Abbrev [67] 0x1cdc:0xc DW_TAG_variable
	.long	.Linfo_string366        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	281                     @ DW_AT_decl_line
	.long	5852                    @ DW_AT_type
	.byte	67                      @ Abbrev [67] 0x1ce8:0xc DW_TAG_variable
	.long	.Linfo_string367        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	282                     @ DW_AT_decl_line
	.long	5852                    @ DW_AT_type
	.byte	67                      @ Abbrev [67] 0x1cf4:0xc DW_TAG_variable
	.long	.Linfo_string368        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	283                     @ DW_AT_decl_line
	.long	5834                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	70                      @ Abbrev [70] 0x1d01:0x12a DW_TAG_subprogram
	.long	.Lfunc_begin6           @ DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	7447                    @ DW_AT_object_pointer
	.byte	14                      @ DW_AT_decl_file
	.short	405                     @ DW_AT_decl_line
	.long	878                     @ DW_AT_specification
	.byte	57                      @ Abbrev [57] 0x1d17:0xd DW_TAG_formal_parameter
	.long	.Ldebug_loc20           @ DW_AT_location
	.long	.Linfo_string346        @ DW_AT_name
	.long	6492                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	71                      @ Abbrev [71] 0x1d24:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc21           @ DW_AT_location
	.long	.Linfo_string375        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	407                     @ DW_AT_decl_line
	.long	1785                    @ DW_AT_type
	.byte	71                      @ Abbrev [71] 0x1d34:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc22           @ DW_AT_location
	.long	.Linfo_string93         @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	408                     @ DW_AT_decl_line
	.long	1785                    @ DW_AT_type
	.byte	71                      @ Abbrev [71] 0x1d44:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc23           @ DW_AT_location
	.long	.Linfo_string376        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	409                     @ DW_AT_decl_line
	.long	1785                    @ DW_AT_type
	.byte	71                      @ Abbrev [71] 0x1d54:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc27           @ DW_AT_location
	.long	.Linfo_string379        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	410                     @ DW_AT_decl_line
	.long	757                     @ DW_AT_type
	.byte	69                      @ Abbrev [69] 0x1d64:0xc DW_TAG_formal_parameter
	.long	.Linfo_string377        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	411                     @ DW_AT_decl_line
	.long	805                     @ DW_AT_type
	.byte	72                      @ Abbrev [72] 0x1d70:0xf DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.long	.Linfo_string374        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	414                     @ DW_AT_decl_line
	.long	9108                    @ DW_AT_type
	.byte	73                      @ Abbrev [73] 0x1d7f:0x10 DW_TAG_variable
	.long	.Ldebug_loc25           @ DW_AT_location
	.long	.Linfo_string378        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	421                     @ DW_AT_decl_line
	.long	1831                    @ DW_AT_type
	.byte	73                      @ Abbrev [73] 0x1d8f:0x10 DW_TAG_variable
	.long	.Ldebug_loc29           @ DW_AT_location
	.long	.Linfo_string355        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	415                     @ DW_AT_decl_line
	.long	1815                    @ DW_AT_type
	.byte	73                      @ Abbrev [73] 0x1d9f:0x10 DW_TAG_variable
	.long	.Ldebug_loc32           @ DW_AT_location
	.long	.Linfo_string380        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	420                     @ DW_AT_decl_line
	.long	1831                    @ DW_AT_type
	.byte	73                      @ Abbrev [73] 0x1daf:0x10 DW_TAG_variable
	.long	.Ldebug_loc34           @ DW_AT_location
	.long	.Linfo_string381        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	422                     @ DW_AT_decl_line
	.long	1831                    @ DW_AT_type
	.byte	74                      @ Abbrev [74] 0x1dbf:0x3a DW_TAG_inlined_subroutine
	.long	7167                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges8         @ DW_AT_ranges
	.byte	14                      @ DW_AT_call_file
	.short	423                     @ DW_AT_call_line
	.byte	60                      @ Abbrev [60] 0x1dcb:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc24           @ DW_AT_location
	.long	7179                    @ DW_AT_abstract_origin
	.byte	60                      @ Abbrev [60] 0x1dd4:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc26           @ DW_AT_location
	.long	7188                    @ DW_AT_abstract_origin
	.byte	60                      @ Abbrev [60] 0x1ddd:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc37           @ DW_AT_location
	.long	7210                    @ DW_AT_abstract_origin
	.byte	62                      @ Abbrev [62] 0x1de6:0x9 DW_TAG_variable
	.long	.Ldebug_loc28           @ DW_AT_location
	.long	7221                    @ DW_AT_abstract_origin
	.byte	62                      @ Abbrev [62] 0x1def:0x9 DW_TAG_variable
	.long	.Ldebug_loc31           @ DW_AT_location
	.long	7233                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	74                      @ Abbrev [74] 0x1df9:0x31 DW_TAG_inlined_subroutine
	.long	7294                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges9         @ DW_AT_ranges
	.byte	14                      @ DW_AT_call_file
	.short	425                     @ DW_AT_call_line
	.byte	60                      @ Abbrev [60] 0x1e05:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc36           @ DW_AT_location
	.long	7307                    @ DW_AT_abstract_origin
	.byte	60                      @ Abbrev [60] 0x1e0e:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc35           @ DW_AT_location
	.long	7316                    @ DW_AT_abstract_origin
	.byte	60                      @ Abbrev [60] 0x1e17:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc30           @ DW_AT_location
	.long	7328                    @ DW_AT_abstract_origin
	.byte	62                      @ Abbrev [62] 0x1e20:0x9 DW_TAG_variable
	.long	.Ldebug_loc33           @ DW_AT_location
	.long	7340                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	65                      @ Abbrev [65] 0x1e2b:0x36 DW_TAG_subprogram
	.long	.Lfunc_begin7           @ DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	7742                    @ DW_AT_object_pointer
	.long	6597                    @ DW_AT_abstract_origin
	.byte	60                      @ Abbrev [60] 0x1e3e:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc38           @ DW_AT_location
	.long	6609                    @ DW_AT_abstract_origin
	.byte	60                      @ Abbrev [60] 0x1e47:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc39           @ DW_AT_location
	.long	6618                    @ DW_AT_abstract_origin
	.byte	60                      @ Abbrev [60] 0x1e50:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc40           @ DW_AT_location
	.long	6629                    @ DW_AT_abstract_origin
	.byte	75                      @ Abbrev [75] 0x1e59:0x7 DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	83
	.long	6640                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	56                      @ Abbrev [56] 0x1e61:0x5c DW_TAG_subprogram
	.long	.Lfunc_begin8           @ DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	7798                    @ DW_AT_object_pointer
	.byte	14                      @ DW_AT_decl_file
	.byte	126                     @ DW_AT_decl_line
	.long	991                     @ DW_AT_specification
	.byte	57                      @ Abbrev [57] 0x1e76:0xd DW_TAG_formal_parameter
	.long	.Ldebug_loc41           @ DW_AT_location
	.long	.Linfo_string346        @ DW_AT_name
	.long	6492                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	51                      @ Abbrev [51] 0x1e83:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc42           @ DW_AT_location
	.long	.Linfo_string373        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	128                     @ DW_AT_decl_line
	.long	1768                    @ DW_AT_type
	.byte	59                      @ Abbrev [59] 0x1e92:0x2a DW_TAG_inlined_subroutine
	.long	6652                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges10        @ DW_AT_ranges
	.byte	14                      @ DW_AT_call_file
	.byte	132                     @ DW_AT_call_line
	.byte	60                      @ Abbrev [60] 0x1e9d:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc44           @ DW_AT_location
	.long	6664                    @ DW_AT_abstract_origin
	.byte	59                      @ Abbrev [59] 0x1ea6:0x15 DW_TAG_inlined_subroutine
	.long	6597                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges11        @ DW_AT_ranges
	.byte	14                      @ DW_AT_call_file
	.byte	117                     @ DW_AT_call_line
	.byte	60                      @ Abbrev [60] 0x1eb1:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc43           @ DW_AT_location
	.long	6609                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	56                      @ Abbrev [56] 0x1ebd:0x23 DW_TAG_subprogram
	.long	.Lfunc_begin9           @ DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin9 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	7890                    @ DW_AT_object_pointer
	.byte	14                      @ DW_AT_decl_file
	.byte	137                     @ DW_AT_decl_line
	.long	1022                    @ DW_AT_specification
	.byte	57                      @ Abbrev [57] 0x1ed2:0xd DW_TAG_formal_parameter
	.long	.Ldebug_loc45           @ DW_AT_location
	.long	.Linfo_string346        @ DW_AT_name
	.long	9120                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	56                      @ Abbrev [56] 0x1ee0:0x2e DW_TAG_subprogram
	.long	.Lfunc_begin10          @ DW_AT_low_pc
	.long	.Lfunc_end10-.Lfunc_begin10 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	7925                    @ DW_AT_object_pointer
	.byte	14                      @ DW_AT_decl_file
	.byte	144                     @ DW_AT_decl_line
	.long	708                     @ DW_AT_specification
	.byte	57                      @ Abbrev [57] 0x1ef5:0xd DW_TAG_formal_parameter
	.long	.Ldebug_loc46           @ DW_AT_location
	.long	.Linfo_string346        @ DW_AT_name
	.long	6492                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	54                      @ Abbrev [54] 0x1f02:0xb DW_TAG_variable
	.long	.Linfo_string349        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	148                     @ DW_AT_decl_line
	.long	1756                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	56                      @ Abbrev [56] 0x1f0e:0x86 DW_TAG_subprogram
	.long	.Lfunc_begin11          @ DW_AT_low_pc
	.long	.Lfunc_end11-.Lfunc_begin11 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	7971                    @ DW_AT_object_pointer
	.byte	14                      @ DW_AT_decl_file
	.byte	212                     @ DW_AT_decl_line
	.long	1232                    @ DW_AT_specification
	.byte	57                      @ Abbrev [57] 0x1f23:0xd DW_TAG_formal_parameter
	.long	.Ldebug_loc47           @ DW_AT_location
	.long	.Linfo_string346        @ DW_AT_name
	.long	6492                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	51                      @ Abbrev [51] 0x1f30:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc48           @ DW_AT_location
	.long	.Linfo_string374        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	214                     @ DW_AT_decl_line
	.long	1810                    @ DW_AT_type
	.byte	76                      @ Abbrev [76] 0x1f3f:0xe DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	4
	.long	.Linfo_string382        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	218                     @ DW_AT_decl_line
	.long	9125                    @ DW_AT_type
	.byte	54                      @ Abbrev [54] 0x1f4d:0xb DW_TAG_variable
	.long	.Linfo_string349        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	217                     @ DW_AT_decl_line
	.long	1756                    @ DW_AT_type
	.byte	64                      @ Abbrev [64] 0x1f58:0x25 DW_TAG_inlined_subroutine
	.long	6652                    @ DW_AT_abstract_origin
	.long	.Ltmp272                @ DW_AT_low_pc
	.long	.Ltmp285-.Ltmp272       @ DW_AT_high_pc
	.byte	14                      @ DW_AT_call_file
	.byte	223                     @ DW_AT_call_line
	.byte	59                      @ Abbrev [59] 0x1f67:0x15 DW_TAG_inlined_subroutine
	.long	6597                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges12        @ DW_AT_ranges
	.byte	14                      @ DW_AT_call_file
	.byte	117                     @ DW_AT_call_line
	.byte	60                      @ Abbrev [60] 0x1f72:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc49           @ DW_AT_location
	.long	6609                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	77                      @ Abbrev [77] 0x1f7d:0x16 DW_TAG_lexical_block
	.long	.Ltmp286                @ DW_AT_low_pc
	.long	.Ltmp288-.Ltmp286       @ DW_AT_high_pc
	.byte	78                      @ Abbrev [78] 0x1f86:0xc DW_TAG_variable
	.byte	1                       @ DW_AT_const_value
	.long	.Linfo_string383        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.byte	229                     @ DW_AT_decl_line
	.long	1645                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	65                      @ Abbrev [65] 0x1f94:0x5a DW_TAG_subprogram
	.long	.Lfunc_begin12          @ DW_AT_low_pc
	.long	.Lfunc_end12-.Lfunc_begin12 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	8103                    @ DW_AT_object_pointer
	.long	7167                    @ DW_AT_abstract_origin
	.byte	60                      @ Abbrev [60] 0x1fa7:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc50           @ DW_AT_location
	.long	7179                    @ DW_AT_abstract_origin
	.byte	60                      @ Abbrev [60] 0x1fb0:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc51           @ DW_AT_location
	.long	7188                    @ DW_AT_abstract_origin
	.byte	75                      @ Abbrev [75] 0x1fb9:0x7 DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	82
	.long	7199                    @ DW_AT_abstract_origin
	.byte	75                      @ Abbrev [75] 0x1fc0:0x7 DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	83
	.long	7210                    @ DW_AT_abstract_origin
	.byte	62                      @ Abbrev [62] 0x1fc7:0x9 DW_TAG_variable
	.long	.Ldebug_loc52           @ DW_AT_location
	.long	7221                    @ DW_AT_abstract_origin
	.byte	62                      @ Abbrev [62] 0x1fd0:0x9 DW_TAG_variable
	.long	.Ldebug_loc53           @ DW_AT_location
	.long	7233                    @ DW_AT_abstract_origin
	.byte	66                      @ Abbrev [66] 0x1fd9:0x5 DW_TAG_variable
	.long	7245                    @ DW_AT_abstract_origin
	.byte	66                      @ Abbrev [66] 0x1fde:0x5 DW_TAG_variable
	.long	7257                    @ DW_AT_abstract_origin
	.byte	66                      @ Abbrev [66] 0x1fe3:0x5 DW_TAG_variable
	.long	7269                    @ DW_AT_abstract_origin
	.byte	66                      @ Abbrev [66] 0x1fe8:0x5 DW_TAG_variable
	.long	7281                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	65                      @ Abbrev [65] 0x1fee:0x56 DW_TAG_subprogram
	.long	.Lfunc_begin13          @ DW_AT_low_pc
	.long	.Lfunc_end13-.Lfunc_begin13 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	8193                    @ DW_AT_object_pointer
	.long	7294                    @ DW_AT_abstract_origin
	.byte	60                      @ Abbrev [60] 0x2001:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc54           @ DW_AT_location
	.long	7307                    @ DW_AT_abstract_origin
	.byte	60                      @ Abbrev [60] 0x200a:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc55           @ DW_AT_location
	.long	7316                    @ DW_AT_abstract_origin
	.byte	60                      @ Abbrev [60] 0x2013:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc56           @ DW_AT_location
	.long	7328                    @ DW_AT_abstract_origin
	.byte	62                      @ Abbrev [62] 0x201c:0x9 DW_TAG_variable
	.long	.Ldebug_loc57           @ DW_AT_location
	.long	7340                    @ DW_AT_abstract_origin
	.byte	66                      @ Abbrev [66] 0x2025:0x5 DW_TAG_variable
	.long	7352                    @ DW_AT_abstract_origin
	.byte	66                      @ Abbrev [66] 0x202a:0x5 DW_TAG_variable
	.long	7364                    @ DW_AT_abstract_origin
	.byte	66                      @ Abbrev [66] 0x202f:0x5 DW_TAG_variable
	.long	7376                    @ DW_AT_abstract_origin
	.byte	66                      @ Abbrev [66] 0x2034:0x5 DW_TAG_variable
	.long	7388                    @ DW_AT_abstract_origin
	.byte	66                      @ Abbrev [66] 0x2039:0x5 DW_TAG_variable
	.long	7400                    @ DW_AT_abstract_origin
	.byte	66                      @ Abbrev [66] 0x203e:0x5 DW_TAG_variable
	.long	7412                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	70                      @ Abbrev [70] 0x2044:0xf4 DW_TAG_subprogram
	.long	.Lfunc_begin14          @ DW_AT_low_pc
	.long	.Lfunc_end14-.Lfunc_begin14 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	8282                    @ DW_AT_object_pointer
	.byte	14                      @ DW_AT_decl_file
	.short	298                     @ DW_AT_decl_line
	.long	1328                    @ DW_AT_specification
	.byte	57                      @ Abbrev [57] 0x205a:0xd DW_TAG_formal_parameter
	.long	.Ldebug_loc58           @ DW_AT_location
	.long	.Linfo_string346        @ DW_AT_name
	.long	6492                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	71                      @ Abbrev [71] 0x2067:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc59           @ DW_AT_location
	.long	.Linfo_string354        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	300                     @ DW_AT_decl_line
	.long	1815                    @ DW_AT_type
	.byte	71                      @ Abbrev [71] 0x2077:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc60           @ DW_AT_location
	.long	.Linfo_string355        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	301                     @ DW_AT_decl_line
	.long	1815                    @ DW_AT_type
	.byte	71                      @ Abbrev [71] 0x2087:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc61           @ DW_AT_location
	.long	.Linfo_string356        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	302                     @ DW_AT_decl_line
	.long	805                     @ DW_AT_type
	.byte	73                      @ Abbrev [73] 0x2097:0x10 DW_TAG_variable
	.long	.Ldebug_loc62           @ DW_AT_location
	.long	.Linfo_string358        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	307                     @ DW_AT_decl_line
	.long	1778                    @ DW_AT_type
	.byte	67                      @ Abbrev [67] 0x20a7:0xc DW_TAG_variable
	.long	.Linfo_string359        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	306                     @ DW_AT_decl_line
	.long	1842                    @ DW_AT_type
	.byte	67                      @ Abbrev [67] 0x20b3:0xc DW_TAG_variable
	.long	.Linfo_string357        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	306                     @ DW_AT_decl_line
	.long	1842                    @ DW_AT_type
	.byte	67                      @ Abbrev [67] 0x20bf:0xc DW_TAG_variable
	.long	.Linfo_string375        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	306                     @ DW_AT_decl_line
	.long	1842                    @ DW_AT_type
	.byte	67                      @ Abbrev [67] 0x20cb:0xc DW_TAG_variable
	.long	.Linfo_string384        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	309                     @ DW_AT_decl_line
	.long	5992                    @ DW_AT_type
	.byte	67                      @ Abbrev [67] 0x20d7:0xc DW_TAG_variable
	.long	.Linfo_string385        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	310                     @ DW_AT_decl_line
	.long	5852                    @ DW_AT_type
	.byte	67                      @ Abbrev [67] 0x20e3:0xc DW_TAG_variable
	.long	.Linfo_string386        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	311                     @ DW_AT_decl_line
	.long	5852                    @ DW_AT_type
	.byte	67                      @ Abbrev [67] 0x20ef:0xc DW_TAG_variable
	.long	.Linfo_string387        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	312                     @ DW_AT_decl_line
	.long	5852                    @ DW_AT_type
	.byte	67                      @ Abbrev [67] 0x20fb:0xc DW_TAG_variable
	.long	.Linfo_string388        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	313                     @ DW_AT_decl_line
	.long	5852                    @ DW_AT_type
	.byte	67                      @ Abbrev [67] 0x2107:0xc DW_TAG_variable
	.long	.Linfo_string389        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	314                     @ DW_AT_decl_line
	.long	5852                    @ DW_AT_type
	.byte	67                      @ Abbrev [67] 0x2113:0xc DW_TAG_variable
	.long	.Linfo_string390        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	315                     @ DW_AT_decl_line
	.long	5852                    @ DW_AT_type
	.byte	67                      @ Abbrev [67] 0x211f:0xc DW_TAG_variable
	.long	.Linfo_string391        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	316                     @ DW_AT_decl_line
	.long	5852                    @ DW_AT_type
	.byte	67                      @ Abbrev [67] 0x212b:0xc DW_TAG_variable
	.long	.Linfo_string392        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	317                     @ DW_AT_decl_line
	.long	5852                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	70                      @ Abbrev [70] 0x2138:0x99 DW_TAG_subprogram
	.long	.Lfunc_begin15          @ DW_AT_low_pc
	.long	.Lfunc_end15-.Lfunc_begin15 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	8526                    @ DW_AT_object_pointer
	.byte	14                      @ DW_AT_decl_file
	.short	362                     @ DW_AT_decl_line
	.long	730                     @ DW_AT_specification
	.byte	57                      @ Abbrev [57] 0x214e:0xd DW_TAG_formal_parameter
	.long	.Ldebug_loc63           @ DW_AT_location
	.long	.Linfo_string346        @ DW_AT_name
	.long	6492                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	71                      @ Abbrev [71] 0x215b:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc64           @ DW_AT_location
	.long	.Linfo_string356        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	364                     @ DW_AT_decl_line
	.long	757                     @ DW_AT_type
	.byte	72                      @ Abbrev [72] 0x216b:0xf DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.long	.Linfo_string374        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	367                     @ DW_AT_decl_line
	.long	9108                    @ DW_AT_type
	.byte	73                      @ Abbrev [73] 0x217a:0x10 DW_TAG_variable
	.long	.Ldebug_loc67           @ DW_AT_location
	.long	.Linfo_string378        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	370                     @ DW_AT_decl_line
	.long	1831                    @ DW_AT_type
	.byte	67                      @ Abbrev [67] 0x218a:0xc DW_TAG_variable
	.long	.Linfo_string355        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	368                     @ DW_AT_decl_line
	.long	1815                    @ DW_AT_type
	.byte	74                      @ Abbrev [74] 0x2196:0x3a DW_TAG_inlined_subroutine
	.long	7167                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges13        @ DW_AT_ranges
	.byte	14                      @ DW_AT_call_file
	.short	371                     @ DW_AT_call_line
	.byte	60                      @ Abbrev [60] 0x21a2:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc65           @ DW_AT_location
	.long	7179                    @ DW_AT_abstract_origin
	.byte	60                      @ Abbrev [60] 0x21ab:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc66           @ DW_AT_location
	.long	7188                    @ DW_AT_abstract_origin
	.byte	60                      @ Abbrev [60] 0x21b4:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc70           @ DW_AT_location
	.long	7210                    @ DW_AT_abstract_origin
	.byte	62                      @ Abbrev [62] 0x21bd:0x9 DW_TAG_variable
	.long	.Ldebug_loc68           @ DW_AT_location
	.long	7221                    @ DW_AT_abstract_origin
	.byte	62                      @ Abbrev [62] 0x21c6:0x9 DW_TAG_variable
	.long	.Ldebug_loc69           @ DW_AT_location
	.long	7233                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	70                      @ Abbrev [70] 0x21d1:0xa1 DW_TAG_subprogram
	.long	.Lfunc_begin16          @ DW_AT_low_pc
	.long	.Lfunc_end16-.Lfunc_begin16 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	8679                    @ DW_AT_object_pointer
	.byte	14                      @ DW_AT_decl_file
	.short	376                     @ DW_AT_decl_line
	.long	778                     @ DW_AT_specification
	.byte	57                      @ Abbrev [57] 0x21e7:0xd DW_TAG_formal_parameter
	.long	.Ldebug_loc71           @ DW_AT_location
	.long	.Linfo_string346        @ DW_AT_name
	.long	6492                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	71                      @ Abbrev [71] 0x21f4:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc72           @ DW_AT_location
	.long	.Linfo_string356        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	378                     @ DW_AT_decl_line
	.long	805                     @ DW_AT_type
	.byte	72                      @ Abbrev [72] 0x2204:0xf DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.long	.Linfo_string374        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	381                     @ DW_AT_decl_line
	.long	9108                    @ DW_AT_type
	.byte	73                      @ Abbrev [73] 0x2213:0x10 DW_TAG_variable
	.long	.Ldebug_loc74           @ DW_AT_location
	.long	.Linfo_string378        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	384                     @ DW_AT_decl_line
	.long	1831                    @ DW_AT_type
	.byte	73                      @ Abbrev [73] 0x2223:0x10 DW_TAG_variable
	.long	.Ldebug_loc77           @ DW_AT_location
	.long	.Linfo_string355        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	382                     @ DW_AT_decl_line
	.long	1815                    @ DW_AT_type
	.byte	73                      @ Abbrev [73] 0x2233:0x10 DW_TAG_variable
	.long	.Ldebug_loc78           @ DW_AT_location
	.long	.Linfo_string380        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	385                     @ DW_AT_decl_line
	.long	1831                    @ DW_AT_type
	.byte	74                      @ Abbrev [74] 0x2243:0x2e DW_TAG_inlined_subroutine
	.long	7167                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges14        @ DW_AT_ranges
	.byte	14                      @ DW_AT_call_file
	.short	386                     @ DW_AT_call_line
	.byte	60                      @ Abbrev [60] 0x224f:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc73           @ DW_AT_location
	.long	7179                    @ DW_AT_abstract_origin
	.byte	60                      @ Abbrev [60] 0x2258:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc75           @ DW_AT_location
	.long	7188                    @ DW_AT_abstract_origin
	.byte	79                      @ Abbrev [79] 0x2261:0x6 DW_TAG_formal_parameter
	.byte	0                       @ DW_AT_const_value
	.long	7210                    @ DW_AT_abstract_origin
	.byte	62                      @ Abbrev [62] 0x2267:0x9 DW_TAG_variable
	.long	.Ldebug_loc76           @ DW_AT_location
	.long	7221                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	70                      @ Abbrev [70] 0x2272:0xb5 DW_TAG_subprogram
	.long	.Lfunc_begin17          @ DW_AT_low_pc
	.long	.Lfunc_end17-.Lfunc_begin17 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	8840                    @ DW_AT_object_pointer
	.byte	14                      @ DW_AT_decl_file
	.short	392                     @ DW_AT_decl_line
	.long	856                     @ DW_AT_specification
	.byte	57                      @ Abbrev [57] 0x2288:0xd DW_TAG_formal_parameter
	.long	.Ldebug_loc79           @ DW_AT_location
	.long	.Linfo_string346        @ DW_AT_name
	.long	6492                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	72                      @ Abbrev [72] 0x2295:0xf DW_TAG_variable
	.byte	2                       @ DW_AT_location
	.byte	125
	.byte	0
	.long	.Linfo_string374        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	394                     @ DW_AT_decl_line
	.long	9108                    @ DW_AT_type
	.byte	73                      @ Abbrev [73] 0x22a4:0x10 DW_TAG_variable
	.long	.Ldebug_loc81           @ DW_AT_location
	.long	.Linfo_string378        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	397                     @ DW_AT_decl_line
	.long	1831                    @ DW_AT_type
	.byte	73                      @ Abbrev [73] 0x22b4:0x10 DW_TAG_variable
	.long	.Ldebug_loc86           @ DW_AT_location
	.long	.Linfo_string381        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	398                     @ DW_AT_decl_line
	.long	1831                    @ DW_AT_type
	.byte	67                      @ Abbrev [67] 0x22c4:0xc DW_TAG_variable
	.long	.Linfo_string355        @ DW_AT_name
	.byte	14                      @ DW_AT_decl_file
	.short	395                     @ DW_AT_decl_line
	.long	1815                    @ DW_AT_type
	.byte	74                      @ Abbrev [74] 0x22d0:0x28 DW_TAG_inlined_subroutine
	.long	7294                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges15        @ DW_AT_ranges
	.byte	14                      @ DW_AT_call_file
	.short	400                     @ DW_AT_call_line
	.byte	60                      @ Abbrev [60] 0x22dc:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc83           @ DW_AT_location
	.long	7307                    @ DW_AT_abstract_origin
	.byte	60                      @ Abbrev [60] 0x22e5:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc87           @ DW_AT_location
	.long	7316                    @ DW_AT_abstract_origin
	.byte	62                      @ Abbrev [62] 0x22ee:0x9 DW_TAG_variable
	.long	.Ldebug_loc85           @ DW_AT_location
	.long	7340                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	74                      @ Abbrev [74] 0x22f8:0x2e DW_TAG_inlined_subroutine
	.long	7167                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges16        @ DW_AT_ranges
	.byte	14                      @ DW_AT_call_file
	.short	399                     @ DW_AT_call_line
	.byte	60                      @ Abbrev [60] 0x2304:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc80           @ DW_AT_location
	.long	7179                    @ DW_AT_abstract_origin
	.byte	60                      @ Abbrev [60] 0x230d:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc82           @ DW_AT_location
	.long	7188                    @ DW_AT_abstract_origin
	.byte	79                      @ Abbrev [79] 0x2316:0x6 DW_TAG_formal_parameter
	.byte	0                       @ DW_AT_const_value
	.long	7210                    @ DW_AT_abstract_origin
	.byte	62                      @ Abbrev [62] 0x231c:0x9 DW_TAG_variable
	.long	.Ldebug_loc84           @ DW_AT_location
	.long	7245                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	70                      @ Abbrev [70] 0x2327:0x24 DW_TAG_subprogram
	.long	.Lfunc_begin18          @ DW_AT_low_pc
	.long	.Lfunc_end18-.Lfunc_begin18 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	9021                    @ DW_AT_object_pointer
	.byte	14                      @ DW_AT_decl_file
	.short	430                     @ DW_AT_decl_line
	.long	921                     @ DW_AT_specification
	.byte	57                      @ Abbrev [57] 0x233d:0xd DW_TAG_formal_parameter
	.long	.Ldebug_loc88           @ DW_AT_location
	.long	.Linfo_string346        @ DW_AT_name
	.long	6492                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	80                      @ Abbrev [80] 0x234b:0x24 DW_TAG_subprogram
	.long	.Lfunc_begin19          @ DW_AT_low_pc
	.long	.Lfunc_end19-.Lfunc_begin19 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	9059                    @ DW_AT_object_pointer
	.byte	90                      @ DW_AT_decl_line
	.long	.Linfo_string371        @ DW_AT_linkage_name
	.long	1603                    @ DW_AT_specification
	.byte	50                      @ Abbrev [50] 0x2363:0xb DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	80
	.long	.Linfo_string346        @ DW_AT_name
	.long	9137                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	49                      @ Abbrev [49] 0x236f:0x25 DW_TAG_subprogram
	.long	.Lfunc_begin20          @ DW_AT_low_pc
	.long	.Lfunc_end20-.Lfunc_begin20 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	9096                    @ DW_AT_object_pointer
	.byte	6                       @ DW_AT_decl_file
	.byte	46                      @ DW_AT_decl_line
	.long	.Linfo_string372        @ DW_AT_linkage_name
	.long	1365                    @ DW_AT_specification
	.byte	50                      @ Abbrev [50] 0x2388:0xb DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	80
	.long	.Linfo_string346        @ DW_AT_name
	.long	6492                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	35                      @ Abbrev [35] 0x2394:0xc DW_TAG_array_type
	.long	1815                    @ DW_AT_type
	.byte	36                      @ Abbrev [36] 0x2399:0x6 DW_TAG_subrange_type
	.long	1749                    @ DW_AT_type
	.byte	8                       @ DW_AT_count
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x23a0:0x5 DW_TAG_pointer_type
	.long	1795                    @ DW_AT_type
	.byte	35                      @ Abbrev [35] 0x23a5:0xc DW_TAG_array_type
	.long	1714                    @ DW_AT_type
	.byte	36                      @ Abbrev [36] 0x23aa:0x6 DW_TAG_subrange_type
	.long	1749                    @ DW_AT_type
	.byte	8                       @ DW_AT_count
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x23b1:0x5 DW_TAG_pointer_type
	.long	1386                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.section	.debug_ranges,"",%progbits
.Ldebug_range:
.Ldebug_ranges0:
	.long	.Ltmp14
	.long	.Ltmp19
	.long	.Ltmp63
	.long	.Ltmp64
	.long	0
	.long	0
.Ldebug_ranges1:
	.long	.Ltmp19
	.long	.Ltmp23
	.long	.Ltmp45
	.long	.Ltmp46
	.long	0
	.long	0
.Ldebug_ranges2:
	.long	.Ltmp26
	.long	.Ltmp42
	.long	.Ltmp43
	.long	.Ltmp44
	.long	0
	.long	0
.Ldebug_ranges3:
	.long	.Ltmp27
	.long	.Ltmp28
	.long	.Ltmp29
	.long	.Ltmp30
	.long	.Ltmp31
	.long	.Ltmp32
	.long	.Ltmp33
	.long	.Ltmp34
	.long	.Ltmp35
	.long	.Ltmp36
	.long	.Ltmp37
	.long	.Ltmp38
	.long	0
	.long	0
.Ldebug_ranges4:
	.long	.Ltmp47
	.long	.Ltmp48
	.long	.Ltmp49
	.long	.Ltmp51
	.long	.Ltmp52
	.long	.Ltmp53
	.long	.Ltmp54
	.long	.Ltmp55
	.long	.Ltmp56
	.long	.Ltmp57
	.long	.Ltmp58
	.long	.Ltmp59
	.long	.Ltmp60
	.long	.Ltmp61
	.long	0
	.long	0
.Ldebug_ranges5:
	.long	.Ltmp108
	.long	.Ltmp109
	.long	.Ltmp110
	.long	.Ltmp120
	.long	0
	.long	0
.Ldebug_ranges6:
	.long	.Ltmp112
	.long	.Ltmp113
	.long	.Ltmp114
	.long	.Ltmp115
	.long	.Ltmp116
	.long	.Ltmp117
	.long	.Ltmp118
	.long	.Ltmp119
	.long	0
	.long	0
.Ldebug_ranges7:
	.long	.Ltmp135
	.long	.Ltmp136
	.long	.Ltmp137
	.long	.Ltmp138
	.long	.Ltmp139
	.long	.Ltmp140
	.long	.Ltmp141
	.long	.Ltmp142
	.long	.Ltmp143
	.long	.Ltmp144
	.long	.Ltmp145
	.long	.Ltmp146
	.long	0
	.long	0
.Ldebug_ranges8:
	.long	.Ltmp169
	.long	.Ltmp170
	.long	.Ltmp171
	.long	.Ltmp172
	.long	.Ltmp173
	.long	.Ltmp174
	.long	.Ltmp175
	.long	.Ltmp176
	.long	.Ltmp177
	.long	.Ltmp179
	.long	.Ltmp180
	.long	.Ltmp183
	.long	.Ltmp184
	.long	.Ltmp186
	.long	.Ltmp187
	.long	.Ltmp188
	.long	.Ltmp190
	.long	.Ltmp191
	.long	0
	.long	0
.Ldebug_ranges9:
	.long	.Ltmp193
	.long	.Ltmp197
	.long	.Ltmp198
	.long	.Ltmp204
	.long	.Ltmp205
	.long	.Ltmp206
	.long	0
	.long	0
.Ldebug_ranges10:
	.long	.Ltmp232
	.long	.Ltmp234
	.long	.Ltmp235
	.long	.Ltmp247
	.long	0
	.long	0
.Ldebug_ranges11:
	.long	.Ltmp232
	.long	.Ltmp233
	.long	.Ltmp236
	.long	.Ltmp237
	.long	.Ltmp238
	.long	.Ltmp239
	.long	.Ltmp240
	.long	.Ltmp241
	.long	.Ltmp242
	.long	.Ltmp243
	.long	.Ltmp244
	.long	.Ltmp245
	.long	0
	.long	0
.Ldebug_ranges12:
	.long	.Ltmp273
	.long	.Ltmp274
	.long	.Ltmp275
	.long	.Ltmp276
	.long	.Ltmp277
	.long	.Ltmp278
	.long	.Ltmp279
	.long	.Ltmp280
	.long	.Ltmp281
	.long	.Ltmp282
	.long	.Ltmp283
	.long	.Ltmp284
	.long	0
	.long	0
.Ldebug_ranges13:
	.long	.Ltmp361
	.long	.Ltmp362
	.long	.Ltmp363
	.long	.Ltmp364
	.long	.Ltmp365
	.long	.Ltmp366
	.long	.Ltmp367
	.long	.Ltmp373
	.long	0
	.long	0
.Ldebug_ranges14:
	.long	.Ltmp390
	.long	.Ltmp391
	.long	.Ltmp392
	.long	.Ltmp395
	.long	0
	.long	0
.Ldebug_ranges15:
	.long	.Ltmp410
	.long	.Ltmp411
	.long	.Ltmp420
	.long	.Ltmp421
	.long	.Ltmp422
	.long	.Ltmp423
	.long	.Ltmp424
	.long	.Ltmp425
	.long	.Ltmp426
	.long	.Ltmp428
	.long	.Ltmp429
	.long	.Ltmp434
	.long	0
	.long	0
.Ldebug_ranges16:
	.long	.Ltmp412
	.long	.Ltmp413
	.long	.Ltmp414
	.long	.Ltmp415
	.long	.Ltmp416
	.long	.Ltmp417
	.long	.Ltmp418
	.long	.Ltmp420
	.long	.Ltmp421
	.long	.Ltmp422
	.long	.Ltmp423
	.long	.Ltmp424
	.long	.Ltmp425
	.long	.Ltmp426
	.long	0
	.long	0
.Ldebug_ranges17:
	.long	.Lfunc_begin0
	.long	.Lfunc_end18
	.long	.Lfunc_begin19
	.long	.Lfunc_end19
	.long	.Lfunc_begin20
	.long	.Lfunc_end20
	.long	0
	.long	0
	.section	.debug_macinfo,"",%progbits
.Ldebug_macinfo:
.Lcu_macro_begin0:
	.byte	0                       @ End Of Macro List Mark
	.section	.debug_pubnames,"",%progbits
	.long	.LpubNames_end0-.LpubNames_begin0 @ Length of Public Names Info
.LpubNames_begin0:
	.short	2                       @ DWARF Version
	.long	.Lcu_begin0             @ Offset of Compilation Unit Info
	.long	9143                    @ Compilation Unit Length
	.long	7777                    @ DIE offset
	.asciz	"BME280::setSettings"   @ External Name
	.long	6652                    @ DIE offset
	.asciz	"BME280::WriteSettings" @ External Name
	.long	7904                    @ DIE offset
	.asciz	"BME280::begin"         @ External Name
	.long	6597                    @ DIE offset
	.asciz	"BME280::CalculateRegisters" @ External Name
	.long	8260                    @ DIE offset
	.asciz	"BME280::CalculatePressure" @ External Name
	.long	1860                    @ DIE offset
	.asciz	"std"                   @ External Name
	.long	8818                    @ DIE offset
	.asciz	"BME280::hum"           @ External Name
	.long	9035                    @ DIE offset
	.asciz	"I2c::~I2c"             @ External Name
	.long	6459                    @ DIE offset
	.asciz	"BME280::ReadChipID"    @ External Name
	.long	6407                    @ DIE offset
	.asciz	"BME280::BME280"        @ External Name
	.long	9071                    @ DIE offset
	.asciz	"BME280::~BME280"       @ External Name
	.long	7869                    @ DIE offset
	.asciz	"BME280::getSettings"   @ External Name
	.long	6707                    @ DIE offset
	.asciz	"BME280::Initialize"    @ External Name
	.long	8999                    @ DIE offset
	.asciz	"BME280::chipModel"     @ External Name
	.long	7950                    @ DIE offset
	.asciz	"BME280::ReadData"      @ External Name
	.long	8504                    @ DIE offset
	.asciz	"BME280::temp"          @ External Name
	.long	6509                    @ DIE offset
	.asciz	"BME280::ReadTrim"      @ External Name
	.long	6553                    @ DIE offset
	.asciz	"BME280::InitializeFilter" @ External Name
	.long	8657                    @ DIE offset
	.asciz	"BME280::pres"          @ External Name
	.long	7294                    @ DIE offset
	.asciz	"BME280::CalculateHumidity" @ External Name
	.long	7167                    @ DIE offset
	.asciz	"BME280::CalculateTemperature" @ External Name
	.long	7425                    @ DIE offset
	.asciz	"BME280::read"          @ External Name
	.long	0                       @ End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",%progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0 @ Length of Public Types Info
.LpubTypes_begin0:
	.short	2                       @ DWARF Version
	.long	.Lcu_begin0             @ Offset of Compilation Unit Info
	.long	9143                    @ Compilation Unit Length
	.long	1652                    @ DIE offset
	.asciz	"ssize_t"               @ External Name
	.long	6160                    @ DIE offset
	.asciz	"time_t"                @ External Name
	.long	1815                    @ DIE offset
	.asciz	"int32_t"               @ External Name
	.long	5870                    @ DIE offset
	.asciz	"int_fast8_t"           @ External Name
	.long	5958                    @ DIE offset
	.asciz	"intmax_t"              @ External Name
	.long	6039                    @ DIE offset
	.asciz	"uint_fast16_t"         @ External Name
	.long	1714                    @ DIE offset
	.asciz	"uint8_t"               @ External Name
	.long	1756                    @ DIE offset
	.asciz	"bool"                  @ External Name
	.long	38                      @ DIE offset
	.asciz	"BME280"                @ External Name
	.long	5881                    @ DIE offset
	.asciz	"int_fast16_t"          @ External Name
	.long	5992                    @ DIE offset
	.asciz	"uint16_t"              @ External Name
	.long	4958                    @ DIE offset
	.asciz	"long int"              @ External Name
	.long	5936                    @ DIE offset
	.asciz	"int_least32_t"         @ External Name
	.long	6171                    @ DIE offset
	.asciz	"__time_t"              @ External Name
	.long	1842                    @ DIE offset
	.asciz	"int64_t"               @ External Name
	.long	3653                    @ DIE offset
	.asciz	"float_t"               @ External Name
	.long	6127                    @ DIE offset
	.asciz	"uintptr_t"             @ External Name
	.long	3727                    @ DIE offset
	.asciz	"long double"           @ External Name
	.long	5863                    @ DIE offset
	.asciz	"short"                 @ External Name
	.long	6094                    @ DIE offset
	.asciz	"uint_least32_t"        @ External Name
	.long	5969                    @ DIE offset
	.asciz	"intptr_t"              @ External Name
	.long	6149                    @ DIE offset
	.asciz	"__clock_t"             @ External Name
	.long	5947                    @ DIE offset
	.asciz	"int_least64_t"         @ External Name
	.long	5852                    @ DIE offset
	.asciz	"int16_t"               @ External Name
	.long	6050                    @ DIE offset
	.asciz	"uint_fast32_t"         @ External Name
	.long	1691                    @ DIE offset
	.asciz	"unsigned int"          @ External Name
	.long	1645                    @ DIE offset
	.asciz	"int"                   @ External Name
	.long	1680                    @ DIE offset
	.asciz	"size_t"                @ External Name
	.long	3642                    @ DIE offset
	.asciz	"double_t"              @ External Name
	.long	5892                    @ DIE offset
	.asciz	"int_fast32_t"          @ External Name
	.long	5981                    @ DIE offset
	.asciz	"__intptr_t"            @ External Name
	.long	6105                    @ DIE offset
	.asciz	"uint_least64_t"        @ External Name
	.long	5834                    @ DIE offset
	.asciz	"int8_t"                @ External Name
	.long	1831                    @ DIE offset
	.asciz	"uint32_t"              @ External Name
	.long	5845                    @ DIE offset
	.asciz	"signed char"           @ External Name
	.long	3193                    @ DIE offset
	.asciz	"double"                @ External Name
	.long	5925                    @ DIE offset
	.asciz	"int_least16_t"         @ External Name
	.long	5082                    @ DIE offset
	.asciz	"char"                  @ External Name
	.long	1386                    @ DIE offset
	.asciz	"I2c"                   @ External Name
	.long	1663                    @ DIE offset
	.asciz	"__ssize_t"             @ External Name
	.long	6028                    @ DIE offset
	.asciz	"uint_fast8_t"          @ External Name
	.long	6072                    @ DIE offset
	.asciz	"uint_least8_t"         @ External Name
	.long	6138                    @ DIE offset
	.asciz	"clock_t"               @ External Name
	.long	6021                    @ DIE offset
	.asciz	"long long unsigned int" @ External Name
	.long	6061                    @ DIE offset
	.asciz	"uint_fast64_t"         @ External Name
	.long	1853                    @ DIE offset
	.asciz	"long long int"         @ External Name
	.long	1631                    @ DIE offset
	.asciz	"__vtbl_ptr_type"       @ External Name
	.long	6003                    @ DIE offset
	.asciz	"unsigned short"        @ External Name
	.long	5914                    @ DIE offset
	.asciz	"int_least8_t"          @ External Name
	.long	6083                    @ DIE offset
	.asciz	"uint_least16_t"        @ External Name
	.long	5903                    @ DIE offset
	.asciz	"int_fast64_t"          @ External Name
	.long	1778                    @ DIE offset
	.asciz	"float"                 @ External Name
	.long	6116                    @ DIE offset
	.asciz	"uintmax_t"             @ External Name
	.long	1725                    @ DIE offset
	.asciz	"unsigned char"         @ External Name
	.long	6010                    @ DIE offset
	.asciz	"uint64_t"              @ External Name
	.long	0                       @ End Mark
.LpubTypes_end0:
	.cfi_sections .debug_frame

	.ident	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
	.section	.debug_line,"",%progbits
.Lline_table_start0:
