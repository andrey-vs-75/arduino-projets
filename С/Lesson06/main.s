	.file	"main.c"
	.text
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "i = %d\15\12\0"
LC1:
	.ascii "=========================\15\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB13:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	call	___main
	movl	$10, 28(%esp)
	jmp	L2
L3:
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	subl	$1, 28(%esp)
L2:
	cmpl	$0, 28(%esp)
	jne	L3
	movl	$LC1, (%esp)
	call	_puts
	movl	$10, 28(%esp)
L4:
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	subl	$1, 28(%esp)
	cmpl	$0, 28(%esp)
	jne	L4
	movl	$LC1, (%esp)
	call	_puts
	movl	$0, 28(%esp)
	jmp	L5
L6:
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	addl	$1, 28(%esp)
L5:
	cmpl	$9, 28(%esp)
	jle	L6
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.ident	"GCC: (MinGW.org GCC-8.2.0-5) 8.2.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
