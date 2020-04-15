	.file	"main.c"
	.text
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "\">\" =========================\15\0"
LC1:
	.ascii "i = %d\15\12\0"
	.align 4
LC2:
	.ascii "\">=\" =========================\15\0"
	.align 4
LC3:
	.ascii "\"<\" =========================\15\0"
	.align 4
LC4:
	.ascii "\"<=\" =========================\15\0"
	.align 4
LC5:
	.ascii "\"==\" =========================\15\0"
	.align 4
LC6:
	.ascii "\"!=\" =========================\15\0"
	.align 4
LC7:
	.ascii "\"&&\" =========================\15\0"
	.align 4
LC8:
	.ascii "\"||\" =========================\15\0"
	.align 4
LC9:
	.ascii "\"!\" =========================\15\0"
LC10:
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
	movl	$LC0, (%esp)
	call	_puts
	movl	$10, 28(%esp)
	jmp	L2
L3:
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	subl	$1, 28(%esp)
L2:
	cmpl	$5, 28(%esp)
	jg	L3
	movl	$LC2, (%esp)
	call	_puts
	movl	$7, 28(%esp)
	jmp	L4
L5:
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	subl	$1, 28(%esp)
L4:
	cmpl	$2, 28(%esp)
	jg	L5
	movl	$LC3, (%esp)
	call	_puts
	movl	$0, 28(%esp)
	jmp	L6
L7:
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	addl	$1, 28(%esp)
L6:
	cmpl	$4, 28(%esp)
	jle	L7
	movl	$LC4, (%esp)
	call	_puts
	movl	$0, 28(%esp)
L8:
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	addl	$1, 28(%esp)
	cmpl	$5, 28(%esp)
	jle	L8
	movl	$LC5, (%esp)
	call	_puts
	movl	$5, 28(%esp)
	jmp	L9
L10:
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	addl	$1, 28(%esp)
L9:
	cmpl	$5, 28(%esp)
	je	L10
	movl	$LC6, (%esp)
	call	_puts
	movl	$0, 28(%esp)
	jmp	L11
L12:
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	addl	$1, 28(%esp)
L11:
	cmpl	$5, 28(%esp)
	jne	L12
	movl	$LC7, (%esp)
	call	_puts
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	jmp	L13
L15:
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	addl	$1, 28(%esp)
	addl	$1, 24(%esp)
L13:
	cmpl	$5, 28(%esp)
	jg	L14
	cmpl	$7, 24(%esp)
	jle	L15
L14:
	movl	$LC8, (%esp)
	call	_puts
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	jmp	L16
L17:
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	addl	$1, 28(%esp)
	addl	$1, 24(%esp)
L16:
	cmpl	$5, 28(%esp)
	jle	L17
	cmpl	$7, 24(%esp)
	jle	L17
	movl	$LC9, (%esp)
	call	_puts
	movl	$0, 28(%esp)
	jmp	L18
L19:
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	addl	$1, 28(%esp)
L18:
	cmpl	$5, 28(%esp)
	jle	L19
	movl	$LC10, (%esp)
	call	_puts
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.ident	"GCC: (MinGW.org GCC-8.2.0-5) 8.2.0"
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
