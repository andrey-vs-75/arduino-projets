	.file	"main.c"
	.text
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "Value is %s\15\12\0"
LC1:
	.ascii "==========\15\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB20:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%ebx
	andl	$-16, %esp
	subl	$80, %esp
	.cfi_offset 7, -12
	.cfi_offset 3, -16
	call	___main
	leal	29(%esp), %eax
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
	movl	$56, 76(%esp)
	movl	$130, 72(%esp)
	movl	$65, 68(%esp)
	leal	29(%esp), %eax
	movl	%eax, 4(%esp)
	movl	76(%esp), %eax
	movl	%eax, (%esp)
	call	_int_to_binary
	leal	29(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	leal	29(%esp), %eax
	movl	%eax, 4(%esp)
	movl	72(%esp), %eax
	movl	%eax, (%esp)
	call	_int_to_binary
	leal	29(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	leal	29(%esp), %eax
	movl	%eax, 4(%esp)
	movl	68(%esp), %eax
	movl	%eax, (%esp)
	call	_int_to_binary
	leal	29(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$LC1, (%esp)
	call	_puts
	movl	72(%esp), %eax
	xorl	68(%esp), %eax
	orl	76(%esp), %eax
	movl	%eax, 64(%esp)
	leal	29(%esp), %eax
	movl	%eax, 4(%esp)
	movl	64(%esp), %eax
	movl	%eax, (%esp)
	call	_int_to_binary
	leal	29(%esp), %eax
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
LFE20:
	.ident	"GCC: (MinGW.org GCC-8.2.0-5) 8.2.0"
	.def	_int_to_binary;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
