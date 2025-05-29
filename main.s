	.file	"main.943cebc7d6c35df8-cgu.0"
	.section	.text._ZN3std2io5Write9write_fmt17h1d871c63a9cfdb6bE,"ax",@progbits
	.p2align	4
	.type	_ZN3std2io5Write9write_fmt17h1d871c63a9cfdb6bE,@function
_ZN3std2io5Write9write_fmt17h1d871c63a9cfdb6bE:
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception0
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$72, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %rdx
	movq	%rdi, 8(%rsp)
	leaq	16(%rsp), %rbx
	movq	$0, 16(%rsp)
.Ltmp0:
	leaq	.L__unnamed_1(%rip), %rsi
	leaq	8(%rsp), %rdi
	callq	*_ZN4core3fmt5write17hdffc4a0668332a77E@GOTPCREL(%rip)
.Ltmp1:
	movl	%eax, %ecx
	movq	16(%rsp), %rax
	testb	%cl, %cl
	je	.LBB0_2
	testq	%rax, %rax
	jne	.LBB0_9
	leaq	.L__unnamed_2(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	$1, 32(%rsp)
	movq	$8, 40(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 48(%rsp)
.Ltmp5:
	leaq	.L__unnamed_3(%rip), %rsi
	leaq	24(%rsp), %rdi
	callq	*_ZN4core9panicking9panic_fmt17had3d135c9a0675d5E@GOTPCREL(%rip)
.Ltmp6:
	ud2
.LBB0_2:
	movl	%eax, %ecx
	andl	$3, %ecx
	cmpl	$1, %ecx
	je	.LBB0_3
.LBB0_8:
	xorl	%eax, %eax
.LBB0_9:
	addq	$72, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB0_3:
	.cfi_def_cfa_offset 112
	leaq	-1(%rax), %rbx
	movq	-1(%rax), %r15
	movq	7(%rax), %r12
	movq	(%r12), %rax
	testq	%rax, %rax
	je	.LBB0_5
.Ltmp2:
	movq	%r15, %rdi
	callq	*%rax
.Ltmp3:
.LBB0_5:
	movq	8(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB0_7
	movq	16(%r12), %rdx
	movq	%r15, %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB0_7:
	movl	$24, %esi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB0_8
.LBB0_12:
.Ltmp4:
	movq	%rax, %r14
	movq	8(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB0_14
	movq	16(%r12), %rdx
	movq	%r15, %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB0_14:
	movl	$24, %esi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.LBB0_10:
.Ltmp7:
	movq	%rax, %r14
	cmpq	$0, 16(%rsp)
	je	.LBB0_15
.Ltmp8:
	movq	%rbx, %rdi
	callq	_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hb168b816ed3759c0E
.Ltmp9:
.LBB0_15:
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.LBB0_19:
.Ltmp10:
	callq	*_ZN4core9panicking16panic_in_cleanup17haa899c5aa4e72605E@GOTPCREL(%rip)
.Lfunc_end0:
	.size	_ZN3std2io5Write9write_fmt17h1d871c63a9cfdb6bE, .Lfunc_end0-_ZN3std2io5Write9write_fmt17h1d871c63a9cfdb6bE
	.cfi_endproc
	.section	.gcc_except_table._ZN3std2io5Write9write_fmt17h1d871c63a9cfdb6bE,"a",@progbits
	.p2align	2, 0x0
GCC_except_table0:
.Lexception0:
	.byte	255
	.byte	155
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0
	.uleb128 .Ltmp6-.Ltmp0
	.uleb128 .Ltmp7-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp2-.Lfunc_begin0
	.uleb128 .Ltmp3-.Ltmp2
	.uleb128 .Ltmp4-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp3-.Lfunc_begin0
	.uleb128 .Ltmp8-.Ltmp3
	.byte	0
	.byte	0
	.uleb128 .Ltmp8-.Lfunc_begin0
	.uleb128 .Ltmp9-.Ltmp8
	.uleb128 .Ltmp10-.Lfunc_begin0
	.byte	1
	.uleb128 .Ltmp9-.Lfunc_begin0
	.uleb128 .Lfunc_end0-.Ltmp9
	.byte	0
	.byte	0
.Lcst_end0:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase0:
	.byte	0
	.p2align	2, 0x0

	.section	.text._ZN3std2rt10lang_start17h7f7ed1268c50b546E,"ax",@progbits
	.hidden	_ZN3std2rt10lang_start17h7f7ed1268c50b546E
	.globl	_ZN3std2rt10lang_start17h7f7ed1268c50b546E
	.p2align	4
	.type	_ZN3std2rt10lang_start17h7f7ed1268c50b546E,@function
_ZN3std2rt10lang_start17h7f7ed1268c50b546E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	%ecx, %r8d
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, (%rsp)
	leaq	.L__unnamed_4(%rip), %rsi
	movq	%rsp, %rdi
	callq	*_ZN3std2rt19lang_start_internal17h1735e522c691efcaE@GOTPCREL(%rip)
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	_ZN3std2rt10lang_start17h7f7ed1268c50b546E, .Lfunc_end1-_ZN3std2rt10lang_start17h7f7ed1268c50b546E
	.cfi_endproc

	.section	".text._ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h0a866ec27c98af52E","ax",@progbits
	.p2align	4
	.type	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h0a866ec27c98af52E,@function
_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h0a866ec27c98af52E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h5c2b51684ada7b73E
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h0a866ec27c98af52E, .Lfunc_end2-_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h0a866ec27c98af52E
	.cfi_endproc

	.section	.text._ZN3std3sys9backtrace28__rust_begin_short_backtrace17h0f8f9ff72d5236a2E,"ax",@progbits
	.p2align	4
	.type	_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h0f8f9ff72d5236a2E,@function
_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h0f8f9ff72d5236a2E:
	.cfi_startproc
	cmpb	$1, %fs:_ZN4main14THREAD_COUNTER29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17ha7b10ab2a89e13afE.0@TPOFF
	jne	.LBB3_2
	movl	%fs:_ZN4main14THREAD_COUNTER29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17ha7b10ab2a89e13afE.1@TPOFF, %eax
	incl	%eax
	movl	%eax, %fs:_ZN4main14THREAD_COUNTER29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17ha7b10ab2a89e13afE.1@TPOFF
	#APP
	#NO_APP
	retq
.LBB3_2:
	movb	$1, %fs:_ZN4main14THREAD_COUNTER29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17ha7b10ab2a89e13afE.0@TPOFF
	movl	$1, %eax
	movl	%eax, %fs:_ZN4main14THREAD_COUNTER29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17ha7b10ab2a89e13afE.1@TPOFF
	#APP
	#NO_APP
	retq
.Lfunc_end3:
	.size	_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h0f8f9ff72d5236a2E, .Lfunc_end3-_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h0f8f9ff72d5236a2E
	.cfi_endproc

	.section	.text._ZN3std3sys9backtrace28__rust_begin_short_backtrace17h5c2b51684ada7b73E,"ax",@progbits
	.p2align	4
	.type	_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h5c2b51684ada7b73E,@function
_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h5c2b51684ada7b73E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	*%rdi
	#APP
	#NO_APP
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h5c2b51684ada7b73E, .Lfunc_end4-_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h5c2b51684ada7b73E
	.cfi_endproc

	.section	.text._ZN3std3sys9backtrace28__rust_begin_short_backtrace17hbd1aeaf18b0adb5dE,"ax",@progbits
	.p2align	4
	.type	_ZN3std3sys9backtrace28__rust_begin_short_backtrace17hbd1aeaf18b0adb5dE,@function
_ZN3std3sys9backtrace28__rust_begin_short_backtrace17hbd1aeaf18b0adb5dE:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movaps	%xmm1, 16(%rsp)
	movaps	%xmm0, (%rsp)
	movq	%rsp, %rdi
	callq	*_ZN3std6thread9spawnhook15ChildSpawnHooks3run17h6dbba3746e1ea52aE@GOTPCREL(%rip)
	#APP
	#NO_APP
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	_ZN3std3sys9backtrace28__rust_begin_short_backtrace17hbd1aeaf18b0adb5dE, .Lfunc_end5-_ZN3std3sys9backtrace28__rust_begin_short_backtrace17hbd1aeaf18b0adb5dE
	.cfi_endproc

	.section	.text._ZN4core3fmt5Write10write_char17hd414f9171f56f7b3E,"ax",@progbits
	.p2align	4
	.type	_ZN4core3fmt5Write10write_char17hd414f9171f56f7b3E,@function
_ZN4core3fmt5Write10write_char17hd414f9171f56f7b3E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$0, 4(%rsp)
	cmpl	$128, %esi
	jae	.LBB6_1
	movb	%sil, 4(%rsp)
	movl	$1, %edx
	leaq	4(%rsp), %rsi
	callq	_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h0e93c6bb46ec0626E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB6_1:
	.cfi_def_cfa_offset 16
	movl	%esi, %eax
	cmpl	$2048, %esi
	jae	.LBB6_2
	shrl	$6, %eax
	orb	$-64, %al
	movb	%al, 4(%rsp)
	andb	$63, %sil
	orb	$-128, %sil
	movb	%sil, 5(%rsp)
	movl	$2, %edx
	leaq	4(%rsp), %rsi
	callq	_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h0e93c6bb46ec0626E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB6_2:
	.cfi_def_cfa_offset 16
	cmpl	$65536, %esi
	jae	.LBB6_3
	shrl	$12, %eax
	orb	$-32, %al
	movb	%al, 4(%rsp)
	movl	%esi, %eax
	shrl	$6, %eax
	andb	$63, %al
	orb	$-128, %al
	movb	%al, 5(%rsp)
	andb	$63, %sil
	orb	$-128, %sil
	movb	%sil, 6(%rsp)
	movl	$3, %edx
	leaq	4(%rsp), %rsi
	callq	_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h0e93c6bb46ec0626E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB6_3:
	.cfi_def_cfa_offset 16
	shrl	$18, %eax
	orb	$-16, %al
	movb	%al, 4(%rsp)
	movl	%esi, %eax
	shrl	$12, %eax
	andb	$63, %al
	orb	$-128, %al
	movb	%al, 5(%rsp)
	movl	%esi, %eax
	shrl	$6, %eax
	andb	$63, %al
	orb	$-128, %al
	movb	%al, 6(%rsp)
	andb	$63, %sil
	orb	$-128, %sil
	movb	%sil, 7(%rsp)
	movl	$4, %edx
	leaq	4(%rsp), %rsi
	callq	_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h0e93c6bb46ec0626E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	_ZN4core3fmt5Write10write_char17hd414f9171f56f7b3E, .Lfunc_end6-_ZN4core3fmt5Write10write_char17hd414f9171f56f7b3E
	.cfi_endproc

	.section	.text._ZN4core3fmt5Write9write_fmt17h4c529b0590916d2aE,"ax",@progbits
	.p2align	4
	.type	_ZN4core3fmt5Write9write_fmt17h4c529b0590916d2aE,@function
_ZN4core3fmt5Write9write_fmt17h4c529b0590916d2aE:
	.cfi_startproc
	movq	%rsi, %rdx
	leaq	.L__unnamed_1(%rip), %rsi
	jmpq	*_ZN4core3fmt5write17hdffc4a0668332a77E@GOTPCREL(%rip)
.Lfunc_end7:
	.size	_ZN4core3fmt5Write9write_fmt17h4c529b0590916d2aE, .Lfunc_end7-_ZN4core3fmt5Write9write_fmt17h4c529b0590916d2aE
	.cfi_endproc

	.section	".text._ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hac78deeccc4c4b9aE","ax",@progbits
	.p2align	4
	.type	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hac78deeccc4c4b9aE,@function
_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hac78deeccc4c4b9aE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h5c2b51684ada7b73E
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end8:
	.size	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hac78deeccc4c4b9aE, .Lfunc_end8-_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hac78deeccc4c4b9aE
	.cfi_endproc

	.section	".text._ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hdc416b53aa387767E","ax",@progbits
	.p2align	4
	.type	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hdc416b53aa387767E,@function
_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hdc416b53aa387767E:
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception1
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	32(%rdi), %rdi
	lock		incq	(%rdi)
	jle	.LBB9_7
	leaq	32(%rbx), %r14
	movb	$1, %bpl
.Ltmp11:
	callq	*_ZN3std6thread7current11set_current17h4c0a33510da7b041E@GOTPCREL(%rip)
.Ltmp12:
	testq	%rax, %rax
	jne	.LBB9_3
.Ltmp22:
	movq	%r14, %rdi
	callq	*_ZN3std6thread6Thread5cname17ha62d4bcbea2a96baE@GOTPCREL(%rip)
.Ltmp23:
	testq	%rax, %rax
	je	.LBB9_21
.Ltmp24:
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	*_ZN3std3sys3pal4unix6thread6Thread8set_name17he0acca18b8eed41aE@GOTPCREL(%rip)
.Ltmp25:
.LBB9_21:
	movups	16(%rbx), %xmm0
	movaps	%xmm0, 64(%rsp)
	movups	(%rbx), %xmm0
	movaps	%xmm0, 48(%rsp)
.Ltmp26:
	leaq	48(%rsp), %rdi
	callq	_ZN3std3sys9backtrace28__rust_begin_short_backtrace17hbd1aeaf18b0adb5dE
.Ltmp27:
.Ltmp28:
	callq	_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h0f8f9ff72d5236a2E
.Ltmp29:
	xorl	%r12d, %r12d
	movq	40(%rbx), %r15
	cmpq	$0, 24(%r15)
	je	.LBB9_33
.LBB9_28:
	movq	32(%r15), %rbp
	testq	%rbp, %rbp
	je	.LBB9_33
	movq	40(%r15), %r13
	movq	(%r13), %rax
	testq	%rax, %rax
	je	.LBB9_31
.Ltmp34:
	movq	%rbp, %rdi
	callq	*%rax
.Ltmp35:
.LBB9_31:
	movq	8(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB9_33
	movq	16(%r13), %rdx
	movq	%rbp, %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB9_33:
	movq	$1, 24(%r15)
	movq	%r12, 32(%r15)
	movq	32(%rsp), %rax
	movq	%rax, 40(%r15)
	movq	40(%rbx), %rax
	movq	%rax, 24(%rsp)
	lock		decq	(%rax)
	jne	.LBB9_35
	#MEMBARRIER
	xorl	%ebp, %ebp
.Ltmp37:
	leaq	24(%rsp), %rdi
	callq	_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h4fff0ec825e551a8E
.Ltmp38:
.LBB9_35:
	movq	(%r14), %rax
	lock		decq	(%rax)
	jne	.LBB9_43
	#MEMBARRIER
	movq	%r14, %rdi
	addq	$104, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmpq	*_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcce71d5f8194b7c3E@GOTPCREL(%rip)
.LBB9_43:
	.cfi_def_cfa_offset 160
	addq	$104, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB9_3:
	.cfi_def_cfa_offset 160
	movq	%rax, %r15
	movq	%rax, 40(%rsp)
	leaq	.L__unnamed_5(%rip), %rax
	movq	%rax, 48(%rsp)
	movq	$1, 56(%rsp)
	leaq	8(%rsp), %rdi
	movq	%rdi, 64(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 72(%rsp)
.Ltmp13:
	leaq	48(%rsp), %rsi
	callq	_ZN3std2io5Write9write_fmt17h1d871c63a9cfdb6bE
.Ltmp14:
	movq	%rax, 24(%rsp)
	testq	%rax, %rax
	je	.LBB9_6
.Ltmp15:
	leaq	24(%rsp), %rdi
	callq	_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hb168b816ed3759c0E
.Ltmp16:
.LBB9_6:
.Ltmp17:
	callq	*_ZN3std3sys3pal4unix14abort_internal17hce7b55d5fd04c23cE@GOTPCREL(%rip)
.Ltmp18:
.LBB9_7:
	ud2
.LBB9_37:
.Ltmp36:
	movq	%rax, 16(%rsp)
	movq	8(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB9_39
	movq	16(%r13), %rdx
	movq	%rbp, %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB9_39:
	movq	$1, 24(%r15)
	movq	%r12, 32(%r15)
	movq	32(%rsp), %rax
	movq	%rax, 40(%r15)
	movb	$1, %bpl
	xorl	%r15d, %r15d
	jmp	.LBB9_9
.LBB9_14:
.Ltmp19:
	movq	%rax, 16(%rsp)
	lock		decq	(%r15)
	movb	$1, %bpl
	jne	.LBB9_15
	#MEMBARRIER
.Ltmp20:
	leaq	40(%rsp), %rdi
	callq	*_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcce71d5f8194b7c3E@GOTPCREL(%rip)
.Ltmp21:
	movb	$1, %r15b
	jmp	.LBB9_9
.LBB9_15:
	movb	$1, %r15b
	jmp	.LBB9_9
.LBB9_25:
.Ltmp30:
.Ltmp31:
	movq	%rax, %rdi
	callq	*_ZN3std9panicking3try7cleanup17hebe6bfeaaaafe238E@GOTPCREL(%rip)
	movq	%rdx, 32(%rsp)
.Ltmp32:
	movq	%rax, %r12
	movq	40(%rbx), %r15
	cmpq	$0, 24(%r15)
	jne	.LBB9_28
	jmp	.LBB9_33
.LBB9_24:
.Ltmp33:
	callq	*_ZN4core9panicking19panic_cannot_unwind17h03572840a184f027E@GOTPCREL(%rip)
.LBB9_8:
.Ltmp39:
	movq	%rax, 16(%rsp)
	movl	%ebp, %r15d
.LBB9_9:
	movq	(%r14), %rax
	lock		decq	(%rax)
	jne	.LBB9_11
	#MEMBARRIER
.Ltmp40:
	movq	%r14, %rdi
	callq	*_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcce71d5f8194b7c3E@GOTPCREL(%rip)
.Ltmp41:
.LBB9_11:
	testb	%r15b, %r15b
	je	.LBB9_12
.Ltmp42:
	movq	%rbx, %rdi
	callq	_ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h59e90fcefc3b96caE
.Ltmp43:
.LBB9_12:
	testb	%bpl, %bpl
	je	.LBB9_13
	movq	40(%rbx), %rax
	lock		decq	(%rax)
	jne	.LBB9_13
	addq	$40, %rbx
	#MEMBARRIER
.Ltmp44:
	movq	%rbx, %rdi
	callq	_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h4fff0ec825e551a8E
.Ltmp45:
.LBB9_13:
	movq	16(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB9_17:
.Ltmp46:
	callq	*_ZN4core9panicking16panic_in_cleanup17haa899c5aa4e72605E@GOTPCREL(%rip)
.Lfunc_end9:
	.size	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hdc416b53aa387767E, .Lfunc_end9-_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hdc416b53aa387767E
	.cfi_endproc
	.section	".gcc_except_table._ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hdc416b53aa387767E","a",@progbits
	.p2align	2, 0x0
GCC_except_table9:
.Lexception1:
	.byte	255
	.byte	155
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp11-.Lfunc_begin1
	.uleb128 .Ltmp25-.Ltmp11
	.uleb128 .Ltmp39-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp26-.Lfunc_begin1
	.uleb128 .Ltmp29-.Ltmp26
	.uleb128 .Ltmp30-.Lfunc_begin1
	.byte	3
	.uleb128 .Ltmp34-.Lfunc_begin1
	.uleb128 .Ltmp35-.Ltmp34
	.uleb128 .Ltmp36-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp37-.Lfunc_begin1
	.uleb128 .Ltmp38-.Ltmp37
	.uleb128 .Ltmp39-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp38-.Lfunc_begin1
	.uleb128 .Ltmp13-.Ltmp38
	.byte	0
	.byte	0
	.uleb128 .Ltmp13-.Lfunc_begin1
	.uleb128 .Ltmp18-.Ltmp13
	.uleb128 .Ltmp19-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp20-.Lfunc_begin1
	.uleb128 .Ltmp21-.Ltmp20
	.uleb128 .Ltmp46-.Lfunc_begin1
	.byte	1
	.uleb128 .Ltmp31-.Lfunc_begin1
	.uleb128 .Ltmp32-.Ltmp31
	.uleb128 .Ltmp33-.Lfunc_begin1
	.byte	1
	.uleb128 .Ltmp40-.Lfunc_begin1
	.uleb128 .Ltmp45-.Ltmp40
	.uleb128 .Ltmp46-.Lfunc_begin1
	.byte	1
	.uleb128 .Ltmp45-.Lfunc_begin1
	.uleb128 .Lfunc_end9-.Ltmp45
	.byte	0
	.byte	0
.Lcst_end1:
	.byte	127
	.byte	0
	.byte	1
	.byte	0
	.p2align	2, 0x0
	.long	0
.Lttbase1:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17hed635f762f4ce1f0E","ax",@progbits
	.p2align	4
	.type	_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17hed635f762f4ce1f0E,@function
_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17hed635f762f4ce1f0E:
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception2
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	testq	%rdi, %rdi
	je	.LBB10_8
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%rsi), %rax
	testq	%rax, %rax
	je	.LBB10_3
.Ltmp47:
	movq	%rbx, %rdi
	callq	*%rax
.Ltmp48:
.LBB10_3:
	movq	8(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB10_8
	movq	16(%r14), %rdx
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB10_8:
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB10_5:
	.cfi_def_cfa_offset 32
.Ltmp49:
	movq	%rax, %r15
	movq	8(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB10_7
	movq	16(%r14), %rdx
	movq	%rbx, %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB10_7:
	movq	%r15, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end10:
	.size	_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17hed635f762f4ce1f0E, .Lfunc_end10-_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17hed635f762f4ce1f0E
	.cfi_endproc
	.section	".gcc_except_table._ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17hed635f762f4ce1f0E","a",@progbits
	.p2align	2, 0x0
GCC_except_table10:
.Lexception2:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp47-.Lfunc_begin2
	.uleb128 .Ltmp48-.Ltmp47
	.uleb128 .Ltmp49-.Lfunc_begin2
	.byte	0
	.uleb128 .Ltmp48-.Lfunc_begin2
	.uleb128 .Lfunc_end10-.Ltmp48
	.byte	0
	.byte	0
.Lcst_end2:
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17h4b5081ecdd5cddf4E","ax",@progbits
	.p2align	4
	.type	_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17h4b5081ecdd5cddf4E,@function
_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17h4b5081ecdd5cddf4E:
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception3
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%rsi), %rax
	testq	%rax, %rax
	je	.LBB11_2
.Ltmp50:
	movq	%rbx, %rdi
	callq	*%rax
.Ltmp51:
.LBB11_2:
	movq	8(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB11_3
	movq	16(%r14), %rdx
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB11_3:
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB11_4:
	.cfi_def_cfa_offset 32
.Ltmp52:
	movq	%rax, %r15
	movq	8(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB11_6
	movq	16(%r14), %rdx
	movq	%rbx, %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB11_6:
	movq	%r15, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end11:
	.size	_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17h4b5081ecdd5cddf4E, .Lfunc_end11-_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17h4b5081ecdd5cddf4E
	.cfi_endproc
	.section	".gcc_except_table._ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17h4b5081ecdd5cddf4E","a",@progbits
	.p2align	2, 0x0
GCC_except_table11:
.Lexception3:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp50-.Lfunc_begin3
	.uleb128 .Ltmp51-.Ltmp50
	.uleb128 .Ltmp52-.Lfunc_begin3
	.byte	0
	.uleb128 .Ltmp51-.Lfunc_begin3
	.uleb128 .Lfunc_end11-.Ltmp51
	.byte	0
	.byte	0
.Lcst_end3:
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr175drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$main..main..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h5069f78580a04768E","ax",@progbits
	.p2align	4
	.type	_ZN4core3ptr175drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$main..main..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h5069f78580a04768E,@function
_ZN4core3ptr175drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$main..main..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h5069f78580a04768E:
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception4
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	32(%rdi), %rax
	lock		decq	(%rax)
	jne	.LBB12_2
	leaq	32(%rbx), %rdi
	#MEMBARRIER
.Ltmp53:
	callq	*_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcce71d5f8194b7c3E@GOTPCREL(%rip)
.Ltmp54:
.LBB12_2:
.Ltmp58:
	movq	%rbx, %rdi
	callq	_ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h59e90fcefc3b96caE
.Ltmp59:
	movq	40(%rbx), %rax
	lock		decq	(%rax)
	jne	.LBB12_10
	addq	$40, %rbx
	#MEMBARRIER
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h4fff0ec825e551a8E
.LBB12_10:
	.cfi_def_cfa_offset 32
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB12_5:
	.cfi_def_cfa_offset 32
.Ltmp55:
	movq	%rax, %r14
.Ltmp56:
	movq	%rbx, %rdi
	callq	_ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h59e90fcefc3b96caE
.Ltmp57:
	jmp	.LBB12_6
.LBB12_9:
.Ltmp60:
	movq	%rax, %r14
.LBB12_6:
	movq	40(%rbx), %rax
	lock		decq	(%rax)
	jne	.LBB12_8
	addq	$40, %rbx
	#MEMBARRIER
.Ltmp61:
	movq	%rbx, %rdi
	callq	_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h4fff0ec825e551a8E
.Ltmp62:
.LBB12_8:
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.LBB12_11:
.Ltmp63:
	callq	*_ZN4core9panicking16panic_in_cleanup17haa899c5aa4e72605E@GOTPCREL(%rip)
.Lfunc_end12:
	.size	_ZN4core3ptr175drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$main..main..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h5069f78580a04768E, .Lfunc_end12-_ZN4core3ptr175drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$main..main..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h5069f78580a04768E
	.cfi_endproc
	.section	".gcc_except_table._ZN4core3ptr175drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$main..main..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h5069f78580a04768E","a",@progbits
	.p2align	2, 0x0
GCC_except_table12:
.Lexception4:
	.byte	255
	.byte	155
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp53-.Lfunc_begin4
	.uleb128 .Ltmp54-.Ltmp53
	.uleb128 .Ltmp55-.Lfunc_begin4
	.byte	0
	.uleb128 .Ltmp58-.Lfunc_begin4
	.uleb128 .Ltmp59-.Ltmp58
	.uleb128 .Ltmp60-.Lfunc_begin4
	.byte	0
	.uleb128 .Ltmp59-.Lfunc_begin4
	.uleb128 .Ltmp56-.Ltmp59
	.byte	0
	.byte	0
	.uleb128 .Ltmp56-.Lfunc_begin4
	.uleb128 .Ltmp62-.Ltmp56
	.uleb128 .Ltmp63-.Lfunc_begin4
	.byte	1
	.uleb128 .Ltmp62-.Lfunc_begin4
	.uleb128 .Lfunc_end12-.Ltmp62
	.byte	0
	.byte	0
.Lcst_end4:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase2:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr177drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h92d6f5134d5ae20bE","ax",@progbits
	.p2align	4
	.type	_ZN4core3ptr177drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h92d6f5134d5ae20bE,@function
_ZN4core3ptr177drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h92d6f5134d5ae20bE:
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception5
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	8(%rdi), %rax
	movq	%rax, (%rsp)
	movq	16(%rdi), %r13
	testq	%r13, %r13
	je	.LBB13_7
	movq	(%rsp), %rax
	leaq	24(%rax), %rbp
	movq	__rust_dealloc@GOTPCREL(%rip), %r15
	jmp	.LBB13_2
	.p2align	4
.LBB13_6:
	addq	$16, %rbp
	decq	%r13
	je	.LBB13_7
.LBB13_2:
	movq	-24(%rbp), %r12
	movq	-16(%rbp), %rbx
	movq	(%rbx), %rax
	testq	%rax, %rax
	je	.LBB13_4
.Ltmp64:
	movq	%r12, %rdi
	callq	*%rax
.Ltmp65:
.LBB13_4:
	movq	8(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB13_6
	movq	16(%rbx), %rdx
	movq	%r12, %rdi
	callq	*%r15
	jmp	.LBB13_6
.LBB13_7:
	movq	(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB13_17
	shlq	$4, %rsi
	movl	$8, %edx
	movq	(%rsp), %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB13_17:
	.cfi_def_cfa_offset 64
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB13_9:
	.cfi_def_cfa_offset 64
.Ltmp66:
	movq	%rax, %r15
	movq	8(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB13_11
	movq	16(%rbx), %rdx
	movq	%r12, %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	.p2align	4
.LBB13_11:
	decq	%r13
	je	.LBB13_14
	leaq	16(%rbp), %rbx
	movq	-8(%rbp), %rdi
	movq	(%rbp), %rsi
.Ltmp67:
	callq	_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17h4b5081ecdd5cddf4E
.Ltmp68:
	movq	%rbx, %rbp
	jmp	.LBB13_11
.LBB13_14:
	movq	(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB13_16
	shlq	$4, %rsi
	movl	$8, %edx
	movq	(%rsp), %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB13_16:
	movq	%r15, %rdi
	callq	_Unwind_Resume@PLT
.LBB13_13:
.Ltmp69:
	callq	*_ZN4core9panicking16panic_in_cleanup17haa899c5aa4e72605E@GOTPCREL(%rip)
.Lfunc_end13:
	.size	_ZN4core3ptr177drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h92d6f5134d5ae20bE, .Lfunc_end13-_ZN4core3ptr177drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h92d6f5134d5ae20bE
	.cfi_endproc
	.section	".gcc_except_table._ZN4core3ptr177drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h92d6f5134d5ae20bE","a",@progbits
	.p2align	2, 0x0
GCC_except_table13:
.Lexception5:
	.byte	255
	.byte	155
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp64-.Lfunc_begin5
	.uleb128 .Ltmp65-.Ltmp64
	.uleb128 .Ltmp66-.Lfunc_begin5
	.byte	0
	.uleb128 .Ltmp65-.Lfunc_begin5
	.uleb128 .Ltmp67-.Ltmp65
	.byte	0
	.byte	0
	.uleb128 .Ltmp67-.Lfunc_begin5
	.uleb128 .Ltmp68-.Ltmp67
	.uleb128 .Ltmp69-.Lfunc_begin5
	.byte	1
	.uleb128 .Ltmp68-.Lfunc_begin5
	.uleb128 .Lfunc_end13-.Ltmp68
	.byte	0
	.byte	0
.Lcst_end5:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase3:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17h3c753dd93410d474E","ax",@progbits
	.p2align	4
	.type	_ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17h3c753dd93410d474E,@function
_ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17h3c753dd93410d474E:
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception6
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	cmpq	$0, (%rdi)
	je	.LBB14_9
	movq	8(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB14_9
	movq	16(%rdi), %r15
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.LBB14_4
.Ltmp70:
	movq	%rbx, %rdi
	callq	*%rax
.Ltmp71:
.LBB14_4:
	movq	8(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB14_9
	movq	16(%r15), %rdx
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB14_9:
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB14_6:
	.cfi_def_cfa_offset 32
.Ltmp72:
	movq	%rax, %r14
	movq	8(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB14_8
	movq	16(%r15), %rdx
	movq	%rbx, %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB14_8:
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end14:
	.size	_ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17h3c753dd93410d474E, .Lfunc_end14-_ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17h3c753dd93410d474E
	.cfi_endproc
	.section	".gcc_except_table._ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17h3c753dd93410d474E","a",@progbits
	.p2align	2, 0x0
GCC_except_table14:
.Lexception6:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp70-.Lfunc_begin6
	.uleb128 .Ltmp71-.Ltmp70
	.uleb128 .Ltmp72-.Lfunc_begin6
	.byte	0
	.uleb128 .Ltmp71-.Lfunc_begin6
	.uleb128 .Lfunc_end14-.Ltmp71
	.byte	0
	.byte	0
.Lcst_end6:
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hb168b816ed3759c0E","ax",@progbits
	.p2align	4
	.type	_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hb168b816ed3759c0E,@function
_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hb168b816ed3759c0E:
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception7
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	(%rdi), %rax
	movl	%eax, %ecx
	andl	$3, %ecx
	cmpl	$1, %ecx
	je	.LBB15_1
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB15_1:
	.cfi_def_cfa_offset 48
	leaq	-1(%rax), %rbx
	movq	-1(%rax), %r14
	movq	7(%rax), %r12
	movq	(%r12), %rax
	testq	%rax, %rax
	je	.LBB15_3
.Ltmp73:
	movq	%r14, %rdi
	callq	*%rax
.Ltmp74:
.LBB15_3:
	movq	8(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB15_5
	movq	16(%r12), %rdx
	movq	%r14, %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB15_5:
	movl	$24, %esi
	movl	$8, %edx
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB15_6:
	.cfi_def_cfa_offset 48
.Ltmp75:
	movq	%rax, %r15
	movq	8(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB15_8
	movq	16(%r12), %rdx
	movq	%r14, %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB15_8:
	movl	$24, %esi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	movq	%r15, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end15:
	.size	_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hb168b816ed3759c0E, .Lfunc_end15-_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hb168b816ed3759c0E
	.cfi_endproc
	.section	".gcc_except_table._ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hb168b816ed3759c0E","a",@progbits
	.p2align	2, 0x0
GCC_except_table15:
.Lexception7:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp73-.Lfunc_begin7
	.uleb128 .Ltmp74-.Ltmp73
	.uleb128 .Ltmp75-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp74-.Lfunc_begin7
	.uleb128 .Lfunc_end15-.Ltmp74
	.byte	0
	.byte	0
.Lcst_end7:
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr56drop_in_place$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$17hccf41b2e1b78ec34E","ax",@progbits
	.p2align	4
	.type	_ZN4core3ptr56drop_in_place$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$17hccf41b2e1b78ec34E,@function
_ZN4core3ptr56drop_in_place$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$17hccf41b2e1b78ec34E:
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception8
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	leaq	8(%rdi), %rbx
	movq	8(%rdi), %rbp
	movq	16(%rdi), %r15
	testq	%r15, %r15
	setne	%r13b
	testq	%rbp, %rbp
	je	.LBB16_6
	testq	%r15, %r15
	je	.LBB16_6
	movq	24(%r14), %r12
	movq	(%r12), %rax
	testq	%rax, %rax
	je	.LBB16_4
.Ltmp76:
	movq	%r15, %rdi
	callq	*%rax
.Ltmp77:
.LBB16_4:
	movq	8(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB16_6
	movq	16(%r12), %rdx
	movq	%r15, %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB16_6:
	movq	$0, (%rbx)
.LBB16_7:
	movq	(%r14), %r12
	testq	%r12, %r12
	je	.LBB16_11
	andb	%r13b, %bpl
	leaq	16(%r12), %rdi
.Ltmp92:
	movzbl	%bpl, %esi
	callq	*_ZN3std6thread6scoped9ScopeData29decrement_num_running_threads17hc2fc27605153de54E@GOTPCREL(%rip)
.Ltmp93:
	lock		decq	(%r12)
	jne	.LBB16_11
	#MEMBARRIER
.Ltmp97:
	movq	%r14, %rdi
	callq	_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h670b3c68b50ab6bbE
.Ltmp98:
.LBB16_11:
	cmpq	$0, (%rbx)
	je	.LBB16_38
	movq	16(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB16_38
	movq	24(%r14), %r14
	movq	(%r14), %rax
	testq	%rax, %rax
	je	.LBB16_15
.Ltmp103:
	movq	%rbx, %rdi
	callq	*%rax
.Ltmp104:
.LBB16_15:
	movq	8(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB16_38
	movq	16(%r14), %rdx
	movq	%rbx, %rdi
	addq	$72, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB16_38:
	.cfi_def_cfa_offset 128
	addq	$72, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB16_35:
	.cfi_def_cfa_offset 128
.Ltmp105:
	movq	%rax, %r15
	movq	8(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB16_37
	movq	16(%r14), %rdx
	movq	%rbx, %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	movq	%r15, %rdi
	callq	_Unwind_Resume@PLT
.LBB16_17:
.Ltmp78:
	movq	%rax, 8(%rsp)
	movq	8(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB16_19
	movq	16(%r12), %rdx
	movq	%r15, %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB16_19:
	movq	$0, (%rbx)
.Ltmp79:
	movq	8(%rsp), %rdi
	callq	*_ZN3std9panicking3try7cleanup17hebe6bfeaaaafe238E@GOTPCREL(%rip)
	movq	%rdx, 8(%rsp)
.Ltmp80:
	movq	%rax, %r12
	testq	%rax, %rax
	je	.LBB16_7
	leaq	.L__unnamed_6(%rip), %rax
	movq	%rax, 24(%rsp)
	movq	$1, 32(%rsp)
	movq	%rsp, %rdi
	movq	%rdi, 40(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 48(%rsp)
.Ltmp82:
	leaq	24(%rsp), %rsi
	callq	_ZN3std2io5Write9write_fmt17h1d871c63a9cfdb6bE
.Ltmp83:
	movq	%rax, 16(%rsp)
	testq	%rax, %rax
	je	.LBB16_24
.Ltmp84:
	leaq	16(%rsp), %rdi
	callq	_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hb168b816ed3759c0E
.Ltmp85:
.LBB16_24:
.Ltmp86:
	callq	*_ZN3std3sys3pal4unix14abort_internal17hce7b55d5fd04c23cE@GOTPCREL(%rip)
.Ltmp87:
	ud2
.LBB16_29:
.Ltmp88:
	movq	%rax, %r15
.Ltmp89:
	movq	%r12, %rdi
	movq	8(%rsp), %rsi
	callq	_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17hed635f762f4ce1f0E
.Ltmp90:
	movq	(%r14), %r12
	testq	%r12, %r12
	jne	.LBB16_31
	jmp	.LBB16_33
.LBB16_27:
.Ltmp91:
	callq	*_ZN4core9panicking16panic_in_cleanup17haa899c5aa4e72605E@GOTPCREL(%rip)
.LBB16_26:
.Ltmp81:
	callq	*_ZN4core9panicking19panic_cannot_unwind17h03572840a184f027E@GOTPCREL(%rip)
.LBB16_34:
.Ltmp99:
	movq	%rax, %r15
	jmp	.LBB16_33
.LBB16_28:
.Ltmp94:
	movq	%rax, %r15
.LBB16_31:
	lock		decq	(%r12)
	jne	.LBB16_33
	#MEMBARRIER
.Ltmp95:
	movq	%r14, %rdi
	callq	_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h670b3c68b50ab6bbE
.Ltmp96:
.LBB16_33:
.Ltmp100:
	movq	%rbx, %rdi
	callq	_ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17h3c753dd93410d474E
.Ltmp101:
.LBB16_37:
	movq	%r15, %rdi
	callq	_Unwind_Resume@PLT
.LBB16_39:
.Ltmp102:
	callq	*_ZN4core9panicking16panic_in_cleanup17haa899c5aa4e72605E@GOTPCREL(%rip)
.Lfunc_end16:
	.size	_ZN4core3ptr56drop_in_place$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$17hccf41b2e1b78ec34E, .Lfunc_end16-_ZN4core3ptr56drop_in_place$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$17hccf41b2e1b78ec34E
	.cfi_endproc
	.section	".gcc_except_table._ZN4core3ptr56drop_in_place$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$17hccf41b2e1b78ec34E","a",@progbits
	.p2align	2, 0x0
GCC_except_table16:
.Lexception8:
	.byte	255
	.byte	155
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp76-.Lfunc_begin8
	.uleb128 .Ltmp77-.Ltmp76
	.uleb128 .Ltmp78-.Lfunc_begin8
	.byte	5
	.uleb128 .Ltmp92-.Lfunc_begin8
	.uleb128 .Ltmp93-.Ltmp92
	.uleb128 .Ltmp94-.Lfunc_begin8
	.byte	0
	.uleb128 .Ltmp97-.Lfunc_begin8
	.uleb128 .Ltmp98-.Ltmp97
	.uleb128 .Ltmp99-.Lfunc_begin8
	.byte	0
	.uleb128 .Ltmp103-.Lfunc_begin8
	.uleb128 .Ltmp104-.Ltmp103
	.uleb128 .Ltmp105-.Lfunc_begin8
	.byte	0
	.uleb128 .Ltmp104-.Lfunc_begin8
	.uleb128 .Ltmp79-.Ltmp104
	.byte	0
	.byte	0
	.uleb128 .Ltmp79-.Lfunc_begin8
	.uleb128 .Ltmp80-.Ltmp79
	.uleb128 .Ltmp81-.Lfunc_begin8
	.byte	1
	.uleb128 .Ltmp82-.Lfunc_begin8
	.uleb128 .Ltmp87-.Ltmp82
	.uleb128 .Ltmp88-.Lfunc_begin8
	.byte	0
	.uleb128 .Ltmp89-.Lfunc_begin8
	.uleb128 .Ltmp90-.Ltmp89
	.uleb128 .Ltmp91-.Lfunc_begin8
	.byte	1
	.uleb128 .Ltmp95-.Lfunc_begin8
	.uleb128 .Ltmp101-.Ltmp95
	.uleb128 .Ltmp102-.Lfunc_begin8
	.byte	1
	.uleb128 .Ltmp101-.Lfunc_begin8
	.uleb128 .Lfunc_end16-.Ltmp101
	.byte	0
	.byte	0
.Lcst_end8:
	.byte	127
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	125
	.p2align	2, 0x0
	.long	0
.Lttbase4:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h59e90fcefc3b96caE","ax",@progbits
	.p2align	4
	.type	_ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h59e90fcefc3b96caE,@function
_ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h59e90fcefc3b96caE:
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception9
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	leaq	24(%rdi), %r15
.Ltmp106:
	movq	%r15, %rdi
	callq	*_ZN76_$LT$std..thread..spawnhook..SpawnHooks$u20$as$u20$core..ops..drop..Drop$GT$4drop17hcb93171e34aaec80E@GOTPCREL(%rip)
.Ltmp107:
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.LBB17_4
	lock		decq	(%rax)
	jne	.LBB17_4
	#MEMBARRIER
.Ltmp112:
	movq	%r15, %rdi
	callq	*_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h05cea13e22daedc0E@GOTPCREL(%rip)
.Ltmp113:
.LBB17_4:
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	_ZN4core3ptr177drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h92d6f5134d5ae20bE
.LBB17_9:
	.cfi_def_cfa_offset 32
.Ltmp114:
	movq	%rax, %r14
	jmp	.LBB17_10
.LBB17_5:
.Ltmp108:
	movq	%rax, %r14
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.LBB17_10
	lock		decq	(%rax)
	jne	.LBB17_10
	#MEMBARRIER
.Ltmp109:
	movq	%r15, %rdi
	callq	*_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h05cea13e22daedc0E@GOTPCREL(%rip)
.Ltmp110:
.LBB17_10:
.Ltmp115:
	movq	%rbx, %rdi
	callq	_ZN4core3ptr177drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h92d6f5134d5ae20bE
.Ltmp116:
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.LBB17_8:
.Ltmp111:
	callq	*_ZN4core9panicking16panic_in_cleanup17haa899c5aa4e72605E@GOTPCREL(%rip)
.LBB17_12:
.Ltmp117:
	callq	*_ZN4core9panicking16panic_in_cleanup17haa899c5aa4e72605E@GOTPCREL(%rip)
.Lfunc_end17:
	.size	_ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h59e90fcefc3b96caE, .Lfunc_end17-_ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h59e90fcefc3b96caE
	.cfi_endproc
	.section	".gcc_except_table._ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h59e90fcefc3b96caE","a",@progbits
	.p2align	2, 0x0
GCC_except_table17:
.Lexception9:
	.byte	255
	.byte	155
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp106-.Lfunc_begin9
	.uleb128 .Ltmp107-.Ltmp106
	.uleb128 .Ltmp108-.Lfunc_begin9
	.byte	0
	.uleb128 .Ltmp112-.Lfunc_begin9
	.uleb128 .Ltmp113-.Ltmp112
	.uleb128 .Ltmp114-.Lfunc_begin9
	.byte	0
	.uleb128 .Ltmp113-.Lfunc_begin9
	.uleb128 .Ltmp109-.Ltmp113
	.byte	0
	.byte	0
	.uleb128 .Ltmp109-.Lfunc_begin9
	.uleb128 .Ltmp110-.Ltmp109
	.uleb128 .Ltmp111-.Lfunc_begin9
	.byte	1
	.uleb128 .Ltmp115-.Lfunc_begin9
	.uleb128 .Ltmp116-.Ltmp115
	.uleb128 .Ltmp117-.Lfunc_begin9
	.byte	1
	.uleb128 .Ltmp116-.Lfunc_begin9
	.uleb128 .Lfunc_end17-.Ltmp116
	.byte	0
	.byte	0
.Lcst_end9:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase5:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17habfe552e4be8a751E","ax",@progbits
	.p2align	4
	.type	_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17habfe552e4be8a751E,@function
_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17habfe552e4be8a751E:
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception10
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	(%rdi), %rbx
	movq	8(%rdi), %r15
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.LBB18_2
.Ltmp118:
	movq	%rbx, %rdi
	callq	*%rax
.Ltmp119:
.LBB18_2:
	movq	8(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB18_3
	movq	16(%r15), %rdx
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB18_3:
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB18_4:
	.cfi_def_cfa_offset 32
.Ltmp120:
	movq	%rax, %r14
	movq	8(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB18_6
	movq	16(%r15), %rdx
	movq	%rbx, %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB18_6:
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end18:
	.size	_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17habfe552e4be8a751E, .Lfunc_end18-_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17habfe552e4be8a751E
	.cfi_endproc
	.section	".gcc_except_table._ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17habfe552e4be8a751E","a",@progbits
	.p2align	2, 0x0
GCC_except_table18:
.Lexception10:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Ltmp118-.Lfunc_begin10
	.uleb128 .Ltmp119-.Ltmp118
	.uleb128 .Ltmp120-.Lfunc_begin10
	.byte	0
	.uleb128 .Ltmp119-.Lfunc_begin10
	.uleb128 .Lfunc_end18-.Ltmp119
	.byte	0
	.byte	0
.Lcst_end10:
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr97drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..sys..pal..unix..stdio..Stderr$GT$$GT$17h7564f59c2cc5c5abE","ax",@progbits
	.p2align	4
	.type	_ZN4core3ptr97drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..sys..pal..unix..stdio..Stderr$GT$$GT$17h7564f59c2cc5c5abE,@function
_ZN4core3ptr97drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..sys..pal..unix..stdio..Stderr$GT$$GT$17h7564f59c2cc5c5abE:
	.cfi_startproc
	cmpq	$0, 8(%rdi)
	je	.LBB19_1
	addq	$8, %rdi
	jmp	_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hb168b816ed3759c0E
.LBB19_1:
	retq
.Lfunc_end19:
	.size	_ZN4core3ptr97drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..sys..pal..unix..stdio..Stderr$GT$$GT$17h7564f59c2cc5c5abE, .Lfunc_end19-_ZN4core3ptr97drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..sys..pal..unix..stdio..Stderr$GT$$GT$17h7564f59c2cc5c5abE
	.cfi_endproc

	.section	".text._ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h4fff0ec825e551a8E","ax",@progbits
	.p2align	4
	.type	_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h4fff0ec825e551a8E,@function
_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h4fff0ec825e551a8E:
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception11
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	(%rdi), %rbx
	leaq	16(%rbx), %rdi
.Ltmp121:
	callq	_ZN4core3ptr56drop_in_place$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$17hccf41b2e1b78ec34E
.Ltmp122:
	cmpq	$-1, %rbx
	je	.LBB20_8
	lock		decq	8(%rbx)
	jne	.LBB20_8
	#MEMBARRIER
	movl	$48, %esi
	movl	$8, %edx
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB20_8:
	.cfi_def_cfa_offset 32
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB20_4:
	.cfi_def_cfa_offset 32
.Ltmp123:
	movq	%rax, %r14
	cmpq	$-1, %rbx
	je	.LBB20_7
	lock		decq	8(%rbx)
	jne	.LBB20_7
	#MEMBARRIER
	movl	$48, %esi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB20_7:
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end20:
	.size	_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h4fff0ec825e551a8E, .Lfunc_end20-_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h4fff0ec825e551a8E
	.cfi_endproc
	.section	".gcc_except_table._ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h4fff0ec825e551a8E","a",@progbits
	.p2align	2, 0x0
GCC_except_table20:
.Lexception11:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Ltmp121-.Lfunc_begin11
	.uleb128 .Ltmp122-.Ltmp121
	.uleb128 .Ltmp123-.Lfunc_begin11
	.byte	0
	.uleb128 .Ltmp122-.Lfunc_begin11
	.uleb128 .Lfunc_end20-.Ltmp122
	.byte	0
	.byte	0
.Lcst_end11:
	.p2align	2, 0x0

	.section	".text._ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h670b3c68b50ab6bbE","ax",@progbits
	.p2align	4
	.type	_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h670b3c68b50ab6bbE,@function
_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h670b3c68b50ab6bbE:
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception12
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	(%rdi), %rbx
	movq	16(%rbx), %rax
	lock		decq	(%rax)
	jne	.LBB21_2
	leaq	16(%rbx), %rdi
	#MEMBARRIER
.Ltmp124:
	callq	*_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcce71d5f8194b7c3E@GOTPCREL(%rip)
.Ltmp125:
.LBB21_2:
	cmpq	$-1, %rbx
	je	.LBB21_9
	lock		decq	8(%rbx)
	jne	.LBB21_9
	#MEMBARRIER
	movl	$40, %esi
	movl	$8, %edx
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB21_9:
	.cfi_def_cfa_offset 32
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB21_5:
	.cfi_def_cfa_offset 32
.Ltmp126:
	movq	%rax, %r14
	cmpq	$-1, %rbx
	je	.LBB21_8
	lock		decq	8(%rbx)
	jne	.LBB21_8
	#MEMBARRIER
	movl	$40, %esi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB21_8:
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end21:
	.size	_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h670b3c68b50ab6bbE, .Lfunc_end21-_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h670b3c68b50ab6bbE
	.cfi_endproc
	.section	".gcc_except_table._ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h670b3c68b50ab6bbE","a",@progbits
	.p2align	2, 0x0
GCC_except_table21:
.Lexception12:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Ltmp124-.Lfunc_begin12
	.uleb128 .Ltmp125-.Ltmp124
	.uleb128 .Ltmp126-.Lfunc_begin12
	.byte	0
	.uleb128 .Ltmp125-.Lfunc_begin12
	.uleb128 .Lfunc_end21-.Ltmp125
	.byte	0
	.byte	0
.Lcst_end12:
	.p2align	2, 0x0

	.section	".text._ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hfa89ce32de4f2112E","ax",@progbits
	.p2align	4
	.type	_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hfa89ce32de4f2112E,@function
_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hfa89ce32de4f2112E:
	.cfi_startproc
	movq	%rsi, %rdx
	movq	(%rdi), %rax
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	jmpq	*_ZN82_$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$u20$as$u20$core..fmt..Debug$GT$3fmt17h8a9eb508b40ec3d8E@GOTPCREL(%rip)
.Lfunc_end22:
	.size	_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hfa89ce32de4f2112E, .Lfunc_end22-_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hfa89ce32de4f2112E
	.cfi_endproc

	.section	".text._ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h0e93c6bb46ec0626E","ax",@progbits
	.p2align	4
	.type	_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h0e93c6bb46ec0626E,@function
_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h0e93c6bb46ec0626E:
.Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception13
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	testq	%rdx, %rdx
	je	.LBB23_19
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, 8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)
	movabsq	$-4294967296, %rbx
	movq	_ZN69_$LT$std..sys..pal..unix..stdio..Stderr$u20$as$u20$std..io..Write$GT$5write17h5d18b6a0792ed62eE@GOTPCREL(%rip), %r13
	leaq	.LJTI23_0(%rip), %rbp
	movq	__rust_dealloc@GOTPCREL(%rip), %r12
	jmp	.LBB23_4
.LBB23_15:
	movq	%rdx, %rax
	andq	%rbx, %rax
	movabsq	$17179869184, %rcx
	cmpq	%rcx, %rax
	jne	.LBB23_17
	.p2align	4
.LBB23_3:
	testq	%r14, %r14
	je	.LBB23_19
.LBB23_4:
	movq	16(%rsp), %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	*%r13
	testq	%rax, %rax
	je	.LBB23_12
	movl	%edx, %eax
	andl	$3, %eax
	movslq	(%rbp,%rax,4), %rax
	addq	%rbp, %rax
	jmpq	*%rax
.LBB23_2:
	cmpb	$35, 16(%rdx)
	je	.LBB23_3
	jmp	.LBB23_22
	.p2align	4
.LBB23_12:
	testq	%rdx, %rdx
	je	.LBB23_21
	movq	%r14, %rax
	subq	%rdx, %rax
	jb	.LBB23_26
	addq	%rdx, %r15
	movq	%rax, %r14
	jmp	.LBB23_3
.LBB23_16:
	movq	%rdx, %rax
	andq	%rbx, %rax
	movabsq	$150323855360, %rcx
	cmpq	%rcx, %rax
	je	.LBB23_3
	jmp	.LBB23_17
.LBB23_6:
	cmpb	$35, 15(%rdx)
	jne	.LBB23_22
	movq	%rdx, %r13
	decq	%r13
	movq	-1(%rdx), %rbp
	movq	7(%rdx), %rbx
	movq	(%rbx), %rax
	testq	%rax, %rax
	je	.LBB23_9
.Ltmp127:
	movq	%rbp, %rdi
	callq	*%rax
.Ltmp128:
.LBB23_9:
	movq	8(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB23_11
	movq	16(%rbx), %rdx
	movq	%rbp, %rdi
	callq	*%r12
.LBB23_11:
	movl	$24, %esi
	movl	$8, %edx
	movq	%r13, %rdi
	callq	*%r12
	movabsq	$-4294967296, %rbx
	movq	_ZN69_$LT$std..sys..pal..unix..stdio..Stderr$u20$as$u20$std..io..Write$GT$5write17h5d18b6a0792ed62eE@GOTPCREL(%rip), %r13
	leaq	.LJTI23_0(%rip), %rbp
	jmp	.LBB23_3
.LBB23_21:
	leaq	.L__unnamed_7(%rip), %rdx
	jmp	.LBB23_22
.LBB23_17:
	testq	%rdx, %rdx
	je	.LBB23_19
.LBB23_22:
	movq	%rdx, %rbx
	movq	8(%rsp), %rax
	leaq	8(%rax), %r14
	cmpq	$0, 8(%rax)
	je	.LBB23_24
.Ltmp130:
	movq	%r14, %rdi
	callq	_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hb168b816ed3759c0E
.Ltmp131:
.LBB23_24:
	movq	%rbx, (%r14)
	movb	$1, %al
	jmp	.LBB23_25
.LBB23_19:
	xorl	%eax, %eax
.LBB23_25:
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB23_26:
	.cfi_def_cfa_offset 80
	leaq	.L__unnamed_8(%rip), %rax
	movq	%rdx, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	*_ZN4core5slice5index26slice_start_index_len_fail17h26b14f970b38f6fbE@GOTPCREL(%rip)
.LBB23_27:
.Ltmp132:
	movq	%rbx, (%r14)
	movq	%rax, %rdi
	callq	_Unwind_Resume@PLT
.LBB23_28:
.Ltmp129:
	movq	%rax, %r15
	movq	8(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB23_30
	movq	16(%rbx), %rdx
	movq	%rbp, %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB23_30:
	movl	$24, %esi
	movl	$8, %edx
	movq	%r13, %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	movq	%r15, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end23:
	.size	_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h0e93c6bb46ec0626E, .Lfunc_end23-_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h0e93c6bb46ec0626E
	.cfi_endproc
	.section	".rodata._ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h0e93c6bb46ec0626E","a",@progbits
	.p2align	2, 0x0
.LJTI23_0:
	.long	.LBB23_2-.LJTI23_0
	.long	.LBB23_6-.LJTI23_0
	.long	.LBB23_15-.LJTI23_0
	.long	.LBB23_16-.LJTI23_0
	.section	".gcc_except_table._ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h0e93c6bb46ec0626E","a",@progbits
	.p2align	2, 0x0
GCC_except_table23:
.Lexception13:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Lfunc_begin13-.Lfunc_begin13
	.uleb128 .Ltmp127-.Lfunc_begin13
	.byte	0
	.byte	0
	.uleb128 .Ltmp127-.Lfunc_begin13
	.uleb128 .Ltmp128-.Ltmp127
	.uleb128 .Ltmp129-.Lfunc_begin13
	.byte	0
	.uleb128 .Ltmp128-.Lfunc_begin13
	.uleb128 .Ltmp130-.Ltmp128
	.byte	0
	.byte	0
	.uleb128 .Ltmp130-.Lfunc_begin13
	.uleb128 .Ltmp131-.Ltmp130
	.uleb128 .Ltmp132-.Lfunc_begin13
	.byte	0
	.uleb128 .Ltmp131-.Lfunc_begin13
	.uleb128 .Lfunc_end23-.Ltmp131
	.byte	0
	.byte	0
.Lcst_end13:
	.p2align	2, 0x0

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI24_0:
	.zero	16
	.section	.text._ZN4main4main17h7d23e9d5bee2289bE,"ax",@progbits
	.p2align	4
	.type	_ZN4main4main17h7d23e9d5bee2289bE,@function
_ZN4main4main17h7d23e9d5bee2289bE:
.Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception14
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	xorl	%r12d, %r12d
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %r15
	movq	__rust_alloc@GOTPCREL(%rip), %r13
	jmp	.LBB24_2
	.p2align	4
.LBB24_1:
	incl	%r12d
	testq	%rbx, %rbx
	jne	.LBB24_50
.LBB24_2:
	cmpl	$2, %r12d
	je	.LBB24_44
	movq	_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$3MIN17h87671ba9ab07e93cE@GOTPCREL(%rip), %rax
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB24_5
	decq	%rbx
	jmp	.LBB24_23
	.p2align	4
.LBB24_5:
	movl	$14, %edx
	leaq	80(%rsp), %rdi
	leaq	.L__unnamed_9(%rip), %rsi
	callq	*_ZN3std3env7_var_os17h2b7ddb60aa4c844aE@GOTPCREL(%rip)
	movq	80(%rsp), %r14
	movl	$2097152, %ebx
	movabsq	$-9223372036854775808, %rax
	cmpq	%rax, %r14
	je	.LBB24_22
	movq	88(%rsp), %rbp
	movq	96(%rsp), %rdx
.Ltmp133:
	leaq	16(%rsp), %rdi
	movq	%rbp, %rsi
	callq	*_ZN4core3str8converts9from_utf817h7432bde2104baaa2E@GOTPCREL(%rip)
.Ltmp134:
	testb	$1, 16(%rsp)
	jne	.LBB24_19
	movq	32(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB24_19
	movq	24(%rsp), %rcx
	cmpq	$1, %rsi
	jne	.LBB24_12
	movzbl	(%rcx), %eax
	cmpl	$43, %eax
	je	.LBB24_19
	movl	$1, %esi
	cmpl	$45, %eax
	je	.LBB24_19
	jmp	.LBB24_41
.LBB24_12:
	cmpb	$43, (%rcx)
	jne	.LBB24_40
	incq	%rcx
	leaq	-1(%rsi), %rax
	cmpq	$18, %rsi
	movq	%rax, %rsi
	jb	.LBB24_41
.LBB24_14:
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	.p2align	4
.LBB24_15:
	cmpq	%rdi, %rsi
	je	.LBB24_20
	movq	%rbx, %rax
	movl	$10, %edx
	mulq	%rdx
	seto	%r8b
	movzbl	(%rcx,%rdi), %edx
	addl	$-48, %edx
	cmpl	$9, %edx
	ja	.LBB24_19
	testb	%r8b, %r8b
	jne	.LBB24_19
	movq	%rax, %rbx
	movl	%edx, %eax
	incq	%rdi
	addq	%rax, %rbx
	jae	.LBB24_15
.LBB24_19:
	movl	$2097152, %ebx
.LBB24_20:
	testq	%r14, %r14
	je	.LBB24_22
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
.LBB24_22:
	leaq	1(%rbx), %rax
	movq	_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$3MIN17h87671ba9ab07e93cE@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
.LBB24_23:
	callq	*_ZN3std6thread8ThreadId3new17h93158783f3601abeE@GOTPCREL(%rip)
	movabsq	$-9223372036854775808, %rcx
	movq	%rcx, 16(%rsp)
	movq	%rax, %rdi
	leaq	16(%rsp), %rsi
	callq	*_ZN3std6thread6Thread3new17ha6b9a6388487ffbbE@GOTPCREL(%rip)
	movq	%rax, 8(%rsp)
.Ltmp136:
	leaq	136(%rsp), %rdi
	leaq	8(%rsp), %rsi
	callq	*_ZN3std6thread9spawnhook15run_spawn_hooks17h39c348d16d354d59E@GOTPCREL(%rip)
.Ltmp137:
	movq	8(%rsp), %rax
	lock		incq	(%rax)
	jle	.LBB24_56
	movq	8(%rsp), %rbp
	movq	%rbp, 128(%rsp)
	movq	$1, 16(%rsp)
	movq	$1, 24(%rsp)
	leaq	32(%rsp), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movzbl	(%r15), %eax
	movl	$48, %edi
	movl	$8, %esi
	callq	*%r13
	testq	%rax, %rax
	je	.LBB24_45
	movq	%rax, %r14
	movups	16(%rsp), %xmm0
	movups	32(%rsp), %xmm1
	movups	48(%rsp), %xmm2
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	movq	%rax, 72(%rsp)
	lock		incq	(%rax)
	jle	.LBB24_56
	movq	%rbp, 112(%rsp)
	movups	136(%rsp), %xmm0
	movups	152(%rsp), %xmm1
	movaps	%xmm1, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	movq	%r14, 120(%rsp)
	movq	16(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB24_29
	addq	$16, %rdi
.Ltmp139:
	callq	*_ZN3std6thread6scoped9ScopeData29increment_num_running_threads17hea00d58f73655b64E@GOTPCREL(%rip)
.Ltmp140:
.LBB24_29:
	movaps	80(%rsp), %xmm0
	movaps	96(%rsp), %xmm1
	movq	112(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 56(%rsp)
	movaps	%xmm1, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	movzbl	(%r15), %eax
	movl	$48, %edi
	movl	$8, %esi
	callq	*%r13
	testq	%rax, %rax
	je	.LBB24_46
	movaps	80(%rsp), %xmm0
	movaps	96(%rsp), %xmm1
	movaps	112(%rsp), %xmm2
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
.Ltmp144:
	movq	%rbx, %rdi
	movq	%rax, %rsi
	leaq	.L__unnamed_10(%rip), %rdx
	callq	*_ZN3std3sys3pal4unix6thread6Thread3new17h3d8d381651b99189E@GOTPCREL(%rip)
.Ltmp145:
	testq	%rax, %rax
	jne	.LBB24_51
	movq	8(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	%r14, 24(%rsp)
	movq	%rdx, 32(%rsp)
.Ltmp158:
	movq	%rdx, %rdi
	callq	*_ZN3std3sys3pal4unix6thread6Thread4join17h955a9148f1b1b310E@GOTPCREL(%rip)
.Ltmp159:
	movl	$1, %eax
	movq	$-1, %rcx
	lock		cmpxchgq	%rcx, 8(%r14)
	jne	.LBB24_47
	movq	(%r14), %rax
	movq	$1, 8(%r14)
	cmpq	$1, %rax
	jne	.LBB24_47
	movq	24(%rsp), %rax
	movq	32(%rax), %rbx
	movq	40(%rax), %r14
	cmpq	$0, 24(%rax)
	movq	$0, 24(%rax)
	je	.LBB24_48
	movq	16(%rsp), %rax
	lock		decq	(%rax)
	jne	.LBB24_38
	#MEMBARRIER
.Ltmp161:
	leaq	16(%rsp), %rdi
	callq	*_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcce71d5f8194b7c3E@GOTPCREL(%rip)
.Ltmp162:
.LBB24_38:
	movq	24(%rsp), %rax
	lock		decq	(%rax)
	jne	.LBB24_1
	#MEMBARRIER
	leaq	24(%rsp), %rdi
	callq	_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h4fff0ec825e551a8E
	jmp	.LBB24_1
.LBB24_40:
	cmpq	$17, %rsi
	jae	.LBB24_14
.LBB24_41:
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	.p2align	4
.LBB24_42:
	movzbl	(%rcx,%rax), %edx
	addl	$-48, %edx
	cmpl	$9, %edx
	ja	.LBB24_19
	leaq	(%rbx,%rbx,4), %rdi
	movl	%edx, %edx
	leaq	(%rdx,%rdi,2), %rbx
	incq	%rax
	cmpq	%rax, %rsi
	jne	.LBB24_42
	jmp	.LBB24_20
.LBB24_44:
	addq	$168, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB24_45:
	.cfi_def_cfa_offset 224
.Ltmp188:
	movl	$8, %edi
	movl	$48, %esi
	callq	*_ZN5alloc5alloc18handle_alloc_error17h547c37c23294a2cbE@GOTPCREL(%rip)
.Ltmp189:
	jmp	.LBB24_56
.LBB24_46:
.Ltmp180:
	movl	$8, %edi
	movl	$48, %esi
	callq	*_ZN5alloc5alloc18handle_alloc_error17h547c37c23294a2cbE@GOTPCREL(%rip)
.Ltmp181:
	jmp	.LBB24_56
.LBB24_47:
	leaq	.L__unnamed_11(%rip), %rdi
	jmp	.LBB24_49
.LBB24_48:
	leaq	.L__unnamed_12(%rip), %rdi
.LBB24_49:
.Ltmp172:
	callq	*_ZN4core6option13unwrap_failed17ha8f492bd26bfc9f0E@GOTPCREL(%rip)
.Ltmp173:
	jmp	.LBB24_56
.LBB24_50:
	movq	%rbx, 16(%rsp)
	movq	%r14, 24(%rsp)
.Ltmp166:
	leaq	.L__unnamed_13(%rip), %rdi
	leaq	.L__unnamed_14(%rip), %rcx
	leaq	.L__unnamed_15(%rip), %r8
	leaq	16(%rsp), %rdx
	movl	$43, %esi
	callq	*_ZN4core6result13unwrap_failed17h21106a531f64db07E@GOTPCREL(%rip)
.Ltmp167:
	jmp	.LBB24_56
.LBB24_51:
	movq	%rdx, %rbx
	lock		decq	(%r14)
	jne	.LBB24_53
	#MEMBARRIER
.Ltmp147:
	leaq	72(%rsp), %rdi
	callq	_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h4fff0ec825e551a8E
.Ltmp148:
.LBB24_53:
	movq	8(%rsp), %rax
	lock		decq	(%rax)
	jne	.LBB24_55
	#MEMBARRIER
	leaq	8(%rsp), %rdi
	callq	*_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcce71d5f8194b7c3E@GOTPCREL(%rip)
.LBB24_55:
	movq	%rbx, 16(%rsp)
.Ltmp152:
	leaq	.L__unnamed_16(%rip), %rdi
	leaq	.L__unnamed_17(%rip), %rcx
	leaq	.L__unnamed_18(%rip), %r8
	leaq	16(%rsp), %rdx
	movl	$22, %esi
	callq	*_ZN4core6result13unwrap_failed17h21106a531f64db07E@GOTPCREL(%rip)
.Ltmp153:
.LBB24_56:
	ud2
.LBB24_58:
.Ltmp135:
	movq	%rax, %r15
	testq	%r14, %r14
	je	.LBB24_89
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	movq	%r15, %rdi
	callq	_Unwind_Resume@PLT
.LBB24_60:
.Ltmp149:
	movq	%rax, %r15
	movq	8(%rsp), %rax
	lock		decq	(%rax)
	jne	.LBB24_89
	#MEMBARRIER
.Ltmp150:
	leaq	8(%rsp), %rdi
	callq	*_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcce71d5f8194b7c3E@GOTPCREL(%rip)
.Ltmp151:
	jmp	.LBB24_89
.LBB24_62:
.Ltmp163:
	movq	%rax, %r15
	movq	24(%rsp), %rax
	lock		decq	(%rax)
	jne	.LBB24_89
	#MEMBARRIER
.Ltmp164:
	leaq	24(%rsp), %rdi
	callq	_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h4fff0ec825e551a8E
.Ltmp165:
	jmp	.LBB24_89
.LBB24_64:
.Ltmp141:
	movq	%rax, %r15
.Ltmp142:
	leaq	80(%rsp), %rdi
	callq	_ZN4core3ptr175drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$main..main..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h5069f78580a04768E
.Ltmp143:
	jmp	.LBB24_73
.LBB24_65:
.Ltmp154:
	movq	%rax, %r15
.Ltmp155:
	leaq	16(%rsp), %rdi
	callq	_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hb168b816ed3759c0E
.Ltmp156:
	jmp	.LBB24_89
.LBB24_66:
.Ltmp157:
	callq	*_ZN4core9panicking16panic_in_cleanup17haa899c5aa4e72605E@GOTPCREL(%rip)
.LBB24_67:
.Ltmp160:
	jmp	.LBB24_85
.LBB24_68:
.Ltmp146:
	movq	%rax, %r15
	jmp	.LBB24_73
.LBB24_69:
.Ltmp138:
	movq	%rax, %r15
	jmp	.LBB24_80
.LBB24_70:
.Ltmp168:
	movq	%rax, %r15
.Ltmp169:
	leaq	16(%rsp), %rdi
	callq	_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17habfe552e4be8a751E
.Ltmp170:
	jmp	.LBB24_89
.LBB24_71:
.Ltmp171:
	callq	*_ZN4core9panicking16panic_in_cleanup17haa899c5aa4e72605E@GOTPCREL(%rip)
.LBB24_72:
.Ltmp182:
	movq	%rax, %r15
.Ltmp183:
	leaq	16(%rsp), %rdi
	callq	_ZN4core3ptr175drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$main..main..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h5069f78580a04768E
.Ltmp184:
.LBB24_73:
	lock		decq	(%r14)
	jne	.LBB24_80
	#MEMBARRIER
.Ltmp186:
	leaq	72(%rsp), %rdi
	callq	_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h4fff0ec825e551a8E
.Ltmp187:
	jmp	.LBB24_80
.LBB24_75:
.Ltmp185:
	callq	*_ZN4core9panicking16panic_in_cleanup17haa899c5aa4e72605E@GOTPCREL(%rip)
.LBB24_76:
.Ltmp190:
	movq	%rax, %r15
.Ltmp191:
	leaq	32(%rsp), %rdi
	callq	_ZN4core3ptr56drop_in_place$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$17hccf41b2e1b78ec34E
.Ltmp192:
	lock		decq	(%rbp)
	jne	.LBB24_79
	#MEMBARRIER
.Ltmp194:
	leaq	128(%rsp), %rdi
	callq	*_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcce71d5f8194b7c3E@GOTPCREL(%rip)
.Ltmp195:
.LBB24_79:
.Ltmp196:
	leaq	136(%rsp), %rdi
	callq	_ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h59e90fcefc3b96caE
.Ltmp197:
.LBB24_80:
	movq	8(%rsp), %rax
	lock		decq	(%rax)
	jne	.LBB24_89
	#MEMBARRIER
.Ltmp198:
	leaq	8(%rsp), %rdi
	callq	*_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcce71d5f8194b7c3E@GOTPCREL(%rip)
.Ltmp199:
	jmp	.LBB24_89
.LBB24_82:
.Ltmp193:
	callq	*_ZN4core9panicking16panic_in_cleanup17haa899c5aa4e72605E@GOTPCREL(%rip)
.LBB24_83:
.Ltmp200:
	callq	*_ZN4core9panicking16panic_in_cleanup17haa899c5aa4e72605E@GOTPCREL(%rip)
.LBB24_84:
.Ltmp174:
.LBB24_85:
	movq	%rax, %r15
	movq	16(%rsp), %rax
	lock		decq	(%rax)
	jne	.LBB24_87
	#MEMBARRIER
.Ltmp175:
	leaq	16(%rsp), %rdi
	callq	*_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hcce71d5f8194b7c3E@GOTPCREL(%rip)
.Ltmp176:
.LBB24_87:
	movq	24(%rsp), %rax
	lock		decq	(%rax)
	jne	.LBB24_89
	#MEMBARRIER
.Ltmp177:
	leaq	24(%rsp), %rdi
	callq	_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h4fff0ec825e551a8E
.Ltmp178:
.LBB24_89:
	movq	%r15, %rdi
	callq	_Unwind_Resume@PLT
.LBB24_90:
.Ltmp179:
	callq	*_ZN4core9panicking16panic_in_cleanup17haa899c5aa4e72605E@GOTPCREL(%rip)
.Lfunc_end24:
	.size	_ZN4main4main17h7d23e9d5bee2289bE, .Lfunc_end24-_ZN4main4main17h7d23e9d5bee2289bE
	.cfi_endproc
	.section	.gcc_except_table._ZN4main4main17h7d23e9d5bee2289bE,"a",@progbits
	.p2align	2, 0x0
GCC_except_table24:
.Lexception14:
	.byte	255
	.byte	155
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Lfunc_begin14-.Lfunc_begin14
	.uleb128 .Ltmp133-.Lfunc_begin14
	.byte	0
	.byte	0
	.uleb128 .Ltmp133-.Lfunc_begin14
	.uleb128 .Ltmp134-.Ltmp133
	.uleb128 .Ltmp135-.Lfunc_begin14
	.byte	0
	.uleb128 .Ltmp134-.Lfunc_begin14
	.uleb128 .Ltmp136-.Ltmp134
	.byte	0
	.byte	0
	.uleb128 .Ltmp136-.Lfunc_begin14
	.uleb128 .Ltmp137-.Ltmp136
	.uleb128 .Ltmp138-.Lfunc_begin14
	.byte	0
	.uleb128 .Ltmp137-.Lfunc_begin14
	.uleb128 .Ltmp139-.Ltmp137
	.byte	0
	.byte	0
	.uleb128 .Ltmp139-.Lfunc_begin14
	.uleb128 .Ltmp140-.Ltmp139
	.uleb128 .Ltmp141-.Lfunc_begin14
	.byte	0
	.uleb128 .Ltmp140-.Lfunc_begin14
	.uleb128 .Ltmp144-.Ltmp140
	.byte	0
	.byte	0
	.uleb128 .Ltmp144-.Lfunc_begin14
	.uleb128 .Ltmp145-.Ltmp144
	.uleb128 .Ltmp146-.Lfunc_begin14
	.byte	0
	.uleb128 .Ltmp158-.Lfunc_begin14
	.uleb128 .Ltmp159-.Ltmp158
	.uleb128 .Ltmp160-.Lfunc_begin14
	.byte	0
	.uleb128 .Ltmp161-.Lfunc_begin14
	.uleb128 .Ltmp162-.Ltmp161
	.uleb128 .Ltmp163-.Lfunc_begin14
	.byte	0
	.uleb128 .Ltmp162-.Lfunc_begin14
	.uleb128 .Ltmp188-.Ltmp162
	.byte	0
	.byte	0
	.uleb128 .Ltmp188-.Lfunc_begin14
	.uleb128 .Ltmp189-.Ltmp188
	.uleb128 .Ltmp190-.Lfunc_begin14
	.byte	0
	.uleb128 .Ltmp180-.Lfunc_begin14
	.uleb128 .Ltmp181-.Ltmp180
	.uleb128 .Ltmp182-.Lfunc_begin14
	.byte	0
	.uleb128 .Ltmp172-.Lfunc_begin14
	.uleb128 .Ltmp173-.Ltmp172
	.uleb128 .Ltmp174-.Lfunc_begin14
	.byte	0
	.uleb128 .Ltmp166-.Lfunc_begin14
	.uleb128 .Ltmp167-.Ltmp166
	.uleb128 .Ltmp168-.Lfunc_begin14
	.byte	0
	.uleb128 .Ltmp147-.Lfunc_begin14
	.uleb128 .Ltmp148-.Ltmp147
	.uleb128 .Ltmp149-.Lfunc_begin14
	.byte	0
	.uleb128 .Ltmp148-.Lfunc_begin14
	.uleb128 .Ltmp152-.Ltmp148
	.byte	0
	.byte	0
	.uleb128 .Ltmp152-.Lfunc_begin14
	.uleb128 .Ltmp153-.Ltmp152
	.uleb128 .Ltmp154-.Lfunc_begin14
	.byte	0
	.uleb128 .Ltmp153-.Lfunc_begin14
	.uleb128 .Ltmp150-.Ltmp153
	.byte	0
	.byte	0
	.uleb128 .Ltmp150-.Lfunc_begin14
	.uleb128 .Ltmp151-.Ltmp150
	.uleb128 .Ltmp200-.Lfunc_begin14
	.byte	1
	.uleb128 .Ltmp164-.Lfunc_begin14
	.uleb128 .Ltmp165-.Ltmp164
	.uleb128 .Ltmp179-.Lfunc_begin14
	.byte	1
	.uleb128 .Ltmp142-.Lfunc_begin14
	.uleb128 .Ltmp143-.Ltmp142
	.uleb128 .Ltmp200-.Lfunc_begin14
	.byte	1
	.uleb128 .Ltmp155-.Lfunc_begin14
	.uleb128 .Ltmp156-.Ltmp155
	.uleb128 .Ltmp157-.Lfunc_begin14
	.byte	1
	.uleb128 .Ltmp169-.Lfunc_begin14
	.uleb128 .Ltmp170-.Ltmp169
	.uleb128 .Ltmp171-.Lfunc_begin14
	.byte	1
	.uleb128 .Ltmp183-.Lfunc_begin14
	.uleb128 .Ltmp184-.Ltmp183
	.uleb128 .Ltmp185-.Lfunc_begin14
	.byte	1
	.uleb128 .Ltmp186-.Lfunc_begin14
	.uleb128 .Ltmp187-.Ltmp186
	.uleb128 .Ltmp200-.Lfunc_begin14
	.byte	1
	.uleb128 .Ltmp191-.Lfunc_begin14
	.uleb128 .Ltmp192-.Ltmp191
	.uleb128 .Ltmp193-.Lfunc_begin14
	.byte	1
	.uleb128 .Ltmp194-.Lfunc_begin14
	.uleb128 .Ltmp199-.Ltmp194
	.uleb128 .Ltmp200-.Lfunc_begin14
	.byte	1
	.uleb128 .Ltmp175-.Lfunc_begin14
	.uleb128 .Ltmp178-.Ltmp175
	.uleb128 .Ltmp179-.Lfunc_begin14
	.byte	1
	.uleb128 .Ltmp178-.Lfunc_begin14
	.uleb128 .Lfunc_end24-.Ltmp178
	.byte	0
	.byte	0
.Lcst_end14:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase6:
	.byte	0
	.p2align	2, 0x0

	.section	.text.main,"ax",@progbits
	.globl	main
	.p2align	4
	.type	main,@function
main:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rcx
	movslq	%edi, %rdx
	leaq	_ZN4main4main17h7d23e9d5bee2289bE(%rip), %rax
	movq	%rax, (%rsp)
	leaq	.L__unnamed_4(%rip), %rsi
	movq	%rsp, %rdi
	xorl	%r8d, %r8d
	callq	*_ZN3std2rt19lang_start_internal17h1735e522c691efcaE@GOTPCREL(%rip)
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end25:
	.size	main, .Lfunc_end25-main
	.cfi_endproc

	.type	.L__unnamed_19,@object
	.section	.rodata..L__unnamed_19,"a",@progbits
.L__unnamed_19:
	.ascii	"failed to write whole buffer"
	.size	.L__unnamed_19, 28

	.type	.L__unnamed_7,@object
	.section	.data.rel.ro..L__unnamed_7,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_7:
	.quad	.L__unnamed_19
	.ascii	"\034\000\000\000\000\000\000\000\027"
	.zero	7
	.size	.L__unnamed_7, 24

	.type	.L__unnamed_20,@object
	.section	.rodata..L__unnamed_20,"a",@progbits
.L__unnamed_20:
	.ascii	"/home/don/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/io/mod.rs"
	.size	.L__unnamed_20, 108

	.type	.L__unnamed_8,@object
	.section	.data.rel.ro..L__unnamed_8,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_8:
	.quad	.L__unnamed_20
	.asciz	"l\000\000\000\000\000\000\000\340\006\000\000$\000\000"
	.size	.L__unnamed_8, 24

	.type	.L__unnamed_1,@object
	.section	.data.rel.ro..L__unnamed_1,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_1:
	.quad	_ZN4core3ptr97drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..sys..pal..unix..stdio..Stderr$GT$$GT$17h7564f59c2cc5c5abE
	.asciz	"\020\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h0e93c6bb46ec0626E
	.quad	_ZN4core3fmt5Write10write_char17hd414f9171f56f7b3E
	.quad	_ZN4core3fmt5Write9write_fmt17h4c529b0590916d2aE
	.size	.L__unnamed_1, 48

	.type	.L__unnamed_21,@object
	.section	.rodata..L__unnamed_21,"a",@progbits
.L__unnamed_21:
	.ascii	"a formatting trait implementation returned an error when the underlying stream did not"
	.size	.L__unnamed_21, 86

	.type	.L__unnamed_2,@object
	.section	.data.rel.ro..L__unnamed_2,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_2:
	.quad	.L__unnamed_21
	.asciz	"V\000\000\000\000\000\000"
	.size	.L__unnamed_2, 16

	.type	.L__unnamed_3,@object
	.section	.data.rel.ro..L__unnamed_3,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_3:
	.quad	.L__unnamed_20
	.asciz	"l\000\000\000\000\000\000\000k\007\000\000\025\000\000"
	.size	.L__unnamed_3, 24

	.type	.L__unnamed_4,@object
	.section	.data.rel.ro..L__unnamed_4,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_4:
	.asciz	"\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hac78deeccc4c4b9aE
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h0a866ec27c98af52E
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h0a866ec27c98af52E
	.size	.L__unnamed_4, 48

	.type	.L__unnamed_22,@object
	.section	.rodata..L__unnamed_22,"a",@progbits
.L__unnamed_22:
	.ascii	"/home/don/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/thread/mod.rs"
	.size	.L__unnamed_22, 112

	.type	.L__unnamed_11,@object
	.section	.data.rel.ro..L__unnamed_11,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_11:
	.quad	.L__unnamed_22
	.asciz	"p\000\000\000\000\000\000\000\316\006\000\000(\000\000"
	.size	.L__unnamed_11, 24

	.type	.L__unnamed_12,@object
	.section	.data.rel.ro..L__unnamed_12,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_12:
	.quad	.L__unnamed_22
	.asciz	"p\000\000\000\000\000\000\000\316\006\000\000I\000\000"
	.size	.L__unnamed_12, 24

	.type	.L__unnamed_10,@object
	.section	.data.rel.ro..L__unnamed_10,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_10:
	.quad	_ZN4core3ptr175drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$main..main..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h5069f78580a04768E
	.asciz	"0\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hdc416b53aa387767E
	.size	.L__unnamed_10, 32

	.type	.L__unnamed_23,@object
	.section	.rodata..L__unnamed_23,"a",@progbits
.L__unnamed_23:
	.ascii	"fatal runtime error: something here is badly broken!\n"
	.size	.L__unnamed_23, 53

	.type	.L__unnamed_5,@object
	.section	.data.rel.ro..L__unnamed_5,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_5:
	.quad	.L__unnamed_23
	.asciz	"5\000\000\000\000\000\000"
	.size	.L__unnamed_5, 16

	.type	.L__unnamed_9,@object
	.section	.rodata..L__unnamed_9,"a",@progbits
.L__unnamed_9:
	.ascii	"RUST_MIN_STACK"
	.size	.L__unnamed_9, 14

	.type	.L__unnamed_17,@object
	.section	.data.rel.ro..L__unnamed_17,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_17:
	.quad	_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hb168b816ed3759c0E
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h37ad22e5b278451fE
	.size	.L__unnamed_17, 32

	.type	.L__unnamed_14,@object
	.section	.data.rel.ro..L__unnamed_14,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_14:
	.quad	_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17habfe552e4be8a751E
	.asciz	"\020\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hfa89ce32de4f2112E
	.size	.L__unnamed_14, 32

	.type	.L__unnamed_13,@object
	.section	.rodata..L__unnamed_13,"a",@progbits
.L__unnamed_13:
	.ascii	"called `Result::unwrap()` on an `Err` value"
	.size	.L__unnamed_13, 43

	.type	.L__unnamed_24,@object
	.section	.rodata..L__unnamed_24,"a",@progbits
.L__unnamed_24:
	.ascii	"fatal runtime error: thread result panicked on drop\n"
	.size	.L__unnamed_24, 52

	.type	.L__unnamed_6,@object
	.section	.data.rel.ro..L__unnamed_6,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_6:
	.quad	.L__unnamed_24
	.asciz	"4\000\000\000\000\000\000"
	.size	.L__unnamed_6, 16

	.type	.L__unnamed_25,@object
	.section	.rodata..L__unnamed_25,"a",@progbits
.L__unnamed_25:
	.ascii	"src/main.rs"
	.size	.L__unnamed_25, 11

	.type	.L__unnamed_15,@object
	.section	.data.rel.ro..L__unnamed_15,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_15:
	.quad	.L__unnamed_25
	.asciz	"\013\000\000\000\000\000\000\000\035\000\000\000\022\000\000"
	.size	.L__unnamed_15, 24

	.type	.L__unnamed_16,@object
	.section	.rodata..L__unnamed_16,"a",@progbits
.L__unnamed_16:
	.ascii	"failed to spawn thread"
	.size	.L__unnamed_16, 22

	.type	.L__unnamed_18,@object
	.section	.data.rel.ro..L__unnamed_18,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_18:
	.quad	.L__unnamed_22
	.asciz	"p\000\000\000\000\000\000\000\331\002\000\000\035\000\000"
	.size	.L__unnamed_18, 24

	.type	_ZN4main14THREAD_COUNTER29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17ha7b10ab2a89e13afE.0,@object
	.section	".tbss._ZN4main14THREAD_COUNTER29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17ha7b10ab2a89e13afE.0","awT",@nobits
	.p2align	2, 0x0
_ZN4main14THREAD_COUNTER29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17ha7b10ab2a89e13afE.0:
	.byte	0
	.size	_ZN4main14THREAD_COUNTER29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17ha7b10ab2a89e13afE.0, 1

	.type	_ZN4main14THREAD_COUNTER29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17ha7b10ab2a89e13afE.1,@object
	.section	".tbss._ZN4main14THREAD_COUNTER29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17ha7b10ab2a89e13afE.1","awT",@nobits
	.p2align	2, 0x0
_ZN4main14THREAD_COUNTER29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17ha7b10ab2a89e13afE.1:
	.zero	4
	.size	_ZN4main14THREAD_COUNTER29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17ha7b10ab2a89e13afE.1, 4

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"awG",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3, 0x0
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.ident	"rustc version 1.87.0-nightly (46420c960 2025-02-22)"
	.section	".note.GNU-stack","",@progbits
