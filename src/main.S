	.text
	.file	"main.faffb8145578e6cd-cgu.0"
	.section	".text._ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h84b11ae4936d437bE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h84b11ae4936d437bE,@function
_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h84b11ae4936d437bE:
	.cfi_startproc
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rsi, 24(%rsp)
	movq	%rdi, %rax
	movq	24(%rsp), %rdi
	movq	%rax, 8(%rsp)
	movq	%rax, 16(%rsp)
	callq	_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hbded82c09af2e0deE
	movq	24(%rsp), %rsi
	movl	%eax, 40(%rsp)
	movl	%edx, 44(%rsp)
	addq	$8, %rsi
	movq	%rsi, 32(%rsp)
	movl	40(%rsp), %eax
	cmpq	$0, %rax
	jne	.LBB0_2
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	jmp	.LBB0_3
.LBB0_2:
	movq	32(%rsp), %rsi
	movl	44(%rsp), %edx
	leaq	48(%rsp), %rdi
	callq	_ZN4core3ops8function5impls80_$LT$impl$u20$core..ops..function..FnOnce$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$9call_once17h4632697000fa6ca9E
	movq	8(%rsp), %rax
	movq	48(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	56(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	64(%rsp), %rcx
	movq	%rcx, 16(%rax)
.LBB0_3:
	movq	16(%rsp), %rax
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h84b11ae4936d437bE, .Lfunc_end0-_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h84b11ae4936d437bE
	.cfi_endproc

	.section	".text._ZN104_$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8b3417af603191d7E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN104_$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8b3417af603191d7E,@function
_ZN104_$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8b3417af603191d7E:
	.cfi_startproc
	retq
.Lfunc_end1:
	.size	_ZN104_$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8b3417af603191d7E, .Lfunc_end1-_ZN104_$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8b3417af603191d7E
	.cfi_endproc

	.section	".text._ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked18precondition_check17h8f373414a48e53e1E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked18precondition_check17h8f373414a48e53e1E,@function
_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked18precondition_check17h8f373414a48e53e1E:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rsi, 8(%rsp)
	movq	%rdx, 16(%rsp)
	cmpq	%rdi, %rsi
	jae	.LBB2_2
.LBB2_1:
	leaq	.L__unnamed_1(%rip), %rdi
	movq	_ZN4core9panicking14panic_nounwind17hbbbf5b15de703440E@GOTPCREL(%rip), %rax
	movl	$97, %esi
	callq	*%rax
.LBB2_2:
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	cmpq	%rcx, %rax
	ja	.LBB2_1
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked18precondition_check17h8f373414a48e53e1E, .Lfunc_end2-_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked18precondition_check17h8f373414a48e53e1E
	.cfi_endproc

	.section	".text._ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h69f16ab1b2fe5d02E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h69f16ab1b2fe5d02E,@function
_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h69f16ab1b2fe5d02E:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rcx, 32(%rsp)
	cmpq	%rdx, %rdi
	ja	.LBB3_2
	jmp	.LBB3_3
.LBB3_2:
	movq	32(%rsp), %rdx
	movq	24(%rsp), %rsi
	movq	8(%rsp), %rdi
	movq	_ZN4core5slice5index26slice_start_index_len_fail17hff7a9cb2afd02ea3E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB3_3:
	movq	24(%rsp), %rdx
	movq	8(%rsp), %rdi
	movq	%rdx, %rsi
	callq	_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked18precondition_check17h8f373414a48e53e1E
	movq	8(%rsp), %rcx
	movq	16(%rsp), %rax
	movq	24(%rsp), %rdx
	subq	%rcx, %rdx
	addq	%rcx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h69f16ab1b2fe5d02E, .Lfunc_end3-_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h69f16ab1b2fe5d02E
	.cfi_endproc

	.section	".text._ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h7ad0588e7cb4f6e9E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h7ad0588e7cb4f6e9E,@function
_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h7ad0588e7cb4f6e9E:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	8(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	16(%rdi), %rax
	movq	%rax, 24(%rsp)
	movq	24(%rdi), %rax
	movq	%rax, 32(%rsp)
	leaq	8(%rsp), %rdi
	callq	_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17he81034641578e0d9E
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h7ad0588e7cb4f6e9E, .Lfunc_end4-_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h7ad0588e7cb4f6e9E
	.cfi_endproc

	.section	".text._ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h7e20a8fc62a066f9E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h7e20a8fc62a066f9E,@function
_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h7e20a8fc62a066f9E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ops8function6FnOnce9call_once17hbe47309ccc392f27E
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h7e20a8fc62a066f9E, .Lfunc_end5-_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h7e20a8fc62a066f9E
	.cfi_endproc

	.section	.text._ZN3std2io5Write9write_all17hb1778407d497c276E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std2io5Write9write_all17hb1778407d497c276E,@function
_ZN3std2io5Write9write_all17hb1778407d497c276E:
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception0
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	%rdi, 32(%rsp)
	movq	%rsi, 40(%rsp)
	movq	%rdx, 48(%rsp)
.LBB6_1:
	cmpq	$0, 48(%rsp)
	jne	.LBB6_3
	movq	$0, 56(%rsp)
	jmp	.LBB6_4
.LBB6_3:
	movq	32(%rsp), %rdi
	movq	40(%rsp), %rsi
	movq	48(%rsp), %rdx
	callq	*_ZN69_$LT$std..sys..pal..unix..stdio..Stderr$u20$as$u20$std..io..Write$GT$5write17hb57121c90ff8fb05E@GOTPCREL(%rip)
	movq	%rax, 64(%rsp)
	movq	%rdx, 72(%rsp)
	cmpq	$0, 64(%rsp)
	je	.LBB6_5
	jmp	.LBB6_6
.LBB6_4:
	movq	56(%rsp), %rax
	addq	$104, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB6_5:
	.cfi_def_cfa_offset 112
	cmpq	$0, 72(%rsp)
	je	.LBB6_7
	jmp	.LBB6_8
.LBB6_6:
	leaq	72(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	80(%rsp), %rdi
.Ltmp0:
	callq	_ZN3std2io5error5Error14is_interrupted17hd5c68efc118a637dE
.Ltmp1:
	movb	%al, 31(%rsp)
	jmp	.LBB6_14
.LBB6_7:
	leaq	.L__unnamed_2(%rip), %rax
	movq	%rax, 56(%rsp)
	jmp	.LBB6_9
.LBB6_8:
	movq	72(%rsp), %rdi
	movq	40(%rsp), %rsi
	movq	48(%rsp), %rdx
.Ltmp2:
	leaq	.L__unnamed_3(%rip), %rcx
	callq	_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h69f16ab1b2fe5d02E
.Ltmp3:
	movq	%rdx, 8(%rsp)
	movq	%rax, 16(%rsp)
	jmp	.LBB6_12
.LBB6_9:
	jmp	.LBB6_4
.LBB6_10:
	cmpq	$1, 64(%rsp)
	je	.LBB6_19
	jmp	.LBB6_20
.LBB6_11:
.Ltmp4:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 88(%rsp)
	movl	%eax, 96(%rsp)
	jmp	.LBB6_10
.LBB6_12:
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, 40(%rsp)
	movq	%rax, 48(%rsp)
.LBB6_13:
	cmpq	$1, 64(%rsp)
	je	.LBB6_17
	jmp	.LBB6_18
.LBB6_14:
	movb	31(%rsp), %al
	testb	$1, %al
	jne	.LBB6_16
	jmp	.LBB6_15
.LBB6_15:
	movq	72(%rsp), %rax
	movq	%rax, 56(%rsp)
	jmp	.LBB6_9
.LBB6_16:
	jmp	.LBB6_13
.LBB6_17:
	leaq	64(%rsp), %rdi
	addq	$8, %rdi
	callq	_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2792d9f5fd648efbE
.LBB6_18:
	jmp	.LBB6_1
.LBB6_19:
	leaq	72(%rsp), %rdi
.Ltmp5:
	callq	_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2792d9f5fd648efbE
.Ltmp6:
	jmp	.LBB6_20
.LBB6_20:
	movq	88(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB6_21:
.Ltmp7:
	movq	_ZN4core9panicking16panic_in_cleanup17h7e5529b9cf989fd4E@GOTPCREL(%rip), %rax
	callq	*%rax
.Lfunc_end6:
	.size	_ZN3std2io5Write9write_all17hb1778407d497c276E, .Lfunc_end6-_ZN3std2io5Write9write_all17hb1778407d497c276E
	.cfi_endproc
	.section	.gcc_except_table._ZN3std2io5Write9write_all17hb1778407d497c276E,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception0:
	.byte	255
	.byte	155
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0
	.uleb128 .Ltmp0-.Lfunc_begin0
	.byte	0
	.byte	0
	.uleb128 .Ltmp0-.Lfunc_begin0
	.uleb128 .Ltmp3-.Ltmp0
	.uleb128 .Ltmp4-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp3-.Lfunc_begin0
	.uleb128 .Ltmp5-.Ltmp3
	.byte	0
	.byte	0
	.uleb128 .Ltmp5-.Lfunc_begin0
	.uleb128 .Ltmp6-.Ltmp5
	.uleb128 .Ltmp7-.Lfunc_begin0
	.byte	1
	.uleb128 .Ltmp6-.Lfunc_begin0
	.uleb128 .Lfunc_end6-.Ltmp6
	.byte	0
	.byte	0
.Lcst_end0:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase0:
	.byte	0
	.p2align	2, 0x0

	.section	.text._ZN3std2io5Write9write_fmt17hde31b2909d30769fE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std2io5Write9write_fmt17hde31b2909d30769fE,@function
_ZN3std2io5Write9write_fmt17hde31b2909d30769fE:
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception1
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	%rsi, %rdx
	movq	%rdi, 16(%rsp)
	movq	$0, 24(%rsp)
.Ltmp8:
	leaq	.L__unnamed_4(%rip), %rsi
	movq	_ZN4core3fmt5write17h5af61a909e3ec64dE@GOTPCREL(%rip), %rax
	leaq	16(%rsp), %rdi
	callq	*%rax
.Ltmp9:
	movb	%al, 7(%rsp)
	jmp	.LBB7_3
.LBB7_1:
.Ltmp13:
	leaq	16(%rsp), %rdi
	callq	_ZN4core3ptr97drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..sys..pal..unix..stdio..Stderr$GT$$GT$17h9ad9498191c09a39E
.Ltmp14:
	jmp	.LBB7_11
.LBB7_2:
.Ltmp12:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 88(%rsp)
	movl	%eax, 96(%rsp)
	jmp	.LBB7_1
.LBB7_3:
	movb	7(%rsp), %al
	andb	$1, %al
	movb	%al, 39(%rsp)
	movb	39(%rsp), %al
	andb	$1, %al
	movzbl	%al, %eax
	cmpq	$0, %rax
	jne	.LBB7_5
	movq	$0, 8(%rsp)
	leaq	16(%rsp), %rdi
	addq	$8, %rdi
	callq	_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17hcf3911dc5239d553E
	jmp	.LBB7_6
.LBB7_5:
	movq	24(%rsp), %rdx
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpq	$0, %rdx
	cmoveq	%rcx, %rax
	cmpq	$0, %rax
	sete	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB7_8
	jmp	.LBB7_7
.LBB7_6:
	movq	8(%rsp), %rax
	addq	$104, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB7_7:
	.cfi_def_cfa_offset 112
	leaq	.L__unnamed_5(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	$1, 48(%rsp)
	movq	.L__unnamed_6(%rip), %rcx
	movq	.L__unnamed_6+8(%rip), %rax
	movq	%rcx, 72(%rsp)
	movq	%rax, 80(%rsp)
	movq	$8, 56(%rsp)
	movq	$0, 64(%rsp)
.Ltmp10:
	leaq	.L__unnamed_7(%rip), %rsi
	movq	_ZN4core9panicking9panic_fmt17h5764ee7030b7a73dE@GOTPCREL(%rip), %rax
	leaq	40(%rsp), %rdi
	callq	*%rax
.Ltmp11:
	jmp	.LBB7_9
.LBB7_8:
	movq	24(%rsp), %rax
	movq	%rax, 8(%rsp)
	jmp	.LBB7_6
.LBB7_9:
	ud2
.LBB7_10:
.Ltmp15:
	movq	_ZN4core9panicking16panic_in_cleanup17h7e5529b9cf989fd4E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB7_11:
	movq	88(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end7:
	.size	_ZN3std2io5Write9write_fmt17hde31b2909d30769fE, .Lfunc_end7-_ZN3std2io5Write9write_fmt17hde31b2909d30769fE
	.cfi_endproc
	.section	.gcc_except_table._ZN3std2io5Write9write_fmt17hde31b2909d30769fE,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
.Lexception1:
	.byte	255
	.byte	155
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp8-.Lfunc_begin1
	.uleb128 .Ltmp9-.Ltmp8
	.uleb128 .Ltmp12-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp13-.Lfunc_begin1
	.uleb128 .Ltmp14-.Ltmp13
	.uleb128 .Ltmp15-.Lfunc_begin1
	.byte	1
	.uleb128 .Ltmp14-.Lfunc_begin1
	.uleb128 .Ltmp10-.Ltmp14
	.byte	0
	.byte	0
	.uleb128 .Ltmp10-.Lfunc_begin1
	.uleb128 .Ltmp11-.Ltmp10
	.uleb128 .Ltmp12-.Lfunc_begin1
	.byte	0
	.uleb128 .Ltmp11-.Lfunc_begin1
	.uleb128 .Lfunc_end7-.Ltmp11
	.byte	0
	.byte	0
.Lcst_end1:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase1:
	.byte	0
	.p2align	2, 0x0

	.section	.text._ZN3std2io5error14repr_bitpacked11decode_repr17h93a0d0157b3b8462E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std2io5error14repr_bitpacked11decode_repr17h93a0d0157b3b8462E,@function
_ZN3std2io5error14repr_bitpacked11decode_repr17h93a0d0157b3b8462E:
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception2
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rsi, 16(%rsp)
	movq	%rdi, 24(%rsp)
	movq	%rdi, 32(%rsp)
	movb	$1, 63(%rsp)
	movq	%rsi, 48(%rsp)
	movq	48(%rsp), %rax
	andl	$3, %eax
	movq	%rax, 40(%rsp)
	subq	$3, %rax
	ja	.LBB8_1
	movq	40(%rsp), %rax
	leaq	.LJTI8_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB8_1:
.Ltmp20:
	leaq	.L__unnamed_8(%rip), %rdi
	leaq	.L__unnamed_9(%rip), %rdx
	movq	_ZN4core9panicking5panic17had768957450a0f86E@GOTPCREL(%rip), %rax
	movl	$40, %esi
	callq	*%rax
.Ltmp21:
	jmp	.LBB8_15
.LBB8_2:
	movq	24(%rsp), %rax
	movq	48(%rsp), %rcx
	sarq	$32, %rcx
	movl	%ecx, 4(%rax)
	movb	$0, (%rax)
	jmp	.LBB8_6
.LBB8_3:
	movl	52(%rsp), %edi
.Ltmp18:
	callq	_ZN3std2io5error14repr_bitpacked14kind_from_prim17h1ccf4a86209c940eE
.Ltmp19:
	movb	%al, 15(%rsp)
	jmp	.LBB8_9
.LBB8_4:
	movq	24(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movb	$2, (%rax)
	jmp	.LBB8_6
.LBB8_5:
	movq	16(%rsp), %rax
	decq	%rax
	movq	%rax, 80(%rsp)
	movq	80(%rsp), %rdi
	movb	$0, 63(%rsp)
.Ltmp16:
	callq	_ZN3std2io5error14repr_bitpacked4Repr4data28_$u7b$$u7b$closure$u7d$$u7d$17h6863a5a9791ce6d2E
.Ltmp17:
	movq	%rax, (%rsp)
	jmp	.LBB8_14
.LBB8_6:
	jmp	.LBB8_13
.LBB8_7:
	testb	$1, 63(%rsp)
	jne	.LBB8_17
	jmp	.LBB8_16
.LBB8_8:
.Ltmp22:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 64(%rsp)
	movl	%eax, 72(%rsp)
	jmp	.LBB8_7
.LBB8_9:
	movb	15(%rsp), %al
	movb	%al, 62(%rsp)
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpb	$42, 62(%rsp)
	cmoveq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB8_11
	callq	_ZN4core4hint21unreachable_unchecked18precondition_check17h0ef8abda47f4589dE
	jmp	.LBB8_12
.LBB8_11:
	movq	24(%rsp), %rax
	movb	62(%rsp), %cl
	movb	%cl, 1(%rax)
	movb	$1, (%rax)
	jmp	.LBB8_6
.LBB8_12:
	ud2
.LBB8_13:
	movq	32(%rsp), %rax
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB8_14:
	.cfi_def_cfa_offset 96
	movq	24(%rsp), %rax
	movq	(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movb	$3, (%rax)
	jmp	.LBB8_13
.LBB8_15:
	ud2
.LBB8_16:
	movq	64(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB8_17:
	jmp	.LBB8_16
.Lfunc_end8:
	.size	_ZN3std2io5error14repr_bitpacked11decode_repr17h93a0d0157b3b8462E, .Lfunc_end8-_ZN3std2io5error14repr_bitpacked11decode_repr17h93a0d0157b3b8462E
	.cfi_endproc
	.section	.rodata._ZN3std2io5error14repr_bitpacked11decode_repr17h93a0d0157b3b8462E,"a",@progbits
	.p2align	2, 0x0
.LJTI8_0:
	.long	.LBB8_4-.LJTI8_0
	.long	.LBB8_5-.LJTI8_0
	.long	.LBB8_2-.LJTI8_0
	.long	.LBB8_3-.LJTI8_0
	.section	.gcc_except_table._ZN3std2io5error14repr_bitpacked11decode_repr17h93a0d0157b3b8462E,"a",@progbits
	.p2align	2, 0x0
GCC_except_table8:
.Lexception2:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp20-.Lfunc_begin2
	.uleb128 .Ltmp17-.Ltmp20
	.uleb128 .Ltmp22-.Lfunc_begin2
	.byte	0
	.uleb128 .Ltmp17-.Lfunc_begin2
	.uleb128 .Lfunc_end8-.Ltmp17
	.byte	0
	.byte	0
.Lcst_end2:
	.p2align	2, 0x0

	.section	.text._ZN3std2io5error14repr_bitpacked11decode_repr17ha579014c57b6a95eE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std2io5error14repr_bitpacked11decode_repr17ha579014c57b6a95eE,@function
_ZN3std2io5error14repr_bitpacked11decode_repr17ha579014c57b6a95eE:
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception3
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rsi, 16(%rsp)
	movq	%rdi, 24(%rsp)
	movq	%rdi, 32(%rsp)
	movb	$1, 63(%rsp)
	movq	%rsi, 48(%rsp)
	movq	48(%rsp), %rax
	andl	$3, %eax
	movq	%rax, 40(%rsp)
	subq	$3, %rax
	ja	.LBB9_1
	movq	40(%rsp), %rax
	leaq	.LJTI9_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB9_1:
.Ltmp27:
	leaq	.L__unnamed_8(%rip), %rdi
	leaq	.L__unnamed_9(%rip), %rdx
	movq	_ZN4core9panicking5panic17had768957450a0f86E@GOTPCREL(%rip), %rax
	movl	$40, %esi
	callq	*%rax
.Ltmp28:
	jmp	.LBB9_15
.LBB9_2:
	movq	24(%rsp), %rax
	movq	48(%rsp), %rcx
	sarq	$32, %rcx
	movl	%ecx, 4(%rax)
	movb	$0, (%rax)
	jmp	.LBB9_6
.LBB9_3:
	movl	52(%rsp), %edi
.Ltmp25:
	callq	_ZN3std2io5error14repr_bitpacked14kind_from_prim17h1ccf4a86209c940eE
.Ltmp26:
	movb	%al, 15(%rsp)
	jmp	.LBB9_9
.LBB9_4:
	movq	24(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movb	$2, (%rax)
	jmp	.LBB9_6
.LBB9_5:
	movq	16(%rsp), %rax
	decq	%rax
	movq	%rax, 80(%rsp)
	movq	80(%rsp), %rdi
	movb	$0, 63(%rsp)
.Ltmp23:
	callq	_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hd35b5e8cbfaaa481E
.Ltmp24:
	movq	%rax, (%rsp)
	jmp	.LBB9_14
.LBB9_6:
	jmp	.LBB9_13
.LBB9_7:
	testb	$1, 63(%rsp)
	jne	.LBB9_17
	jmp	.LBB9_16
.LBB9_8:
.Ltmp29:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 64(%rsp)
	movl	%eax, 72(%rsp)
	jmp	.LBB9_7
.LBB9_9:
	movb	15(%rsp), %al
	movb	%al, 62(%rsp)
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpb	$42, 62(%rsp)
	cmoveq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB9_11
	callq	_ZN4core4hint21unreachable_unchecked18precondition_check17h0ef8abda47f4589dE
	jmp	.LBB9_12
.LBB9_11:
	movq	24(%rsp), %rax
	movb	62(%rsp), %cl
	movb	%cl, 1(%rax)
	movb	$1, (%rax)
	jmp	.LBB9_6
.LBB9_12:
	ud2
.LBB9_13:
	movq	32(%rsp), %rax
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB9_14:
	.cfi_def_cfa_offset 96
	movq	24(%rsp), %rax
	movq	(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movb	$3, (%rax)
	jmp	.LBB9_13
.LBB9_15:
	ud2
.LBB9_16:
	movq	64(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB9_17:
	jmp	.LBB9_16
.Lfunc_end9:
	.size	_ZN3std2io5error14repr_bitpacked11decode_repr17ha579014c57b6a95eE, .Lfunc_end9-_ZN3std2io5error14repr_bitpacked11decode_repr17ha579014c57b6a95eE
	.cfi_endproc
	.section	.rodata._ZN3std2io5error14repr_bitpacked11decode_repr17ha579014c57b6a95eE,"a",@progbits
	.p2align	2, 0x0
.LJTI9_0:
	.long	.LBB9_4-.LJTI9_0
	.long	.LBB9_5-.LJTI9_0
	.long	.LBB9_2-.LJTI9_0
	.long	.LBB9_3-.LJTI9_0
	.section	.gcc_except_table._ZN3std2io5error14repr_bitpacked11decode_repr17ha579014c57b6a95eE,"a",@progbits
	.p2align	2, 0x0
GCC_except_table9:
.Lexception3:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp27-.Lfunc_begin3
	.uleb128 .Ltmp24-.Ltmp27
	.uleb128 .Ltmp29-.Lfunc_begin3
	.byte	0
	.uleb128 .Ltmp24-.Lfunc_begin3
	.uleb128 .Lfunc_end9-.Ltmp24
	.byte	0
	.byte	0
.Lcst_end3:
	.p2align	2, 0x0

	.section	.text._ZN3std2io5error14repr_bitpacked14kind_from_prim17h1ccf4a86209c940eE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std2io5error14repr_bitpacked14kind_from_prim17h1ccf4a86209c940eE,@function
_ZN3std2io5error14repr_bitpacked14kind_from_prim17h1ccf4a86209c940eE:
	.cfi_startproc
	movl	%edi, -8(%rsp)
	cmpl	$0, -8(%rsp)
	jne	.LBB10_2
	movb	$0, -1(%rsp)
	jmp	.LBB10_3
.LBB10_2:
	cmpl	$1, -8(%rsp)
	je	.LBB10_4
	jmp	.LBB10_5
.LBB10_3:
	movb	-1(%rsp), %al
	retq
.LBB10_4:
	movb	$1, -1(%rsp)
	jmp	.LBB10_3
.LBB10_5:
	cmpl	$2, -8(%rsp)
	jne	.LBB10_7
	movb	$2, -1(%rsp)
	jmp	.LBB10_3
.LBB10_7:
	cmpl	$3, -8(%rsp)
	jne	.LBB10_9
	movb	$3, -1(%rsp)
	jmp	.LBB10_3
.LBB10_9:
	cmpl	$4, -8(%rsp)
	jne	.LBB10_11
	movb	$4, -1(%rsp)
	jmp	.LBB10_3
.LBB10_11:
	cmpl	$5, -8(%rsp)
	jne	.LBB10_13
	movb	$5, -1(%rsp)
	jmp	.LBB10_3
.LBB10_13:
	cmpl	$6, -8(%rsp)
	jne	.LBB10_15
	movb	$6, -1(%rsp)
	jmp	.LBB10_3
.LBB10_15:
	cmpl	$7, -8(%rsp)
	jne	.LBB10_17
	movb	$7, -1(%rsp)
	jmp	.LBB10_3
.LBB10_17:
	cmpl	$8, -8(%rsp)
	jne	.LBB10_19
	movb	$8, -1(%rsp)
	jmp	.LBB10_3
.LBB10_19:
	cmpl	$9, -8(%rsp)
	jne	.LBB10_21
	movb	$9, -1(%rsp)
	jmp	.LBB10_3
.LBB10_21:
	cmpl	$10, -8(%rsp)
	jne	.LBB10_23
	movb	$10, -1(%rsp)
	jmp	.LBB10_3
.LBB10_23:
	cmpl	$11, -8(%rsp)
	jne	.LBB10_25
	movb	$11, -1(%rsp)
	jmp	.LBB10_3
.LBB10_25:
	cmpl	$12, -8(%rsp)
	jne	.LBB10_27
	movb	$12, -1(%rsp)
	jmp	.LBB10_3
.LBB10_27:
	cmpl	$13, -8(%rsp)
	jne	.LBB10_29
	movb	$13, -1(%rsp)
	jmp	.LBB10_3
.LBB10_29:
	cmpl	$14, -8(%rsp)
	jne	.LBB10_31
	movb	$14, -1(%rsp)
	jmp	.LBB10_3
.LBB10_31:
	cmpl	$15, -8(%rsp)
	jne	.LBB10_33
	movb	$15, -1(%rsp)
	jmp	.LBB10_3
.LBB10_33:
	cmpl	$16, -8(%rsp)
	jne	.LBB10_35
	movb	$16, -1(%rsp)
	jmp	.LBB10_3
.LBB10_35:
	cmpl	$17, -8(%rsp)
	jne	.LBB10_37
	movb	$17, -1(%rsp)
	jmp	.LBB10_3
.LBB10_37:
	cmpl	$18, -8(%rsp)
	jne	.LBB10_39
	movb	$18, -1(%rsp)
	jmp	.LBB10_3
.LBB10_39:
	cmpl	$19, -8(%rsp)
	jne	.LBB10_41
	movb	$19, -1(%rsp)
	jmp	.LBB10_3
.LBB10_41:
	cmpl	$20, -8(%rsp)
	jne	.LBB10_43
	movb	$20, -1(%rsp)
	jmp	.LBB10_3
.LBB10_43:
	cmpl	$21, -8(%rsp)
	jne	.LBB10_45
	movb	$21, -1(%rsp)
	jmp	.LBB10_3
.LBB10_45:
	cmpl	$22, -8(%rsp)
	jne	.LBB10_47
	movb	$22, -1(%rsp)
	jmp	.LBB10_3
.LBB10_47:
	cmpl	$23, -8(%rsp)
	jne	.LBB10_49
	movb	$23, -1(%rsp)
	jmp	.LBB10_3
.LBB10_49:
	cmpl	$24, -8(%rsp)
	jne	.LBB10_51
	movb	$24, -1(%rsp)
	jmp	.LBB10_3
.LBB10_51:
	cmpl	$25, -8(%rsp)
	jne	.LBB10_53
	movb	$25, -1(%rsp)
	jmp	.LBB10_3
.LBB10_53:
	cmpl	$26, -8(%rsp)
	jne	.LBB10_55
	movb	$26, -1(%rsp)
	jmp	.LBB10_3
.LBB10_55:
	cmpl	$27, -8(%rsp)
	jne	.LBB10_57
	movb	$27, -1(%rsp)
	jmp	.LBB10_3
.LBB10_57:
	cmpl	$28, -8(%rsp)
	jne	.LBB10_59
	movb	$28, -1(%rsp)
	jmp	.LBB10_3
.LBB10_59:
	cmpl	$29, -8(%rsp)
	jne	.LBB10_61
	movb	$29, -1(%rsp)
	jmp	.LBB10_3
.LBB10_61:
	cmpl	$30, -8(%rsp)
	jne	.LBB10_63
	movb	$30, -1(%rsp)
	jmp	.LBB10_3
.LBB10_63:
	cmpl	$31, -8(%rsp)
	jne	.LBB10_65
	movb	$31, -1(%rsp)
	jmp	.LBB10_3
.LBB10_65:
	cmpl	$32, -8(%rsp)
	jne	.LBB10_67
	movb	$32, -1(%rsp)
	jmp	.LBB10_3
.LBB10_67:
	cmpl	$33, -8(%rsp)
	jne	.LBB10_69
	movb	$33, -1(%rsp)
	jmp	.LBB10_3
.LBB10_69:
	cmpl	$34, -8(%rsp)
	jne	.LBB10_71
	movb	$34, -1(%rsp)
	jmp	.LBB10_3
.LBB10_71:
	cmpl	$35, -8(%rsp)
	jne	.LBB10_73
	movb	$35, -1(%rsp)
	jmp	.LBB10_3
.LBB10_73:
	cmpl	$40, -8(%rsp)
	jne	.LBB10_75
	movb	$40, -1(%rsp)
	jmp	.LBB10_3
.LBB10_75:
	cmpl	$37, -8(%rsp)
	jne	.LBB10_77
	movb	$37, -1(%rsp)
	jmp	.LBB10_3
.LBB10_77:
	cmpl	$36, -8(%rsp)
	jne	.LBB10_79
	movb	$36, -1(%rsp)
	jmp	.LBB10_3
.LBB10_79:
	cmpl	$38, -8(%rsp)
	jne	.LBB10_81
	movb	$38, -1(%rsp)
	jmp	.LBB10_3
.LBB10_81:
	cmpl	$39, -8(%rsp)
	jne	.LBB10_83
	movb	$39, -1(%rsp)
	jmp	.LBB10_3
.LBB10_83:
	cmpl	$41, -8(%rsp)
	jne	.LBB10_85
	movb	$41, -1(%rsp)
	jmp	.LBB10_3
.LBB10_85:
	movb	$42, -1(%rsp)
	jmp	.LBB10_3
.Lfunc_end10:
	.size	_ZN3std2io5error14repr_bitpacked14kind_from_prim17h1ccf4a86209c940eE, .Lfunc_end10-_ZN3std2io5error14repr_bitpacked14kind_from_prim17h1ccf4a86209c940eE
	.cfi_endproc

	.section	".text._ZN3std2io5error14repr_bitpacked4Repr4data28_$u7b$$u7b$closure$u7d$$u7d$17h6863a5a9791ce6d2E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std2io5error14repr_bitpacked4Repr4data28_$u7b$$u7b$closure$u7d$$u7d$17h6863a5a9791ce6d2E,@function
_ZN3std2io5error14repr_bitpacked4Repr4data28_$u7b$$u7b$closure$u7d$$u7d$17h6863a5a9791ce6d2E:
	.cfi_startproc
	movq	%rdi, %rax
	retq
.Lfunc_end11:
	.size	_ZN3std2io5error14repr_bitpacked4Repr4data28_$u7b$$u7b$closure$u7d$$u7d$17h6863a5a9791ce6d2E, .Lfunc_end11-_ZN3std2io5error14repr_bitpacked4Repr4data28_$u7b$$u7b$closure$u7d$$u7d$17h6863a5a9791ce6d2E
	.cfi_endproc

	.section	.text._ZN3std2io5error5Error14is_interrupted17hd5c68efc118a637dE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std2io5error5Error14is_interrupted17hd5c68efc118a637dE,@function
_ZN3std2io5error5Error14is_interrupted17hd5c68efc118a637dE:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	(%rdi), %rsi
	leaq	16(%rsp), %rdi
	callq	_ZN3std2io5error14repr_bitpacked11decode_repr17h93a0d0157b3b8462E
	movzbl	16(%rsp), %eax
	movq	%rax, (%rsp)
	movq	(%rsp), %rax
	leaq	.LJTI12_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
	.cfi_def_cfa_offset 8
	ud2
.LBB12_2:
	.cfi_def_cfa_offset 48
	cmpl	$4, 20(%rsp)
	sete	%al
	andb	$1, %al
	movb	%al, 15(%rsp)
	jmp	.LBB12_6
.LBB12_3:
	movb	17(%rsp), %al
	movb	%al, 39(%rsp)
	movzbl	39(%rsp), %eax
	movzbl	.L__unnamed_10(%rip), %ecx
	cmpq	%rcx, %rax
	sete	%al
	andb	$1, %al
	movb	%al, 15(%rsp)
	jmp	.LBB12_6
.LBB12_4:
	movq	24(%rsp), %rax
	movzbl	16(%rax), %eax
	movzbl	.L__unnamed_10(%rip), %ecx
	cmpq	%rcx, %rax
	sete	%al
	andb	$1, %al
	movb	%al, 15(%rsp)
	jmp	.LBB12_6
.LBB12_5:
	movq	24(%rsp), %rax
	movzbl	16(%rax), %eax
	movzbl	.L__unnamed_10(%rip), %ecx
	cmpq	%rcx, %rax
	sete	%al
	andb	$1, %al
	movb	%al, 15(%rsp)
.LBB12_6:
	movb	15(%rsp), %al
	andb	$1, %al
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end12:
	.size	_ZN3std2io5error5Error14is_interrupted17hd5c68efc118a637dE, .Lfunc_end12-_ZN3std2io5error5Error14is_interrupted17hd5c68efc118a637dE
	.cfi_endproc
	.section	.rodata._ZN3std2io5error5Error14is_interrupted17hd5c68efc118a637dE,"a",@progbits
	.p2align	2, 0x0
.LJTI12_0:
	.long	.LBB12_2-.LJTI12_0
	.long	.LBB12_3-.LJTI12_0
	.long	.LBB12_4-.LJTI12_0
	.long	.LBB12_5-.LJTI12_0

	.section	.text._ZN3std2rt10lang_start17hc40032e9d0726b86E,"ax",@progbits
	.hidden	_ZN3std2rt10lang_start17hc40032e9d0726b86E
	.globl	_ZN3std2rt10lang_start17hc40032e9d0726b86E
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start17hc40032e9d0726b86E,@function
_ZN3std2rt10lang_start17hc40032e9d0726b86E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	%ecx, %eax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, (%rsp)
	movq	%rsp, %rdi
	leaq	.L__unnamed_11(%rip), %rsi
	movzbl	%al, %r8d
	callq	*_ZN3std2rt19lang_start_internal17h15895544e2012228E@GOTPCREL(%rip)
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end13:
	.size	_ZN3std2rt10lang_start17hc40032e9d0726b86E, .Lfunc_end13-_ZN3std2rt10lang_start17hc40032e9d0726b86E
	.cfi_endproc

	.section	".text._ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hc82691f650a01c78E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hc82691f650a01c78E,@function
_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hc82691f650a01c78E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN3std3sys9backtrace28__rust_begin_short_backtrace17ha46524bb7bb07491E
	callq	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h9b2c65d67c30017eE
	movzbl	%al, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end14:
	.size	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hc82691f650a01c78E, .Lfunc_end14-_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hc82691f650a01c78E
	.cfi_endproc

	.section	.text._ZN3std3env6var_os17h10d1e0efdfb52b0aE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std3env6var_os17h10d1e0efdfb52b0aE,@function
_ZN3std3env6var_os17h10d1e0efdfb52b0aE:
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception4
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, 8(%rsp)
	movq	%rdi, 16(%rsp)
	movq	%rsi, 40(%rsp)
	movq	%rdx, 48(%rsp)
.Ltmp30:
	leaq	40(%rsp), %rdi
	callq	_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h33fccc0a2a1c5e7eE
.Ltmp31:
	movq	%rdx, 24(%rsp)
	movq	%rax, 32(%rsp)
	jmp	.LBB15_3
.LBB15_1:
	movq	56(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB15_2:
.Ltmp34:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 64(%rsp)
	jmp	.LBB15_1
.LBB15_3:
.Ltmp32:
	movq	24(%rsp), %rdx
	movq	32(%rsp), %rsi
	movq	8(%rsp), %rdi
	movq	_ZN3std3env7_var_os17hdbaf84f7fd796c40E@GOTPCREL(%rip), %rax
	callq	*%rax
.Ltmp33:
	jmp	.LBB15_4
.LBB15_4:
	movq	16(%rsp), %rax
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end15:
	.size	_ZN3std3env6var_os17h10d1e0efdfb52b0aE, .Lfunc_end15-_ZN3std3env6var_os17h10d1e0efdfb52b0aE
	.cfi_endproc
	.section	.gcc_except_table._ZN3std3env6var_os17h10d1e0efdfb52b0aE,"a",@progbits
	.p2align	2, 0x0
GCC_except_table15:
.Lexception4:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp30-.Lfunc_begin4
	.uleb128 .Ltmp31-.Ltmp30
	.uleb128 .Ltmp34-.Lfunc_begin4
	.byte	0
	.uleb128 .Ltmp31-.Lfunc_begin4
	.uleb128 .Ltmp32-.Ltmp31
	.byte	0
	.byte	0
	.uleb128 .Ltmp32-.Lfunc_begin4
	.uleb128 .Ltmp33-.Ltmp32
	.uleb128 .Ltmp34-.Lfunc_begin4
	.byte	0
.Lcst_end4:
	.p2align	2, 0x0

	.section	".text._ZN3std3ffi6os_str85_$LT$impl$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$u20$for$u20$str$GT$6as_ref17h811ad83bfed884efE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std3ffi6os_str85_$LT$impl$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$u20$for$u20$str$GT$6as_ref17h811ad83bfed884efE,@function
_ZN3std3ffi6os_str85_$LT$impl$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$u20$for$u20$str$GT$6as_ref17h811ad83bfed884efE:
	.cfi_startproc
	movq	%rsi, %rdx
	movq	%rdi, %rax
	retq
.Lfunc_end16:
	.size	_ZN3std3ffi6os_str85_$LT$impl$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$u20$for$u20$str$GT$6as_ref17h811ad83bfed884efE, .Lfunc_end16-_ZN3std3ffi6os_str85_$LT$impl$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$u20$for$u20$str$GT$6as_ref17h811ad83bfed884efE
	.cfi_endproc

	.section	".text._ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$10initialize17hadf86724a9411c70E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$10initialize17hadf86724a9411c70E,@function
_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$10initialize17hadf86724a9411c70E:
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception5
	subq	$136, %rsp
	.cfi_def_cfa_offset 144
	movq	%rdi, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movb	$1, 111(%rsp)
	movq	24(%rsp), %rdx
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpq	$0, %rdx
	cmoveq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB17_2
	movl	$0, 48(%rsp)
	movb	$0, 111(%rsp)
	jmp	.LBB17_3
.LBB17_2:
	movq	24(%rsp), %rdi
.Ltmp35:
	callq	_ZN4core3ops8function6FnOnce9call_once17h75e430a47bbd6684E
.Ltmp36:
	movl	%edx, 8(%rsp)
	movl	%eax, 12(%rsp)
	jmp	.LBB17_6
.LBB17_3:
.Ltmp37:
	callq	_ZN4core3ops8function6FnOnce9call_once17h36122fd710992decE
.Ltmp38:
	movl	%eax, 4(%rsp)
	jmp	.LBB17_8
.LBB17_4:
	testb	$1, 111(%rsp)
	jne	.LBB17_25
	jmp	.LBB17_24
.LBB17_5:
.Ltmp39:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 120(%rsp)
	movl	%eax, 128(%rsp)
	jmp	.LBB17_4
.LBB17_6:
	movl	8(%rsp), %eax
	movl	12(%rsp), %ecx
	movl	%ecx, 48(%rsp)
	movl	%eax, 52(%rsp)
	movb	$0, 111(%rsp)
	movl	48(%rsp), %eax
	cmpq	$0, %rax
	je	.LBB17_3
	movl	52(%rsp), %eax
	movl	%eax, 44(%rsp)
	jmp	.LBB17_9
.LBB17_8:
	movl	4(%rsp), %eax
	movl	%eax, 44(%rsp)
.LBB17_9:
	movl	44(%rsp), %eax
	movl	%eax, 68(%rsp)
	movl	$1, 64(%rsp)
	movq	16(%rsp), %rdi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	_ZN4core3ptr7replace18precondition_check17hbd45e872eceae4cdE
	movq	16(%rsp), %rax
	movl	(%rax), %edx
	movl	4(%rax), %ecx
	movl	%edx, 56(%rsp)
	movl	%ecx, 60(%rsp)
	movl	64(%rsp), %edx
	movl	68(%rsp), %ecx
	movl	%edx, (%rax)
	movl	%ecx, 4(%rax)
	movb	$1, 110(%rsp)
	movl	56(%rsp), %eax
	cmpq	$0, %rax
	jne	.LBB17_13
.Ltmp40:
	movq	16(%rsp), %rdi
	callq	_ZN78_$LT$$u21$$u20$as$u20$std..sys..thread_local..native..lazy..DestroyedState$GT$13register_dtor17hc87af820c84181d9E
.Ltmp41:
	jmp	.LBB17_16
.LBB17_13:
	movb	$0, 110(%rsp)
	jmp	.LBB17_20
.LBB17_14:
	testb	$1, 110(%rsp)
	jne	.LBB17_23
	jmp	.LBB17_4
.LBB17_15:
.Ltmp42:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 120(%rsp)
	movl	%eax, 128(%rsp)
	jmp	.LBB17_14
.LBB17_16:
	movq	16(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	%rax, 112(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	80(%rsp), %rax
	movl	(%rax), %eax
	movq	%rax, 96(%rsp)
	cmpq	$1, 96(%rsp)
	jne	.LBB17_18
	movq	80(%rsp), %rax
	addq	$4, %rax
	movq	%rax, 72(%rsp)
	movq	80(%rsp), %rax
	addq	$4, %rax
	movq	%rax, 32(%rsp)
	jmp	.LBB17_19
.LBB17_18:
	callq	_ZN4core4hint21unreachable_unchecked18precondition_check17h0ef8abda47f4589dE
	jmp	.LBB17_22
.LBB17_19:
	movq	32(%rsp), %rax
	addq	$136, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB17_20:
	.cfi_def_cfa_offset 144
	movq	16(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	%rax, 112(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	80(%rsp), %rax
	movl	(%rax), %eax
	movq	%rax, 96(%rsp)
	cmpq	$1, 96(%rsp)
	jne	.LBB17_18
	movq	80(%rsp), %rax
	addq	$4, %rax
	movq	%rax, 72(%rsp)
	movq	80(%rsp), %rax
	addq	$4, %rax
	movq	%rax, 32(%rsp)
	jmp	.LBB17_19
.LBB17_22:
	ud2
.LBB17_23:
	jmp	.LBB17_4
.LBB17_24:
	movq	120(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB17_25:
	jmp	.LBB17_24
.Lfunc_end17:
	.size	_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$10initialize17hadf86724a9411c70E, .Lfunc_end17-_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$10initialize17hadf86724a9411c70E
	.cfi_endproc
	.section	".gcc_except_table._ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$10initialize17hadf86724a9411c70E","a",@progbits
	.p2align	2, 0x0
GCC_except_table17:
.Lexception5:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp35-.Lfunc_begin5
	.uleb128 .Ltmp38-.Ltmp35
	.uleb128 .Ltmp39-.Lfunc_begin5
	.byte	0
	.uleb128 .Ltmp40-.Lfunc_begin5
	.uleb128 .Ltmp41-.Ltmp40
	.uleb128 .Ltmp42-.Lfunc_begin5
	.byte	0
	.uleb128 .Ltmp41-.Lfunc_begin5
	.uleb128 .Lfunc_end17-.Ltmp41
	.byte	0
	.byte	0
.Lcst_end5:
	.p2align	2, 0x0

	.section	".text._ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17he2c5f94da67ee8d0E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17he2c5f94da67ee8d0E,@function
_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17he2c5f94da67ee8d0E:
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception6
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movl	(%rdi), %eax
	movq	%rax, 24(%rsp)
	testq	%rax, %rax
	je	.LBB18_2
	jmp	.LBB18_11
.LBB18_11:
	movq	24(%rsp), %rax
	subq	$1, %rax
	je	.LBB18_3
	jmp	.LBB18_12
.LBB18_12:
	jmp	.LBB18_4
	.cfi_def_cfa_offset 8
	ud2
.LBB18_2:
	.cfi_def_cfa_offset 64
.Ltmp43:
	movq	16(%rsp), %rsi
	movq	8(%rsp), %rdi
	callq	_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$10initialize17hadf86724a9411c70E
.Ltmp44:
	movq	%rax, (%rsp)
	jmp	.LBB18_7
.LBB18_3:
	movq	8(%rsp), %rax
	addq	$4, %rax
	movq	%rax, 32(%rsp)
	jmp	.LBB18_10
.LBB18_4:
	movq	$0, 32(%rsp)
	jmp	.LBB18_10
.LBB18_5:
	jmp	.LBB18_9
.LBB18_6:
.Ltmp45:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 40(%rsp)
	movl	%eax, 48(%rsp)
	jmp	.LBB18_5
.LBB18_7:
	movq	(%rsp), %rax
	movq	%rax, 32(%rsp)
.LBB18_8:
	movq	32(%rsp), %rax
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB18_9:
	.cfi_def_cfa_offset 64
	movq	40(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB18_10:
	jmp	.LBB18_8
.Lfunc_end18:
	.size	_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17he2c5f94da67ee8d0E, .Lfunc_end18-_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17he2c5f94da67ee8d0E
	.cfi_endproc
	.section	".gcc_except_table._ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17he2c5f94da67ee8d0E","a",@progbits
	.p2align	2, 0x0
GCC_except_table18:
.Lexception6:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp43-.Lfunc_begin6
	.uleb128 .Ltmp44-.Ltmp43
	.uleb128 .Ltmp45-.Lfunc_begin6
	.byte	0
	.uleb128 .Ltmp44-.Lfunc_begin6
	.uleb128 .Lfunc_end18-.Ltmp44
	.byte	0
	.byte	0
.Lcst_end6:
	.p2align	2, 0x0

	.section	.text._ZN3std3sys9backtrace28__rust_begin_short_backtrace17h1725055e86653cefE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h1725055e86653cefE,@function
_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h1725055e86653cefE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h5ddf8b9ac2854697E
	#APP
	#NO_APP
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end19:
	.size	_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h1725055e86653cefE, .Lfunc_end19-_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h1725055e86653cefE
	.cfi_endproc

	.section	.text._ZN3std3sys9backtrace28__rust_begin_short_backtrace17ha46524bb7bb07491E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std3sys9backtrace28__rust_begin_short_backtrace17ha46524bb7bb07491E,@function
_ZN3std3sys9backtrace28__rust_begin_short_backtrace17ha46524bb7bb07491E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ops8function6FnOnce9call_once17h7a2dd990091c7e53E
	#APP
	#NO_APP
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end20:
	.size	_ZN3std3sys9backtrace28__rust_begin_short_backtrace17ha46524bb7bb07491E, .Lfunc_end20-_ZN3std3sys9backtrace28__rust_begin_short_backtrace17ha46524bb7bb07491E
	.cfi_endproc

	.section	.text._ZN3std3sys9backtrace28__rust_begin_short_backtrace17hbefb41b33d151608E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std3sys9backtrace28__rust_begin_short_backtrace17hbefb41b33d151608E,@function
_ZN3std3sys9backtrace28__rust_begin_short_backtrace17hbefb41b33d151608E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4main4main28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hf4dc5c0ecbb8a9daE
	#APP
	#NO_APP
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end21:
	.size	_ZN3std3sys9backtrace28__rust_begin_short_backtrace17hbefb41b33d151608E, .Lfunc_end21-_ZN3std3sys9backtrace28__rust_begin_short_backtrace17hbefb41b33d151608E
	.cfi_endproc

	.section	".text._ZN3std6thread18JoinInner$LT$T$GT$4join17h957b3bda73a4f43fE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std6thread18JoinInner$LT$T$GT$4join17h957b3bda73a4f43fE,@function
_ZN3std6thread18JoinInner$LT$T$GT$4join17h957b3bda73a4f43fE:
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception7
	subq	$120, %rsp
	.cfi_def_cfa_offset 128
	movq	%rdi, 40(%rsp)
	movq	16(%rdi), %rdi
.Ltmp46:
	movq	_ZN3std3sys3pal4unix6thread6Thread4join17h2c75ad475615760aE@GOTPCREL(%rip), %rax
	callq	*%rax
.Ltmp47:
	jmp	.LBB22_3
.LBB22_1:
.Ltmp60:
	movq	40(%rsp), %rdi
	callq	_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hca8e4048ba3a9c19E
.Ltmp61:
	jmp	.LBB22_15
.LBB22_2:
.Ltmp59:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 104(%rsp)
	movl	%eax, 112(%rsp)
	jmp	.LBB22_1
.LBB22_3:
	movq	40(%rsp), %rdi
	addq	$8, %rdi
	movq	%rdi, 24(%rsp)
.Ltmp48:
	callq	_ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h51a66d3474955755E
.Ltmp49:
	movb	%al, 39(%rsp)
	jmp	.LBB22_4
.LBB22_4:
	movb	39(%rsp), %al
	testb	$1, %al
	jne	.LBB22_6
	jmp	.LBB22_5
.LBB22_5:
	movq	$0, 72(%rsp)
.Ltmp50:
	leaq	.L__unnamed_12(%rip), %rdi
	movq	_ZN4core6option13unwrap_failed17hb62b1ad0e5e99b27E@GOTPCREL(%rip), %rax
	callq	*%rax
.Ltmp51:
	jmp	.LBB22_7
.LBB22_6:
	movq	24(%rsp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	%rax, 72(%rsp)
	movq	72(%rsp), %rax
	movq	$0, 80(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 48(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 56(%rsp)
	movq	24(%rax), %rcx
	movq	%rcx, 64(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	88(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movq	96(%rsp), %rcx
	movq	%rcx, 24(%rax)
	cmpq	$0, 48(%rsp)
	je	.LBB22_8
	jmp	.LBB22_9
.LBB22_7:
	ud2
.LBB22_8:
.Ltmp57:
	leaq	.L__unnamed_13(%rip), %rdi
	movq	_ZN4core6option13unwrap_failed17hb62b1ad0e5e99b27E@GOTPCREL(%rip), %rax
	callq	*%rax
.Ltmp58:
	jmp	.LBB22_7
.LBB22_9:
	movq	40(%rsp), %rdi
	movq	56(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 16(%rsp)
.Ltmp52:
	callq	_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hca8e4048ba3a9c19E
.Ltmp53:
	jmp	.LBB22_12
.LBB22_10:
	movq	40(%rsp), %rdi
	addq	$8, %rdi
.Ltmp55:
	callq	_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hb72293dedb880f3bE
.Ltmp56:
	jmp	.LBB22_14
.LBB22_11:
.Ltmp54:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 104(%rsp)
	movl	%eax, 112(%rsp)
	jmp	.LBB22_10
.LBB22_12:
	movq	40(%rsp), %rdi
	addq	$8, %rdi
	callq	_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hb72293dedb880f3bE
	movq	8(%rsp), %rax
	movq	16(%rsp), %rdx
	addq	$120, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB22_13:
	.cfi_def_cfa_offset 128
.Ltmp64:
	movq	_ZN4core9panicking16panic_in_cleanup17h7e5529b9cf989fd4E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB22_14:
	movq	104(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB22_15:
	movq	40(%rsp), %rdi
	addq	$8, %rdi
.Ltmp62:
	callq	_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hb72293dedb880f3bE
.Ltmp63:
	jmp	.LBB22_14
.Lfunc_end22:
	.size	_ZN3std6thread18JoinInner$LT$T$GT$4join17h957b3bda73a4f43fE, .Lfunc_end22-_ZN3std6thread18JoinInner$LT$T$GT$4join17h957b3bda73a4f43fE
	.cfi_endproc
	.section	".gcc_except_table._ZN3std6thread18JoinInner$LT$T$GT$4join17h957b3bda73a4f43fE","a",@progbits
	.p2align	2, 0x0
GCC_except_table22:
.Lexception7:
	.byte	255
	.byte	155
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp46-.Lfunc_begin7
	.uleb128 .Ltmp47-.Ltmp46
	.uleb128 .Ltmp59-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp60-.Lfunc_begin7
	.uleb128 .Ltmp61-.Ltmp60
	.uleb128 .Ltmp64-.Lfunc_begin7
	.byte	1
	.uleb128 .Ltmp48-.Lfunc_begin7
	.uleb128 .Ltmp58-.Ltmp48
	.uleb128 .Ltmp59-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp52-.Lfunc_begin7
	.uleb128 .Ltmp53-.Ltmp52
	.uleb128 .Ltmp54-.Lfunc_begin7
	.byte	0
	.uleb128 .Ltmp55-.Lfunc_begin7
	.uleb128 .Ltmp56-.Ltmp55
	.uleb128 .Ltmp64-.Lfunc_begin7
	.byte	1
	.uleb128 .Ltmp56-.Lfunc_begin7
	.uleb128 .Ltmp62-.Ltmp56
	.byte	0
	.byte	0
	.uleb128 .Ltmp62-.Lfunc_begin7
	.uleb128 .Ltmp63-.Ltmp62
	.uleb128 .Ltmp64-.Lfunc_begin7
	.byte	1
.Lcst_end7:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase2:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN3std6thread19JoinHandle$LT$T$GT$4join17hff8ce58798cf3f71E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std6thread19JoinHandle$LT$T$GT$4join17hff8ce58798cf3f71E,@function
_ZN3std6thread19JoinHandle$LT$T$GT$4join17hff8ce58798cf3f71E:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	16(%rdi), %rax
	movq	%rax, 16(%rsp)
	movups	(%rdi), %xmm0
	movaps	%xmm0, (%rsp)
	movq	%rsp, %rdi
	callq	_ZN3std6thread18JoinInner$LT$T$GT$4join17h957b3bda73a4f43fE
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end23:
	.size	_ZN3std6thread19JoinHandle$LT$T$GT$4join17hff8ce58798cf3f71E, .Lfunc_end23-_ZN3std6thread19JoinHandle$LT$T$GT$4join17hff8ce58798cf3f71E
	.cfi_endproc

	.section	".text._ZN3std6thread5local17LocalKey$LT$T$GT$4with17hb3c437f00506a755E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hb3c437f00506a755E,@function
_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hb3c437f00506a755E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h0f487824b32a31bfE
	andb	$1, %al
	movb	%al, 7(%rsp)
	movb	7(%rsp), %al
	andb	$1, %al
	movzbl	%al, %eax
	cmpq	$0, %rax
	jne	.LBB24_2
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.LBB24_2:
	.cfi_def_cfa_offset 16
	leaq	.L__unnamed_14(%rip), %rdi
	movq	_ZN3std6thread5local18panic_access_error17h1cbe5b7716798dd3E@GOTPCREL(%rip), %rax
	callq	*%rax
.Lfunc_end24:
	.size	_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hb3c437f00506a755E, .Lfunc_end24-_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hb3c437f00506a755E
	.cfi_endproc

	.section	".text._ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h0f487824b32a31bfE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h0f487824b32a31bfE,@function
_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h0f487824b32a31bfE:
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception8
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movb	$1, 55(%rsp)
	movq	(%rdi), %rax
.Ltmp65:
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	*%rax
.Ltmp66:
	movq	%rax, 8(%rsp)
	jmp	.LBB25_3
.LBB25_1:
	testb	$1, 55(%rsp)
	jne	.LBB25_9
	jmp	.LBB25_8
.LBB25_2:
.Ltmp69:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 64(%rsp)
	jmp	.LBB25_1
.LBB25_3:
	movq	8(%rsp), %rax
	cmpq	$0, %rax
	jne	.LBB25_5
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movb	$1, 23(%rsp)
	jmp	.LBB25_6
.LBB25_5:
	movq	8(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	24(%rsp), %rdi
	movb	$0, 55(%rsp)
.Ltmp67:
	callq	_ZN4main4main28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h091239cf106968f4E
.Ltmp68:
	jmp	.LBB25_7
.LBB25_6:
	movb	23(%rsp), %al
	andb	$1, %al
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB25_7:
	.cfi_def_cfa_offset 80
	movb	$0, 23(%rsp)
	jmp	.LBB25_6
.LBB25_8:
	movq	56(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB25_9:
	jmp	.LBB25_8
.Lfunc_end25:
	.size	_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h0f487824b32a31bfE, .Lfunc_end25-_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h0f487824b32a31bfE
	.cfi_endproc
	.section	".gcc_except_table._ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h0f487824b32a31bfE","a",@progbits
	.p2align	2, 0x0
GCC_except_table25:
.Lexception8:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp65-.Lfunc_begin8
	.uleb128 .Ltmp68-.Ltmp65
	.uleb128 .Ltmp69-.Lfunc_begin8
	.byte	0
	.uleb128 .Ltmp68-.Lfunc_begin8
	.uleb128 .Lfunc_end25-.Ltmp68
	.byte	0
	.byte	0
.Lcst_end8:
	.p2align	2, 0x0

	.section	.text._ZN3std6thread5spawn17ha97b53404027e468E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std6thread5spawn17ha97b53404027e468E,@function
_ZN3std6thread5spawn17ha97b53404027e468E:
	.cfi_startproc
	subq	$120, %rsp
	.cfi_def_cfa_offset 128
	movq	%rdi, 8(%rsp)
	movq	%rdi, 16(%rsp)
	movabsq	$-9223372036854775808, %rax
	movq	%rax, 96(%rsp)
	movq	96(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	104(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	.L__unnamed_6(%rip), %rcx
	movq	.L__unnamed_6+8(%rip), %rax
	movq	%rcx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movb	$0, 88(%rsp)
	leaq	24(%rsp), %rdi
	leaq	48(%rsp), %rsi
	callq	_ZN3std6thread7Builder15spawn_unchecked17hacdeeaf949576668E
	movq	8(%rsp), %rdi
	leaq	24(%rsp), %rsi
	leaq	.L__unnamed_15(%rip), %rdx
	movl	$22, %ecx
	leaq	.L__unnamed_16(%rip), %r8
	callq	_ZN4core6result19Result$LT$T$C$E$GT$6expect17hb983d82e3430ca73E
	movq	16(%rsp), %rax
	addq	$120, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end26:
	.size	_ZN3std6thread5spawn17ha97b53404027e468E, .Lfunc_end26-_ZN3std6thread5spawn17ha97b53404027e468E
	.cfi_endproc

	.section	.text._ZN3std6thread7Builder15spawn_unchecked17hacdeeaf949576668E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std6thread7Builder15spawn_unchecked17hacdeeaf949576668E,@function
_ZN3std6thread7Builder15spawn_unchecked17hacdeeaf949576668E:
	.cfi_startproc
	subq	$152, %rsp
	.cfi_def_cfa_offset 160
	movq	%rdi, (%rsp)
	movq	%rdi, 8(%rsp)
	leaq	64(%rsp), %rdi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	_ZN3std6thread7Builder16spawn_unchecked_17h12a1c925eda3e3a6E
	movq	64(%rsp), %rdx
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpq	$0, %rdx
	cmoveq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB27_2
	movq	(%rsp), %rax
	movq	64(%rsp), %rcx
	movq	%rcx, 120(%rsp)
	movq	72(%rsp), %rcx
	movq	%rcx, 128(%rsp)
	movq	80(%rsp), %rcx
	movq	%rcx, 136(%rsp)
	movq	120(%rsp), %rcx
	movq	%rcx, 40(%rsp)
	movq	128(%rsp), %rcx
	movq	%rcx, 48(%rsp)
	movq	136(%rsp), %rcx
	movq	%rcx, 56(%rsp)
	movq	40(%rsp), %rcx
	movq	%rcx, 96(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 104(%rsp)
	movq	56(%rsp), %rcx
	movq	%rcx, 112(%rsp)
	movq	96(%rsp), %rcx
	movq	%rcx, 16(%rsp)
	movq	104(%rsp), %rcx
	movq	%rcx, 24(%rsp)
	movq	112(%rsp), %rcx
	movq	%rcx, 32(%rsp)
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	24(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	32(%rsp), %rcx
	movq	%rcx, 16(%rax)
	jmp	.LBB27_3
.LBB27_2:
	movq	(%rsp), %rax
	movq	72(%rsp), %rcx
	movq	%rcx, 144(%rsp)
	movq	144(%rsp), %rcx
	movq	%rcx, 48(%rsp)
	movq	$0, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, 88(%rsp)
	movq	88(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	$0, (%rax)
.LBB27_3:
	movq	8(%rsp), %rax
	addq	$152, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end27:
	.size	_ZN3std6thread7Builder15spawn_unchecked17hacdeeaf949576668E, .Lfunc_end27-_ZN3std6thread7Builder15spawn_unchecked17hacdeeaf949576668E
	.cfi_endproc

	.section	.text._ZN3std6thread7Builder16spawn_unchecked_17h12a1c925eda3e3a6E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std6thread7Builder16spawn_unchecked_17h12a1c925eda3e3a6E,@function
_ZN3std6thread7Builder16spawn_unchecked_17h12a1c925eda3e3a6E:
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception9
	subq	$680, %rsp
	.cfi_def_cfa_offset 688
	movq	%rdi, 104(%rsp)
	movq	%rdi, 112(%rsp)
	movq	%rdx, 128(%rsp)
	movb	$1, 519(%rsp)
	movb	$1, 518(%rsp)
	movb	$1, 517(%rsp)
	movq	16(%rsi), %rax
	movq	%rax, 136(%rsp)
	movq	24(%rsi), %rax
	movq	%rax, 144(%rsp)
	movq	32(%rsi), %rax
	movq	%rax, 152(%rsp)
	movq	(%rsi), %rcx
	movq	8(%rsi), %rax
	movq	%rcx, 160(%rsp)
	movq	%rax, 168(%rsp)
	movb	40(%rsi), %al
	movb	%al, 127(%rsp)
	cmpq	$0, 160(%rsp)
	jne	.LBB28_2
.Ltmp70:
	callq	_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17hfb67dfaaaa7110f8E
.Ltmp71:
	movq	%rax, 96(%rsp)
	jmp	.LBB28_5
.LBB28_2:
	movq	168(%rsp), %rax
	movq	%rax, 176(%rsp)
	jmp	.LBB28_6
.LBB28_3:
	testb	$1, 517(%rsp)
	jne	.LBB28_55
	jmp	.LBB28_46
.LBB28_4:
.Ltmp76:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 616(%rsp)
	movl	%eax, 624(%rsp)
	jmp	.LBB28_3
.LBB28_5:
	movq	96(%rsp), %rax
	movq	%rax, 176(%rsp)
.LBB28_6:
.Ltmp72:
	movq	_ZN3std6thread8ThreadId3new17h7003da286394862eE@GOTPCREL(%rip), %rax
	callq	*%rax
.Ltmp73:
	movq	%rax, 88(%rsp)
	jmp	.LBB28_7
.LBB28_7:
	movq	88(%rsp), %rdi
	movb	$0, 517(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 208(%rsp)
	movups	136(%rsp), %xmm0
	movaps	%xmm0, 192(%rsp)
.Ltmp74:
	movq	_ZN3std6thread6Thread3new17hdbb763b882006a55E@GOTPCREL(%rip), %rax
	leaq	192(%rsp), %rsi
	callq	*%rax
.Ltmp75:
	movq	%rax, 80(%rsp)
	jmp	.LBB28_8
.LBB28_8:
	movb	127(%rsp), %al
	movq	80(%rsp), %rcx
	movq	%rcx, 184(%rsp)
	testb	$1, %al
	jne	.LBB28_10
.Ltmp77:
	movq	_ZN3std6thread9spawnhook15run_spawn_hooks17h37121d6070a20e5bE@GOTPCREL(%rip), %rax
	leaq	224(%rsp), %rdi
	leaq	184(%rsp), %rsi
	callq	*%rax
.Ltmp78:
	jmp	.LBB28_13
.LBB28_10:
	movq	$0, 520(%rsp)
	movl	$8, %eax
	movq	%rax, 528(%rsp)
	movq	$0, 536(%rsp)
	movq	$0, 248(%rsp)
	movq	520(%rsp), %rax
	movq	%rax, 224(%rsp)
	movq	528(%rsp), %rax
	movq	%rax, 232(%rsp)
	movq	536(%rsp), %rax
	movq	%rax, 240(%rsp)
	movb	$1, 516(%rsp)
	jmp	.LBB28_14
.LBB28_11:
.Ltmp105:
	leaq	184(%rsp), %rdi
	callq	_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hca8e4048ba3a9c19E
.Ltmp106:
	jmp	.LBB28_3
.LBB28_12:
.Ltmp79:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 616(%rsp)
	movl	%eax, 624(%rsp)
	jmp	.LBB28_11
.LBB28_13:
	movb	$1, 516(%rsp)
.LBB28_14:
	movq	184(%rsp), %rcx
	movl	$1, %eax
	lock		xaddq	%rax, (%rcx)
	movq	%rax, 632(%rsp)
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, 632(%rsp)
	ja	.LBB28_20
	movq	184(%rsp), %rax
	movq	%rax, 256(%rsp)
	movb	$1, 515(%rsp)
	movb	$0, 518(%rsp)
	movq	128(%rsp), %rax
	movq	$0, 328(%rsp)
	movq	344(%rsp), %rcx
	movq	%rcx, 320(%rsp)
	movups	328(%rsp), %xmm0
	movaps	%xmm0, 304(%rsp)
	movq	%rax, 272(%rsp)
	movq	320(%rsp), %rax
	movq	%rax, 296(%rsp)
	movaps	304(%rsp), %xmm0
	movups	%xmm0, 280(%rsp)
	movq	$1, 592(%rsp)
	movq	592(%rsp), %rax
	movq	%rax, 544(%rsp)
	movq	592(%rsp), %rax
	movq	%rax, 552(%rsp)
	movups	272(%rsp), %xmm0
	movups	288(%rsp), %xmm1
	movups	%xmm1, 576(%rsp)
	movups	%xmm0, 560(%rsp)
.Ltmp80:
	movl	$48, %edi
	movl	$8, %esi
	callq	_ZN5alloc5alloc15exchange_malloc17he9f3f84fc184f964E
.Ltmp81:
	movq	%rax, 72(%rsp)
	jmp	.LBB28_19
.LBB28_16:
.Ltmp82:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 648(%rsp)
	movl	%eax, 656(%rsp)
.Ltmp83:
	leaq	544(%rsp), %rdi
	callq	_ZN4core3ptr85drop_in_place$LT$alloc..sync..ArcInner$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h929bb11bcb34677cE
.Ltmp84:
	jmp	.LBB28_18
.LBB28_17:
.Ltmp85:
	movq	_ZN4core9panicking16panic_in_cleanup17h7e5529b9cf989fd4E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB28_18:
	movq	648(%rsp), %rax
	movq	%rax, 56(%rsp)
	movl	656(%rsp), %eax
	movl	%eax, 68(%rsp)
	jmp	.LBB28_22
.LBB28_19:
	movq	72(%rsp), %rdi
	leaq	544(%rsp), %rsi
	movl	$48, %edx
	callq	memcpy@PLT
	jmp	.LBB28_23
.LBB28_20:
	ud2
.LBB28_21:
	testb	$1, 515(%rsp)
	jne	.LBB28_53
	jmp	.LBB28_52
.LBB28_22:
	movl	68(%rsp), %eax
	movq	56(%rsp), %rcx
	movq	%rcx, 616(%rsp)
	movl	%eax, 624(%rsp)
	jmp	.LBB28_21
.LBB28_23:
	movq	72(%rsp), %rax
	movq	%rax, 264(%rsp)
	movq	264(%rsp), %rcx
	movl	$1, %eax
	lock		xaddq	%rax, (%rcx)
	movq	%rax, 640(%rsp)
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, 640(%rsp)
	ja	.LBB28_25
	movq	264(%rsp), %rax
	movb	$0, 519(%rsp)
	movb	$0, 515(%rsp)
	movb	$0, 516(%rsp)
	movb	$1, 514(%rsp)
	movq	256(%rsp), %rcx
	movq	%rcx, 384(%rsp)
	movq	224(%rsp), %rcx
	movq	%rcx, 352(%rsp)
	movq	232(%rsp), %rcx
	movq	%rcx, 360(%rsp)
	movq	240(%rsp), %rcx
	movq	%rcx, 368(%rsp)
	movq	248(%rsp), %rcx
	movq	%rcx, 376(%rsp)
	movq	%rax, 392(%rsp)
	movq	264(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	16(%rax), %rdx
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpq	$0, %rdx
	cmoveq	%rcx, %rax
	cmpq	$1, %rax
	je	.LBB28_26
	jmp	.LBB28_27
.LBB28_25:
	ud2
.LBB28_26:
	movq	48(%rsp), %rax
	movq	16(%rax), %rdi
	addq	$16, %rdi
.Ltmp86:
	movq	_ZN3std6thread6scoped9ScopeData29increment_num_running_threads17h09fed5621c7665b6E@GOTPCREL(%rip), %rax
	callq	*%rax
.Ltmp87:
	jmp	.LBB28_35
.LBB28_27:
	movb	$0, 514(%rsp)
	movups	352(%rsp), %xmm0
	movups	368(%rsp), %xmm1
	movups	384(%rsp), %xmm2
	movaps	%xmm2, 432(%rsp)
	movaps	%xmm1, 416(%rsp)
	movaps	%xmm0, 400(%rsp)
.Ltmp88:
	movl	$48, %edi
	movl	$8, %esi
	callq	_ZN5alloc5alloc15exchange_malloc17he9f3f84fc184f964E
.Ltmp89:
	movq	%rax, 40(%rsp)
	jmp	.LBB28_31
.LBB28_28:
.Ltmp90:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 664(%rsp)
	movl	%eax, 672(%rsp)
.Ltmp91:
	leaq	400(%rsp), %rdi
	callq	_ZN4core3ptr175drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$main..main..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h809f0dd2a6a294efE
.Ltmp92:
	jmp	.LBB28_30
.LBB28_29:
.Ltmp93:
	movq	_ZN4core9panicking16panic_in_cleanup17h7e5529b9cf989fd4E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB28_30:
	movq	664(%rsp), %rcx
	movl	672(%rsp), %eax
	movq	%rcx, 24(%rsp)
	movl	%eax, 36(%rsp)
	jmp	.LBB28_34
.LBB28_31:
	movq	40(%rsp), %rdi
	leaq	400(%rsp), %rsi
	movl	$48, %edx
	callq	memcpy@PLT
	jmp	.LBB28_36
.LBB28_32:
	testb	$1, 514(%rsp)
	jne	.LBB28_51
	jmp	.LBB28_50
.LBB28_33:
.Ltmp96:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 24(%rsp)
	movl	%eax, 36(%rsp)
	jmp	.LBB28_34
.LBB28_34:
	movq	24(%rsp), %rcx
	movl	36(%rsp), %eax
	movq	%rcx, 616(%rsp)
	movl	%eax, 624(%rsp)
	jmp	.LBB28_32
.LBB28_35:
	jmp	.LBB28_27
.LBB28_36:
	jmp	.LBB28_37
.LBB28_37:
	movq	40(%rsp), %rdi
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h86c3bd06959148f8E
	movq	40(%rsp), %rsi
	movq	176(%rsp), %rdi
.Ltmp94:
	leaq	.L__unnamed_17(%rip), %rdx
	movq	_ZN3std3sys3pal4unix6thread6Thread3new17h14599304eded2348E@GOTPCREL(%rip), %rax
	callq	*%rax
.Ltmp95:
	movq	%rdx, 8(%rsp)
	movq	%rax, 16(%rsp)
	jmp	.LBB28_39
.LBB28_39:
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, 488(%rsp)
	movq	%rax, 496(%rsp)
	cmpq	$0, 488(%rsp)
	jne	.LBB28_41
	movq	104(%rsp), %rax
	movq	496(%rsp), %rcx
	movq	%rcx, 480(%rsp)
	movq	$0, 472(%rsp)
	movq	480(%rsp), %rsi
	movq	184(%rsp), %rdx
	movq	264(%rsp), %rcx
	movq	%rsi, 464(%rsp)
	movq	%rdx, 448(%rsp)
	movq	%rcx, 456(%rsp)
	movq	448(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	456(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	464(%rsp), %rcx
	movq	%rcx, 16(%rax)
	jmp	.LBB28_42
.LBB28_41:
	movq	104(%rsp), %rax
	movq	496(%rsp), %rcx
	movq	%rcx, 608(%rsp)
	movq	608(%rsp), %rcx
	movq	%rcx, 480(%rsp)
	movq	$1, 472(%rsp)
	movq	480(%rsp), %rcx
	movq	%rcx, 504(%rsp)
	movq	504(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	$0, (%rax)
.Ltmp109:
	leaq	264(%rsp), %rdi
	callq	_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hb72293dedb880f3bE
.Ltmp110:
	jmp	.LBB28_45
.LBB28_42:
	movq	112(%rsp), %rax
	addq	$680, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB28_43:
	.cfi_def_cfa_offset 688
.Ltmp112:
	leaq	184(%rsp), %rdi
	callq	_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hca8e4048ba3a9c19E
.Ltmp113:
	jmp	.LBB28_46
.LBB28_44:
.Ltmp111:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 616(%rsp)
	movl	%eax, 624(%rsp)
	jmp	.LBB28_43
.LBB28_45:
.Ltmp114:
	leaq	184(%rsp), %rdi
	callq	_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hca8e4048ba3a9c19E
.Ltmp115:
	jmp	.LBB28_48
.LBB28_46:
	testb	$1, 518(%rsp)
	jne	.LBB28_57
	jmp	.LBB28_56
.LBB28_47:
.Ltmp116:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 616(%rsp)
	movl	%eax, 624(%rsp)
	jmp	.LBB28_46
.LBB28_48:
	jmp	.LBB28_42
.LBB28_49:
.Ltmp119:
	movq	_ZN4core9panicking16panic_in_cleanup17h7e5529b9cf989fd4E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB28_50:
.Ltmp99:
	leaq	264(%rsp), %rdi
	callq	_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hb72293dedb880f3bE
.Ltmp100:
	jmp	.LBB28_21
.LBB28_51:
.Ltmp97:
	leaq	352(%rsp), %rdi
	callq	_ZN4core3ptr175drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$main..main..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h809f0dd2a6a294efE
.Ltmp98:
	jmp	.LBB28_50
.LBB28_52:
	testb	$1, 516(%rsp)
	jne	.LBB28_54
	jmp	.LBB28_11
.LBB28_53:
.Ltmp101:
	leaq	256(%rsp), %rdi
	callq	_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hca8e4048ba3a9c19E
.Ltmp102:
	jmp	.LBB28_52
.LBB28_54:
.Ltmp103:
	leaq	224(%rsp), %rdi
	callq	_ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h80a027c538bc9bbdE
.Ltmp104:
	jmp	.LBB28_11
.LBB28_55:
.Ltmp107:
	leaq	136(%rsp), %rdi
	callq	_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hc1009451bc8743ecE
.Ltmp108:
	jmp	.LBB28_46
.LBB28_56:
	testb	$1, 519(%rsp)
	jne	.LBB28_59
	jmp	.LBB28_58
.LBB28_57:
.Ltmp117:
	leaq	128(%rsp), %rdi
	callq	_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h1b3e628200fd9995E
.Ltmp118:
	jmp	.LBB28_56
.LBB28_58:
	movq	616(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB28_59:
	jmp	.LBB28_58
.Lfunc_end28:
	.size	_ZN3std6thread7Builder16spawn_unchecked_17h12a1c925eda3e3a6E, .Lfunc_end28-_ZN3std6thread7Builder16spawn_unchecked_17h12a1c925eda3e3a6E
	.cfi_endproc
	.section	.gcc_except_table._ZN3std6thread7Builder16spawn_unchecked_17h12a1c925eda3e3a6E,"a",@progbits
	.p2align	2, 0x0
GCC_except_table28:
.Lexception9:
	.byte	255
	.byte	155
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp70-.Lfunc_begin9
	.uleb128 .Ltmp75-.Ltmp70
	.uleb128 .Ltmp76-.Lfunc_begin9
	.byte	0
	.uleb128 .Ltmp77-.Lfunc_begin9
	.uleb128 .Ltmp78-.Ltmp77
	.uleb128 .Ltmp79-.Lfunc_begin9
	.byte	0
	.uleb128 .Ltmp105-.Lfunc_begin9
	.uleb128 .Ltmp106-.Ltmp105
	.uleb128 .Ltmp119-.Lfunc_begin9
	.byte	1
	.uleb128 .Ltmp80-.Lfunc_begin9
	.uleb128 .Ltmp81-.Ltmp80
	.uleb128 .Ltmp82-.Lfunc_begin9
	.byte	0
	.uleb128 .Ltmp83-.Lfunc_begin9
	.uleb128 .Ltmp84-.Ltmp83
	.uleb128 .Ltmp85-.Lfunc_begin9
	.byte	5
	.uleb128 .Ltmp84-.Lfunc_begin9
	.uleb128 .Ltmp86-.Ltmp84
	.byte	0
	.byte	0
	.uleb128 .Ltmp86-.Lfunc_begin9
	.uleb128 .Ltmp87-.Ltmp86
	.uleb128 .Ltmp96-.Lfunc_begin9
	.byte	0
	.uleb128 .Ltmp88-.Lfunc_begin9
	.uleb128 .Ltmp89-.Ltmp88
	.uleb128 .Ltmp90-.Lfunc_begin9
	.byte	0
	.uleb128 .Ltmp91-.Lfunc_begin9
	.uleb128 .Ltmp92-.Ltmp91
	.uleb128 .Ltmp93-.Lfunc_begin9
	.byte	5
	.uleb128 .Ltmp92-.Lfunc_begin9
	.uleb128 .Ltmp94-.Ltmp92
	.byte	0
	.byte	0
	.uleb128 .Ltmp94-.Lfunc_begin9
	.uleb128 .Ltmp95-.Ltmp94
	.uleb128 .Ltmp96-.Lfunc_begin9
	.byte	0
	.uleb128 .Ltmp109-.Lfunc_begin9
	.uleb128 .Ltmp110-.Ltmp109
	.uleb128 .Ltmp111-.Lfunc_begin9
	.byte	0
	.uleb128 .Ltmp112-.Lfunc_begin9
	.uleb128 .Ltmp113-.Ltmp112
	.uleb128 .Ltmp119-.Lfunc_begin9
	.byte	1
	.uleb128 .Ltmp114-.Lfunc_begin9
	.uleb128 .Ltmp115-.Ltmp114
	.uleb128 .Ltmp116-.Lfunc_begin9
	.byte	0
	.uleb128 .Ltmp115-.Lfunc_begin9
	.uleb128 .Ltmp99-.Ltmp115
	.byte	0
	.byte	0
	.uleb128 .Ltmp99-.Lfunc_begin9
	.uleb128 .Ltmp118-.Ltmp99
	.uleb128 .Ltmp119-.Lfunc_begin9
	.byte	1
	.uleb128 .Ltmp118-.Lfunc_begin9
	.uleb128 .Lfunc_end28-.Ltmp118
	.byte	0
	.byte	0
.Lcst_end9:
	.byte	127
	.byte	0
	.byte	0
	.byte	0
	.byte	127
	.byte	125
	.p2align	2, 0x0
.Lttbase3:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17hb175785fcfdf7200E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17hb175785fcfdf7200E,@function
_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17hb175785fcfdf7200E:
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception10
	subq	$376, %rsp
	.cfi_def_cfa_offset 384
	movq	%rdi, 48(%rsp)
	movb	$1, 276(%rsp)
	movb	$1, 277(%rsp)
	movb	$1, 278(%rsp)
	movq	32(%rdi), %rcx
	movl	$1, %eax
	lock		xaddq	%rax, (%rcx)
	movq	%rax, 344(%rsp)
	movabsq	$9223372036854775807, %rax
	cmpq	%rax, 344(%rsp)
	ja	.LBB29_2
	movq	48(%rsp), %rax
	movq	32(%rax), %rdi
.Ltmp120:
	movq	_ZN3std6thread7current11set_current17h8271487b37713e2cE@GOTPCREL(%rip), %rax
	callq	*%rax
.Ltmp121:
	movq	%rax, 40(%rsp)
	jmp	.LBB29_5
.LBB29_2:
	ud2
.LBB29_3:
	movq	48(%rsp), %rdi
	addq	$32, %rdi
.Ltmp143:
	callq	_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hca8e4048ba3a9c19E
.Ltmp144:
	jmp	.LBB29_26
.LBB29_4:
.Ltmp133:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 352(%rsp)
	movl	%eax, 360(%rsp)
	jmp	.LBB29_3
.LBB29_5:
	movq	40(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	56(%rsp), %rdx
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpq	$0, %rdx
	cmoveq	%rcx, %rax
	cmpq	$1, %rax
	jne	.LBB29_7
	movq	56(%rsp), %rax
	movq	%rax, 64(%rsp)
	leaq	.L__unnamed_18(%rip), %rax
	movq	%rax, 88(%rsp)
	movq	$1, 96(%rsp)
	movq	.L__unnamed_6(%rip), %rcx
	movq	.L__unnamed_6+8(%rip), %rax
	movq	%rcx, 120(%rsp)
	movq	%rax, 128(%rsp)
	leaq	136(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	$0, 112(%rsp)
.Ltmp134:
	leaq	79(%rsp), %rdi
	leaq	88(%rsp), %rsi
	callq	_ZN3std2io5Write9write_fmt17hde31b2909d30769fE
.Ltmp135:
	movq	%rax, 32(%rsp)
	jmp	.LBB29_10
.LBB29_7:
.Ltmp122:
	leaq	56(%rsp), %rdi
	callq	_ZN4core3ptr79drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..thread..Thread$GT$$GT$17haa8c5fd8362ee996E
.Ltmp123:
	jmp	.LBB29_14
.LBB29_8:
.Ltmp141:
	leaq	64(%rsp), %rdi
	callq	_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hca8e4048ba3a9c19E
.Ltmp142:
	jmp	.LBB29_3
.LBB29_9:
.Ltmp140:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 352(%rsp)
	movl	%eax, 360(%rsp)
	jmp	.LBB29_8
.LBB29_10:
	movq	32(%rsp), %rax
	movq	%rax, 80(%rsp)
.Ltmp136:
	leaq	80(%rsp), %rdi
	callq	_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17hcf3911dc5239d553E
.Ltmp137:
	jmp	.LBB29_11
.LBB29_11:
.Ltmp138:
	movq	_ZN3std3sys3pal4unix14abort_internal17h25c400c692191a4eE@GOTPCREL(%rip), %rax
	callq	*%rax
.Ltmp139:
	jmp	.LBB29_12
.LBB29_12:
	ud2
.LBB29_13:
.Ltmp151:
	movq	_ZN4core9panicking16panic_in_cleanup17h7e5529b9cf989fd4E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB29_14:
	movq	48(%rsp), %rdi
	addq	$32, %rdi
.Ltmp124:
	movq	_ZN3std6thread6Thread5cname17hca32b5d6c9df10e2E@GOTPCREL(%rip), %rax
	callq	*%rax
.Ltmp125:
	movq	%rdx, 16(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.LBB29_15
.LBB29_15:
	movq	16(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, 144(%rsp)
	movq	%rax, 152(%rsp)
	movq	144(%rsp), %rdx
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpq	$0, %rdx
	cmoveq	%rcx, %rax
	cmpq	$1, %rax
	jne	.LBB29_17
	movq	144(%rsp), %rdi
	movq	152(%rsp), %rsi
.Ltmp126:
	movq	_ZN3std3sys3pal4unix6thread6Thread8set_name17hce1fbddfa3b983c8E@GOTPCREL(%rip), %rax
	callq	*%rax
.Ltmp127:
	jmp	.LBB29_18
.LBB29_17:
	movq	48(%rsp), %rax
	movb	$0, 278(%rsp)
	movb	$0, 277(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, 208(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 216(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 224(%rsp)
	movq	24(%rax), %rax
	movq	%rax, 232(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 184(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 192(%rsp)
	movq	232(%rsp), %rax
	movq	%rax, 200(%rsp)
	movq	176(%rsp), %rax
	movq	%rax, 312(%rsp)
	movq	184(%rsp), %rax
	movq	%rax, 320(%rsp)
	movq	192(%rsp), %rax
	movq	%rax, 328(%rsp)
	movq	200(%rsp), %rax
	movq	%rax, 336(%rsp)
	movq	312(%rsp), %rax
	movq	%rax, 280(%rsp)
	movq	320(%rsp), %rax
	movq	%rax, 288(%rsp)
	movq	328(%rsp), %rax
	movq	%rax, 296(%rsp)
	movq	336(%rsp), %rax
	movq	%rax, 304(%rsp)
	leaq	_ZN3std9panicking3try7do_call17h396ad7617a27b438E(%rip), %rdi
	leaq	280(%rsp), %rsi
	leaq	_ZN3std9panicking3try8do_catch17h74cf656595facecdE(%rip), %rdx
	callq	__rust_try
	movl	%eax, 372(%rsp)
	cmpl	$0, 372(%rsp)
	je	.LBB29_19
	jmp	.LBB29_20
.LBB29_18:
	jmp	.LBB29_17
.LBB29_19:
	movq	$0, 160(%rsp)
	jmp	.LBB29_21
.LBB29_20:
	movq	280(%rsp), %rcx
	movq	288(%rsp), %rax
	movq	%rcx, 160(%rsp)
	movq	%rax, 168(%rsp)
.LBB29_21:
	movq	48(%rsp), %rax
	movq	160(%rsp), %rdx
	movq	168(%rsp), %rcx
	movq	%rdx, 248(%rsp)
	movq	%rcx, 256(%rsp)
	movq	$1, 240(%rsp)
	movq	40(%rax), %rdi
	addq	$24, %rdi
	movq	%rdi, 8(%rsp)
.Ltmp128:
	callq	_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17h61cfd786e87c4eafE
.Ltmp129:
	jmp	.LBB29_24
.LBB29_22:
	movq	8(%rsp), %rax
	movq	240(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	248(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	256(%rsp), %rcx
	movq	%rcx, 16(%rax)
	jmp	.LBB29_3
.LBB29_23:
.Ltmp130:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 352(%rsp)
	movl	%eax, 360(%rsp)
	jmp	.LBB29_22
.LBB29_24:
	movq	48(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	256(%rsp), %rdx
	movq	%rdx, 16(%rcx)
	movups	240(%rsp), %xmm0
	movups	%xmm0, (%rcx)
	movb	$0, 276(%rsp)
	movq	40(%rax), %rax
	movq	%rax, 264(%rsp)
.Ltmp131:
	leaq	264(%rsp), %rdi
	callq	_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hb72293dedb880f3bE
.Ltmp132:
	jmp	.LBB29_25
.LBB29_25:
	movq	48(%rsp), %rdi
	addq	$32, %rdi
	callq	_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hca8e4048ba3a9c19E
	addq	$376, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB29_26:
	.cfi_def_cfa_offset 384
	testb	$1, 278(%rsp)
	jne	.LBB29_28
.LBB29_27:
	testb	$1, 277(%rsp)
	jne	.LBB29_30
	jmp	.LBB29_29
.LBB29_28:
	movq	48(%rsp), %rdi
	addq	$48, %rdi
.Ltmp145:
	callq	_ZN4core3ptr150drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$main..main..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf99496eba855b7cdE
.Ltmp146:
	jmp	.LBB29_27
.LBB29_29:
	testb	$1, 276(%rsp)
	jne	.LBB29_32
	jmp	.LBB29_31
.LBB29_30:
.Ltmp147:
	movq	48(%rsp), %rdi
	callq	_ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h80a027c538bc9bbdE
.Ltmp148:
	jmp	.LBB29_29
.LBB29_31:
	movq	352(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB29_32:
	movq	48(%rsp), %rdi
	addq	$40, %rdi
.Ltmp149:
	callq	_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hb72293dedb880f3bE
.Ltmp150:
	jmp	.LBB29_31
.Lfunc_end29:
	.size	_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17hb175785fcfdf7200E, .Lfunc_end29-_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17hb175785fcfdf7200E
	.cfi_endproc
	.section	".gcc_except_table._ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17hb175785fcfdf7200E","a",@progbits
	.p2align	2, 0x0
GCC_except_table29:
.Lexception10:
	.byte	255
	.byte	155
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Ltmp120-.Lfunc_begin10
	.uleb128 .Ltmp121-.Ltmp120
	.uleb128 .Ltmp133-.Lfunc_begin10
	.byte	0
	.uleb128 .Ltmp143-.Lfunc_begin10
	.uleb128 .Ltmp144-.Ltmp143
	.uleb128 .Ltmp151-.Lfunc_begin10
	.byte	1
	.uleb128 .Ltmp134-.Lfunc_begin10
	.uleb128 .Ltmp135-.Ltmp134
	.uleb128 .Ltmp140-.Lfunc_begin10
	.byte	0
	.uleb128 .Ltmp122-.Lfunc_begin10
	.uleb128 .Ltmp123-.Ltmp122
	.uleb128 .Ltmp133-.Lfunc_begin10
	.byte	0
	.uleb128 .Ltmp141-.Lfunc_begin10
	.uleb128 .Ltmp142-.Ltmp141
	.uleb128 .Ltmp151-.Lfunc_begin10
	.byte	1
	.uleb128 .Ltmp136-.Lfunc_begin10
	.uleb128 .Ltmp139-.Ltmp136
	.uleb128 .Ltmp140-.Lfunc_begin10
	.byte	0
	.uleb128 .Ltmp139-.Lfunc_begin10
	.uleb128 .Ltmp124-.Ltmp139
	.byte	0
	.byte	0
	.uleb128 .Ltmp124-.Lfunc_begin10
	.uleb128 .Ltmp127-.Ltmp124
	.uleb128 .Ltmp133-.Lfunc_begin10
	.byte	0
	.uleb128 .Ltmp127-.Lfunc_begin10
	.uleb128 .Ltmp128-.Ltmp127
	.byte	0
	.byte	0
	.uleb128 .Ltmp128-.Lfunc_begin10
	.uleb128 .Ltmp129-.Ltmp128
	.uleb128 .Ltmp130-.Lfunc_begin10
	.byte	0
	.uleb128 .Ltmp131-.Lfunc_begin10
	.uleb128 .Ltmp132-.Ltmp131
	.uleb128 .Ltmp133-.Lfunc_begin10
	.byte	0
	.uleb128 .Ltmp132-.Lfunc_begin10
	.uleb128 .Ltmp145-.Ltmp132
	.byte	0
	.byte	0
	.uleb128 .Ltmp145-.Lfunc_begin10
	.uleb128 .Ltmp148-.Ltmp145
	.uleb128 .Ltmp151-.Lfunc_begin10
	.byte	1
	.uleb128 .Ltmp148-.Lfunc_begin10
	.uleb128 .Ltmp149-.Ltmp148
	.byte	0
	.byte	0
	.uleb128 .Ltmp149-.Lfunc_begin10
	.uleb128 .Ltmp150-.Ltmp149
	.uleb128 .Ltmp151-.Lfunc_begin10
	.byte	1
.Lcst_end10:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase4:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17hfb67dfaaaa7110f8E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17hfb67dfaaaa7110f8E,@function
_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17hfb67dfaaaa7110f8E:
	.cfi_startproc
	subq	$120, %rsp
	.cfi_def_cfa_offset 128
	movq	_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$3MIN17hfdf524cc8655dde6E@GOTPCREL(%rip), %rdi
	xorl	%esi, %esi
	callq	_ZN4core4sync6atomic11atomic_load17hcab15952108a8afdE
	movq	%rax, 8(%rsp)
	cmpq	$0, %rax
	jne	.LBB30_2
	leaq	48(%rsp), %rdi
	leaq	.L__unnamed_19(%rip), %rsi
	movl	$14, %edx
	callq	_ZN3std3env6var_os17h10d1e0efdfb52b0aE
	movabsq	$-9223372036854775808, %rdx
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpq	%rdx, 48(%rsp)
	cmoveq	%rcx, %rax
	cmpq	$0, %rax
	je	.LBB30_3
	jmp	.LBB30_4
.LBB30_2:
	movq	8(%rsp), %rax
	subq	$1, %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB30_8
.LBB30_3:
	movq	.L__unnamed_6(%rip), %rcx
	movq	.L__unnamed_6+8(%rip), %rax
	movq	%rcx, 32(%rsp)
	movq	%rax, 40(%rsp)
	jmp	.LBB30_5
.LBB30_4:
	movq	48(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 112(%rsp)
	leaq	96(%rsp), %rdi
	callq	_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h721bfdd443e4adffE
	movq	%rax, 32(%rsp)
	movq	%rdx, 40(%rsp)
	cmpq	$0, 32(%rsp)
	jne	.LBB30_6
.LBB30_5:
	movq	$2097152, 24(%rsp)
	jmp	.LBB30_7
.LBB30_6:
	movq	40(%rsp), %rax
	movq	%rax, 24(%rsp)
.LBB30_7:
	movq	24(%rsp), %rsi
	addq	$1, %rsi
	movq	_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$3MIN17hfdf524cc8655dde6E@GOTPCREL(%rip), %rdi
	xorl	%edx, %edx
	callq	_ZN4core4sync6atomic12atomic_store17hd9e5a6cf9f8ecf5cE
	movq	24(%rsp), %rax
	movq	%rax, 16(%rsp)
.LBB30_8:
	movq	16(%rsp), %rax
	addq	$120, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end30:
	.size	_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17hfb67dfaaaa7110f8E, .Lfunc_end30-_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17hfb67dfaaaa7110f8E
	.cfi_endproc

	.section	".text._ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h721bfdd443e4adffE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h721bfdd443e4adffE,@function
_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h721bfdd443e4adffE:
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception11
	subq	$120, %rsp
	.cfi_def_cfa_offset 128
	movq	%rdi, 8(%rsp)
	movq	8(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	16(%rdi), %rax
	movq	%rax, 24(%rsp)
	movq	24(%rsp), %rcx
	movq	16(%rsp), %rdi
	movl	$1, %edx
	movq	%rdx, %rsi
	callq	_ZN4core5slice3raw14from_raw_parts18precondition_check17h86d45fec051f0bc0E
.Ltmp152:
	movq	24(%rsp), %rdx
	movq	16(%rsp), %rsi
	movq	_ZN3std3sys6os_str5bytes5Slice6to_str17hdd431c78496aee09E@GOTPCREL(%rip), %rax
	leaq	64(%rsp), %rdi
	callq	*%rax
.Ltmp153:
	jmp	.LBB31_5
.LBB31_3:
.Ltmp157:
	movq	8(%rsp), %rdi
	callq	_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h4a127ee78b3859f4E
.Ltmp158:
	jmp	.LBB31_14
.LBB31_4:
.Ltmp156:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 104(%rsp)
	movl	%eax, 112(%rsp)
	jmp	.LBB31_3
.LBB31_5:
	cmpq	$0, 64(%rsp)
	jne	.LBB31_7
	movq	72(%rsp), %rcx
	movq	80(%rsp), %rax
	movq	%rcx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	48(%rsp), %rsi
	movq	56(%rsp), %rdx
.Ltmp154:
	leaq	88(%rsp), %rdi
	movl	$10, %ecx
	callq	_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17hd31b43320bd74feeE
.Ltmp155:
	jmp	.LBB31_8
.LBB31_7:
	movq	.L__unnamed_6(%rip), %rcx
	movq	.L__unnamed_6+8(%rip), %rax
	movq	%rcx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	.L__unnamed_6(%rip), %rcx
	movq	.L__unnamed_6+8(%rip), %rax
	movq	%rcx, 32(%rsp)
	movq	%rax, 40(%rsp)
	jmp	.LBB31_12
.LBB31_8:
	movb	88(%rsp), %al
	andb	$1, %al
	movzbl	%al, %eax
	cmpq	$0, %rax
	jne	.LBB31_10
	movq	96(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	$1, 32(%rsp)
	jmp	.LBB31_11
.LBB31_10:
	movq	.L__unnamed_6(%rip), %rcx
	movq	.L__unnamed_6+8(%rip), %rax
	movq	%rcx, 32(%rsp)
	movq	%rax, 40(%rsp)
.LBB31_11:
	jmp	.LBB31_12
.LBB31_12:
	movq	8(%rsp), %rdi
	callq	_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h4a127ee78b3859f4E
	movq	32(%rsp), %rax
	movq	40(%rsp), %rdx
	addq	$120, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB31_13:
	.cfi_def_cfa_offset 128
.Ltmp159:
	movq	_ZN4core9panicking16panic_in_cleanup17h7e5529b9cf989fd4E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB31_14:
	movq	104(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end31:
	.size	_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h721bfdd443e4adffE, .Lfunc_end31-_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h721bfdd443e4adffE
	.cfi_endproc
	.section	".gcc_except_table._ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h721bfdd443e4adffE","a",@progbits
	.p2align	2, 0x0
GCC_except_table31:
.Lexception11:
	.byte	255
	.byte	155
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Ltmp152-.Lfunc_begin11
	.uleb128 .Ltmp153-.Ltmp152
	.uleb128 .Ltmp156-.Lfunc_begin11
	.byte	0
	.uleb128 .Ltmp157-.Lfunc_begin11
	.uleb128 .Ltmp158-.Ltmp157
	.uleb128 .Ltmp159-.Lfunc_begin11
	.byte	1
	.uleb128 .Ltmp154-.Lfunc_begin11
	.uleb128 .Ltmp155-.Ltmp154
	.uleb128 .Ltmp156-.Lfunc_begin11
	.byte	0
	.uleb128 .Ltmp155-.Lfunc_begin11
	.uleb128 .Lfunc_end31-.Ltmp155
	.byte	0
	.byte	0
.Lcst_end11:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase5:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17he81034641578e0d9E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17he81034641578e0d9E,@function
_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17he81034641578e0d9E:
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception12
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movb	$1, 39(%rsp)
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movaps	%xmm1, 16(%rsp)
	movaps	%xmm0, (%rsp)
.Ltmp160:
	movq	%rsp, %rdi
	callq	_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h1725055e86653cefE
.Ltmp161:
	jmp	.LBB32_3
.LBB32_1:
	testb	$1, 39(%rsp)
	jne	.LBB32_6
	jmp	.LBB32_5
.LBB32_2:
.Ltmp164:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 40(%rsp)
	movl	%eax, 48(%rsp)
	jmp	.LBB32_1
.LBB32_3:
	movb	$0, 39(%rsp)
.Ltmp162:
	callq	_ZN3std3sys9backtrace28__rust_begin_short_backtrace17hbefb41b33d151608E
.Ltmp163:
	jmp	.LBB32_4
.LBB32_4:
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB32_5:
	.cfi_def_cfa_offset 64
	movq	40(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB32_6:
	jmp	.LBB32_5
.Lfunc_end32:
	.size	_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17he81034641578e0d9E, .Lfunc_end32-_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17he81034641578e0d9E
	.cfi_endproc
	.section	".gcc_except_table._ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17he81034641578e0d9E","a",@progbits
	.p2align	2, 0x0
GCC_except_table32:
.Lexception12:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Ltmp160-.Lfunc_begin12
	.uleb128 .Ltmp163-.Ltmp160
	.uleb128 .Ltmp164-.Lfunc_begin12
	.byte	0
	.uleb128 .Ltmp163-.Lfunc_begin12
	.uleb128 .Lfunc_end32-.Ltmp163
	.byte	0
	.byte	0
.Lcst_end12:
	.p2align	2, 0x0

	.section	".text._ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h5ddf8b9ac2854697E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h5ddf8b9ac2854697E,@function
_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h5ddf8b9ac2854697E:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	8(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	16(%rdi), %rax
	movq	%rax, 24(%rsp)
	movq	24(%rdi), %rax
	movq	%rax, 32(%rsp)
	leaq	8(%rsp), %rdi
	callq	*_ZN3std6thread9spawnhook15ChildSpawnHooks3run17h425aef56fe9844afE@GOTPCREL(%rip)
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end33:
	.size	_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h5ddf8b9ac2854697E, .Lfunc_end33-_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h5ddf8b9ac2854697E
	.cfi_endproc

	.section	.text._ZN3std9panicking3try7do_call17h396ad7617a27b438E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std9panicking3try7do_call17h396ad7617a27b438E,@function
_ZN3std9panicking3try7do_call17h396ad7617a27b438E:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	8(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	16(%rdi), %rax
	movq	%rax, 24(%rsp)
	movq	24(%rdi), %rax
	movq	%rax, 32(%rsp)
	leaq	8(%rsp), %rdi
	callq	_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h7ad0588e7cb4f6e9E
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end34:
	.size	_ZN3std9panicking3try7do_call17h396ad7617a27b438E, .Lfunc_end34-_ZN3std9panicking3try7do_call17h396ad7617a27b438E
	.cfi_endproc

	.section	.text._ZN3std9panicking3try7do_call17hfc92b566790b4a05E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std9panicking3try7do_call17hfc92b566790b4a05E,@function
_ZN3std9panicking3try7do_call17hfc92b566790b4a05E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN115_$LT$core..panic..unwind_safe..AssertUnwindSafe$LT$F$GT$$u20$as$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$GT$9call_once17h7e20a8fc62a066f9E
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end35:
	.size	_ZN3std9panicking3try7do_call17hfc92b566790b4a05E, .Lfunc_end35-_ZN3std9panicking3try7do_call17hfc92b566790b4a05E
	.cfi_endproc

	.section	.text._ZN3std9panicking3try8do_catch17h63d187bf7d18a465E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std9panicking3try8do_catch17h63d187bf7d18a465E,@function
_ZN3std9panicking3try8do_catch17h63d187bf7d18a465E:
.Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception13
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rsi, 8(%rsp)
	movq	%rdi, %rax
	movq	8(%rsp), %rdi
	movq	%rax, 16(%rsp)
.Ltmp165:
	movq	_ZN3std9panicking3try7cleanup17h500d8d6106d9439cE@GOTPCREL(%rip), %rax
	callq	*%rax
.Ltmp166:
	movq	%rdx, 24(%rsp)
	movq	%rax, 32(%rsp)
	jmp	.LBB36_2
.LBB36_1:
.Ltmp167:
	movq	_ZN4core9panicking19panic_cannot_unwind17h8c0d27499c4c90faE@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB36_2:
	movq	16(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	32(%rsp), %rdx
	movq	%rdx, (%rax)
	movq	%rcx, 8(%rax)
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end36:
	.size	_ZN3std9panicking3try8do_catch17h63d187bf7d18a465E, .Lfunc_end36-_ZN3std9panicking3try8do_catch17h63d187bf7d18a465E
	.cfi_endproc
	.section	.gcc_except_table._ZN3std9panicking3try8do_catch17h63d187bf7d18a465E,"a",@progbits
	.p2align	2, 0x0
GCC_except_table36:
.Lexception13:
	.byte	255
	.byte	155
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Ltmp165-.Lfunc_begin13
	.uleb128 .Ltmp166-.Ltmp165
	.uleb128 .Ltmp167-.Lfunc_begin13
	.byte	1
	.uleb128 .Ltmp166-.Lfunc_begin13
	.uleb128 .Lfunc_end36-.Ltmp166
	.byte	0
	.byte	0
.Lcst_end13:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase6:
	.byte	0
	.p2align	2, 0x0

	.section	.text._ZN3std9panicking3try8do_catch17h74cf656595facecdE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std9panicking3try8do_catch17h74cf656595facecdE,@function
_ZN3std9panicking3try8do_catch17h74cf656595facecdE:
.Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception14
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rsi, 8(%rsp)
	movq	%rdi, %rax
	movq	8(%rsp), %rdi
	movq	%rax, 16(%rsp)
.Ltmp168:
	movq	_ZN3std9panicking3try7cleanup17h500d8d6106d9439cE@GOTPCREL(%rip), %rax
	callq	*%rax
.Ltmp169:
	movq	%rdx, 24(%rsp)
	movq	%rax, 32(%rsp)
	jmp	.LBB37_2
.LBB37_1:
.Ltmp170:
	movq	_ZN4core9panicking19panic_cannot_unwind17h8c0d27499c4c90faE@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB37_2:
	movq	16(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	32(%rsp), %rdx
	movq	%rdx, (%rax)
	movq	%rcx, 8(%rax)
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end37:
	.size	_ZN3std9panicking3try8do_catch17h74cf656595facecdE, .Lfunc_end37-_ZN3std9panicking3try8do_catch17h74cf656595facecdE
	.cfi_endproc
	.section	.gcc_except_table._ZN3std9panicking3try8do_catch17h74cf656595facecdE,"a",@progbits
	.p2align	2, 0x0
GCC_except_table37:
.Lexception14:
	.byte	255
	.byte	155
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Ltmp168-.Lfunc_begin14
	.uleb128 .Ltmp169-.Ltmp168
	.uleb128 .Ltmp170-.Lfunc_begin14
	.byte	1
	.uleb128 .Ltmp169-.Lfunc_begin14
	.uleb128 .Lfunc_end37-.Ltmp169
	.byte	0
	.byte	0
.Lcst_end14:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase7:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN47_$LT$i32$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17hb138b5d92c24ee11E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN47_$LT$i32$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17hb138b5d92c24ee11E,@function
_ZN47_$LT$i32$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17hb138b5d92c24ee11E:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	%esi, %ecx
	addl	%ecx, %edi
	movl	%edi, 12(%rsp)
	seto	%al
	cmpl	$0, %ecx
	setl	%cl
	xorb	%cl, %al
	testb	$1, %al
	jne	.LBB38_2
	movl	12(%rsp), %eax
	movl	%eax, 20(%rsp)
	movl	$1, 16(%rsp)
	movl	20(%rsp), %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB38_2:
	.cfi_def_cfa_offset 32
	movl	.L__unnamed_20(%rip), %ecx
	movl	.L__unnamed_20+4(%rip), %eax
	movl	%ecx, 16(%rsp)
	movl	%eax, 20(%rsp)
	callq	_ZN4core4hint21unreachable_unchecked18precondition_check17h0ef8abda47f4589dE
	ud2
.Lfunc_end38:
	.size	_ZN47_$LT$i32$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17hb138b5d92c24ee11E, .Lfunc_end38-_ZN47_$LT$i32$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17hb138b5d92c24ee11E
	.cfi_endproc

	.section	".text._ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hd46428164d4df450E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hd46428164d4df450E,@function
_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hd46428164d4df450E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h05dbb7de421211b8E
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end39:
	.size	_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hd46428164d4df450E, .Lfunc_end39-_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hd46428164d4df450E
	.cfi_endproc

	.section	.text._ZN4core10intrinsics23is_val_statically_known17h7d3e50c01c1ac3cbE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core10intrinsics23is_val_statically_known17h7d3e50c01c1ac3cbE,@function
_ZN4core10intrinsics23is_val_statically_known17h7d3e50c01c1ac3cbE:
	.cfi_startproc
	xorl	%eax, %eax
	andb	$1, %al
	retq
.Lfunc_end40:
	.size	_ZN4core10intrinsics23is_val_statically_known17h7d3e50c01c1ac3cbE, .Lfunc_end40-_ZN4core10intrinsics23is_val_statically_known17h7d3e50c01c1ac3cbE
	.cfi_endproc

	.section	.text._ZN4core10intrinsics9cold_path17h412f73c510f00342E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core10intrinsics9cold_path17h412f73c510f00342E,@function
_ZN4core10intrinsics9cold_path17h412f73c510f00342E:
	.cfi_startproc
	retq
.Lfunc_end41:
	.size	_ZN4core10intrinsics9cold_path17h412f73c510f00342E, .Lfunc_end41-_ZN4core10intrinsics9cold_path17h412f73c510f00342E
	.cfi_endproc

	.section	.text._ZN4core3fmt5Write10write_char17hb16a39bc2a52fca6E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3fmt5Write10write_char17hb16a39bc2a52fca6E,@function
_ZN4core3fmt5Write10write_char17hb16a39bc2a52fca6E:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
	movl	%esi, 4(%rsp)
	leaq	20(%rsp), %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	memset@PLT
	movl	4(%rsp), %edi
	leaq	20(%rsp), %rsi
	movl	$4, %edx
	callq	_ZN4core4char7methods15encode_utf8_raw17he57cb0064cb8e13fE
	movq	8(%rsp), %rdi
	movq	%rax, %rsi
	callq	_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hc5aa0031f8765215E
	andb	$1, %al
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end42:
	.size	_ZN4core3fmt5Write10write_char17hb16a39bc2a52fca6E, .Lfunc_end42-_ZN4core3fmt5Write10write_char17hb16a39bc2a52fca6E
	.cfi_endproc

	.section	.text._ZN4core3fmt5Write9write_fmt17h341b6094eb861f0eE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3fmt5Write9write_fmt17h341b6094eb861f0eE,@function
_ZN4core3fmt5Write9write_fmt17h341b6094eb861f0eE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h41a8c79b927a4d3fE
	andb	$1, %al
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end43:
	.size	_ZN4core3fmt5Write9write_fmt17h341b6094eb861f0eE, .Lfunc_end43-_ZN4core3fmt5Write9write_fmt17h341b6094eb861f0eE
	.cfi_endproc

	.section	".text._ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17hd31b43320bd74feeE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17hd31b43320bd74feeE,@function
_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17hd31b43320bd74feeE:
	.cfi_startproc
	subq	$264, %rsp
	.cfi_def_cfa_offset 272
	movl	%ecx, 68(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%rsi, 80(%rsp)
	movq	%rdi, 88(%rsp)
	movq	%rdi, 96(%rsp)
	movl	$2, %eax
	cmpl	%ecx, %eax
	ja	.LBB44_2
	movl	68(%rsp), %eax
	cmpl	$36, %eax
	jbe	.LBB44_3
.LBB44_2:
	movl	68(%rsp), %edi
	leaq	.L__unnamed_21(%rip), %rsi
	movq	_ZN4core3num22from_ascii_radix_panic17h8ef2d7d913b07723E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB44_3:
	movq	72(%rsp), %rax
	cmpq	$0, %rax
	jne	.LBB44_5
	movq	88(%rsp), %rax
	movb	$0, 1(%rax)
	movb	$1, (%rax)
	jmp	.LBB44_6
.LBB44_5:
	movq	72(%rsp), %rax
	cmpq	$1, %rax
	je	.LBB44_7
	jmp	.LBB44_8
.LBB44_6:
	movq	96(%rsp), %rax
	addq	$264, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB44_7:
	.cfi_def_cfa_offset 272
	movq	80(%rsp), %rax
	movb	(%rax), %al
	movb	%al, 67(%rsp)
	subb	$43, %al
	je	.LBB44_9
	jmp	.LBB44_47
.LBB44_47:
	movb	67(%rsp), %al
	subb	$45, %al
	je	.LBB44_9
	jmp	.LBB44_8
.LBB44_8:
	movq	72(%rsp), %rax
	cmpq	$1, %rax
	jae	.LBB44_11
	jmp	.LBB44_10
.LBB44_9:
	movq	88(%rsp), %rax
	movb	$1, 1(%rax)
	movb	$1, (%rax)
	jmp	.LBB44_6
.LBB44_10:
	movl	68(%rsp), %eax
	movq	72(%rsp), %rcx
	movq	80(%rsp), %rdx
	movb	$1, 247(%rsp)
	movq	%rdx, 248(%rsp)
	movq	%rcx, 256(%rsp)
	movb	247(%rsp), %cl
	andb	$1, %cl
	movb	%cl, 111(%rsp)
	movq	248(%rsp), %rdx
	movq	256(%rsp), %rcx
	movq	%rdx, 112(%rsp)
	movq	%rcx, 120(%rsp)
	movq	$0, 144(%rsp)
	movl	%eax, 156(%rsp)
	movq	112(%rsp), %rdx
	movq	120(%rsp), %rcx
	movq	%rdx, 160(%rsp)
	movq	%rcx, 168(%rsp)
	cmpl	$16, %eax
	setbe	%al
	andb	$1, %al
	movb	%al, 231(%rsp)
	testb	$1, 231(%rsp)
	jne	.LBB44_23
	jmp	.LBB44_22
.LBB44_11:
	movq	80(%rsp), %rax
	movb	(%rax), %al
	movb	%al, 66(%rsp)
	subb	$43, %al
	je	.LBB44_12
	jmp	.LBB44_48
.LBB44_48:
	movb	66(%rsp), %al
	subb	$45, %al
	je	.LBB44_13
	jmp	.LBB44_10
.LBB44_12:
	movl	68(%rsp), %eax
	movq	72(%rsp), %rcx
	movq	80(%rsp), %rdx
	addq	$1, %rdx
	subq	$1, %rcx
	movb	$1, 247(%rsp)
	movq	%rdx, 248(%rsp)
	movq	%rcx, 256(%rsp)
	movb	247(%rsp), %cl
	andb	$1, %cl
	movb	%cl, 111(%rsp)
	movq	248(%rsp), %rdx
	movq	256(%rsp), %rcx
	movq	%rdx, 112(%rsp)
	movq	%rcx, 120(%rsp)
	movq	$0, 144(%rsp)
	movl	%eax, 156(%rsp)
	movq	112(%rsp), %rdx
	movq	120(%rsp), %rcx
	movq	%rdx, 160(%rsp)
	movq	%rcx, 168(%rsp)
	cmpl	$16, %eax
	setbe	%al
	andb	$1, %al
	movb	%al, 231(%rsp)
	testb	$1, 231(%rsp)
	jne	.LBB44_15
	jmp	.LBB44_14
.LBB44_13:
	movq	72(%rsp), %rax
	movq	80(%rsp), %rcx
	addq	$1, %rcx
	subq	$1, %rax
	movq	%rcx, 128(%rsp)
	movq	%rax, 136(%rsp)
	jmp	.LBB44_10
.LBB44_14:
	movb	$0, 155(%rsp)
	testb	$1, 155(%rsp)
	jne	.LBB44_17
	jmp	.LBB44_16
.LBB44_15:
	movq	168(%rsp), %rax
	movq	%rax, 232(%rsp)
	cmpq	$16, 232(%rsp)
	setbe	%al
	andb	$1, %al
	movb	%al, 155(%rsp)
	testb	$1, 155(%rsp)
	jne	.LBB44_20
	jmp	.LBB44_19
.LBB44_16:
	jmp	.LBB44_18
.LBB44_17:
	ud2
.LBB44_18:
	cmpq	$1, 120(%rsp)
	jae	.LBB44_29
	jmp	.LBB44_28
.LBB44_19:
	jmp	.LBB44_18
.LBB44_20:
	jmp	.LBB44_21
.LBB44_21:
	cmpq	$1, 120(%rsp)
	jae	.LBB44_44
	jmp	.LBB44_28
.LBB44_22:
	movb	$0, 155(%rsp)
	testb	$1, 155(%rsp)
	jne	.LBB44_25
	jmp	.LBB44_24
.LBB44_23:
	movq	168(%rsp), %rax
	movq	%rax, 232(%rsp)
	cmpq	$16, 232(%rsp)
	setbe	%al
	andb	$1, %al
	movb	%al, 155(%rsp)
	testb	$1, 155(%rsp)
	jne	.LBB44_27
	jmp	.LBB44_26
.LBB44_24:
	jmp	.LBB44_18
.LBB44_25:
	ud2
.LBB44_26:
	jmp	.LBB44_18
.LBB44_27:
	jmp	.LBB44_21
.LBB44_28:
	movq	88(%rsp), %rax
	movq	144(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movb	$0, (%rax)
	jmp	.LBB44_6
.LBB44_29:
	movl	68(%rsp), %ecx
	movq	112(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	112(%rsp), %rdx
	movq	120(%rsp), %rax
	addq	$1, %rdx
	movq	%rdx, 40(%rsp)
	subq	$1, %rax
	movq	%rax, 48(%rsp)
	movq	144(%rsp), %rax
	movl	%ecx, %ecx
	mulq	%rcx
	movq	%rax, 56(%rsp)
	seto	%al
	jo	.LBB44_31
	movq	56(%rsp), %rax
	movq	%rax, 192(%rsp)
	movq	$1, 184(%rsp)
	jmp	.LBB44_32
.LBB44_31:
	movq	.L__unnamed_6(%rip), %rcx
	movq	.L__unnamed_6+8(%rip), %rax
	movq	%rcx, 184(%rsp)
	movq	%rax, 192(%rsp)
.LBB44_32:
	movl	68(%rsp), %esi
	movq	32(%rsp), %rax
	movzbl	(%rax), %edi
	callq	_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h77e95079d3db9cdaE
	movl	%eax, 200(%rsp)
	movl	%edx, 204(%rsp)
	movl	200(%rsp), %eax
	cmpq	$0, %rax
	jne	.LBB44_34
	movq	88(%rsp), %rax
	movb	$1, 1(%rax)
	movb	$1, (%rax)
	jmp	.LBB44_35
.LBB44_34:
	movl	204(%rsp), %eax
	movq	%rax, 24(%rsp)
	cmpq	$0, 184(%rsp)
	je	.LBB44_36
	jmp	.LBB44_37
.LBB44_35:
	jmp	.LBB44_43
.LBB44_36:
	movq	88(%rsp), %rax
	movb	$2, 1(%rax)
	movb	$1, (%rax)
	jmp	.LBB44_35
.LBB44_37:
	movq	24(%rsp), %rcx
	movq	192(%rsp), %rax
	movq	%rax, 144(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 16(%rsp)
	addq	%rcx, %rax
	setb	%al
	jb	.LBB44_39
	movq	24(%rsp), %rcx
	movq	16(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, 216(%rsp)
	movq	$1, 208(%rsp)
	jmp	.LBB44_40
.LBB44_39:
	movq	.L__unnamed_6(%rip), %rcx
	movq	.L__unnamed_6+8(%rip), %rax
	movq	%rcx, 208(%rsp)
	movq	%rax, 216(%rsp)
.LBB44_40:
	cmpq	$0, 208(%rsp)
	jne	.LBB44_42
	movq	88(%rsp), %rax
	movb	$2, 1(%rax)
	movb	$1, (%rax)
	jmp	.LBB44_35
.LBB44_42:
	movq	48(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	216(%rsp), %rdx
	movq	%rdx, 144(%rsp)
	movq	%rcx, 112(%rsp)
	movq	%rax, 120(%rsp)
	jmp	.LBB44_18
.LBB44_43:
	jmp	.LBB44_6
.LBB44_44:
	movl	68(%rsp), %esi
	movq	112(%rsp), %rax
	movq	112(%rsp), %rdx
	movq	120(%rsp), %rcx
	addq	$1, %rdx
	movq	%rdx, (%rsp)
	subq	$1, %rcx
	movq	%rcx, 8(%rsp)
	movq	144(%rsp), %rcx
	movl	%esi, %edx
	imulq	%rdx, %rcx
	movq	%rcx, 144(%rsp)
	movzbl	(%rax), %edi
	callq	_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h77e95079d3db9cdaE
	movl	%eax, 176(%rsp)
	movl	%edx, 180(%rsp)
	movl	176(%rsp), %eax
	cmpq	$0, %rax
	jne	.LBB44_46
	movq	88(%rsp), %rax
	movb	$1, 1(%rax)
	movb	$1, (%rax)
	jmp	.LBB44_43
.LBB44_46:
	movq	8(%rsp), %rax
	movq	(%rsp), %rcx
	movl	180(%rsp), %esi
	movq	144(%rsp), %rdx
	movl	%esi, %esi
	addq	%rsi, %rdx
	movq	%rdx, 144(%rsp)
	movq	%rcx, 112(%rsp)
	movq	%rax, 120(%rsp)
	jmp	.LBB44_21
.Lfunc_end44:
	.size	_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17hd31b43320bd74feeE, .Lfunc_end44-_ZN4core3num23_$LT$impl$u20$usize$GT$16from_ascii_radix17hd31b43320bd74feeE
	.cfi_endproc

	.section	".text._ZN4core3ops8function5impls80_$LT$impl$u20$core..ops..function..FnOnce$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$9call_once17h4632697000fa6ca9E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function5impls80_$LT$impl$u20$core..ops..function..FnOnce$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$9call_once17h4632697000fa6ca9E,@function
_ZN4core3ops8function5impls80_$LT$impl$u20$core..ops..function..FnOnce$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$9call_once17h4632697000fa6ca9E:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, %rax
	movq	%rax, 8(%rsp)
	movl	%edx, 20(%rsp)
	movl	20(%rsp), %edx
	callq	_ZN4main4main28_$u7b$$u7b$closure$u7d$$u7d$17hc4cfbd6e61b8f1c9E
	movq	8(%rsp), %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end45:
	.size	_ZN4core3ops8function5impls80_$LT$impl$u20$core..ops..function..FnOnce$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$9call_once17h4632697000fa6ca9E, .Lfunc_end45-_ZN4core3ops8function5impls80_$LT$impl$u20$core..ops..function..FnOnce$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$9call_once17h4632697000fa6ca9E
	.cfi_endproc

	.section	".text._ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hdbc78aaa9d32bc57E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hdbc78aaa9d32bc57E,@function
_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hdbc78aaa9d32bc57E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN3std6thread7Builder16spawn_unchecked_28_$u7b$$u7b$closure$u7d$$u7d$17hb175785fcfdf7200E
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end46:
	.size	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hdbc78aaa9d32bc57E, .Lfunc_end46-_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hdbc78aaa9d32bc57E
	.cfi_endproc

	.section	".text._ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17he8a8f7d581b9789dE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17he8a8f7d581b9789dE,@function
_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17he8a8f7d581b9789dE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN4core3ops8function6FnOnce9call_once17h0e1d8bc107a26f96E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end47:
	.size	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17he8a8f7d581b9789dE, .Lfunc_end47-_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17he8a8f7d581b9789dE
	.cfi_endproc

	.section	.text._ZN4core3ops8function6FnOnce9call_once17h0e1d8bc107a26f96E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17h0e1d8bc107a26f96E,@function
_ZN4core3ops8function6FnOnce9call_once17h0e1d8bc107a26f96E:
.Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception15
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
.Ltmp171:
	leaq	8(%rsp), %rdi
	callq	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hc82691f650a01c78E
.Ltmp172:
	movl	%eax, 4(%rsp)
	jmp	.LBB48_3
.LBB48_1:
	movq	24(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB48_2:
.Ltmp173:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 24(%rsp)
	movl	%eax, 32(%rsp)
	jmp	.LBB48_1
.LBB48_3:
	movl	4(%rsp), %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end48:
	.size	_ZN4core3ops8function6FnOnce9call_once17h0e1d8bc107a26f96E, .Lfunc_end48-_ZN4core3ops8function6FnOnce9call_once17h0e1d8bc107a26f96E
	.cfi_endproc
	.section	.gcc_except_table._ZN4core3ops8function6FnOnce9call_once17h0e1d8bc107a26f96E,"a",@progbits
	.p2align	2, 0x0
GCC_except_table48:
.Lexception15:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Ltmp171-.Lfunc_begin15
	.uleb128 .Ltmp172-.Ltmp171
	.uleb128 .Ltmp173-.Lfunc_begin15
	.byte	0
	.uleb128 .Ltmp172-.Lfunc_begin15
	.uleb128 .Lfunc_end48-.Ltmp172
	.byte	0
	.byte	0
.Lcst_end15:
	.p2align	2, 0x0

	.section	.text._ZN4core3ops8function6FnOnce9call_once17h36122fd710992decE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17h36122fd710992decE,@function
_ZN4core3ops8function6FnOnce9call_once17h36122fd710992decE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4main14THREAD_COUNTER6__init17hef72959ae3e214a5E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end49:
	.size	_ZN4core3ops8function6FnOnce9call_once17h36122fd710992decE, .Lfunc_end49-_ZN4core3ops8function6FnOnce9call_once17h36122fd710992decE
	.cfi_endproc

	.section	.text._ZN4core3ops8function6FnOnce9call_once17h75e430a47bbd6684E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17h75e430a47bbd6684E,@function
_ZN4core3ops8function6FnOnce9call_once17h75e430a47bbd6684E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	_ZN4core6option15Option$LT$T$GT$4take17h015eefd4144108f5E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end50:
	.size	_ZN4core3ops8function6FnOnce9call_once17h75e430a47bbd6684E, .Lfunc_end50-_ZN4core3ops8function6FnOnce9call_once17h75e430a47bbd6684E
	.cfi_endproc

	.section	.text._ZN4core3ops8function6FnOnce9call_once17h7a2dd990091c7e53E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17h7a2dd990091c7e53E,@function
_ZN4core3ops8function6FnOnce9call_once17h7a2dd990091c7e53E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	*%rdi
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end51:
	.size	_ZN4core3ops8function6FnOnce9call_once17h7a2dd990091c7e53E, .Lfunc_end51-_ZN4core3ops8function6FnOnce9call_once17h7a2dd990091c7e53E
	.cfi_endproc

	.section	.text._ZN4core3ops8function6FnOnce9call_once17h9e379cd30c497967E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17h9e379cd30c497967E,@function
_ZN4core3ops8function6FnOnce9call_once17h9e379cd30c497967E:
.Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception16
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 16(%rsp)
	movq	16(%rsp), %rsi
.Ltmp174:
	leaq	15(%rsp), %rdi
	callq	_ZN4main14THREAD_COUNTER29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hec611af76fa17f89E
.Ltmp175:
	movq	%rax, (%rsp)
	jmp	.LBB52_3
.LBB52_1:
	movq	24(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB52_2:
.Ltmp176:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 24(%rsp)
	movl	%eax, 32(%rsp)
	jmp	.LBB52_1
.LBB52_3:
	movq	(%rsp), %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end52:
	.size	_ZN4core3ops8function6FnOnce9call_once17h9e379cd30c497967E, .Lfunc_end52-_ZN4core3ops8function6FnOnce9call_once17h9e379cd30c497967E
	.cfi_endproc
	.section	.gcc_except_table._ZN4core3ops8function6FnOnce9call_once17h9e379cd30c497967E,"a",@progbits
	.p2align	2, 0x0
GCC_except_table52:
.Lexception16:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Ltmp174-.Lfunc_begin16
	.uleb128 .Ltmp175-.Ltmp174
	.uleb128 .Ltmp176-.Lfunc_begin16
	.byte	0
	.uleb128 .Ltmp175-.Lfunc_begin16
	.uleb128 .Lfunc_end52-.Ltmp175
	.byte	0
	.byte	0
.Lcst_end16:
	.p2align	2, 0x0

	.section	.text._ZN4core3ops8function6FnOnce9call_once17hbe47309ccc392f27E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once17hbe47309ccc392f27E,@function
_ZN4core3ops8function6FnOnce9call_once17hbe47309ccc392f27E:
.Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception17
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
.Ltmp177:
	leaq	8(%rsp), %rdi
	callq	_ZN70_$LT$std..thread..Packet$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hacdf50245f3c7e86E
.Ltmp178:
	jmp	.LBB53_3
.LBB53_1:
	movq	24(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB53_2:
.Ltmp179:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 24(%rsp)
	movl	%eax, 32(%rsp)
	jmp	.LBB53_1
.LBB53_3:
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end53:
	.size	_ZN4core3ops8function6FnOnce9call_once17hbe47309ccc392f27E, .Lfunc_end53-_ZN4core3ops8function6FnOnce9call_once17hbe47309ccc392f27E
	.cfi_endproc
	.section	.gcc_except_table._ZN4core3ops8function6FnOnce9call_once17hbe47309ccc392f27E,"a",@progbits
	.p2align	2, 0x0
GCC_except_table53:
.Lexception17:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Ltmp177-.Lfunc_begin17
	.uleb128 .Ltmp178-.Ltmp177
	.uleb128 .Ltmp179-.Lfunc_begin17
	.byte	0
	.uleb128 .Ltmp178-.Lfunc_begin17
	.uleb128 .Lfunc_end53-.Ltmp178
	.byte	0
	.byte	0
.Lcst_end17:
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17h525aae72b147affcE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17h525aae72b147affcE,@function
_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17h525aae72b147affcE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	movb	(%rdi), %al
	subb	$3, %al
	jb	.LBB54_2
	jmp	.LBB54_1
.LBB54_1:
	movq	(%rsp), %rdi
	addq	$8, %rdi
	callq	_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h042cbc00b7026419E
.LBB54_2:
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end54:
	.size	_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17h525aae72b147affcE, .Lfunc_end54-_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17h525aae72b147affcE
	.cfi_endproc

	.section	".text._ZN4core3ptr103drop_in_place$LT$alloc..sync..Weak$LT$std..thread..scoped..ScopeData$C$$RF$alloc..alloc..Global$GT$$GT$17hd7d6eb84b494c299E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr103drop_in_place$LT$alloc..sync..Weak$LT$std..thread..scoped..ScopeData$C$$RF$alloc..alloc..Global$GT$$GT$17hd7d6eb84b494c299E,@function
_ZN4core3ptr103drop_in_place$LT$alloc..sync..Weak$LT$std..thread..scoped..ScopeData$C$$RF$alloc..alloc..Global$GT$$GT$17hd7d6eb84b494c299E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha658c30cada23ec1E
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end55:
	.size	_ZN4core3ptr103drop_in_place$LT$alloc..sync..Weak$LT$std..thread..scoped..ScopeData$C$$RF$alloc..alloc..Global$GT$$GT$17hd7d6eb84b494c299E, .Lfunc_end55-_ZN4core3ptr103drop_in_place$LT$alloc..sync..Weak$LT$std..thread..scoped..ScopeData$C$$RF$alloc..alloc..Global$GT$$GT$17hd7d6eb84b494c299E
	.cfi_endproc

	.section	".text._ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h1b3e628200fd9995E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h1b3e628200fd9995E,@function
_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h1b3e628200fd9995E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	movq	(%rdi), %rdx
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpq	$0, %rdx
	cmoveq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB56_2
.LBB56_1:
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.LBB56_2:
	.cfi_def_cfa_offset 16
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr75drop_in_place$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$17h0b94615f3cb4f9f0E
	jmp	.LBB56_1
.Lfunc_end56:
	.size	_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h1b3e628200fd9995E, .Lfunc_end56-_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h1b3e628200fd9995E
	.cfi_endproc

	.section	".text._ZN4core3ptr106drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..spawnhook..SpawnHook$GT$$GT$$GT$17h048c3e73f6f5f39eE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr106drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..spawnhook..SpawnHook$GT$$GT$$GT$17h048c3e73f6f5f39eE,@function
_ZN4core3ptr106drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..spawnhook..SpawnHook$GT$$GT$$GT$17h048c3e73f6f5f39eE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	movq	(%rdi), %rdx
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpq	$0, %rdx
	cmoveq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB57_2
.LBB57_1:
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.LBB57_2:
	.cfi_def_cfa_offset 16
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr78drop_in_place$LT$alloc..sync..Arc$LT$std..thread..spawnhook..SpawnHook$GT$$GT$17hb2f7716bcf1b251cE
	jmp	.LBB57_1
.Lfunc_end57:
	.size	_ZN4core3ptr106drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..spawnhook..SpawnHook$GT$$GT$$GT$17h048c3e73f6f5f39eE, .Lfunc_end57-_ZN4core3ptr106drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..spawnhook..SpawnHook$GT$$GT$$GT$17h048c3e73f6f5f39eE
	.cfi_endproc

	.section	".text._ZN4core3ptr108drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$$LP$$RP$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hdef6aa871ea36299E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr108drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$$LP$$RP$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hdef6aa871ea36299E,@function
_ZN4core3ptr108drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$$LP$$RP$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hdef6aa871ea36299E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h692ae909f4aaa8ceE
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end58:
	.size	_ZN4core3ptr108drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$$LP$$RP$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hdef6aa871ea36299E, .Lfunc_end58-_ZN4core3ptr108drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$$LP$$RP$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hdef6aa871ea36299E
	.cfi_endproc

	.section	".text._ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h84eed1902fbdc11dE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h84eed1902fbdc11dE,@function
_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h84eed1902fbdc11dE:
.Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception18
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, (%rsp)
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	8(%rdi), %rax
	movq	(%rax), %rax
	movq	%rax, 16(%rsp)
	cmpq	$0, %rax
	je	.LBB59_2
.Ltmp180:
	movq	16(%rsp), %rax
	movq	8(%rsp), %rdi
	callq	*%rax
.Ltmp181:
	jmp	.LBB59_2
.LBB59_2:
	movq	(%rsp), %rdi
	callq	_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9add8003a150a638E
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB59_3:
	.cfi_def_cfa_offset 48
.Ltmp183:
	movq	(%rsp), %rdi
	callq	_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9add8003a150a638E
.Ltmp184:
	jmp	.LBB59_6
.LBB59_4:
.Ltmp182:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 24(%rsp)
	movl	%eax, 32(%rsp)
	jmp	.LBB59_3
.LBB59_5:
.Ltmp185:
	movq	_ZN4core9panicking16panic_in_cleanup17h7e5529b9cf989fd4E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB59_6:
	movq	24(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end59:
	.size	_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h84eed1902fbdc11dE, .Lfunc_end59-_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h84eed1902fbdc11dE
	.cfi_endproc
	.section	".gcc_except_table._ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h84eed1902fbdc11dE","a",@progbits
	.p2align	2, 0x0
GCC_except_table59:
.Lexception18:
	.byte	255
	.byte	155
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Ltmp180-.Lfunc_begin18
	.uleb128 .Ltmp181-.Ltmp180
	.uleb128 .Ltmp182-.Lfunc_begin18
	.byte	0
	.uleb128 .Ltmp181-.Lfunc_begin18
	.uleb128 .Ltmp183-.Ltmp181
	.byte	0
	.byte	0
	.uleb128 .Ltmp183-.Lfunc_begin18
	.uleb128 .Ltmp184-.Ltmp183
	.uleb128 .Ltmp185-.Lfunc_begin18
	.byte	1
	.uleb128 .Ltmp184-.Lfunc_begin18
	.uleb128 .Lfunc_end59-.Ltmp184
	.byte	0
	.byte	0
.Lcst_end18:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase8:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr129drop_in_place$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$17h7a83b37504b9fd09E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr129drop_in_place$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$17h7a83b37504b9fd09E,@function
_ZN4core3ptr129drop_in_place$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$17h7a83b37504b9fd09E:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 16(%rsp)
	cmpq	$0, %rax
	je	.LBB60_2
	movq	16(%rsp), %rax
	movq	8(%rsp), %rdi
	callq	*%rax
.LBB60_2:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end60:
	.size	_ZN4core3ptr129drop_in_place$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$17h7a83b37504b9fd09E, .Lfunc_end60-_ZN4core3ptr129drop_in_place$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$17h7a83b37504b9fd09E
	.cfi_endproc

	.section	".text._ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h86f3fd8e6e4bec47E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h86f3fd8e6e4bec47E,@function
_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h86f3fd8e6e4bec47E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	movq	(%rdi), %rdx
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpq	$0, %rdx
	cmoveq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB61_2
.LBB61_1:
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.LBB61_2:
	.cfi_def_cfa_offset 16
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17h1ca612abffb05831E
	jmp	.LBB61_1
.Lfunc_end61:
	.size	_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h86f3fd8e6e4bec47E, .Lfunc_end61-_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h86f3fd8e6e4bec47E
	.cfi_endproc

	.section	.text._ZN4core3ptr13read_volatile18precondition_check17hfcde9ed258dd9f12E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr13read_volatile18precondition_check17hfcde9ed258dd9f12E,@function
_ZN4core3ptr13read_volatile18precondition_check17hfcde9ed258dd9f12E:
.Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception19
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rsi, %rcx
	movq	%rcx, 8(%rsp)
	movq	%rdi, 16(%rsp)
	movb	%dl, %al
	movb	%al, 31(%rsp)
	movq	%rcx, %rax
	shrq	%rax
	movabsq	$6148914691236517205, %rdx
	andq	%rdx, %rax
	subq	%rax, %rcx
	movabsq	$3689348814741910323, %rdx
	movq	%rcx, %rax
	andq	%rdx, %rax
	shrq	$2, %rcx
	andq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$4, %rcx
	addq	%rcx, %rax
	movabsq	$1085102592571150095, %rcx
	andq	%rcx, %rax
	movabsq	$72340172838076673, %rcx
	imulq	%rcx, %rax
	shrq	$56, %rax
	movl	%eax, 84(%rsp)
	cmpl	$1, 84(%rsp)
	jne	.LBB62_2
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	subq	$1, %rcx
	andq	%rcx, %rax
	cmpq	$0, %rax
	je	.LBB62_3
	jmp	.LBB62_4
.LBB62_2:
	leaq	.L__unnamed_22(%rip), %rax
	movq	%rax, 32(%rsp)
	movq	$1, 40(%rsp)
	movq	.L__unnamed_6(%rip), %rcx
	movq	.L__unnamed_6+8(%rip), %rax
	movq	%rcx, 64(%rsp)
	movq	%rax, 72(%rsp)
	movq	$8, 48(%rsp)
	movq	$0, 56(%rsp)
.Ltmp186:
	leaq	.L__unnamed_23(%rip), %rsi
	movq	_ZN4core9panicking9panic_fmt17h5764ee7030b7a73dE@GOTPCREL(%rip), %rax
	leaq	32(%rsp), %rdi
	callq	*%rax
.Ltmp187:
	jmp	.LBB62_10
.LBB62_3:
	movb	31(%rsp), %al
	testb	$1, %al
	jne	.LBB62_6
	jmp	.LBB62_5
.LBB62_4:
	jmp	.LBB62_7
.LBB62_5:
	movq	16(%rsp), %rax
	cmpq	$0, %rax
	sete	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB62_8
	jmp	.LBB62_7
.LBB62_6:
	jmp	.LBB62_8
.LBB62_7:
	leaq	.L__unnamed_24(%rip), %rdi
	movq	_ZN4core9panicking14panic_nounwind17hbbbf5b15de703440E@GOTPCREL(%rip), %rax
	movl	$110, %esi
	callq	*%rax
.LBB62_8:
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB62_9:
	.cfi_def_cfa_offset 96
.Ltmp188:
	movq	_ZN4core9panicking19panic_cannot_unwind17h8c0d27499c4c90faE@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB62_10:
	ud2
.Lfunc_end62:
	.size	_ZN4core3ptr13read_volatile18precondition_check17hfcde9ed258dd9f12E, .Lfunc_end62-_ZN4core3ptr13read_volatile18precondition_check17hfcde9ed258dd9f12E
	.cfi_endproc
	.section	.gcc_except_table._ZN4core3ptr13read_volatile18precondition_check17hfcde9ed258dd9f12E,"a",@progbits
	.p2align	2, 0x0
GCC_except_table62:
.Lexception19:
	.byte	255
	.byte	155
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1
	.uleb128 .Lcst_end19-.Lcst_begin19
.Lcst_begin19:
	.uleb128 .Ltmp186-.Lfunc_begin19
	.uleb128 .Ltmp187-.Ltmp186
	.uleb128 .Ltmp188-.Lfunc_begin19
	.byte	1
	.uleb128 .Ltmp187-.Lfunc_begin19
	.uleb128 .Lfunc_end62-.Ltmp187
	.byte	0
	.byte	0
.Lcst_end19:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase9:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr150drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$main..main..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf99496eba855b7cdE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr150drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$main..main..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf99496eba855b7cdE,@function
_ZN4core3ptr150drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$main..main..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf99496eba855b7cdE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN104_$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8b3417af603191d7E
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end63:
	.size	_ZN4core3ptr150drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$main..main..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf99496eba855b7cdE, .Lfunc_end63-_ZN4core3ptr150drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$main..main..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf99496eba855b7cdE
	.cfi_endproc

	.section	".text._ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17hab2e4a2a4f2117c0E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17hab2e4a2a4f2117c0E,@function
_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17hab2e4a2a4f2117c0E:
.Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception20
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, (%rsp)
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	8(%rdi), %rax
	movq	(%rax), %rax
	movq	%rax, 16(%rsp)
	cmpq	$0, %rax
	je	.LBB64_2
.Ltmp189:
	movq	16(%rsp), %rax
	movq	8(%rsp), %rdi
	callq	*%rax
.Ltmp190:
	jmp	.LBB64_2
.LBB64_2:
	movq	(%rsp), %rdi
	callq	_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h30ae323a73e30025E
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB64_3:
	.cfi_def_cfa_offset 48
.Ltmp192:
	movq	(%rsp), %rdi
	callq	_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h30ae323a73e30025E
.Ltmp193:
	jmp	.LBB64_6
.LBB64_4:
.Ltmp191:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 24(%rsp)
	movl	%eax, 32(%rsp)
	jmp	.LBB64_3
.LBB64_5:
.Ltmp194:
	movq	_ZN4core9panicking16panic_in_cleanup17h7e5529b9cf989fd4E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB64_6:
	movq	24(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end64:
	.size	_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17hab2e4a2a4f2117c0E, .Lfunc_end64-_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17hab2e4a2a4f2117c0E
	.cfi_endproc
	.section	".gcc_except_table._ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17hab2e4a2a4f2117c0E","a",@progbits
	.p2align	2, 0x0
GCC_except_table64:
.Lexception20:
	.byte	255
	.byte	155
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1
	.uleb128 .Lcst_end20-.Lcst_begin20
.Lcst_begin20:
	.uleb128 .Ltmp189-.Lfunc_begin20
	.uleb128 .Ltmp190-.Ltmp189
	.uleb128 .Ltmp191-.Lfunc_begin20
	.byte	0
	.uleb128 .Ltmp190-.Lfunc_begin20
	.uleb128 .Ltmp192-.Ltmp190
	.byte	0
	.byte	0
	.uleb128 .Ltmp192-.Lfunc_begin20
	.uleb128 .Ltmp193-.Ltmp192
	.uleb128 .Ltmp194-.Lfunc_begin20
	.byte	1
	.uleb128 .Ltmp193-.Lfunc_begin20
	.uleb128 .Lfunc_end64-.Ltmp193
	.byte	0
	.byte	0
.Lcst_end20:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase10:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17h61cfd786e87c4eafE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17h61cfd786e87c4eafE,@function
_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17h61cfd786e87c4eafE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	cmpq	$0, (%rdi)
	jne	.LBB65_2
.LBB65_1:
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.LBB65_2:
	.cfi_def_cfa_offset 16
	movq	(%rsp), %rdi
	addq	$8, %rdi
	callq	_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h86f3fd8e6e4bec47E
	jmp	.LBB65_1
.Lfunc_end65:
	.size	_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17h61cfd786e87c4eafE, .Lfunc_end65-_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17h61cfd786e87c4eafE
	.cfi_endproc

	.section	".text._ZN4core3ptr164drop_in_place$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$u5d$$GT$17h617a0ac20e17550fE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr164drop_in_place$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$u5d$$GT$17h617a0ac20e17550fE,@function
_ZN4core3ptr164drop_in_place$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$u5d$$GT$17h617a0ac20e17550fE:
.Lfunc_begin21:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception21
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, (%rsp)
	movq	%rsi, 8(%rsp)
	movq	$0, 16(%rsp)
.LBB66_1:
	movq	8(%rsp), %rax
	cmpq	%rax, 16(%rsp)
	je	.LBB66_3
	movq	(%rsp), %rdi
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rdi
	incq	%rax
	movq	%rax, 16(%rsp)
.Ltmp195:
	callq	_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17hab2e4a2a4f2117c0E
.Ltmp196:
	jmp	.LBB66_1
.LBB66_3:
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB66_4:
	.cfi_def_cfa_offset 48
	movq	8(%rsp), %rax
	cmpq	%rax, 16(%rsp)
	je	.LBB66_7
	jmp	.LBB66_6
.LBB66_5:
.Ltmp197:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 24(%rsp)
	movl	%eax, 32(%rsp)
	jmp	.LBB66_4
.LBB66_6:
	movq	(%rsp), %rdi
	movq	16(%rsp), %rax
	movq	%rax, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rdi
	incq	%rax
	movq	%rax, 16(%rsp)
.Ltmp198:
	callq	_ZN4core3ptr154drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$17hab2e4a2a4f2117c0E
.Ltmp199:
	jmp	.LBB66_4
.LBB66_7:
	movq	24(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB66_8:
.Ltmp200:
	movq	_ZN4core9panicking16panic_in_cleanup17h7e5529b9cf989fd4E@GOTPCREL(%rip), %rax
	callq	*%rax
.Lfunc_end66:
	.size	_ZN4core3ptr164drop_in_place$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$u5d$$GT$17h617a0ac20e17550fE, .Lfunc_end66-_ZN4core3ptr164drop_in_place$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$u5d$$GT$17h617a0ac20e17550fE
	.cfi_endproc
	.section	".gcc_except_table._ZN4core3ptr164drop_in_place$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$u5d$$GT$17h617a0ac20e17550fE","a",@progbits
	.p2align	2, 0x0
GCC_except_table66:
.Lexception21:
	.byte	255
	.byte	155
	.uleb128 .Lttbase11-.Lttbaseref11
.Lttbaseref11:
	.byte	1
	.uleb128 .Lcst_end21-.Lcst_begin21
.Lcst_begin21:
	.uleb128 .Ltmp195-.Lfunc_begin21
	.uleb128 .Ltmp196-.Ltmp195
	.uleb128 .Ltmp197-.Lfunc_begin21
	.byte	0
	.uleb128 .Ltmp198-.Lfunc_begin21
	.uleb128 .Ltmp199-.Ltmp198
	.uleb128 .Ltmp200-.Lfunc_begin21
	.byte	1
	.uleb128 .Ltmp199-.Lfunc_begin21
	.uleb128 .Lfunc_end66-.Ltmp199
	.byte	0
	.byte	0
.Lcst_end21:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase11:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr175drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$main..main..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h809f0dd2a6a294efE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr175drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$main..main..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h809f0dd2a6a294efE,@function
_ZN4core3ptr175drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$main..main..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h809f0dd2a6a294efE:
.Lfunc_begin22:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception22
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, (%rsp)
	addq	$32, %rdi
.Ltmp201:
	callq	_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hca8e4048ba3a9c19E
.Ltmp202:
	jmp	.LBB67_3
.LBB67_1:
	movq	(%rsp), %rdi
	addq	$48, %rdi
.Ltmp204:
	callq	_ZN4core3ptr150drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$main..main..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf99496eba855b7cdE
.Ltmp205:
	jmp	.LBB67_4
.LBB67_2:
.Ltmp203:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 8(%rsp)
	movl	%eax, 16(%rsp)
	jmp	.LBB67_1
.LBB67_3:
	movq	(%rsp), %rdi
	addq	$48, %rdi
.Ltmp206:
	callq	_ZN4core3ptr150drop_in_place$LT$std..thread..Builder..spawn_unchecked_..MaybeDangling$LT$main..main..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf99496eba855b7cdE
.Ltmp207:
	jmp	.LBB67_6
.LBB67_4:
.Ltmp209:
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h80a027c538bc9bbdE
.Ltmp210:
	jmp	.LBB67_7
.LBB67_5:
.Ltmp208:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 8(%rsp)
	movl	%eax, 16(%rsp)
	jmp	.LBB67_4
.LBB67_6:
.Ltmp211:
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h80a027c538bc9bbdE
.Ltmp212:
	jmp	.LBB67_9
.LBB67_7:
	movq	(%rsp), %rdi
	addq	$40, %rdi
.Ltmp214:
	callq	_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hb72293dedb880f3bE
.Ltmp215:
	jmp	.LBB67_11
.LBB67_8:
.Ltmp213:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 8(%rsp)
	movl	%eax, 16(%rsp)
	jmp	.LBB67_7
.LBB67_9:
	movq	(%rsp), %rdi
	addq	$40, %rdi
	callq	_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hb72293dedb880f3bE
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB67_10:
	.cfi_def_cfa_offset 32
.Ltmp216:
	movq	_ZN4core9panicking16panic_in_cleanup17h7e5529b9cf989fd4E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB67_11:
	movq	8(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end67:
	.size	_ZN4core3ptr175drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$main..main..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h809f0dd2a6a294efE, .Lfunc_end67-_ZN4core3ptr175drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$main..main..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h809f0dd2a6a294efE
	.cfi_endproc
	.section	".gcc_except_table._ZN4core3ptr175drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$main..main..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h809f0dd2a6a294efE","a",@progbits
	.p2align	2, 0x0
GCC_except_table67:
.Lexception22:
	.byte	255
	.byte	155
	.uleb128 .Lttbase12-.Lttbaseref12
.Lttbaseref12:
	.byte	1
	.uleb128 .Lcst_end22-.Lcst_begin22
.Lcst_begin22:
	.uleb128 .Ltmp201-.Lfunc_begin22
	.uleb128 .Ltmp202-.Ltmp201
	.uleb128 .Ltmp203-.Lfunc_begin22
	.byte	0
	.uleb128 .Ltmp204-.Lfunc_begin22
	.uleb128 .Ltmp205-.Ltmp204
	.uleb128 .Ltmp216-.Lfunc_begin22
	.byte	1
	.uleb128 .Ltmp206-.Lfunc_begin22
	.uleb128 .Ltmp207-.Ltmp206
	.uleb128 .Ltmp208-.Lfunc_begin22
	.byte	0
	.uleb128 .Ltmp209-.Lfunc_begin22
	.uleb128 .Ltmp210-.Ltmp209
	.uleb128 .Ltmp216-.Lfunc_begin22
	.byte	1
	.uleb128 .Ltmp211-.Lfunc_begin22
	.uleb128 .Ltmp212-.Ltmp211
	.uleb128 .Ltmp213-.Lfunc_begin22
	.byte	0
	.uleb128 .Ltmp214-.Lfunc_begin22
	.uleb128 .Ltmp215-.Ltmp214
	.uleb128 .Ltmp216-.Lfunc_begin22
	.byte	1
	.uleb128 .Ltmp215-.Lfunc_begin22
	.uleb128 .Lfunc_end67-.Ltmp215
	.byte	0
	.byte	0
.Lcst_end22:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase12:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr177drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h4d031249356bf0e1E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr177drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h4d031249356bf0e1E,@function
_ZN4core3ptr177drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h4d031249356bf0e1E:
.Lfunc_begin23:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception23
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, (%rsp)
.Ltmp217:
	callq	_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h151c8ee94cbcc689E
.Ltmp218:
	jmp	.LBB68_3
.LBB68_1:
.Ltmp220:
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr184drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h55820ff6e4c0b9c9E
.Ltmp221:
	jmp	.LBB68_5
.LBB68_2:
.Ltmp219:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 8(%rsp)
	movl	%eax, 16(%rsp)
	jmp	.LBB68_1
.LBB68_3:
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr184drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h55820ff6e4c0b9c9E
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB68_4:
	.cfi_def_cfa_offset 32
.Ltmp222:
	movq	_ZN4core9panicking16panic_in_cleanup17h7e5529b9cf989fd4E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB68_5:
	movq	8(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end68:
	.size	_ZN4core3ptr177drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h4d031249356bf0e1E, .Lfunc_end68-_ZN4core3ptr177drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h4d031249356bf0e1E
	.cfi_endproc
	.section	".gcc_except_table._ZN4core3ptr177drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h4d031249356bf0e1E","a",@progbits
	.p2align	2, 0x0
GCC_except_table68:
.Lexception23:
	.byte	255
	.byte	155
	.uleb128 .Lttbase13-.Lttbaseref13
.Lttbaseref13:
	.byte	1
	.uleb128 .Lcst_end23-.Lcst_begin23
.Lcst_begin23:
	.uleb128 .Ltmp217-.Lfunc_begin23
	.uleb128 .Ltmp218-.Ltmp217
	.uleb128 .Ltmp219-.Lfunc_begin23
	.byte	0
	.uleb128 .Ltmp220-.Lfunc_begin23
	.uleb128 .Ltmp221-.Ltmp220
	.uleb128 .Ltmp222-.Lfunc_begin23
	.byte	1
	.uleb128 .Ltmp221-.Lfunc_begin23
	.uleb128 .Lfunc_end68-.Ltmp221
	.byte	0
	.byte	0
.Lcst_end23:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase13:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr184drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h55820ff6e4c0b9c9E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr184drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h55820ff6e4c0b9c9E,@function
_ZN4core3ptr184drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h55820ff6e4c0b9c9E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e6253e5046a6bcbE
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end69:
	.size	_ZN4core3ptr184drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h55820ff6e4c0b9c9E, .Lfunc_end69-_ZN4core3ptr184drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h55820ff6e4c0b9c9E
	.cfi_endproc

	.section	".text._ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17ha624d029d45e061aE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17ha624d029d45e061aE,@function
_ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17ha624d029d45e061aE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17h61cfd786e87c4eafE
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end70:
	.size	_ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17ha624d029d45e061aE, .Lfunc_end70-_ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17ha624d029d45e061aE
	.cfi_endproc

	.section	".text._ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hca8e4048ba3a9c19E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hca8e4048ba3a9c19E,@function
_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hca8e4048ba3a9c19E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ptr85drop_in_place$LT$core..pin..Pin$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$$GT$17h748fff76fc1fc023E
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end71:
	.size	_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hca8e4048ba3a9c19E, .Lfunc_end71-_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hca8e4048ba3a9c19E
	.cfi_endproc

	.section	".text._ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb3e718cf3ef27549E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb3e718cf3ef27549E,@function
_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb3e718cf3ef27549E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4c7f98b498dd06adE
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end72:
	.size	_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb3e718cf3ef27549E, .Lfunc_end72-_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb3e718cf3ef27549E
	.cfi_endproc

	.section	".text._ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2792d9f5fd648efbE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2792d9f5fd648efbE,@function
_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2792d9f5fd648efbE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hc28739086750b956E
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end73:
	.size	_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2792d9f5fd648efbE, .Lfunc_end73-_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2792d9f5fd648efbE
	.cfi_endproc

	.section	".text._ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17h5354ba439f38100cE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17h5354ba439f38100cE,@function
_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17h5354ba439f38100cE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$$GT$17h84eed1902fbdc11dE
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end74:
	.size	_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17h5354ba439f38100cE, .Lfunc_end74-_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17h5354ba439f38100cE
	.cfi_endproc

	.section	".text._ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4c7f98b498dd06adE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4c7f98b498dd06adE,@function
_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4c7f98b498dd06adE:
.Lfunc_begin24:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception24
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, (%rsp)
.Ltmp223:
	movq	_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdafbdf76617cbe5cE@GOTPCREL(%rip), %rax
	callq	*%rax
.Ltmp224:
	jmp	.LBB75_3
.LBB75_1:
.Ltmp226:
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hb48f42092172c4e2E
.Ltmp227:
	jmp	.LBB75_5
.LBB75_2:
.Ltmp225:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 8(%rsp)
	movl	%eax, 16(%rsp)
	jmp	.LBB75_1
.LBB75_3:
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hb48f42092172c4e2E
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB75_4:
	.cfi_def_cfa_offset 32
.Ltmp228:
	movq	_ZN4core9panicking16panic_in_cleanup17h7e5529b9cf989fd4E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB75_5:
	movq	8(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end75:
	.size	_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4c7f98b498dd06adE, .Lfunc_end75-_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4c7f98b498dd06adE
	.cfi_endproc
	.section	".gcc_except_table._ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4c7f98b498dd06adE","a",@progbits
	.p2align	2, 0x0
GCC_except_table75:
.Lexception24:
	.byte	255
	.byte	155
	.uleb128 .Lttbase14-.Lttbaseref14
.Lttbaseref14:
	.byte	1
	.uleb128 .Lcst_end24-.Lcst_begin24
.Lcst_begin24:
	.uleb128 .Ltmp223-.Lfunc_begin24
	.uleb128 .Ltmp224-.Ltmp223
	.uleb128 .Ltmp225-.Lfunc_begin24
	.byte	0
	.uleb128 .Ltmp226-.Lfunc_begin24
	.uleb128 .Ltmp227-.Ltmp226
	.uleb128 .Ltmp228-.Lfunc_begin24
	.byte	1
	.uleb128 .Ltmp227-.Lfunc_begin24
	.uleb128 .Lfunc_end75-.Ltmp227
	.byte	0
	.byte	0
.Lcst_end24:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase14:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h4a127ee78b3859f4E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h4a127ee78b3859f4E,@function
_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h4a127ee78b3859f4E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ptr49drop_in_place$LT$std..sys..os_str..bytes..Buf$GT$17h11c18223b18a72faE
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end76:
	.size	_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h4a127ee78b3859f4E, .Lfunc_end76-_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h4a127ee78b3859f4E
	.cfi_endproc

	.section	".text._ZN4core3ptr49drop_in_place$LT$std..sys..os_str..bytes..Buf$GT$17h11c18223b18a72faE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr49drop_in_place$LT$std..sys..os_str..bytes..Buf$GT$17h11c18223b18a72faE,@function
_ZN4core3ptr49drop_in_place$LT$std..sys..os_str..bytes..Buf$GT$17h11c18223b18a72faE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h4c7f98b498dd06adE
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end77:
	.size	_ZN4core3ptr49drop_in_place$LT$std..sys..os_str..bytes..Buf$GT$17h11c18223b18a72faE, .Lfunc_end77-_ZN4core3ptr49drop_in_place$LT$std..sys..os_str..bytes..Buf$GT$17h11c18223b18a72faE
	.cfi_endproc

	.section	".text._ZN4core3ptr51drop_in_place$LT$std..thread..scoped..ScopeData$GT$17h982ad9fef5c2018fE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr51drop_in_place$LT$std..thread..scoped..ScopeData$GT$17h982ad9fef5c2018fE,@function
_ZN4core3ptr51drop_in_place$LT$std..thread..scoped..ScopeData$GT$17h982ad9fef5c2018fE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hca8e4048ba3a9c19E
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end78:
	.size	_ZN4core3ptr51drop_in_place$LT$std..thread..scoped..ScopeData$GT$17h982ad9fef5c2018fE, .Lfunc_end78-_ZN4core3ptr51drop_in_place$LT$std..thread..scoped..ScopeData$GT$17h982ad9fef5c2018fE
	.cfi_endproc

	.section	".text._ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hb48f42092172c4e2E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hb48f42092172c4e2E,@function
_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hb48f42092172c4e2E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	*_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha3d01cf7b1872167E@GOTPCREL(%rip)
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end79:
	.size	_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hb48f42092172c4e2E, .Lfunc_end79-_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17hb48f42092172c4e2E
	.cfi_endproc

	.section	".text._ZN4core3ptr55drop_in_place$LT$std..thread..spawnhook..SpawnHooks$GT$17h65c306b178d3a3a6E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr55drop_in_place$LT$std..thread..spawnhook..SpawnHooks$GT$17h65c306b178d3a3a6E,@function
_ZN4core3ptr55drop_in_place$LT$std..thread..spawnhook..SpawnHooks$GT$17h65c306b178d3a3a6E:
.Lfunc_begin25:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception25
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, (%rsp)
.Ltmp229:
	movq	_ZN76_$LT$std..thread..spawnhook..SpawnHooks$u20$as$u20$core..ops..drop..Drop$GT$4drop17h773d104eda8c2034E@GOTPCREL(%rip), %rax
	callq	*%rax
.Ltmp230:
	jmp	.LBB80_3
.LBB80_1:
.Ltmp232:
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr106drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..spawnhook..SpawnHook$GT$$GT$$GT$17h048c3e73f6f5f39eE
.Ltmp233:
	jmp	.LBB80_5
.LBB80_2:
.Ltmp231:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 8(%rsp)
	movl	%eax, 16(%rsp)
	jmp	.LBB80_1
.LBB80_3:
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr106drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..spawnhook..SpawnHook$GT$$GT$$GT$17h048c3e73f6f5f39eE
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB80_4:
	.cfi_def_cfa_offset 32
.Ltmp234:
	movq	_ZN4core9panicking16panic_in_cleanup17h7e5529b9cf989fd4E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB80_5:
	movq	8(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end80:
	.size	_ZN4core3ptr55drop_in_place$LT$std..thread..spawnhook..SpawnHooks$GT$17h65c306b178d3a3a6E, .Lfunc_end80-_ZN4core3ptr55drop_in_place$LT$std..thread..spawnhook..SpawnHooks$GT$17h65c306b178d3a3a6E
	.cfi_endproc
	.section	".gcc_except_table._ZN4core3ptr55drop_in_place$LT$std..thread..spawnhook..SpawnHooks$GT$17h65c306b178d3a3a6E","a",@progbits
	.p2align	2, 0x0
GCC_except_table80:
.Lexception25:
	.byte	255
	.byte	155
	.uleb128 .Lttbase15-.Lttbaseref15
.Lttbaseref15:
	.byte	1
	.uleb128 .Lcst_end25-.Lcst_begin25
.Lcst_begin25:
	.uleb128 .Ltmp229-.Lfunc_begin25
	.uleb128 .Ltmp230-.Ltmp229
	.uleb128 .Ltmp231-.Lfunc_begin25
	.byte	0
	.uleb128 .Ltmp232-.Lfunc_begin25
	.uleb128 .Ltmp233-.Ltmp232
	.uleb128 .Ltmp234-.Lfunc_begin25
	.byte	1
	.uleb128 .Ltmp233-.Lfunc_begin25
	.uleb128 .Lfunc_end80-.Ltmp233
	.byte	0
	.byte	0
.Lcst_end25:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase15:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr56drop_in_place$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$17h8eaca8854b492a2eE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr56drop_in_place$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$17h8eaca8854b492a2eE,@function
_ZN4core3ptr56drop_in_place$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$17h8eaca8854b492a2eE:
.Lfunc_begin26:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception26
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, (%rsp)
.Ltmp235:
	callq	_ZN70_$LT$std..thread..Packet$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haf73fe0fd7d916ebE
.Ltmp236:
	jmp	.LBB81_3
.LBB81_1:
.Ltmp238:
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h1b3e628200fd9995E
.Ltmp239:
	jmp	.LBB81_4
.LBB81_2:
.Ltmp237:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 8(%rsp)
	movl	%eax, 16(%rsp)
	jmp	.LBB81_1
.LBB81_3:
.Ltmp240:
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr103drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$$GT$17h1b3e628200fd9995E
.Ltmp241:
	jmp	.LBB81_6
.LBB81_4:
	movq	(%rsp), %rdi
	addq	$8, %rdi
.Ltmp243:
	callq	_ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17ha624d029d45e061aE
.Ltmp244:
	jmp	.LBB81_8
.LBB81_5:
.Ltmp242:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 8(%rsp)
	movl	%eax, 16(%rsp)
	jmp	.LBB81_4
.LBB81_6:
	movq	(%rsp), %rdi
	addq	$8, %rdi
	callq	_ZN4core3ptr188drop_in_place$LT$core..cell..UnsafeCell$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$$GT$17ha624d029d45e061aE
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB81_7:
	.cfi_def_cfa_offset 32
.Ltmp245:
	movq	_ZN4core9panicking16panic_in_cleanup17h7e5529b9cf989fd4E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB81_8:
	movq	8(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end81:
	.size	_ZN4core3ptr56drop_in_place$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$17h8eaca8854b492a2eE, .Lfunc_end81-_ZN4core3ptr56drop_in_place$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$17h8eaca8854b492a2eE
	.cfi_endproc
	.section	".gcc_except_table._ZN4core3ptr56drop_in_place$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$17h8eaca8854b492a2eE","a",@progbits
	.p2align	2, 0x0
GCC_except_table81:
.Lexception26:
	.byte	255
	.byte	155
	.uleb128 .Lttbase16-.Lttbaseref16
.Lttbaseref16:
	.byte	1
	.uleb128 .Lcst_end26-.Lcst_begin26
.Lcst_begin26:
	.uleb128 .Ltmp235-.Lfunc_begin26
	.uleb128 .Ltmp236-.Ltmp235
	.uleb128 .Ltmp237-.Lfunc_begin26
	.byte	0
	.uleb128 .Ltmp238-.Lfunc_begin26
	.uleb128 .Ltmp239-.Ltmp238
	.uleb128 .Ltmp245-.Lfunc_begin26
	.byte	1
	.uleb128 .Ltmp240-.Lfunc_begin26
	.uleb128 .Ltmp241-.Ltmp240
	.uleb128 .Ltmp242-.Lfunc_begin26
	.byte	0
	.uleb128 .Ltmp243-.Lfunc_begin26
	.uleb128 .Ltmp244-.Ltmp243
	.uleb128 .Ltmp245-.Lfunc_begin26
	.byte	1
	.uleb128 .Ltmp244-.Lfunc_begin26
	.uleb128 .Lfunc_end81-.Ltmp244
	.byte	0
	.byte	0
.Lcst_end26:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase16:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hc28739086750b956E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hc28739086750b956E,@function
_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hc28739086750b956E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17hea22e8e30106235bE
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end82:
	.size	_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hc28739086750b956E, .Lfunc_end82-_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hc28739086750b956E
	.cfi_endproc

	.section	".text._ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h80a027c538bc9bbdE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h80a027c538bc9bbdE,@function
_ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h80a027c538bc9bbdE:
.Lfunc_begin27:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception27
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, (%rsp)
	addq	$24, %rdi
.Ltmp246:
	callq	_ZN4core3ptr55drop_in_place$LT$std..thread..spawnhook..SpawnHooks$GT$17h65c306b178d3a3a6E
.Ltmp247:
	jmp	.LBB83_3
.LBB83_1:
.Ltmp249:
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr177drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h4d031249356bf0e1E
.Ltmp250:
	jmp	.LBB83_5
.LBB83_2:
.Ltmp248:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 8(%rsp)
	movl	%eax, 16(%rsp)
	jmp	.LBB83_1
.LBB83_3:
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr177drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$GT$$GT$17h4d031249356bf0e1E
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB83_4:
	.cfi_def_cfa_offset 32
.Ltmp251:
	movq	_ZN4core9panicking16panic_in_cleanup17h7e5529b9cf989fd4E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB83_5:
	movq	8(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end83:
	.size	_ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h80a027c538bc9bbdE, .Lfunc_end83-_ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h80a027c538bc9bbdE
	.cfi_endproc
	.section	".gcc_except_table._ZN4core3ptr60drop_in_place$LT$std..thread..spawnhook..ChildSpawnHooks$GT$17h80a027c538bc9bbdE","a",@progbits
	.p2align	2, 0x0
GCC_except_table83:
.Lexception27:
	.byte	255
	.byte	155
	.uleb128 .Lttbase17-.Lttbaseref17
.Lttbaseref17:
	.byte	1
	.uleb128 .Lcst_end27-.Lcst_begin27
.Lcst_begin27:
	.uleb128 .Ltmp246-.Lfunc_begin27
	.uleb128 .Ltmp247-.Ltmp246
	.uleb128 .Ltmp248-.Lfunc_begin27
	.byte	0
	.uleb128 .Ltmp249-.Lfunc_begin27
	.uleb128 .Ltmp250-.Ltmp249
	.uleb128 .Ltmp251-.Lfunc_begin27
	.byte	1
	.uleb128 .Ltmp250-.Lfunc_begin27
	.uleb128 .Lfunc_end83-.Ltmp250
	.byte	0
	.byte	0
.Lcst_end27:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase17:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$17h5e97b85501cecea8E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$17h5e97b85501cecea8E,@function
_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$17h5e97b85501cecea8E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94c220638bd9afb5E
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end84:
	.size	_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$17h5e97b85501cecea8E, .Lfunc_end84-_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$17h5e97b85501cecea8E
	.cfi_endproc

	.section	".text._ZN4core3ptr66drop_in_place$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$17h384d6fcdbb4ad58bE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr66drop_in_place$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$17h384d6fcdbb4ad58bE,@function
_ZN4core3ptr66drop_in_place$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$17h384d6fcdbb4ad58bE:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 16(%rsp)
	cmpq	$0, %rax
	je	.LBB85_2
	movq	16(%rsp), %rax
	movq	8(%rsp), %rdi
	callq	*%rax
.LBB85_2:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end85:
	.size	_ZN4core3ptr66drop_in_place$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$17h384d6fcdbb4ad58bE, .Lfunc_end85-_ZN4core3ptr66drop_in_place$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$17h384d6fcdbb4ad58bE
	.cfi_endproc

	.section	".text._ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h042cbc00b7026419E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h042cbc00b7026419E,@function
_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h042cbc00b7026419E:
.Lfunc_begin28:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception28
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, (%rsp)
	movq	(%rdi), %rdi
.Ltmp252:
	callq	_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17h5354ba439f38100cE
.Ltmp253:
	jmp	.LBB86_3
.LBB86_1:
.Ltmp255:
	movq	(%rsp), %rdi
	callq	_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3cc23fd7e9ef9b80E
.Ltmp256:
	jmp	.LBB86_5
.LBB86_2:
.Ltmp254:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 8(%rsp)
	movl	%eax, 16(%rsp)
	jmp	.LBB86_1
.LBB86_3:
	movq	(%rsp), %rdi
	callq	_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3cc23fd7e9ef9b80E
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB86_4:
	.cfi_def_cfa_offset 32
.Ltmp257:
	movq	_ZN4core9panicking16panic_in_cleanup17h7e5529b9cf989fd4E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB86_5:
	movq	8(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end86:
	.size	_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h042cbc00b7026419E, .Lfunc_end86-_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h042cbc00b7026419E
	.cfi_endproc
	.section	".gcc_except_table._ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17h042cbc00b7026419E","a",@progbits
	.p2align	2, 0x0
GCC_except_table86:
.Lexception28:
	.byte	255
	.byte	155
	.uleb128 .Lttbase18-.Lttbaseref18
.Lttbaseref18:
	.byte	1
	.uleb128 .Lcst_end28-.Lcst_begin28
.Lcst_begin28:
	.uleb128 .Ltmp252-.Lfunc_begin28
	.uleb128 .Ltmp253-.Ltmp252
	.uleb128 .Ltmp254-.Lfunc_begin28
	.byte	0
	.uleb128 .Ltmp255-.Lfunc_begin28
	.uleb128 .Ltmp256-.Ltmp255
	.uleb128 .Ltmp257-.Lfunc_begin28
	.byte	1
	.uleb128 .Ltmp256-.Lfunc_begin28
	.uleb128 .Lfunc_end86-.Ltmp256
	.byte	0
	.byte	0
.Lcst_end28:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase18:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hc1009451bc8743ecE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hc1009451bc8743ecE,@function
_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hc1009451bc8743ecE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	movabsq	$-9223372036854775808, %rdx
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpq	%rdx, (%rdi)
	cmoveq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB87_2
.LBB87_1:
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.LBB87_2:
	.cfi_def_cfa_offset 16
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb3e718cf3ef27549E
	jmp	.LBB87_1
.Lfunc_end87:
	.size	_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hc1009451bc8743ecE, .Lfunc_end87-_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hc1009451bc8743ecE
	.cfi_endproc

	.section	".text._ZN4core3ptr75drop_in_place$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$17h0b94615f3cb4f9f0E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr75drop_in_place$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$17h0b94615f3cb4f9f0E,@function
_ZN4core3ptr75drop_in_place$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$17h0b94615f3cb4f9f0E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8389b9a43b682ef7E
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end88:
	.size	_ZN4core3ptr75drop_in_place$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$17h0b94615f3cb4f9f0E, .Lfunc_end88-_ZN4core3ptr75drop_in_place$LT$alloc..sync..Arc$LT$std..thread..scoped..ScopeData$GT$$GT$17h0b94615f3cb4f9f0E
	.cfi_endproc

	.section	".text._ZN4core3ptr78drop_in_place$LT$alloc..sync..Arc$LT$std..thread..spawnhook..SpawnHook$GT$$GT$17hb2f7716bcf1b251cE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr78drop_in_place$LT$alloc..sync..Arc$LT$std..thread..spawnhook..SpawnHook$GT$$GT$17hb2f7716bcf1b251cE,@function
_ZN4core3ptr78drop_in_place$LT$alloc..sync..Arc$LT$std..thread..spawnhook..SpawnHook$GT$$GT$17hb2f7716bcf1b251cE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0094d1c93a267bafE
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end89:
	.size	_ZN4core3ptr78drop_in_place$LT$alloc..sync..Arc$LT$std..thread..spawnhook..SpawnHook$GT$$GT$17hb2f7716bcf1b251cE, .Lfunc_end89-_ZN4core3ptr78drop_in_place$LT$alloc..sync..Arc$LT$std..thread..spawnhook..SpawnHook$GT$$GT$17hb2f7716bcf1b251cE
	.cfi_endproc

	.section	".text._ZN4core3ptr79drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..thread..Thread$GT$$GT$17haa8c5fd8362ee996E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr79drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..thread..Thread$GT$$GT$17haa8c5fd8362ee996E,@function
_ZN4core3ptr79drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..thread..Thread$GT$$GT$17haa8c5fd8362ee996E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	movq	(%rdi), %rdx
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpq	$0, %rdx
	cmoveq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB90_2
.LBB90_1:
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.LBB90_2:
	.cfi_def_cfa_offset 16
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr40drop_in_place$LT$std..thread..Thread$GT$17hca8e4048ba3a9c19E
	jmp	.LBB90_1
.Lfunc_end90:
	.size	_ZN4core3ptr79drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..thread..Thread$GT$$GT$17haa8c5fd8362ee996E, .Lfunc_end90-_ZN4core3ptr79drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..thread..Thread$GT$$GT$17haa8c5fd8362ee996E
	.cfi_endproc

	.section	.text._ZN4core3ptr7replace18precondition_check17hbd45e872eceae4cdE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr7replace18precondition_check17hbd45e872eceae4cdE,@function
_ZN4core3ptr7replace18precondition_check17hbd45e872eceae4cdE:
.Lfunc_begin29:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception29
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rsi, %rcx
	movq	%rcx, 8(%rsp)
	movq	%rdi, 16(%rsp)
	movb	%dl, %al
	movb	%al, 31(%rsp)
	movq	%rcx, %rax
	shrq	%rax
	movabsq	$6148914691236517205, %rdx
	andq	%rdx, %rax
	subq	%rax, %rcx
	movabsq	$3689348814741910323, %rdx
	movq	%rcx, %rax
	andq	%rdx, %rax
	shrq	$2, %rcx
	andq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$4, %rcx
	addq	%rcx, %rax
	movabsq	$1085102592571150095, %rcx
	andq	%rcx, %rax
	movabsq	$72340172838076673, %rcx
	imulq	%rcx, %rax
	shrq	$56, %rax
	movl	%eax, 84(%rsp)
	cmpl	$1, 84(%rsp)
	jne	.LBB91_2
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	subq	$1, %rcx
	andq	%rcx, %rax
	cmpq	$0, %rax
	je	.LBB91_3
	jmp	.LBB91_4
.LBB91_2:
	leaq	.L__unnamed_22(%rip), %rax
	movq	%rax, 32(%rsp)
	movq	$1, 40(%rsp)
	movq	.L__unnamed_6(%rip), %rcx
	movq	.L__unnamed_6+8(%rip), %rax
	movq	%rcx, 64(%rsp)
	movq	%rax, 72(%rsp)
	movq	$8, 48(%rsp)
	movq	$0, 56(%rsp)
.Ltmp258:
	leaq	.L__unnamed_23(%rip), %rsi
	movq	_ZN4core9panicking9panic_fmt17h5764ee7030b7a73dE@GOTPCREL(%rip), %rax
	leaq	32(%rsp), %rdi
	callq	*%rax
.Ltmp259:
	jmp	.LBB91_10
.LBB91_3:
	movb	31(%rsp), %al
	testb	$1, %al
	jne	.LBB91_6
	jmp	.LBB91_5
.LBB91_4:
	jmp	.LBB91_7
.LBB91_5:
	movq	16(%rsp), %rax
	cmpq	$0, %rax
	sete	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB91_8
	jmp	.LBB91_7
.LBB91_6:
	jmp	.LBB91_8
.LBB91_7:
	leaq	.L__unnamed_25(%rip), %rdi
	movq	_ZN4core9panicking14panic_nounwind17hbbbf5b15de703440E@GOTPCREL(%rip), %rax
	movl	$104, %esi
	callq	*%rax
.LBB91_8:
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB91_9:
	.cfi_def_cfa_offset 96
.Ltmp260:
	movq	_ZN4core9panicking19panic_cannot_unwind17h8c0d27499c4c90faE@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB91_10:
	ud2
.Lfunc_end91:
	.size	_ZN4core3ptr7replace18precondition_check17hbd45e872eceae4cdE, .Lfunc_end91-_ZN4core3ptr7replace18precondition_check17hbd45e872eceae4cdE
	.cfi_endproc
	.section	.gcc_except_table._ZN4core3ptr7replace18precondition_check17hbd45e872eceae4cdE,"a",@progbits
	.p2align	2, 0x0
GCC_except_table91:
.Lexception29:
	.byte	255
	.byte	155
	.uleb128 .Lttbase19-.Lttbaseref19
.Lttbaseref19:
	.byte	1
	.uleb128 .Lcst_end29-.Lcst_begin29
.Lcst_begin29:
	.uleb128 .Ltmp258-.Lfunc_begin29
	.uleb128 .Ltmp259-.Ltmp258
	.uleb128 .Ltmp260-.Lfunc_begin29
	.byte	1
	.uleb128 .Ltmp259-.Lfunc_begin29
	.uleb128 .Lfunc_end91-.Ltmp259
	.byte	0
	.byte	0
.Lcst_end29:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase19:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hb72293dedb880f3bE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hb72293dedb880f3bE,@function
_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hb72293dedb880f3bE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h65c87405e223f59fE
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end92:
	.size	_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hb72293dedb880f3bE, .Lfunc_end92-_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17hb72293dedb880f3bE
	.cfi_endproc

	.section	".text._ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17hcf3911dc5239d553E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17hcf3911dc5239d553E,@function
_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17hcf3911dc5239d553E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	movq	(%rdi), %rdx
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpq	$0, %rdx
	cmoveq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB93_2
.LBB93_1:
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.LBB93_2:
	.cfi_def_cfa_offset 16
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2792d9f5fd648efbE
	jmp	.LBB93_1
.Lfunc_end93:
	.size	_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17hcf3911dc5239d553E, .Lfunc_end93-_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17hcf3911dc5239d553E
	.cfi_endproc

	.section	".text._ZN4core3ptr85drop_in_place$LT$alloc..sync..ArcInner$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h929bb11bcb34677cE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr85drop_in_place$LT$alloc..sync..ArcInner$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h929bb11bcb34677cE,@function
_ZN4core3ptr85drop_in_place$LT$alloc..sync..ArcInner$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h929bb11bcb34677cE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	addq	$16, %rdi
	callq	_ZN4core3ptr56drop_in_place$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$17h8eaca8854b492a2eE
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end94:
	.size	_ZN4core3ptr85drop_in_place$LT$alloc..sync..ArcInner$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h929bb11bcb34677cE, .Lfunc_end94-_ZN4core3ptr85drop_in_place$LT$alloc..sync..ArcInner$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$$GT$17h929bb11bcb34677cE
	.cfi_endproc

	.section	".text._ZN4core3ptr85drop_in_place$LT$core..pin..Pin$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$$GT$17h748fff76fc1fc023E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr85drop_in_place$LT$core..pin..Pin$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$$GT$17h748fff76fc1fc023E,@function
_ZN4core3ptr85drop_in_place$LT$core..pin..Pin$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$$GT$17h748fff76fc1fc023E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$17h5e97b85501cecea8E
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end95:
	.size	_ZN4core3ptr85drop_in_place$LT$core..pin..Pin$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$$GT$17h748fff76fc1fc023E, .Lfunc_end95-_ZN4core3ptr85drop_in_place$LT$core..pin..Pin$LT$alloc..sync..Arc$LT$std..thread..Inner$GT$$GT$$GT$17h748fff76fc1fc023E
	.cfi_endproc

	.section	".text._ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hfff4f68155d40c80E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hfff4f68155d40c80E,@function
_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hfff4f68155d40c80E:
	.cfi_startproc
	retq
.Lfunc_end96:
	.size	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hfff4f68155d40c80E, .Lfunc_end96-_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hfff4f68155d40c80E
	.cfi_endproc

	.section	".text._ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h86c3bd06959148f8E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h86c3bd06959148f8E,@function
_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h86c3bd06959148f8E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	$0, %rdi
	jne	.LBB97_2
	leaq	.L__unnamed_26(%rip), %rdi
	movq	_ZN4core9panicking14panic_nounwind17hbbbf5b15de703440E@GOTPCREL(%rip), %rax
	movl	$93, %esi
	callq	*%rax
.LBB97_2:
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end97:
	.size	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h86c3bd06959148f8E, .Lfunc_end97-_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h86c3bd06959148f8E
	.cfi_endproc

	.section	".text._ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17h1ca612abffb05831E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17h1ca612abffb05831E,@function
_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17h1ca612abffb05831E:
.Lfunc_begin30:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception30
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, (%rsp)
	movq	(%rdi), %rax
	movq	%rax, 8(%rsp)
	movq	8(%rdi), %rax
	movq	(%rax), %rax
	movq	%rax, 16(%rsp)
	cmpq	$0, %rax
	je	.LBB98_2
.Ltmp261:
	movq	16(%rsp), %rax
	movq	8(%rsp), %rdi
	callq	*%rax
.Ltmp262:
	jmp	.LBB98_2
.LBB98_2:
	movq	(%rsp), %rdi
	callq	_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7cbcc686787f3cd7E
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB98_3:
	.cfi_def_cfa_offset 48
.Ltmp264:
	movq	(%rsp), %rdi
	callq	_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7cbcc686787f3cd7E
.Ltmp265:
	jmp	.LBB98_6
.LBB98_4:
.Ltmp263:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 24(%rsp)
	movl	%eax, 32(%rsp)
	jmp	.LBB98_3
.LBB98_5:
.Ltmp266:
	movq	_ZN4core9panicking16panic_in_cleanup17h7e5529b9cf989fd4E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB98_6:
	movq	24(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end98:
	.size	_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17h1ca612abffb05831E, .Lfunc_end98-_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17h1ca612abffb05831E
	.cfi_endproc
	.section	".gcc_except_table._ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17h1ca612abffb05831E","a",@progbits
	.p2align	2, 0x0
GCC_except_table98:
.Lexception30:
	.byte	255
	.byte	155
	.uleb128 .Lttbase20-.Lttbaseref20
.Lttbaseref20:
	.byte	1
	.uleb128 .Lcst_end30-.Lcst_begin30
.Lcst_begin30:
	.uleb128 .Ltmp261-.Lfunc_begin30
	.uleb128 .Ltmp262-.Ltmp261
	.uleb128 .Ltmp263-.Lfunc_begin30
	.byte	0
	.uleb128 .Ltmp262-.Lfunc_begin30
	.uleb128 .Ltmp264-.Ltmp262
	.byte	0
	.byte	0
	.uleb128 .Ltmp264-.Lfunc_begin30
	.uleb128 .Ltmp265-.Ltmp264
	.uleb128 .Ltmp266-.Lfunc_begin30
	.byte	1
	.uleb128 .Ltmp265-.Lfunc_begin30
	.uleb128 .Lfunc_end98-.Ltmp265
	.byte	0
	.byte	0
.Lcst_end30:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase20:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr93drop_in_place$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$17hbee0aa3cc2bd4d40E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr93drop_in_place$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$17hbee0aa3cc2bd4d40E,@function
_ZN4core3ptr93drop_in_place$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$17hbee0aa3cc2bd4d40E:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 16(%rsp)
	cmpq	$0, %rax
	je	.LBB99_2
	movq	16(%rsp), %rax
	movq	8(%rsp), %rdi
	callq	*%rax
.LBB99_2:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end99:
	.size	_ZN4core3ptr93drop_in_place$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$17hbee0aa3cc2bd4d40E, .Lfunc_end99-_ZN4core3ptr93drop_in_place$LT$dyn$u20$core..error..Error$u2b$core..marker..Sync$u2b$core..marker..Send$GT$17hbee0aa3cc2bd4d40E
	.cfi_endproc

	.section	".text._ZN4core3ptr97drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..sys..pal..unix..stdio..Stderr$GT$$GT$17h9ad9498191c09a39E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr97drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..sys..pal..unix..stdio..Stderr$GT$$GT$17h9ad9498191c09a39E,@function
_ZN4core3ptr97drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..sys..pal..unix..stdio..Stderr$GT$$GT$17h9ad9498191c09a39E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	addq	$8, %rdi
	callq	_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17hcf3911dc5239d553E
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end100:
	.size	_ZN4core3ptr97drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..sys..pal..unix..stdio..Stderr$GT$$GT$17h9ad9498191c09a39E, .Lfunc_end100-_ZN4core3ptr97drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..sys..pal..unix..stdio..Stderr$GT$$GT$17h9ad9498191c09a39E
	.cfi_endproc

	.section	".text._ZN4core4cell13Cell$LT$T$GT$3get17hb2c3ca82ece649d4E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core4cell13Cell$LT$T$GT$3get17hb2c3ca82ece649d4E,@function
_ZN4core4cell13Cell$LT$T$GT$3get17hb2c3ca82ece649d4E:
	.cfi_startproc
	movl	(%rdi), %eax
	retq
.Lfunc_end101:
	.size	_ZN4core4cell13Cell$LT$T$GT$3get17hb2c3ca82ece649d4E, .Lfunc_end101-_ZN4core4cell13Cell$LT$T$GT$3get17hb2c3ca82ece649d4E
	.cfi_endproc

	.section	".text._ZN4core4cell13Cell$LT$T$GT$3new17hb01917d471b977d5E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core4cell13Cell$LT$T$GT$3new17hb01917d471b977d5E,@function
_ZN4core4cell13Cell$LT$T$GT$3new17hb01917d471b977d5E:
	.cfi_startproc
	movl	%edi, %eax
	retq
.Lfunc_end102:
	.size	_ZN4core4cell13Cell$LT$T$GT$3new17hb01917d471b977d5E, .Lfunc_end102-_ZN4core4cell13Cell$LT$T$GT$3new17hb01917d471b977d5E
	.cfi_endproc

	.section	".text._ZN4core4cell13Cell$LT$T$GT$3set17he71e7b5d47b9c773E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core4cell13Cell$LT$T$GT$3set17he71e7b5d47b9c773E,@function
_ZN4core4cell13Cell$LT$T$GT$3set17he71e7b5d47b9c773E:
	.cfi_startproc
	movl	%esi, (%rdi)
	retq
.Lfunc_end103:
	.size	_ZN4core4cell13Cell$LT$T$GT$3set17he71e7b5d47b9c773E, .Lfunc_end103-_ZN4core4cell13Cell$LT$T$GT$3set17he71e7b5d47b9c773E
	.cfi_endproc

	.section	.text._ZN4core4char7methods15encode_utf8_raw17he57cb0064cb8e13fE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core4char7methods15encode_utf8_raw17he57cb0064cb8e13fE,@function
_ZN4core4char7methods15encode_utf8_raw17he57cb0064cb8e13fE:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movl	%edi, 12(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 24(%rsp)
	cmpl	$128, %edi
	jb	.LBB104_2
	movl	12(%rsp), %eax
	cmpl	$2048, %eax
	jb	.LBB104_4
	jmp	.LBB104_3
.LBB104_2:
	movq	24(%rsp), %rax
	movq	$1, 32(%rsp)
	cmpq	$1, %rax
	jae	.LBB104_12
	jmp	.LBB104_7
.LBB104_3:
	movl	12(%rsp), %eax
	cmpl	$65536, %eax
	jb	.LBB104_6
	jmp	.LBB104_5
.LBB104_4:
	movq	24(%rsp), %rax
	movq	$2, 32(%rsp)
	cmpq	$2, %rax
	jae	.LBB104_11
	jmp	.LBB104_7
.LBB104_5:
	movq	24(%rsp), %rax
	movq	$4, 32(%rsp)
	cmpq	$4, %rax
	jae	.LBB104_8
	jmp	.LBB104_7
.LBB104_6:
	movq	24(%rsp), %rax
	movq	$3, 32(%rsp)
	cmpq	$3, %rax
	jae	.LBB104_10
.LBB104_7:
	movq	24(%rsp), %rdx
	movl	12(%rsp), %edi
	movq	32(%rsp), %rsi
	leaq	.L__unnamed_27(%rip), %rcx
	movq	_ZN4core4char7methods15encode_utf8_raw8do_panic7runtime17he0840b876a066201E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB104_8:
	movq	16(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, %edx
	shrl	$18, %edx
	andl	$7, %edx
	orb	$-16, %dl
	movb	%dl, (%rax)
	movl	%ecx, %edx
	shrl	$12, %edx
	andl	$63, %edx
	orb	$-128, %dl
	movb	%dl, 1(%rax)
	movl	%ecx, %edx
	shrl	$6, %edx
	andl	$63, %edx
	orb	$-128, %dl
	movb	%dl, 2(%rax)
	andl	$63, %ecx
	orb	$-128, %cl
	movb	%cl, 3(%rax)
.LBB104_9:
	movq	32(%rsp), %rax
	movq	%rax, (%rsp)
	jmp	.LBB104_13
.LBB104_10:
	movq	16(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, %edx
	shrl	$12, %edx
	andl	$15, %edx
	orb	$-32, %dl
	movb	%dl, (%rax)
	movl	%ecx, %edx
	shrl	$6, %edx
	andl	$63, %edx
	orb	$-128, %dl
	movb	%dl, 1(%rax)
	andl	$63, %ecx
	orb	$-128, %cl
	movb	%cl, 2(%rax)
	jmp	.LBB104_9
.LBB104_11:
	movq	16(%rsp), %rax
	movl	12(%rsp), %ecx
	movl	%ecx, %edx
	shrl	$6, %edx
	andl	$31, %edx
	orb	$-64, %dl
	movb	%dl, (%rax)
	andl	$63, %ecx
	orb	$-128, %cl
	movb	%cl, 1(%rax)
	jmp	.LBB104_9
.LBB104_12:
	movq	16(%rsp), %rax
	movl	12(%rsp), %ecx
	movb	%cl, (%rax)
	jmp	.LBB104_9
.LBB104_13:
	movq	(%rsp), %rcx
	movq	16(%rsp), %rdi
	movl	$1, %edx
	movq	%rdx, %rsi
	callq	_ZN4core5slice3raw18from_raw_parts_mut18precondition_check17h8f7038110f08001cE
	movq	(%rsp), %rdx
	movq	16(%rsp), %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end104:
	.size	_ZN4core4char7methods15encode_utf8_raw17he57cb0064cb8e13fE, .Lfunc_end104-_ZN4core4char7methods15encode_utf8_raw17he57cb0064cb8e13fE
	.cfi_endproc

	.section	".text._ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h77e95079d3db9cdaE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h77e95079d3db9cdaE,@function
_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h77e95079d3db9cdaE:
	.cfi_startproc
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movl	%edi, (%rsp)
	movl	%esi, 4(%rsp)
	cmpl	$2, %esi
	jae	.LBB105_2
.LBB105_1:
	leaq	.L__unnamed_28(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	$1, 24(%rsp)
	movq	.L__unnamed_6(%rip), %rcx
	movq	.L__unnamed_6+8(%rip), %rax
	movq	%rcx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	$8, 32(%rsp)
	movq	$0, 40(%rsp)
	leaq	.L__unnamed_29(%rip), %rsi
	movq	_ZN4core9panicking9panic_fmt17h5764ee7030b7a73dE@GOTPCREL(%rip), %rax
	leaq	16(%rsp), %rdi
	callq	*%rax
.LBB105_2:
	movl	4(%rsp), %eax
	cmpl	$36, %eax
	ja	.LBB105_1
	movl	(%rsp), %eax
	cmpl	$57, %eax
	ja	.LBB105_5
.LBB105_4:
	movl	(%rsp), %eax
	subl	$48, %eax
	movl	%eax, 68(%rsp)
	jmp	.LBB105_7
.LBB105_5:
	movl	4(%rsp), %eax
	cmpl	$10, %eax
	jbe	.LBB105_4
	movl	(%rsp), %eax
	subl	$65, %eax
	andl	$-33, %eax
	addl	$10, %eax
	movl	%eax, 68(%rsp)
.LBB105_7:
	movl	4(%rsp), %eax
	cmpl	%eax, 68(%rsp)
	jb	.LBB105_9
	movl	.L__unnamed_20(%rip), %ecx
	movl	.L__unnamed_20+4(%rip), %eax
	movl	%ecx, 8(%rsp)
	movl	%eax, 12(%rsp)
	jmp	.LBB105_10
.LBB105_9:
	movl	68(%rsp), %eax
	movl	%eax, 12(%rsp)
	movl	$1, 8(%rsp)
.LBB105_10:
	movl	8(%rsp), %eax
	movl	12(%rsp), %edx
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end105:
	.size	_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h77e95079d3db9cdaE, .Lfunc_end105-_ZN4core4char7methods22_$LT$impl$u20$char$GT$8to_digit17h77e95079d3db9cdaE
	.cfi_endproc

	.section	.text._ZN4core4hint21unreachable_unchecked18precondition_check17h0ef8abda47f4589dE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core4hint21unreachable_unchecked18precondition_check17h0ef8abda47f4589dE,@function
_ZN4core4hint21unreachable_unchecked18precondition_check17h0ef8abda47f4589dE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.L__unnamed_30(%rip), %rdi
	movq	_ZN4core9panicking14panic_nounwind17hbbbf5b15de703440E@GOTPCREL(%rip), %rax
	movl	$82, %esi
	callq	*%rax
.Lfunc_end106:
	.size	_ZN4core4hint21unreachable_unchecked18precondition_check17h0ef8abda47f4589dE, .Lfunc_end106-_ZN4core4hint21unreachable_unchecked18precondition_check17h0ef8abda47f4589dE
	.cfi_endproc

	.section	".text._ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hbded82c09af2e0deE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hbded82c09af2e0deE,@function
_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hbded82c09af2e0deE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h770b8309cacf6eceE
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end107:
	.size	_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hbded82c09af2e0deE, .Lfunc_end107-_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17hbded82c09af2e0deE
	.cfi_endproc

	.section	.text._ZN4core4iter6traits8iterator8Iterator3map17h3472c9a8f5c30a3aE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core4iter6traits8iterator8Iterator3map17h3472c9a8f5c30a3aE,@function
_ZN4core4iter6traits8iterator8Iterator3map17h3472c9a8f5c30a3aE:
	.cfi_startproc
	movl	%esi, %edx
	movl	%edi, %eax
	retq
.Lfunc_end108:
	.size	_ZN4core4iter6traits8iterator8Iterator3map17h3472c9a8f5c30a3aE, .Lfunc_end108-_ZN4core4iter6traits8iterator8Iterator3map17h3472c9a8f5c30a3aE
	.cfi_endproc

	.section	.text._ZN4core4sync6atomic11atomic_load17hcab15952108a8afdE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core4sync6atomic11atomic_load17hcab15952108a8afdE,@function
_ZN4core4sync6atomic11atomic_load17hcab15952108a8afdE:
	.cfi_startproc
	subq	$136, %rsp
	.cfi_def_cfa_offset 144
	movq	%rdi, 8(%rsp)
	movb	%sil, %al
	movb	%al, 31(%rsp)
	movzbl	31(%rsp), %eax
	movq	%rax, 16(%rsp)
	movq	16(%rsp), %rax
	leaq	.LJTI109_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
	.cfi_def_cfa_offset 8
	ud2
.LBB109_2:
	.cfi_def_cfa_offset 144
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 32(%rsp)
	jmp	.LBB109_7
.LBB109_3:
	leaq	.L__unnamed_31(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	$1, 48(%rsp)
	movq	.L__unnamed_6(%rip), %rcx
	movq	.L__unnamed_6+8(%rip), %rax
	movq	%rcx, 72(%rsp)
	movq	%rax, 80(%rsp)
	movq	$8, 56(%rsp)
	movq	$0, 64(%rsp)
	leaq	.L__unnamed_32(%rip), %rsi
	movq	_ZN4core9panicking9panic_fmt17h5764ee7030b7a73dE@GOTPCREL(%rip), %rax
	leaq	40(%rsp), %rdi
	callq	*%rax
.LBB109_4:
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 32(%rsp)
	jmp	.LBB109_7
.LBB109_5:
	leaq	.L__unnamed_33(%rip), %rax
	movq	%rax, 88(%rsp)
	movq	$1, 96(%rsp)
	movq	.L__unnamed_6(%rip), %rcx
	movq	.L__unnamed_6+8(%rip), %rax
	movq	%rcx, 120(%rsp)
	movq	%rax, 128(%rsp)
	movq	$8, 104(%rsp)
	movq	$0, 112(%rsp)
	leaq	.L__unnamed_34(%rip), %rsi
	movq	_ZN4core9panicking9panic_fmt17h5764ee7030b7a73dE@GOTPCREL(%rip), %rax
	leaq	88(%rsp), %rdi
	callq	*%rax
.LBB109_6:
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 32(%rsp)
.LBB109_7:
	movq	32(%rsp), %rax
	addq	$136, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end109:
	.size	_ZN4core4sync6atomic11atomic_load17hcab15952108a8afdE, .Lfunc_end109-_ZN4core4sync6atomic11atomic_load17hcab15952108a8afdE
	.cfi_endproc
	.section	.rodata._ZN4core4sync6atomic11atomic_load17hcab15952108a8afdE,"a",@progbits
	.p2align	2, 0x0
.LJTI109_0:
	.long	.LBB109_2-.LJTI109_0
	.long	.LBB109_3-.LJTI109_0
	.long	.LBB109_4-.LJTI109_0
	.long	.LBB109_5-.LJTI109_0
	.long	.LBB109_6-.LJTI109_0

	.section	.text._ZN4core4sync6atomic12atomic_store17hd9e5a6cf9f8ecf5cE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core4sync6atomic12atomic_store17hd9e5a6cf9f8ecf5cE,@function
_ZN4core4sync6atomic12atomic_store17hd9e5a6cf9f8ecf5cE:
	.cfi_startproc
	subq	$136, %rsp
	.cfi_def_cfa_offset 144
	movq	%rsi, 8(%rsp)
	movq	%rdi, 16(%rsp)
	movb	%dl, %al
	movb	%al, 39(%rsp)
	movzbl	39(%rsp), %eax
	movq	%rax, 24(%rsp)
	movq	24(%rsp), %rax
	leaq	.LJTI110_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
	.cfi_def_cfa_offset 8
	ud2
.LBB110_2:
	.cfi_def_cfa_offset 144
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	jmp	.LBB110_7
.LBB110_3:
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	jmp	.LBB110_7
.LBB110_4:
	leaq	.L__unnamed_35(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	$1, 48(%rsp)
	movq	.L__unnamed_6(%rip), %rcx
	movq	.L__unnamed_6+8(%rip), %rax
	movq	%rcx, 72(%rsp)
	movq	%rax, 80(%rsp)
	movq	$8, 56(%rsp)
	movq	$0, 64(%rsp)
	leaq	.L__unnamed_36(%rip), %rsi
	movq	_ZN4core9panicking9panic_fmt17h5764ee7030b7a73dE@GOTPCREL(%rip), %rax
	leaq	40(%rsp), %rdi
	callq	*%rax
.LBB110_5:
	leaq	.L__unnamed_37(%rip), %rax
	movq	%rax, 88(%rsp)
	movq	$1, 96(%rsp)
	movq	.L__unnamed_6(%rip), %rcx
	movq	.L__unnamed_6+8(%rip), %rax
	movq	%rcx, 120(%rsp)
	movq	%rax, 128(%rsp)
	movq	$8, 104(%rsp)
	movq	$0, 112(%rsp)
	leaq	.L__unnamed_38(%rip), %rsi
	movq	_ZN4core9panicking9panic_fmt17h5764ee7030b7a73dE@GOTPCREL(%rip), %rax
	leaq	88(%rsp), %rdi
	callq	*%rax
.LBB110_6:
	movq	16(%rsp), %rcx
	movq	8(%rsp), %rax
	xchgq	%rax, (%rcx)
.LBB110_7:
	addq	$136, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end110:
	.size	_ZN4core4sync6atomic12atomic_store17hd9e5a6cf9f8ecf5cE, .Lfunc_end110-_ZN4core4sync6atomic12atomic_store17hd9e5a6cf9f8ecf5cE
	.cfi_endproc
	.section	.rodata._ZN4core4sync6atomic12atomic_store17hd9e5a6cf9f8ecf5cE,"a",@progbits
	.p2align	2, 0x0
.LJTI110_0:
	.long	.LBB110_2-.LJTI110_0
	.long	.LBB110_3-.LJTI110_0
	.long	.LBB110_4-.LJTI110_0
	.long	.LBB110_5-.LJTI110_0
	.long	.LBB110_6-.LJTI110_0

	.section	.text._ZN4core4sync6atomic23atomic_compare_exchange17he7f14cb8cb886a4cE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core4sync6atomic23atomic_compare_exchange17he7f14cb8cb886a4cE,@function
_ZN4core4sync6atomic23atomic_compare_exchange17he7f14cb8cb886a4cE:
	.cfi_startproc
	subq	$216, %rsp
	.cfi_def_cfa_offset 224
	movq	%rdx, 48(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdi, 64(%rsp)
	movb	%r8b, %al
	movb	%cl, 86(%rsp)
	movb	%al, 87(%rsp)
	movzbl	86(%rsp), %eax
	movq	%rax, 72(%rsp)
	movq	72(%rsp), %rax
	leaq	.LJTI111_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
	.cfi_def_cfa_offset 8
	ud2
.LBB111_2:
	.cfi_def_cfa_offset 224
	movzbl	87(%rsp), %eax
	movq	%rax, 40(%rsp)
	testq	%rax, %rax
	je	.LBB111_8
	jmp	.LBB111_38
.LBB111_38:
	movq	40(%rsp), %rax
	subq	$2, %rax
	je	.LBB111_9
	jmp	.LBB111_39
.LBB111_39:
	movq	40(%rsp), %rax
	subq	$4, %rax
	je	.LBB111_10
	jmp	.LBB111_7
.LBB111_3:
	movzbl	87(%rsp), %eax
	movq	%rax, 32(%rsp)
	testq	%rax, %rax
	je	.LBB111_12
	jmp	.LBB111_36
.LBB111_36:
	movq	32(%rsp), %rax
	subq	$2, %rax
	je	.LBB111_13
	jmp	.LBB111_37
.LBB111_37:
	movq	32(%rsp), %rax
	subq	$4, %rax
	je	.LBB111_14
	jmp	.LBB111_7
.LBB111_4:
	movzbl	87(%rsp), %eax
	movq	%rax, 24(%rsp)
	testq	%rax, %rax
	je	.LBB111_15
	jmp	.LBB111_34
.LBB111_34:
	movq	24(%rsp), %rax
	subq	$2, %rax
	je	.LBB111_16
	jmp	.LBB111_35
.LBB111_35:
	movq	24(%rsp), %rax
	subq	$4, %rax
	je	.LBB111_17
	jmp	.LBB111_7
.LBB111_5:
	movzbl	87(%rsp), %eax
	movq	%rax, 16(%rsp)
	testq	%rax, %rax
	je	.LBB111_18
	jmp	.LBB111_32
.LBB111_32:
	movq	16(%rsp), %rax
	subq	$2, %rax
	je	.LBB111_19
	jmp	.LBB111_33
.LBB111_33:
	movq	16(%rsp), %rax
	subq	$4, %rax
	je	.LBB111_20
	jmp	.LBB111_7
.LBB111_6:
	movzbl	87(%rsp), %eax
	movq	%rax, 8(%rsp)
	testq	%rax, %rax
	je	.LBB111_21
	jmp	.LBB111_30
.LBB111_30:
	movq	8(%rsp), %rax
	subq	$2, %rax
	je	.LBB111_22
	jmp	.LBB111_31
.LBB111_31:
	movq	8(%rsp), %rax
	subq	$4, %rax
	je	.LBB111_23
	jmp	.LBB111_7
.LBB111_7:
	movzbl	87(%rsp), %eax
	cmpq	$1, %rax
	je	.LBB111_27
	jmp	.LBB111_28
.LBB111_8:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rax
	lock		cmpxchgq	%rdx, (%rcx)
	movq	%rax, %rcx
	sete	%al
	andb	$1, %al
	movq	%rcx, 104(%rsp)
	movb	%al, 112(%rsp)
	jmp	.LBB111_11
.LBB111_9:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rax
	lock		cmpxchgq	%rdx, (%rcx)
	movq	%rax, %rcx
	sete	%al
	andb	$1, %al
	movq	%rcx, 104(%rsp)
	movb	%al, 112(%rsp)
	jmp	.LBB111_11
.LBB111_10:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rax
	lock		cmpxchgq	%rdx, (%rcx)
	movq	%rax, %rcx
	sete	%al
	andb	$1, %al
	movq	%rcx, 104(%rsp)
	movb	%al, 112(%rsp)
.LBB111_11:
	movq	104(%rsp), %rax
	movq	%rax, (%rsp)
	testb	$1, 112(%rsp)
	jne	.LBB111_25
	jmp	.LBB111_24
.LBB111_12:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rax
	lock		cmpxchgq	%rdx, (%rcx)
	movq	%rax, %rcx
	sete	%al
	andb	$1, %al
	movq	%rcx, 104(%rsp)
	movb	%al, 112(%rsp)
	jmp	.LBB111_11
.LBB111_13:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rax
	lock		cmpxchgq	%rdx, (%rcx)
	movq	%rax, %rcx
	sete	%al
	andb	$1, %al
	movq	%rcx, 104(%rsp)
	movb	%al, 112(%rsp)
	jmp	.LBB111_11
.LBB111_14:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rax
	lock		cmpxchgq	%rdx, (%rcx)
	movq	%rax, %rcx
	sete	%al
	andb	$1, %al
	movq	%rcx, 104(%rsp)
	movb	%al, 112(%rsp)
	jmp	.LBB111_11
.LBB111_15:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rax
	lock		cmpxchgq	%rdx, (%rcx)
	movq	%rax, %rcx
	sete	%al
	andb	$1, %al
	movq	%rcx, 104(%rsp)
	movb	%al, 112(%rsp)
	jmp	.LBB111_11
.LBB111_16:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rax
	lock		cmpxchgq	%rdx, (%rcx)
	movq	%rax, %rcx
	sete	%al
	andb	$1, %al
	movq	%rcx, 104(%rsp)
	movb	%al, 112(%rsp)
	jmp	.LBB111_11
.LBB111_17:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rax
	lock		cmpxchgq	%rdx, (%rcx)
	movq	%rax, %rcx
	sete	%al
	andb	$1, %al
	movq	%rcx, 104(%rsp)
	movb	%al, 112(%rsp)
	jmp	.LBB111_11
.LBB111_18:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rax
	lock		cmpxchgq	%rdx, (%rcx)
	movq	%rax, %rcx
	sete	%al
	andb	$1, %al
	movq	%rcx, 104(%rsp)
	movb	%al, 112(%rsp)
	jmp	.LBB111_11
.LBB111_19:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rax
	lock		cmpxchgq	%rdx, (%rcx)
	movq	%rax, %rcx
	sete	%al
	andb	$1, %al
	movq	%rcx, 104(%rsp)
	movb	%al, 112(%rsp)
	jmp	.LBB111_11
.LBB111_20:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rax
	lock		cmpxchgq	%rdx, (%rcx)
	movq	%rax, %rcx
	sete	%al
	andb	$1, %al
	movq	%rcx, 104(%rsp)
	movb	%al, 112(%rsp)
	jmp	.LBB111_11
.LBB111_21:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rax
	lock		cmpxchgq	%rdx, (%rcx)
	movq	%rax, %rcx
	sete	%al
	andb	$1, %al
	movq	%rcx, 104(%rsp)
	movb	%al, 112(%rsp)
	jmp	.LBB111_11
.LBB111_22:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rax
	lock		cmpxchgq	%rdx, (%rcx)
	movq	%rax, %rcx
	sete	%al
	andb	$1, %al
	movq	%rcx, 104(%rsp)
	movb	%al, 112(%rsp)
	jmp	.LBB111_11
.LBB111_23:
	movq	64(%rsp), %rcx
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rax
	lock		cmpxchgq	%rdx, (%rcx)
	movq	%rax, %rcx
	sete	%al
	andb	$1, %al
	movq	%rcx, 104(%rsp)
	movb	%al, 112(%rsp)
	jmp	.LBB111_11
.LBB111_24:
	movq	(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	$1, 88(%rsp)
	jmp	.LBB111_26
.LBB111_25:
	movq	(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	$0, 88(%rsp)
.LBB111_26:
	movq	88(%rsp), %rax
	movq	96(%rsp), %rdx
	addq	$216, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB111_27:
	.cfi_def_cfa_offset 224
	leaq	.L__unnamed_39(%rip), %rax
	movq	%rax, 168(%rsp)
	movq	$1, 176(%rsp)
	movq	.L__unnamed_6(%rip), %rcx
	movq	.L__unnamed_6+8(%rip), %rax
	movq	%rcx, 200(%rsp)
	movq	%rax, 208(%rsp)
	movq	$8, 184(%rsp)
	movq	$0, 192(%rsp)
	leaq	.L__unnamed_40(%rip), %rsi
	movq	_ZN4core9panicking9panic_fmt17h5764ee7030b7a73dE@GOTPCREL(%rip), %rax
	leaq	168(%rsp), %rdi
	callq	*%rax
.LBB111_28:
	leaq	.L__unnamed_41(%rip), %rax
	movq	%rax, 120(%rsp)
	movq	$1, 128(%rsp)
	movq	.L__unnamed_6(%rip), %rcx
	movq	.L__unnamed_6+8(%rip), %rax
	movq	%rcx, 152(%rsp)
	movq	%rax, 160(%rsp)
	movq	$8, 136(%rsp)
	movq	$0, 144(%rsp)
	leaq	.L__unnamed_42(%rip), %rsi
	movq	_ZN4core9panicking9panic_fmt17h5764ee7030b7a73dE@GOTPCREL(%rip), %rax
	leaq	120(%rsp), %rdi
	callq	*%rax
.Lfunc_end111:
	.size	_ZN4core4sync6atomic23atomic_compare_exchange17he7f14cb8cb886a4cE, .Lfunc_end111-_ZN4core4sync6atomic23atomic_compare_exchange17he7f14cb8cb886a4cE
	.cfi_endproc
	.section	.rodata._ZN4core4sync6atomic23atomic_compare_exchange17he7f14cb8cb886a4cE,"a",@progbits
	.p2align	2, 0x0
.LJTI111_0:
	.long	.LBB111_2-.LJTI111_0
	.long	.LBB111_3-.LJTI111_0
	.long	.LBB111_4-.LJTI111_0
	.long	.LBB111_5-.LJTI111_0
	.long	.LBB111_6-.LJTI111_0

	.section	.text._ZN4core5alloc6layout6Layout25from_size_align_unchecked18precondition_check17h13be2f52823a406dE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core5alloc6layout6Layout25from_size_align_unchecked18precondition_check17h13be2f52823a406dE,@function
_ZN4core5alloc6layout6Layout25from_size_align_unchecked18precondition_check17h13be2f52823a406dE:
.Lfunc_begin31:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception31
	pushq	%rax
	.cfi_def_cfa_offset 16
.Ltmp267:
	movq	_ZN4core5alloc6layout6Layout19is_size_align_valid17h8c78d244ad032eaaE@GOTPCREL(%rip), %rax
	callq	*%rax
.Ltmp268:
	movb	%al, 7(%rsp)
	jmp	.LBB112_2
.LBB112_1:
.Ltmp269:
	movq	_ZN4core9panicking19panic_cannot_unwind17h8c0d27499c4c90faE@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB112_2:
	movb	7(%rsp), %al
	testb	$1, %al
	jne	.LBB112_4
	jmp	.LBB112_3
.LBB112_3:
	leaq	.L__unnamed_43(%rip), %rdi
	movq	_ZN4core9panicking14panic_nounwind17hbbbf5b15de703440E@GOTPCREL(%rip), %rax
	movl	$164, %esi
	callq	*%rax
.LBB112_4:
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end112:
	.size	_ZN4core5alloc6layout6Layout25from_size_align_unchecked18precondition_check17h13be2f52823a406dE, .Lfunc_end112-_ZN4core5alloc6layout6Layout25from_size_align_unchecked18precondition_check17h13be2f52823a406dE
	.cfi_endproc
	.section	.gcc_except_table._ZN4core5alloc6layout6Layout25from_size_align_unchecked18precondition_check17h13be2f52823a406dE,"a",@progbits
	.p2align	2, 0x0
GCC_except_table112:
.Lexception31:
	.byte	255
	.byte	155
	.uleb128 .Lttbase21-.Lttbaseref21
.Lttbaseref21:
	.byte	1
	.uleb128 .Lcst_end31-.Lcst_begin31
.Lcst_begin31:
	.uleb128 .Ltmp267-.Lfunc_begin31
	.uleb128 .Ltmp268-.Ltmp267
	.uleb128 .Ltmp269-.Lfunc_begin31
	.byte	1
	.uleb128 .Ltmp268-.Lfunc_begin31
	.uleb128 .Lfunc_end112-.Ltmp268
	.byte	0
	.byte	0
.Lcst_end31:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase21:
	.byte	0
	.p2align	2, 0x0

	.section	.text._ZN4core5slice3raw14from_raw_parts18precondition_check17h86d45fec051f0bc0E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core5slice3raw14from_raw_parts18precondition_check17h86d45fec051f0bc0E,@function
_ZN4core5slice3raw14from_raw_parts18precondition_check17h86d45fec051f0bc0E:
.Lfunc_begin32:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception32
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	%rcx, %rax
	movq	%rdx, %rcx
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rax, 32(%rsp)
	movq	%rcx, %rax
	shrq	%rax
	movabsq	$6148914691236517205, %rdx
	andq	%rdx, %rax
	subq	%rax, %rcx
	movabsq	$3689348814741910323, %rdx
	movq	%rcx, %rax
	andq	%rdx, %rax
	shrq	$2, %rcx
	andq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$4, %rcx
	addq	%rcx, %rax
	movabsq	$1085102592571150095, %rcx
	andq	%rcx, %rax
	movabsq	$72340172838076673, %rcx
	imulq	%rcx, %rax
	shrq	$56, %rax
	movl	%eax, 100(%rsp)
	cmpl	$1, 100(%rsp)
	jne	.LBB113_2
	movq	8(%rsp), %rax
	movq	24(%rsp), %rcx
	subq	$1, %rcx
	andq	%rcx, %rax
	cmpq	$0, %rax
	je	.LBB113_3
	jmp	.LBB113_4
.LBB113_2:
	leaq	.L__unnamed_22(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	$1, 48(%rsp)
	movq	.L__unnamed_6(%rip), %rcx
	movq	.L__unnamed_6+8(%rip), %rax
	movq	%rcx, 72(%rsp)
	movq	%rax, 80(%rsp)
	movq	$8, 56(%rsp)
	movq	$0, 64(%rsp)
.Ltmp270:
	leaq	.L__unnamed_23(%rip), %rsi
	movq	_ZN4core9panicking9panic_fmt17h5764ee7030b7a73dE@GOTPCREL(%rip), %rax
	leaq	40(%rsp), %rdi
	callq	*%rax
.Ltmp271:
	jmp	.LBB113_13
.LBB113_3:
	movq	8(%rsp), %rax
	cmpq	$0, %rax
	sete	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB113_6
	jmp	.LBB113_5
.LBB113_4:
	jmp	.LBB113_5
.LBB113_5:
	jmp	.LBB113_16
.LBB113_6:
	movq	16(%rsp), %rax
	cmpq	$0, %rax
	sete	%cl
	movb	%cl, 7(%rsp)
	cmpq	$0, %rax
	jne	.LBB113_8
	movq	$-1, 88(%rsp)
	jmp	.LBB113_9
.LBB113_8:
	movb	7(%rsp), %al
	testb	$1, %al
	jne	.LBB113_11
	jmp	.LBB113_10
.LBB113_9:
	movq	32(%rsp), %rax
	cmpq	88(%rsp), %rax
	jbe	.LBB113_15
	jmp	.LBB113_14
.LBB113_10:
	movq	16(%rsp), %rcx
	movabsq	$9223372036854775807, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rax, 88(%rsp)
	jmp	.LBB113_9
.LBB113_11:
.Ltmp272:
	leaq	.L__unnamed_44(%rip), %rdi
	movq	_ZN4core9panicking11panic_const23panic_const_div_by_zero17he12317a0a49c671dE@GOTPCREL(%rip), %rax
	callq	*%rax
.Ltmp273:
	jmp	.LBB113_13
.LBB113_12:
.Ltmp274:
	movq	_ZN4core9panicking19panic_cannot_unwind17h8c0d27499c4c90faE@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB113_13:
	ud2
.LBB113_14:
	jmp	.LBB113_16
.LBB113_15:
	addq	$104, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB113_16:
	.cfi_def_cfa_offset 112
	leaq	.L__unnamed_45(%rip), %rdi
	movq	_ZN4core9panicking14panic_nounwind17hbbbf5b15de703440E@GOTPCREL(%rip), %rax
	movl	$162, %esi
	callq	*%rax
.Lfunc_end113:
	.size	_ZN4core5slice3raw14from_raw_parts18precondition_check17h86d45fec051f0bc0E, .Lfunc_end113-_ZN4core5slice3raw14from_raw_parts18precondition_check17h86d45fec051f0bc0E
	.cfi_endproc
	.section	.gcc_except_table._ZN4core5slice3raw14from_raw_parts18precondition_check17h86d45fec051f0bc0E,"a",@progbits
	.p2align	2, 0x0
GCC_except_table113:
.Lexception32:
	.byte	255
	.byte	155
	.uleb128 .Lttbase22-.Lttbaseref22
.Lttbaseref22:
	.byte	1
	.uleb128 .Lcst_end32-.Lcst_begin32
.Lcst_begin32:
	.uleb128 .Ltmp270-.Lfunc_begin32
	.uleb128 .Ltmp273-.Ltmp270
	.uleb128 .Ltmp274-.Lfunc_begin32
	.byte	1
	.uleb128 .Ltmp273-.Lfunc_begin32
	.uleb128 .Lfunc_end113-.Ltmp273
	.byte	0
	.byte	0
.Lcst_end32:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase22:
	.byte	0
	.p2align	2, 0x0

	.section	.text._ZN4core5slice3raw18from_raw_parts_mut18precondition_check17h8f7038110f08001cE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core5slice3raw18from_raw_parts_mut18precondition_check17h8f7038110f08001cE,@function
_ZN4core5slice3raw18from_raw_parts_mut18precondition_check17h8f7038110f08001cE:
.Lfunc_begin33:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception33
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	%rcx, %rax
	movq	%rdx, %rcx
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rax, 32(%rsp)
	movq	%rcx, %rax
	shrq	%rax
	movabsq	$6148914691236517205, %rdx
	andq	%rdx, %rax
	subq	%rax, %rcx
	movabsq	$3689348814741910323, %rdx
	movq	%rcx, %rax
	andq	%rdx, %rax
	shrq	$2, %rcx
	andq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rcx
	shrq	$4, %rcx
	addq	%rcx, %rax
	movabsq	$1085102592571150095, %rcx
	andq	%rcx, %rax
	movabsq	$72340172838076673, %rcx
	imulq	%rcx, %rax
	shrq	$56, %rax
	movl	%eax, 100(%rsp)
	cmpl	$1, 100(%rsp)
	jne	.LBB114_2
	movq	8(%rsp), %rax
	movq	24(%rsp), %rcx
	subq	$1, %rcx
	andq	%rcx, %rax
	cmpq	$0, %rax
	je	.LBB114_3
	jmp	.LBB114_4
.LBB114_2:
	leaq	.L__unnamed_22(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	$1, 48(%rsp)
	movq	.L__unnamed_6(%rip), %rcx
	movq	.L__unnamed_6+8(%rip), %rax
	movq	%rcx, 72(%rsp)
	movq	%rax, 80(%rsp)
	movq	$8, 56(%rsp)
	movq	$0, 64(%rsp)
.Ltmp275:
	leaq	.L__unnamed_23(%rip), %rsi
	movq	_ZN4core9panicking9panic_fmt17h5764ee7030b7a73dE@GOTPCREL(%rip), %rax
	leaq	40(%rsp), %rdi
	callq	*%rax
.Ltmp276:
	jmp	.LBB114_13
.LBB114_3:
	movq	8(%rsp), %rax
	cmpq	$0, %rax
	sete	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB114_6
	jmp	.LBB114_5
.LBB114_4:
	jmp	.LBB114_5
.LBB114_5:
	jmp	.LBB114_16
.LBB114_6:
	movq	16(%rsp), %rax
	cmpq	$0, %rax
	sete	%cl
	movb	%cl, 7(%rsp)
	cmpq	$0, %rax
	jne	.LBB114_8
	movq	$-1, 88(%rsp)
	jmp	.LBB114_9
.LBB114_8:
	movb	7(%rsp), %al
	testb	$1, %al
	jne	.LBB114_11
	jmp	.LBB114_10
.LBB114_9:
	movq	32(%rsp), %rax
	cmpq	88(%rsp), %rax
	jbe	.LBB114_15
	jmp	.LBB114_14
.LBB114_10:
	movq	16(%rsp), %rcx
	movabsq	$9223372036854775807, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rax, 88(%rsp)
	jmp	.LBB114_9
.LBB114_11:
.Ltmp277:
	leaq	.L__unnamed_44(%rip), %rdi
	movq	_ZN4core9panicking11panic_const23panic_const_div_by_zero17he12317a0a49c671dE@GOTPCREL(%rip), %rax
	callq	*%rax
.Ltmp278:
	jmp	.LBB114_13
.LBB114_12:
.Ltmp279:
	movq	_ZN4core9panicking19panic_cannot_unwind17h8c0d27499c4c90faE@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB114_13:
	ud2
.LBB114_14:
	jmp	.LBB114_16
.LBB114_15:
	addq	$104, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB114_16:
	.cfi_def_cfa_offset 112
	leaq	.L__unnamed_46(%rip), %rdi
	movq	_ZN4core9panicking14panic_nounwind17hbbbf5b15de703440E@GOTPCREL(%rip), %rax
	movl	$166, %esi
	callq	*%rax
.Lfunc_end114:
	.size	_ZN4core5slice3raw18from_raw_parts_mut18precondition_check17h8f7038110f08001cE, .Lfunc_end114-_ZN4core5slice3raw18from_raw_parts_mut18precondition_check17h8f7038110f08001cE
	.cfi_endproc
	.section	.gcc_except_table._ZN4core5slice3raw18from_raw_parts_mut18precondition_check17h8f7038110f08001cE,"a",@progbits
	.p2align	2, 0x0
GCC_except_table114:
.Lexception33:
	.byte	255
	.byte	155
	.uleb128 .Lttbase23-.Lttbaseref23
.Lttbaseref23:
	.byte	1
	.uleb128 .Lcst_end33-.Lcst_begin33
.Lcst_begin33:
	.uleb128 .Ltmp275-.Lfunc_begin33
	.uleb128 .Ltmp278-.Ltmp275
	.uleb128 .Ltmp279-.Lfunc_begin33
	.byte	1
	.uleb128 .Ltmp278-.Lfunc_begin33
	.uleb128 .Lfunc_end114-.Ltmp278
	.byte	0
	.byte	0
.Lcst_end33:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase23:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4core6option15Option$LT$T$GT$4take17h015eefd4144108f5E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core6option15Option$LT$T$GT$4take17h015eefd4144108f5E,@function
_ZN4core6option15Option$LT$T$GT$4take17h015eefd4144108f5E:
	.cfi_startproc
	movl	$0, -8(%rsp)
	movl	(%rdi), %eax
	movl	4(%rdi), %edx
	movl	-8(%rsp), %esi
	movl	-4(%rsp), %ecx
	movl	%esi, (%rdi)
	movl	%ecx, 4(%rdi)
	retq
.Lfunc_end115:
	.size	_ZN4core6option15Option$LT$T$GT$4take17h015eefd4144108f5E, .Lfunc_end115-_ZN4core6option15Option$LT$T$GT$4take17h015eefd4144108f5E
	.cfi_endproc

	.section	".text._ZN4core6result19Result$LT$T$C$E$GT$6expect17hb983d82e3430ca73E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core6result19Result$LT$T$C$E$GT$6expect17hb983d82e3430ca73E,@function
_ZN4core6result19Result$LT$T$C$E$GT$6expect17hb983d82e3430ca73E:
.Lfunc_begin34:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception34
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%r8, (%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%rdi, 32(%rsp)
	movq	%rdi, 40(%rsp)
	movq	(%rsi), %rdx
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpq	$0, %rdx
	cmoveq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB116_2
	movq	40(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	24(%rsp), %rdx
	movq	(%rdx), %rsi
	movq	%rsi, (%rcx)
	movq	8(%rdx), %rsi
	movq	%rsi, 8(%rcx)
	movq	16(%rdx), %rdx
	movq	%rdx, 16(%rcx)
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB116_2:
	.cfi_def_cfa_offset 80
	movq	(%rsp), %r8
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rdi
	movq	24(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 48(%rsp)
.Ltmp280:
	leaq	.L__unnamed_47(%rip), %rcx
	movq	_ZN4core6result13unwrap_failed17h3ff7104a9ace307aE@GOTPCREL(%rip), %rax
	leaq	48(%rsp), %rdx
	callq	*%rax
.Ltmp281:
	jmp	.LBB116_5
.LBB116_3:
.Ltmp283:
	leaq	48(%rsp), %rdi
	callq	_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2792d9f5fd648efbE
.Ltmp284:
	jmp	.LBB116_7
.LBB116_4:
.Ltmp282:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 56(%rsp)
	movl	%eax, 64(%rsp)
	jmp	.LBB116_3
.LBB116_5:
	ud2
.LBB116_6:
.Ltmp285:
	movq	_ZN4core9panicking16panic_in_cleanup17h7e5529b9cf989fd4E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB116_7:
	movq	56(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end116:
	.size	_ZN4core6result19Result$LT$T$C$E$GT$6expect17hb983d82e3430ca73E, .Lfunc_end116-_ZN4core6result19Result$LT$T$C$E$GT$6expect17hb983d82e3430ca73E
	.cfi_endproc
	.section	".gcc_except_table._ZN4core6result19Result$LT$T$C$E$GT$6expect17hb983d82e3430ca73E","a",@progbits
	.p2align	2, 0x0
GCC_except_table116:
.Lexception34:
	.byte	255
	.byte	155
	.uleb128 .Lttbase24-.Lttbaseref24
.Lttbaseref24:
	.byte	1
	.uleb128 .Lcst_end34-.Lcst_begin34
.Lcst_begin34:
	.uleb128 .Ltmp280-.Lfunc_begin34
	.uleb128 .Ltmp281-.Ltmp280
	.uleb128 .Ltmp282-.Lfunc_begin34
	.byte	0
	.uleb128 .Ltmp283-.Lfunc_begin34
	.uleb128 .Ltmp284-.Ltmp283
	.uleb128 .Ltmp285-.Lfunc_begin34
	.byte	1
	.uleb128 .Ltmp284-.Lfunc_begin34
	.uleb128 .Lfunc_end116-.Ltmp284
	.byte	0
	.byte	0
.Lcst_end34:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase24:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h9b2c65d67c30017eE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h9b2c65d67c30017eE,@function
_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h9b2c65d67c30017eE:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end117:
	.size	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h9b2c65d67c30017eE, .Lfunc_end117-_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h9b2c65d67c30017eE
	.cfi_endproc

	.section	".text._ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h33fccc0a2a1c5e7eE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h33fccc0a2a1c5e7eE,@function
_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h33fccc0a2a1c5e7eE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, %rax
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	callq	_ZN3std3ffi6os_str85_$LT$impl$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$u20$for$u20$str$GT$6as_ref17h811ad83bfed884efE
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end118:
	.size	_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h33fccc0a2a1c5e7eE, .Lfunc_end118-_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h33fccc0a2a1c5e7eE
	.cfi_endproc

	.section	".text._ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h2f91be2735378c05E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h2f91be2735378c05E,@function
_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h2f91be2735378c05E:
.Lfunc_begin35:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception35
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	(%rdi), %rcx
	movq	%rdi, %rax
	addq	$8, %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	(%rdi), %rdi
	addq	$16, %rdi
.Ltmp286:
	callq	_ZN4core3ptr56drop_in_place$LT$std..thread..Packet$LT$$LP$$RP$$GT$$GT$17h8eaca8854b492a2eE
.Ltmp287:
	jmp	.LBB119_3
.LBB119_1:
.Ltmp289:
	leaq	8(%rsp), %rdi
	callq	_ZN4core3ptr108drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$$LP$$RP$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hdef6aa871ea36299E
.Ltmp290:
	jmp	.LBB119_5
.LBB119_2:
.Ltmp288:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 24(%rsp)
	movl	%eax, 32(%rsp)
	jmp	.LBB119_1
.LBB119_3:
	leaq	8(%rsp), %rdi
	callq	_ZN4core3ptr108drop_in_place$LT$alloc..sync..Weak$LT$std..thread..Packet$LT$$LP$$RP$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hdef6aa871ea36299E
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB119_4:
	.cfi_def_cfa_offset 48
.Ltmp291:
	movq	_ZN4core9panicking16panic_in_cleanup17h7e5529b9cf989fd4E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB119_5:
	movq	24(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end119:
	.size	_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h2f91be2735378c05E, .Lfunc_end119-_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h2f91be2735378c05E
	.cfi_endproc
	.section	".gcc_except_table._ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h2f91be2735378c05E","a",@progbits
	.p2align	2, 0x0
GCC_except_table119:
.Lexception35:
	.byte	255
	.byte	155
	.uleb128 .Lttbase25-.Lttbaseref25
.Lttbaseref25:
	.byte	1
	.uleb128 .Lcst_end35-.Lcst_begin35
.Lcst_begin35:
	.uleb128 .Ltmp286-.Lfunc_begin35
	.uleb128 .Ltmp287-.Ltmp286
	.uleb128 .Ltmp288-.Lfunc_begin35
	.byte	0
	.uleb128 .Ltmp289-.Lfunc_begin35
	.uleb128 .Ltmp290-.Ltmp289
	.uleb128 .Ltmp291-.Lfunc_begin35
	.byte	1
	.uleb128 .Ltmp290-.Lfunc_begin35
	.uleb128 .Lfunc_end119-.Ltmp290
	.byte	0
	.byte	0
.Lcst_end35:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase25:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf830c1162147d516E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf830c1162147d516E,@function
_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf830c1162147d516E:
.Lfunc_begin36:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception36
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	(%rdi), %rcx
	movq	%rdi, %rax
	addq	$8, %rax
	movq	%rcx, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	(%rdi), %rdi
	addq	$16, %rdi
.Ltmp292:
	callq	_ZN4core3ptr51drop_in_place$LT$std..thread..scoped..ScopeData$GT$17h982ad9fef5c2018fE
.Ltmp293:
	jmp	.LBB120_3
.LBB120_1:
.Ltmp295:
	leaq	8(%rsp), %rdi
	callq	_ZN4core3ptr103drop_in_place$LT$alloc..sync..Weak$LT$std..thread..scoped..ScopeData$C$$RF$alloc..alloc..Global$GT$$GT$17hd7d6eb84b494c299E
.Ltmp296:
	jmp	.LBB120_5
.LBB120_2:
.Ltmp294:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 24(%rsp)
	movl	%eax, 32(%rsp)
	jmp	.LBB120_1
.LBB120_3:
	leaq	8(%rsp), %rdi
	callq	_ZN4core3ptr103drop_in_place$LT$alloc..sync..Weak$LT$std..thread..scoped..ScopeData$C$$RF$alloc..alloc..Global$GT$$GT$17hd7d6eb84b494c299E
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB120_4:
	.cfi_def_cfa_offset 48
.Ltmp297:
	movq	_ZN4core9panicking16panic_in_cleanup17h7e5529b9cf989fd4E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB120_5:
	movq	24(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end120:
	.size	_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf830c1162147d516E, .Lfunc_end120-_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf830c1162147d516E
	.cfi_endproc
	.section	".gcc_except_table._ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf830c1162147d516E","a",@progbits
	.p2align	2, 0x0
GCC_except_table120:
.Lexception36:
	.byte	255
	.byte	155
	.uleb128 .Lttbase26-.Lttbaseref26
.Lttbaseref26:
	.byte	1
	.uleb128 .Lcst_end36-.Lcst_begin36
.Lcst_begin36:
	.uleb128 .Ltmp292-.Lfunc_begin36
	.uleb128 .Ltmp293-.Ltmp292
	.uleb128 .Ltmp294-.Lfunc_begin36
	.byte	0
	.uleb128 .Ltmp295-.Lfunc_begin36
	.uleb128 .Ltmp296-.Ltmp295
	.uleb128 .Ltmp297-.Lfunc_begin36
	.byte	1
	.uleb128 .Ltmp296-.Lfunc_begin36
	.uleb128 .Lfunc_end120-.Ltmp296
	.byte	0
	.byte	0
.Lcst_end36:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase26:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h51a66d3474955755E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h51a66d3474955755E,@function
_ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h51a66d3474955755E:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
	movq	(%rdi), %rdi
	addq	$8, %rdi
	movl	$1, %esi
	movq	$-1, %rdx
	movl	$2, %ecx
	xorl	%r8d, %r8d
	callq	_ZN4core4sync6atomic23atomic_compare_exchange17he7f14cb8cb886a4cE
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	cmpq	$0, 24(%rsp)
	jne	.LBB121_2
	movq	8(%rsp), %rax
	movq	(%rax), %rdi
	movl	$2, %esi
	callq	_ZN4core4sync6atomic11atomic_load17hcab15952108a8afdE
	movq	%rax, %rcx
	movq	8(%rsp), %rax
	cmpq	$1, %rcx
	sete	%cl
	movb	%cl, 7(%rsp)
	movq	(%rax), %rdi
	addq	$8, %rdi
	movl	$1, %esi
	movl	$1, %edx
	callq	_ZN4core4sync6atomic12atomic_store17hd9e5a6cf9f8ecf5cE
	movb	7(%rsp), %al
	andb	$1, %al
	movb	%al, 23(%rsp)
	jmp	.LBB121_3
.LBB121_2:
	movb	$0, 23(%rsp)
.LBB121_3:
	movb	23(%rsp), %al
	andb	$1, %al
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end121:
	.size	_ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h51a66d3474955755E, .Lfunc_end121-_ZN5alloc4sync16Arc$LT$T$C$A$GT$9is_unique17h51a66d3474955755E
	.cfi_endproc

	.section	.text._ZN5alloc5alloc12alloc_zeroed17h1aa982a589a948d3E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc5alloc12alloc_zeroed17h1aa982a589a948d3E,@function
_ZN5alloc5alloc12alloc_zeroed17h1aa982a589a948d3E:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	_ZN4core3ptr13read_volatile18precondition_check17hfcde9ed258dd9f12E
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rax
	movb	(%rax), %al
	movb	%al, 39(%rsp)
	movq	16(%rsp), %rdi
	movq	8(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	24(%rsp), %rsi
	callq	*__rust_alloc_zeroed@GOTPCREL(%rip)
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end122:
	.size	_ZN5alloc5alloc12alloc_zeroed17h1aa982a589a948d3E, .Lfunc_end122-_ZN5alloc5alloc12alloc_zeroed17h1aa982a589a948d3E
	.cfi_endproc

	.section	.text._ZN5alloc5alloc15exchange_malloc17he9f3f84fc184f964E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc5alloc15exchange_malloc17he9f3f84fc184f964E,@function
_ZN5alloc5alloc15exchange_malloc17he9f3f84fc184f964E:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	16(%rsp), %rsi
	movq	8(%rsp), %rdi
	callq	_ZN4core5alloc6layout6Layout25from_size_align_unchecked18precondition_check17h13be2f52823a406dE
	movq	8(%rsp), %rdx
	movq	16(%rsp), %rsi
	movl	$1, %edi
	xorl	%ecx, %ecx
	callq	_ZN5alloc5alloc6Global10alloc_impl17hffc5833de396df83E
	movq	%rax, 24(%rsp)
	movq	%rdx, 32(%rsp)
	movq	24(%rsp), %rdx
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpq	$0, %rdx
	cmoveq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB123_4
	movq	24(%rsp), %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB123_4:
	.cfi_def_cfa_offset 48
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rdi
	movq	_ZN5alloc5alloc18handle_alloc_error17he572ac0a571405f2E@GOTPCREL(%rip), %rax
	callq	*%rax
.Lfunc_end123:
	.size	_ZN5alloc5alloc15exchange_malloc17he9f3f84fc184f964E, .Lfunc_end123-_ZN5alloc5alloc15exchange_malloc17he9f3f84fc184f964E
	.cfi_endproc

	.section	.text._ZN5alloc5alloc5alloc17h2ea99f5a52a37bc5E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc5alloc5alloc17h2ea99f5a52a37bc5E,@function
_ZN5alloc5alloc5alloc17h2ea99f5a52a37bc5E:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	_ZN4core3ptr13read_volatile18precondition_check17hfcde9ed258dd9f12E
	movq	__rust_no_alloc_shim_is_unstable@GOTPCREL(%rip), %rax
	movb	(%rax), %al
	movb	%al, 39(%rsp)
	movq	16(%rsp), %rdi
	movq	8(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	24(%rsp), %rsi
	callq	*__rust_alloc@GOTPCREL(%rip)
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end124:
	.size	_ZN5alloc5alloc5alloc17h2ea99f5a52a37bc5E, .Lfunc_end124-_ZN5alloc5alloc5alloc17h2ea99f5a52a37bc5E
	.cfi_endproc

	.section	.text._ZN5alloc5alloc6Global10alloc_impl17hffc5833de396df83E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN5alloc5alloc6Global10alloc_impl17hffc5833de396df83E,@function
_ZN5alloc5alloc6Global10alloc_impl17hffc5833de396df83E:
	.cfi_startproc
	subq	$120, %rsp
	.cfi_def_cfa_offset 128
	movb	%cl, %al
	movb	%al, 47(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 48(%rsp)
	cmpq	$0, %rax
	jne	.LBB125_2
	movq	56(%rsp), %rcx
	movq	%rcx, 24(%rsp)
	xorl	%eax, %eax
	addq	%rcx, %rax
	movq	%rax, 32(%rsp)
	jmp	.LBB125_3
.LBB125_2:
	movb	47(%rsp), %al
	testb	$1, %al
	jne	.LBB125_7
	jmp	.LBB125_6
.LBB125_3:
	movq	24(%rsp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	addq	%rax, %rdi
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h86c3bd06959148f8E
	movq	32(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	$0, 80(%rsp)
.LBB125_5:
	movq	72(%rsp), %rax
	movq	80(%rsp), %rdx
	addq	$120, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB125_6:
	.cfi_def_cfa_offset 128
	movq	56(%rsp), %rdi
	movq	64(%rsp), %rsi
	callq	_ZN5alloc5alloc5alloc17h2ea99f5a52a37bc5E
	movq	%rax, 88(%rsp)
	jmp	.LBB125_8
.LBB125_7:
	movq	56(%rsp), %rdi
	movq	64(%rsp), %rsi
	callq	_ZN5alloc5alloc12alloc_zeroed17h1aa982a589a948d3E
	movq	%rax, 88(%rsp)
.LBB125_8:
	movq	88(%rsp), %rax
	movq	%rax, 16(%rsp)
	cmpq	$0, %rax
	jne	.LBB125_10
	movq	$0, 112(%rsp)
	movq	$0, 104(%rsp)
	movq	.L__unnamed_6(%rip), %rcx
	movq	.L__unnamed_6+8(%rip), %rax
	movq	%rcx, 72(%rsp)
	movq	%rax, 80(%rsp)
	jmp	.LBB125_5
.LBB125_10:
	jmp	.LBB125_11
.LBB125_11:
	movq	16(%rsp), %rdi
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h86c3bd06959148f8E
	movq	16(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	104(%rsp), %rax
	movq	%rax, 96(%rsp)
	movq	96(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	8(%rsp), %rdi
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h86c3bd06959148f8E
	movq	48(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rcx, 72(%rsp)
	movq	%rax, 80(%rsp)
	jmp	.LBB125_5
.Lfunc_end125:
	.size	_ZN5alloc5alloc6Global10alloc_impl17hffc5833de396df83E, .Lfunc_end125-_ZN5alloc5alloc6Global10alloc_impl17hffc5833de396df83E
	.cfi_endproc

	.section	".text._ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4f0bccfbfaf31c73E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4f0bccfbfaf31c73E,@function
_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4f0bccfbfaf31c73E:
	.cfi_startproc
	movl	%esi, %edx
	movl	%edi, %eax
	retq
.Lfunc_end126:
	.size	_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4f0bccfbfaf31c73E, .Lfunc_end126-_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4f0bccfbfaf31c73E
	.cfi_endproc

	.section	".text._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h05dbb7de421211b8E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h05dbb7de421211b8E,@function
_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h05dbb7de421211b8E:
	.cfi_startproc
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rsi, (%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rcx, 24(%rsp)
	movq	24(%rsp), %rax
	movq	%rax, 8(%rsp)
	cmpq	$0, %rax
	jne	.LBB127_2
.LBB127_1:
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB127_2:
	.cfi_def_cfa_offset 64
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdi
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rax
	movq	%rcx, 32(%rsp)
	movq	%rax, 40(%rsp)
	movq	16(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rdx
	callq	*__rust_dealloc@GOTPCREL(%rip)
	jmp	.LBB127_1
.Lfunc_end127:
	.size	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h05dbb7de421211b8E, .Lfunc_end127-_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h05dbb7de421211b8E
	.cfi_endproc

	.section	".text._ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h24e0d6ef3972c815E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h24e0d6ef3972c815E,@function
_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h24e0d6ef3972c815E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rdx
	movq	%rdi, %rax
	movq	(%rax), %rdi
	movq	8(%rax), %rsi
	callq	*_ZN82_$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$u20$as$u20$core..fmt..Debug$GT$3fmt17h23541144cd83794cE@GOTPCREL(%rip)
	andb	$1, %al
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end128:
	.size	_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h24e0d6ef3972c815E, .Lfunc_end128-_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h24e0d6ef3972c815E
	.cfi_endproc

	.section	".text._ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h151c8ee94cbcc689E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h151c8ee94cbcc689E,@function
_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h151c8ee94cbcc689E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, %rax
	movq	8(%rax), %rdi
	movq	16(%rax), %rsi
	callq	_ZN4core3ptr164drop_in_place$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$u5d$$GT$17h617a0ac20e17550fE
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end129:
	.size	_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h151c8ee94cbcc689E, .Lfunc_end129-_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h151c8ee94cbcc689E
	.cfi_endproc

	.section	".text._ZN70_$LT$std..thread..Packet$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haf73fe0fd7d916ebE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN70_$LT$std..thread..Packet$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haf73fe0fd7d916ebE,@function
_ZN70_$LT$std..thread..Packet$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haf73fe0fd7d916ebE:
.Lfunc_begin37:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception37
	subq	$152, %rsp
	.cfi_def_cfa_offset 160
	movq	%rdi, 8(%rsp)
	cmpq	$1, 8(%rdi)
	jne	.LBB130_2
	movq	8(%rsp), %rax
	movq	16(%rax), %rdx
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpq	$0, %rdx
	cmoveq	%rcx, %rax
	cmpq	$1, %rax
	sete	%al
	andb	$1, %al
	movb	%al, 23(%rsp)
	jmp	.LBB130_3
.LBB130_2:
	movb	$0, 23(%rsp)
.LBB130_3:
	movq	8(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 112(%rsp)
	leaq	_ZN3std9panicking3try7do_call17hfc92b566790b4a05E(%rip), %rdi
	leaq	112(%rsp), %rsi
	leaq	_ZN3std9panicking3try8do_catch17h63d187bf7d18a465E(%rip), %rdx
	callq	__rust_try
	movl	%eax, 132(%rsp)
	cmpl	$0, 132(%rsp)
	jne	.LBB130_5
	movq	.L__unnamed_6(%rip), %rcx
	movq	.L__unnamed_6+8(%rip), %rax
	movq	%rcx, 24(%rsp)
	movq	%rax, 32(%rsp)
	jmp	.LBB130_6
.LBB130_5:
	movq	112(%rsp), %rcx
	movq	120(%rsp), %rax
	movq	%rcx, 24(%rsp)
	movq	%rax, 32(%rsp)
.LBB130_6:
	movq	24(%rsp), %rdx
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpq	$0, %rdx
	cmoveq	%rcx, %rax
	cmpq	$1, %rax
	jne	.LBB130_8
	leaq	.L__unnamed_48(%rip), %rax
	movq	%rax, 56(%rsp)
	movq	$1, 64(%rsp)
	movq	.L__unnamed_6(%rip), %rcx
	movq	.L__unnamed_6+8(%rip), %rax
	movq	%rcx, 88(%rsp)
	movq	%rax, 96(%rsp)
	leaq	104(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	$0, 80(%rsp)
.Ltmp298:
	leaq	47(%rsp), %rdi
	leaq	56(%rsp), %rsi
	callq	_ZN3std2io5Write9write_fmt17hde31b2909d30769fE
.Ltmp299:
	movq	%rax, (%rsp)
	jmp	.LBB130_11
.LBB130_8:
	leaq	24(%rsp), %rdi
	callq	_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h86f3fd8e6e4bec47E
	movq	8(%rsp), %rax
	movq	(%rax), %rdx
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpq	$0, %rdx
	cmoveq	%rcx, %rax
	cmpq	$1, %rax
	je	.LBB130_16
	jmp	.LBB130_17
.LBB130_9:
.Ltmp305:
	leaq	24(%rsp), %rdi
	callq	_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h86f3fd8e6e4bec47E
.Ltmp306:
	jmp	.LBB130_15
.LBB130_10:
.Ltmp304:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 136(%rsp)
	movl	%eax, 144(%rsp)
	jmp	.LBB130_9
.LBB130_11:
	movq	(%rsp), %rax
	movq	%rax, 48(%rsp)
.Ltmp300:
	leaq	48(%rsp), %rdi
	callq	_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17hcf3911dc5239d553E
.Ltmp301:
	jmp	.LBB130_12
.LBB130_12:
.Ltmp302:
	movq	_ZN3std3sys3pal4unix14abort_internal17h25c400c692191a4eE@GOTPCREL(%rip), %rax
	callq	*%rax
.Ltmp303:
	jmp	.LBB130_13
.LBB130_13:
	ud2
.LBB130_14:
.Ltmp307:
	movq	_ZN4core9panicking16panic_in_cleanup17h7e5529b9cf989fd4E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB130_15:
	movq	136(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB130_16:
	movq	8(%rsp), %rax
	movq	(%rax), %rdi
	addq	$16, %rdi
	movb	23(%rsp), %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	*_ZN3std6thread6scoped9ScopeData29decrement_num_running_threads17h6b33e017f48618e1E@GOTPCREL(%rip)
.LBB130_17:
	addq	$152, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end130:
	.size	_ZN70_$LT$std..thread..Packet$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haf73fe0fd7d916ebE, .Lfunc_end130-_ZN70_$LT$std..thread..Packet$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haf73fe0fd7d916ebE
	.cfi_endproc
	.section	".gcc_except_table._ZN70_$LT$std..thread..Packet$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17haf73fe0fd7d916ebE","a",@progbits
	.p2align	2, 0x0
GCC_except_table130:
.Lexception37:
	.byte	255
	.byte	155
	.uleb128 .Lttbase27-.Lttbaseref27
.Lttbaseref27:
	.byte	1
	.uleb128 .Lcst_end37-.Lcst_begin37
.Lcst_begin37:
	.uleb128 .Lfunc_begin37-.Lfunc_begin37
	.uleb128 .Ltmp298-.Lfunc_begin37
	.byte	0
	.byte	0
	.uleb128 .Ltmp298-.Lfunc_begin37
	.uleb128 .Ltmp299-.Ltmp298
	.uleb128 .Ltmp304-.Lfunc_begin37
	.byte	0
	.uleb128 .Ltmp299-.Lfunc_begin37
	.uleb128 .Ltmp305-.Ltmp299
	.byte	0
	.byte	0
	.uleb128 .Ltmp305-.Lfunc_begin37
	.uleb128 .Ltmp306-.Ltmp305
	.uleb128 .Ltmp307-.Lfunc_begin37
	.byte	1
	.uleb128 .Ltmp300-.Lfunc_begin37
	.uleb128 .Ltmp303-.Ltmp300
	.uleb128 .Ltmp304-.Lfunc_begin37
	.byte	0
	.uleb128 .Ltmp303-.Lfunc_begin37
	.uleb128 .Lfunc_end130-.Ltmp303
	.byte	0
	.byte	0
.Lcst_end37:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase27:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN70_$LT$std..thread..Packet$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hacdf50245f3c7e86E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN70_$LT$std..thread..Packet$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hacdf50245f3c7e86E,@function
_ZN70_$LT$std..thread..Packet$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hacdf50245f3c7e86E:
.Lfunc_begin38:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception38
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	$0, 16(%rsp)
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rsp)
.Ltmp308:
	callq	_ZN4core3ptr158drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$$GT$17h61cfd786e87c4eafE
.Ltmp309:
	jmp	.LBB131_3
.LBB131_1:
	movq	8(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, 16(%rax)
	movups	16(%rsp), %xmm0
	movups	%xmm0, (%rax)
	movq	40(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB131_2:
.Ltmp310:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 40(%rsp)
	movl	%eax, 48(%rsp)
	jmp	.LBB131_1
.LBB131_3:
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	24(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	32(%rsp), %rcx
	movq	%rcx, 16(%rax)
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end131:
	.size	_ZN70_$LT$std..thread..Packet$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hacdf50245f3c7e86E, .Lfunc_end131-_ZN70_$LT$std..thread..Packet$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hacdf50245f3c7e86E
	.cfi_endproc
	.section	".gcc_except_table._ZN70_$LT$std..thread..Packet$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hacdf50245f3c7e86E","a",@progbits
	.p2align	2, 0x0
GCC_except_table131:
.Lexception38:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end38-.Lcst_begin38
.Lcst_begin38:
	.uleb128 .Ltmp308-.Lfunc_begin38
	.uleb128 .Ltmp309-.Ltmp308
	.uleb128 .Ltmp310-.Lfunc_begin38
	.byte	0
	.uleb128 .Ltmp309-.Lfunc_begin38
	.uleb128 .Lfunc_end131-.Ltmp309
	.byte	0
	.byte	0
.Lcst_end38:
	.p2align	2, 0x0

	.section	".text._ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0094d1c93a267bafE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0094d1c93a267bafE,@function
_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0094d1c93a267bafE:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
	movq	(%rdi), %rcx
	movq	$-1, %rax
	lock		xaddq	%rax, (%rcx)
	movq	%rax, 16(%rsp)
	cmpq	$1, 16(%rsp)
	jne	.LBB132_2
	movq	8(%rsp), %rdi
	#MEMBARRIER
	callq	*_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h63040f5f0687bc6aE@GOTPCREL(%rip)
	jmp	.LBB132_3
.LBB132_2:
	jmp	.LBB132_3
.LBB132_3:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end132:
	.size	_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0094d1c93a267bafE, .Lfunc_end132-_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0094d1c93a267bafE
	.cfi_endproc

	.section	".text._ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h65c87405e223f59fE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h65c87405e223f59fE,@function
_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h65c87405e223f59fE:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
	movq	(%rdi), %rcx
	movq	$-1, %rax
	lock		xaddq	%rax, (%rcx)
	movq	%rax, 16(%rsp)
	cmpq	$1, 16(%rsp)
	jne	.LBB133_2
	movq	8(%rsp), %rdi
	#MEMBARRIER
	callq	_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h2f91be2735378c05E
	jmp	.LBB133_3
.LBB133_2:
	jmp	.LBB133_3
.LBB133_3:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end133:
	.size	_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h65c87405e223f59fE, .Lfunc_end133-_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h65c87405e223f59fE
	.cfi_endproc

	.section	".text._ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8389b9a43b682ef7E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8389b9a43b682ef7E,@function
_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8389b9a43b682ef7E:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
	movq	(%rdi), %rcx
	movq	$-1, %rax
	lock		xaddq	%rax, (%rcx)
	movq	%rax, 16(%rsp)
	cmpq	$1, 16(%rsp)
	jne	.LBB134_2
	movq	8(%rsp), %rdi
	#MEMBARRIER
	callq	_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf830c1162147d516E
	jmp	.LBB134_3
.LBB134_2:
	jmp	.LBB134_3
.LBB134_3:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end134:
	.size	_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8389b9a43b682ef7E, .Lfunc_end134-_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8389b9a43b682ef7E
	.cfi_endproc

	.section	".text._ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94c220638bd9afb5E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94c220638bd9afb5E,@function
_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94c220638bd9afb5E:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
	movq	(%rdi), %rcx
	movq	$-1, %rax
	lock		xaddq	%rax, (%rcx)
	movq	%rax, 16(%rsp)
	cmpq	$1, 16(%rsp)
	jne	.LBB135_2
	movq	8(%rsp), %rdi
	#MEMBARRIER
	callq	*_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hba8fde972cc551e1E@GOTPCREL(%rip)
	jmp	.LBB135_3
.LBB135_2:
	jmp	.LBB135_3
.LBB135_3:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end135:
	.size	_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94c220638bd9afb5E, .Lfunc_end135-_ZN71_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h94c220638bd9afb5E
	.cfi_endproc

	.section	".text._ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h30ae323a73e30025E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h30ae323a73e30025E,@function
_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h30ae323a73e30025E:
	.cfi_startproc
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, 8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	8(%rdi), %rax
	movq	8(%rax), %rcx
	movq	%rcx, 56(%rsp)
	movq	56(%rsp), %rcx
	movq	%rcx, 24(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	32(%rsp), %rsi
	movq	24(%rsp), %rdi
	callq	_ZN4core5alloc6layout6Layout25from_size_align_unchecked18precondition_check17h13be2f52823a406dE
	movq	24(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rax, 48(%rsp)
	movq	%rcx, 40(%rsp)
	cmpq	$0, %rax
	jne	.LBB136_4
.LBB136_3:
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB136_4:
	.cfi_def_cfa_offset 80
	movq	16(%rsp), %rsi
	movq	8(%rsp), %rdi
	addq	$16, %rdi
	movq	40(%rsp), %rdx
	movq	48(%rsp), %rcx
	callq	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h05dbb7de421211b8E
	jmp	.LBB136_3
.Lfunc_end136:
	.size	_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h30ae323a73e30025E, .Lfunc_end136-_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h30ae323a73e30025E
	.cfi_endproc

	.section	".text._ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3cc23fd7e9ef9b80E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3cc23fd7e9ef9b80E,@function
_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3cc23fd7e9ef9b80E:
	.cfi_startproc
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, 8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	$24, 56(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	$8, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	32(%rsp), %rsi
	movq	24(%rsp), %rdi
	callq	_ZN4core5alloc6layout6Layout25from_size_align_unchecked18precondition_check17h13be2f52823a406dE
	movq	24(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rax, 48(%rsp)
	movq	%rcx, 40(%rsp)
	cmpq	$0, %rax
	jne	.LBB137_4
.LBB137_3:
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB137_4:
	.cfi_def_cfa_offset 80
	movq	16(%rsp), %rsi
	movq	8(%rsp), %rdi
	addq	$8, %rdi
	movq	40(%rsp), %rdx
	movq	48(%rsp), %rcx
	callq	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h05dbb7de421211b8E
	jmp	.LBB137_3
.Lfunc_end137:
	.size	_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3cc23fd7e9ef9b80E, .Lfunc_end137-_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3cc23fd7e9ef9b80E
	.cfi_endproc

	.section	".text._ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7cbcc686787f3cd7E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7cbcc686787f3cd7E,@function
_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7cbcc686787f3cd7E:
	.cfi_startproc
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, 8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	8(%rdi), %rax
	movq	8(%rax), %rcx
	movq	%rcx, 56(%rsp)
	movq	56(%rsp), %rcx
	movq	%rcx, 24(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	32(%rsp), %rsi
	movq	24(%rsp), %rdi
	callq	_ZN4core5alloc6layout6Layout25from_size_align_unchecked18precondition_check17h13be2f52823a406dE
	movq	24(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rax, 48(%rsp)
	movq	%rcx, 40(%rsp)
	cmpq	$0, %rax
	jne	.LBB138_4
.LBB138_3:
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB138_4:
	.cfi_def_cfa_offset 80
	movq	16(%rsp), %rsi
	movq	8(%rsp), %rdi
	addq	$16, %rdi
	movq	40(%rsp), %rdx
	movq	48(%rsp), %rcx
	callq	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h05dbb7de421211b8E
	jmp	.LBB138_3
.Lfunc_end138:
	.size	_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7cbcc686787f3cd7E, .Lfunc_end138-_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7cbcc686787f3cd7E
	.cfi_endproc

	.section	".text._ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9add8003a150a638E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9add8003a150a638E,@function
_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9add8003a150a638E:
	.cfi_startproc
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, 8(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)
	movq	8(%rdi), %rax
	movq	8(%rax), %rcx
	movq	%rcx, 56(%rsp)
	movq	56(%rsp), %rcx
	movq	%rcx, 24(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	32(%rsp), %rsi
	movq	24(%rsp), %rdi
	callq	_ZN4core5alloc6layout6Layout25from_size_align_unchecked18precondition_check17h13be2f52823a406dE
	movq	24(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rax, 48(%rsp)
	movq	%rcx, 40(%rsp)
	cmpq	$0, %rax
	jne	.LBB139_4
.LBB139_3:
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB139_4:
	.cfi_def_cfa_offset 80
	movq	16(%rsp), %rsi
	movq	8(%rsp), %rdi
	addq	$16, %rdi
	movq	40(%rsp), %rdx
	movq	48(%rsp), %rcx
	callq	_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h05dbb7de421211b8E
	jmp	.LBB139_3
.Lfunc_end139:
	.size	_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9add8003a150a638E, .Lfunc_end139-_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9add8003a150a638E
	.cfi_endproc

	.section	".text._ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h692ae909f4aaa8ceE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h692ae909f4aaa8ceE,@function
_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h692ae909f4aaa8ceE:
	.cfi_startproc
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, 32(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 40(%rsp)
	cmpq	$-1, %rax
	je	.LBB140_2
	movq	40(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	48(%rsp), %rcx
	movq	$-1, %rax
	lock		xaddq	%rax, (%rcx)
	movq	%rax, 64(%rsp)
	cmpq	$1, 64(%rsp)
	je	.LBB140_3
	jmp	.LBB140_4
.LBB140_2:
	jmp	.LBB140_8
.LBB140_3:
	movq	32(%rsp), %rax
	#MEMBARRIER
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, (%rsp)
	movq	(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	$48, 72(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	$8, 80(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 24(%rsp)
	jmp	.LBB140_5
.LBB140_4:
	jmp	.LBB140_7
.LBB140_5:
	movq	24(%rsp), %rsi
	movq	16(%rsp), %rdi
	callq	_ZN4core5alloc6layout6Layout25from_size_align_unchecked18precondition_check17h13be2f52823a406dE
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rdx
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdi
	callq	_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hd46428164d4df450E
.LBB140_7:
	jmp	.LBB140_8
.LBB140_8:
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end140:
	.size	_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h692ae909f4aaa8ceE, .Lfunc_end140-_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h692ae909f4aaa8ceE
	.cfi_endproc

	.section	".text._ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha658c30cada23ec1E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha658c30cada23ec1E,@function
_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha658c30cada23ec1E:
	.cfi_startproc
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, 32(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 40(%rsp)
	cmpq	$-1, %rax
	je	.LBB141_2
	movq	40(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	48(%rsp), %rcx
	movq	$-1, %rax
	lock		xaddq	%rax, (%rcx)
	movq	%rax, 64(%rsp)
	cmpq	$1, 64(%rsp)
	je	.LBB141_3
	jmp	.LBB141_4
.LBB141_2:
	jmp	.LBB141_8
.LBB141_3:
	movq	32(%rsp), %rax
	#MEMBARRIER
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, (%rsp)
	movq	(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	$40, 72(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	$8, 80(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 24(%rsp)
	jmp	.LBB141_5
.LBB141_4:
	jmp	.LBB141_7
.LBB141_5:
	movq	24(%rsp), %rsi
	movq	16(%rsp), %rdi
	callq	_ZN4core5alloc6layout6Layout25from_size_align_unchecked18precondition_check17h13be2f52823a406dE
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rdx
	movq	8(%rsp), %rsi
	movq	(%rsp), %rdi
	callq	_ZN48_$LT$$RF$A$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hd46428164d4df450E
.LBB141_7:
	jmp	.LBB141_8
.LBB141_8:
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end141:
	.size	_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha658c30cada23ec1E, .Lfunc_end141-_ZN72_$LT$alloc..sync..Weak$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha658c30cada23ec1E
	.cfi_endproc

	.section	".text._ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h41a8c79b927a4d3fE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h41a8c79b927a4d3fE,@function
_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h41a8c79b927a4d3fE:
	.cfi_startproc
	subq	$136, %rsp
	.cfi_def_cfa_offset 144
	movq	%rdi, (%rsp)
	movq	%rsi, 8(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 16(%rsp)
	movq	8(%rsi), %rax
	movq	%rax, 24(%rsp)
	movq	24(%rsi), %rcx
	movq	%rcx, 32(%rsp)
	cmpq	$0, %rax
	jne	.LBB142_2
	movq	32(%rsp), %rax
	cmpq	$0, %rax
	je	.LBB142_3
	jmp	.LBB142_4
.LBB142_2:
	movq	24(%rsp), %rax
	cmpq	$1, %rax
	je	.LBB142_6
	jmp	.LBB142_4
.LBB142_3:
	movl	$1, %eax
	movq	%rax, 64(%rsp)
	movq	$0, 72(%rsp)
	jmp	.LBB142_5
.LBB142_4:
	movq	.L__unnamed_6(%rip), %rcx
	movq	.L__unnamed_6+8(%rip), %rax
	movq	%rcx, 64(%rsp)
	movq	%rax, 72(%rsp)
.LBB142_5:
	movb	$0, 87(%rsp)
	testb	$1, 87(%rsp)
	jne	.LBB142_9
	jmp	.LBB142_8
.LBB142_6:
	movq	32(%rsp), %rax
	cmpq	$0, %rax
	jne	.LBB142_4
	movq	16(%rsp), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rax
	movq	%rcx, 64(%rsp)
	movq	%rax, 72(%rsp)
	jmp	.LBB142_5
.LBB142_8:
	jmp	.LBB142_10
.LBB142_9:
	movq	64(%rsp), %rcx
	movq	72(%rsp), %rax
	movq	%rcx, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	48(%rsp), %rdx
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpq	$0, %rdx
	cmoveq	%rcx, %rax
	cmpq	$1, %rax
	je	.LBB142_11
.LBB142_10:
	movq	8(%rsp), %rsi
	leaq	88(%rsp), %rdi
	movl	$48, %edx
	callq	memcpy@PLT
	movq	(%rsp), %rdi
	leaq	.L__unnamed_4(%rip), %rsi
	leaq	88(%rsp), %rdx
	callq	*_ZN4core3fmt5write17h5af61a909e3ec64dE@GOTPCREL(%rip)
	andb	$1, %al
	movb	%al, 47(%rsp)
	jmp	.LBB142_12
.LBB142_11:
	movq	(%rsp), %rdi
	movq	48(%rsp), %rsi
	movq	56(%rsp), %rdx
	callq	_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hc5aa0031f8765215E
	andb	$1, %al
	movb	%al, 47(%rsp)
.LBB142_12:
	movb	47(%rsp), %al
	andb	$1, %al
	addq	$136, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end142:
	.size	_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h41a8c79b927a4d3fE, .Lfunc_end142-_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h41a8c79b927a4d3fE
	.cfi_endproc

	.section	".text._ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e6253e5046a6bcbE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e6253e5046a6bcbE,@function
_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e6253e5046a6bcbE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$8, %esi
	movl	$16, %edx
	callq	*_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$10deallocate17h269bda164a04af23E@GOTPCREL(%rip)
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end143:
	.size	_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e6253e5046a6bcbE, .Lfunc_end143-_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2e6253e5046a6bcbE
	.cfi_endproc

	.section	".text._ZN78_$LT$$u21$$u20$as$u20$std..sys..thread_local..native..lazy..DestroyedState$GT$13register_dtor17hc87af820c84181d9E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN78_$LT$$u21$$u20$as$u20$std..sys..thread_local..native..lazy..DestroyedState$GT$13register_dtor17hc87af820c84181d9E,@function
_ZN78_$LT$$u21$$u20$as$u20$std..sys..thread_local..native..lazy..DestroyedState$GT$13register_dtor17hc87af820c84181d9E:
	.cfi_startproc
	retq
.Lfunc_end144:
	.size	_ZN78_$LT$$u21$$u20$as$u20$std..sys..thread_local..native..lazy..DestroyedState$GT$13register_dtor17hc87af820c84181d9E, .Lfunc_end144-_ZN78_$LT$$u21$$u20$as$u20$std..sys..thread_local..native..lazy..DestroyedState$GT$13register_dtor17hc87af820c84181d9E
	.cfi_endproc

	.section	".text._ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17hea22e8e30106235bE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17hea22e8e30106235bE,@function
_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17hea22e8e30106235bE:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	(%rdi), %rsi
	leaq	8(%rsp), %rdi
	callq	_ZN3std2io5error14repr_bitpacked11decode_repr17ha579014c57b6a95eE
	leaq	8(%rsp), %rdi
	callq	_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17h525aae72b147affcE
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end145:
	.size	_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17hea22e8e30106235bE, .Lfunc_end145-_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17hea22e8e30106235bE
	.cfi_endproc

	.section	".text._ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hd35b5e8cbfaaa481E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hd35b5e8cbfaaa481E,@function
_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hd35b5e8cbfaaa481E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	jmp	.LBB146_1
.LBB146_1:
	movq	(%rsp), %rdi
	callq	_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked18precondition_check17h86c3bd06959148f8E
	movq	(%rsp), %rax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end146:
	.size	_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hd35b5e8cbfaaa481E, .Lfunc_end146-_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17hd35b5e8cbfaaa481E
	.cfi_endproc

	.section	".text._ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hc5aa0031f8765215E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hc5aa0031f8765215E,@function
_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hc5aa0031f8765215E:
.Lfunc_begin39:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception39
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 8(%rsp)
	movq	(%rdi), %rdi
	callq	_ZN3std2io5Write9write_all17hb1778407d497c276E
	movq	%rax, 24(%rsp)
	movq	24(%rsp), %rdx
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpq	$0, %rdx
	cmoveq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB147_2
	movb	$0, 23(%rsp)
	jmp	.LBB147_3
.LBB147_2:
	movq	8(%rsp), %rdi
	movq	24(%rsp), %rax
	movq	%rax, 32(%rsp)
	addq	$8, %rdi
.Ltmp311:
	callq	_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17hcf3911dc5239d553E
.Ltmp312:
	jmp	.LBB147_6
.LBB147_3:
	movb	23(%rsp), %al
	andb	$1, %al
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB147_4:
	.cfi_def_cfa_offset 64
	movq	8(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	40(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB147_5:
.Ltmp313:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 40(%rsp)
	movl	%eax, 48(%rsp)
	jmp	.LBB147_4
.LBB147_6:
	movq	8(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movb	$1, 23(%rsp)
	jmp	.LBB147_3
.Lfunc_end147:
	.size	_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hc5aa0031f8765215E, .Lfunc_end147-_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hc5aa0031f8765215E
	.cfi_endproc
	.section	".gcc_except_table._ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hc5aa0031f8765215E","a",@progbits
	.p2align	2, 0x0
GCC_except_table147:
.Lexception39:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end39-.Lcst_begin39
.Lcst_begin39:
	.uleb128 .Lfunc_begin39-.Lfunc_begin39
	.uleb128 .Ltmp311-.Lfunc_begin39
	.byte	0
	.byte	0
	.uleb128 .Ltmp311-.Lfunc_begin39
	.uleb128 .Ltmp312-.Ltmp311
	.uleb128 .Ltmp313-.Lfunc_begin39
	.byte	0
	.uleb128 .Ltmp312-.Lfunc_begin39
	.uleb128 .Lfunc_end147-.Ltmp312
	.byte	0
	.byte	0
.Lcst_end39:
	.p2align	2, 0x0

	.section	".text._ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h770b8309cacf6eceE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h770b8309cacf6eceE,@function
_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h770b8309cacf6eceE:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
	movl	(%rdi), %eax
	cmpl	4(%rdi), %eax
	jl	.LBB148_2
	movl	$0, 16(%rsp)
	jmp	.LBB148_3
.LBB148_2:
	movq	8(%rsp), %rax
	movl	(%rax), %edi
	movl	%edi, 4(%rsp)
	movl	$1, %esi
	callq	_ZN47_$LT$i32$u20$as$u20$core..iter..range..Step$GT$17forward_unchecked17hb138b5d92c24ee11E
	movq	8(%rsp), %rcx
	movl	%eax, %edx
	movl	4(%rsp), %eax
	movl	%edx, (%rcx)
	movl	%eax, 20(%rsp)
	movl	$1, 16(%rsp)
.LBB148_3:
	movl	16(%rsp), %eax
	movl	20(%rsp), %edx
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end148:
	.size	_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h770b8309cacf6eceE, .Lfunc_end148-_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17h770b8309cacf6eceE
	.cfi_endproc

	.section	.text._ZN4main4main17h9b68587896d3bd06E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4main4main17h9b68587896d3bd06E,@function
_ZN4main4main17h9b68587896d3bd06E:
.Lfunc_begin40:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception40
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	xorl	%edi, %edi
	movl	$2, %esi
	callq	_ZN4core4iter6traits8iterator8Iterator3map17h3472c9a8f5c30a3aE
	movl	%eax, %edi
	movl	%edx, %esi
	callq	_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h4f0bccfbfaf31c73E
	movl	%eax, (%rsp)
	movl	%edx, 4(%rsp)
.LBB149_1:
	leaq	8(%rsp), %rdi
	movq	%rsp, %rsi
	callq	_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h84b11ae4936d437bE
	movq	8(%rsp), %rdx
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpq	$0, %rdx
	cmoveq	%rcx, %rax
	cmpq	$0, %rax
	jne	.LBB149_3
	addq	$104, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB149_3:
	.cfi_def_cfa_offset 112
	movq	8(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	16(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	24(%rsp), %rax
	movq	%rax, 48(%rsp)
	leaq	32(%rsp), %rdi
	callq	_ZN3std6thread19JoinHandle$LT$T$GT$4join17hff8ce58798cf3f71E
	movq	%rax, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	56(%rsp), %rax
	cmpq	$0, %rax
	sete	%al
	testb	$1, %al
	jne	.LBB149_9
	movq	56(%rsp), %rcx
	movq	64(%rsp), %rax
	movq	%rcx, 72(%rsp)
	movq	%rax, 80(%rsp)
.Ltmp314:
	leaq	.L__unnamed_49(%rip), %rdi
	leaq	.L__unnamed_50(%rip), %rcx
	leaq	.L__unnamed_51(%rip), %r8
	movq	_ZN4core6result13unwrap_failed17h3ff7104a9ace307aE@GOTPCREL(%rip), %rax
	movl	$43, %esi
	leaq	72(%rsp), %rdx
	callq	*%rax
.Ltmp315:
	jmp	.LBB149_6
.LBB149_5:
.Ltmp316:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 88(%rsp)
	movl	%eax, 96(%rsp)
.Ltmp317:
	leaq	72(%rsp), %rdi
	callq	_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17h1ca612abffb05831E
.Ltmp318:
	jmp	.LBB149_8
.LBB149_6:
	ud2
.LBB149_7:
.Ltmp319:
	movq	_ZN4core9panicking16panic_in_cleanup17h7e5529b9cf989fd4E@GOTPCREL(%rip), %rax
	callq	*%rax
.LBB149_8:
	movq	88(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB149_9:
	jmp	.LBB149_1
.Lfunc_end149:
	.size	_ZN4main4main17h9b68587896d3bd06E, .Lfunc_end149-_ZN4main4main17h9b68587896d3bd06E
	.cfi_endproc
	.section	.gcc_except_table._ZN4main4main17h9b68587896d3bd06E,"a",@progbits
	.p2align	2, 0x0
GCC_except_table149:
.Lexception40:
	.byte	255
	.byte	155
	.uleb128 .Lttbase28-.Lttbaseref28
.Lttbaseref28:
	.byte	1
	.uleb128 .Lcst_end40-.Lcst_begin40
.Lcst_begin40:
	.uleb128 .Lfunc_begin40-.Lfunc_begin40
	.uleb128 .Ltmp314-.Lfunc_begin40
	.byte	0
	.byte	0
	.uleb128 .Ltmp314-.Lfunc_begin40
	.uleb128 .Ltmp315-.Ltmp314
	.uleb128 .Ltmp316-.Lfunc_begin40
	.byte	0
	.uleb128 .Ltmp317-.Lfunc_begin40
	.uleb128 .Ltmp318-.Ltmp317
	.uleb128 .Ltmp319-.Lfunc_begin40
	.byte	1
	.uleb128 .Ltmp318-.Lfunc_begin40
	.uleb128 .Lfunc_end149-.Ltmp318
	.byte	0
	.byte	0
.Lcst_end40:
	.byte	127
	.byte	0
	.p2align	2, 0x0
.Lttbase28:
	.byte	0
	.p2align	2, 0x0

	.section	".text._ZN4main4main28_$u7b$$u7b$closure$u7d$$u7d$17hc4cfbd6e61b8f1c9E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4main4main28_$u7b$$u7b$closure$u7d$$u7d$17hc4cfbd6e61b8f1c9E,@function
_ZN4main4main28_$u7b$$u7b$closure$u7d$$u7d$17hc4cfbd6e61b8f1c9E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, %rax
	movq	%rax, (%rsp)
	callq	_ZN3std6thread5spawn17ha97b53404027e468E
	movq	(%rsp), %rax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end150:
	.size	_ZN4main4main28_$u7b$$u7b$closure$u7d$$u7d$17hc4cfbd6e61b8f1c9E, .Lfunc_end150-_ZN4main4main28_$u7b$$u7b$closure$u7d$$u7d$17hc4cfbd6e61b8f1c9E
	.cfi_endproc

	.section	".text._ZN4main4main28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hf4dc5c0ecbb8a9daE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4main4main28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hf4dc5c0ecbb8a9daE,@function
_ZN4main4main28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hf4dc5c0ecbb8a9daE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	.L__unnamed_52(%rip), %rdi
	callq	_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hb3c437f00506a755E
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end151:
	.size	_ZN4main4main28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hf4dc5c0ecbb8a9daE, .Lfunc_end151-_ZN4main4main28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hf4dc5c0ecbb8a9daE
	.cfi_endproc

	.section	".text._ZN4main4main28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h091239cf106968f4E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4main4main28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h091239cf106968f4E,@function
_ZN4main4main28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h091239cf106968f4E:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
	callq	_ZN4core4cell13Cell$LT$T$GT$3get17hb2c3ca82ece649d4E
	addl	$1, %eax
	movl	%eax, 20(%rsp)
	setb	%al
	jb	.LBB152_2
	movl	20(%rsp), %esi
	movq	8(%rsp), %rdi
	callq	_ZN4core4cell13Cell$LT$T$GT$3set17he71e7b5d47b9c773E
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB152_2:
	.cfi_def_cfa_offset 32
	leaq	.L__unnamed_53(%rip), %rdi
	movq	_ZN4core9panicking11panic_const24panic_const_add_overflow17hca367bc6c4b9279fE@GOTPCREL(%rip), %rax
	callq	*%rax
.Lfunc_end152:
	.size	_ZN4main4main28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h091239cf106968f4E, .Lfunc_end152-_ZN4main4main28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h091239cf106968f4E
	.cfi_endproc

	.section	.text._ZN4main14THREAD_COUNTER6__init17hef72959ae3e214a5E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4main14THREAD_COUNTER6__init17hef72959ae3e214a5E,@function
_ZN4main14THREAD_COUNTER6__init17hef72959ae3e214a5E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	xorl	%edi, %edi
	callq	_ZN4core4cell13Cell$LT$T$GT$3new17hb01917d471b977d5E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end153:
	.size	_ZN4main14THREAD_COUNTER6__init17hef72959ae3e214a5E, .Lfunc_end153-_ZN4main14THREAD_COUNTER6__init17hef72959ae3e214a5E
	.cfi_endproc

	.section	".text._ZN4main14THREAD_COUNTER29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hec611af76fa17f89E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4main14THREAD_COUNTER29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hec611af76fa17f89E,@function
_ZN4main14THREAD_COUNTER29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hec611af76fa17f89E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%fs:0, %rax
	leaq	_ZN4main14THREAD_COUNTER29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h85054acb854e7b1eE@TPOFF(%rax), %rdi
	callq	_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17he2c5f94da67ee8d0E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end154:
	.size	_ZN4main14THREAD_COUNTER29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hec611af76fa17f89E, .Lfunc_end154-_ZN4main14THREAD_COUNTER29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hec611af76fa17f89E
	.cfi_endproc

	.section	.text.__rust_try,"ax",@progbits
	.p2align	4, 0x90
	.type	__rust_try,@function
__rust_try:
.Lfunc_begin41:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception41
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rsi, (%rsp)
	movq	%rdi, %rax
	movq	(%rsp), %rdi
	movq	%rdi, 8(%rsp)
	movq	%rdx, 16(%rsp)
.Ltmp320:
	callq	*%rax
.Ltmp321:
	jmp	.LBB155_1
.LBB155_1:
	xorl	%eax, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB155_2:
	.cfi_def_cfa_offset 32
.Ltmp322:
	movq	8(%rsp), %rdi
	movq	%rax, %rsi
	movq	16(%rsp), %rax
	callq	*%rax
	movl	$1, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end155:
	.size	__rust_try, .Lfunc_end155-__rust_try
	.cfi_endproc
	.section	.gcc_except_table.__rust_try,"a",@progbits
	.p2align	2, 0x0
GCC_except_table155:
.Lexception41:
	.byte	255
	.byte	155
	.uleb128 .Lttbase29-.Lttbaseref29
.Lttbaseref29:
	.byte	1
	.uleb128 .Lcst_end41-.Lcst_begin41
.Lcst_begin41:
	.uleb128 .Ltmp320-.Lfunc_begin41
	.uleb128 .Ltmp321-.Ltmp320
	.uleb128 .Ltmp322-.Lfunc_begin41
	.byte	1
	.uleb128 .Ltmp321-.Lfunc_begin41
	.uleb128 .Lfunc_end155-.Ltmp321
	.byte	0
	.byte	0
.Lcst_end41:
	.byte	1
	.byte	0
	.p2align	2, 0x0
	.long	0
.Lttbase29:
	.p2align	2, 0x0

	.section	.text.main,"ax",@progbits
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rdx
	movslq	%edi, %rsi
	leaq	_ZN4main4main17h9b68587896d3bd06E(%rip), %rdi
	xorl	%ecx, %ecx
	callq	_ZN3std2rt10lang_start17hc40032e9d0726b86E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end156:
	.size	main, .Lfunc_end156-main
	.cfi_endproc

	.type	.L__unnamed_1,@object
	.section	.rodata..L__unnamed_1,"a",@progbits
.L__unnamed_1:
	.ascii	"unsafe precondition(s) violated: slice::get_unchecked requires that the range is within the slice"
	.size	.L__unnamed_1, 97

	.type	.L__unnamed_54,@object
	.section	.rodata..L__unnamed_54,"a",@progbits
.L__unnamed_54:
	.ascii	"failed to write whole buffer"
	.size	.L__unnamed_54, 28

	.type	.L__unnamed_2,@object
	.section	.data.rel.ro..L__unnamed_2,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_2:
	.quad	.L__unnamed_54
	.ascii	"\034\000\000\000\000\000\000\000\027"
	.zero	7
	.size	.L__unnamed_2, 24

	.type	.L__unnamed_55,@object
	.section	.rodata..L__unnamed_55,"a",@progbits
.L__unnamed_55:
	.ascii	"/home/don/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/io/mod.rs"
	.size	.L__unnamed_55, 107

	.type	.L__unnamed_3,@object
	.section	.data.rel.ro..L__unnamed_3,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_3:
	.quad	.L__unnamed_55
	.asciz	"k\000\000\000\000\000\000\000\340\006\000\000$\000\000"
	.size	.L__unnamed_3, 24

	.type	.L__unnamed_4,@object
	.section	.data.rel.ro..L__unnamed_4,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_4:
	.quad	_ZN4core3ptr97drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$std..sys..pal..unix..stdio..Stderr$GT$$GT$17h9ad9498191c09a39E
	.asciz	"\020\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17hc5aa0031f8765215E
	.quad	_ZN4core3fmt5Write10write_char17hb16a39bc2a52fca6E
	.quad	_ZN4core3fmt5Write9write_fmt17h341b6094eb861f0eE
	.size	.L__unnamed_4, 48

	.type	.L__unnamed_56,@object
	.section	.rodata..L__unnamed_56,"a",@progbits
.L__unnamed_56:
	.ascii	"a formatting trait implementation returned an error when the underlying stream did not"
	.size	.L__unnamed_56, 86

	.type	.L__unnamed_5,@object
	.section	.data.rel.ro..L__unnamed_5,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_5:
	.quad	.L__unnamed_56
	.asciz	"V\000\000\000\000\000\000"
	.size	.L__unnamed_5, 16

	.type	.L__unnamed_6,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.L__unnamed_6:
	.zero	8
	.zero	8
	.size	.L__unnamed_6, 16

	.type	.L__unnamed_7,@object
	.section	.data.rel.ro..L__unnamed_7,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_7:
	.quad	.L__unnamed_55
	.asciz	"k\000\000\000\000\000\000\000k\007\000\000\025\000\000"
	.size	.L__unnamed_7, 24

	.type	.L__unnamed_8,@object
	.section	.rodata..L__unnamed_8,"a",@progbits
.L__unnamed_8:
	.ascii	"internal error: entered unreachable code"
	.size	.L__unnamed_8, 40

	.type	.L__unnamed_57,@object
	.section	.rodata..L__unnamed_57,"a",@progbits
.L__unnamed_57:
	.ascii	"/home/don/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/io/error/repr_bitpacked.rs"
	.size	.L__unnamed_57, 124

	.type	.L__unnamed_9,@object
	.section	.data.rel.ro..L__unnamed_9,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_9:
	.quad	.L__unnamed_57
	.asciz	"|\000\000\000\000\000\000\000\"\001\000\000\r\000\000"
	.size	.L__unnamed_9, 24

	.type	.L__unnamed_10,@object
	.section	.rodata..L__unnamed_10,"a",@progbits
.L__unnamed_10:
	.byte	35
	.size	.L__unnamed_10, 1

	.type	.L__unnamed_11,@object
	.section	.data.rel.ro..L__unnamed_11,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_11:
	.asciz	"\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17he8a8f7d581b9789dE
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hc82691f650a01c78E
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hc82691f650a01c78E
	.size	.L__unnamed_11, 48

	.type	.L__unnamed_58,@object
	.section	.rodata..L__unnamed_58,"a",@progbits
.L__unnamed_58:
	.ascii	"/home/don/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/thread/mod.rs"
	.size	.L__unnamed_58, 111

	.type	.L__unnamed_12,@object
	.section	.data.rel.ro..L__unnamed_12,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_12:
	.quad	.L__unnamed_58
	.asciz	"o\000\000\000\000\000\000\000\316\006\000\000(\000\000"
	.size	.L__unnamed_12, 24

	.type	.L__unnamed_13,@object
	.section	.data.rel.ro..L__unnamed_13,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_13:
	.quad	.L__unnamed_58
	.asciz	"o\000\000\000\000\000\000\000\316\006\000\000I\000\000"
	.size	.L__unnamed_13, 24

	.type	.L__unnamed_59,@object
	.section	.rodata..L__unnamed_59,"a",@progbits
.L__unnamed_59:
	.ascii	"/home/don/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/std/src/thread/local.rs"
	.size	.L__unnamed_59, 113

	.type	.L__unnamed_14,@object
	.section	.data.rel.ro..L__unnamed_14,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_14:
	.quad	.L__unnamed_59
	.asciz	"q\000\000\000\000\000\000\000\024\001\000\000\031\000\000"
	.size	.L__unnamed_14, 24

	.type	.L__unnamed_15,@object
	.section	.rodata..L__unnamed_15,"a",@progbits
.L__unnamed_15:
	.ascii	"failed to spawn thread"
	.size	.L__unnamed_15, 22

	.type	.L__unnamed_16,@object
	.section	.data.rel.ro..L__unnamed_16,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_16:
	.quad	.L__unnamed_58
	.asciz	"o\000\000\000\000\000\000\000\331\002\000\000\035\000\000"
	.size	.L__unnamed_16, 24

	.type	.L__unnamed_17,@object
	.section	.data.rel.ro..L__unnamed_17,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_17:
	.quad	_ZN4core3ptr175drop_in_place$LT$std..thread..Builder..spawn_unchecked_$LT$main..main..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h809f0dd2a6a294efE
	.asciz	"0\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hdbc78aaa9d32bc57E
	.size	.L__unnamed_17, 32

	.type	.L__unnamed_60,@object
	.section	.rodata..L__unnamed_60,"a",@progbits
.L__unnamed_60:
	.ascii	"fatal runtime error: something here is badly broken!\n"
	.size	.L__unnamed_60, 53

	.type	.L__unnamed_18,@object
	.section	.data.rel.ro..L__unnamed_18,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_18:
	.quad	.L__unnamed_60
	.asciz	"5\000\000\000\000\000\000"
	.size	.L__unnamed_18, 16

	.type	.L__unnamed_19,@object
	.section	.rodata..L__unnamed_19,"a",@progbits
.L__unnamed_19:
	.ascii	"RUST_MIN_STACK"
	.size	.L__unnamed_19, 14

	.type	.L__unnamed_20,@object
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2, 0x0
.L__unnamed_20:
	.zero	4
	.zero	4
	.size	.L__unnamed_20, 8

	.type	.L__unnamed_61,@object
	.section	.rodata..L__unnamed_61,"a",@progbits
.L__unnamed_61:
	.ascii	"/home/don/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/num/mod.rs"
	.size	.L__unnamed_61, 109

	.type	.L__unnamed_21,@object
	.section	.data.rel.ro..L__unnamed_21,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_21:
	.quad	.L__unnamed_61
	.asciz	"m\000\000\000\000\000\000\000D\006\000\000\001\000\000"
	.size	.L__unnamed_21, 24

	.type	.L__unnamed_24,@object
	.section	.rodata..L__unnamed_24,"a",@progbits
.L__unnamed_24:
	.ascii	"unsafe precondition(s) violated: ptr::read_volatile requires that the pointer argument is aligned and non-null"
	.size	.L__unnamed_24, 110

	.type	.L__unnamed_62,@object
	.section	.rodata..L__unnamed_62,"a",@progbits
.L__unnamed_62:
	.ascii	"is_aligned_to: align is not a power-of-two"
	.size	.L__unnamed_62, 42

	.type	.L__unnamed_22,@object
	.section	.data.rel.ro..L__unnamed_22,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_22:
	.quad	.L__unnamed_62
	.asciz	"*\000\000\000\000\000\000"
	.size	.L__unnamed_22, 16

	.type	.L__unnamed_63,@object
	.section	.rodata..L__unnamed_63,"a",@progbits
.L__unnamed_63:
	.ascii	"/home/don/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ptr/const_ptr.rs"
	.size	.L__unnamed_63, 115

	.type	.L__unnamed_23,@object
	.section	.data.rel.ro..L__unnamed_23,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_23:
	.quad	.L__unnamed_63
	.asciz	"s\000\000\000\000\000\000\000\310\005\000\000\r\000\000"
	.size	.L__unnamed_23, 24

	.type	.L__unnamed_25,@object
	.section	.rodata..L__unnamed_25,"a",@progbits
.L__unnamed_25:
	.ascii	"unsafe precondition(s) violated: ptr::replace requires that the pointer argument is aligned and non-null"
	.size	.L__unnamed_25, 104

	.type	.L__unnamed_26,@object
	.section	.rodata..L__unnamed_26,"a",@progbits
.L__unnamed_26:
	.ascii	"unsafe precondition(s) violated: NonNull::new_unchecked requires that the pointer is non-null"
	.size	.L__unnamed_26, 93

	.type	.L__unnamed_64,@object
	.section	.rodata..L__unnamed_64,"a",@progbits
.L__unnamed_64:
	.ascii	"/home/don/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/char/methods.rs"
	.size	.L__unnamed_64, 114

	.type	.L__unnamed_27,@object
	.section	.data.rel.ro..L__unnamed_27,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_27:
	.quad	.L__unnamed_64
	.asciz	"r\000\000\000\000\000\000\000\032\007\000\000\r\000\000"
	.size	.L__unnamed_27, 24

	.type	.L__unnamed_65,@object
	.section	.rodata..L__unnamed_65,"a",@progbits
.L__unnamed_65:
	.ascii	"to_digit: invalid radix -- radix must be in the range 2 to 36 inclusive"
	.size	.L__unnamed_65, 71

	.type	.L__unnamed_28,@object
	.section	.data.rel.ro..L__unnamed_28,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_28:
	.quad	.L__unnamed_65
	.asciz	"G\000\000\000\000\000\000"
	.size	.L__unnamed_28, 16

	.type	.L__unnamed_29,@object
	.section	.data.rel.ro..L__unnamed_29,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_29:
	.quad	.L__unnamed_64
	.asciz	"r\000\000\000\000\000\000\000\207\001\000\000\t\000\000"
	.size	.L__unnamed_29, 24

	.type	.L__unnamed_30,@object
	.section	.rodata..L__unnamed_30,"a",@progbits
.L__unnamed_30:
	.ascii	"unsafe precondition(s) violated: hint::unreachable_unchecked must never be reached"
	.size	.L__unnamed_30, 82

	.type	.L__unnamed_66,@object
	.section	.rodata..L__unnamed_66,"a",@progbits
.L__unnamed_66:
	.ascii	"there is no such thing as a release load"
	.size	.L__unnamed_66, 40

	.type	.L__unnamed_31,@object
	.section	.data.rel.ro..L__unnamed_31,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_31:
	.quad	.L__unnamed_66
	.asciz	"(\000\000\000\000\000\000"
	.size	.L__unnamed_31, 16

	.type	.L__unnamed_67,@object
	.section	.rodata..L__unnamed_67,"a",@progbits
.L__unnamed_67:
	.ascii	"/home/don/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/sync/atomic.rs"
	.size	.L__unnamed_67, 113

	.type	.L__unnamed_32,@object
	.section	.data.rel.ro..L__unnamed_32,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_32:
	.quad	.L__unnamed_67
	.asciz	"q\000\000\000\000\000\000\000\226\016\000\000\030\000\000"
	.size	.L__unnamed_32, 24

	.type	.L__unnamed_68,@object
	.section	.rodata..L__unnamed_68,"a",@progbits
.L__unnamed_68:
	.ascii	"there is no such thing as an acquire-release load"
	.size	.L__unnamed_68, 49

	.type	.L__unnamed_33,@object
	.section	.data.rel.ro..L__unnamed_33,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_33:
	.quad	.L__unnamed_68
	.asciz	"1\000\000\000\000\000\000"
	.size	.L__unnamed_33, 16

	.type	.L__unnamed_34,@object
	.section	.data.rel.ro..L__unnamed_34,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_34:
	.quad	.L__unnamed_67
	.asciz	"q\000\000\000\000\000\000\000\227\016\000\000\027\000\000"
	.size	.L__unnamed_34, 24

	.type	.L__unnamed_69,@object
	.section	.rodata..L__unnamed_69,"a",@progbits
.L__unnamed_69:
	.ascii	"there is no such thing as an acquire store"
	.size	.L__unnamed_69, 42

	.type	.L__unnamed_35,@object
	.section	.data.rel.ro..L__unnamed_35,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_35:
	.quad	.L__unnamed_69
	.asciz	"*\000\000\000\000\000\000"
	.size	.L__unnamed_35, 16

	.type	.L__unnamed_36,@object
	.section	.data.rel.ro..L__unnamed_36,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_36:
	.quad	.L__unnamed_67
	.asciz	"q\000\000\000\000\000\000\000\207\016\000\000\030\000\000"
	.size	.L__unnamed_36, 24

	.type	.L__unnamed_70,@object
	.section	.rodata..L__unnamed_70,"a",@progbits
.L__unnamed_70:
	.ascii	"there is no such thing as an acquire-release store"
	.size	.L__unnamed_70, 50

	.type	.L__unnamed_37,@object
	.section	.data.rel.ro..L__unnamed_37,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_37:
	.quad	.L__unnamed_70
	.asciz	"2\000\000\000\000\000\000"
	.size	.L__unnamed_37, 16

	.type	.L__unnamed_38,@object
	.section	.data.rel.ro..L__unnamed_38,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_38:
	.quad	.L__unnamed_67
	.asciz	"q\000\000\000\000\000\000\000\210\016\000\000\027\000\000"
	.size	.L__unnamed_38, 24

	.type	.L__unnamed_71,@object
	.section	.rodata..L__unnamed_71,"a",@progbits
.L__unnamed_71:
	.ascii	"there is no such thing as a release failure ordering"
	.size	.L__unnamed_71, 52

	.type	.L__unnamed_39,@object
	.section	.data.rel.ro..L__unnamed_39,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_39:
	.quad	.L__unnamed_71
	.asciz	"4\000\000\000\000\000\000"
	.size	.L__unnamed_39, 16

	.type	.L__unnamed_40,@object
	.section	.data.rel.ro..L__unnamed_40,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_40:
	.quad	.L__unnamed_67
	.asciz	"q\000\000\000\000\000\000\000\353\016\000\000\035\000\000"
	.size	.L__unnamed_40, 24

	.type	.L__unnamed_72,@object
	.section	.rodata..L__unnamed_72,"a",@progbits
.L__unnamed_72:
	.ascii	"there is no such thing as an acquire-release failure ordering"
	.size	.L__unnamed_72, 61

	.type	.L__unnamed_41,@object
	.section	.data.rel.ro..L__unnamed_41,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_41:
	.quad	.L__unnamed_72
	.asciz	"=\000\000\000\000\000\000"
	.size	.L__unnamed_41, 16

	.type	.L__unnamed_42,@object
	.section	.data.rel.ro..L__unnamed_42,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_42:
	.quad	.L__unnamed_67
	.asciz	"q\000\000\000\000\000\000\000\352\016\000\000\034\000\000"
	.size	.L__unnamed_42, 24

	.type	.L__unnamed_43,@object
	.section	.rodata..L__unnamed_43,"a",@progbits
.L__unnamed_43:
	.ascii	"unsafe precondition(s) violated: Layout::from_size_align_unchecked requires that align is a power of 2 and the rounded-up allocation size does not exceed isize::MAX"
	.size	.L__unnamed_43, 164

	.type	.L__unnamed_73,@object
	.section	.rodata..L__unnamed_73,"a",@progbits
.L__unnamed_73:
	.ascii	"/home/don/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/ub_checks.rs"
	.size	.L__unnamed_73, 111

	.type	.L__unnamed_44,@object
	.section	.data.rel.ro..L__unnamed_44,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_44:
	.quad	.L__unnamed_73
	.asciz	"o\000\000\000\000\000\000\000\206\000\000\0006\000\000"
	.size	.L__unnamed_44, 24

	.type	.L__unnamed_45,@object
	.section	.rodata..L__unnamed_45,"a",@progbits
.L__unnamed_45:
	.ascii	"unsafe precondition(s) violated: slice::from_raw_parts requires the pointer to be aligned and non-null, and the total size of the slice not to exceed `isize::MAX`"
	.size	.L__unnamed_45, 162

	.type	.L__unnamed_46,@object
	.section	.rodata..L__unnamed_46,"a",@progbits
.L__unnamed_46:
	.ascii	"unsafe precondition(s) violated: slice::from_raw_parts_mut requires the pointer to be aligned and non-null, and the total size of the slice not to exceed `isize::MAX`"
	.size	.L__unnamed_46, 166

	.type	.L__unnamed_47,@object
	.section	.data.rel.ro..L__unnamed_47,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_47:
	.quad	_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h2792d9f5fd648efbE
	.asciz	"\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hc13b853b31805fe6E
	.size	.L__unnamed_47, 32

	.type	.L__unnamed_50,@object
	.section	.data.rel.ro..L__unnamed_50,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_50:
	.quad	_ZN4core3ptr91drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$17h1ca612abffb05831E
	.asciz	"\020\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN67_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h24e0d6ef3972c815E
	.size	.L__unnamed_50, 32

	.type	.L__unnamed_49,@object
	.section	.rodata..L__unnamed_49,"a",@progbits
.L__unnamed_49:
	.ascii	"called `Result::unwrap()` on an `Err` value"
	.size	.L__unnamed_49, 43

	.type	.L__unnamed_74,@object
	.section	.rodata..L__unnamed_74,"a",@progbits
.L__unnamed_74:
	.ascii	"fatal runtime error: thread result panicked on drop\n"
	.size	.L__unnamed_74, 52

	.type	.L__unnamed_48,@object
	.section	.data.rel.ro..L__unnamed_48,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_48:
	.quad	.L__unnamed_74
	.asciz	"4\000\000\000\000\000\000"
	.size	.L__unnamed_48, 16

	.type	.L__unnamed_75,@object
	.section	.rodata..L__unnamed_75,"a",@progbits
.L__unnamed_75:
	.ascii	"src/main.rs"
	.size	.L__unnamed_75, 11

	.type	.L__unnamed_51,@object
	.section	.data.rel.ro..L__unnamed_51,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_51:
	.quad	.L__unnamed_75
	.asciz	"\013\000\000\000\000\000\000\000\035\000\000\000\022\000\000"
	.size	.L__unnamed_51, 24

	.type	.L__unnamed_52,@object
	.section	.data.rel.ro..L__unnamed_52,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_52:
	.quad	_ZN4core3ops8function6FnOnce9call_once17h9e379cd30c497967E
	.size	.L__unnamed_52, 8

	.type	.L__unnamed_53,@object
	.section	.data.rel.ro..L__unnamed_53,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_53:
	.quad	.L__unnamed_75
	.asciz	"\013\000\000\000\000\000\000\000\030\000\000\000+\000\000"
	.size	.L__unnamed_53, 24

	.type	_ZN4main14THREAD_COUNTER29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hd78ece361c2f0e55E,@object
	.section	".tbss._ZN4main14THREAD_COUNTER29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hd78ece361c2f0e55E","awT",@nobits
	.p2align	2, 0x0
_ZN4main14THREAD_COUNTER29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hd78ece361c2f0e55E:
	.zero	4
	.zero	4
	.size	_ZN4main14THREAD_COUNTER29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hd78ece361c2f0e55E, 8

	.type	_ZN4main14THREAD_COUNTER29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h85054acb854e7b1eE,@object
	.section	".tbss._ZN4main14THREAD_COUNTER29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h85054acb854e7b1eE","awT",@nobits
	.p2align	2, 0x0
_ZN4main14THREAD_COUNTER29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h85054acb854e7b1eE:
	.zero	4
	.zero	4
	.size	_ZN4main14THREAD_COUNTER29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h85054acb854e7b1eE, 8

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"awG",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3, 0x0
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.ident	"rustc version 1.86.0 (05f9846f8 2025-03-31)"
	.section	".note.GNU-stack","",@progbits
