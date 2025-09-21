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
	.file	"/root/Bela/projects/Thesis/build/Filters.bc"
	.file	1 "./libraries/Biquad" "Biquad.h"
	.file	2 "/root/Bela/projects/Thesis" "Filters.cpp"
	.globl	_Z18initialize_filtersv
	.p2align	2
	.type	_Z18initialize_filtersv,%function
_Z18initialize_filtersv:                @ @_Z18initialize_filtersv
.Lfunc_begin0:
	.loc	2 25 0                  @ /root/Bela/projects/Thesis/Filters.cpp:25:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
.Ltmp0:
	.cfi_def_cfa_offset 24
.Ltmp1:
	.cfi_offset lr, -4
.Ltmp2:
	.cfi_offset r11, -8
.Ltmp3:
	.cfi_offset r7, -12
.Ltmp4:
	.cfi_offset r6, -16
.Ltmp5:
	.cfi_offset r5, -20
.Ltmp6:
	.cfi_offset r4, -24
	.setfp	r11, sp, #16
	add	r11, sp, #16
.Ltmp7:
	.cfi_def_cfa r11, 8
	.vsave	{d8, d9}
	vpush	{d8, d9}
.Ltmp8:
	.cfi_offset d9, -32
.Ltmp9:
	.cfi_offset d8, -40
.Ltmp10:
	.loc	2 29 10 prologue_end    @ /root/Bela/projects/Thesis/Filters.cpp:29:10
	movw	r4, :lower16:.L_MergedGlobals
.Ltmp11:
	.loc	1 59 12                 @ ./libraries/Biquad/Biquad.h:59:12
	movw	r5, #0
.Ltmp12:
	.loc	2 29 10                 @ /root/Bela/projects/Thesis/Filters.cpp:29:10
	movt	r4, :upper16:.L_MergedGlobals
.Ltmp13:
	.loc	1 55 8                  @ ./libraries/Biquad/Biquad.h:55:8
	add	r0, r4, #24
.Ltmp14:
	@DEBUG_VALUE: setup:this <- %R0
	.loc	2 30 14                 @ /root/Bela/projects/Thesis/Filters.cpp:30:14
	vldr	s0, [r4]
.Ltmp15:
	.loc	1 55 8                  @ ./libraries/Biquad/Biquad.h:55:8
	mov	r7, #2
.Ltmp16:
	.loc	2 29 10                 @ /root/Bela/projects/Thesis/Filters.cpp:29:10
	vldr	s4, [r4, #8]
.Ltmp17:
	.loc	1 59 12                 @ ./libraries/Biquad/Biquad.h:59:12
	movt	r5, #16412
.Ltmp18:
	.loc	2 30 14                 @ /root/Bela/projects/Thesis/Filters.cpp:30:14
	vcvt.f64.f32	d16, s0
	mov	r6, #0
	.loc	2 29 10                 @ /root/Bela/projects/Thesis/Filters.cpp:29:10
	vcvt.f64.f32	d8, s4
.Ltmp19:
	.loc	1 57 24                 @ ./libraries/Biquad/Biquad.h:57:24
	vdiv.f64	d16, d16, d8
.Ltmp20:
	.loc	2 32 9                  @ /root/Bela/projects/Thesis/Filters.cpp:32:9
	vldr	s2, [r4, #4]
.Ltmp21:
	.loc	1 55 8                  @ ./libraries/Biquad/Biquad.h:55:8
	str	r7, [r4, #96]
.Ltmp22:
	.loc	2 32 9                  @ /root/Bela/projects/Thesis/Filters.cpp:32:9
	vcvt.f64.f32	d9, s2
.Ltmp23:
	.loc	1 56 6                  @ ./libraries/Biquad/Biquad.h:56:6
	vstr	d8, [r4, #88]
	.loc	1 57 6                  @ ./libraries/Biquad/Biquad.h:57:6
	vstr	d16, [r4, #64]
	.loc	1 58 5                  @ ./libraries/Biquad/Biquad.h:58:5
	vstr	d9, [r4, #72]
	.loc	1 59 12                 @ ./libraries/Biquad/Biquad.h:59:12
	str	r5, [r4, #84]
	str	r6, [r4, #80]
	.loc	1 60 3                  @ ./libraries/Biquad/Biquad.h:60:3
	bl	_ZN12BiquadCoeffTIdE4calcEv
.Ltmp24:
	.loc	2 37 22                 @ /root/Bela/projects/Thesis/Filters.cpp:37:22
	vldr	s0, [r4]
.Ltmp25:
	.loc	1 55 8                  @ ./libraries/Biquad/Biquad.h:55:8
	movw	r0, :lower16:.L_MergedGlobals.1
	movt	r0, :upper16:.L_MergedGlobals.1
.Ltmp26:
	.loc	2 37 22                 @ /root/Bela/projects/Thesis/Filters.cpp:37:22
	vcvt.f64.f32	d16, s0
.Ltmp27:
	.loc	1 55 8                  @ ./libraries/Biquad/Biquad.h:55:8
	str	r7, [r0, #72]
	.loc	1 57 24                 @ ./libraries/Biquad/Biquad.h:57:24
	vdiv.f64	d16, d16, d8
	.loc	1 56 6                  @ ./libraries/Biquad/Biquad.h:56:6
	vstr	d8, [r0, #64]
	.loc	1 57 6                  @ ./libraries/Biquad/Biquad.h:57:6
	vstr	d16, [r0, #40]
	.loc	1 58 5                  @ ./libraries/Biquad/Biquad.h:58:5
	vstr	d9, [r0, #48]
	.loc	1 59 12                 @ ./libraries/Biquad/Biquad.h:59:12
	str	r5, [r0, #60]
	str	r6, [r0, #56]
	.loc	1 60 3                  @ ./libraries/Biquad/Biquad.h:60:3
	bl	_ZN12BiquadCoeffTIdE4calcEv
.Ltmp28:
	.loc	2 44 10                 @ /root/Bela/projects/Thesis/Filters.cpp:44:10
	vldr	s0, [r4, #8]
.Ltmp29:
	.loc	1 55 8                  @ ./libraries/Biquad/Biquad.h:55:8
	movw	r0, :lower16:.L_MergedGlobals.2
.Ltmp30:
	.loc	2 45 14                 @ /root/Bela/projects/Thesis/Filters.cpp:45:14
	vldr	s2, [r4, #12]
.Ltmp31:
	.loc	1 55 8                  @ ./libraries/Biquad/Biquad.h:55:8
	movt	r0, :upper16:.L_MergedGlobals.2
.Ltmp32:
	.loc	2 44 10                 @ /root/Bela/projects/Thesis/Filters.cpp:44:10
	vcvt.f64.f32	d8, s0
.Ltmp33:
	.loc	1 55 8                  @ ./libraries/Biquad/Biquad.h:55:8
	str	r6, [r0, #72]
.Ltmp34:
	.loc	2 45 14                 @ /root/Bela/projects/Thesis/Filters.cpp:45:14
	vcvt.f64.f32	d16, s2
.Ltmp35:
	.loc	1 57 24                 @ ./libraries/Biquad/Biquad.h:57:24
	vdiv.f64	d16, d16, d8
	.loc	1 56 6                  @ ./libraries/Biquad/Biquad.h:56:6
	vstr	d8, [r0, #64]
	.loc	1 57 6                  @ ./libraries/Biquad/Biquad.h:57:6
	vstr	d16, [r0, #40]
	.loc	1 58 5                  @ ./libraries/Biquad/Biquad.h:58:5
	str	r6, [r0, #52]
	str	r6, [r0, #48]
	.loc	1 59 12                 @ ./libraries/Biquad/Biquad.h:59:12
	str	r5, [r0, #60]
	str	r6, [r0, #56]
	.loc	1 60 3                  @ ./libraries/Biquad/Biquad.h:60:3
	bl	_ZN12BiquadCoeffTIdE4calcEv
.Ltmp36:
	.loc	2 52 22                 @ /root/Bela/projects/Thesis/Filters.cpp:52:22
	vldr	s0, [r4, #12]
.Ltmp37:
	.loc	1 55 8                  @ ./libraries/Biquad/Biquad.h:55:8
	movw	r0, :lower16:.L_MergedGlobals.3
	movt	r0, :upper16:.L_MergedGlobals.3
.Ltmp38:
	.loc	2 52 22                 @ /root/Bela/projects/Thesis/Filters.cpp:52:22
	vcvt.f64.f32	d16, s0
.Ltmp39:
	.loc	1 55 8                  @ ./libraries/Biquad/Biquad.h:55:8
	str	r6, [r0, #72]
	.loc	1 57 24                 @ ./libraries/Biquad/Biquad.h:57:24
	vdiv.f64	d16, d16, d8
	.loc	1 56 6                  @ ./libraries/Biquad/Biquad.h:56:6
	vstr	d8, [r0, #64]
	.loc	1 57 6                  @ ./libraries/Biquad/Biquad.h:57:6
	vstr	d16, [r0, #40]
	.loc	1 58 5                  @ ./libraries/Biquad/Biquad.h:58:5
	str	r6, [r0, #52]
	str	r6, [r0, #48]
	.loc	1 59 12                 @ ./libraries/Biquad/Biquad.h:59:12
	str	r5, [r0, #60]
	str	r6, [r0, #56]
	.loc	1 60 3                  @ ./libraries/Biquad/Biquad.h:60:3
	bl	_ZN12BiquadCoeffTIdE4calcEv
.Ltmp40:
	.loc	2 59 10                 @ /root/Bela/projects/Thesis/Filters.cpp:59:10
	vldr	s0, [r4, #8]
.Ltmp41:
	.loc	1 55 8                  @ ./libraries/Biquad/Biquad.h:55:8
	movw	r0, :lower16:.L_MergedGlobals.4
.Ltmp42:
	.loc	2 60 14                 @ /root/Bela/projects/Thesis/Filters.cpp:60:14
	vldr	s2, [r4, #16]
.Ltmp43:
	.loc	1 55 8                  @ ./libraries/Biquad/Biquad.h:55:8
	movt	r0, :upper16:.L_MergedGlobals.4
.Ltmp44:
	.loc	2 59 10                 @ /root/Bela/projects/Thesis/Filters.cpp:59:10
	vcvt.f64.f32	d8, s0
	mov	r7, #1
.Ltmp45:
	.loc	1 55 8                  @ ./libraries/Biquad/Biquad.h:55:8
	str	r7, [r0, #72]
.Ltmp46:
	.loc	2 60 14                 @ /root/Bela/projects/Thesis/Filters.cpp:60:14
	vcvt.f64.f32	d16, s2
.Ltmp47:
	.loc	1 57 24                 @ ./libraries/Biquad/Biquad.h:57:24
	vdiv.f64	d16, d16, d8
	.loc	1 56 6                  @ ./libraries/Biquad/Biquad.h:56:6
	vstr	d8, [r0, #64]
	.loc	1 57 6                  @ ./libraries/Biquad/Biquad.h:57:6
	vstr	d16, [r0, #40]
	.loc	1 58 5                  @ ./libraries/Biquad/Biquad.h:58:5
	str	r6, [r0, #52]
	str	r6, [r0, #48]
	.loc	1 59 12                 @ ./libraries/Biquad/Biquad.h:59:12
	str	r5, [r0, #60]
	str	r6, [r0, #56]
	.loc	1 60 3                  @ ./libraries/Biquad/Biquad.h:60:3
	bl	_ZN12BiquadCoeffTIdE4calcEv
.Ltmp48:
	.loc	2 67 22                 @ /root/Bela/projects/Thesis/Filters.cpp:67:22
	vldr	s0, [r4, #16]
.Ltmp49:
	.loc	1 55 8                  @ ./libraries/Biquad/Biquad.h:55:8
	movw	r0, :lower16:.L_MergedGlobals.5
	movt	r0, :upper16:.L_MergedGlobals.5
.Ltmp50:
	.loc	2 67 22                 @ /root/Bela/projects/Thesis/Filters.cpp:67:22
	vcvt.f64.f32	d16, s0
.Ltmp51:
	.loc	1 55 8                  @ ./libraries/Biquad/Biquad.h:55:8
	str	r7, [r0, #72]
	.loc	1 57 24                 @ ./libraries/Biquad/Biquad.h:57:24
	vdiv.f64	d16, d16, d8
.Ltmp52:
	@DEBUG_VALUE: setup:this <- %R0
	.loc	1 56 6                  @ ./libraries/Biquad/Biquad.h:56:6
	vstr	d8, [r0, #64]
	.loc	1 57 6                  @ ./libraries/Biquad/Biquad.h:57:6
	vstr	d16, [r0, #40]
	.loc	1 58 5                  @ ./libraries/Biquad/Biquad.h:58:5
	str	r6, [r0, #52]
	str	r6, [r0, #48]
	.loc	1 59 12                 @ ./libraries/Biquad/Biquad.h:59:12
	str	r5, [r0, #60]
	str	r6, [r0, #56]
	.loc	1 60 3                  @ ./libraries/Biquad/Biquad.h:60:3
	bl	_ZN12BiquadCoeffTIdE4calcEv
.Ltmp53:
	.loc	2 72 2                  @ /root/Bela/projects/Thesis/Filters.cpp:72:2
	mov	r0, #1
.Ltmp54:
	@DEBUG_VALUE: setup:this <- %R0
	@DEBUG_VALUE: setup:this <- %R0
	@DEBUG_VALUE: setup:this <- %R0
	@DEBUG_VALUE: setup:this <- %R0
	vpop	{d8, d9}
	pop	{r4, r5, r6, r7, r11, pc}
.Ltmp55:
.Lfunc_end0:
	.size	_Z18initialize_filtersv, .Lfunc_end0-_Z18initialize_filtersv
	.cfi_endproc
	.fnend

	.globl	_Z15render_bandpassff
	.p2align	2
	.type	_Z15render_bandpassff,%function
_Z15render_bandpassff:                  @ @_Z15render_bandpassff
.Lfunc_begin1:
	.loc	2 75 0                  @ /root/Bela/projects/Thesis/Filters.cpp:75:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset lr, -4
.Ltmp58:
	.cfi_offset r11, -8
.Ltmp59:
	.cfi_offset r10, -12
.Ltmp60:
	.cfi_offset r4, -16
	.setfp	r11, sp, #8
	add	r11, sp, #8
.Ltmp61:
	.cfi_def_cfa r11, 8
	.vsave	{d8, d9}
	vpush	{d8, d9}
.Ltmp62:
	.cfi_offset d9, -24
.Ltmp63:
	.cfi_offset d8, -32
	@DEBUG_VALUE: render_bandpass:audio_l <- %S0
	@DEBUG_VALUE: render_bandpass:audio_r <- %S1
.Ltmp64:
	.loc	2 78 19 prologue_end    @ /root/Bela/projects/Thesis/Filters.cpp:78:19
	movw	r4, :lower16:.L_MergedGlobals
	vmov.f32	s18, s0
.Ltmp65:
	@DEBUG_VALUE: render_bandpass:audio_l <- %S18
	movt	r4, :upper16:.L_MergedGlobals
.Ltmp66:
	.loc	1 73 23                 @ ./libraries/Biquad/Biquad.h:73:23
	add	r0, r4, #24
.Ltmp67:
	@DEBUG_VALUE: process:this <- %R0
	@DEBUG_VALUE: setFc:this <- %R0
	.loc	2 78 19                 @ /root/Bela/projects/Thesis/Filters.cpp:78:19
	vldr	s0, [r4]
	vmov.f32	s16, s1
.Ltmp68:
	@DEBUG_VALUE: render_bandpass:audio_r <- %S16
	.loc	1 73 23                 @ ./libraries/Biquad/Biquad.h:73:23
	vldr	d17, [r4, #88]
.Ltmp69:
	.loc	2 78 19                 @ /root/Bela/projects/Thesis/Filters.cpp:78:19
	vcvt.f64.f32	d16, s0
.Ltmp70:
	@DEBUG_VALUE: setFc:Fc <- %D16
	.loc	1 73 16                 @ ./libraries/Biquad/Biquad.h:73:16
	vdiv.f64	d16, d16, d17
.Ltmp71:
	.loc	1 73 12 is_stmt 0       @ ./libraries/Biquad/Biquad.h:73:12
	vstr	d16, [r4, #64]
	.loc	1 74 3 is_stmt 1        @ ./libraries/Biquad/Biquad.h:74:3
	bl	_ZN12BiquadCoeffTIdE4calcEv
.Ltmp72:
	.loc	2 79 31                 @ /root/Bela/projects/Thesis/Filters.cpp:79:31
	vcvt.f64.f32	d16, s18
.Ltmp73:
	@DEBUG_VALUE: process:in <- %D16
	.loc	1 110 23                @ ./libraries/Biquad/Biquad.h:110:23
	vldr	d17, [r4, #24]
	.loc	1 111 13                @ ./libraries/Biquad/Biquad.h:111:13
	vldr	d18, [r4, #32]
	.loc	1 110 21                @ ./libraries/Biquad/Biquad.h:110:21
	vmul.f64	d17, d17, d16
	.loc	1 110 28 is_stmt 0      @ ./libraries/Biquad/Biquad.h:110:28
	vldr	d20, [r4, #104]
	.loc	1 111 11 is_stmt 1      @ ./libraries/Biquad/Biquad.h:111:11
	vmul.f64	d18, d18, d16
	.loc	1 110 26                @ ./libraries/Biquad/Biquad.h:110:26
	vadd.f64	d17, d17, d20
.Ltmp74:
	@DEBUG_VALUE: process:out <- %D17
	.loc	1 111 23                @ ./libraries/Biquad/Biquad.h:111:23
	vldr	d19, [r4, #48]
	.loc	1 111 18 is_stmt 0      @ ./libraries/Biquad/Biquad.h:111:18
	vldr	d21, [r4, #112]
	.loc	1 111 26                @ ./libraries/Biquad/Biquad.h:111:26
	vmul.f64	d19, d19, d17
	.loc	1 111 16                @ ./libraries/Biquad/Biquad.h:111:16
	vadd.f64	d18, d18, d21
	.loc	1 111 21                @ ./libraries/Biquad/Biquad.h:111:21
	vsub.f64	d18, d18, d19
	.loc	1 111 6                 @ ./libraries/Biquad/Biquad.h:111:6
	vstr	d18, [r4, #104]
	.loc	1 112 13 is_stmt 1      @ ./libraries/Biquad/Biquad.h:112:13
	vldr	d18, [r4, #40]
	.loc	1 112 18 is_stmt 0      @ ./libraries/Biquad/Biquad.h:112:18
	vldr	d19, [r4, #56]
	.loc	1 112 11                @ ./libraries/Biquad/Biquad.h:112:11
	vmul.f64	d16, d18, d16
.Ltmp75:
	.loc	1 112 21                @ ./libraries/Biquad/Biquad.h:112:21
	vmul.f64	d17, d19, d17
.Ltmp76:
	.loc	1 112 16                @ ./libraries/Biquad/Biquad.h:112:16
	vsub.f64	d16, d16, d17
	.loc	1 112 6                 @ ./libraries/Biquad/Biquad.h:112:6
	vstr	d16, [r4, #112]
.Ltmp77:
	.loc	2 81 19 is_stmt 1       @ /root/Bela/projects/Thesis/Filters.cpp:81:19
	vldr	s0, [r4]
.Ltmp78:
	.loc	1 73 23                 @ ./libraries/Biquad/Biquad.h:73:23
	movw	r4, :lower16:.L_MergedGlobals.1
	movt	r4, :upper16:.L_MergedGlobals.1
.Ltmp79:
	.loc	2 81 19                 @ /root/Bela/projects/Thesis/Filters.cpp:81:19
	vcvt.f64.f32	d16, s0
.Ltmp80:
	@DEBUG_VALUE: setFc:Fc <- %D16
	.loc	1 74 3                  @ ./libraries/Biquad/Biquad.h:74:3
	mov	r0, r4
	.loc	1 73 23                 @ ./libraries/Biquad/Biquad.h:73:23
	vldr	d17, [r4, #64]
	.loc	1 73 16 is_stmt 0       @ ./libraries/Biquad/Biquad.h:73:16
	vdiv.f64	d16, d16, d17
.Ltmp81:
	.loc	1 73 12                 @ ./libraries/Biquad/Biquad.h:73:12
	vstr	d16, [r4, #40]
	.loc	1 74 3 is_stmt 1        @ ./libraries/Biquad/Biquad.h:74:3
	bl	_ZN12BiquadCoeffTIdE4calcEv
.Ltmp82:
	.loc	2 82 31                 @ /root/Bela/projects/Thesis/Filters.cpp:82:31
	vcvt.f64.f32	d16, s16
.Ltmp83:
	@DEBUG_VALUE: process:in <- %D16
	.loc	1 110 23                @ ./libraries/Biquad/Biquad.h:110:23
	vldmia	r4, {d17, d18}
	.loc	1 110 21 is_stmt 0      @ ./libraries/Biquad/Biquad.h:110:21
	vmul.f64	d17, d17, d16
	.loc	1 110 28                @ ./libraries/Biquad/Biquad.h:110:28
	vldr	d20, [r4, #80]
	.loc	1 111 11 is_stmt 1      @ ./libraries/Biquad/Biquad.h:111:11
	vmul.f64	d18, d18, d16
	.loc	1 110 26                @ ./libraries/Biquad/Biquad.h:110:26
	vadd.f64	d17, d17, d20
.Ltmp84:
	@DEBUG_VALUE: process:out <- %D17
	.loc	1 111 23                @ ./libraries/Biquad/Biquad.h:111:23
	vldr	d19, [r4, #24]
	.loc	1 111 18 is_stmt 0      @ ./libraries/Biquad/Biquad.h:111:18
	vldr	d21, [r4, #88]
	.loc	1 111 26                @ ./libraries/Biquad/Biquad.h:111:26
	vmul.f64	d19, d19, d17
	.loc	1 111 16                @ ./libraries/Biquad/Biquad.h:111:16
	vadd.f64	d18, d18, d21
	.loc	1 111 21                @ ./libraries/Biquad/Biquad.h:111:21
	vsub.f64	d18, d18, d19
	.loc	1 111 6                 @ ./libraries/Biquad/Biquad.h:111:6
	vstr	d18, [r4, #80]
	.loc	1 112 13 is_stmt 1      @ ./libraries/Biquad/Biquad.h:112:13
	vldr	d18, [r4, #16]
	.loc	1 112 18 is_stmt 0      @ ./libraries/Biquad/Biquad.h:112:18
	vldr	d19, [r4, #32]
	.loc	1 112 11                @ ./libraries/Biquad/Biquad.h:112:11
	vmul.f64	d16, d18, d16
.Ltmp85:
	.loc	1 112 21                @ ./libraries/Biquad/Biquad.h:112:21
	vmul.f64	d17, d19, d17
.Ltmp86:
	.loc	1 112 16                @ ./libraries/Biquad/Biquad.h:112:16
	vsub.f64	d16, d16, d17
	.loc	1 112 6                 @ ./libraries/Biquad/Biquad.h:112:6
	vstr	d16, [r4, #88]
.Ltmp87:
	@DEBUG_VALUE: setFc:this <- %R4
	.loc	2 83 1 is_stmt 1        @ /root/Bela/projects/Thesis/Filters.cpp:83:1
	vpop	{d8, d9}
.Ltmp88:
	pop	{r4, r10, r11, pc}
.Ltmp89:
.Lfunc_end1:
	.size	_Z15render_bandpassff, .Lfunc_end1-_Z15render_bandpassff
	.cfi_endproc
	.fnend

	.globl	_Z14render_lowpassff
	.p2align	2
	.type	_Z14render_lowpassff,%function
_Z14render_lowpassff:                   @ @_Z14render_lowpassff
.Lfunc_begin2:
	.loc	2 85 0                  @ /root/Bela/projects/Thesis/Filters.cpp:85:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset lr, -4
.Ltmp92:
	.cfi_offset r11, -8
.Ltmp93:
	.cfi_offset r5, -12
.Ltmp94:
	.cfi_offset r4, -16
	.setfp	r11, sp, #8
	add	r11, sp, #8
.Ltmp95:
	.cfi_def_cfa r11, 8
	.vsave	{d8, d9}
	vpush	{d8, d9}
.Ltmp96:
	.cfi_offset d9, -24
.Ltmp97:
	.cfi_offset d8, -32
	@DEBUG_VALUE: render_lowpass:audio_l <- %S0
	@DEBUG_VALUE: render_lowpass:audio_r <- %S1
.Ltmp98:
	.loc	2 88 18 prologue_end    @ /root/Bela/projects/Thesis/Filters.cpp:88:18
	movw	r5, :lower16:.L_MergedGlobals
	vmov.f32	s18, s0
.Ltmp99:
	@DEBUG_VALUE: render_lowpass:audio_l <- %S18
	movt	r5, :upper16:.L_MergedGlobals
.Ltmp100:
	.loc	1 73 23                 @ ./libraries/Biquad/Biquad.h:73:23
	movw	r4, :lower16:.L_MergedGlobals.2
.Ltmp101:
	.loc	2 88 18                 @ /root/Bela/projects/Thesis/Filters.cpp:88:18
	vldr	s0, [r5, #12]
.Ltmp102:
	.loc	1 73 23                 @ ./libraries/Biquad/Biquad.h:73:23
	movt	r4, :upper16:.L_MergedGlobals.2
	vldr	d17, [r4, #64]
	.loc	1 74 3                  @ ./libraries/Biquad/Biquad.h:74:3
	mov	r0, r4
.Ltmp103:
	.loc	2 88 18                 @ /root/Bela/projects/Thesis/Filters.cpp:88:18
	vcvt.f64.f32	d16, s0
.Ltmp104:
	@DEBUG_VALUE: setFc:Fc <- %D16
	.loc	1 73 16                 @ ./libraries/Biquad/Biquad.h:73:16
	vdiv.f64	d16, d16, d17
.Ltmp105:
	vmov.f32	s16, s1
.Ltmp106:
	@DEBUG_VALUE: render_lowpass:audio_r <- %S16
	.loc	1 73 12 is_stmt 0       @ ./libraries/Biquad/Biquad.h:73:12
	vstr	d16, [r4, #40]
	.loc	1 74 3 is_stmt 1        @ ./libraries/Biquad/Biquad.h:74:3
	bl	_ZN12BiquadCoeffTIdE4calcEv
.Ltmp107:
	.loc	2 89 30                 @ /root/Bela/projects/Thesis/Filters.cpp:89:30
	vcvt.f64.f32	d16, s18
.Ltmp108:
	@DEBUG_VALUE: process:in <- %D16
	.loc	1 110 23                @ ./libraries/Biquad/Biquad.h:110:23
	vldmia	r4, {d17, d18}
	.loc	1 110 21 is_stmt 0      @ ./libraries/Biquad/Biquad.h:110:21
	vmul.f64	d17, d17, d16
	.loc	1 110 28                @ ./libraries/Biquad/Biquad.h:110:28
	vldr	d20, [r4, #80]
	.loc	1 111 11 is_stmt 1      @ ./libraries/Biquad/Biquad.h:111:11
	vmul.f64	d18, d18, d16
	.loc	1 110 26                @ ./libraries/Biquad/Biquad.h:110:26
	vadd.f64	d17, d17, d20
.Ltmp109:
	@DEBUG_VALUE: process:out <- %D17
	.loc	1 111 23                @ ./libraries/Biquad/Biquad.h:111:23
	vldr	d19, [r4, #24]
	.loc	1 111 18 is_stmt 0      @ ./libraries/Biquad/Biquad.h:111:18
	vldr	d21, [r4, #88]
	.loc	1 111 26                @ ./libraries/Biquad/Biquad.h:111:26
	vmul.f64	d19, d19, d17
	.loc	1 111 16                @ ./libraries/Biquad/Biquad.h:111:16
	vadd.f64	d18, d18, d21
	.loc	1 111 21                @ ./libraries/Biquad/Biquad.h:111:21
	vsub.f64	d18, d18, d19
	.loc	1 111 6                 @ ./libraries/Biquad/Biquad.h:111:6
	vstr	d18, [r4, #80]
	.loc	1 112 13 is_stmt 1      @ ./libraries/Biquad/Biquad.h:112:13
	vldr	d18, [r4, #16]
	.loc	1 112 18 is_stmt 0      @ ./libraries/Biquad/Biquad.h:112:18
	vldr	d19, [r4, #32]
	.loc	1 112 11                @ ./libraries/Biquad/Biquad.h:112:11
	vmul.f64	d16, d18, d16
.Ltmp110:
	.loc	1 112 21                @ ./libraries/Biquad/Biquad.h:112:21
	vmul.f64	d17, d19, d17
.Ltmp111:
	.loc	1 112 16                @ ./libraries/Biquad/Biquad.h:112:16
	vsub.f64	d16, d16, d17
.Ltmp112:
	.loc	2 91 18 is_stmt 1       @ /root/Bela/projects/Thesis/Filters.cpp:91:18
	vldr	s0, [r5, #12]
.Ltmp113:
	.loc	1 112 6                 @ ./libraries/Biquad/Biquad.h:112:6
	vstr	d16, [r4, #88]
.Ltmp114:
	.loc	1 73 23                 @ ./libraries/Biquad/Biquad.h:73:23
	movw	r4, :lower16:.L_MergedGlobals.3
.Ltmp115:
	.loc	2 91 18                 @ /root/Bela/projects/Thesis/Filters.cpp:91:18
	vcvt.f64.f32	d16, s0
.Ltmp116:
	@DEBUG_VALUE: setFc:Fc <- %D16
	.loc	1 73 23                 @ ./libraries/Biquad/Biquad.h:73:23
	movt	r4, :upper16:.L_MergedGlobals.3
	.loc	1 74 3                  @ ./libraries/Biquad/Biquad.h:74:3
	mov	r0, r4
	.loc	1 73 23                 @ ./libraries/Biquad/Biquad.h:73:23
	vldr	d17, [r4, #64]
	.loc	1 73 16 is_stmt 0       @ ./libraries/Biquad/Biquad.h:73:16
	vdiv.f64	d16, d16, d17
.Ltmp117:
	.loc	1 73 12                 @ ./libraries/Biquad/Biquad.h:73:12
	vstr	d16, [r4, #40]
	.loc	1 74 3 is_stmt 1        @ ./libraries/Biquad/Biquad.h:74:3
	bl	_ZN12BiquadCoeffTIdE4calcEv
.Ltmp118:
	.loc	2 92 30                 @ /root/Bela/projects/Thesis/Filters.cpp:92:30
	vcvt.f64.f32	d16, s16
.Ltmp119:
	@DEBUG_VALUE: process:in <- %D16
	.loc	1 110 23                @ ./libraries/Biquad/Biquad.h:110:23
	vldmia	r4, {d17, d18}
	.loc	1 110 21 is_stmt 0      @ ./libraries/Biquad/Biquad.h:110:21
	vmul.f64	d17, d17, d16
	.loc	1 110 28                @ ./libraries/Biquad/Biquad.h:110:28
	vldr	d20, [r4, #80]
	.loc	1 111 11 is_stmt 1      @ ./libraries/Biquad/Biquad.h:111:11
	vmul.f64	d18, d18, d16
	.loc	1 110 26                @ ./libraries/Biquad/Biquad.h:110:26
	vadd.f64	d17, d17, d20
.Ltmp120:
	@DEBUG_VALUE: process:out <- %D17
	.loc	1 111 23                @ ./libraries/Biquad/Biquad.h:111:23
	vldr	d19, [r4, #24]
	.loc	1 111 18 is_stmt 0      @ ./libraries/Biquad/Biquad.h:111:18
	vldr	d21, [r4, #88]
	.loc	1 111 26                @ ./libraries/Biquad/Biquad.h:111:26
	vmul.f64	d19, d19, d17
	.loc	1 111 16                @ ./libraries/Biquad/Biquad.h:111:16
	vadd.f64	d18, d18, d21
	.loc	1 111 21                @ ./libraries/Biquad/Biquad.h:111:21
	vsub.f64	d18, d18, d19
	.loc	1 111 6                 @ ./libraries/Biquad/Biquad.h:111:6
	vstr	d18, [r4, #80]
	.loc	1 112 13 is_stmt 1      @ ./libraries/Biquad/Biquad.h:112:13
	vldr	d18, [r4, #16]
	.loc	1 112 18 is_stmt 0      @ ./libraries/Biquad/Biquad.h:112:18
	vldr	d19, [r4, #32]
	.loc	1 112 11                @ ./libraries/Biquad/Biquad.h:112:11
	vmul.f64	d16, d18, d16
.Ltmp121:
	.loc	1 112 21                @ ./libraries/Biquad/Biquad.h:112:21
	vmul.f64	d17, d19, d17
.Ltmp122:
	.loc	1 112 16                @ ./libraries/Biquad/Biquad.h:112:16
	vsub.f64	d16, d16, d17
	.loc	1 112 6                 @ ./libraries/Biquad/Biquad.h:112:6
	vstr	d16, [r4, #88]
.Ltmp123:
	@DEBUG_VALUE: setFc:this <- %R4
	@DEBUG_VALUE: setFc:this <- %R4
	.loc	2 93 1 is_stmt 1        @ /root/Bela/projects/Thesis/Filters.cpp:93:1
	vpop	{d8, d9}
.Ltmp124:
	pop	{r4, r5, r11, pc}
.Ltmp125:
.Lfunc_end2:
	.size	_Z14render_lowpassff, .Lfunc_end2-_Z14render_lowpassff
	.cfi_endproc
	.fnend

	.globl	_Z15render_highpassff
	.p2align	2
	.type	_Z15render_highpassff,%function
_Z15render_highpassff:                  @ @_Z15render_highpassff
.Lfunc_begin3:
	.loc	2 95 0                  @ /root/Bela/projects/Thesis/Filters.cpp:95:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset lr, -4
.Ltmp128:
	.cfi_offset r11, -8
.Ltmp129:
	.cfi_offset r5, -12
.Ltmp130:
	.cfi_offset r4, -16
	.setfp	r11, sp, #8
	add	r11, sp, #8
.Ltmp131:
	.cfi_def_cfa r11, 8
	.vsave	{d8, d9}
	vpush	{d8, d9}
.Ltmp132:
	.cfi_offset d9, -24
.Ltmp133:
	.cfi_offset d8, -32
	@DEBUG_VALUE: render_highpass:audio_l <- %S0
	@DEBUG_VALUE: render_highpass:audio_r <- %S1
.Ltmp134:
	.loc	2 98 19 prologue_end    @ /root/Bela/projects/Thesis/Filters.cpp:98:19
	movw	r5, :lower16:.L_MergedGlobals
	vmov.f32	s18, s0
.Ltmp135:
	@DEBUG_VALUE: render_highpass:audio_l <- %S18
	movt	r5, :upper16:.L_MergedGlobals
.Ltmp136:
	.loc	1 73 23                 @ ./libraries/Biquad/Biquad.h:73:23
	movw	r4, :lower16:.L_MergedGlobals.4
.Ltmp137:
	.loc	2 98 19                 @ /root/Bela/projects/Thesis/Filters.cpp:98:19
	vldr	s0, [r5, #16]
.Ltmp138:
	.loc	1 73 23                 @ ./libraries/Biquad/Biquad.h:73:23
	movt	r4, :upper16:.L_MergedGlobals.4
	vldr	d17, [r4, #64]
	.loc	1 74 3                  @ ./libraries/Biquad/Biquad.h:74:3
	mov	r0, r4
.Ltmp139:
	.loc	2 98 19                 @ /root/Bela/projects/Thesis/Filters.cpp:98:19
	vcvt.f64.f32	d16, s0
.Ltmp140:
	@DEBUG_VALUE: setFc:Fc <- %D16
	.loc	1 73 16                 @ ./libraries/Biquad/Biquad.h:73:16
	vdiv.f64	d16, d16, d17
.Ltmp141:
	vmov.f32	s16, s1
.Ltmp142:
	@DEBUG_VALUE: render_highpass:audio_r <- %S16
	.loc	1 73 12 is_stmt 0       @ ./libraries/Biquad/Biquad.h:73:12
	vstr	d16, [r4, #40]
	.loc	1 74 3 is_stmt 1        @ ./libraries/Biquad/Biquad.h:74:3
	bl	_ZN12BiquadCoeffTIdE4calcEv
.Ltmp143:
	.loc	2 99 31                 @ /root/Bela/projects/Thesis/Filters.cpp:99:31
	vcvt.f64.f32	d16, s18
.Ltmp144:
	@DEBUG_VALUE: process:in <- %D16
	.loc	1 110 23                @ ./libraries/Biquad/Biquad.h:110:23
	vldmia	r4, {d17, d18}
	.loc	1 110 21 is_stmt 0      @ ./libraries/Biquad/Biquad.h:110:21
	vmul.f64	d17, d17, d16
	.loc	1 110 28                @ ./libraries/Biquad/Biquad.h:110:28
	vldr	d20, [r4, #80]
	.loc	1 111 11 is_stmt 1      @ ./libraries/Biquad/Biquad.h:111:11
	vmul.f64	d18, d18, d16
	.loc	1 110 26                @ ./libraries/Biquad/Biquad.h:110:26
	vadd.f64	d17, d17, d20
.Ltmp145:
	@DEBUG_VALUE: process:out <- %D17
	.loc	1 111 23                @ ./libraries/Biquad/Biquad.h:111:23
	vldr	d19, [r4, #24]
	.loc	1 111 18 is_stmt 0      @ ./libraries/Biquad/Biquad.h:111:18
	vldr	d21, [r4, #88]
	.loc	1 111 26                @ ./libraries/Biquad/Biquad.h:111:26
	vmul.f64	d19, d19, d17
	.loc	1 111 16                @ ./libraries/Biquad/Biquad.h:111:16
	vadd.f64	d18, d18, d21
	.loc	1 111 21                @ ./libraries/Biquad/Biquad.h:111:21
	vsub.f64	d18, d18, d19
	.loc	1 111 6                 @ ./libraries/Biquad/Biquad.h:111:6
	vstr	d18, [r4, #80]
	.loc	1 112 13 is_stmt 1      @ ./libraries/Biquad/Biquad.h:112:13
	vldr	d18, [r4, #16]
	.loc	1 112 18 is_stmt 0      @ ./libraries/Biquad/Biquad.h:112:18
	vldr	d19, [r4, #32]
	.loc	1 112 11                @ ./libraries/Biquad/Biquad.h:112:11
	vmul.f64	d16, d18, d16
.Ltmp146:
	.loc	1 112 21                @ ./libraries/Biquad/Biquad.h:112:21
	vmul.f64	d17, d19, d17
.Ltmp147:
	.loc	1 112 16                @ ./libraries/Biquad/Biquad.h:112:16
	vsub.f64	d16, d16, d17
.Ltmp148:
	.loc	2 101 19 is_stmt 1      @ /root/Bela/projects/Thesis/Filters.cpp:101:19
	vldr	s0, [r5, #16]
.Ltmp149:
	.loc	1 112 6                 @ ./libraries/Biquad/Biquad.h:112:6
	vstr	d16, [r4, #88]
.Ltmp150:
	.loc	1 73 23                 @ ./libraries/Biquad/Biquad.h:73:23
	movw	r4, :lower16:.L_MergedGlobals.5
.Ltmp151:
	.loc	2 101 19                @ /root/Bela/projects/Thesis/Filters.cpp:101:19
	vcvt.f64.f32	d16, s0
.Ltmp152:
	@DEBUG_VALUE: setFc:Fc <- %D16
	.loc	1 73 23                 @ ./libraries/Biquad/Biquad.h:73:23
	movt	r4, :upper16:.L_MergedGlobals.5
	.loc	1 74 3                  @ ./libraries/Biquad/Biquad.h:74:3
	mov	r0, r4
	.loc	1 73 23                 @ ./libraries/Biquad/Biquad.h:73:23
	vldr	d17, [r4, #64]
	.loc	1 73 16 is_stmt 0       @ ./libraries/Biquad/Biquad.h:73:16
	vdiv.f64	d16, d16, d17
.Ltmp153:
	.loc	1 73 12                 @ ./libraries/Biquad/Biquad.h:73:12
	vstr	d16, [r4, #40]
	.loc	1 74 3 is_stmt 1        @ ./libraries/Biquad/Biquad.h:74:3
	bl	_ZN12BiquadCoeffTIdE4calcEv
.Ltmp154:
	.loc	2 102 31                @ /root/Bela/projects/Thesis/Filters.cpp:102:31
	vcvt.f64.f32	d16, s16
.Ltmp155:
	@DEBUG_VALUE: process:in <- %D16
	.loc	1 110 23                @ ./libraries/Biquad/Biquad.h:110:23
	vldmia	r4, {d17, d18}
	.loc	1 110 21 is_stmt 0      @ ./libraries/Biquad/Biquad.h:110:21
	vmul.f64	d17, d17, d16
	.loc	1 110 28                @ ./libraries/Biquad/Biquad.h:110:28
	vldr	d20, [r4, #80]
	.loc	1 111 11 is_stmt 1      @ ./libraries/Biquad/Biquad.h:111:11
	vmul.f64	d18, d18, d16
	.loc	1 110 26                @ ./libraries/Biquad/Biquad.h:110:26
	vadd.f64	d17, d17, d20
.Ltmp156:
	@DEBUG_VALUE: process:out <- %D17
	.loc	1 111 23                @ ./libraries/Biquad/Biquad.h:111:23
	vldr	d19, [r4, #24]
	.loc	1 111 18 is_stmt 0      @ ./libraries/Biquad/Biquad.h:111:18
	vldr	d21, [r4, #88]
	.loc	1 111 26                @ ./libraries/Biquad/Biquad.h:111:26
	vmul.f64	d19, d19, d17
	.loc	1 111 16                @ ./libraries/Biquad/Biquad.h:111:16
	vadd.f64	d18, d18, d21
	.loc	1 111 21                @ ./libraries/Biquad/Biquad.h:111:21
	vsub.f64	d18, d18, d19
	.loc	1 111 6                 @ ./libraries/Biquad/Biquad.h:111:6
	vstr	d18, [r4, #80]
	.loc	1 112 13 is_stmt 1      @ ./libraries/Biquad/Biquad.h:112:13
	vldr	d18, [r4, #16]
	.loc	1 112 18 is_stmt 0      @ ./libraries/Biquad/Biquad.h:112:18
	vldr	d19, [r4, #32]
	.loc	1 112 11                @ ./libraries/Biquad/Biquad.h:112:11
	vmul.f64	d16, d18, d16
.Ltmp157:
	.loc	1 112 21                @ ./libraries/Biquad/Biquad.h:112:21
	vmul.f64	d17, d19, d17
.Ltmp158:
	.loc	1 112 16                @ ./libraries/Biquad/Biquad.h:112:16
	vsub.f64	d16, d16, d17
	.loc	1 112 6                 @ ./libraries/Biquad/Biquad.h:112:6
	vstr	d16, [r4, #88]
.Ltmp159:
	@DEBUG_VALUE: setFc:this <- %R4
	@DEBUG_VALUE: setFc:this <- %R4
	.loc	2 103 1 is_stmt 1       @ /root/Bela/projects/Thesis/Filters.cpp:103:1
	vpop	{d8, d9}
.Ltmp160:
	pop	{r4, r5, r11, pc}
.Ltmp161:
.Lfunc_end3:
	.size	_Z15render_highpassff, .Lfunc_end3-_Z15render_highpassff
	.cfi_endproc
	.fnend

	.globl	_Z21render_lowandhighpassff
	.p2align	2
	.type	_Z21render_lowandhighpassff,%function
_Z21render_lowandhighpassff:            @ @_Z21render_lowandhighpassff
.Lfunc_begin4:
	.loc	2 105 0                 @ /root/Bela/projects/Thesis/Filters.cpp:105:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r5, r6, r10, r11, lr}
	push	{r4, r5, r6, r10, r11, lr}
.Ltmp162:
	.cfi_def_cfa_offset 24
.Ltmp163:
	.cfi_offset lr, -4
.Ltmp164:
	.cfi_offset r11, -8
.Ltmp165:
	.cfi_offset r10, -12
.Ltmp166:
	.cfi_offset r6, -16
.Ltmp167:
	.cfi_offset r5, -20
.Ltmp168:
	.cfi_offset r4, -24
	.setfp	r11, sp, #16
	add	r11, sp, #16
.Ltmp169:
	.cfi_def_cfa r11, 8
	.vsave	{d8, d9}
	vpush	{d8, d9}
.Ltmp170:
	.cfi_offset d9, -32
.Ltmp171:
	.cfi_offset d8, -40
	@DEBUG_VALUE: render_lowandhighpass:audio_l <- %S0
	@DEBUG_VALUE: render_lowandhighpass:audio_r <- %S1
.Ltmp172:
	.loc	2 108 19 prologue_end   @ /root/Bela/projects/Thesis/Filters.cpp:108:19
	movw	r6, :lower16:.L_MergedGlobals
	vmov.f32	s18, s0
.Ltmp173:
	@DEBUG_VALUE: render_lowandhighpass:audio_l <- %S18
	movt	r6, :upper16:.L_MergedGlobals
.Ltmp174:
	.loc	1 73 23                 @ ./libraries/Biquad/Biquad.h:73:23
	movw	r5, :lower16:.L_MergedGlobals.4
.Ltmp175:
	.loc	2 108 19                @ /root/Bela/projects/Thesis/Filters.cpp:108:19
	vldr	s0, [r6, #16]
.Ltmp176:
	.loc	1 73 23                 @ ./libraries/Biquad/Biquad.h:73:23
	movt	r5, :upper16:.L_MergedGlobals.4
	vldr	d17, [r5, #64]
	.loc	1 74 3                  @ ./libraries/Biquad/Biquad.h:74:3
	mov	r0, r5
.Ltmp177:
	.loc	2 108 19                @ /root/Bela/projects/Thesis/Filters.cpp:108:19
	vcvt.f64.f32	d16, s0
.Ltmp178:
	@DEBUG_VALUE: setFc:Fc <- %D16
	.loc	1 73 16                 @ ./libraries/Biquad/Biquad.h:73:16
	vdiv.f64	d16, d16, d17
.Ltmp179:
	vmov.f32	s16, s1
.Ltmp180:
	@DEBUG_VALUE: render_lowandhighpass:audio_r <- %S16
	.loc	1 73 12 is_stmt 0       @ ./libraries/Biquad/Biquad.h:73:12
	vstr	d16, [r5, #40]
	.loc	1 74 3 is_stmt 1        @ ./libraries/Biquad/Biquad.h:74:3
	bl	_ZN12BiquadCoeffTIdE4calcEv
.Ltmp181:
	.loc	2 109 18                @ /root/Bela/projects/Thesis/Filters.cpp:109:18
	vldr	s0, [r6, #12]
.Ltmp182:
	.loc	1 73 23                 @ ./libraries/Biquad/Biquad.h:73:23
	movw	r4, :lower16:.L_MergedGlobals.2
	movt	r4, :upper16:.L_MergedGlobals.2
.Ltmp183:
	.loc	2 109 18                @ /root/Bela/projects/Thesis/Filters.cpp:109:18
	vcvt.f64.f32	d16, s0
.Ltmp184:
	@DEBUG_VALUE: setFc:Fc <- %D16
	.loc	1 74 3                  @ ./libraries/Biquad/Biquad.h:74:3
	mov	r0, r4
	.loc	1 73 23                 @ ./libraries/Biquad/Biquad.h:73:23
	vldr	d17, [r4, #64]
	.loc	1 73 16 is_stmt 0       @ ./libraries/Biquad/Biquad.h:73:16
	vdiv.f64	d16, d16, d17
.Ltmp185:
	.loc	1 73 12                 @ ./libraries/Biquad/Biquad.h:73:12
	vstr	d16, [r4, #40]
	.loc	1 74 3 is_stmt 1        @ ./libraries/Biquad/Biquad.h:74:3
	bl	_ZN12BiquadCoeffTIdE4calcEv
.Ltmp186:
	.loc	2 110 31                @ /root/Bela/projects/Thesis/Filters.cpp:110:31
	vcvt.f64.f32	d16, s18
.Ltmp187:
	@DEBUG_VALUE: process:in <- %D16
	.loc	1 110 23 is_stmt 0      @ ./libraries/Biquad/Biquad.h:110:23
	vldmia	r5, {d17, d18}
	.loc	1 110 21                @ ./libraries/Biquad/Biquad.h:110:21
	vmul.f64	d17, d17, d16
	.loc	1 110 28                @ ./libraries/Biquad/Biquad.h:110:28
	vldr	d20, [r5, #80]
	.loc	1 111 11 is_stmt 1      @ ./libraries/Biquad/Biquad.h:111:11
	vmul.f64	d18, d18, d16
	.loc	1 110 26                @ ./libraries/Biquad/Biquad.h:110:26
	vadd.f64	d17, d17, d20
.Ltmp188:
	@DEBUG_VALUE: process:out <- %D17
	.loc	1 111 23                @ ./libraries/Biquad/Biquad.h:111:23
	vldr	d19, [r5, #24]
	.loc	1 111 18 is_stmt 0      @ ./libraries/Biquad/Biquad.h:111:18
	vldr	d21, [r5, #88]
	.loc	1 111 26                @ ./libraries/Biquad/Biquad.h:111:26
	vmul.f64	d19, d19, d17
	.loc	1 111 16                @ ./libraries/Biquad/Biquad.h:111:16
	vadd.f64	d18, d18, d21
	.loc	1 111 21                @ ./libraries/Biquad/Biquad.h:111:21
	vsub.f64	d18, d18, d19
	.loc	1 111 6                 @ ./libraries/Biquad/Biquad.h:111:6
	vstr	d18, [r5, #80]
	.loc	1 112 18 is_stmt 1      @ ./libraries/Biquad/Biquad.h:112:18
	vldr	d19, [r5, #32]
	.loc	1 112 13 is_stmt 0      @ ./libraries/Biquad/Biquad.h:112:13
	vldr	d18, [r5, #16]
	.loc	1 112 21                @ ./libraries/Biquad/Biquad.h:112:21
	vmul.f64	d19, d19, d17
	.loc	1 112 11                @ ./libraries/Biquad/Biquad.h:112:11
	vmul.f64	d16, d18, d16
.Ltmp189:
	.loc	2 110 13 is_stmt 1      @ /root/Bela/projects/Thesis/Filters.cpp:110:13
	vcvt.f32.f64	s0, d17
.Ltmp190:
	@DEBUG_VALUE: render_lowandhighpass:audio_l <- %S0
	.loc	1 112 16                @ ./libraries/Biquad/Biquad.h:112:16
	vsub.f64	d16, d16, d19
.Ltmp191:
	.loc	2 111 30                @ /root/Bela/projects/Thesis/Filters.cpp:111:30
	vcvt.f64.f32	d17, s0
.Ltmp192:
	.loc	1 112 6                 @ ./libraries/Biquad/Biquad.h:112:6
	vstr	d16, [r5, #88]
.Ltmp193:
	@DEBUG_VALUE: process:in <- %D17
	.loc	1 73 23                 @ ./libraries/Biquad/Biquad.h:73:23
	movw	r5, :lower16:.L_MergedGlobals.5
.Ltmp194:
	.loc	1 110 23                @ ./libraries/Biquad/Biquad.h:110:23
	vldr	d16, [r4]
.Ltmp195:
	.loc	1 73 23                 @ ./libraries/Biquad/Biquad.h:73:23
	movt	r5, :upper16:.L_MergedGlobals.5
.Ltmp196:
	.loc	1 111 13                @ ./libraries/Biquad/Biquad.h:111:13
	vldr	d18, [r4, #8]
.Ltmp197:
	.loc	1 74 3                  @ ./libraries/Biquad/Biquad.h:74:3
	mov	r0, r5
.Ltmp198:
	.loc	1 110 21                @ ./libraries/Biquad/Biquad.h:110:21
	vmul.f64	d16, d16, d17
	.loc	1 110 28 is_stmt 0      @ ./libraries/Biquad/Biquad.h:110:28
	vldr	d20, [r4, #80]
	.loc	1 111 11 is_stmt 1      @ ./libraries/Biquad/Biquad.h:111:11
	vmul.f64	d18, d18, d17
	.loc	1 110 26                @ ./libraries/Biquad/Biquad.h:110:26
	vadd.f64	d16, d16, d20
.Ltmp199:
	@DEBUG_VALUE: process:out <- %D16
	.loc	1 111 23                @ ./libraries/Biquad/Biquad.h:111:23
	vldr	d19, [r4, #24]
	.loc	1 111 18 is_stmt 0      @ ./libraries/Biquad/Biquad.h:111:18
	vldr	d21, [r4, #88]
	.loc	1 111 26                @ ./libraries/Biquad/Biquad.h:111:26
	vmul.f64	d19, d19, d16
	.loc	1 111 16                @ ./libraries/Biquad/Biquad.h:111:16
	vadd.f64	d18, d18, d21
	.loc	1 111 21                @ ./libraries/Biquad/Biquad.h:111:21
	vsub.f64	d18, d18, d19
	.loc	1 111 6                 @ ./libraries/Biquad/Biquad.h:111:6
	vstr	d18, [r4, #80]
	.loc	1 112 13 is_stmt 1      @ ./libraries/Biquad/Biquad.h:112:13
	vldr	d18, [r4, #16]
	.loc	1 112 18 is_stmt 0      @ ./libraries/Biquad/Biquad.h:112:18
	vldr	d19, [r4, #32]
	.loc	1 112 11                @ ./libraries/Biquad/Biquad.h:112:11
	vmul.f64	d17, d18, d17
.Ltmp200:
	.loc	1 112 21                @ ./libraries/Biquad/Biquad.h:112:21
	vmul.f64	d16, d19, d16
.Ltmp201:
	.loc	1 112 16                @ ./libraries/Biquad/Biquad.h:112:16
	vsub.f64	d16, d17, d16
.Ltmp202:
	.loc	2 113 19 is_stmt 1      @ /root/Bela/projects/Thesis/Filters.cpp:113:19
	vldr	s0, [r6, #16]
.Ltmp203:
	.loc	1 112 6                 @ ./libraries/Biquad/Biquad.h:112:6
	vstr	d16, [r4, #88]
.Ltmp204:
	.loc	2 113 19                @ /root/Bela/projects/Thesis/Filters.cpp:113:19
	vcvt.f64.f32	d16, s0
.Ltmp205:
	@DEBUG_VALUE: setFc:Fc <- %D16
	.loc	1 73 23                 @ ./libraries/Biquad/Biquad.h:73:23
	vldr	d17, [r5, #64]
	.loc	1 73 16 is_stmt 0       @ ./libraries/Biquad/Biquad.h:73:16
	vdiv.f64	d16, d16, d17
.Ltmp206:
	.loc	1 73 12                 @ ./libraries/Biquad/Biquad.h:73:12
	vstr	d16, [r5, #40]
	.loc	1 74 3 is_stmt 1        @ ./libraries/Biquad/Biquad.h:74:3
	bl	_ZN12BiquadCoeffTIdE4calcEv
.Ltmp207:
	.loc	2 114 18                @ /root/Bela/projects/Thesis/Filters.cpp:114:18
	vldr	s0, [r6, #12]
.Ltmp208:
	.loc	1 74 3                  @ ./libraries/Biquad/Biquad.h:74:3
	mov	r0, r4
	.loc	1 73 23                 @ ./libraries/Biquad/Biquad.h:73:23
	vldr	d17, [r4, #64]
.Ltmp209:
	.loc	2 114 18                @ /root/Bela/projects/Thesis/Filters.cpp:114:18
	vcvt.f64.f32	d16, s0
.Ltmp210:
	@DEBUG_VALUE: setFc:Fc <- %D16
	.loc	1 73 16                 @ ./libraries/Biquad/Biquad.h:73:16
	vdiv.f64	d16, d16, d17
.Ltmp211:
	.loc	1 73 12 is_stmt 0       @ ./libraries/Biquad/Biquad.h:73:12
	vstr	d16, [r4, #40]
	.loc	1 74 3 is_stmt 1        @ ./libraries/Biquad/Biquad.h:74:3
	bl	_ZN12BiquadCoeffTIdE4calcEv
.Ltmp212:
	.loc	2 115 31                @ /root/Bela/projects/Thesis/Filters.cpp:115:31
	vcvt.f64.f32	d16, s16
.Ltmp213:
	@DEBUG_VALUE: process:in <- %D16
	.loc	1 110 23                @ ./libraries/Biquad/Biquad.h:110:23
	movw	r0, :lower16:.L_MergedGlobals.3
	movt	r0, :upper16:.L_MergedGlobals.3
.Ltmp214:
	.loc	1 110 23 is_stmt 0      @ ./libraries/Biquad/Biquad.h:110:23
	vldmia	r5, {d17, d18}
	.loc	1 110 21                @ ./libraries/Biquad/Biquad.h:110:21
	vmul.f64	d17, d17, d16
	.loc	1 110 28                @ ./libraries/Biquad/Biquad.h:110:28
	vldr	d20, [r5, #80]
	.loc	1 111 11 is_stmt 1      @ ./libraries/Biquad/Biquad.h:111:11
	vmul.f64	d18, d18, d16
	.loc	1 110 26                @ ./libraries/Biquad/Biquad.h:110:26
	vadd.f64	d17, d17, d20
.Ltmp215:
	@DEBUG_VALUE: process:out <- %D17
	.loc	1 111 23                @ ./libraries/Biquad/Biquad.h:111:23
	vldr	d19, [r5, #24]
	.loc	1 111 18 is_stmt 0      @ ./libraries/Biquad/Biquad.h:111:18
	vldr	d21, [r5, #88]
	.loc	1 111 26                @ ./libraries/Biquad/Biquad.h:111:26
	vmul.f64	d19, d19, d17
	.loc	1 111 16                @ ./libraries/Biquad/Biquad.h:111:16
	vadd.f64	d18, d18, d21
	.loc	1 111 21                @ ./libraries/Biquad/Biquad.h:111:21
	vsub.f64	d18, d18, d19
	.loc	1 111 6                 @ ./libraries/Biquad/Biquad.h:111:6
	vstr	d18, [r5, #80]
	.loc	1 112 18 is_stmt 1      @ ./libraries/Biquad/Biquad.h:112:18
	vldr	d19, [r5, #32]
	.loc	1 112 13 is_stmt 0      @ ./libraries/Biquad/Biquad.h:112:13
	vldr	d18, [r5, #16]
	.loc	1 112 21                @ ./libraries/Biquad/Biquad.h:112:21
	vmul.f64	d19, d19, d17
	.loc	1 112 11                @ ./libraries/Biquad/Biquad.h:112:11
	vmul.f64	d16, d18, d16
.Ltmp216:
	.loc	2 115 13 is_stmt 1      @ /root/Bela/projects/Thesis/Filters.cpp:115:13
	vcvt.f32.f64	s0, d17
.Ltmp217:
	@DEBUG_VALUE: render_lowandhighpass:audio_r <- %S0
	.loc	1 112 16                @ ./libraries/Biquad/Biquad.h:112:16
	vsub.f64	d16, d16, d19
.Ltmp218:
	.loc	2 116 30                @ /root/Bela/projects/Thesis/Filters.cpp:116:30
	vcvt.f64.f32	d17, s0
.Ltmp219:
	.loc	1 112 6                 @ ./libraries/Biquad/Biquad.h:112:6
	vstr	d16, [r5, #88]
.Ltmp220:
	@DEBUG_VALUE: process:in <- %D17
	.loc	1 110 23                @ ./libraries/Biquad/Biquad.h:110:23
	vldr	d16, [r0]
	.loc	1 111 13                @ ./libraries/Biquad/Biquad.h:111:13
	vldr	d18, [r0, #8]
	.loc	1 110 21                @ ./libraries/Biquad/Biquad.h:110:21
	vmul.f64	d16, d16, d17
	.loc	1 110 28 is_stmt 0      @ ./libraries/Biquad/Biquad.h:110:28
	vldr	d20, [r0, #80]
	.loc	1 111 11 is_stmt 1      @ ./libraries/Biquad/Biquad.h:111:11
	vmul.f64	d18, d18, d17
	.loc	1 110 26                @ ./libraries/Biquad/Biquad.h:110:26
	vadd.f64	d16, d16, d20
.Ltmp221:
	@DEBUG_VALUE: process:out <- %D16
	.loc	1 111 23                @ ./libraries/Biquad/Biquad.h:111:23
	vldr	d19, [r0, #24]
	.loc	1 111 18 is_stmt 0      @ ./libraries/Biquad/Biquad.h:111:18
	vldr	d21, [r0, #88]
	.loc	1 111 26                @ ./libraries/Biquad/Biquad.h:111:26
	vmul.f64	d19, d19, d16
	.loc	1 111 16                @ ./libraries/Biquad/Biquad.h:111:16
	vadd.f64	d18, d18, d21
	.loc	1 111 21                @ ./libraries/Biquad/Biquad.h:111:21
	vsub.f64	d18, d18, d19
	.loc	1 111 6                 @ ./libraries/Biquad/Biquad.h:111:6
	vstr	d18, [r0, #80]
	.loc	1 112 13 is_stmt 1      @ ./libraries/Biquad/Biquad.h:112:13
	vldr	d18, [r0, #16]
	.loc	1 112 18 is_stmt 0      @ ./libraries/Biquad/Biquad.h:112:18
	vldr	d19, [r0, #32]
	.loc	1 112 11                @ ./libraries/Biquad/Biquad.h:112:11
	vmul.f64	d17, d18, d17
.Ltmp222:
	.loc	1 112 21                @ ./libraries/Biquad/Biquad.h:112:21
	vmul.f64	d16, d19, d16
.Ltmp223:
	.loc	1 112 16                @ ./libraries/Biquad/Biquad.h:112:16
	vsub.f64	d16, d17, d16
	.loc	1 112 6                 @ ./libraries/Biquad/Biquad.h:112:6
	vstr	d16, [r0, #88]
.Ltmp224:
	@DEBUG_VALUE: setFc:this <- %R5
	@DEBUG_VALUE: setFc:this <- %R4
	@DEBUG_VALUE: setFc:this <- %R4
	@DEBUG_VALUE: setFc:this <- %R5
	.loc	2 117 1 is_stmt 1       @ /root/Bela/projects/Thesis/Filters.cpp:117:1
	vpop	{d8, d9}
	pop	{r4, r5, r6, r10, r11, pc}
.Ltmp225:
.Lfunc_end4:
	.size	_Z21render_lowandhighpassff, .Lfunc_end4-_Z21render_lowandhighpassff
	.cfi_endproc
	.fnend

	.type	.L_MergedGlobals,%object @ @_MergedGlobals
	.data
	.p2align	4
.L_MergedGlobals:
	.long	1140457472              @ float 500
	.long	1065353216              @ float 1
	.long	1194083328              @ float 44100
	.long	1157234688              @ float 2000
	.long	1120403456              @ float 100
	.zero	4
	.zero	96
	.size	.L_MergedGlobals, 120

	.type	.L_MergedGlobals.1,%object @ @_MergedGlobals.1
	.local	.L_MergedGlobals.1
	.comm	.L_MergedGlobals.1,96,16
	.type	.L_MergedGlobals.2,%object @ @_MergedGlobals.2
	.local	.L_MergedGlobals.2
	.comm	.L_MergedGlobals.2,96,16
	.type	.L_MergedGlobals.3,%object @ @_MergedGlobals.3
	.local	.L_MergedGlobals.3
	.comm	.L_MergedGlobals.3,96,16
	.type	.L_MergedGlobals.4,%object @ @_MergedGlobals.4
	.local	.L_MergedGlobals.4
	.comm	.L_MergedGlobals.4,96,16
	.type	.L_MergedGlobals.5,%object @ @_MergedGlobals.5
	.local	.L_MergedGlobals.5
	.comm	.L_MergedGlobals.5,96,16
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)" @ string offset=0
.Linfo_string1:
	.asciz	"/root/Bela/projects/Thesis/build/Filters.cpp" @ string offset=45
.Linfo_string2:
	.asciz	"/root/Bela"            @ string offset=90
.Linfo_string3:
	.asciz	"bandpassL"             @ string offset=101
.Linfo_string4:
	.asciz	"BiquadCoeffT<double>"  @ string offset=111
.Linfo_string5:
	.asciz	"z1"                    @ string offset=132
.Linfo_string6:
	.asciz	"double"                @ string offset=135
.Linfo_string7:
	.asciz	"sample_t"              @ string offset=142
.Linfo_string8:
	.asciz	"z2"                    @ string offset=151
.Linfo_string9:
	.asciz	"Biquad"                @ string offset=154
.Linfo_string10:
	.asciz	"BiquadCoeff"           @ string offset=161
.Linfo_string11:
	.asciz	"fs"                    @ string offset=173
.Linfo_string12:
	.asciz	"type"                  @ string offset=176
.Linfo_string13:
	.asciz	"lowpass"               @ string offset=181
.Linfo_string14:
	.asciz	"highpass"              @ string offset=189
.Linfo_string15:
	.asciz	"bandpass"              @ string offset=198
.Linfo_string16:
	.asciz	"notch"                 @ string offset=207
.Linfo_string17:
	.asciz	"peak"                  @ string offset=213
.Linfo_string18:
	.asciz	"lowshelf"              @ string offset=218
.Linfo_string19:
	.asciz	"highshelf"             @ string offset=227
.Linfo_string20:
	.asciz	"Type"                  @ string offset=237
.Linfo_string21:
	.asciz	"cutoff"                @ string offset=242
.Linfo_string22:
	.asciz	"q"                     @ string offset=249
.Linfo_string23:
	.asciz	"peakGainDb"            @ string offset=251
.Linfo_string24:
	.asciz	"Settings"              @ string offset=262
.Linfo_string25:
	.asciz	"_ZN6Biquad7processEd"  @ string offset=271
.Linfo_string26:
	.asciz	"process"               @ string offset=292
.Linfo_string27:
	.asciz	"_ZN6Biquad5cleanEv"    @ string offset=300
.Linfo_string28:
	.asciz	"clean"                 @ string offset=319
.Linfo_string29:
	.asciz	"bandpassR"             @ string offset=325
.Linfo_string30:
	.asciz	"lowpassL"              @ string offset=335
.Linfo_string31:
	.asciz	"lowpassR"              @ string offset=344
.Linfo_string32:
	.asciz	"highpassL"             @ string offset=353
.Linfo_string33:
	.asciz	"highpassR"             @ string offset=363
.Linfo_string34:
	.asciz	"bpCutoff"              @ string offset=373
.Linfo_string35:
	.asciz	"float"                 @ string offset=382
.Linfo_string36:
	.asciz	"gFilterQ"              @ string offset=388
.Linfo_string37:
	.asciz	"kSampleRate"           @ string offset=397
.Linfo_string38:
	.asciz	"lpCutoff"              @ string offset=409
.Linfo_string39:
	.asciz	"hpCutoff"              @ string offset=418
.Linfo_string40:
	.asciz	"_ZN12BiquadCoeffTIdE5setupERKN11BiquadCoeff8SettingsE" @ string offset=427
.Linfo_string41:
	.asciz	"setup"                 @ string offset=481
.Linfo_string42:
	.asciz	"int"                   @ string offset=487
.Linfo_string43:
	.asciz	"this"                  @ string offset=491
.Linfo_string44:
	.asciz	"settings"              @ string offset=496
.Linfo_string45:
	.asciz	"_ZN12BiquadCoeffTIdE5setFcEd" @ string offset=505
.Linfo_string46:
	.asciz	"setFc"                 @ string offset=534
.Linfo_string47:
	.asciz	"Fc"                    @ string offset=540
.Linfo_string48:
	.asciz	"in"                    @ string offset=543
.Linfo_string49:
	.asciz	"out"                   @ string offset=546
.Linfo_string50:
	.asciz	"_Z18initialize_filtersv" @ string offset=550
.Linfo_string51:
	.asciz	"initialize_filters"    @ string offset=574
.Linfo_string52:
	.asciz	"bool"                  @ string offset=593
.Linfo_string53:
	.asciz	"_Z15render_bandpassff" @ string offset=598
.Linfo_string54:
	.asciz	"render_bandpass"       @ string offset=620
.Linfo_string55:
	.asciz	"_Z14render_lowpassff"  @ string offset=636
.Linfo_string56:
	.asciz	"render_lowpass"        @ string offset=657
.Linfo_string57:
	.asciz	"_Z15render_highpassff" @ string offset=672
.Linfo_string58:
	.asciz	"render_highpass"       @ string offset=694
.Linfo_string59:
	.asciz	"_Z21render_lowandhighpassff" @ string offset=710
.Linfo_string60:
	.asciz	"render_lowandhighpass" @ string offset=738
.Linfo_string61:
	.asciz	"BPsettings"            @ string offset=760
.Linfo_string62:
	.asciz	"LPsettings"            @ string offset=771
.Linfo_string63:
	.asciz	"HPsettings"            @ string offset=782
.Linfo_string64:
	.asciz	"audio_l"               @ string offset=793
.Linfo_string65:
	.asciz	"audio_r"               @ string offset=801
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
	.long	.Ltmp14-.Lfunc_begin0
	.long	.Ltmp24-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc1:
	.long	.Ltmp52-.Lfunc_begin0
	.long	.Ltmp53-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc2:
	.long	.Ltmp54-.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc3:
	.long	.Ltmp54-.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc4:
	.long	.Ltmp54-.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc5:
	.long	.Ltmp54-.Lfunc_begin0
	.long	.Lfunc_end0-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc6:
	.long	.Lfunc_begin1-.Lfunc_begin0
	.long	.Ltmp65-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	.Ltmp65-.Lfunc_begin0
	.long	.Ltmp88-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	137                     @ 265
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc7:
	.long	.Lfunc_begin1-.Lfunc_begin0
	.long	.Ltmp68-.Lfunc_begin0
	.short	8                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_constu
	.byte	16                      @ 32
	.byte	32                      @ DW_OP_shr
	.byte	37                      @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	.Ltmp68-.Lfunc_begin0
	.long	.Ltmp88-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	136                     @ 264
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc8:
	.long	.Ltmp67-.Lfunc_begin0
	.long	.Ltmp72-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc9:
	.long	.Ltmp67-.Lfunc_begin0
	.long	.Ltmp72-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc10:
	.long	.Ltmp70-.Lfunc_begin0
	.long	.Ltmp71-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	144                     @ DW_OP_regx
	.byte	144                     @ 272
	.byte	2                       @ 
	.long	0
	.long	0
.Ldebug_loc11:
	.long	.Ltmp73-.Lfunc_begin0
	.long	.Ltmp75-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	144                     @ DW_OP_regx
	.byte	144                     @ 272
	.byte	2                       @ 
	.long	0
	.long	0
.Ldebug_loc12:
	.long	.Ltmp74-.Lfunc_begin0
	.long	.Ltmp76-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	144                     @ DW_OP_regx
	.byte	145                     @ 273
	.byte	2                       @ 
	.long	0
	.long	0
.Ldebug_loc13:
	.long	.Ltmp80-.Lfunc_begin0
	.long	.Ltmp81-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	144                     @ DW_OP_regx
	.byte	144                     @ 272
	.byte	2                       @ 
	.long	0
	.long	0
.Ldebug_loc14:
	.long	.Ltmp83-.Lfunc_begin0
	.long	.Ltmp85-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	144                     @ DW_OP_regx
	.byte	144                     @ 272
	.byte	2                       @ 
	.long	0
	.long	0
.Ldebug_loc15:
	.long	.Ltmp84-.Lfunc_begin0
	.long	.Ltmp86-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	144                     @ DW_OP_regx
	.byte	145                     @ 273
	.byte	2                       @ 
	.long	0
	.long	0
.Ldebug_loc16:
	.long	.Ltmp87-.Lfunc_begin0
	.long	.Ltmp89-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc17:
	.long	.Lfunc_begin2-.Lfunc_begin0
	.long	.Ltmp99-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	.Ltmp99-.Lfunc_begin0
	.long	.Ltmp124-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	137                     @ 265
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc18:
	.long	.Lfunc_begin2-.Lfunc_begin0
	.long	.Ltmp106-.Lfunc_begin0
	.short	8                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_constu
	.byte	16                      @ 32
	.byte	32                      @ DW_OP_shr
	.byte	37                      @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	.Ltmp106-.Lfunc_begin0
	.long	.Ltmp124-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	136                     @ 264
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc19:
	.long	.Ltmp104-.Lfunc_begin0
	.long	.Ltmp105-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	144                     @ DW_OP_regx
	.byte	144                     @ 272
	.byte	2                       @ 
	.long	0
	.long	0
.Ldebug_loc20:
	.long	.Ltmp108-.Lfunc_begin0
	.long	.Ltmp110-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	144                     @ DW_OP_regx
	.byte	144                     @ 272
	.byte	2                       @ 
	.long	0
	.long	0
.Ldebug_loc21:
	.long	.Ltmp109-.Lfunc_begin0
	.long	.Ltmp111-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	144                     @ DW_OP_regx
	.byte	145                     @ 273
	.byte	2                       @ 
	.long	0
	.long	0
.Ldebug_loc22:
	.long	.Ltmp116-.Lfunc_begin0
	.long	.Ltmp117-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	144                     @ DW_OP_regx
	.byte	144                     @ 272
	.byte	2                       @ 
	.long	0
	.long	0
.Ldebug_loc23:
	.long	.Ltmp119-.Lfunc_begin0
	.long	.Ltmp121-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	144                     @ DW_OP_regx
	.byte	144                     @ 272
	.byte	2                       @ 
	.long	0
	.long	0
.Ldebug_loc24:
	.long	.Ltmp120-.Lfunc_begin0
	.long	.Ltmp122-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	144                     @ DW_OP_regx
	.byte	145                     @ 273
	.byte	2                       @ 
	.long	0
	.long	0
.Ldebug_loc25:
	.long	.Ltmp123-.Lfunc_begin0
	.long	.Ltmp125-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc26:
	.long	.Ltmp123-.Lfunc_begin0
	.long	.Ltmp125-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc27:
	.long	.Lfunc_begin3-.Lfunc_begin0
	.long	.Ltmp135-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	.Ltmp135-.Lfunc_begin0
	.long	.Ltmp160-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	137                     @ 265
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc28:
	.long	.Lfunc_begin3-.Lfunc_begin0
	.long	.Ltmp142-.Lfunc_begin0
	.short	8                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_constu
	.byte	16                      @ 32
	.byte	32                      @ DW_OP_shr
	.byte	37                      @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	.Ltmp142-.Lfunc_begin0
	.long	.Ltmp160-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	136                     @ 264
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc29:
	.long	.Ltmp140-.Lfunc_begin0
	.long	.Ltmp141-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	144                     @ DW_OP_regx
	.byte	144                     @ 272
	.byte	2                       @ 
	.long	0
	.long	0
.Ldebug_loc30:
	.long	.Ltmp144-.Lfunc_begin0
	.long	.Ltmp146-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	144                     @ DW_OP_regx
	.byte	144                     @ 272
	.byte	2                       @ 
	.long	0
	.long	0
.Ldebug_loc31:
	.long	.Ltmp145-.Lfunc_begin0
	.long	.Ltmp147-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	144                     @ DW_OP_regx
	.byte	145                     @ 273
	.byte	2                       @ 
	.long	0
	.long	0
.Ldebug_loc32:
	.long	.Ltmp152-.Lfunc_begin0
	.long	.Ltmp153-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	144                     @ DW_OP_regx
	.byte	144                     @ 272
	.byte	2                       @ 
	.long	0
	.long	0
.Ldebug_loc33:
	.long	.Ltmp155-.Lfunc_begin0
	.long	.Ltmp157-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	144                     @ DW_OP_regx
	.byte	144                     @ 272
	.byte	2                       @ 
	.long	0
	.long	0
.Ldebug_loc34:
	.long	.Ltmp156-.Lfunc_begin0
	.long	.Ltmp158-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	144                     @ DW_OP_regx
	.byte	145                     @ 273
	.byte	2                       @ 
	.long	0
	.long	0
.Ldebug_loc35:
	.long	.Ltmp159-.Lfunc_begin0
	.long	.Ltmp161-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc36:
	.long	.Ltmp159-.Lfunc_begin0
	.long	.Ltmp161-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc37:
	.long	.Lfunc_begin4-.Lfunc_begin0
	.long	.Ltmp173-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	.Ltmp173-.Lfunc_begin0
	.long	.Ltmp190-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	137                     @ 265
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	.Ltmp190-.Lfunc_begin0
	.long	.Ltmp203-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc38:
	.long	.Lfunc_begin4-.Lfunc_begin0
	.long	.Ltmp180-.Lfunc_begin0
	.short	8                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_constu
	.byte	16                      @ 32
	.byte	32                      @ DW_OP_shr
	.byte	37                      @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	.Ltmp180-.Lfunc_begin0
	.long	.Ltmp217-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	136                     @ 264
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	.Ltmp217-.Lfunc_begin0
	.long	.Lfunc_end4-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc39:
	.long	.Ltmp178-.Lfunc_begin0
	.long	.Ltmp179-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	144                     @ DW_OP_regx
	.byte	144                     @ 272
	.byte	2                       @ 
	.long	0
	.long	0
.Ldebug_loc40:
	.long	.Ltmp184-.Lfunc_begin0
	.long	.Ltmp185-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	144                     @ DW_OP_regx
	.byte	144                     @ 272
	.byte	2                       @ 
	.long	0
	.long	0
.Ldebug_loc41:
	.long	.Ltmp187-.Lfunc_begin0
	.long	.Ltmp189-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	144                     @ DW_OP_regx
	.byte	144                     @ 272
	.byte	2                       @ 
	.long	0
	.long	0
.Ldebug_loc42:
	.long	.Ltmp188-.Lfunc_begin0
	.long	.Ltmp192-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	144                     @ DW_OP_regx
	.byte	145                     @ 273
	.byte	2                       @ 
	.long	0
	.long	0
.Ldebug_loc43:
	.long	.Ltmp193-.Lfunc_begin0
	.long	.Ltmp200-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	144                     @ DW_OP_regx
	.byte	145                     @ 273
	.byte	2                       @ 
	.long	0
	.long	0
.Ldebug_loc44:
	.long	.Ltmp199-.Lfunc_begin0
	.long	.Ltmp201-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	144                     @ DW_OP_regx
	.byte	144                     @ 272
	.byte	2                       @ 
	.long	0
	.long	0
.Ldebug_loc45:
	.long	.Ltmp205-.Lfunc_begin0
	.long	.Ltmp206-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	144                     @ DW_OP_regx
	.byte	144                     @ 272
	.byte	2                       @ 
	.long	0
	.long	0
.Ldebug_loc46:
	.long	.Ltmp210-.Lfunc_begin0
	.long	.Ltmp211-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	144                     @ DW_OP_regx
	.byte	144                     @ 272
	.byte	2                       @ 
	.long	0
	.long	0
.Ldebug_loc47:
	.long	.Ltmp213-.Lfunc_begin0
	.long	.Ltmp216-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	144                     @ DW_OP_regx
	.byte	144                     @ 272
	.byte	2                       @ 
	.long	0
	.long	0
.Ldebug_loc48:
	.long	.Ltmp215-.Lfunc_begin0
	.long	.Ltmp219-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	144                     @ DW_OP_regx
	.byte	145                     @ 273
	.byte	2                       @ 
	.long	0
	.long	0
.Ldebug_loc49:
	.long	.Ltmp220-.Lfunc_begin0
	.long	.Ltmp222-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	144                     @ DW_OP_regx
	.byte	145                     @ 273
	.byte	2                       @ 
	.long	0
	.long	0
.Ldebug_loc50:
	.long	.Ltmp221-.Lfunc_begin0
	.long	.Ltmp223-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	144                     @ DW_OP_regx
	.byte	144                     @ 272
	.byte	2                       @ 
	.long	0
	.long	0
.Ldebug_loc51:
	.long	.Ltmp224-.Lfunc_begin0
	.long	.Ltmp225-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	85                      @ DW_OP_reg5
	.long	0
	.long	0
.Ldebug_loc52:
	.long	.Ltmp224-.Lfunc_begin0
	.long	.Ltmp225-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc53:
	.long	.Ltmp224-.Lfunc_begin0
	.long	.Ltmp225-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc54:
	.long	.Ltmp224-.Lfunc_begin0
	.long	.Ltmp225-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	85                      @ DW_OP_reg5
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
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	2                       @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	2                       @ DW_AT_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	3                       @ Abbreviation Code
	.byte	2                       @ DW_TAG_class_type
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
	.byte	4                       @ Abbreviation Code
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
	.byte	11                      @ DW_FORM_data1
	.byte	56                      @ DW_AT_data_member_location
	.byte	11                      @ DW_FORM_data1
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	6                       @ Abbreviation Code
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
	.byte	7                       @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	8                       @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	9                       @ Abbreviation Code
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
	.byte	10                      @ Abbreviation Code
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
	.byte	11                      @ Abbreviation Code
	.byte	2                       @ DW_TAG_class_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	12                      @ Abbreviation Code
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
	.byte	13                      @ Abbreviation Code
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
	.byte	14                      @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	15                      @ Abbreviation Code
	.byte	16                      @ DW_TAG_reference_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	16                      @ Abbreviation Code
	.byte	38                      @ DW_TAG_const_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	17                      @ Abbreviation Code
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
	.byte	18                      @ Abbreviation Code
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
	.byte	19                      @ Abbreviation Code
	.byte	4                       @ DW_TAG_enumeration_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	20                      @ Abbreviation Code
	.byte	40                      @ DW_TAG_enumerator
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	28                      @ DW_AT_const_value
	.byte	13                      @ DW_FORM_sdata
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	21                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	71                      @ DW_AT_specification
	.byte	19                      @ DW_FORM_ref4
	.byte	32                      @ DW_AT_inline
	.byte	11                      @ DW_FORM_data1
	.byte	100                     @ DW_AT_object_pointer
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	22                      @ Abbreviation Code
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
	.byte	23                      @ Abbreviation Code
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
	.byte	24                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
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
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	25                      @ Abbreviation Code
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
	.byte	26                      @ Abbreviation Code
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
	.byte	27                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	23                      @ DW_FORM_sec_offset
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	28                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	29                      @ Abbreviation Code
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
	.byte	30                      @ Abbreviation Code
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
	.byte	31                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	23                      @ DW_FORM_sec_offset
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	0                       @ EOM(3)
	.section	.debug_info,"",%progbits
.Lsection_info:
.Lcu_begin0:
	.long	1759                    @ Length of Unit
	.short	4                       @ DWARF version number
	.long	.Lsection_abbrev        @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0x6d8 DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	4                       @ DW_AT_language
	.long	.Linfo_string1          @ DW_AT_name
	.long	.Lline_table_start0     @ DW_AT_stmt_list
	.long	.Linfo_string2          @ DW_AT_comp_dir
	.long	.Lfunc_begin0           @ DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin0 @ DW_AT_high_pc
	.byte	2                       @ Abbrev [2] 0x26:0x14 DW_TAG_variable
	.long	.Linfo_string3          @ DW_AT_name
	.long	58                      @ DW_AT_type
                                        @ DW_AT_external
	.byte	2                       @ DW_AT_decl_file
	.byte	10                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals
	.byte	16
	.byte	24
	.byte	34
	.byte	3                       @ Abbrev [3] 0x3a:0x78 DW_TAG_class_type
	.long	.Linfo_string9          @ DW_AT_name
	.byte	96                      @ DW_AT_byte_size
	.byte	1                       @ DW_AT_decl_file
	.byte	99                      @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0x42:0x7 DW_TAG_inheritance
	.long	178                     @ DW_AT_type
	.byte	0                       @ DW_AT_data_member_location
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	5                       @ Abbrev [5] 0x49:0xd DW_TAG_member
	.long	.Linfo_string5          @ DW_AT_name
	.long	184                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	124                     @ DW_AT_decl_line
	.byte	80                      @ DW_AT_data_member_location
	.byte	2                       @ DW_AT_accessibility
                                        @ DW_ACCESS_protected
	.byte	5                       @ Abbrev [5] 0x56:0xd DW_TAG_member
	.long	.Linfo_string8          @ DW_AT_name
	.long	184                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	125                     @ DW_AT_decl_line
	.byte	88                      @ DW_AT_data_member_location
	.byte	2                       @ DW_AT_accessibility
                                        @ DW_ACCESS_protected
	.byte	6                       @ Abbrev [6] 0x63:0xe DW_TAG_subprogram
	.long	.Linfo_string9          @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	101                     @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0x6b:0x5 DW_TAG_formal_parameter
	.long	253                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	6                       @ Abbrev [6] 0x71:0x13 DW_TAG_subprogram
	.long	.Linfo_string9          @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	102                     @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0x79:0x5 DW_TAG_formal_parameter
	.long	253                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	8                       @ Abbrev [8] 0x7e:0x5 DW_TAG_formal_parameter
	.long	258                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0x84:0x1b DW_TAG_subprogram
	.long	.Linfo_string25         @ DW_AT_linkage_name
	.long	.Linfo_string26         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	108                     @ DW_AT_decl_line
	.long	184                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0x94:0x5 DW_TAG_formal_parameter
	.long	253                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	8                       @ Abbrev [8] 0x99:0x5 DW_TAG_formal_parameter
	.long	184                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	10                      @ Abbrev [10] 0x9f:0x12 DW_TAG_subprogram
	.long	.Linfo_string27         @ DW_AT_linkage_name
	.long	.Linfo_string28         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	119                     @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0xab:0x5 DW_TAG_formal_parameter
	.long	253                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	11                      @ Abbrev [11] 0xb2:0x44 DW_TAG_class_type
	.long	.Linfo_string4          @ DW_AT_name
	.byte	80                      @ DW_AT_byte_size
                                        @ DW_AT_declaration
	.byte	12                      @ Abbrev [12] 0xb8:0xb DW_TAG_typedef
	.long	246                     @ DW_AT_type
	.long	.Linfo_string7          @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	50                      @ DW_AT_decl_line
	.byte	9                       @ Abbrev [9] 0xc3:0x1b DW_TAG_subprogram
	.long	.Linfo_string40         @ DW_AT_linkage_name
	.long	.Linfo_string41         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	53                      @ DW_AT_decl_line
	.long	611                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0xd3:0x5 DW_TAG_formal_parameter
	.long	618                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	8                       @ Abbrev [8] 0xd8:0x5 DW_TAG_formal_parameter
	.long	258                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	10                      @ Abbrev [10] 0xde:0x17 DW_TAG_subprogram
	.long	.Linfo_string45         @ DW_AT_linkage_name
	.long	.Linfo_string46         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	72                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	7                       @ Abbrev [7] 0xea:0x5 DW_TAG_formal_parameter
	.long	618                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	8                       @ Abbrev [8] 0xef:0x5 DW_TAG_formal_parameter
	.long	184                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	13                      @ Abbrev [13] 0xf6:0x7 DW_TAG_base_type
	.long	.Linfo_string6          @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	14                      @ Abbrev [14] 0xfd:0x5 DW_TAG_pointer_type
	.long	58                      @ DW_AT_type
	.byte	15                      @ Abbrev [15] 0x102:0x5 DW_TAG_reference_type
	.long	263                     @ DW_AT_type
	.byte	16                      @ Abbrev [16] 0x107:0x5 DW_TAG_const_type
	.long	276                     @ DW_AT_type
	.byte	3                       @ Abbrev [3] 0x10c:0x88 DW_TAG_class_type
	.long	.Linfo_string10         @ DW_AT_name
	.byte	1                       @ DW_AT_byte_size
	.byte	1                       @ DW_AT_decl_file
	.byte	21                      @ DW_AT_decl_line
	.byte	17                      @ Abbrev [17] 0x114:0x45 DW_TAG_structure_type
	.long	.Linfo_string24         @ DW_AT_name
	.byte	40                      @ DW_AT_byte_size
	.byte	1                       @ DW_AT_decl_file
	.byte	34                      @ DW_AT_decl_line
	.byte	18                      @ Abbrev [18] 0x11c:0xc DW_TAG_member
	.long	.Linfo_string11         @ DW_AT_name
	.long	246                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	35                      @ DW_AT_decl_line
	.byte	0                       @ DW_AT_data_member_location
	.byte	18                      @ Abbrev [18] 0x128:0xc DW_TAG_member
	.long	.Linfo_string12         @ DW_AT_name
	.long	345                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	36                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_data_member_location
	.byte	18                      @ Abbrev [18] 0x134:0xc DW_TAG_member
	.long	.Linfo_string21         @ DW_AT_name
	.long	246                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	37                      @ DW_AT_decl_line
	.byte	16                      @ DW_AT_data_member_location
	.byte	18                      @ Abbrev [18] 0x140:0xc DW_TAG_member
	.long	.Linfo_string22         @ DW_AT_name
	.long	246                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	38                      @ DW_AT_decl_line
	.byte	24                      @ DW_AT_data_member_location
	.byte	18                      @ Abbrev [18] 0x14c:0xc DW_TAG_member
	.long	.Linfo_string23         @ DW_AT_name
	.long	246                     @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	39                      @ DW_AT_decl_line
	.byte	32                      @ DW_AT_data_member_location
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x159:0xb DW_TAG_typedef
	.long	356                     @ DW_AT_type
	.long	.Linfo_string20         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	33                      @ DW_AT_decl_line
	.byte	19                      @ Abbrev [19] 0x164:0x2f DW_TAG_enumeration_type
	.byte	4                       @ DW_AT_byte_size
	.byte	1                       @ DW_AT_decl_file
	.byte	24                      @ DW_AT_decl_line
	.byte	20                      @ Abbrev [20] 0x168:0x6 DW_TAG_enumerator
	.long	.Linfo_string13         @ DW_AT_name
	.byte	0                       @ DW_AT_const_value
	.byte	20                      @ Abbrev [20] 0x16e:0x6 DW_TAG_enumerator
	.long	.Linfo_string14         @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	20                      @ Abbrev [20] 0x174:0x6 DW_TAG_enumerator
	.long	.Linfo_string15         @ DW_AT_name
	.byte	2                       @ DW_AT_const_value
	.byte	20                      @ Abbrev [20] 0x17a:0x6 DW_TAG_enumerator
	.long	.Linfo_string16         @ DW_AT_name
	.byte	3                       @ DW_AT_const_value
	.byte	20                      @ Abbrev [20] 0x180:0x6 DW_TAG_enumerator
	.long	.Linfo_string17         @ DW_AT_name
	.byte	4                       @ DW_AT_const_value
	.byte	20                      @ Abbrev [20] 0x186:0x6 DW_TAG_enumerator
	.long	.Linfo_string18         @ DW_AT_name
	.byte	5                       @ DW_AT_const_value
	.byte	20                      @ Abbrev [20] 0x18c:0x6 DW_TAG_enumerator
	.long	.Linfo_string19         @ DW_AT_name
	.byte	6                       @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	2                       @ Abbrev [2] 0x194:0x14 DW_TAG_variable
	.long	.Linfo_string29         @ DW_AT_name
	.long	58                      @ DW_AT_type
                                        @ DW_AT_external
	.byte	2                       @ DW_AT_decl_file
	.byte	11                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals.1
	.byte	16
	.byte	0
	.byte	34
	.byte	2                       @ Abbrev [2] 0x1a8:0x14 DW_TAG_variable
	.long	.Linfo_string30         @ DW_AT_name
	.long	58                      @ DW_AT_type
                                        @ DW_AT_external
	.byte	2                       @ DW_AT_decl_file
	.byte	12                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals.2
	.byte	16
	.byte	0
	.byte	34
	.byte	2                       @ Abbrev [2] 0x1bc:0x14 DW_TAG_variable
	.long	.Linfo_string31         @ DW_AT_name
	.long	58                      @ DW_AT_type
                                        @ DW_AT_external
	.byte	2                       @ DW_AT_decl_file
	.byte	13                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals.3
	.byte	16
	.byte	0
	.byte	34
	.byte	2                       @ Abbrev [2] 0x1d0:0x14 DW_TAG_variable
	.long	.Linfo_string32         @ DW_AT_name
	.long	58                      @ DW_AT_type
                                        @ DW_AT_external
	.byte	2                       @ DW_AT_decl_file
	.byte	14                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals.4
	.byte	16
	.byte	0
	.byte	34
	.byte	2                       @ Abbrev [2] 0x1e4:0x14 DW_TAG_variable
	.long	.Linfo_string33         @ DW_AT_name
	.long	58                      @ DW_AT_type
                                        @ DW_AT_external
	.byte	2                       @ DW_AT_decl_file
	.byte	15                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals.5
	.byte	16
	.byte	0
	.byte	34
	.byte	2                       @ Abbrev [2] 0x1f8:0x14 DW_TAG_variable
	.long	.Linfo_string34         @ DW_AT_name
	.long	524                     @ DW_AT_type
                                        @ DW_AT_external
	.byte	2                       @ DW_AT_decl_file
	.byte	17                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals
	.byte	16
	.byte	0
	.byte	34
	.byte	13                      @ Abbrev [13] 0x20c:0x7 DW_TAG_base_type
	.long	.Linfo_string35         @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	2                       @ Abbrev [2] 0x213:0x14 DW_TAG_variable
	.long	.Linfo_string36         @ DW_AT_name
	.long	524                     @ DW_AT_type
                                        @ DW_AT_external
	.byte	2                       @ DW_AT_decl_file
	.byte	18                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals
	.byte	16
	.byte	4
	.byte	34
	.byte	2                       @ Abbrev [2] 0x227:0x14 DW_TAG_variable
	.long	.Linfo_string37         @ DW_AT_name
	.long	524                     @ DW_AT_type
                                        @ DW_AT_external
	.byte	2                       @ DW_AT_decl_file
	.byte	19                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals
	.byte	16
	.byte	8
	.byte	34
	.byte	2                       @ Abbrev [2] 0x23b:0x14 DW_TAG_variable
	.long	.Linfo_string38         @ DW_AT_name
	.long	524                     @ DW_AT_type
                                        @ DW_AT_external
	.byte	2                       @ DW_AT_decl_file
	.byte	21                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals
	.byte	16
	.byte	12
	.byte	34
	.byte	2                       @ Abbrev [2] 0x24f:0x14 DW_TAG_variable
	.long	.Linfo_string39         @ DW_AT_name
	.long	524                     @ DW_AT_type
                                        @ DW_AT_external
	.byte	2                       @ DW_AT_decl_file
	.byte	22                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals
	.byte	16
	.byte	16
	.byte	34
	.byte	13                      @ Abbrev [13] 0x263:0x7 DW_TAG_base_type
	.long	.Linfo_string42         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	14                      @ Abbrev [14] 0x26a:0x5 DW_TAG_pointer_type
	.long	178                     @ DW_AT_type
	.byte	21                      @ Abbrev [21] 0x26f:0x1f DW_TAG_subprogram
	.long	195                     @ DW_AT_specification
	.byte	1                       @ DW_AT_inline
	.long	633                     @ DW_AT_object_pointer
	.byte	22                      @ Abbrev [22] 0x279:0x9 DW_TAG_formal_parameter
	.long	.Linfo_string43         @ DW_AT_name
	.long	654                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	23                      @ Abbrev [23] 0x282:0xb DW_TAG_formal_parameter
	.long	.Linfo_string44         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	53                      @ DW_AT_decl_line
	.long	258                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	14                      @ Abbrev [14] 0x28e:0x5 DW_TAG_pointer_type
	.long	178                     @ DW_AT_type
	.byte	24                      @ Abbrev [24] 0x293:0xb9 DW_TAG_subprogram
	.long	.Lfunc_begin0           @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	.Linfo_string50         @ DW_AT_linkage_name
	.long	.Linfo_string51         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	25                      @ DW_AT_decl_line
	.long	1755                    @ DW_AT_type
                                        @ DW_AT_external
	.byte	25                      @ Abbrev [25] 0x2ac:0xb DW_TAG_variable
	.long	.Linfo_string61         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	28                      @ DW_AT_decl_line
	.long	276                     @ DW_AT_type
	.byte	25                      @ Abbrev [25] 0x2b7:0xb DW_TAG_variable
	.long	.Linfo_string62         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	43                      @ DW_AT_decl_line
	.long	276                     @ DW_AT_type
	.byte	25                      @ Abbrev [25] 0x2c2:0xb DW_TAG_variable
	.long	.Linfo_string63         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	58                      @ DW_AT_decl_line
	.long	276                     @ DW_AT_type
	.byte	26                      @ Abbrev [26] 0x2cd:0x15 DW_TAG_inlined_subroutine
	.long	623                     @ DW_AT_abstract_origin
	.long	.Ldebug_ranges0         @ DW_AT_ranges
	.byte	2                       @ DW_AT_call_file
	.byte	36                      @ DW_AT_call_line
	.byte	27                      @ Abbrev [27] 0x2d8:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc0            @ DW_AT_location
	.long	633                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x2e2:0x15 DW_TAG_inlined_subroutine
	.long	623                     @ DW_AT_abstract_origin
	.long	.Ldebug_ranges1         @ DW_AT_ranges
	.byte	2                       @ DW_AT_call_file
	.byte	39                      @ DW_AT_call_line
	.byte	27                      @ Abbrev [27] 0x2ed:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc2            @ DW_AT_location
	.long	633                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x2f7:0x15 DW_TAG_inlined_subroutine
	.long	623                     @ DW_AT_abstract_origin
	.long	.Ldebug_ranges2         @ DW_AT_ranges
	.byte	2                       @ DW_AT_call_file
	.byte	51                      @ DW_AT_call_line
	.byte	27                      @ Abbrev [27] 0x302:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc3            @ DW_AT_location
	.long	633                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x30c:0x15 DW_TAG_inlined_subroutine
	.long	623                     @ DW_AT_abstract_origin
	.long	.Ldebug_ranges3         @ DW_AT_ranges
	.byte	2                       @ DW_AT_call_file
	.byte	54                      @ DW_AT_call_line
	.byte	27                      @ Abbrev [27] 0x317:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc4            @ DW_AT_location
	.long	633                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x321:0x15 DW_TAG_inlined_subroutine
	.long	623                     @ DW_AT_abstract_origin
	.long	.Ldebug_ranges4         @ DW_AT_ranges
	.byte	2                       @ DW_AT_call_file
	.byte	66                      @ DW_AT_call_line
	.byte	27                      @ Abbrev [27] 0x32c:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc5            @ DW_AT_location
	.long	633                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x336:0x15 DW_TAG_inlined_subroutine
	.long	623                     @ DW_AT_abstract_origin
	.long	.Ldebug_ranges5         @ DW_AT_ranges
	.byte	2                       @ DW_AT_call_file
	.byte	69                      @ DW_AT_call_line
	.byte	27                      @ Abbrev [27] 0x341:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc1            @ DW_AT_location
	.long	633                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x34c:0x1f DW_TAG_subprogram
	.long	222                     @ DW_AT_specification
	.byte	1                       @ DW_AT_inline
	.long	854                     @ DW_AT_object_pointer
	.byte	22                      @ Abbrev [22] 0x356:0x9 DW_TAG_formal_parameter
	.long	.Linfo_string43         @ DW_AT_name
	.long	654                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	23                      @ Abbrev [23] 0x35f:0xb DW_TAG_formal_parameter
	.long	.Linfo_string47         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	72                      @ DW_AT_decl_line
	.long	184                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	21                      @ Abbrev [21] 0x36b:0x2a DW_TAG_subprogram
	.long	132                     @ DW_AT_specification
	.byte	1                       @ DW_AT_inline
	.long	885                     @ DW_AT_object_pointer
	.byte	22                      @ Abbrev [22] 0x375:0x9 DW_TAG_formal_parameter
	.long	.Linfo_string43         @ DW_AT_name
	.long	917                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	23                      @ Abbrev [23] 0x37e:0xb DW_TAG_formal_parameter
	.long	.Linfo_string48         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	108                     @ DW_AT_decl_line
	.long	184                     @ DW_AT_type
	.byte	25                      @ Abbrev [25] 0x389:0xb DW_TAG_variable
	.long	.Linfo_string49         @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	110                     @ DW_AT_decl_line
	.long	184                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	14                      @ Abbrev [14] 0x395:0x5 DW_TAG_pointer_type
	.long	58                      @ DW_AT_type
	.byte	28                      @ Abbrev [28] 0x39a:0xbd DW_TAG_subprogram
	.long	.Lfunc_begin1           @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	.Linfo_string53         @ DW_AT_linkage_name
	.long	.Linfo_string54         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	75                      @ DW_AT_decl_line
                                        @ DW_AT_external
	.byte	29                      @ Abbrev [29] 0x3af:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc6            @ DW_AT_location
	.long	.Linfo_string64         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	75                      @ DW_AT_decl_line
	.long	524                     @ DW_AT_type
	.byte	29                      @ Abbrev [29] 0x3be:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc7            @ DW_AT_location
	.long	.Linfo_string65         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	75                      @ DW_AT_decl_line
	.long	524                     @ DW_AT_type
	.byte	26                      @ Abbrev [26] 0x3cd:0x1e DW_TAG_inlined_subroutine
	.long	844                     @ DW_AT_abstract_origin
	.long	.Ldebug_ranges6         @ DW_AT_ranges
	.byte	2                       @ DW_AT_call_file
	.byte	78                      @ DW_AT_call_line
	.byte	27                      @ Abbrev [27] 0x3d8:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc9            @ DW_AT_location
	.long	854                     @ DW_AT_abstract_origin
	.byte	27                      @ Abbrev [27] 0x3e1:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc10           @ DW_AT_location
	.long	863                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	30                      @ Abbrev [30] 0x3eb:0x2b DW_TAG_inlined_subroutine
	.long	875                     @ DW_AT_abstract_origin
	.long	.Ltmp73                 @ DW_AT_low_pc
	.long	.Ltmp77-.Ltmp73         @ DW_AT_high_pc
	.byte	2                       @ DW_AT_call_file
	.byte	79                      @ DW_AT_call_line
	.byte	27                      @ Abbrev [27] 0x3fa:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc8            @ DW_AT_location
	.long	885                     @ DW_AT_abstract_origin
	.byte	27                      @ Abbrev [27] 0x403:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc11           @ DW_AT_location
	.long	894                     @ DW_AT_abstract_origin
	.byte	31                      @ Abbrev [31] 0x40c:0x9 DW_TAG_variable
	.long	.Ldebug_loc12           @ DW_AT_location
	.long	905                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x416:0x1e DW_TAG_inlined_subroutine
	.long	844                     @ DW_AT_abstract_origin
	.long	.Ldebug_ranges7         @ DW_AT_ranges
	.byte	2                       @ DW_AT_call_file
	.byte	81                      @ DW_AT_call_line
	.byte	27                      @ Abbrev [27] 0x421:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc16           @ DW_AT_location
	.long	854                     @ DW_AT_abstract_origin
	.byte	27                      @ Abbrev [27] 0x42a:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc13           @ DW_AT_location
	.long	863                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	30                      @ Abbrev [30] 0x434:0x22 DW_TAG_inlined_subroutine
	.long	875                     @ DW_AT_abstract_origin
	.long	.Ltmp83                 @ DW_AT_low_pc
	.long	.Ltmp87-.Ltmp83         @ DW_AT_high_pc
	.byte	2                       @ DW_AT_call_file
	.byte	82                      @ DW_AT_call_line
	.byte	27                      @ Abbrev [27] 0x443:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc14           @ DW_AT_location
	.long	894                     @ DW_AT_abstract_origin
	.byte	31                      @ Abbrev [31] 0x44c:0x9 DW_TAG_variable
	.long	.Ldebug_loc15           @ DW_AT_location
	.long	905                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	28                      @ Abbrev [28] 0x457:0xb0 DW_TAG_subprogram
	.long	.Lfunc_begin2           @ DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	.Linfo_string55         @ DW_AT_linkage_name
	.long	.Linfo_string56         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	85                      @ DW_AT_decl_line
                                        @ DW_AT_external
	.byte	29                      @ Abbrev [29] 0x46c:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc17           @ DW_AT_location
	.long	.Linfo_string64         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	85                      @ DW_AT_decl_line
	.long	524                     @ DW_AT_type
	.byte	29                      @ Abbrev [29] 0x47b:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc18           @ DW_AT_location
	.long	.Linfo_string65         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	85                      @ DW_AT_decl_line
	.long	524                     @ DW_AT_type
	.byte	26                      @ Abbrev [26] 0x48a:0x1e DW_TAG_inlined_subroutine
	.long	844                     @ DW_AT_abstract_origin
	.long	.Ldebug_ranges8         @ DW_AT_ranges
	.byte	2                       @ DW_AT_call_file
	.byte	88                      @ DW_AT_call_line
	.byte	27                      @ Abbrev [27] 0x495:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc25           @ DW_AT_location
	.long	854                     @ DW_AT_abstract_origin
	.byte	27                      @ Abbrev [27] 0x49e:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc19           @ DW_AT_location
	.long	863                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x4a8:0x1e DW_TAG_inlined_subroutine
	.long	875                     @ DW_AT_abstract_origin
	.long	.Ldebug_ranges9         @ DW_AT_ranges
	.byte	2                       @ DW_AT_call_file
	.byte	89                      @ DW_AT_call_line
	.byte	27                      @ Abbrev [27] 0x4b3:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc20           @ DW_AT_location
	.long	894                     @ DW_AT_abstract_origin
	.byte	31                      @ Abbrev [31] 0x4bc:0x9 DW_TAG_variable
	.long	.Ldebug_loc21           @ DW_AT_location
	.long	905                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x4c6:0x1e DW_TAG_inlined_subroutine
	.long	844                     @ DW_AT_abstract_origin
	.long	.Ldebug_ranges10        @ DW_AT_ranges
	.byte	2                       @ DW_AT_call_file
	.byte	91                      @ DW_AT_call_line
	.byte	27                      @ Abbrev [27] 0x4d1:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc26           @ DW_AT_location
	.long	854                     @ DW_AT_abstract_origin
	.byte	27                      @ Abbrev [27] 0x4da:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc22           @ DW_AT_location
	.long	863                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	30                      @ Abbrev [30] 0x4e4:0x22 DW_TAG_inlined_subroutine
	.long	875                     @ DW_AT_abstract_origin
	.long	.Ltmp119                @ DW_AT_low_pc
	.long	.Ltmp123-.Ltmp119       @ DW_AT_high_pc
	.byte	2                       @ DW_AT_call_file
	.byte	92                      @ DW_AT_call_line
	.byte	27                      @ Abbrev [27] 0x4f3:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc23           @ DW_AT_location
	.long	894                     @ DW_AT_abstract_origin
	.byte	31                      @ Abbrev [31] 0x4fc:0x9 DW_TAG_variable
	.long	.Ldebug_loc24           @ DW_AT_location
	.long	905                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	28                      @ Abbrev [28] 0x507:0xb0 DW_TAG_subprogram
	.long	.Lfunc_begin3           @ DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	.Linfo_string57         @ DW_AT_linkage_name
	.long	.Linfo_string58         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	95                      @ DW_AT_decl_line
                                        @ DW_AT_external
	.byte	29                      @ Abbrev [29] 0x51c:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc27           @ DW_AT_location
	.long	.Linfo_string64         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	95                      @ DW_AT_decl_line
	.long	524                     @ DW_AT_type
	.byte	29                      @ Abbrev [29] 0x52b:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc28           @ DW_AT_location
	.long	.Linfo_string65         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	95                      @ DW_AT_decl_line
	.long	524                     @ DW_AT_type
	.byte	26                      @ Abbrev [26] 0x53a:0x1e DW_TAG_inlined_subroutine
	.long	844                     @ DW_AT_abstract_origin
	.long	.Ldebug_ranges11        @ DW_AT_ranges
	.byte	2                       @ DW_AT_call_file
	.byte	98                      @ DW_AT_call_line
	.byte	27                      @ Abbrev [27] 0x545:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc35           @ DW_AT_location
	.long	854                     @ DW_AT_abstract_origin
	.byte	27                      @ Abbrev [27] 0x54e:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc29           @ DW_AT_location
	.long	863                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x558:0x1e DW_TAG_inlined_subroutine
	.long	875                     @ DW_AT_abstract_origin
	.long	.Ldebug_ranges12        @ DW_AT_ranges
	.byte	2                       @ DW_AT_call_file
	.byte	99                      @ DW_AT_call_line
	.byte	27                      @ Abbrev [27] 0x563:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc30           @ DW_AT_location
	.long	894                     @ DW_AT_abstract_origin
	.byte	31                      @ Abbrev [31] 0x56c:0x9 DW_TAG_variable
	.long	.Ldebug_loc31           @ DW_AT_location
	.long	905                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x576:0x1e DW_TAG_inlined_subroutine
	.long	844                     @ DW_AT_abstract_origin
	.long	.Ldebug_ranges13        @ DW_AT_ranges
	.byte	2                       @ DW_AT_call_file
	.byte	101                     @ DW_AT_call_line
	.byte	27                      @ Abbrev [27] 0x581:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc36           @ DW_AT_location
	.long	854                     @ DW_AT_abstract_origin
	.byte	27                      @ Abbrev [27] 0x58a:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc32           @ DW_AT_location
	.long	863                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	30                      @ Abbrev [30] 0x594:0x22 DW_TAG_inlined_subroutine
	.long	875                     @ DW_AT_abstract_origin
	.long	.Ltmp155                @ DW_AT_low_pc
	.long	.Ltmp159-.Ltmp155       @ DW_AT_high_pc
	.byte	2                       @ DW_AT_call_file
	.byte	102                     @ DW_AT_call_line
	.byte	27                      @ Abbrev [27] 0x5a3:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc33           @ DW_AT_location
	.long	894                     @ DW_AT_abstract_origin
	.byte	31                      @ Abbrev [31] 0x5ac:0x9 DW_TAG_variable
	.long	.Ldebug_loc34           @ DW_AT_location
	.long	905                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	28                      @ Abbrev [28] 0x5b7:0x124 DW_TAG_subprogram
	.long	.Lfunc_begin4           @ DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	.Linfo_string59         @ DW_AT_linkage_name
	.long	.Linfo_string60         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	105                     @ DW_AT_decl_line
                                        @ DW_AT_external
	.byte	29                      @ Abbrev [29] 0x5cc:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc37           @ DW_AT_location
	.long	.Linfo_string64         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	105                     @ DW_AT_decl_line
	.long	524                     @ DW_AT_type
	.byte	29                      @ Abbrev [29] 0x5db:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc38           @ DW_AT_location
	.long	.Linfo_string65         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	105                     @ DW_AT_decl_line
	.long	524                     @ DW_AT_type
	.byte	26                      @ Abbrev [26] 0x5ea:0x1e DW_TAG_inlined_subroutine
	.long	844                     @ DW_AT_abstract_origin
	.long	.Ldebug_ranges14        @ DW_AT_ranges
	.byte	2                       @ DW_AT_call_file
	.byte	108                     @ DW_AT_call_line
	.byte	27                      @ Abbrev [27] 0x5f5:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc51           @ DW_AT_location
	.long	854                     @ DW_AT_abstract_origin
	.byte	27                      @ Abbrev [27] 0x5fe:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc39           @ DW_AT_location
	.long	863                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x608:0x1e DW_TAG_inlined_subroutine
	.long	844                     @ DW_AT_abstract_origin
	.long	.Ldebug_ranges15        @ DW_AT_ranges
	.byte	2                       @ DW_AT_call_file
	.byte	109                     @ DW_AT_call_line
	.byte	27                      @ Abbrev [27] 0x613:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc53           @ DW_AT_location
	.long	854                     @ DW_AT_abstract_origin
	.byte	27                      @ Abbrev [27] 0x61c:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc40           @ DW_AT_location
	.long	863                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x626:0x1e DW_TAG_inlined_subroutine
	.long	875                     @ DW_AT_abstract_origin
	.long	.Ldebug_ranges16        @ DW_AT_ranges
	.byte	2                       @ DW_AT_call_file
	.byte	110                     @ DW_AT_call_line
	.byte	27                      @ Abbrev [27] 0x631:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc41           @ DW_AT_location
	.long	894                     @ DW_AT_abstract_origin
	.byte	31                      @ Abbrev [31] 0x63a:0x9 DW_TAG_variable
	.long	.Ldebug_loc42           @ DW_AT_location
	.long	905                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x644:0x1e DW_TAG_inlined_subroutine
	.long	844                     @ DW_AT_abstract_origin
	.long	.Ldebug_ranges17        @ DW_AT_ranges
	.byte	2                       @ DW_AT_call_file
	.byte	113                     @ DW_AT_call_line
	.byte	27                      @ Abbrev [27] 0x64f:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc54           @ DW_AT_location
	.long	854                     @ DW_AT_abstract_origin
	.byte	27                      @ Abbrev [27] 0x658:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc45           @ DW_AT_location
	.long	863                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x662:0x1e DW_TAG_inlined_subroutine
	.long	875                     @ DW_AT_abstract_origin
	.long	.Ldebug_ranges18        @ DW_AT_ranges
	.byte	2                       @ DW_AT_call_file
	.byte	111                     @ DW_AT_call_line
	.byte	27                      @ Abbrev [27] 0x66d:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc43           @ DW_AT_location
	.long	894                     @ DW_AT_abstract_origin
	.byte	31                      @ Abbrev [31] 0x676:0x9 DW_TAG_variable
	.long	.Ldebug_loc44           @ DW_AT_location
	.long	905                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x680:0x1e DW_TAG_inlined_subroutine
	.long	844                     @ DW_AT_abstract_origin
	.long	.Ldebug_ranges19        @ DW_AT_ranges
	.byte	2                       @ DW_AT_call_file
	.byte	114                     @ DW_AT_call_line
	.byte	27                      @ Abbrev [27] 0x68b:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc52           @ DW_AT_location
	.long	854                     @ DW_AT_abstract_origin
	.byte	27                      @ Abbrev [27] 0x694:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc46           @ DW_AT_location
	.long	863                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x69e:0x1e DW_TAG_inlined_subroutine
	.long	875                     @ DW_AT_abstract_origin
	.long	.Ldebug_ranges20        @ DW_AT_ranges
	.byte	2                       @ DW_AT_call_file
	.byte	116                     @ DW_AT_call_line
	.byte	27                      @ Abbrev [27] 0x6a9:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc49           @ DW_AT_location
	.long	894                     @ DW_AT_abstract_origin
	.byte	31                      @ Abbrev [31] 0x6b2:0x9 DW_TAG_variable
	.long	.Ldebug_loc50           @ DW_AT_location
	.long	905                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x6bc:0x1e DW_TAG_inlined_subroutine
	.long	875                     @ DW_AT_abstract_origin
	.long	.Ldebug_ranges21        @ DW_AT_ranges
	.byte	2                       @ DW_AT_call_file
	.byte	115                     @ DW_AT_call_line
	.byte	27                      @ Abbrev [27] 0x6c7:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc47           @ DW_AT_location
	.long	894                     @ DW_AT_abstract_origin
	.byte	31                      @ Abbrev [31] 0x6d0:0x9 DW_TAG_variable
	.long	.Ldebug_loc48           @ DW_AT_location
	.long	905                     @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	13                      @ Abbrev [13] 0x6db:0x7 DW_TAG_base_type
	.long	.Linfo_string52         @ DW_AT_name
	.byte	2                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	0                       @ End Of Children Mark
	.section	.debug_ranges,"",%progbits
.Ldebug_range:
.Ldebug_ranges0:
	.long	.Ltmp11-.Lfunc_begin0
	.long	.Ltmp12-.Lfunc_begin0
	.long	.Ltmp13-.Lfunc_begin0
	.long	.Ltmp14-.Lfunc_begin0
	.long	.Ltmp15-.Lfunc_begin0
	.long	.Ltmp16-.Lfunc_begin0
	.long	.Ltmp17-.Lfunc_begin0
	.long	.Ltmp18-.Lfunc_begin0
	.long	.Ltmp19-.Lfunc_begin0
	.long	.Ltmp20-.Lfunc_begin0
	.long	.Ltmp21-.Lfunc_begin0
	.long	.Ltmp22-.Lfunc_begin0
	.long	.Ltmp23-.Lfunc_begin0
	.long	.Ltmp24-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges1:
	.long	.Ltmp25-.Lfunc_begin0
	.long	.Ltmp26-.Lfunc_begin0
	.long	.Ltmp27-.Lfunc_begin0
	.long	.Ltmp28-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges2:
	.long	.Ltmp29-.Lfunc_begin0
	.long	.Ltmp30-.Lfunc_begin0
	.long	.Ltmp31-.Lfunc_begin0
	.long	.Ltmp32-.Lfunc_begin0
	.long	.Ltmp33-.Lfunc_begin0
	.long	.Ltmp34-.Lfunc_begin0
	.long	.Ltmp35-.Lfunc_begin0
	.long	.Ltmp36-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges3:
	.long	.Ltmp37-.Lfunc_begin0
	.long	.Ltmp38-.Lfunc_begin0
	.long	.Ltmp39-.Lfunc_begin0
	.long	.Ltmp40-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges4:
	.long	.Ltmp41-.Lfunc_begin0
	.long	.Ltmp42-.Lfunc_begin0
	.long	.Ltmp43-.Lfunc_begin0
	.long	.Ltmp44-.Lfunc_begin0
	.long	.Ltmp45-.Lfunc_begin0
	.long	.Ltmp46-.Lfunc_begin0
	.long	.Ltmp47-.Lfunc_begin0
	.long	.Ltmp48-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges5:
	.long	.Ltmp49-.Lfunc_begin0
	.long	.Ltmp50-.Lfunc_begin0
	.long	.Ltmp51-.Lfunc_begin0
	.long	.Ltmp53-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges6:
	.long	.Ltmp66-.Lfunc_begin0
	.long	.Ltmp67-.Lfunc_begin0
	.long	.Ltmp68-.Lfunc_begin0
	.long	.Ltmp69-.Lfunc_begin0
	.long	.Ltmp70-.Lfunc_begin0
	.long	.Ltmp72-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges7:
	.long	.Ltmp78-.Lfunc_begin0
	.long	.Ltmp79-.Lfunc_begin0
	.long	.Ltmp80-.Lfunc_begin0
	.long	.Ltmp82-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges8:
	.long	.Ltmp100-.Lfunc_begin0
	.long	.Ltmp101-.Lfunc_begin0
	.long	.Ltmp102-.Lfunc_begin0
	.long	.Ltmp103-.Lfunc_begin0
	.long	.Ltmp104-.Lfunc_begin0
	.long	.Ltmp107-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges9:
	.long	.Ltmp108-.Lfunc_begin0
	.long	.Ltmp112-.Lfunc_begin0
	.long	.Ltmp113-.Lfunc_begin0
	.long	.Ltmp114-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges10:
	.long	.Ltmp114-.Lfunc_begin0
	.long	.Ltmp115-.Lfunc_begin0
	.long	.Ltmp116-.Lfunc_begin0
	.long	.Ltmp118-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges11:
	.long	.Ltmp136-.Lfunc_begin0
	.long	.Ltmp137-.Lfunc_begin0
	.long	.Ltmp138-.Lfunc_begin0
	.long	.Ltmp139-.Lfunc_begin0
	.long	.Ltmp140-.Lfunc_begin0
	.long	.Ltmp143-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges12:
	.long	.Ltmp144-.Lfunc_begin0
	.long	.Ltmp148-.Lfunc_begin0
	.long	.Ltmp149-.Lfunc_begin0
	.long	.Ltmp150-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges13:
	.long	.Ltmp150-.Lfunc_begin0
	.long	.Ltmp151-.Lfunc_begin0
	.long	.Ltmp152-.Lfunc_begin0
	.long	.Ltmp154-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges14:
	.long	.Ltmp174-.Lfunc_begin0
	.long	.Ltmp175-.Lfunc_begin0
	.long	.Ltmp176-.Lfunc_begin0
	.long	.Ltmp177-.Lfunc_begin0
	.long	.Ltmp178-.Lfunc_begin0
	.long	.Ltmp181-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges15:
	.long	.Ltmp182-.Lfunc_begin0
	.long	.Ltmp183-.Lfunc_begin0
	.long	.Ltmp184-.Lfunc_begin0
	.long	.Ltmp186-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges16:
	.long	.Ltmp187-.Lfunc_begin0
	.long	.Ltmp189-.Lfunc_begin0
	.long	.Ltmp190-.Lfunc_begin0
	.long	.Ltmp191-.Lfunc_begin0
	.long	.Ltmp192-.Lfunc_begin0
	.long	.Ltmp193-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges17:
	.long	.Ltmp193-.Lfunc_begin0
	.long	.Ltmp194-.Lfunc_begin0
	.long	.Ltmp195-.Lfunc_begin0
	.long	.Ltmp196-.Lfunc_begin0
	.long	.Ltmp197-.Lfunc_begin0
	.long	.Ltmp198-.Lfunc_begin0
	.long	.Ltmp205-.Lfunc_begin0
	.long	.Ltmp207-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges18:
	.long	.Ltmp194-.Lfunc_begin0
	.long	.Ltmp195-.Lfunc_begin0
	.long	.Ltmp196-.Lfunc_begin0
	.long	.Ltmp197-.Lfunc_begin0
	.long	.Ltmp198-.Lfunc_begin0
	.long	.Ltmp202-.Lfunc_begin0
	.long	.Ltmp203-.Lfunc_begin0
	.long	.Ltmp204-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges19:
	.long	.Ltmp208-.Lfunc_begin0
	.long	.Ltmp209-.Lfunc_begin0
	.long	.Ltmp210-.Lfunc_begin0
	.long	.Ltmp212-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges20:
	.long	.Ltmp213-.Lfunc_begin0
	.long	.Ltmp214-.Lfunc_begin0
	.long	.Ltmp220-.Lfunc_begin0
	.long	.Ltmp224-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges21:
	.long	.Ltmp214-.Lfunc_begin0
	.long	.Ltmp216-.Lfunc_begin0
	.long	.Ltmp217-.Lfunc_begin0
	.long	.Ltmp218-.Lfunc_begin0
	.long	.Ltmp219-.Lfunc_begin0
	.long	.Ltmp220-.Lfunc_begin0
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
	.long	1763                    @ Compilation Unit Length
	.long	531                     @ DIE offset
	.asciz	"gFilterQ"              @ External Name
	.long	464                     @ DIE offset
	.asciz	"highpassL"             @ External Name
	.long	571                     @ DIE offset
	.asciz	"lpCutoff"              @ External Name
	.long	623                     @ DIE offset
	.asciz	"BiquadCoeffT<double>::setup" @ External Name
	.long	1111                    @ DIE offset
	.asciz	"render_lowpass"        @ External Name
	.long	484                     @ DIE offset
	.asciz	"highpassR"             @ External Name
	.long	875                     @ DIE offset
	.asciz	"Biquad::process"       @ External Name
	.long	844                     @ DIE offset
	.asciz	"BiquadCoeffT<double>::setFc" @ External Name
	.long	922                     @ DIE offset
	.asciz	"render_bandpass"       @ External Name
	.long	659                     @ DIE offset
	.asciz	"initialize_filters"    @ External Name
	.long	424                     @ DIE offset
	.asciz	"lowpassL"              @ External Name
	.long	1287                    @ DIE offset
	.asciz	"render_highpass"       @ External Name
	.long	38                      @ DIE offset
	.asciz	"bandpassL"             @ External Name
	.long	504                     @ DIE offset
	.asciz	"bpCutoff"              @ External Name
	.long	551                     @ DIE offset
	.asciz	"kSampleRate"           @ External Name
	.long	444                     @ DIE offset
	.asciz	"lowpassR"              @ External Name
	.long	1463                    @ DIE offset
	.asciz	"render_lowandhighpass" @ External Name
	.long	404                     @ DIE offset
	.asciz	"bandpassR"             @ External Name
	.long	591                     @ DIE offset
	.asciz	"hpCutoff"              @ External Name
	.long	0                       @ End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",%progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0 @ Length of Public Types Info
.LpubTypes_begin0:
	.short	2                       @ DWARF Version
	.long	.Lcu_begin0             @ Offset of Compilation Unit Info
	.long	1763                    @ Compilation Unit Length
	.long	58                      @ DIE offset
	.asciz	"Biquad"                @ External Name
	.long	524                     @ DIE offset
	.asciz	"float"                 @ External Name
	.long	268                     @ DIE offset
	.asciz	"BiquadCoeff"           @ External Name
	.long	246                     @ DIE offset
	.asciz	"double"                @ External Name
	.long	611                     @ DIE offset
	.asciz	"int"                   @ External Name
	.long	1755                    @ DIE offset
	.asciz	"bool"                  @ External Name
	.long	0                       @ End Mark
.LpubTypes_end0:
	.cfi_sections .debug_frame

	.globl	bpCutoff
bpCutoff = .L_MergedGlobals
	.size	bpCutoff, 4
	.globl	gFilterQ
gFilterQ = .L_MergedGlobals+4
	.size	gFilterQ, 4
	.globl	kSampleRate
kSampleRate = .L_MergedGlobals+8
	.size	kSampleRate, 4
	.globl	lpCutoff
lpCutoff = .L_MergedGlobals+12
	.size	lpCutoff, 4
	.globl	hpCutoff
hpCutoff = .L_MergedGlobals+16
	.size	hpCutoff, 4
	.globl	bandpassL
bandpassL = .L_MergedGlobals+24
	.size	bandpassL, 96
	.globl	bandpassR
bandpassR = .L_MergedGlobals.1
	.size	bandpassR, 96
	.globl	lowpassL
lowpassL = .L_MergedGlobals.2
	.size	lowpassL, 96
	.globl	lowpassR
lowpassR = .L_MergedGlobals.3
	.size	lowpassR, 96
	.globl	highpassL
highpassL = .L_MergedGlobals.4
	.size	highpassL, 96
	.globl	highpassR
highpassR = .L_MergedGlobals.5
	.size	highpassR, 96
	.ident	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
	.section	.debug_line,"",%progbits
.Lline_table_start0:
