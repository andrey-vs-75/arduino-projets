	.file	"main.c"
	.text
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "String: \0"
LC1:
	.ascii "Hello, World!!!\0"
LC2:
	.ascii "%s\15\12\0"
LC3:
	.ascii "Char: \0"
LC4:
	.ascii "%c\15\12\0"
LC5:
	.ascii "Signed integer: \0"
LC6:
	.ascii "%d\15\12\0"
LC7:
	.ascii "Unigned integer: \0"
LC8:
	.ascii "%u\15\12\0"
LC9:
	.ascii "Signed short: \0"
LC10:
	.ascii "%hd\15\12\0"
LC11:
	.ascii "Unsigned short: \0"
LC12:
	.ascii "%hu\15\12\0"
LC13:
	.ascii "Signed long: \0"
LC14:
	.ascii "%I64d\15\12\0"
LC15:
	.ascii "Unsigned long: \0"
LC16:
	.ascii "%llu\15\12\0"
LC17:
	.ascii "Float: \0"
LC19:
	.ascii "%f\15\12\0"
LC20:
	.ascii "Double: \0"
LC22:
	.ascii "%lf\15\12\0"
LC23:
	.ascii "Hex: \0"
LC24:
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
	movl	$LC0, (%esp)
	call	_printf
	movl	$LC1, 4(%esp)
	movl	$LC2, (%esp)
	call	_printf
	movl	$LC3, (%esp)
	call	_printf
	movl	$131, 4(%esp)
	movl	$LC4, (%esp)
	call	_printf
	movl	$LC5, (%esp)
	call	_printf
	movl	$-1294967296, 4(%esp)
	movl	$0, 8(%esp)
	movl	$LC6, (%esp)
	call	_printf
	movl	$LC7, (%esp)
	call	_printf
	movl	$-1294967296, 4(%esp)
	movl	$0, 8(%esp)
	movl	$LC8, (%esp)
	call	_printf
	movl	$LC9, (%esp)
	call	_printf
	movl	$40000, 4(%esp)
	movl	$LC10, (%esp)
	call	_printf
	movl	$LC11, (%esp)
	call	_printf
	movl	$40000, 4(%esp)
	movl	$LC12, (%esp)
	call	_printf
	movl	$LC13, (%esp)
	call	_printf
	movl	$-1, 4(%esp)
	movl	$-1, 8(%esp)
	movl	$LC14, (%esp)
	call	_printf
	movl	$LC15, (%esp)
	call	_printf
	movl	$-1, 4(%esp)
	movl	$-1, 8(%esp)
	movl	$LC16, (%esp)
	call	_printf
	movl	$LC17, (%esp)
	call	_printf
	fldl	LC18
	fstpl	4(%esp)
	movl	$LC19, (%esp)
	call	_printf
	movl	$LC20, (%esp)
	call	_printf
	fldl	LC21
	fstpl	4(%esp)
	movl	$LC22, (%esp)
	call	_printf
	movl	$LC23, (%esp)
	call	_printf
	movl	$-1294967296, 4(%esp)
	movl	$0, 8(%esp)
	movl	$LC24, (%esp)
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
LC18:
	.long	-536870912
	.long	1076423032
	.align 8
LC21:
	.long	-427435145
	.long	1086856406
	.ident	"GCC: (MinGW.org GCC-8.2.0-5) 8.2.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
