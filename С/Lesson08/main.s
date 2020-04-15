	.file	"main.c"
	.text
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "Please enter an integer.\15\0"
	.align 4
LC1:
	.ascii "To exit the program, enter a number greater than 1000 ...\15\0"
LC2:
	.ascii "%d\0"
	.align 4
LC3:
	.ascii "You have entered a number less than 10\15\0"
	.align 4
LC4:
	.ascii "You entered a number between 10 and 30\15\0"
	.align 4
LC5:
	.ascii "You entered a number between 31 and 100\15\0"
	.align 4
LC6:
	.ascii "You entered a number greater than 100\15\0"
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
	movl	$0, 28(%esp)
	jmp	L2
L6:
	movl	$LC0, (%esp)
	call	_puts
	movl	$LC1, (%esp)
	call	_puts
	leal	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_scanf
	movl	28(%esp), %eax
	cmpl	$9, %eax
	jg	L3
	movl	$LC3, (%esp)
	call	_puts
	jmp	L2
L3:
	movl	28(%esp), %eax
	cmpl	$9, %eax
	jle	L4
	movl	28(%esp), %eax
	cmpl	$30, %eax
	jg	L4
	movl	$LC4, (%esp)
	call	_puts
	jmp	L2
L4:
	movl	28(%esp), %eax
	cmpl	$30, %eax
	jle	L5
	movl	28(%esp), %eax
	cmpl	$100, %eax
	jg	L5
	movl	$LC5, (%esp)
	call	_puts
	jmp	L2
L5:
	movl	$LC6, (%esp)
	call	_puts
L2:
	movl	28(%esp), %eax
	cmpl	$1000, %eax
	jle	L6
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.ident	"GCC: (MinGW.org GCC-8.2.0-5) 8.2.0"
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
