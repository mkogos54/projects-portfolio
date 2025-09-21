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
	.file	"/root/Bela/projects/Thesis/build/SensorRead.bc"
	.file	1 "/root/Bela/projects/Thesis" "SensorRead.cpp"
	.file	2 "./libraries/OnePole" "OnePole.h"
	.file	3 "./include" "Bela.h"
	.file	4 "/root/Bela/projects/Thesis" "BME280.h"
	.file	5 "/root/Bela/projects/Thesis" "BME280I2C.h"
	.file	6 "/usr/bin/../lib/gcc/arm-linux-gnueabihf/6.3.0/../../../../include/arm-linux-gnueabihf/c++/6.3.0/bits" "c++config.h"
	.file	7 "/usr/include/arm-linux-gnueabihf/bits" "math-finite.h"
	.file	8 "/usr/include/arm-linux-gnueabihf/bits" "mathcalls.h"
	.file	9 "/usr/include/arm-linux-gnueabihf/bits" "mathdef.h"
	.file	10 "/usr/include" "stdint.h"
	.file	11 "/usr/include/arm-linux-gnueabihf/bits" "types.h"
	.file	12 "/usr/include" "time.h"
	.file	13 "/usr/lib/llvm-3.9/bin/../lib/clang/3.9.1/include" "stddef.h"
	.globl	_Z18initialize_sensorsP11BelaContext
	.p2align	2
	.type	_Z18initialize_sensorsP11BelaContext,%function
_Z18initialize_sensorsP11BelaContext:   @ @_Z18initialize_sensorsP11BelaContext
.Lfunc_begin0:
	.loc	1 38 0                  @ /root/Bela/projects/Thesis/SensorRead.cpp:38:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset lr, -4
.Ltmp2:
	.cfi_offset r11, -8
.Ltmp3:
	.cfi_offset r10, -12
.Ltmp4:
	.cfi_offset r4, -16
	.setfp	r11, sp, #8
	add	r11, sp, #8
.Ltmp5:
	.cfi_def_cfa r11, 8
	@DEBUG_VALUE: initialize_sensors:context <- %R0
	mov	r4, r0
.Ltmp6:
	@DEBUG_VALUE: initialize_sensors:context <- %R4
	.loc	1 40 13 prologue_end    @ /root/Bela/projects/Thesis/SensorRead.cpp:40:13
	movw	r0, :lower16:.L_MergedGlobals.3
	movt	r0, :upper16:.L_MergedGlobals.3
	bl	_ZN6BME2805beginEv
.Ltmp7:
	.loc	1 40 5 is_stmt 0        @ /root/Bela/projects/Thesis/SensorRead.cpp:40:5
	cmp	r0, #0
	beq	.LBB0_2
.Ltmp8:
@ BB#1:
	@DEBUG_VALUE: initialize_sensors:context <- %R4
	.loc	1 45 15 is_stmt 1       @ /root/Bela/projects/Thesis/SensorRead.cpp:45:15
	movw	r0, :lower16:_Z10readBME280Pv
	movw	r2, :lower16:.L.str.2
	movt	r0, :upper16:_Z10readBME280Pv
	movt	r2, :upper16:.L.str.2
	mov	r1, #80
	mov	r3, #0
	bl	Bela_createAuxiliaryTask
	.loc	1 45 13 is_stmt 0       @ /root/Bela/projects/Thesis/SensorRead.cpp:45:13
	movw	r1, :lower16:.L_MergedGlobals
	.loc	1 60 15 is_stmt 1       @ /root/Bela/projects/Thesis/SensorRead.cpp:60:15
	vmov.f32	d0, #1.000000e+00
	.loc	1 45 13                 @ /root/Bela/projects/Thesis/SensorRead.cpp:45:13
	movt	r1, :upper16:.L_MergedGlobals
	str	r0, [r1, #24]
	.loc	1 60 15                 @ /root/Bela/projects/Thesis/SensorRead.cpp:60:15
	add	r0, r1, #28
	.loc	1 60 33 is_stmt 0       @ /root/Bela/projects/Thesis/SensorRead.cpp:60:33
	vldr	s2, [r4, #32]
	.loc	1 60 15                 @ /root/Bela/projects/Thesis/SensorRead.cpp:60:15
	mov	r1, #0
	vmov.f32	s1, s2
	bl	_ZN7OnePole5setupEffNS_4TypeE
	mov	r0, #1
	.loc	1 64 1 is_stmt 1        @ /root/Bela/projects/Thesis/SensorRead.cpp:64:1
	pop	{r4, r10, r11, pc}
.Ltmp9:
.LBB0_2:
	@DEBUG_VALUE: initialize_sensors:context <- %R4
	.loc	1 41 3                  @ /root/Bela/projects/Thesis/SensorRead.cpp:41:3
	movw	r0, :lower16:.L.str
	movt	r0, :upper16:.L.str
	bl	rt_printf
	mov	r0, #0
.Ltmp10:
	.loc	1 64 1                  @ /root/Bela/projects/Thesis/SensorRead.cpp:64:1
	pop	{r4, r10, r11, pc}
.Ltmp11:
.Lfunc_end0:
	.size	_Z18initialize_sensorsP11BelaContext, .Lfunc_end0-_Z18initialize_sensorsP11BelaContext
	.cfi_endproc
	.fnend

	.globl	_Z10readBME280Pv
	.p2align	2
	.type	_Z10readBME280Pv,%function
_Z10readBME280Pv:                       @ @_Z10readBME280Pv
.Lfunc_begin1:
	.loc	1 99 0                  @ /root/Bela/projects/Thesis/SensorRead.cpp:99:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r10, r11, lr}
	push	{r4, r10, r11, lr}
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset lr, -4
.Ltmp14:
	.cfi_offset r11, -8
.Ltmp15:
	.cfi_offset r10, -12
.Ltmp16:
	.cfi_offset r4, -16
	.setfp	r11, sp, #8
	add	r11, sp, #8
.Ltmp17:
	.cfi_def_cfa r11, 8
	.pad	#8
	sub	sp, sp, #8
	@DEBUG_VALUE: readBME280: <- %R0
.Ltmp18:
	.loc	1 100 9 prologue_end    @ /root/Bela/projects/Thesis/SensorRead.cpp:100:9
	movw	r4, :lower16:.L_MergedGlobals.3
	movt	r4, :upper16:.L_MergedGlobals.3
	mov	r0, r4
.Ltmp19:
	bl	_ZN9BME280I2C6updateEv
	.loc	1 101 9                 @ /root/Bela/projects/Thesis/SensorRead.cpp:101:9
	movw	r2, :lower16:.L_MergedGlobals
	mov	r1, #0
	movt	r2, :upper16:.L_MergedGlobals
	str	r1, [sp]
	mov	r0, #1
	add	r1, r2, #4
	add	r3, r2, #8
	str	r0, [sp, #4]
	mov	r0, r4
	bl	_ZN6BME2804readERfS0_S0_NS_8TempUnitENS_8PresUnitE
	.loc	1 102 2                 @ /root/Bela/projects/Thesis/SensorRead.cpp:102:2
	mov	r0, #10
	sub	sp, r11, #8
	pop	{r4, r10, r11, lr}
	b	usleep
.Ltmp20:
.Lfunc_end1:
	.size	_Z10readBME280Pv, .Lfunc_end1-_Z10readBME280Pv
	.cfi_endproc
	.fnend

	.globl	_Z11bme280_readRfS_S_
	.p2align	3
	.type	_Z11bme280_readRfS_S_,%function
_Z11bme280_readRfS_S_:                  @ @_Z11bme280_readRfS_S_
.Lfunc_begin2:
	.loc	1 68 0                  @ /root/Bela/projects/Thesis/SensorRead.cpp:68:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
.Ltmp21:
	.cfi_def_cfa_offset 24
.Ltmp22:
	.cfi_offset lr, -4
.Ltmp23:
	.cfi_offset r11, -8
.Ltmp24:
	.cfi_offset r7, -12
.Ltmp25:
	.cfi_offset r6, -16
.Ltmp26:
	.cfi_offset r5, -20
.Ltmp27:
	.cfi_offset r4, -24
	.setfp	r11, sp, #16
	add	r11, sp, #16
.Ltmp28:
	.cfi_def_cfa r11, 8
	@DEBUG_VALUE: bme280_read:pressure <- %R0
	@DEBUG_VALUE: bme280_read:temperature <- %R1
	@DEBUG_VALUE: bme280_read:humidity <- %R2
.Ltmp29:
	.loc	1 69 29 prologue_end    @ /root/Bela/projects/Thesis/SensorRead.cpp:69:29
	movw	r7, :lower16:.L_MergedGlobals
	mov	r6, r0
.Ltmp30:
	@DEBUG_VALUE: bme280_read:pressure <- %R6
	movt	r7, :upper16:.L_MergedGlobals
	mov	r4, r2
.Ltmp31:
	@DEBUG_VALUE: bme280_read:humidity <- %R4
	ldr	r0, [r7, #24]
	mov	r5, r1
.Ltmp32:
	@DEBUG_VALUE: bme280_read:temperature <- %R5
	.loc	1 69 2 is_stmt 0        @ /root/Bela/projects/Thesis/SensorRead.cpp:69:2
	bl	Bela_scheduleAuxiliaryTask
	.loc	1 71 17 is_stmt 1       @ /root/Bela/projects/Thesis/SensorRead.cpp:71:17
	vldr	s0, [r7]
	.loc	1 71 21 is_stmt 0       @ /root/Bela/projects/Thesis/SensorRead.cpp:71:21
	vldr	d17, .LCPI2_0
	.loc	1 71 17                 @ /root/Bela/projects/Thesis/SensorRead.cpp:71:17
	vcvt.f64.f32	d16, s0
	.loc	1 72 13 is_stmt 1       @ /root/Bela/projects/Thesis/SensorRead.cpp:72:13
	ldr	r0, [r7, #4]
	.loc	1 71 21                 @ /root/Bela/projects/Thesis/SensorRead.cpp:71:21
	vmul.f64	d16, d16, d17
	.loc	1 71 27 is_stmt 0       @ /root/Bela/projects/Thesis/SensorRead.cpp:71:27
	vldr	d17, .LCPI2_1
	.loc	1 71 36                 @ /root/Bela/projects/Thesis/SensorRead.cpp:71:36
	vldr	s2, [r7, #12]
	.loc	1 71 27                 @ /root/Bela/projects/Thesis/SensorRead.cpp:71:27
	vadd.f64	d16, d16, d17
	.loc	1 72 11 is_stmt 1       @ /root/Bela/projects/Thesis/SensorRead.cpp:72:11
	str	r0, [r6]
	.loc	1 71 36                 @ /root/Bela/projects/Thesis/SensorRead.cpp:71:36
	vcvt.f64.f32	d17, s2
	.loc	1 71 34 is_stmt 0       @ /root/Bela/projects/Thesis/SensorRead.cpp:71:34
	vsub.f64	d16, d16, d17
	.loc	1 71 16                 @ /root/Bela/projects/Thesis/SensorRead.cpp:71:16
	vcvt.f32.f64	s0, d16
.Ltmp33:
	@DEBUG_VALUE: bme280_read:tempF <- %S0
	.loc	1 73 14 is_stmt 1       @ /root/Bela/projects/Thesis/SensorRead.cpp:73:14
	vstr	s0, [r5]
	.loc	1 74 13                 @ /root/Bela/projects/Thesis/SensorRead.cpp:74:13
	ldr	r0, [r7, #8]
	.loc	1 74 11 is_stmt 0       @ /root/Bela/projects/Thesis/SensorRead.cpp:74:11
	str	r0, [r4]
	.loc	1 75 1 is_stmt 1        @ /root/Bela/projects/Thesis/SensorRead.cpp:75:1
	pop	{r4, r5, r6, r7, r11, pc}
.Ltmp34:
	.p2align	3
@ BB#1:
.LCPI2_0:
	.long	3435973837              @ double 1.8
	.long	1073532108
.LCPI2_1:
	.long	0                       @ double 32
	.long	1077936128
.Lfunc_end2:
	.size	_Z11bme280_readRfS_S_, .Lfunc_end2-_Z11bme280_readRfS_S_
	.cfi_endproc
	.fnend

	.globl	_Z13temt6000_readP11BelaContext
	.p2align	2
	.type	_Z13temt6000_readP11BelaContext,%function
_Z13temt6000_readP11BelaContext:        @ @_Z13temt6000_readP11BelaContext
.Lfunc_begin3:
	.loc	1 77 0                  @ /root/Bela/projects/Thesis/SensorRead.cpp:77:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
.Ltmp35:
	.cfi_def_cfa_offset 24
.Ltmp36:
	.cfi_offset lr, -4
.Ltmp37:
	.cfi_offset r11, -8
.Ltmp38:
	.cfi_offset r7, -12
.Ltmp39:
	.cfi_offset r6, -16
.Ltmp40:
	.cfi_offset r5, -20
.Ltmp41:
	.cfi_offset r4, -24
	.setfp	r11, sp, #16
	add	r11, sp, #16
.Ltmp42:
	.cfi_def_cfa r11, 8
	@DEBUG_VALUE: temt6000_read:context <- %R0
	mov	r4, r0
.Ltmp43:
	@DEBUG_VALUE: n <- 0
	@DEBUG_VALUE: temt6000_read:context <- %R4
	.loc	1 79 39 prologue_end discriminator 1 @ /root/Bela/projects/Thesis/SensorRead.cpp:79:39
	ldr	r7, [r4, #20]
	.loc	1 79 2 is_stmt 0 discriminator 1 @ /root/Bela/projects/Thesis/SensorRead.cpp:79:2
	cmp	r7, #0
	beq	.LBB3_7
.Ltmp44:
@ BB#1:                                 @ %.lr.ph
	@DEBUG_VALUE: temt6000_read:context <- %R4
	.loc	1 80 12 is_stmt 1       @ /root/Bela/projects/Thesis/SensorRead.cpp:80:12
	movw	r0, :lower16:gAudioFramesPerAnalogFrame
	movt	r0, :upper16:gAudioFramesPerAnalogFrame
	ldr	r5, [r0]
	.loc	1 80 39 is_stmt 0       @ /root/Bela/projects/Thesis/SensorRead.cpp:80:39
	cmp	r5, #0
	beq	.LBB3_5
.Ltmp45:
@ BB#2:                                 @ %.lr.ph.split.preheader
	@DEBUG_VALUE: temt6000_read:context <- %R4
	mov	r6, #0
.Ltmp46:
.LBB3_3:                                @ %.lr.ph.split
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 80 46 discriminator 1 @ /root/Bela/projects/Thesis/SensorRead.cpp:80:46
	mov	r0, r6
	mov	r1, r5
	bl	__aeabi_uidivmod
	.loc	1 80 12 discriminator 1 @ /root/Bela/projects/Thesis/SensorRead.cpp:80:12
	cmp	r1, #0
	beq	.LBB3_8
.Ltmp47:
@ BB#4:                                 @   in Loop: Header=BB3_3 Depth=1
	.loc	1 79 53 is_stmt 1 discriminator 3 @ /root/Bela/projects/Thesis/SensorRead.cpp:79:53
	add	r6, r6, #1
.Ltmp48:
	@DEBUG_VALUE: n <- %R6
	.loc	1 79 2 is_stmt 0 discriminator 1 @ /root/Bela/projects/Thesis/SensorRead.cpp:79:2
	cmp	r6, r7
	blo	.LBB3_3
	b	.LBB3_7
.Ltmp49:
.LBB3_5:                                @ %.lr.ph.split.us.preheader
	@DEBUG_VALUE: temt6000_read:context <- %R4
	mov	r0, #0
.Ltmp50:
.LBB3_6:                                @ %.lr.ph.split.us
                                        @ =>This Inner Loop Header: Depth=1
	.loc	1 79 53 discriminator 3 @ /root/Bela/projects/Thesis/SensorRead.cpp:79:53
	add	r0, r0, #1
.Ltmp51:
	@DEBUG_VALUE: n <- %R0
	.loc	1 79 2 discriminator 1  @ /root/Bela/projects/Thesis/SensorRead.cpp:79:2
	cmp	r0, r7
	blo	.LBB3_6
.Ltmp52:
.LBB3_7:
	vmov.f32	d0, #1.000000e+00
	.loc	1 95 1 is_stmt 1        @ /root/Bela/projects/Thesis/SensorRead.cpp:95:1
                                        @ kill: %S0<def> %S0<kill> %D0<kill>
	pop	{r4, r5, r6, r7, r11, pc}
.LBB3_8:
	ldr	r0, [r4, #8]
.Ltmp53:
	.loc	1 84 18                 @ /root/Bela/projects/Thesis/SensorRead.cpp:84:18
	movw	r1, :lower16:.L_MergedGlobals
	movt	r1, :upper16:.L_MergedGlobals
.Ltmp54:
	.loc	1 88 26                 @ /root/Bela/projects/Thesis/SensorRead.cpp:88:26
	vldr	s0, .LCPI3_0
.Ltmp55:
	.loc	1 85 10                 @ /root/Bela/projects/Thesis/SensorRead.cpp:85:10
	vldr	s4, .LCPI3_1
	ldr	r0, [r0, #8]
	.loc	1 84 18                 @ /root/Bela/projects/Thesis/SensorRead.cpp:84:18
	str	r0, [r1, #16]
.Ltmp56:
	@DEBUG_VALUE: alpha <- 8.000000e-01
	.loc	1 88 28                 @ /root/Bela/projects/Thesis/SensorRead.cpp:88:28
	vldr	s2, [r1, #20]
.Ltmp57:
	.loc	1 85 10                 @ /root/Bela/projects/Thesis/SensorRead.cpp:85:10
	vmov	d16, r0, r0
.Ltmp58:
	.loc	1 88 26                 @ /root/Bela/projects/Thesis/SensorRead.cpp:88:26
	vmul.f32	d17, d1, d0
.Ltmp59:
	.loc	1 85 10                 @ /root/Bela/projects/Thesis/SensorRead.cpp:85:10
	vmul.f32	d16, d16, d2
.Ltmp60:
	.loc	1 88 42                 @ /root/Bela/projects/Thesis/SensorRead.cpp:88:42
	vadd.f32	d0, d16, d17
	.loc	1 88 18 is_stmt 0       @ /root/Bela/projects/Thesis/SensorRead.cpp:88:18
	vstr	s0, [r1, #20]
.Ltmp61:
	.loc	1 95 1 is_stmt 1        @ /root/Bela/projects/Thesis/SensorRead.cpp:95:1
                                        @ kill: %S0<def> %S0<kill> %D0<kill>
	pop	{r4, r5, r6, r7, r11, pc}
.Ltmp62:
	.p2align	2
@ BB#9:
.LCPI3_0:
	.long	1061997773              @ float 0.800000011
.LCPI3_1:
	.long	1045220556              @ float 0.199999988
.Lfunc_end3:
	.size	_Z13temt6000_readP11BelaContext, .Lfunc_end3-_Z13temt6000_readP11BelaContext
	.cfi_endproc
	.fnend

	.section	.text.startup,"ax",%progbits
	.p2align	4
	.type	_GLOBAL__sub_I_SensorRead.ii,%function
_GLOBAL__sub_I_SensorRead.ii:           @ @_GLOBAL__sub_I_SensorRead.ii
.Lfunc_begin4:
	.file	14 "/root/Bela/projects/Thesis/build" "SensorRead.cpp"
	.loc	14 0 0                  @ /root/Bela/projects/Thesis/build/SensorRead.cpp:0:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r11, lr}
	push	{r11, lr}
.Ltmp63:
	.cfi_def_cfa_offset 8
.Ltmp64:
	.cfi_offset lr, -4
.Ltmp65:
	.cfi_offset r11, -8
	.setfp	r11, sp
	mov	r11, sp
.Ltmp66:
	.cfi_def_cfa_register r11
	.pad	#32
	sub	sp, sp, #32
.Ltmp67:
	@DEBUG_VALUE: Settings:_tosr <- 1
	@DEBUG_VALUE: Settings:_hosr <- 1
	@DEBUG_VALUE: Settings:_posr <- 1
	@DEBUG_VALUE: Settings:_mode <- 1
	@DEBUG_VALUE: Settings:_st <- 5
	@DEBUG_VALUE: Settings:_filter <- 4
	@DEBUG_VALUE: Settings:_se <- 0
	@DEBUG_VALUE: Settings:_addr <- 118
	@DEBUG_VALUE: Settings:_tosr <- 1
	@DEBUG_VALUE: Settings:_hosr <- 1
	@DEBUG_VALUE: Settings:_posr <- 1
	@DEBUG_VALUE: Settings:_mode <- 1
	@DEBUG_VALUE: Settings:_st <- 5
	@DEBUG_VALUE: Settings:_filter <- 4
	@DEBUG_VALUE: Settings:_se <- 0
	.loc	4 136 10 prologue_end   @ /root/Bela/projects/Thesis/BME280.h:136:10
	vmov.i32	q8, #0x1
	adr	r0, .LCPI4_0
	mov	r1, sp
.Ltmp68:
	@DEBUG_VALUE: Settings:this <- %R1
	.loc	4 140 10                @ /root/Bela/projects/Thesis/BME280.h:140:10
	vld1.64	{d18, d19}, [r0:128]
	.loc	4 136 10                @ /root/Bela/projects/Thesis/BME280.h:136:10
	mov	r0, r1
	vst1.32	{d16, d17}, [r0]!
	.loc	4 140 10                @ /root/Bela/projects/Thesis/BME280.h:140:10
	vst1.32	{d18, d19}, [r0]
.Ltmp69:
	.loc	1 13 11 discriminator 2 @ /root/Bela/projects/Thesis/SensorRead.cpp:13:11
	movw	r0, :lower16:.L_MergedGlobals.3
	movt	r0, :upper16:.L_MergedGlobals.3
	bl	_ZN9BME280I2CC1ERKNS_8SettingsE
.Ltmp70:
	.loc	1 15 9                  @ /root/Bela/projects/Thesis/SensorRead.cpp:15:9
	movw	r0, :lower16:.L_MergedGlobals
	movt	r0, :upper16:.L_MergedGlobals
	add	r0, r0, #28
	bl	_ZN7OnePoleC1Ev
	mov	sp, r11
	pop	{r11, pc}
.Ltmp71:
	.p2align	4
@ BB#1:
.LCPI4_0:
	.long	5                       @ 0x5
	.long	4                       @ 0x4
	.long	0                       @ 0x0
	.long	118                     @ 0x76
.Lfunc_end4:
	.size	_GLOBAL__sub_I_SensorRead.ii, .Lfunc_end4-_GLOBAL__sub_I_SensorRead.ii
	.cfi_endproc
	.fnend

	.type	previousAmlightValue,%object @ @previousAmlightValue
	.bss
	.globl	previousAmlightValue
	.p2align	2
previousAmlightValue:
	.long	0                       @ float 0
	.size	previousAmlightValue, 4

	.type	gPhase,%object          @ @gPhase
	.globl	gPhase
	.p2align	2
gPhase:
	.long	0                       @ float 0
	.size	gPhase, 4

	.type	counter,%object         @ @counter
	.globl	counter
	.p2align	2
counter:
	.long	0                       @ 0x0
	.size	counter, 4

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"Error initialising bme280\n"
	.size	.L.str, 27

	.type	.L.str.2,%object        @ @.str.2
.L.str.2:
	.asciz	"bela-bme280"
	.size	.L.str.2, 12

	.section	.init_array,"aw",%init_array
	.p2align	2
	.long	_GLOBAL__sub_I_SensorRead.ii(target1)
	.type	.L_MergedGlobals,%object @ @_MergedGlobals
	.data
	.p2align	4
.L_MergedGlobals:
	.long	0                       @ float 0
	.long	0                       @ float 0
	.long	0                       @ float 0
	.long	1105199104              @ float 28
	.long	0                       @ float 0
	.long	0                       @ float 0
	.long	0
	.zero	20
	.size	.L_MergedGlobals, 48

	.type	.L_MergedGlobals.3,%object @ @_MergedGlobals.3
	.local	.L_MergedGlobals.3
	.comm	.L_MergedGlobals.3,120,16
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)" @ string offset=0
.Linfo_string1:
	.asciz	"/root/Bela/projects/Thesis/build/SensorRead.cpp" @ string offset=45
.Linfo_string2:
	.asciz	"/root/Bela"            @ string offset=93
.Linfo_string3:
	.asciz	"bme280"                @ string offset=104
.Linfo_string4:
	.asciz	"BME280I2C"             @ string offset=111
.Linfo_string5:
	.asciz	"sensorFilter"          @ string offset=121
.Linfo_string6:
	.asciz	"_samplingRate"         @ string offset=134
.Linfo_string7:
	.asciz	"float"                 @ string offset=148
.Linfo_string8:
	.asciz	"_type"                 @ string offset=154
.Linfo_string9:
	.asciz	"int"                   @ string offset=160
.Linfo_string10:
	.asciz	"a0"                    @ string offset=164
.Linfo_string11:
	.asciz	"b1"                    @ string offset=167
.Linfo_string12:
	.asciz	"ym1"                   @ string offset=170
.Linfo_string13:
	.asciz	"OnePole"               @ string offset=174
.Linfo_string14:
	.asciz	"LOWPASS"               @ string offset=182
.Linfo_string15:
	.asciz	"HIGHPASS"              @ string offset=190
.Linfo_string16:
	.asciz	"Type"                  @ string offset=199
.Linfo_string17:
	.asciz	"_ZN7OnePole5setupEffNS_4TypeE" @ string offset=204
.Linfo_string18:
	.asciz	"setup"                 @ string offset=234
.Linfo_string19:
	.asciz	"_ZN7OnePole9setFilterEfNS_4TypeE" @ string offset=240
.Linfo_string20:
	.asciz	"setFilter"             @ string offset=273
.Linfo_string21:
	.asciz	"_ZN7OnePole7processEf" @ string offset=283
.Linfo_string22:
	.asciz	"process"               @ string offset=305
.Linfo_string23:
	.asciz	"_ZN7OnePole5setFcEf"   @ string offset=313
.Linfo_string24:
	.asciz	"setFc"                 @ string offset=333
.Linfo_string25:
	.asciz	"temp"                  @ string offset=339
.Linfo_string26:
	.asciz	"pres"                  @ string offset=344
.Linfo_string27:
	.asciz	"hum"                   @ string offset=349
.Linfo_string28:
	.asciz	"tempAdjust"            @ string offset=353
.Linfo_string29:
	.asciz	"amLight"               @ string offset=364
.Linfo_string30:
	.asciz	"smoothedValue"         @ string offset=372
.Linfo_string31:
	.asciz	"previousAmlightValue"  @ string offset=386
.Linfo_string32:
	.asciz	"gPhase"                @ string offset=407
.Linfo_string33:
	.asciz	"i2cBMETask"            @ string offset=414
.Linfo_string34:
	.asciz	"AuxiliaryTask"         @ string offset=425
.Linfo_string35:
	.asciz	"counter"               @ string offset=439
.Linfo_string36:
	.asciz	"BME280"                @ string offset=447
.Linfo_string37:
	.asciz	"OSR_Off"               @ string offset=454
.Linfo_string38:
	.asciz	"OSR_X1"                @ string offset=462
.Linfo_string39:
	.asciz	"OSR_X2"                @ string offset=469
.Linfo_string40:
	.asciz	"OSR_X4"                @ string offset=476
.Linfo_string41:
	.asciz	"OSR_X8"                @ string offset=483
.Linfo_string42:
	.asciz	"OSR_X16"               @ string offset=490
.Linfo_string43:
	.asciz	"OSR"                   @ string offset=498
.Linfo_string44:
	.asciz	"Mode_Sleep"            @ string offset=502
.Linfo_string45:
	.asciz	"Mode_Forced"           @ string offset=513
.Linfo_string46:
	.asciz	"Mode_Normal"           @ string offset=525
.Linfo_string47:
	.asciz	"Mode"                  @ string offset=537
.Linfo_string48:
	.asciz	"StandbyTime_500us"     @ string offset=542
.Linfo_string49:
	.asciz	"StandbyTime_62500us"   @ string offset=560
.Linfo_string50:
	.asciz	"StandbyTime_125ms"     @ string offset=580
.Linfo_string51:
	.asciz	"StandbyTime_250ms"     @ string offset=598
.Linfo_string52:
	.asciz	"StandbyTime_50ms"      @ string offset=616
.Linfo_string53:
	.asciz	"StandbyTime_1000ms"    @ string offset=633
.Linfo_string54:
	.asciz	"StandbyTime_10ms"      @ string offset=652
.Linfo_string55:
	.asciz	"StandbyTime_20ms"      @ string offset=669
.Linfo_string56:
	.asciz	"StandbyTime"           @ string offset=686
.Linfo_string57:
	.asciz	"Filter_Off"            @ string offset=698
.Linfo_string58:
	.asciz	"Filter_2"              @ string offset=709
.Linfo_string59:
	.asciz	"Filter_4"              @ string offset=718
.Linfo_string60:
	.asciz	"Filter_8"              @ string offset=727
.Linfo_string61:
	.asciz	"Filter_16"             @ string offset=736
.Linfo_string62:
	.asciz	"Filter"                @ string offset=746
.Linfo_string63:
	.asciz	"SpiEnable_False"       @ string offset=753
.Linfo_string64:
	.asciz	"SpiEnable_True"        @ string offset=769
.Linfo_string65:
	.asciz	"SpiEnable"             @ string offset=784
.Linfo_string66:
	.asciz	"I2CAddr_0x76"          @ string offset=794
.Linfo_string67:
	.asciz	"I2CAddr_0x77"          @ string offset=807
.Linfo_string68:
	.asciz	"I2CAddr"               @ string offset=820
.Linfo_string69:
	.asciz	"std"                   @ string offset=828
.Linfo_string70:
	.asciz	"__acos_finite"         @ string offset=832
.Linfo_string71:
	.asciz	"acos"                  @ string offset=846
.Linfo_string72:
	.asciz	"double"                @ string offset=851
.Linfo_string73:
	.asciz	"__asin_finite"         @ string offset=858
.Linfo_string74:
	.asciz	"asin"                  @ string offset=872
.Linfo_string75:
	.asciz	"atan"                  @ string offset=877
.Linfo_string76:
	.asciz	"__atan2_finite"        @ string offset=882
.Linfo_string77:
	.asciz	"atan2"                 @ string offset=897
.Linfo_string78:
	.asciz	"ceil"                  @ string offset=903
.Linfo_string79:
	.asciz	"cos"                   @ string offset=908
.Linfo_string80:
	.asciz	"__cosh_finite"         @ string offset=912
.Linfo_string81:
	.asciz	"cosh"                  @ string offset=926
.Linfo_string82:
	.asciz	"__exp_finite"          @ string offset=931
.Linfo_string83:
	.asciz	"exp"                   @ string offset=944
.Linfo_string84:
	.asciz	"fabs"                  @ string offset=948
.Linfo_string85:
	.asciz	"floor"                 @ string offset=953
.Linfo_string86:
	.asciz	"__fmod_finite"         @ string offset=959
.Linfo_string87:
	.asciz	"fmod"                  @ string offset=973
.Linfo_string88:
	.asciz	"frexp"                 @ string offset=978
.Linfo_string89:
	.asciz	"ldexp"                 @ string offset=984
.Linfo_string90:
	.asciz	"__log_finite"          @ string offset=990
.Linfo_string91:
	.asciz	"log"                   @ string offset=1003
.Linfo_string92:
	.asciz	"__log10_finite"        @ string offset=1007
.Linfo_string93:
	.asciz	"log10"                 @ string offset=1022
.Linfo_string94:
	.asciz	"modf"                  @ string offset=1028
.Linfo_string95:
	.asciz	"__pow_finite"          @ string offset=1033
.Linfo_string96:
	.asciz	"pow"                   @ string offset=1046
.Linfo_string97:
	.asciz	"sin"                   @ string offset=1050
.Linfo_string98:
	.asciz	"__sinh_finite"         @ string offset=1054
.Linfo_string99:
	.asciz	"sinh"                  @ string offset=1068
.Linfo_string100:
	.asciz	"__sqrt_finite"         @ string offset=1073
.Linfo_string101:
	.asciz	"sqrt"                  @ string offset=1087
.Linfo_string102:
	.asciz	"tan"                   @ string offset=1092
.Linfo_string103:
	.asciz	"tanh"                  @ string offset=1096
.Linfo_string104:
	.asciz	"double_t"              @ string offset=1101
.Linfo_string105:
	.asciz	"float_t"               @ string offset=1110
.Linfo_string106:
	.asciz	"__acosh_finite"        @ string offset=1118
.Linfo_string107:
	.asciz	"acosh"                 @ string offset=1133
.Linfo_string108:
	.asciz	"__acoshf_finite"       @ string offset=1139
.Linfo_string109:
	.asciz	"acoshf"                @ string offset=1155
.Linfo_string110:
	.asciz	"acoshl"                @ string offset=1162
.Linfo_string111:
	.asciz	"long double"           @ string offset=1169
.Linfo_string112:
	.asciz	"asinh"                 @ string offset=1181
.Linfo_string113:
	.asciz	"asinhf"                @ string offset=1187
.Linfo_string114:
	.asciz	"asinhl"                @ string offset=1194
.Linfo_string115:
	.asciz	"__atanh_finite"        @ string offset=1201
.Linfo_string116:
	.asciz	"atanh"                 @ string offset=1216
.Linfo_string117:
	.asciz	"__atanhf_finite"       @ string offset=1222
.Linfo_string118:
	.asciz	"atanhf"                @ string offset=1238
.Linfo_string119:
	.asciz	"atanhl"                @ string offset=1245
.Linfo_string120:
	.asciz	"cbrt"                  @ string offset=1252
.Linfo_string121:
	.asciz	"cbrtf"                 @ string offset=1257
.Linfo_string122:
	.asciz	"cbrtl"                 @ string offset=1263
.Linfo_string123:
	.asciz	"copysign"              @ string offset=1269
.Linfo_string124:
	.asciz	"copysignf"             @ string offset=1278
.Linfo_string125:
	.asciz	"copysignl"             @ string offset=1288
.Linfo_string126:
	.asciz	"erf"                   @ string offset=1298
.Linfo_string127:
	.asciz	"erff"                  @ string offset=1302
.Linfo_string128:
	.asciz	"erfl"                  @ string offset=1307
.Linfo_string129:
	.asciz	"erfc"                  @ string offset=1312
.Linfo_string130:
	.asciz	"erfcf"                 @ string offset=1317
.Linfo_string131:
	.asciz	"erfcl"                 @ string offset=1323
.Linfo_string132:
	.asciz	"__exp2_finite"         @ string offset=1329
.Linfo_string133:
	.asciz	"exp2"                  @ string offset=1343
.Linfo_string134:
	.asciz	"__exp2f_finite"        @ string offset=1348
.Linfo_string135:
	.asciz	"exp2f"                 @ string offset=1363
.Linfo_string136:
	.asciz	"exp2l"                 @ string offset=1369
.Linfo_string137:
	.asciz	"expm1"                 @ string offset=1375
.Linfo_string138:
	.asciz	"expm1f"                @ string offset=1381
.Linfo_string139:
	.asciz	"expm1l"                @ string offset=1388
.Linfo_string140:
	.asciz	"fdim"                  @ string offset=1395
.Linfo_string141:
	.asciz	"fdimf"                 @ string offset=1400
.Linfo_string142:
	.asciz	"fdiml"                 @ string offset=1406
.Linfo_string143:
	.asciz	"fma"                   @ string offset=1412
.Linfo_string144:
	.asciz	"fmaf"                  @ string offset=1416
.Linfo_string145:
	.asciz	"fmal"                  @ string offset=1421
.Linfo_string146:
	.asciz	"fmax"                  @ string offset=1426
.Linfo_string147:
	.asciz	"fmaxf"                 @ string offset=1431
.Linfo_string148:
	.asciz	"fmaxl"                 @ string offset=1437
.Linfo_string149:
	.asciz	"fmin"                  @ string offset=1443
.Linfo_string150:
	.asciz	"fminf"                 @ string offset=1448
.Linfo_string151:
	.asciz	"fminl"                 @ string offset=1454
.Linfo_string152:
	.asciz	"__hypot_finite"        @ string offset=1460
.Linfo_string153:
	.asciz	"hypot"                 @ string offset=1475
.Linfo_string154:
	.asciz	"__hypotf_finite"       @ string offset=1481
.Linfo_string155:
	.asciz	"hypotf"                @ string offset=1497
.Linfo_string156:
	.asciz	"hypotl"                @ string offset=1504
.Linfo_string157:
	.asciz	"ilogb"                 @ string offset=1511
.Linfo_string158:
	.asciz	"ilogbf"                @ string offset=1517
.Linfo_string159:
	.asciz	"ilogbl"                @ string offset=1524
.Linfo_string160:
	.asciz	"lgamma"                @ string offset=1531
.Linfo_string161:
	.asciz	"lgammaf"               @ string offset=1538
.Linfo_string162:
	.asciz	"lgammal"               @ string offset=1546
.Linfo_string163:
	.asciz	"llrint"                @ string offset=1554
.Linfo_string164:
	.asciz	"long long int"         @ string offset=1561
.Linfo_string165:
	.asciz	"llrintf"               @ string offset=1575
.Linfo_string166:
	.asciz	"llrintl"               @ string offset=1583
.Linfo_string167:
	.asciz	"llround"               @ string offset=1591
.Linfo_string168:
	.asciz	"llroundf"              @ string offset=1599
.Linfo_string169:
	.asciz	"llroundl"              @ string offset=1608
.Linfo_string170:
	.asciz	"log1p"                 @ string offset=1617
.Linfo_string171:
	.asciz	"log1pf"                @ string offset=1623
.Linfo_string172:
	.asciz	"log1pl"                @ string offset=1630
.Linfo_string173:
	.asciz	"__log2_finite"         @ string offset=1637
.Linfo_string174:
	.asciz	"log2"                  @ string offset=1651
.Linfo_string175:
	.asciz	"__log2f_finite"        @ string offset=1656
.Linfo_string176:
	.asciz	"log2f"                 @ string offset=1671
.Linfo_string177:
	.asciz	"log2l"                 @ string offset=1677
.Linfo_string178:
	.asciz	"logb"                  @ string offset=1683
.Linfo_string179:
	.asciz	"logbf"                 @ string offset=1688
.Linfo_string180:
	.asciz	"logbl"                 @ string offset=1694
.Linfo_string181:
	.asciz	"lrint"                 @ string offset=1700
.Linfo_string182:
	.asciz	"long int"              @ string offset=1706
.Linfo_string183:
	.asciz	"lrintf"                @ string offset=1715
.Linfo_string184:
	.asciz	"lrintl"                @ string offset=1722
.Linfo_string185:
	.asciz	"lround"                @ string offset=1729
.Linfo_string186:
	.asciz	"lroundf"               @ string offset=1736
.Linfo_string187:
	.asciz	"lroundl"               @ string offset=1744
.Linfo_string188:
	.asciz	"nan"                   @ string offset=1752
.Linfo_string189:
	.asciz	"char"                  @ string offset=1756
.Linfo_string190:
	.asciz	"nanf"                  @ string offset=1761
.Linfo_string191:
	.asciz	"nanl"                  @ string offset=1766
.Linfo_string192:
	.asciz	"nearbyint"             @ string offset=1771
.Linfo_string193:
	.asciz	"nearbyintf"            @ string offset=1781
.Linfo_string194:
	.asciz	"nearbyintl"            @ string offset=1792
.Linfo_string195:
	.asciz	"nextafter"             @ string offset=1803
.Linfo_string196:
	.asciz	"nextafterf"            @ string offset=1813
.Linfo_string197:
	.asciz	"nextafterl"            @ string offset=1824
.Linfo_string198:
	.asciz	"nexttoward"            @ string offset=1835
.Linfo_string199:
	.asciz	"nexttowardf"           @ string offset=1846
.Linfo_string200:
	.asciz	"nexttowardl"           @ string offset=1858
.Linfo_string201:
	.asciz	"__remainder_finite"    @ string offset=1870
.Linfo_string202:
	.asciz	"remainder"             @ string offset=1889
.Linfo_string203:
	.asciz	"__remainderf_finite"   @ string offset=1899
.Linfo_string204:
	.asciz	"remainderf"            @ string offset=1919
.Linfo_string205:
	.asciz	"remainderl"            @ string offset=1930
.Linfo_string206:
	.asciz	"remquo"                @ string offset=1941
.Linfo_string207:
	.asciz	"remquof"               @ string offset=1948
.Linfo_string208:
	.asciz	"remquol"               @ string offset=1956
.Linfo_string209:
	.asciz	"rint"                  @ string offset=1964
.Linfo_string210:
	.asciz	"rintf"                 @ string offset=1969
.Linfo_string211:
	.asciz	"rintl"                 @ string offset=1975
.Linfo_string212:
	.asciz	"round"                 @ string offset=1981
.Linfo_string213:
	.asciz	"roundf"                @ string offset=1987
.Linfo_string214:
	.asciz	"roundl"                @ string offset=1994
.Linfo_string215:
	.asciz	"scalbln"               @ string offset=2001
.Linfo_string216:
	.asciz	"scalblnf"              @ string offset=2009
.Linfo_string217:
	.asciz	"scalblnl"              @ string offset=2018
.Linfo_string218:
	.asciz	"scalbn"                @ string offset=2027
.Linfo_string219:
	.asciz	"scalbnf"               @ string offset=2034
.Linfo_string220:
	.asciz	"scalbnl"               @ string offset=2042
.Linfo_string221:
	.asciz	"tgamma"                @ string offset=2050
.Linfo_string222:
	.asciz	"tgammaf"               @ string offset=2057
.Linfo_string223:
	.asciz	"tgammal"               @ string offset=2065
.Linfo_string224:
	.asciz	"trunc"                 @ string offset=2073
.Linfo_string225:
	.asciz	"truncf"                @ string offset=2079
.Linfo_string226:
	.asciz	"truncl"                @ string offset=2086
.Linfo_string227:
	.asciz	"signed char"           @ string offset=2093
.Linfo_string228:
	.asciz	"int8_t"                @ string offset=2105
.Linfo_string229:
	.asciz	"short"                 @ string offset=2112
.Linfo_string230:
	.asciz	"int16_t"               @ string offset=2118
.Linfo_string231:
	.asciz	"int32_t"               @ string offset=2126
.Linfo_string232:
	.asciz	"int64_t"               @ string offset=2134
.Linfo_string233:
	.asciz	"int_fast8_t"           @ string offset=2142
.Linfo_string234:
	.asciz	"int_fast16_t"          @ string offset=2154
.Linfo_string235:
	.asciz	"int_fast32_t"          @ string offset=2167
.Linfo_string236:
	.asciz	"int_fast64_t"          @ string offset=2180
.Linfo_string237:
	.asciz	"int_least8_t"          @ string offset=2193
.Linfo_string238:
	.asciz	"int_least16_t"         @ string offset=2206
.Linfo_string239:
	.asciz	"int_least32_t"         @ string offset=2220
.Linfo_string240:
	.asciz	"int_least64_t"         @ string offset=2234
.Linfo_string241:
	.asciz	"intmax_t"              @ string offset=2248
.Linfo_string242:
	.asciz	"intptr_t"              @ string offset=2257
.Linfo_string243:
	.asciz	"unsigned char"         @ string offset=2266
.Linfo_string244:
	.asciz	"uint8_t"               @ string offset=2280
.Linfo_string245:
	.asciz	"unsigned short"        @ string offset=2288
.Linfo_string246:
	.asciz	"uint16_t"              @ string offset=2303
.Linfo_string247:
	.asciz	"unsigned int"          @ string offset=2312
.Linfo_string248:
	.asciz	"uint32_t"              @ string offset=2325
.Linfo_string249:
	.asciz	"long long unsigned int" @ string offset=2334
.Linfo_string250:
	.asciz	"uint64_t"              @ string offset=2357
.Linfo_string251:
	.asciz	"uint_fast8_t"          @ string offset=2366
.Linfo_string252:
	.asciz	"uint_fast16_t"         @ string offset=2379
.Linfo_string253:
	.asciz	"uint_fast32_t"         @ string offset=2393
.Linfo_string254:
	.asciz	"uint_fast64_t"         @ string offset=2407
.Linfo_string255:
	.asciz	"uint_least8_t"         @ string offset=2421
.Linfo_string256:
	.asciz	"uint_least16_t"        @ string offset=2435
.Linfo_string257:
	.asciz	"uint_least32_t"        @ string offset=2450
.Linfo_string258:
	.asciz	"uint_least64_t"        @ string offset=2465
.Linfo_string259:
	.asciz	"uintmax_t"             @ string offset=2480
.Linfo_string260:
	.asciz	"uintptr_t"             @ string offset=2490
.Linfo_string261:
	.asciz	"__clock_t"             @ string offset=2500
.Linfo_string262:
	.asciz	"clock_t"               @ string offset=2510
.Linfo_string263:
	.asciz	"__time_t"              @ string offset=2518
.Linfo_string264:
	.asciz	"time_t"                @ string offset=2527
.Linfo_string265:
	.asciz	"tm"                    @ string offset=2534
.Linfo_string266:
	.asciz	"clock"                 @ string offset=2537
.Linfo_string267:
	.asciz	"difftime"              @ string offset=2543
.Linfo_string268:
	.asciz	"mktime"                @ string offset=2552
.Linfo_string269:
	.asciz	"time"                  @ string offset=2559
.Linfo_string270:
	.asciz	"asctime"               @ string offset=2564
.Linfo_string271:
	.asciz	"ctime"                 @ string offset=2572
.Linfo_string272:
	.asciz	"gmtime"                @ string offset=2578
.Linfo_string273:
	.asciz	"localtime"             @ string offset=2585
.Linfo_string274:
	.asciz	"strftime"              @ string offset=2595
.Linfo_string275:
	.asciz	"size_t"                @ string offset=2604
.Linfo_string276:
	.asciz	"tempOSR"               @ string offset=2611
.Linfo_string277:
	.asciz	"humOSR"                @ string offset=2619
.Linfo_string278:
	.asciz	"presOSR"               @ string offset=2626
.Linfo_string279:
	.asciz	"mode"                  @ string offset=2634
.Linfo_string280:
	.asciz	"standbyTime"           @ string offset=2639
.Linfo_string281:
	.asciz	"filter"                @ string offset=2651
.Linfo_string282:
	.asciz	"spiEnable"             @ string offset=2658
.Linfo_string283:
	.asciz	"Settings"              @ string offset=2668
.Linfo_string284:
	.asciz	"_ZN6BME2808SettingsC2ENS_3OSRES1_S1_NS_4ModeENS_11StandbyTimeENS_6FilterENS_9SpiEnableE" @ string offset=2677
.Linfo_string285:
	.asciz	"this"                  @ string offset=2765
.Linfo_string286:
	.asciz	"_tosr"                 @ string offset=2770
.Linfo_string287:
	.asciz	"_hosr"                 @ string offset=2776
.Linfo_string288:
	.asciz	"_posr"                 @ string offset=2782
.Linfo_string289:
	.asciz	"_mode"                 @ string offset=2788
.Linfo_string290:
	.asciz	"_st"                   @ string offset=2794
.Linfo_string291:
	.asciz	"_filter"               @ string offset=2798
.Linfo_string292:
	.asciz	"_se"                   @ string offset=2806
.Linfo_string293:
	.asciz	"bme280Addr"            @ string offset=2810
.Linfo_string294:
	.asciz	"_ZN9BME280I2C8SettingsC2EN6BME2803OSRES2_S2_NS1_4ModeENS1_11StandbyTimeENS1_6FilterENS1_9SpiEnableENS_7I2CAddrE" @ string offset=2821
.Linfo_string295:
	.asciz	"_addr"                 @ string offset=2933
.Linfo_string296:
	.asciz	"__cxx_global_var_init" @ string offset=2939
.Linfo_string297:
	.asciz	"__cxx_global_var_init.1" @ string offset=2961
.Linfo_string298:
	.asciz	"_Z18initialize_sensorsP11BelaContext" @ string offset=2985
.Linfo_string299:
	.asciz	"initialize_sensors"    @ string offset=3022
.Linfo_string300:
	.asciz	"bool"                  @ string offset=3041
.Linfo_string301:
	.asciz	"_Z10readBME280Pv"      @ string offset=3046
.Linfo_string302:
	.asciz	"readBME280"            @ string offset=3063
.Linfo_string303:
	.asciz	"_Z11bme280_readRfS_S_" @ string offset=3074
.Linfo_string304:
	.asciz	"bme280_read"           @ string offset=3096
.Linfo_string305:
	.asciz	"_Z13temt6000_readP11BelaContext" @ string offset=3108
.Linfo_string306:
	.asciz	"temt6000_read"         @ string offset=3140
.Linfo_string307:
	.asciz	"_GLOBAL__sub_I_SensorRead.ii" @ string offset=3154
.Linfo_string308:
	.asciz	"context"               @ string offset=3183
.Linfo_string309:
	.asciz	"audioIn"               @ string offset=3191
.Linfo_string310:
	.asciz	"audioOut"              @ string offset=3199
.Linfo_string311:
	.asciz	"analogIn"              @ string offset=3208
.Linfo_string312:
	.asciz	"analogOut"             @ string offset=3217
.Linfo_string313:
	.asciz	"digital"               @ string offset=3227
.Linfo_string314:
	.asciz	"audioFrames"           @ string offset=3235
.Linfo_string315:
	.asciz	"audioInChannels"       @ string offset=3247
.Linfo_string316:
	.asciz	"audioOutChannels"      @ string offset=3263
.Linfo_string317:
	.asciz	"audioSampleRate"       @ string offset=3280
.Linfo_string318:
	.asciz	"analogFrames"          @ string offset=3296
.Linfo_string319:
	.asciz	"analogInChannels"      @ string offset=3309
.Linfo_string320:
	.asciz	"analogOutChannels"     @ string offset=3326
.Linfo_string321:
	.asciz	"analogSampleRate"      @ string offset=3344
.Linfo_string322:
	.asciz	"digitalFrames"         @ string offset=3361
.Linfo_string323:
	.asciz	"digitalChannels"       @ string offset=3375
.Linfo_string324:
	.asciz	"digitalSampleRate"     @ string offset=3391
.Linfo_string325:
	.asciz	"audioFramesElapsed"    @ string offset=3409
.Linfo_string326:
	.asciz	"multiplexerChannels"   @ string offset=3428
.Linfo_string327:
	.asciz	"multiplexerStartingChannel" @ string offset=3448
.Linfo_string328:
	.asciz	"multiplexerAnalogIn"   @ string offset=3475
.Linfo_string329:
	.asciz	"audioExpanderEnabled"  @ string offset=3495
.Linfo_string330:
	.asciz	"flags"                 @ string offset=3516
.Linfo_string331:
	.asciz	"projectName"           @ string offset=3522
.Linfo_string332:
	.asciz	"sizetype"              @ string offset=3534
.Linfo_string333:
	.asciz	"underrunCount"         @ string offset=3543
.Linfo_string334:
	.asciz	"BelaContext"           @ string offset=3557
.Linfo_string335:
	.asciz	"pressure"              @ string offset=3569
.Linfo_string336:
	.asciz	"temperature"           @ string offset=3578
.Linfo_string337:
	.asciz	"humidity"              @ string offset=3590
.Linfo_string338:
	.asciz	"tempF"                 @ string offset=3599
.Linfo_string339:
	.asciz	"n"                     @ string offset=3605
.Linfo_string340:
	.asciz	"alpha"                 @ string offset=3607
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
	.long	.Lfunc_begin0
	.long	.Ltmp6
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp6
	.long	.Ltmp11
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc1:
	.long	.Lfunc_begin1
	.long	.Ltmp19
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc2:
	.long	.Lfunc_begin2
	.long	.Ltmp30
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp30
	.long	.Ltmp34
	.short	1                       @ Loc expr size
	.byte	86                      @ DW_OP_reg6
	.long	0
	.long	0
.Ldebug_loc3:
	.long	.Lfunc_begin2
	.long	.Ltmp32
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	.Ltmp32
	.long	.Ltmp34
	.short	1                       @ Loc expr size
	.byte	85                      @ DW_OP_reg5
	.long	0
	.long	0
.Ldebug_loc4:
	.long	.Lfunc_begin2
	.long	.Ltmp31
	.short	1                       @ Loc expr size
	.byte	82                      @ DW_OP_reg2
	.long	.Ltmp31
	.long	.Ltmp34
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc5:
	.long	.Ltmp33
	.long	.Ltmp34
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc6:
	.long	.Lfunc_begin3
	.long	.Ltmp43
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp43
	.long	.Ltmp46
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	.Ltmp49
	.long	.Ltmp50
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc7:
	.long	.Ltmp43
	.long	.Ltmp48
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	0                       @ 0
	.byte	159                     @ DW_OP_stack_value
	.long	.Ltmp48
	.long	.Ltmp49
	.short	1                       @ Loc expr size
	.byte	86                      @ DW_OP_reg6
	.long	.Ltmp51
	.long	.Ltmp52
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc8:
	.long	.Ltmp56
	.long	.Lfunc_end3
	.short	7                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	205                     @ 1061997773
	.byte	153                     @ DW_OP_stack_value
	.byte	179                     @ 
	.byte	250                     @ 
	.byte	3                       @ 
	.byte	159                     @ 
	.long	0
	.long	0
.Ldebug_loc9:
	.long	.Ltmp68
	.long	.Ltmp70
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
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
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	4                       @ Abbreviation Code
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
	.byte	5                       @ Abbreviation Code
	.byte	40                      @ DW_TAG_enumerator
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	28                      @ DW_AT_const_value
	.byte	13                      @ DW_FORM_sdata
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	6                       @ Abbreviation Code
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
	.byte	7                       @ Abbreviation Code
	.byte	28                      @ DW_TAG_inheritance
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	56                      @ DW_AT_data_member_location
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
	.byte	13                      @ Abbreviation Code
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
	.byte	14                      @ Abbreviation Code
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
	.byte	15                      @ Abbreviation Code
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
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	50                      @ DW_AT_accessibility
	.byte	11                      @ DW_FORM_data1
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
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	19                      @ Abbreviation Code
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
	.byte	20                      @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	21                      @ Abbreviation Code
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
	.byte	22                      @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	23                      @ Abbreviation Code
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
	.byte	24                      @ Abbreviation Code
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
	.byte	25                      @ Abbreviation Code
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
	.byte	26                      @ Abbreviation Code
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
	.byte	27                      @ Abbreviation Code
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
	.byte	28                      @ Abbreviation Code
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
	.byte	29                      @ Abbreviation Code
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
	.byte	30                      @ Abbreviation Code
	.byte	38                      @ DW_TAG_const_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	31                      @ Abbreviation Code
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
	.byte	32                      @ Abbreviation Code
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
	.byte	33                      @ Abbreviation Code
	.byte	55                      @ DW_TAG_restrict_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	34                      @ Abbreviation Code
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
	.byte	35                      @ Abbreviation Code
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
	.byte	36                      @ Abbreviation Code
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
	.byte	37                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	23                      @ DW_FORM_sec_offset
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	38                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
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
	.byte	39                      @ Abbreviation Code
	.byte	11                      @ DW_TAG_lexical_block
	.byte	1                       @ DW_CHILDREN_yes
	.byte	85                      @ DW_AT_ranges
	.byte	23                      @ DW_FORM_sec_offset
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	40                      @ Abbreviation Code
	.byte	11                      @ DW_TAG_lexical_block
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	41                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	71                      @ DW_AT_specification
	.byte	19                      @ DW_FORM_ref4
	.byte	32                      @ DW_AT_inline
	.byte	11                      @ DW_FORM_data1
	.byte	100                     @ DW_AT_object_pointer
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	42                      @ Abbreviation Code
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
	.byte	43                      @ Abbreviation Code
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
	.byte	44                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	32                      @ DW_AT_inline
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	45                      @ Abbreviation Code
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
	.byte	52                      @ DW_AT_artificial
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	46                      @ Abbreviation Code
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
	.byte	47                      @ Abbreviation Code
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
	.ascii	"\266B"                 @ DW_AT_GNU_discriminator
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	48                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	23                      @ DW_FORM_sec_offset
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	49                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	28                      @ DW_AT_const_value
	.byte	13                      @ DW_FORM_sdata
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	50                      @ Abbreviation Code
	.byte	29                      @ DW_TAG_inlined_subroutine
	.byte	0                       @ DW_CHILDREN_no
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
	.ascii	"\266B"                 @ DW_AT_GNU_discriminator
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	51                      @ Abbreviation Code
	.byte	19                      @ DW_TAG_structure_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	11                      @ DW_AT_byte_size
	.byte	5                       @ DW_FORM_data2
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	52                      @ Abbreviation Code
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
	.byte	53                      @ Abbreviation Code
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
	.byte	5                       @ DW_FORM_data2
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	54                      @ Abbreviation Code
	.byte	1                       @ DW_TAG_array_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	55                      @ Abbreviation Code
	.byte	33                      @ DW_TAG_subrange_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	55                      @ DW_AT_count
	.byte	5                       @ DW_FORM_data2
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	56                      @ Abbreviation Code
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
	.byte	57                      @ Abbreviation Code
	.byte	16                      @ DW_TAG_reference_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	0                       @ EOM(3)
	.section	.debug_info,"",%progbits
.Lsection_info:
.Lcu_begin0:
	.long	6699                    @ Length of Unit
	.short	4                       @ DWARF version number
	.long	.Lsection_abbrev        @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0x1a24 DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	4                       @ DW_AT_language
	.long	.Linfo_string1          @ DW_AT_name
	.long	.Lline_table_start0     @ DW_AT_stmt_list
	.long	.Linfo_string2          @ DW_AT_comp_dir
	.long	0                       @ DW_AT_low_pc
	.long	.Ldebug_ranges1         @ DW_AT_ranges
	.byte	2                       @ Abbrev [2] 0x26:0x14 DW_TAG_variable
	.long	.Linfo_string3          @ DW_AT_name
	.long	58                      @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_decl_file
	.byte	13                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals.3
	.byte	16
	.byte	0
	.byte	34
	.byte	3                       @ Abbrev [3] 0x3a:0x6e DW_TAG_class_type
	.long	.Linfo_string4          @ DW_AT_name
	.byte	120                     @ DW_AT_byte_size
                                        @ DW_AT_declaration
	.byte	4                       @ Abbrev [4] 0x40:0x17 DW_TAG_enumeration_type
	.long	.Linfo_string68         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	5                       @ DW_AT_decl_file
	.byte	63                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x48:0x7 DW_TAG_enumerator
	.long	.Linfo_string66         @ DW_AT_name
	.asciz	"\366"                  @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0x4f:0x7 DW_TAG_enumerator
	.long	.Linfo_string67         @ DW_AT_name
	.asciz	"\367"                  @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	6                       @ Abbrev [6] 0x57:0x50 DW_TAG_structure_type
	.long	.Linfo_string283        @ DW_AT_name
	.byte	32                      @ DW_AT_byte_size
	.byte	5                       @ DW_AT_decl_file
	.byte	70                      @ DW_AT_decl_line
	.byte	7                       @ Abbrev [7] 0x5f:0x6 DW_TAG_inheritance
	.long	860                     @ DW_AT_type
	.byte	0                       @ DW_AT_data_member_location
	.byte	8                       @ Abbrev [8] 0x65:0xc DW_TAG_member
	.long	.Linfo_string293        @ DW_AT_name
	.long	64                      @ DW_AT_type
	.byte	5                       @ DW_AT_decl_file
	.byte	84                      @ DW_AT_decl_line
	.byte	28                      @ DW_AT_data_member_location
	.byte	9                       @ Abbrev [9] 0x71:0x35 DW_TAG_subprogram
	.long	.Linfo_string283        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	72                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x78:0x5 DW_TAG_formal_parameter
	.long	5967                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	11                      @ Abbrev [11] 0x7d:0x5 DW_TAG_formal_parameter
	.long	671                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x82:0x5 DW_TAG_formal_parameter
	.long	671                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x87:0x5 DW_TAG_formal_parameter
	.long	671                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x8c:0x5 DW_TAG_formal_parameter
	.long	716                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x91:0x5 DW_TAG_formal_parameter
	.long	743                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x96:0x5 DW_TAG_formal_parameter
	.long	800                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x9b:0x5 DW_TAG_formal_parameter
	.long	839                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xa0:0x5 DW_TAG_formal_parameter
	.long	64                      @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	2                       @ Abbrev [2] 0xa8:0x14 DW_TAG_variable
	.long	.Linfo_string5          @ DW_AT_name
	.long	188                     @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_decl_file
	.byte	15                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals
	.byte	16
	.byte	28
	.byte	34
	.byte	12                      @ Abbrev [12] 0xbc:0xfe DW_TAG_class_type
	.long	.Linfo_string13         @ DW_AT_name
	.byte	20                      @ DW_AT_byte_size
	.byte	2                       @ DW_AT_decl_file
	.byte	11                      @ DW_AT_decl_line
	.byte	8                       @ Abbrev [8] 0xc4:0xc DW_TAG_member
	.long	.Linfo_string6          @ DW_AT_name
	.long	442                     @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.byte	24                      @ DW_AT_decl_line
	.byte	0                       @ DW_AT_data_member_location
	.byte	8                       @ Abbrev [8] 0xd0:0xc DW_TAG_member
	.long	.Linfo_string8          @ DW_AT_name
	.long	449                     @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.byte	25                      @ DW_AT_decl_line
	.byte	4                       @ DW_AT_data_member_location
	.byte	8                       @ Abbrev [8] 0xdc:0xc DW_TAG_member
	.long	.Linfo_string10         @ DW_AT_name
	.long	442                     @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.byte	26                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_data_member_location
	.byte	8                       @ Abbrev [8] 0xe8:0xc DW_TAG_member
	.long	.Linfo_string11         @ DW_AT_name
	.long	442                     @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.byte	26                      @ DW_AT_decl_line
	.byte	12                      @ DW_AT_data_member_location
	.byte	8                       @ Abbrev [8] 0xf4:0xc DW_TAG_member
	.long	.Linfo_string12         @ DW_AT_name
	.long	442                     @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.byte	26                      @ DW_AT_decl_line
	.byte	16                      @ DW_AT_data_member_location
	.byte	13                      @ Abbrev [13] 0x100:0xe DW_TAG_subprogram
	.long	.Linfo_string13         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	18                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	10                      @ Abbrev [10] 0x108:0x5 DW_TAG_formal_parameter
	.long	456                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	0                       @ End Of Children Mark
	.byte	13                      @ Abbrev [13] 0x10e:0x1d DW_TAG_subprogram
	.long	.Linfo_string13         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	19                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	10                      @ Abbrev [10] 0x116:0x5 DW_TAG_formal_parameter
	.long	456                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	11                      @ Abbrev [11] 0x11b:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x120:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x125:0x5 DW_TAG_formal_parameter
	.long	299                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	14                      @ Abbrev [14] 0x12b:0xb DW_TAG_typedef
	.long	310                     @ DW_AT_type
	.long	.Linfo_string16         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	17                      @ DW_AT_decl_line
	.byte	15                      @ Abbrev [15] 0x136:0x11 DW_TAG_enumeration_type
	.byte	4                       @ DW_AT_byte_size
	.byte	2                       @ DW_AT_decl_file
	.byte	14                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x13a:0x6 DW_TAG_enumerator
	.long	.Linfo_string14         @ DW_AT_name
	.byte	0                       @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0x140:0x6 DW_TAG_enumerator
	.long	.Linfo_string15         @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	16                      @ Abbrev [16] 0x147:0x25 DW_TAG_subprogram
	.long	.Linfo_string17         @ DW_AT_linkage_name
	.long	.Linfo_string18         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	20                      @ DW_AT_decl_line
	.long	449                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	10                      @ Abbrev [10] 0x157:0x5 DW_TAG_formal_parameter
	.long	456                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	11                      @ Abbrev [11] 0x15c:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x161:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x166:0x5 DW_TAG_formal_parameter
	.long	299                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	17                      @ Abbrev [17] 0x16c:0x1c DW_TAG_subprogram
	.long	.Linfo_string19         @ DW_AT_linkage_name
	.long	.Linfo_string20         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	21                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	10                      @ Abbrev [10] 0x178:0x5 DW_TAG_formal_parameter
	.long	456                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	11                      @ Abbrev [11] 0x17d:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x182:0x5 DW_TAG_formal_parameter
	.long	299                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	16                      @ Abbrev [16] 0x188:0x1b DW_TAG_subprogram
	.long	.Linfo_string21         @ DW_AT_linkage_name
	.long	.Linfo_string22         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	22                      @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_accessibility
                                        @ DW_ACCESS_public
	.byte	10                      @ Abbrev [10] 0x198:0x5 DW_TAG_formal_parameter
	.long	456                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	11                      @ Abbrev [11] 0x19d:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0x1a3:0x16 DW_TAG_subprogram
	.long	.Linfo_string23         @ DW_AT_linkage_name
	.long	.Linfo_string24         @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.byte	27                      @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x1ae:0x5 DW_TAG_formal_parameter
	.long	456                     @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	11                      @ Abbrev [11] 0x1b3:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	19                      @ Abbrev [19] 0x1ba:0x7 DW_TAG_base_type
	.long	.Linfo_string7          @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	19                      @ Abbrev [19] 0x1c1:0x7 DW_TAG_base_type
	.long	.Linfo_string9          @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	20                      @ Abbrev [20] 0x1c8:0x5 DW_TAG_pointer_type
	.long	188                     @ DW_AT_type
	.byte	2                       @ Abbrev [2] 0x1cd:0x14 DW_TAG_variable
	.long	.Linfo_string25         @ DW_AT_name
	.long	442                     @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_decl_file
	.byte	18                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals
	.byte	16
	.byte	0
	.byte	34
	.byte	2                       @ Abbrev [2] 0x1e1:0x14 DW_TAG_variable
	.long	.Linfo_string26         @ DW_AT_name
	.long	442                     @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_decl_file
	.byte	18                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals
	.byte	16
	.byte	4
	.byte	34
	.byte	2                       @ Abbrev [2] 0x1f5:0x14 DW_TAG_variable
	.long	.Linfo_string27         @ DW_AT_name
	.long	442                     @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_decl_file
	.byte	18                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals
	.byte	16
	.byte	8
	.byte	34
	.byte	2                       @ Abbrev [2] 0x209:0x14 DW_TAG_variable
	.long	.Linfo_string28         @ DW_AT_name
	.long	442                     @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_decl_file
	.byte	19                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals
	.byte	16
	.byte	12
	.byte	34
	.byte	2                       @ Abbrev [2] 0x21d:0x14 DW_TAG_variable
	.long	.Linfo_string29         @ DW_AT_name
	.long	442                     @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_decl_file
	.byte	22                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals
	.byte	16
	.byte	16
	.byte	34
	.byte	2                       @ Abbrev [2] 0x231:0x14 DW_TAG_variable
	.long	.Linfo_string30         @ DW_AT_name
	.long	442                     @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_decl_file
	.byte	23                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals
	.byte	16
	.byte	20
	.byte	34
	.byte	2                       @ Abbrev [2] 0x245:0x11 DW_TAG_variable
	.long	.Linfo_string31         @ DW_AT_name
	.long	442                     @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_decl_file
	.byte	24                      @ DW_AT_decl_line
	.byte	5                       @ DW_AT_location
	.byte	3
	.long	previousAmlightValue
	.byte	2                       @ Abbrev [2] 0x256:0x11 DW_TAG_variable
	.long	.Linfo_string32         @ DW_AT_name
	.long	442                     @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_decl_file
	.byte	29                      @ DW_AT_decl_line
	.byte	5                       @ DW_AT_location
	.byte	3
	.long	gPhase
	.byte	2                       @ Abbrev [2] 0x267:0x14 DW_TAG_variable
	.long	.Linfo_string33         @ DW_AT_name
	.long	635                     @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_decl_file
	.byte	32                      @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals
	.byte	16
	.byte	24
	.byte	34
	.byte	21                      @ Abbrev [21] 0x27b:0xc DW_TAG_typedef
	.long	647                     @ DW_AT_type
	.long	.Linfo_string34         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	548                     @ DW_AT_decl_line
	.byte	22                      @ Abbrev [22] 0x287:0x1 DW_TAG_pointer_type
	.byte	2                       @ Abbrev [2] 0x288:0x11 DW_TAG_variable
	.long	.Linfo_string35         @ DW_AT_name
	.long	449                     @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_decl_file
	.byte	34                      @ DW_AT_decl_line
	.byte	5                       @ DW_AT_location
	.byte	3
	.long	counter
	.byte	3                       @ Abbrev [3] 0x299:0x151 DW_TAG_class_type
	.long	.Linfo_string36         @ DW_AT_name
	.byte	84                      @ DW_AT_byte_size
                                        @ DW_AT_declaration
	.byte	4                       @ Abbrev [4] 0x29f:0x2d DW_TAG_enumeration_type
	.long	.Linfo_string43         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	4                       @ DW_AT_decl_file
	.byte	71                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x2a7:0x6 DW_TAG_enumerator
	.long	.Linfo_string37         @ DW_AT_name
	.byte	0                       @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0x2ad:0x6 DW_TAG_enumerator
	.long	.Linfo_string38         @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0x2b3:0x6 DW_TAG_enumerator
	.long	.Linfo_string39         @ DW_AT_name
	.byte	2                       @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0x2b9:0x6 DW_TAG_enumerator
	.long	.Linfo_string40         @ DW_AT_name
	.byte	3                       @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0x2bf:0x6 DW_TAG_enumerator
	.long	.Linfo_string41         @ DW_AT_name
	.byte	4                       @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0x2c5:0x6 DW_TAG_enumerator
	.long	.Linfo_string42         @ DW_AT_name
	.byte	5                       @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	4                       @ Abbrev [4] 0x2cc:0x1b DW_TAG_enumeration_type
	.long	.Linfo_string47         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	4                       @ DW_AT_decl_file
	.byte	81                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x2d4:0x6 DW_TAG_enumerator
	.long	.Linfo_string44         @ DW_AT_name
	.byte	0                       @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0x2da:0x6 DW_TAG_enumerator
	.long	.Linfo_string45         @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0x2e0:0x6 DW_TAG_enumerator
	.long	.Linfo_string46         @ DW_AT_name
	.byte	3                       @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	4                       @ Abbrev [4] 0x2e7:0x39 DW_TAG_enumeration_type
	.long	.Linfo_string56         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	4                       @ DW_AT_decl_file
	.byte	88                      @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x2ef:0x6 DW_TAG_enumerator
	.long	.Linfo_string48         @ DW_AT_name
	.byte	0                       @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0x2f5:0x6 DW_TAG_enumerator
	.long	.Linfo_string49         @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0x2fb:0x6 DW_TAG_enumerator
	.long	.Linfo_string50         @ DW_AT_name
	.byte	2                       @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0x301:0x6 DW_TAG_enumerator
	.long	.Linfo_string51         @ DW_AT_name
	.byte	3                       @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0x307:0x6 DW_TAG_enumerator
	.long	.Linfo_string52         @ DW_AT_name
	.byte	4                       @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0x30d:0x6 DW_TAG_enumerator
	.long	.Linfo_string53         @ DW_AT_name
	.byte	5                       @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0x313:0x6 DW_TAG_enumerator
	.long	.Linfo_string54         @ DW_AT_name
	.byte	6                       @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0x319:0x6 DW_TAG_enumerator
	.long	.Linfo_string55         @ DW_AT_name
	.byte	7                       @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	4                       @ Abbrev [4] 0x320:0x27 DW_TAG_enumeration_type
	.long	.Linfo_string62         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	4                       @ DW_AT_decl_file
	.byte	100                     @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x328:0x6 DW_TAG_enumerator
	.long	.Linfo_string57         @ DW_AT_name
	.byte	0                       @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0x32e:0x6 DW_TAG_enumerator
	.long	.Linfo_string58         @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0x334:0x6 DW_TAG_enumerator
	.long	.Linfo_string59         @ DW_AT_name
	.byte	2                       @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0x33a:0x6 DW_TAG_enumerator
	.long	.Linfo_string60         @ DW_AT_name
	.byte	3                       @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0x340:0x6 DW_TAG_enumerator
	.long	.Linfo_string61         @ DW_AT_name
	.byte	4                       @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	4                       @ Abbrev [4] 0x347:0x15 DW_TAG_enumeration_type
	.long	.Linfo_string65         @ DW_AT_name
	.byte	4                       @ DW_AT_byte_size
	.byte	4                       @ DW_AT_decl_file
	.byte	109                     @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x34f:0x6 DW_TAG_enumerator
	.long	.Linfo_string63         @ DW_AT_name
	.byte	0                       @ DW_AT_const_value
	.byte	5                       @ Abbrev [5] 0x355:0x6 DW_TAG_enumerator
	.long	.Linfo_string64         @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	6                       @ Abbrev [6] 0x35c:0x8d DW_TAG_structure_type
	.long	.Linfo_string283        @ DW_AT_name
	.byte	28                      @ DW_AT_byte_size
	.byte	4                       @ DW_AT_decl_file
	.byte	126                     @ DW_AT_decl_line
	.byte	8                       @ Abbrev [8] 0x364:0xc DW_TAG_member
	.long	.Linfo_string276        @ DW_AT_name
	.long	671                     @ DW_AT_type
	.byte	4                       @ DW_AT_decl_file
	.byte	144                     @ DW_AT_decl_line
	.byte	0                       @ DW_AT_data_member_location
	.byte	8                       @ Abbrev [8] 0x370:0xc DW_TAG_member
	.long	.Linfo_string277        @ DW_AT_name
	.long	671                     @ DW_AT_type
	.byte	4                       @ DW_AT_decl_file
	.byte	145                     @ DW_AT_decl_line
	.byte	4                       @ DW_AT_data_member_location
	.byte	8                       @ Abbrev [8] 0x37c:0xc DW_TAG_member
	.long	.Linfo_string278        @ DW_AT_name
	.long	671                     @ DW_AT_type
	.byte	4                       @ DW_AT_decl_file
	.byte	146                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_data_member_location
	.byte	8                       @ Abbrev [8] 0x388:0xc DW_TAG_member
	.long	.Linfo_string279        @ DW_AT_name
	.long	716                     @ DW_AT_type
	.byte	4                       @ DW_AT_decl_file
	.byte	147                     @ DW_AT_decl_line
	.byte	12                      @ DW_AT_data_member_location
	.byte	8                       @ Abbrev [8] 0x394:0xc DW_TAG_member
	.long	.Linfo_string280        @ DW_AT_name
	.long	743                     @ DW_AT_type
	.byte	4                       @ DW_AT_decl_file
	.byte	148                     @ DW_AT_decl_line
	.byte	16                      @ DW_AT_data_member_location
	.byte	8                       @ Abbrev [8] 0x3a0:0xc DW_TAG_member
	.long	.Linfo_string281        @ DW_AT_name
	.long	800                     @ DW_AT_type
	.byte	4                       @ DW_AT_decl_file
	.byte	149                     @ DW_AT_decl_line
	.byte	20                      @ DW_AT_data_member_location
	.byte	8                       @ Abbrev [8] 0x3ac:0xc DW_TAG_member
	.long	.Linfo_string282        @ DW_AT_name
	.long	839                     @ DW_AT_type
	.byte	4                       @ DW_AT_decl_file
	.byte	150                     @ DW_AT_decl_line
	.byte	24                      @ DW_AT_data_member_location
	.byte	9                       @ Abbrev [9] 0x3b8:0x30 DW_TAG_subprogram
	.long	.Linfo_string283        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	128                     @ DW_AT_decl_line
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	10                      @ Abbrev [10] 0x3bf:0x5 DW_TAG_formal_parameter
	.long	5856                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	11                      @ Abbrev [11] 0x3c4:0x5 DW_TAG_formal_parameter
	.long	671                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x3c9:0x5 DW_TAG_formal_parameter
	.long	671                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x3ce:0x5 DW_TAG_formal_parameter
	.long	671                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x3d3:0x5 DW_TAG_formal_parameter
	.long	716                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x3d8:0x5 DW_TAG_formal_parameter
	.long	743                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x3dd:0x5 DW_TAG_formal_parameter
	.long	800                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x3e2:0x5 DW_TAG_formal_parameter
	.long	839                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	23                      @ Abbrev [23] 0x3ea:0x520 DW_TAG_namespace
	.long	.Linfo_string69         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	199                     @ DW_AT_decl_line
	.byte	24                      @ Abbrev [24] 0x3f1:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	106                     @ DW_AT_decl_line
	.long	2314                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x3f8:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	125                     @ DW_AT_decl_line
	.long	2342                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x3ff:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	144                     @ DW_AT_decl_line
	.long	2363                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x406:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	163                     @ DW_AT_decl_line
	.long	2380                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x40d:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	184                     @ DW_AT_decl_line
	.long	2406                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x414:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	203                     @ DW_AT_decl_line
	.long	2423                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x41b:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	222                     @ DW_AT_decl_line
	.long	2440                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x422:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	241                     @ DW_AT_decl_line
	.long	2461                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x429:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	260                     @ DW_AT_decl_line
	.long	2482                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x431:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	279                     @ DW_AT_decl_line
	.long	2499                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x439:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	298                     @ DW_AT_decl_line
	.long	2516                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x441:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	319                     @ DW_AT_decl_line
	.long	2542                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x449:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	338                     @ DW_AT_decl_line
	.long	2569                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x451:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	357                     @ DW_AT_decl_line
	.long	2591                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x459:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	376                     @ DW_AT_decl_line
	.long	2613                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x461:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	395                     @ DW_AT_decl_line
	.long	2635                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x469:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	407                     @ DW_AT_decl_line
	.long	2662                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x471:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	444                     @ DW_AT_decl_line
	.long	2689                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x479:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	463                     @ DW_AT_decl_line
	.long	2706                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x481:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	482                     @ DW_AT_decl_line
	.long	2728                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x489:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	501                     @ DW_AT_decl_line
	.long	2750                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x491:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	520                     @ DW_AT_decl_line
	.long	2767                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x499:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1101                    @ DW_AT_decl_line
	.long	2784                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x4a1:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1102                    @ DW_AT_decl_line
	.long	2795                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x4a9:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1105                    @ DW_AT_decl_line
	.long	2806                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x4b1:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1106                    @ DW_AT_decl_line
	.long	2827                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x4b9:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1107                    @ DW_AT_decl_line
	.long	2848                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x4c1:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1109                    @ DW_AT_decl_line
	.long	2876                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x4c9:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1110                    @ DW_AT_decl_line
	.long	2893                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x4d1:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1111                    @ DW_AT_decl_line
	.long	2910                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x4d9:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1113                    @ DW_AT_decl_line
	.long	2927                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x4e1:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1114                    @ DW_AT_decl_line
	.long	2948                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x4e9:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1115                    @ DW_AT_decl_line
	.long	2969                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x4f1:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1117                    @ DW_AT_decl_line
	.long	2990                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x4f9:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1118                    @ DW_AT_decl_line
	.long	3007                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x501:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1119                    @ DW_AT_decl_line
	.long	3024                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x509:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1121                    @ DW_AT_decl_line
	.long	3041                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x511:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1122                    @ DW_AT_decl_line
	.long	3063                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x519:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1123                    @ DW_AT_decl_line
	.long	3085                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x521:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1125                    @ DW_AT_decl_line
	.long	3107                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x529:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1126                    @ DW_AT_decl_line
	.long	3125                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x531:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1127                    @ DW_AT_decl_line
	.long	3143                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x539:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1129                    @ DW_AT_decl_line
	.long	3161                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x541:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1130                    @ DW_AT_decl_line
	.long	3179                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x549:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1131                    @ DW_AT_decl_line
	.long	3197                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x551:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1133                    @ DW_AT_decl_line
	.long	3215                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x559:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1134                    @ DW_AT_decl_line
	.long	3236                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x561:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1135                    @ DW_AT_decl_line
	.long	3257                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x569:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1137                    @ DW_AT_decl_line
	.long	3278                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x571:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1138                    @ DW_AT_decl_line
	.long	3295                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x579:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1139                    @ DW_AT_decl_line
	.long	3312                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x581:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1141                    @ DW_AT_decl_line
	.long	3329                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x589:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1142                    @ DW_AT_decl_line
	.long	3352                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x591:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1143                    @ DW_AT_decl_line
	.long	3375                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x599:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1145                    @ DW_AT_decl_line
	.long	3398                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x5a1:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1146                    @ DW_AT_decl_line
	.long	3426                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x5a9:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1147                    @ DW_AT_decl_line
	.long	3454                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x5b1:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1149                    @ DW_AT_decl_line
	.long	3482                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x5b9:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1150                    @ DW_AT_decl_line
	.long	3505                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x5c1:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1151                    @ DW_AT_decl_line
	.long	3528                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x5c9:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1153                    @ DW_AT_decl_line
	.long	3551                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x5d1:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1154                    @ DW_AT_decl_line
	.long	3574                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x5d9:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1155                    @ DW_AT_decl_line
	.long	3597                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x5e1:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1157                    @ DW_AT_decl_line
	.long	3620                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x5e9:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1158                    @ DW_AT_decl_line
	.long	3646                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x5f1:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1159                    @ DW_AT_decl_line
	.long	3672                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x5f9:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1161                    @ DW_AT_decl_line
	.long	3698                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x601:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1162                    @ DW_AT_decl_line
	.long	3716                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x609:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1163                    @ DW_AT_decl_line
	.long	3734                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x611:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1165                    @ DW_AT_decl_line
	.long	3752                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x619:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1166                    @ DW_AT_decl_line
	.long	3770                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x621:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1167                    @ DW_AT_decl_line
	.long	3788                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x629:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1169                    @ DW_AT_decl_line
	.long	3806                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x631:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1170                    @ DW_AT_decl_line
	.long	3831                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x639:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1171                    @ DW_AT_decl_line
	.long	3849                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x641:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1173                    @ DW_AT_decl_line
	.long	3867                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x649:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1174                    @ DW_AT_decl_line
	.long	3885                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x651:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1175                    @ DW_AT_decl_line
	.long	3903                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x659:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1177                    @ DW_AT_decl_line
	.long	3921                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x661:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1178                    @ DW_AT_decl_line
	.long	3938                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x669:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1179                    @ DW_AT_decl_line
	.long	3955                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x671:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1181                    @ DW_AT_decl_line
	.long	3972                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x679:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1182                    @ DW_AT_decl_line
	.long	3994                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x681:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1183                    @ DW_AT_decl_line
	.long	4016                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x689:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1185                    @ DW_AT_decl_line
	.long	4038                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x691:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1186                    @ DW_AT_decl_line
	.long	4055                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x699:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1187                    @ DW_AT_decl_line
	.long	4072                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x6a1:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1189                    @ DW_AT_decl_line
	.long	4089                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x6a9:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1190                    @ DW_AT_decl_line
	.long	4114                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x6b1:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1191                    @ DW_AT_decl_line
	.long	4132                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x6b9:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1193                    @ DW_AT_decl_line
	.long	4150                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x6c1:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1194                    @ DW_AT_decl_line
	.long	4168                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x6c9:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1195                    @ DW_AT_decl_line
	.long	4186                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x6d1:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1197                    @ DW_AT_decl_line
	.long	4204                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x6d9:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1198                    @ DW_AT_decl_line
	.long	4238                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x6e1:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1199                    @ DW_AT_decl_line
	.long	4255                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x6e9:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1201                    @ DW_AT_decl_line
	.long	4272                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x6f1:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1202                    @ DW_AT_decl_line
	.long	4290                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x6f9:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1203                    @ DW_AT_decl_line
	.long	4308                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x701:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1205                    @ DW_AT_decl_line
	.long	4326                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x709:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1206                    @ DW_AT_decl_line
	.long	4349                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x711:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1207                    @ DW_AT_decl_line
	.long	4372                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x719:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1209                    @ DW_AT_decl_line
	.long	4395                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x721:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1210                    @ DW_AT_decl_line
	.long	4418                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x729:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1211                    @ DW_AT_decl_line
	.long	4441                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x731:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1213                    @ DW_AT_decl_line
	.long	4464                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x739:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1214                    @ DW_AT_decl_line
	.long	4491                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x741:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1215                    @ DW_AT_decl_line
	.long	4518                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x749:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1217                    @ DW_AT_decl_line
	.long	4545                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x751:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1218                    @ DW_AT_decl_line
	.long	4573                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x759:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1219                    @ DW_AT_decl_line
	.long	4601                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x761:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1221                    @ DW_AT_decl_line
	.long	4629                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x769:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1222                    @ DW_AT_decl_line
	.long	4647                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x771:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1223                    @ DW_AT_decl_line
	.long	4665                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x779:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1225                    @ DW_AT_decl_line
	.long	4683                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x781:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1226                    @ DW_AT_decl_line
	.long	4701                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x789:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1227                    @ DW_AT_decl_line
	.long	4719                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x791:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1229                    @ DW_AT_decl_line
	.long	4737                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x799:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1230                    @ DW_AT_decl_line
	.long	4760                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x7a1:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1231                    @ DW_AT_decl_line
	.long	4783                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x7a9:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1233                    @ DW_AT_decl_line
	.long	4806                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x7b1:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1234                    @ DW_AT_decl_line
	.long	4829                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x7b9:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1235                    @ DW_AT_decl_line
	.long	4852                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x7c1:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1237                    @ DW_AT_decl_line
	.long	4875                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x7c9:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1238                    @ DW_AT_decl_line
	.long	4893                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x7d1:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1239                    @ DW_AT_decl_line
	.long	4911                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x7d9:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1241                    @ DW_AT_decl_line
	.long	4929                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x7e1:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1242                    @ DW_AT_decl_line
	.long	4947                    @ DW_AT_import
	.byte	25                      @ Abbrev [25] 0x7e9:0x8 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.short	1243                    @ DW_AT_decl_line
	.long	4965                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x7f1:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	48                      @ DW_AT_decl_line
	.long	4983                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x7f8:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	49                      @ DW_AT_decl_line
	.long	5001                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x7ff:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	50                      @ DW_AT_decl_line
	.long	5019                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x806:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	51                      @ DW_AT_decl_line
	.long	5030                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x80d:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	53                      @ DW_AT_decl_line
	.long	5041                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x814:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	54                      @ DW_AT_decl_line
	.long	5052                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x81b:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	55                      @ DW_AT_decl_line
	.long	5063                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x822:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	56                      @ DW_AT_decl_line
	.long	5074                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x829:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	58                      @ DW_AT_decl_line
	.long	5085                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x830:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	59                      @ DW_AT_decl_line
	.long	5096                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x837:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	60                      @ DW_AT_decl_line
	.long	5107                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x83e:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	61                      @ DW_AT_decl_line
	.long	5118                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x845:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	63                      @ DW_AT_decl_line
	.long	5129                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x84c:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	64                      @ DW_AT_decl_line
	.long	5140                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x853:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	66                      @ DW_AT_decl_line
	.long	5151                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x85a:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	67                      @ DW_AT_decl_line
	.long	5169                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x861:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	68                      @ DW_AT_decl_line
	.long	5187                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x868:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	69                      @ DW_AT_decl_line
	.long	5205                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x86f:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	71                      @ DW_AT_decl_line
	.long	5223                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x876:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	72                      @ DW_AT_decl_line
	.long	5234                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x87d:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	73                      @ DW_AT_decl_line
	.long	5245                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x884:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	74                      @ DW_AT_decl_line
	.long	5256                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x88b:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	76                      @ DW_AT_decl_line
	.long	5267                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x892:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	77                      @ DW_AT_decl_line
	.long	5278                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x899:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	78                      @ DW_AT_decl_line
	.long	5289                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x8a0:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	79                      @ DW_AT_decl_line
	.long	5300                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x8a7:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	81                      @ DW_AT_decl_line
	.long	5311                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x8ae:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	82                      @ DW_AT_decl_line
	.long	5322                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x8b5:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	60                      @ DW_AT_decl_line
	.long	5333                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x8bc:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	61                      @ DW_AT_decl_line
	.long	5355                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x8c3:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	62                      @ DW_AT_decl_line
	.long	5377                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x8ca:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	64                      @ DW_AT_decl_line
	.long	5383                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x8d1:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	65                      @ DW_AT_decl_line
	.long	5394                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x8d8:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	66                      @ DW_AT_decl_line
	.long	5416                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x8df:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	67                      @ DW_AT_decl_line
	.long	5438                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x8e6:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	68                      @ DW_AT_decl_line
	.long	5460                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x8ed:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	69                      @ DW_AT_decl_line
	.long	5493                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x8f4:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	70                      @ DW_AT_decl_line
	.long	5521                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x8fb:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	71                      @ DW_AT_decl_line
	.long	5538                    @ DW_AT_import
	.byte	24                      @ Abbrev [24] 0x902:0x7 DW_TAG_imported_declaration
	.byte	6                       @ DW_AT_decl_file
	.byte	72                      @ DW_AT_decl_line
	.long	5555                    @ DW_AT_import
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x90a:0x15 DW_TAG_subprogram
	.long	.Linfo_string70         @ DW_AT_linkage_name
	.long	.Linfo_string71         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	24                      @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x919:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	19                      @ Abbrev [19] 0x91f:0x7 DW_TAG_base_type
	.long	.Linfo_string72         @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	26                      @ Abbrev [26] 0x926:0x15 DW_TAG_subprogram
	.long	.Linfo_string73         @ DW_AT_linkage_name
	.long	.Linfo_string74         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	52                      @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x935:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0x93b:0x11 DW_TAG_subprogram
	.long	.Linfo_string75         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	58                      @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x946:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x94c:0x1a DW_TAG_subprogram
	.long	.Linfo_string76         @ DW_AT_linkage_name
	.long	.Linfo_string77         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	65                      @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x95b:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x960:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0x966:0x11 DW_TAG_subprogram
	.long	.Linfo_string78         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	178                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x971:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0x977:0x11 DW_TAG_subprogram
	.long	.Linfo_string79         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	63                      @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x982:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x988:0x15 DW_TAG_subprogram
	.long	.Linfo_string80         @ DW_AT_linkage_name
	.long	.Linfo_string81         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	95                      @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x997:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x99d:0x15 DW_TAG_subprogram
	.long	.Linfo_string82         @ DW_AT_linkage_name
	.long	.Linfo_string83         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	108                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x9ac:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0x9b2:0x11 DW_TAG_subprogram
	.long	.Linfo_string84         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	181                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x9bd:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0x9c3:0x11 DW_TAG_subprogram
	.long	.Linfo_string85         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	184                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x9ce:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x9d4:0x1a DW_TAG_subprogram
	.long	.Linfo_string86         @ DW_AT_linkage_name
	.long	.Linfo_string87         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	158                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x9e3:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x9e8:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0x9ee:0x16 DW_TAG_subprogram
	.long	.Linfo_string88         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	103                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x9f9:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x9fe:0x5 DW_TAG_formal_parameter
	.long	2564                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0xa04:0x5 DW_TAG_pointer_type
	.long	449                     @ DW_AT_type
	.byte	27                      @ Abbrev [27] 0xa09:0x16 DW_TAG_subprogram
	.long	.Linfo_string89         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	106                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xa14:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xa19:0x5 DW_TAG_formal_parameter
	.long	449                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	28                      @ Abbrev [28] 0xa1f:0x16 DW_TAG_subprogram
	.long	.Linfo_string90         @ DW_AT_linkage_name
	.long	.Linfo_string91         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	363                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xa2f:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	28                      @ Abbrev [28] 0xa35:0x16 DW_TAG_subprogram
	.long	.Linfo_string92         @ DW_AT_linkage_name
	.long	.Linfo_string93         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	376                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xa45:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0xa4b:0x16 DW_TAG_subprogram
	.long	.Linfo_string94         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	115                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xa56:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xa5b:0x5 DW_TAG_formal_parameter
	.long	2657                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0xa61:0x5 DW_TAG_pointer_type
	.long	2335                    @ DW_AT_type
	.byte	28                      @ Abbrev [28] 0xa66:0x1b DW_TAG_subprogram
	.long	.Linfo_string95         @ DW_AT_linkage_name
	.long	.Linfo_string96         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	402                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xa76:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xa7b:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0xa81:0x11 DW_TAG_subprogram
	.long	.Linfo_string97         @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	65                      @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xa8c:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	28                      @ Abbrev [28] 0xa92:0x16 DW_TAG_subprogram
	.long	.Linfo_string98         @ DW_AT_linkage_name
	.long	.Linfo_string99         @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	452                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xaa2:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	28                      @ Abbrev [28] 0xaa8:0x16 DW_TAG_subprogram
	.long	.Linfo_string100        @ DW_AT_linkage_name
	.long	.Linfo_string101        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	465                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xab8:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0xabe:0x11 DW_TAG_subprogram
	.long	.Linfo_string102        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	67                      @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xac9:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0xacf:0x11 DW_TAG_subprogram
	.long	.Linfo_string103        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	76                      @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xada:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	14                      @ Abbrev [14] 0xae0:0xb DW_TAG_typedef
	.long	2335                    @ DW_AT_type
	.long	.Linfo_string104        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	28                      @ DW_AT_decl_line
	.byte	14                      @ Abbrev [14] 0xaeb:0xb DW_TAG_typedef
	.long	442                     @ DW_AT_type
	.long	.Linfo_string105        @ DW_AT_name
	.byte	9                       @ DW_AT_decl_file
	.byte	26                      @ DW_AT_decl_line
	.byte	26                      @ Abbrev [26] 0xaf6:0x15 DW_TAG_subprogram
	.long	.Linfo_string106        @ DW_AT_linkage_name
	.long	.Linfo_string107        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	38                      @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xb05:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xb0b:0x15 DW_TAG_subprogram
	.long	.Linfo_string108        @ DW_AT_linkage_name
	.long	.Linfo_string109        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	41                      @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xb1a:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xb20:0x15 DW_TAG_subprogram
	.long	.Linfo_string106        @ DW_AT_linkage_name
	.long	.Linfo_string110        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	44                      @ DW_AT_decl_line
	.long	2869                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xb2f:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	19                      @ Abbrev [19] 0xb35:0x7 DW_TAG_base_type
	.long	.Linfo_string111        @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	27                      @ Abbrev [27] 0xb3c:0x11 DW_TAG_subprogram
	.long	.Linfo_string112        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	90                      @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xb47:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0xb4d:0x11 DW_TAG_subprogram
	.long	.Linfo_string113        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	90                      @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xb58:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0xb5e:0x11 DW_TAG_subprogram
	.long	.Linfo_string114        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	90                      @ DW_AT_decl_line
	.long	2869                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xb69:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xb6f:0x15 DW_TAG_subprogram
	.long	.Linfo_string115        @ DW_AT_linkage_name
	.long	.Linfo_string116        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	81                      @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xb7e:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xb84:0x15 DW_TAG_subprogram
	.long	.Linfo_string117        @ DW_AT_linkage_name
	.long	.Linfo_string118        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	84                      @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xb93:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xb99:0x15 DW_TAG_subprogram
	.long	.Linfo_string115        @ DW_AT_linkage_name
	.long	.Linfo_string119        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	87                      @ DW_AT_decl_line
	.long	2869                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xba8:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0xbae:0x11 DW_TAG_subprogram
	.long	.Linfo_string120        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	169                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xbb9:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0xbbf:0x11 DW_TAG_subprogram
	.long	.Linfo_string121        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	169                     @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xbca:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0xbd0:0x11 DW_TAG_subprogram
	.long	.Linfo_string122        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	169                     @ DW_AT_decl_line
	.long	2869                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xbdb:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0xbe1:0x16 DW_TAG_subprogram
	.long	.Linfo_string123        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	221                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xbec:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xbf1:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0xbf7:0x16 DW_TAG_subprogram
	.long	.Linfo_string124        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	221                     @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xc02:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xc07:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0xc0d:0x16 DW_TAG_subprogram
	.long	.Linfo_string125        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	221                     @ DW_AT_decl_line
	.long	2869                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xc18:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xc1d:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xc23:0x12 DW_TAG_subprogram
	.long	.Linfo_string126        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	259                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xc2f:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xc35:0x12 DW_TAG_subprogram
	.long	.Linfo_string127        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	259                     @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xc41:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xc47:0x12 DW_TAG_subprogram
	.long	.Linfo_string128        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	259                     @ DW_AT_decl_line
	.long	2869                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xc53:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xc59:0x12 DW_TAG_subprogram
	.long	.Linfo_string129        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	260                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xc65:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xc6b:0x12 DW_TAG_subprogram
	.long	.Linfo_string130        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	260                     @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xc77:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xc7d:0x12 DW_TAG_subprogram
	.long	.Linfo_string131        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	260                     @ DW_AT_decl_line
	.long	2869                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xc89:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xc8f:0x15 DW_TAG_subprogram
	.long	.Linfo_string132        @ DW_AT_linkage_name
	.long	.Linfo_string133        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	146                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xc9e:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xca4:0x15 DW_TAG_subprogram
	.long	.Linfo_string134        @ DW_AT_linkage_name
	.long	.Linfo_string135        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	147                     @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xcb3:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xcb9:0x15 DW_TAG_subprogram
	.long	.Linfo_string132        @ DW_AT_linkage_name
	.long	.Linfo_string136        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	150                     @ DW_AT_decl_line
	.long	2869                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xcc8:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0xcce:0x11 DW_TAG_subprogram
	.long	.Linfo_string137        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	128                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xcd9:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0xcdf:0x11 DW_TAG_subprogram
	.long	.Linfo_string138        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	128                     @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xcea:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0xcf0:0x11 DW_TAG_subprogram
	.long	.Linfo_string139        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	128                     @ DW_AT_decl_line
	.long	2869                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xcfb:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xd01:0x17 DW_TAG_subprogram
	.long	.Linfo_string140        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	354                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xd0d:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xd12:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xd18:0x17 DW_TAG_subprogram
	.long	.Linfo_string141        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	354                     @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xd24:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xd29:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xd2f:0x17 DW_TAG_subprogram
	.long	.Linfo_string142        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	354                     @ DW_AT_decl_line
	.long	2869                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xd3b:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xd40:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xd46:0x1c DW_TAG_subprogram
	.long	.Linfo_string143        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	373                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xd52:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xd57:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xd5c:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xd62:0x1c DW_TAG_subprogram
	.long	.Linfo_string144        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	373                     @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xd6e:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xd73:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xd78:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xd7e:0x1c DW_TAG_subprogram
	.long	.Linfo_string145        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	373                     @ DW_AT_decl_line
	.long	2869                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xd8a:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xd8f:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xd94:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xd9a:0x17 DW_TAG_subprogram
	.long	.Linfo_string146        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	357                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xda6:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xdab:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xdb1:0x17 DW_TAG_subprogram
	.long	.Linfo_string147        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	357                     @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xdbd:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xdc2:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xdc8:0x17 DW_TAG_subprogram
	.long	.Linfo_string148        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	357                     @ DW_AT_decl_line
	.long	2869                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xdd4:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xdd9:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xddf:0x17 DW_TAG_subprogram
	.long	.Linfo_string149        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	360                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xdeb:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xdf0:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xdf6:0x17 DW_TAG_subprogram
	.long	.Linfo_string150        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	360                     @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xe02:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xe07:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xe0d:0x17 DW_TAG_subprogram
	.long	.Linfo_string151        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	360                     @ DW_AT_decl_line
	.long	2869                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xe19:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xe1e:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xe24:0x1a DW_TAG_subprogram
	.long	.Linfo_string152        @ DW_AT_linkage_name
	.long	.Linfo_string153        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	174                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xe33:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xe38:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xe3e:0x1a DW_TAG_subprogram
	.long	.Linfo_string154        @ DW_AT_linkage_name
	.long	.Linfo_string155        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	177                     @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xe4d:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xe52:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xe58:0x1a DW_TAG_subprogram
	.long	.Linfo_string152        @ DW_AT_linkage_name
	.long	.Linfo_string156        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	180                     @ DW_AT_decl_line
	.long	2869                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xe67:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0xe6c:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xe72:0x12 DW_TAG_subprogram
	.long	.Linfo_string157        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	313                     @ DW_AT_decl_line
	.long	449                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xe7e:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xe84:0x12 DW_TAG_subprogram
	.long	.Linfo_string158        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	313                     @ DW_AT_decl_line
	.long	449                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xe90:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xe96:0x12 DW_TAG_subprogram
	.long	.Linfo_string159        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	313                     @ DW_AT_decl_line
	.long	449                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xea2:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xea8:0x12 DW_TAG_subprogram
	.long	.Linfo_string160        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	308                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xeb4:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xeba:0x12 DW_TAG_subprogram
	.long	.Linfo_string161        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	319                     @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xec6:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xecc:0x12 DW_TAG_subprogram
	.long	.Linfo_string162        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	329                     @ DW_AT_decl_line
	.long	2869                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xed8:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xede:0x12 DW_TAG_subprogram
	.long	.Linfo_string163        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	344                     @ DW_AT_decl_line
	.long	3824                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xeea:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	19                      @ Abbrev [19] 0xef0:0x7 DW_TAG_base_type
	.long	.Linfo_string164        @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	29                      @ Abbrev [29] 0xef7:0x12 DW_TAG_subprogram
	.long	.Linfo_string165        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	344                     @ DW_AT_decl_line
	.long	3824                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xf03:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xf09:0x12 DW_TAG_subprogram
	.long	.Linfo_string166        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	344                     @ DW_AT_decl_line
	.long	3824                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xf15:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xf1b:0x12 DW_TAG_subprogram
	.long	.Linfo_string167        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	350                     @ DW_AT_decl_line
	.long	3824                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xf27:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xf2d:0x12 DW_TAG_subprogram
	.long	.Linfo_string168        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	350                     @ DW_AT_decl_line
	.long	3824                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xf39:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xf3f:0x12 DW_TAG_subprogram
	.long	.Linfo_string169        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	350                     @ DW_AT_decl_line
	.long	3824                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xf4b:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0xf51:0x11 DW_TAG_subprogram
	.long	.Linfo_string170        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	131                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xf5c:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0xf62:0x11 DW_TAG_subprogram
	.long	.Linfo_string171        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	131                     @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xf6d:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0xf73:0x11 DW_TAG_subprogram
	.long	.Linfo_string172        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	131                     @ DW_AT_decl_line
	.long	2869                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xf7e:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	28                      @ Abbrev [28] 0xf84:0x16 DW_TAG_subprogram
	.long	.Linfo_string173        @ DW_AT_linkage_name
	.long	.Linfo_string174        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	390                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xf94:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	28                      @ Abbrev [28] 0xf9a:0x16 DW_TAG_subprogram
	.long	.Linfo_string175        @ DW_AT_linkage_name
	.long	.Linfo_string176        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	391                     @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xfaa:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	28                      @ Abbrev [28] 0xfb0:0x16 DW_TAG_subprogram
	.long	.Linfo_string173        @ DW_AT_linkage_name
	.long	.Linfo_string177        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	394                     @ DW_AT_decl_line
	.long	2869                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xfc0:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0xfc6:0x11 DW_TAG_subprogram
	.long	.Linfo_string178        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	134                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xfd1:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0xfd7:0x11 DW_TAG_subprogram
	.long	.Linfo_string179        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	134                     @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xfe2:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0xfe8:0x11 DW_TAG_subprogram
	.long	.Linfo_string180        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	134                     @ DW_AT_decl_line
	.long	2869                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0xff3:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0xff9:0x12 DW_TAG_subprogram
	.long	.Linfo_string181        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	342                     @ DW_AT_decl_line
	.long	4107                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1005:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	19                      @ Abbrev [19] 0x100b:0x7 DW_TAG_base_type
	.long	.Linfo_string182        @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	29                      @ Abbrev [29] 0x1012:0x12 DW_TAG_subprogram
	.long	.Linfo_string183        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	342                     @ DW_AT_decl_line
	.long	4107                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x101e:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x1024:0x12 DW_TAG_subprogram
	.long	.Linfo_string184        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	342                     @ DW_AT_decl_line
	.long	4107                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1030:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x1036:0x12 DW_TAG_subprogram
	.long	.Linfo_string185        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	348                     @ DW_AT_decl_line
	.long	4107                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1042:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x1048:0x12 DW_TAG_subprogram
	.long	.Linfo_string186        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	348                     @ DW_AT_decl_line
	.long	4107                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1054:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x105a:0x12 DW_TAG_subprogram
	.long	.Linfo_string187        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	348                     @ DW_AT_decl_line
	.long	4107                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1066:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0x106c:0x11 DW_TAG_subprogram
	.long	.Linfo_string188        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	228                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1077:0x5 DW_TAG_formal_parameter
	.long	4221                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x107d:0x5 DW_TAG_pointer_type
	.long	4226                    @ DW_AT_type
	.byte	30                      @ Abbrev [30] 0x1082:0x5 DW_TAG_const_type
	.long	4231                    @ DW_AT_type
	.byte	19                      @ Abbrev [19] 0x1087:0x7 DW_TAG_base_type
	.long	.Linfo_string189        @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	27                      @ Abbrev [27] 0x108e:0x11 DW_TAG_subprogram
	.long	.Linfo_string190        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	228                     @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1099:0x5 DW_TAG_formal_parameter
	.long	4221                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0x109f:0x11 DW_TAG_subprogram
	.long	.Linfo_string191        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	228                     @ DW_AT_decl_line
	.long	2869                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x10aa:0x5 DW_TAG_formal_parameter
	.long	4221                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x10b0:0x12 DW_TAG_subprogram
	.long	.Linfo_string192        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	322                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x10bc:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x10c2:0x12 DW_TAG_subprogram
	.long	.Linfo_string193        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	322                     @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x10ce:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x10d4:0x12 DW_TAG_subprogram
	.long	.Linfo_string194        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	322                     @ DW_AT_decl_line
	.long	2869                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x10e0:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x10e6:0x17 DW_TAG_subprogram
	.long	.Linfo_string195        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	292                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x10f2:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x10f7:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x10fd:0x17 DW_TAG_subprogram
	.long	.Linfo_string196        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	292                     @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1109:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x110e:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x1114:0x17 DW_TAG_subprogram
	.long	.Linfo_string197        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	292                     @ DW_AT_decl_line
	.long	2869                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1120:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x1125:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x112b:0x17 DW_TAG_subprogram
	.long	.Linfo_string198        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	294                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1137:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x113c:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x1142:0x17 DW_TAG_subprogram
	.long	.Linfo_string199        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	294                     @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x114e:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x1153:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x1159:0x17 DW_TAG_subprogram
	.long	.Linfo_string200        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	294                     @ DW_AT_decl_line
	.long	2869                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1165:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x116a:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	28                      @ Abbrev [28] 0x1170:0x1b DW_TAG_subprogram
	.long	.Linfo_string201        @ DW_AT_linkage_name
	.long	.Linfo_string202        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	418                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1180:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x1185:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	28                      @ Abbrev [28] 0x118b:0x1b DW_TAG_subprogram
	.long	.Linfo_string203        @ DW_AT_linkage_name
	.long	.Linfo_string204        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	421                     @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x119b:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x11a0:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	28                      @ Abbrev [28] 0x11a6:0x1b DW_TAG_subprogram
	.long	.Linfo_string201        @ DW_AT_linkage_name
	.long	.Linfo_string205        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	424                     @ DW_AT_decl_line
	.long	2869                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x11b6:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x11bb:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x11c1:0x1c DW_TAG_subprogram
	.long	.Linfo_string206        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	335                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x11cd:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x11d2:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x11d7:0x5 DW_TAG_formal_parameter
	.long	2564                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x11dd:0x1c DW_TAG_subprogram
	.long	.Linfo_string207        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	335                     @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x11e9:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x11ee:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x11f3:0x5 DW_TAG_formal_parameter
	.long	2564                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x11f9:0x1c DW_TAG_subprogram
	.long	.Linfo_string208        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	335                     @ DW_AT_decl_line
	.long	2869                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1205:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x120a:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x120f:0x5 DW_TAG_formal_parameter
	.long	2564                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x1215:0x12 DW_TAG_subprogram
	.long	.Linfo_string209        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	289                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1221:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x1227:0x12 DW_TAG_subprogram
	.long	.Linfo_string210        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	289                     @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1233:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x1239:0x12 DW_TAG_subprogram
	.long	.Linfo_string211        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	289                     @ DW_AT_decl_line
	.long	2869                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1245:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x124b:0x12 DW_TAG_subprogram
	.long	.Linfo_string212        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	326                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1257:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x125d:0x12 DW_TAG_subprogram
	.long	.Linfo_string213        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	326                     @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1269:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x126f:0x12 DW_TAG_subprogram
	.long	.Linfo_string214        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	326                     @ DW_AT_decl_line
	.long	2869                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x127b:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x1281:0x17 DW_TAG_subprogram
	.long	.Linfo_string215        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	318                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x128d:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x1292:0x5 DW_TAG_formal_parameter
	.long	4107                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x1298:0x17 DW_TAG_subprogram
	.long	.Linfo_string216        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	318                     @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x12a4:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x12a9:0x5 DW_TAG_formal_parameter
	.long	4107                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x12af:0x17 DW_TAG_subprogram
	.long	.Linfo_string217        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	318                     @ DW_AT_decl_line
	.long	2869                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x12bb:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x12c0:0x5 DW_TAG_formal_parameter
	.long	4107                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x12c6:0x17 DW_TAG_subprogram
	.long	.Linfo_string218        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	309                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x12d2:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x12d7:0x5 DW_TAG_formal_parameter
	.long	449                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x12dd:0x17 DW_TAG_subprogram
	.long	.Linfo_string219        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	309                     @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x12e9:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x12ee:0x5 DW_TAG_formal_parameter
	.long	449                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x12f4:0x17 DW_TAG_subprogram
	.long	.Linfo_string220        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	309                     @ DW_AT_decl_line
	.long	2869                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1300:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x1305:0x5 DW_TAG_formal_parameter
	.long	449                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x130b:0x12 DW_TAG_subprogram
	.long	.Linfo_string221        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	480                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1317:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x131d:0x12 DW_TAG_subprogram
	.long	.Linfo_string222        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	487                     @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1329:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x132f:0x12 DW_TAG_subprogram
	.long	.Linfo_string223        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.short	495                     @ DW_AT_decl_line
	.long	2869                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x133b:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x1341:0x12 DW_TAG_subprogram
	.long	.Linfo_string224        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	330                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x134d:0x5 DW_TAG_formal_parameter
	.long	2335                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x1353:0x12 DW_TAG_subprogram
	.long	.Linfo_string225        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	330                     @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x135f:0x5 DW_TAG_formal_parameter
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x1365:0x12 DW_TAG_subprogram
	.long	.Linfo_string226        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.short	330                     @ DW_AT_decl_line
	.long	2869                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1371:0x5 DW_TAG_formal_parameter
	.long	2869                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	14                      @ Abbrev [14] 0x1377:0xb DW_TAG_typedef
	.long	4994                    @ DW_AT_type
	.long	.Linfo_string228        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	36                      @ DW_AT_decl_line
	.byte	19                      @ Abbrev [19] 0x1382:0x7 DW_TAG_base_type
	.long	.Linfo_string227        @ DW_AT_name
	.byte	6                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	14                      @ Abbrev [14] 0x1389:0xb DW_TAG_typedef
	.long	5012                    @ DW_AT_type
	.long	.Linfo_string230        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	37                      @ DW_AT_decl_line
	.byte	19                      @ Abbrev [19] 0x1394:0x7 DW_TAG_base_type
	.long	.Linfo_string229        @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	2                       @ DW_AT_byte_size
	.byte	14                      @ Abbrev [14] 0x139b:0xb DW_TAG_typedef
	.long	449                     @ DW_AT_type
	.long	.Linfo_string231        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	38                      @ DW_AT_decl_line
	.byte	14                      @ Abbrev [14] 0x13a6:0xb DW_TAG_typedef
	.long	3824                    @ DW_AT_type
	.long	.Linfo_string232        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	43                      @ DW_AT_decl_line
	.byte	14                      @ Abbrev [14] 0x13b1:0xb DW_TAG_typedef
	.long	4994                    @ DW_AT_type
	.long	.Linfo_string233        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	90                      @ DW_AT_decl_line
	.byte	14                      @ Abbrev [14] 0x13bc:0xb DW_TAG_typedef
	.long	449                     @ DW_AT_type
	.long	.Linfo_string234        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	96                      @ DW_AT_decl_line
	.byte	14                      @ Abbrev [14] 0x13c7:0xb DW_TAG_typedef
	.long	449                     @ DW_AT_type
	.long	.Linfo_string235        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	97                      @ DW_AT_decl_line
	.byte	14                      @ Abbrev [14] 0x13d2:0xb DW_TAG_typedef
	.long	3824                    @ DW_AT_type
	.long	.Linfo_string236        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	99                      @ DW_AT_decl_line
	.byte	14                      @ Abbrev [14] 0x13dd:0xb DW_TAG_typedef
	.long	4994                    @ DW_AT_type
	.long	.Linfo_string237        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	65                      @ DW_AT_decl_line
	.byte	14                      @ Abbrev [14] 0x13e8:0xb DW_TAG_typedef
	.long	5012                    @ DW_AT_type
	.long	.Linfo_string238        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	66                      @ DW_AT_decl_line
	.byte	14                      @ Abbrev [14] 0x13f3:0xb DW_TAG_typedef
	.long	449                     @ DW_AT_type
	.long	.Linfo_string239        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	67                      @ DW_AT_decl_line
	.byte	14                      @ Abbrev [14] 0x13fe:0xb DW_TAG_typedef
	.long	3824                    @ DW_AT_type
	.long	.Linfo_string240        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	72                      @ DW_AT_decl_line
	.byte	14                      @ Abbrev [14] 0x1409:0xb DW_TAG_typedef
	.long	3824                    @ DW_AT_type
	.long	.Linfo_string241        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	138                     @ DW_AT_decl_line
	.byte	14                      @ Abbrev [14] 0x1414:0xb DW_TAG_typedef
	.long	449                     @ DW_AT_type
	.long	.Linfo_string242        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	125                     @ DW_AT_decl_line
	.byte	14                      @ Abbrev [14] 0x141f:0xb DW_TAG_typedef
	.long	5162                    @ DW_AT_type
	.long	.Linfo_string244        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	48                      @ DW_AT_decl_line
	.byte	19                      @ Abbrev [19] 0x142a:0x7 DW_TAG_base_type
	.long	.Linfo_string243        @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	14                      @ Abbrev [14] 0x1431:0xb DW_TAG_typedef
	.long	5180                    @ DW_AT_type
	.long	.Linfo_string246        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	49                      @ DW_AT_decl_line
	.byte	19                      @ Abbrev [19] 0x143c:0x7 DW_TAG_base_type
	.long	.Linfo_string245        @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	2                       @ DW_AT_byte_size
	.byte	14                      @ Abbrev [14] 0x1443:0xb DW_TAG_typedef
	.long	5198                    @ DW_AT_type
	.long	.Linfo_string248        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	51                      @ DW_AT_decl_line
	.byte	19                      @ Abbrev [19] 0x144e:0x7 DW_TAG_base_type
	.long	.Linfo_string247        @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	14                      @ Abbrev [14] 0x1455:0xb DW_TAG_typedef
	.long	5216                    @ DW_AT_type
	.long	.Linfo_string250        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	58                      @ DW_AT_decl_line
	.byte	19                      @ Abbrev [19] 0x1460:0x7 DW_TAG_base_type
	.long	.Linfo_string249        @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	14                      @ Abbrev [14] 0x1467:0xb DW_TAG_typedef
	.long	5162                    @ DW_AT_type
	.long	.Linfo_string251        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	103                     @ DW_AT_decl_line
	.byte	14                      @ Abbrev [14] 0x1472:0xb DW_TAG_typedef
	.long	5198                    @ DW_AT_type
	.long	.Linfo_string252        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	109                     @ DW_AT_decl_line
	.byte	14                      @ Abbrev [14] 0x147d:0xb DW_TAG_typedef
	.long	5198                    @ DW_AT_type
	.long	.Linfo_string253        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	110                     @ DW_AT_decl_line
	.byte	14                      @ Abbrev [14] 0x1488:0xb DW_TAG_typedef
	.long	5216                    @ DW_AT_type
	.long	.Linfo_string254        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	112                     @ DW_AT_decl_line
	.byte	14                      @ Abbrev [14] 0x1493:0xb DW_TAG_typedef
	.long	5162                    @ DW_AT_type
	.long	.Linfo_string255        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	76                      @ DW_AT_decl_line
	.byte	14                      @ Abbrev [14] 0x149e:0xb DW_TAG_typedef
	.long	5180                    @ DW_AT_type
	.long	.Linfo_string256        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	77                      @ DW_AT_decl_line
	.byte	14                      @ Abbrev [14] 0x14a9:0xb DW_TAG_typedef
	.long	5198                    @ DW_AT_type
	.long	.Linfo_string257        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	78                      @ DW_AT_decl_line
	.byte	14                      @ Abbrev [14] 0x14b4:0xb DW_TAG_typedef
	.long	5216                    @ DW_AT_type
	.long	.Linfo_string258        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	83                      @ DW_AT_decl_line
	.byte	14                      @ Abbrev [14] 0x14bf:0xb DW_TAG_typedef
	.long	5216                    @ DW_AT_type
	.long	.Linfo_string259        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	140                     @ DW_AT_decl_line
	.byte	14                      @ Abbrev [14] 0x14ca:0xb DW_TAG_typedef
	.long	5198                    @ DW_AT_type
	.long	.Linfo_string260        @ DW_AT_name
	.byte	10                      @ DW_AT_decl_file
	.byte	128                     @ DW_AT_decl_line
	.byte	14                      @ Abbrev [14] 0x14d5:0xb DW_TAG_typedef
	.long	5344                    @ DW_AT_type
	.long	.Linfo_string262        @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	59                      @ DW_AT_decl_line
	.byte	14                      @ Abbrev [14] 0x14e0:0xb DW_TAG_typedef
	.long	4107                    @ DW_AT_type
	.long	.Linfo_string261        @ DW_AT_name
	.byte	11                      @ DW_AT_decl_file
	.byte	135                     @ DW_AT_decl_line
	.byte	14                      @ Abbrev [14] 0x14eb:0xb DW_TAG_typedef
	.long	5366                    @ DW_AT_type
	.long	.Linfo_string264        @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	75                      @ DW_AT_decl_line
	.byte	14                      @ Abbrev [14] 0x14f6:0xb DW_TAG_typedef
	.long	4107                    @ DW_AT_type
	.long	.Linfo_string263        @ DW_AT_name
	.byte	11                      @ DW_AT_decl_file
	.byte	139                     @ DW_AT_decl_line
	.byte	31                      @ Abbrev [31] 0x1501:0x6 DW_TAG_structure_type
	.long	.Linfo_string265        @ DW_AT_name
	.byte	44                      @ DW_AT_byte_size
                                        @ DW_AT_declaration
	.byte	32                      @ Abbrev [32] 0x1507:0xb DW_TAG_subprogram
	.long	.Linfo_string266        @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	189                     @ DW_AT_decl_line
	.long	5333                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	27                      @ Abbrev [27] 0x1512:0x16 DW_TAG_subprogram
	.long	.Linfo_string267        @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	195                     @ DW_AT_decl_line
	.long	2335                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x151d:0x5 DW_TAG_formal_parameter
	.long	5355                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x1522:0x5 DW_TAG_formal_parameter
	.long	5355                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0x1528:0x11 DW_TAG_subprogram
	.long	.Linfo_string268        @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	199                     @ DW_AT_decl_line
	.long	5355                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1533:0x5 DW_TAG_formal_parameter
	.long	5433                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x1539:0x5 DW_TAG_pointer_type
	.long	5377                    @ DW_AT_type
	.byte	27                      @ Abbrev [27] 0x153e:0x11 DW_TAG_subprogram
	.long	.Linfo_string269        @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	192                     @ DW_AT_decl_line
	.long	5355                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1549:0x5 DW_TAG_formal_parameter
	.long	5455                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x154f:0x5 DW_TAG_pointer_type
	.long	5355                    @ DW_AT_type
	.byte	29                      @ Abbrev [29] 0x1554:0x12 DW_TAG_subprogram
	.long	.Linfo_string270        @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.short	261                     @ DW_AT_decl_line
	.long	5478                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1560:0x5 DW_TAG_formal_parameter
	.long	5483                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x1566:0x5 DW_TAG_pointer_type
	.long	4231                    @ DW_AT_type
	.byte	20                      @ Abbrev [20] 0x156b:0x5 DW_TAG_pointer_type
	.long	5488                    @ DW_AT_type
	.byte	30                      @ Abbrev [30] 0x1570:0x5 DW_TAG_const_type
	.long	5377                    @ DW_AT_type
	.byte	29                      @ Abbrev [29] 0x1575:0x12 DW_TAG_subprogram
	.long	.Linfo_string271        @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.short	264                     @ DW_AT_decl_line
	.long	5478                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x1581:0x5 DW_TAG_formal_parameter
	.long	5511                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x1587:0x5 DW_TAG_pointer_type
	.long	5516                    @ DW_AT_type
	.byte	30                      @ Abbrev [30] 0x158c:0x5 DW_TAG_const_type
	.long	5355                    @ DW_AT_type
	.byte	27                      @ Abbrev [27] 0x1591:0x11 DW_TAG_subprogram
	.long	.Linfo_string272        @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	239                     @ DW_AT_decl_line
	.long	5433                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x159c:0x5 DW_TAG_formal_parameter
	.long	5511                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0x15a2:0x11 DW_TAG_subprogram
	.long	.Linfo_string273        @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	243                     @ DW_AT_decl_line
	.long	5433                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x15ad:0x5 DW_TAG_formal_parameter
	.long	5511                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	27                      @ Abbrev [27] 0x15b3:0x20 DW_TAG_subprogram
	.long	.Linfo_string274        @ DW_AT_name
	.byte	12                      @ DW_AT_decl_file
	.byte	205                     @ DW_AT_decl_line
	.long	5587                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	11                      @ Abbrev [11] 0x15be:0x5 DW_TAG_formal_parameter
	.long	5598                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x15c3:0x5 DW_TAG_formal_parameter
	.long	5587                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x15c8:0x5 DW_TAG_formal_parameter
	.long	5603                    @ DW_AT_type
	.byte	11                      @ Abbrev [11] 0x15cd:0x5 DW_TAG_formal_parameter
	.long	5608                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	14                      @ Abbrev [14] 0x15d3:0xb DW_TAG_typedef
	.long	5198                    @ DW_AT_type
	.long	.Linfo_string275        @ DW_AT_name
	.byte	13                      @ DW_AT_decl_file
	.byte	62                      @ DW_AT_decl_line
	.byte	33                      @ Abbrev [33] 0x15de:0x5 DW_TAG_restrict_type
	.long	5478                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x15e3:0x5 DW_TAG_restrict_type
	.long	4221                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x15e8:0x5 DW_TAG_restrict_type
	.long	5483                    @ DW_AT_type
	.byte	34                      @ Abbrev [34] 0x15ed:0x29 DW_TAG_subprogram
	.long	.Lfunc_begin0           @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	.Linfo_string298        @ DW_AT_linkage_name
	.long	.Linfo_string299        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	37                      @ DW_AT_decl_line
	.long	6286                    @ DW_AT_type
                                        @ DW_AT_external
	.byte	35                      @ Abbrev [35] 0x1606:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc0            @ DW_AT_location
	.long	.Linfo_string308        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	37                      @ DW_AT_decl_line
	.long	6293                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	36                      @ Abbrev [36] 0x1616:0x21 DW_TAG_subprogram
	.long	.Lfunc_begin1           @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	.Linfo_string301        @ DW_AT_linkage_name
	.long	.Linfo_string302        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	98                      @ DW_AT_decl_line
                                        @ DW_AT_external
	.byte	37                      @ Abbrev [37] 0x162b:0xb DW_TAG_formal_parameter
	.long	.Ldebug_loc1            @ DW_AT_location
	.byte	1                       @ DW_AT_decl_file
	.byte	98                      @ DW_AT_decl_line
	.long	647                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	36                      @ Abbrev [36] 0x1637:0x52 DW_TAG_subprogram
	.long	.Lfunc_begin2           @ DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	.Linfo_string303        @ DW_AT_linkage_name
	.long	.Linfo_string304        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	67                      @ DW_AT_decl_line
                                        @ DW_AT_external
	.byte	35                      @ Abbrev [35] 0x164c:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc2            @ DW_AT_location
	.long	.Linfo_string335        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	67                      @ DW_AT_decl_line
	.long	6697                    @ DW_AT_type
	.byte	35                      @ Abbrev [35] 0x165b:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc3            @ DW_AT_location
	.long	.Linfo_string336        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	67                      @ DW_AT_decl_line
	.long	6697                    @ DW_AT_type
	.byte	35                      @ Abbrev [35] 0x166a:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc4            @ DW_AT_location
	.long	.Linfo_string337        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	67                      @ DW_AT_decl_line
	.long	6697                    @ DW_AT_type
	.byte	38                      @ Abbrev [38] 0x1679:0xf DW_TAG_variable
	.long	.Ldebug_loc5            @ DW_AT_location
	.long	.Linfo_string338        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	71                      @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0x1689:0x57 DW_TAG_subprogram
	.long	.Lfunc_begin3           @ DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	.Linfo_string305        @ DW_AT_linkage_name
	.long	.Linfo_string306        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	77                      @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
                                        @ DW_AT_external
	.byte	35                      @ Abbrev [35] 0x16a2:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc6            @ DW_AT_location
	.long	.Linfo_string308        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	77                      @ DW_AT_decl_line
	.long	6293                    @ DW_AT_type
	.byte	39                      @ Abbrev [39] 0x16b1:0x2e DW_TAG_lexical_block
	.long	.Ldebug_ranges0         @ DW_AT_ranges
	.byte	38                      @ Abbrev [38] 0x16b6:0xf DW_TAG_variable
	.long	.Ldebug_loc7            @ DW_AT_location
	.long	.Linfo_string339        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	79                      @ DW_AT_decl_line
	.long	5198                    @ DW_AT_type
	.byte	40                      @ Abbrev [40] 0x16c5:0x19 DW_TAG_lexical_block
	.long	.Ltmp53                 @ DW_AT_low_pc
	.long	.Ltmp61-.Ltmp53         @ DW_AT_high_pc
	.byte	38                      @ Abbrev [38] 0x16ce:0xf DW_TAG_variable
	.long	.Ldebug_loc8            @ DW_AT_location
	.long	.Linfo_string340        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	87                      @ DW_AT_decl_line
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x16e0:0x5 DW_TAG_pointer_type
	.long	860                     @ DW_AT_type
	.byte	41                      @ Abbrev [41] 0x16e5:0x65 DW_TAG_subprogram
	.long	.Linfo_string284        @ DW_AT_linkage_name
	.long	952                     @ DW_AT_specification
	.byte	1                       @ DW_AT_inline
	.long	5875                    @ DW_AT_object_pointer
	.byte	42                      @ Abbrev [42] 0x16f3:0x9 DW_TAG_formal_parameter
	.long	.Linfo_string285        @ DW_AT_name
	.long	5962                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	43                      @ Abbrev [43] 0x16fc:0xb DW_TAG_formal_parameter
	.long	.Linfo_string286        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	129                     @ DW_AT_decl_line
	.long	671                     @ DW_AT_type
	.byte	43                      @ Abbrev [43] 0x1707:0xb DW_TAG_formal_parameter
	.long	.Linfo_string287        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	130                     @ DW_AT_decl_line
	.long	671                     @ DW_AT_type
	.byte	43                      @ Abbrev [43] 0x1712:0xb DW_TAG_formal_parameter
	.long	.Linfo_string288        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	131                     @ DW_AT_decl_line
	.long	671                     @ DW_AT_type
	.byte	43                      @ Abbrev [43] 0x171d:0xb DW_TAG_formal_parameter
	.long	.Linfo_string289        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	132                     @ DW_AT_decl_line
	.long	716                     @ DW_AT_type
	.byte	43                      @ Abbrev [43] 0x1728:0xb DW_TAG_formal_parameter
	.long	.Linfo_string290        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	133                     @ DW_AT_decl_line
	.long	743                     @ DW_AT_type
	.byte	43                      @ Abbrev [43] 0x1733:0xb DW_TAG_formal_parameter
	.long	.Linfo_string291        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	134                     @ DW_AT_decl_line
	.long	800                     @ DW_AT_type
	.byte	43                      @ Abbrev [43] 0x173e:0xb DW_TAG_formal_parameter
	.long	.Linfo_string292        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	135                     @ DW_AT_decl_line
	.long	839                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x174a:0x5 DW_TAG_pointer_type
	.long	860                     @ DW_AT_type
	.byte	20                      @ Abbrev [20] 0x174f:0x5 DW_TAG_pointer_type
	.long	87                      @ DW_AT_type
	.byte	41                      @ Abbrev [41] 0x1754:0x70 DW_TAG_subprogram
	.long	.Linfo_string294        @ DW_AT_linkage_name
	.long	113                     @ DW_AT_specification
	.byte	1                       @ DW_AT_inline
	.long	5986                    @ DW_AT_object_pointer
	.byte	42                      @ Abbrev [42] 0x1762:0x9 DW_TAG_formal_parameter
	.long	.Linfo_string285        @ DW_AT_name
	.long	6084                    @ DW_AT_type
                                        @ DW_AT_artificial
	.byte	43                      @ Abbrev [43] 0x176b:0xb DW_TAG_formal_parameter
	.long	.Linfo_string286        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	73                      @ DW_AT_decl_line
	.long	671                     @ DW_AT_type
	.byte	43                      @ Abbrev [43] 0x1776:0xb DW_TAG_formal_parameter
	.long	.Linfo_string287        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	74                      @ DW_AT_decl_line
	.long	671                     @ DW_AT_type
	.byte	43                      @ Abbrev [43] 0x1781:0xb DW_TAG_formal_parameter
	.long	.Linfo_string288        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	75                      @ DW_AT_decl_line
	.long	671                     @ DW_AT_type
	.byte	43                      @ Abbrev [43] 0x178c:0xb DW_TAG_formal_parameter
	.long	.Linfo_string289        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	76                      @ DW_AT_decl_line
	.long	716                     @ DW_AT_type
	.byte	43                      @ Abbrev [43] 0x1797:0xb DW_TAG_formal_parameter
	.long	.Linfo_string290        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	77                      @ DW_AT_decl_line
	.long	743                     @ DW_AT_type
	.byte	43                      @ Abbrev [43] 0x17a2:0xb DW_TAG_formal_parameter
	.long	.Linfo_string291        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	78                      @ DW_AT_decl_line
	.long	800                     @ DW_AT_type
	.byte	43                      @ Abbrev [43] 0x17ad:0xb DW_TAG_formal_parameter
	.long	.Linfo_string292        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	79                      @ DW_AT_decl_line
	.long	839                     @ DW_AT_type
	.byte	43                      @ Abbrev [43] 0x17b8:0xb DW_TAG_formal_parameter
	.long	.Linfo_string295        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	80                      @ DW_AT_decl_line
	.long	64                      @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x17c4:0x5 DW_TAG_pointer_type
	.long	87                      @ DW_AT_type
	.byte	44                      @ Abbrev [44] 0x17c9:0x8 DW_TAG_subprogram
	.long	.Linfo_string296        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	13                      @ DW_AT_decl_line
	.byte	1                       @ DW_AT_inline
	.byte	44                      @ Abbrev [44] 0x17d1:0x8 DW_TAG_subprogram
	.long	.Linfo_string297        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	15                      @ DW_AT_decl_line
	.byte	1                       @ DW_AT_inline
	.byte	45                      @ Abbrev [45] 0x17d9:0xb5 DW_TAG_subprogram
	.long	.Lfunc_begin4           @ DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	.Linfo_string307        @ DW_AT_linkage_name
                                        @ DW_AT_artificial
	.byte	46                      @ Abbrev [46] 0x17e8:0x95 DW_TAG_inlined_subroutine
	.long	6089                    @ DW_AT_abstract_origin
	.long	.Ltmp67                 @ DW_AT_low_pc
	.long	.Ltmp70-.Ltmp67         @ DW_AT_high_pc
	.byte	14                      @ DW_AT_call_file
	.byte	0                       @ DW_AT_call_line
	.byte	47                      @ Abbrev [47] 0x17f7:0x85 DW_TAG_inlined_subroutine
	.long	5972                    @ DW_AT_abstract_origin
	.long	.Ltmp67                 @ DW_AT_low_pc
	.long	.Ltmp69-.Ltmp67         @ DW_AT_high_pc
	.byte	1                       @ DW_AT_call_file
	.byte	13                      @ DW_AT_call_line
	.byte	1                       @ DW_AT_GNU_discriminator
	.byte	48                      @ Abbrev [48] 0x1807:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc9            @ DW_AT_location
	.long	5986                    @ DW_AT_abstract_origin
	.byte	49                      @ Abbrev [49] 0x1810:0x6 DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_const_value
	.long	5995                    @ DW_AT_abstract_origin
	.byte	49                      @ Abbrev [49] 0x1816:0x6 DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_const_value
	.long	6006                    @ DW_AT_abstract_origin
	.byte	49                      @ Abbrev [49] 0x181c:0x6 DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_const_value
	.long	6017                    @ DW_AT_abstract_origin
	.byte	49                      @ Abbrev [49] 0x1822:0x6 DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_const_value
	.long	6028                    @ DW_AT_abstract_origin
	.byte	49                      @ Abbrev [49] 0x1828:0x6 DW_TAG_formal_parameter
	.byte	5                       @ DW_AT_const_value
	.long	6039                    @ DW_AT_abstract_origin
	.byte	49                      @ Abbrev [49] 0x182e:0x6 DW_TAG_formal_parameter
	.byte	4                       @ DW_AT_const_value
	.long	6050                    @ DW_AT_abstract_origin
	.byte	49                      @ Abbrev [49] 0x1834:0x6 DW_TAG_formal_parameter
	.byte	0                       @ DW_AT_const_value
	.long	6061                    @ DW_AT_abstract_origin
	.byte	49                      @ Abbrev [49] 0x183a:0x7 DW_TAG_formal_parameter
	.asciz	"\366"                  @ DW_AT_const_value
	.long	6072                    @ DW_AT_abstract_origin
	.byte	46                      @ Abbrev [46] 0x1841:0x3a DW_TAG_inlined_subroutine
	.long	5861                    @ DW_AT_abstract_origin
	.long	.Ltmp67                 @ DW_AT_low_pc
	.long	.Ltmp69-.Ltmp67         @ DW_AT_high_pc
	.byte	5                       @ DW_AT_call_file
	.byte	81                      @ DW_AT_call_line
	.byte	49                      @ Abbrev [49] 0x1850:0x6 DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_const_value
	.long	5884                    @ DW_AT_abstract_origin
	.byte	49                      @ Abbrev [49] 0x1856:0x6 DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_const_value
	.long	5895                    @ DW_AT_abstract_origin
	.byte	49                      @ Abbrev [49] 0x185c:0x6 DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_const_value
	.long	5906                    @ DW_AT_abstract_origin
	.byte	49                      @ Abbrev [49] 0x1862:0x6 DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_const_value
	.long	5917                    @ DW_AT_abstract_origin
	.byte	49                      @ Abbrev [49] 0x1868:0x6 DW_TAG_formal_parameter
	.byte	5                       @ DW_AT_const_value
	.long	5928                    @ DW_AT_abstract_origin
	.byte	49                      @ Abbrev [49] 0x186e:0x6 DW_TAG_formal_parameter
	.byte	4                       @ DW_AT_const_value
	.long	5939                    @ DW_AT_abstract_origin
	.byte	49                      @ Abbrev [49] 0x1874:0x6 DW_TAG_formal_parameter
	.byte	0                       @ DW_AT_const_value
	.long	5950                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	50                      @ Abbrev [50] 0x187d:0x10 DW_TAG_inlined_subroutine
	.long	6097                    @ DW_AT_abstract_origin
	.long	.Ltmp70                 @ DW_AT_low_pc
	.long	.Ltmp71-.Ltmp70         @ DW_AT_high_pc
	.byte	14                      @ DW_AT_call_file
	.byte	0                       @ DW_AT_call_line
	.byte	1                       @ DW_AT_GNU_discriminator
	.byte	0                       @ End Of Children Mark
	.byte	19                      @ Abbrev [19] 0x188e:0x7 DW_TAG_base_type
	.long	.Linfo_string300        @ DW_AT_name
	.byte	2                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	20                      @ Abbrev [20] 0x1895:0x5 DW_TAG_pointer_type
	.long	6298                    @ DW_AT_type
	.byte	21                      @ Abbrev [21] 0x189a:0xc DW_TAG_typedef
	.long	6310                    @ DW_AT_type
	.long	.Linfo_string334        @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.short	410                     @ DW_AT_decl_line
	.byte	51                      @ Abbrev [51] 0x18a6:0x13d DW_TAG_structure_type
	.short	352                     @ DW_AT_byte_size
	.byte	3                       @ DW_AT_decl_file
	.byte	220                     @ DW_AT_decl_line
	.byte	8                       @ Abbrev [8] 0x18ab:0xc DW_TAG_member
	.long	.Linfo_string309        @ DW_AT_name
	.long	6627                    @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.byte	238                     @ DW_AT_decl_line
	.byte	0                       @ DW_AT_data_member_location
	.byte	8                       @ Abbrev [8] 0x18b7:0xc DW_TAG_member
	.long	.Linfo_string310        @ DW_AT_name
	.long	6642                    @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.byte	253                     @ DW_AT_decl_line
	.byte	4                       @ DW_AT_data_member_location
	.byte	52                      @ Abbrev [52] 0x18c3:0xd DW_TAG_member
	.long	.Linfo_string311        @ DW_AT_name
	.long	6627                    @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	272                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_data_member_location
	.byte	52                      @ Abbrev [52] 0x18d0:0xd DW_TAG_member
	.long	.Linfo_string312        @ DW_AT_name
	.long	6642                    @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	287                     @ DW_AT_decl_line
	.byte	12                      @ DW_AT_data_member_location
	.byte	52                      @ Abbrev [52] 0x18dd:0xd DW_TAG_member
	.long	.Linfo_string313        @ DW_AT_name
	.long	6652                    @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	297                     @ DW_AT_decl_line
	.byte	16                      @ DW_AT_data_member_location
	.byte	52                      @ Abbrev [52] 0x18ea:0xd DW_TAG_member
	.long	.Linfo_string314        @ DW_AT_name
	.long	6662                    @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	311                     @ DW_AT_decl_line
	.byte	20                      @ DW_AT_data_member_location
	.byte	52                      @ Abbrev [52] 0x18f7:0xd DW_TAG_member
	.long	.Linfo_string315        @ DW_AT_name
	.long	6662                    @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	313                     @ DW_AT_decl_line
	.byte	24                      @ DW_AT_data_member_location
	.byte	52                      @ Abbrev [52] 0x1904:0xd DW_TAG_member
	.long	.Linfo_string316        @ DW_AT_name
	.long	6662                    @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	315                     @ DW_AT_decl_line
	.byte	28                      @ DW_AT_data_member_location
	.byte	52                      @ Abbrev [52] 0x1911:0xd DW_TAG_member
	.long	.Linfo_string317        @ DW_AT_name
	.long	6637                    @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	317                     @ DW_AT_decl_line
	.byte	32                      @ DW_AT_data_member_location
	.byte	52                      @ Abbrev [52] 0x191e:0xd DW_TAG_member
	.long	.Linfo_string318        @ DW_AT_name
	.long	6662                    @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	330                     @ DW_AT_decl_line
	.byte	36                      @ DW_AT_data_member_location
	.byte	52                      @ Abbrev [52] 0x192b:0xd DW_TAG_member
	.long	.Linfo_string319        @ DW_AT_name
	.long	6662                    @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	335                     @ DW_AT_decl_line
	.byte	40                      @ DW_AT_data_member_location
	.byte	52                      @ Abbrev [52] 0x1938:0xd DW_TAG_member
	.long	.Linfo_string320        @ DW_AT_name
	.long	6662                    @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	340                     @ DW_AT_decl_line
	.byte	44                      @ DW_AT_data_member_location
	.byte	52                      @ Abbrev [52] 0x1945:0xd DW_TAG_member
	.long	.Linfo_string321        @ DW_AT_name
	.long	6637                    @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	351                     @ DW_AT_decl_line
	.byte	48                      @ DW_AT_data_member_location
	.byte	52                      @ Abbrev [52] 0x1952:0xd DW_TAG_member
	.long	.Linfo_string322        @ DW_AT_name
	.long	6662                    @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	354                     @ DW_AT_decl_line
	.byte	52                      @ DW_AT_data_member_location
	.byte	52                      @ Abbrev [52] 0x195f:0xd DW_TAG_member
	.long	.Linfo_string323        @ DW_AT_name
	.long	6662                    @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	358                     @ DW_AT_decl_line
	.byte	56                      @ DW_AT_data_member_location
	.byte	52                      @ Abbrev [52] 0x196c:0xd DW_TAG_member
	.long	.Linfo_string324        @ DW_AT_name
	.long	6637                    @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	360                     @ DW_AT_decl_line
	.byte	60                      @ DW_AT_data_member_location
	.byte	52                      @ Abbrev [52] 0x1979:0xd DW_TAG_member
	.long	.Linfo_string325        @ DW_AT_name
	.long	6667                    @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	368                     @ DW_AT_decl_line
	.byte	64                      @ DW_AT_data_member_location
	.byte	52                      @ Abbrev [52] 0x1986:0xd DW_TAG_member
	.long	.Linfo_string326        @ DW_AT_name
	.long	6662                    @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	374                     @ DW_AT_decl_line
	.byte	72                      @ DW_AT_data_member_location
	.byte	52                      @ Abbrev [52] 0x1993:0xd DW_TAG_member
	.long	.Linfo_string327        @ DW_AT_name
	.long	6662                    @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	380                     @ DW_AT_decl_line
	.byte	76                      @ DW_AT_data_member_location
	.byte	52                      @ Abbrev [52] 0x19a0:0xd DW_TAG_member
	.long	.Linfo_string328        @ DW_AT_name
	.long	6627                    @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	387                     @ DW_AT_decl_line
	.byte	80                      @ DW_AT_data_member_location
	.byte	52                      @ Abbrev [52] 0x19ad:0xd DW_TAG_member
	.long	.Linfo_string329        @ DW_AT_name
	.long	6662                    @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	393                     @ DW_AT_decl_line
	.byte	84                      @ DW_AT_data_member_location
	.byte	52                      @ Abbrev [52] 0x19ba:0xd DW_TAG_member
	.long	.Linfo_string330        @ DW_AT_name
	.long	6662                    @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	403                     @ DW_AT_decl_line
	.byte	88                      @ DW_AT_data_member_location
	.byte	52                      @ Abbrev [52] 0x19c7:0xd DW_TAG_member
	.long	.Linfo_string331        @ DW_AT_name
	.long	6672                    @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	406                     @ DW_AT_decl_line
	.byte	92                      @ DW_AT_data_member_location
	.byte	53                      @ Abbrev [53] 0x19d4:0xe DW_TAG_member
	.long	.Linfo_string333        @ DW_AT_name
	.long	6692                    @ DW_AT_type
	.byte	3                       @ DW_AT_decl_file
	.short	409                     @ DW_AT_decl_line
	.short	348                     @ DW_AT_data_member_location
	.byte	0                       @ End Of Children Mark
	.byte	30                      @ Abbrev [30] 0x19e3:0x5 DW_TAG_const_type
	.long	6632                    @ DW_AT_type
	.byte	20                      @ Abbrev [20] 0x19e8:0x5 DW_TAG_pointer_type
	.long	6637                    @ DW_AT_type
	.byte	30                      @ Abbrev [30] 0x19ed:0x5 DW_TAG_const_type
	.long	442                     @ DW_AT_type
	.byte	30                      @ Abbrev [30] 0x19f2:0x5 DW_TAG_const_type
	.long	6647                    @ DW_AT_type
	.byte	20                      @ Abbrev [20] 0x19f7:0x5 DW_TAG_pointer_type
	.long	442                     @ DW_AT_type
	.byte	30                      @ Abbrev [30] 0x19fc:0x5 DW_TAG_const_type
	.long	6657                    @ DW_AT_type
	.byte	20                      @ Abbrev [20] 0x1a01:0x5 DW_TAG_pointer_type
	.long	5187                    @ DW_AT_type
	.byte	30                      @ Abbrev [30] 0x1a06:0x5 DW_TAG_const_type
	.long	5187                    @ DW_AT_type
	.byte	30                      @ Abbrev [30] 0x1a0b:0x5 DW_TAG_const_type
	.long	5205                    @ DW_AT_type
	.byte	54                      @ Abbrev [54] 0x1a10:0xd DW_TAG_array_type
	.long	4231                    @ DW_AT_type
	.byte	55                      @ Abbrev [55] 0x1a15:0x7 DW_TAG_subrange_type
	.long	6685                    @ DW_AT_type
	.short	256                     @ DW_AT_count
	.byte	0                       @ End Of Children Mark
	.byte	56                      @ Abbrev [56] 0x1a1d:0x7 DW_TAG_base_type
	.long	.Linfo_string332        @ DW_AT_name
	.byte	8                       @ DW_AT_byte_size
	.byte	7                       @ DW_AT_encoding
	.byte	30                      @ Abbrev [30] 0x1a24:0x5 DW_TAG_const_type
	.long	5198                    @ DW_AT_type
	.byte	57                      @ Abbrev [57] 0x1a29:0x5 DW_TAG_reference_type
	.long	442                     @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.section	.debug_ranges,"",%progbits
.Ldebug_range:
.Ldebug_ranges0:
	.long	.Ltmp43
	.long	.Ltmp52
	.long	.Ltmp53
	.long	.Ltmp61
	.long	0
	.long	0
.Ldebug_ranges1:
	.long	.Lfunc_begin0
	.long	.Lfunc_end3
	.long	.Lfunc_begin4
	.long	.Lfunc_end4
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
	.long	6703                    @ Compilation Unit Length
	.long	168                     @ DIE offset
	.asciz	"sensorFilter"          @ External Name
	.long	521                     @ DIE offset
	.asciz	"tempAdjust"            @ External Name
	.long	561                     @ DIE offset
	.asciz	"smoothedValue"         @ External Name
	.long	6105                    @ DIE offset
	.byte	0                       @ External Name
	.long	615                     @ DIE offset
	.asciz	"i2cBMETask"            @ External Name
	.long	541                     @ DIE offset
	.asciz	"amLight"               @ External Name
	.long	5687                    @ DIE offset
	.asciz	"bme280_read"           @ External Name
	.long	501                     @ DIE offset
	.asciz	"hum"                   @ External Name
	.long	1002                    @ DIE offset
	.asciz	"std"                   @ External Name
	.long	5654                    @ DIE offset
	.asciz	"readBME280"            @ External Name
	.long	38                      @ DIE offset
	.asciz	"bme280"                @ External Name
	.long	648                     @ DIE offset
	.asciz	"counter"               @ External Name
	.long	5769                    @ DIE offset
	.asciz	"temt6000_read"         @ External Name
	.long	581                     @ DIE offset
	.asciz	"previousAmlightValue"  @ External Name
	.long	461                     @ DIE offset
	.asciz	"temp"                  @ External Name
	.long	5972                    @ DIE offset
	.asciz	"BME280I2C::Settings::Settings" @ External Name
	.long	598                     @ DIE offset
	.asciz	"gPhase"                @ External Name
	.long	5861                    @ DIE offset
	.asciz	"BME280::Settings::Settings" @ External Name
	.long	481                     @ DIE offset
	.asciz	"pres"                  @ External Name
	.long	6097                    @ DIE offset
	.asciz	"__cxx_global_var_init.1" @ External Name
	.long	6089                    @ DIE offset
	.asciz	"__cxx_global_var_init" @ External Name
	.long	5613                    @ DIE offset
	.asciz	"initialize_sensors"    @ External Name
	.long	0                       @ End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",%progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0 @ Length of Public Types Info
.LpubTypes_begin0:
	.short	2                       @ DWARF Version
	.long	.Lcu_begin0             @ Offset of Compilation Unit Info
	.long	6703                    @ Compilation Unit Length
	.long	5355                    @ DIE offset
	.asciz	"time_t"                @ External Name
	.long	5019                    @ DIE offset
	.asciz	"int32_t"               @ External Name
	.long	5041                    @ DIE offset
	.asciz	"int_fast8_t"           @ External Name
	.long	5129                    @ DIE offset
	.asciz	"intmax_t"              @ External Name
	.long	5234                    @ DIE offset
	.asciz	"uint_fast16_t"         @ External Name
	.long	5151                    @ DIE offset
	.asciz	"uint8_t"               @ External Name
	.long	6286                    @ DIE offset
	.asciz	"bool"                  @ External Name
	.long	5052                    @ DIE offset
	.asciz	"int_fast16_t"          @ External Name
	.long	5169                    @ DIE offset
	.asciz	"uint16_t"              @ External Name
	.long	5107                    @ DIE offset
	.asciz	"int_least32_t"         @ External Name
	.long	4107                    @ DIE offset
	.asciz	"long int"              @ External Name
	.long	5366                    @ DIE offset
	.asciz	"__time_t"              @ External Name
	.long	5030                    @ DIE offset
	.asciz	"int64_t"               @ External Name
	.long	2795                    @ DIE offset
	.asciz	"float_t"               @ External Name
	.long	5322                    @ DIE offset
	.asciz	"uintptr_t"             @ External Name
	.long	2869                    @ DIE offset
	.asciz	"long double"           @ External Name
	.long	5012                    @ DIE offset
	.asciz	"short"                 @ External Name
	.long	5289                    @ DIE offset
	.asciz	"uint_least32_t"        @ External Name
	.long	5140                    @ DIE offset
	.asciz	"intptr_t"              @ External Name
	.long	6298                    @ DIE offset
	.asciz	"BelaContext"           @ External Name
	.long	5344                    @ DIE offset
	.asciz	"__clock_t"             @ External Name
	.long	5118                    @ DIE offset
	.asciz	"int_least64_t"         @ External Name
	.long	5001                    @ DIE offset
	.asciz	"int16_t"               @ External Name
	.long	5245                    @ DIE offset
	.asciz	"uint_fast32_t"         @ External Name
	.long	5198                    @ DIE offset
	.asciz	"unsigned int"          @ External Name
	.long	449                     @ DIE offset
	.asciz	"int"                   @ External Name
	.long	635                     @ DIE offset
	.asciz	"AuxiliaryTask"         @ External Name
	.long	2784                    @ DIE offset
	.asciz	"double_t"              @ External Name
	.long	5587                    @ DIE offset
	.asciz	"size_t"                @ External Name
	.long	5063                    @ DIE offset
	.asciz	"int_fast32_t"          @ External Name
	.long	5300                    @ DIE offset
	.asciz	"uint_least64_t"        @ External Name
	.long	4983                    @ DIE offset
	.asciz	"int8_t"                @ External Name
	.long	4994                    @ DIE offset
	.asciz	"signed char"           @ External Name
	.long	5187                    @ DIE offset
	.asciz	"uint32_t"              @ External Name
	.long	2335                    @ DIE offset
	.asciz	"double"                @ External Name
	.long	5096                    @ DIE offset
	.asciz	"int_least16_t"         @ External Name
	.long	4231                    @ DIE offset
	.asciz	"char"                  @ External Name
	.long	5333                    @ DIE offset
	.asciz	"clock_t"               @ External Name
	.long	5223                    @ DIE offset
	.asciz	"uint_fast8_t"          @ External Name
	.long	5267                    @ DIE offset
	.asciz	"uint_least8_t"         @ External Name
	.long	5216                    @ DIE offset
	.asciz	"long long unsigned int" @ External Name
	.long	5256                    @ DIE offset
	.asciz	"uint_fast64_t"         @ External Name
	.long	3824                    @ DIE offset
	.asciz	"long long int"         @ External Name
	.long	5180                    @ DIE offset
	.asciz	"unsigned short"        @ External Name
	.long	5085                    @ DIE offset
	.asciz	"int_least8_t"          @ External Name
	.long	188                     @ DIE offset
	.asciz	"OnePole"               @ External Name
	.long	5278                    @ DIE offset
	.asciz	"uint_least16_t"        @ External Name
	.long	5074                    @ DIE offset
	.asciz	"int_fast64_t"          @ External Name
	.long	442                     @ DIE offset
	.asciz	"float"                 @ External Name
	.long	5311                    @ DIE offset
	.asciz	"uintmax_t"             @ External Name
	.long	5162                    @ DIE offset
	.asciz	"unsigned char"         @ External Name
	.long	5205                    @ DIE offset
	.asciz	"uint64_t"              @ External Name
	.long	0                       @ End Mark
.LpubTypes_end0:
	.cfi_sections .debug_frame

	.globl	temp
temp = .L_MergedGlobals
	.size	temp, 4
	.globl	pres
pres = .L_MergedGlobals+4
	.size	pres, 4
	.globl	hum
hum = .L_MergedGlobals+8
	.size	hum, 4
	.globl	tempAdjust
tempAdjust = .L_MergedGlobals+12
	.size	tempAdjust, 4
	.globl	amLight
amLight = .L_MergedGlobals+16
	.size	amLight, 4
	.globl	smoothedValue
smoothedValue = .L_MergedGlobals+20
	.size	smoothedValue, 4
	.globl	i2cBMETask
i2cBMETask = .L_MergedGlobals+24
	.size	i2cBMETask, 4
	.globl	sensorFilter
sensorFilter = .L_MergedGlobals+28
	.size	sensorFilter, 20
	.globl	bme280
bme280 = .L_MergedGlobals.3
	.size	bme280, 120
	.ident	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
	.section	.debug_line,"",%progbits
.Lline_table_start0:
