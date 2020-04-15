	.file	"main.c"
	.text
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "Hello, World!!!\0"
LC1:
	.ascii "%s\15\12\0"
LC2:
	.ascii "Char: \0"
LC3:
	.ascii "%c\15\12\0"
LC4:
	.ascii "Signed integer: \0"
LC5:
	.ascii "%d\15\12\0"
LC6:
	.ascii "Unigned integer: \0"
LC7:
	.ascii "%u\15\12\0"
LC8:
	.ascii "Signed short: \0"
LC9:
	.ascii "%hd\15\12\0"
LC10:
	.ascii "Unsigned short: \0"
LC11:
	.ascii "%hu\15\12\0"
LC12:
	.ascii "Signed long: \0"
LC13:
	.ascii "%I64d\15\12\0"
LC14:
	.ascii "Unsigned long: \0"
LC15:
	.ascii "%llu\15\12\0"
LC16:
	.ascii "Float: \0"
LC18:
	.ascii "%f\15\12\0"
LC19:
	.ascii "Double: \0"
LC21:
	.ascii "%lf\15\12\0"
LC22:
	.ascii "Hex: \0"
LC23:
	.ascii "0x%llX\15\12\0"
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
	subl	$16, %esp
	call	___main
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$LC2, (%esp)
	call	_printf
	movl	$132, 4(%esp)
	movl	$LC3, (%esp)
	call	_printf
	movl	$LC4, (%esp)
	call	_printf
	movl	$-1294967296, 4(%esp)
	movl	$0, 8(%esp)
	movl	$LC5, (%esp)
	call	_printf
	movl	$LC6, (%esp)
	call	_printf
	movl	$-1294967296, 4(%esp)
	movl	$0, 8(%esp)
	movl	$LC7, (%esp)
	call	_printf
	movl	$LC8, (%esp)
	call	_printf
	movl	$40000, 4(%esp)
	movl	$LC9, (%esp)
	call	_printf
	movl	$LC10, (%esp)
	call	_printf
	movl	$40000, 4(%esp)
	movl	$LC11, (%esp)
	call	_printf
	movl	$LC12, (%esp)
	call	_printf
	movl	$-1, 4(%esp)
	movl	$-1, 8(%esp)
	movl	$LC13, (%esp)
	call	_printf
	movl	$LC14, (%esp)
	call	_printf
	movl	$-1, 4(%esp)
	movl	$-1, 8(%esp)
	movl	$LC15, (%esp)
	call	_printf
	movl	$LC16, (%esp)
	call	_printf
	fldl	LC17
	fstpl	4(%esp)
	movl	$LC18, (%esp)
	call	_printf
	movl	$LC19, (%esp)
	call	_printf
	fldl	LC20
	fstpl	4(%esp)
	movl	$LC21, (%esp)
	call	_printf
	movl	$LC22, (%esp)
	call	_printf
	movl	$-1294967296, 4(%esp)
	movl	$0, 8(%esp)
	movl	$LC23, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.section .rdata,"dr"
	.align 8
LC17:
	.long	-536870912
	.long	1076423032
	.align 8
LC20:
	.long	-427435145
	.long	1086856406
	.ident	"GCC: (MinGW.org GCC-8.2.0-5) 8.2.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
