	.file	"main.c"
	.text
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "Please enter an integer\15\0"
	.align 4
LC1:
	.ascii "To exit the program, enter a number greater than 10 ...\15\0"
LC2:
	.ascii "%d\0"
LC3:
	.ascii "ten\0"
	.align 4
LC4:
	.ascii "greater than 10 or less than 0\0"
LC5:
	.ascii "nine\0"
LC6:
	.ascii "eight\0"
LC7:
	.ascii "seven\0"
LC8:
	.ascii "six\0"
LC9:
	.ascii "five\0"
LC10:
	.ascii "four\0"
LC11:
	.ascii "three\0"
LC12:
	.ascii "two\0"
LC13:
	.ascii "one\0"
LC14:
	.ascii "zero\0"
LC15:
	.ascii "The number entered is %s.\15\12\0"
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
	andl	$-16, %esp
	subl	$32, %esp
	call	___main
	movl	$0, 24(%esp)
	movl	$10, (%esp)
	call	_malloc
	movl	%eax, 28(%esp)
	jmp	L2
L26:
	movl	$LC0, (%esp)
	call	_puts
	movl	$LC1, (%esp)
	call	_puts
	leal	24(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_scanf
	movl	24(%esp), %eax
	testl	%eax, %eax
	je	L3
	movl	24(%esp), %eax
	cmpl	$1, %eax
	je	L4
	movl	24(%esp), %eax
	cmpl	$2, %eax
	je	L5
	movl	24(%esp), %eax
	cmpl	$3, %eax
	je	L6
	movl	24(%esp), %eax
	cmpl	$4, %eax
	je	L7
	movl	24(%esp), %eax
	cmpl	$5, %eax
	je	L8
	movl	24(%esp), %eax
	cmpl	$6, %eax
	je	L9
	movl	24(%esp), %eax
	cmpl	$7, %eax
	je	L10
	movl	24(%esp), %eax
	cmpl	$8, %eax
	je	L11
	movl	24(%esp), %eax
	cmpl	$9, %eax
	je	L12
	movl	24(%esp), %eax
	cmpl	$10, %eax
	jne	L13
	movl	$LC3, %eax
	jmp	L24
L13:
	movl	$LC4, %eax
	jmp	L24
L12:
	movl	$LC5, %eax
	jmp	L24
L11:
	movl	$LC6, %eax
	jmp	L24
L10:
	movl	$LC7, %eax
	jmp	L24
L9:
	movl	$LC8, %eax
	jmp	L24
L8:
	movl	$LC9, %eax
	jmp	L24
L7:
	movl	$LC10, %eax
	jmp	L24
L6:
	movl	$LC11, %eax
	jmp	L24
L5:
	movl	$LC12, %eax
	jmp	L24
L4:
	movl	$LC13, %eax
	jmp	L24
L3:
	movl	$LC14, %eax
L24:
	movl	%eax, 28(%esp)
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC15, (%esp)
	call	_printf
L2:
	movl	24(%esp), %eax
	testl	%eax, %eax
	js	L25
	movl	24(%esp), %eax
	cmpl	$10, %eax
	jle	L26
L25:
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE20:
	.ident	"GCC: (MinGW.org GCC-8.2.0-5) 8.2.0"
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
