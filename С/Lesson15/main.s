	.file	"main.c"
	.text
	.globl	_int_to_binary
	.def	_int_to_binary;	.scl	2;	.type	32;	.endef
_int_to_binary:
LFB20:
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
LFE20:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%s\15\12\0"
LC1:
	.ascii "    &\15\0"
LC2:
	.ascii "==========\15\0"
LC3:
	.ascii "++++++++++\15\0"
LC4:
	.ascii "    |\15\0"
LC5:
	.ascii "   ^\15\0"
LC6:
	.ascii "  a>>2\15\0"
LC7:
	.ascii "  a<<2\15\0"
LC8:
	.ascii "  a>>4\15\0"
LC9:
	.ascii "  a<<4\15\0"
LC10:
	.ascii "   ~a\15\0"
LC11:
	.ascii "bit3 and bit4 SET\15\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB21:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%ebx
	andl	$-16, %esp
	subl	$64, %esp
	.cfi_offset 7, -12
	.cfi_offset 3, -16
	call	___main
	leal	26(%esp), %eax
	movl	$35, %ecx
	movl	$0, %ebx
	movl	%ebx, (%eax)
	movl	%ebx, -4(%eax,%ecx)
	leal	4(%eax), %edx
	andl	$-4, %edx
	subl	%edx, %eax
	addl	%eax, %ecx
	andl	$-4, %ecx
	shrl	$2, %ecx
	movl	%edx, %edi
	movl	%ebx, %eax
	rep stosl
	movb	$-86, 63(%esp)
	movb	$-119, 62(%esp)
	movzbl	63(%esp), %eax
	andb	62(%esp), %al
	movb	%al, 61(%esp)
	movzbl	63(%esp), %eax
	leal	26(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_int_to_binary
	leal	26(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$LC1, (%esp)
	call	_puts
	movzbl	62(%esp), %eax
	leal	26(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_int_to_binary
	leal	26(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$LC2, (%esp)
	call	_puts
	movzbl	61(%esp), %eax
	leal	26(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_int_to_binary
	leal	26(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_puts
	movzbl	63(%esp), %eax
	orb	62(%esp), %al
	movb	%al, 61(%esp)
	movzbl	63(%esp), %eax
	leal	26(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_int_to_binary
	leal	26(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$LC4, (%esp)
	call	_puts
	movzbl	62(%esp), %eax
	leal	26(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_int_to_binary
	leal	26(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$LC2, (%esp)
	call	_puts
	movzbl	61(%esp), %eax
	leal	26(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_int_to_binary
	leal	26(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_puts
	movzbl	63(%esp), %eax
	xorb	62(%esp), %al
	movb	%al, 61(%esp)
	movzbl	63(%esp), %eax
	leal	26(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_int_to_binary
	leal	26(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$LC5, (%esp)
	call	_puts
	movzbl	62(%esp), %eax
	leal	26(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_int_to_binary
	leal	26(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$LC2, (%esp)
	call	_puts
	movzbl	61(%esp), %eax
	leal	26(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_int_to_binary
	leal	26(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_puts
	movzbl	63(%esp), %eax
	shrb	$2, %al
	movb	%al, 61(%esp)
	movzbl	63(%esp), %eax
	leal	26(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_int_to_binary
	leal	26(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$LC6, (%esp)
	call	_puts
	movzbl	61(%esp), %eax
	leal	26(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_int_to_binary
	leal	26(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movzbl	63(%esp), %eax
	sall	$2, %eax
	movb	%al, 61(%esp)
	movl	$LC7, (%esp)
	call	_puts
	movzbl	61(%esp), %eax
	leal	26(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_int_to_binary
	leal	26(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movzbl	63(%esp), %eax
	shrb	$4, %al
	movb	%al, 61(%esp)
	movl	$LC8, (%esp)
	call	_puts
	movzbl	61(%esp), %eax
	leal	26(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_int_to_binary
	leal	26(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movzbl	63(%esp), %eax
	sall	$4, %eax
	movb	%al, 61(%esp)
	movl	$LC9, (%esp)
	call	_puts
	movzbl	61(%esp), %eax
	leal	26(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_int_to_binary
	leal	26(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_puts
	movzbl	63(%esp), %eax
	notl	%eax
	movb	%al, 61(%esp)
	movzbl	63(%esp), %eax
	leal	26(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_int_to_binary
	leal	26(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$LC10, (%esp)
	call	_puts
	movzbl	61(%esp), %eax
	leal	26(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_int_to_binary
	leal	26(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_puts
	movzbl	63(%esp), %eax
	leal	26(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_int_to_binary
	leal	26(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	orb	$24, 63(%esp)
	movl	$LC11, (%esp)
	call	_puts
	movzbl	63(%esp), %eax
	leal	26(%esp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_int_to_binary
	leal	26(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$0, %eax
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE21:
	.ident	"GCC: (MinGW.org GCC-8.2.0-5) 8.2.0"
	.def	_strcat;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
