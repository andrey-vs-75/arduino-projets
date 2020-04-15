	.file	"main.c"
	.text
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "Enter an integer of 10, 20, 25, 30, 40, or 50\15\0"
LC1:
	.ascii "%d\0"
LC2:
	.ascii "You entered number 10.\15\0"
	.align 4
LC3:
	.ascii "You entered the number 20 or 25.\15\0"
LC4:
	.ascii "You entered number 30.\15\0"
LC5:
	.ascii "You entered number 40.\15\0"
LC6:
	.ascii "You entered number 50.\15\0"
	.align 4
LC7:
	.ascii "The entered number does not match with any of the proposed.\15\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB16:
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
L11:
	movl	$LC0, (%esp)
	call	_puts
	leal	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_scanf
	movl	28(%esp), %eax
	subl	$10, %eax
	cmpl	$40, %eax
	ja	L2
	movl	L4(,%eax,4), %eax
	jmp	*%eax
	.section .rdata,"dr"
	.align 4
L4:
	.long	L8
	.long	L2
	.long	L2
	.long	L2
	.long	L2
	.long	L2
	.long	L2
	.long	L2
	.long	L2
	.long	L2
	.long	L7
	.long	L2
	.long	L2
	.long	L2
	.long	L2
	.long	L7
	.long	L2
	.long	L2
	.long	L2
	.long	L2
	.long	L6
	.long	L2
	.long	L2
	.long	L2
	.long	L2
	.long	L2
	.long	L2
	.long	L2
	.long	L2
	.long	L2
	.long	L5
	.long	L2
	.long	L2
	.long	L2
	.long	L2
	.long	L2
	.long	L2
	.long	L2
	.long	L2
	.long	L2
	.long	L3
	.text
L8:
	movl	$LC2, (%esp)
	call	_puts
	jmp	L9
L7:
	movl	$LC3, (%esp)
	call	_puts
	jmp	L9
L6:
	movl	$LC4, (%esp)
	call	_puts
	jmp	L9
L5:
	movl	$LC5, (%esp)
	call	_puts
	jmp	L9
L3:
	movl	$LC6, (%esp)
	call	_puts
	jmp	L9
L2:
	movl	$LC7, (%esp)
	call	_puts
	movl	$0, %eax
	jmp	L12
L9:
	jmp	L11
L12:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE16:
	.ident	"GCC: (MinGW.org GCC-8.2.0-5) 8.2.0"
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
