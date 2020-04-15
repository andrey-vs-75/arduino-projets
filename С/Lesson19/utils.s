	.file	"utils.c"
	.text
	.globl	_int_to_binary
	.def	_int_to_binary;	.scl	2;	.type	32;	.endef
_int_to_binary:
LFB3:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	movb	$0, -12(%ebp)
	movl	$0, -24(%ebp)
	movb	$0, -10(%ebp)
	jmp	L2
L5:
	movzbl	-10(%ebp), %eax
	sall	$3, %eax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	testl	%eax, %eax
	jne	L3
	cmpb	$0, -10(%ebp)
	jne	L12
L3:
	movzbl	-10(%ebp), %eax
	sall	$3, %eax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movzbl	-10(%ebp), %eax
	movb	%dl, -24(%ebp,%eax)
	movzbl	-10(%ebp), %eax
	addl	$1, %eax
	movb	%al, -10(%ebp)
L2:
	cmpb	$3, -10(%ebp)
	jbe	L5
	jmp	L4
L12:
	nop
L4:
	movl	12(%ebp), %eax
	movw	$25136, (%eax)
	movb	$0, 2(%eax)
	movb	$0, -11(%ebp)
	jmp	L6
L11:
	movb	$0, -9(%ebp)
	jmp	L7
L10:
	movzbl	-10(%ebp), %edx
	movzbl	-11(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	subl	$1, %eax
	movzbl	-24(%ebp,%eax), %eax
	movzbl	%al, %edx
	movzbl	-9(%ebp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	L8
	cmpl	$1, %eax
	jne	L9
	movzbl	-9(%ebp), %eax
	movl	$7, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movb	$49, -20(%ebp,%eax)
	jmp	L9
L8:
	movzbl	-9(%ebp), %eax
	movl	$7, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movb	$48, -20(%ebp,%eax)
	nop
L9:
	movzbl	-9(%ebp), %eax
	addl	$1, %eax
	movb	%al, -9(%ebp)
L7:
	cmpb	$7, -9(%ebp)
	jbe	L10
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcat
	movzbl	-11(%ebp), %eax
	addl	$1, %eax
	movb	%al, -11(%ebp)
L6:
	movzbl	-11(%ebp), %eax
	cmpb	-10(%ebp), %al
	jb	L11
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE3:
	.ident	"GCC: (MinGW.org GCC-8.2.0-5) 8.2.0"
	.def	_strcat;	.scl	2;	.type	32;	.endef
