	.file	"main.c"
	.text
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC2:
	.ascii "Char symbol: \0"
LC3:
	.ascii "%c\15\12\0"
LC4:
	.ascii "Signed char: \0"
LC5:
	.ascii "%hd\15\12\0"
LC6:
	.ascii "Unsigned char: \0"
LC7:
	.ascii "Signed short: \0"
LC8:
	.ascii "Unsigned short: \0"
LC9:
	.ascii "%hu\15\12\0"
LC10:
	.ascii "Signed integer: \0"
LC11:
	.ascii "%d\15\12\0"
LC12:
	.ascii "Unigned integer: \0"
LC13:
	.ascii "%u\15\12\0"
LC14:
	.ascii "Signed long: \0"
LC15:
	.ascii "%ld\15\12\0"
LC16:
	.ascii "Unsigned long: \0"
LC17:
	.ascii "%lu\15\12\0"
LC18:
	.ascii "Signed long long: \0"
LC19:
	.ascii "%I64d\15\12\0"
LC20:
	.ascii "Unsigned long long: \0"
LC21:
	.ascii "%I64u\15\12\0"
LC22:
	.ascii "Float: \0"
LC23:
	.ascii "%f\15\12\0"
LC24:
	.ascii "Double: \0"
LC25:
	.ascii "%.24lf\15\12\0"
LC26:
	.ascii "%lg\15\12\0"
LC27:
	.ascii "Hex: \0"
LC28:
	.ascii "0x%X\15\12\0"
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
	subl	$80, %esp
	call	___main
	movb	$114, 79(%esp)
	movb	$-115, 78(%esp)
	movb	$-61, 77(%esp)
	movw	$-31511, 74(%esp)
	movw	$-1837, 72(%esp)
	movl	$-2011242517, 68(%esp)
	movl	$-294967296, 64(%esp)
	movl	$-2011242517, 60(%esp)
	movl	$-294967296, 56(%esp)
	movl	$-1981284351, 48(%esp)
	movl	$-1966660860, 52(%esp)
	movl	$-382, 40(%esp)
	movl	$-1, 44(%esp)
	flds	LC0
	fstps	36(%esp)
	fldl	LC1
	fstpl	24(%esp)
	movl	$LC2, (%esp)
	call	_printf
	movsbl	79(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_printf
	movl	$LC4, (%esp)
	call	_printf
	movsbl	78(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_printf
	movl	$LC6, (%esp)
	call	_printf
	movzbl	77(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_printf
	movl	$LC7, (%esp)
	call	_printf
	movswl	74(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_printf
	movl	$LC8, (%esp)
	call	_printf
	movzwl	72(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC9, (%esp)
	call	_printf
	movl	$LC10, (%esp)
	call	_printf
	movl	68(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC11, (%esp)
	call	_printf
	movl	$LC12, (%esp)
	call	_printf
	movl	64(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC13, (%esp)
	call	_printf
	movl	$LC14, (%esp)
	call	_printf
	movl	60(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC15, (%esp)
	call	_printf
	movl	$LC16, (%esp)
	call	_printf
	movl	56(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC17, (%esp)
	call	_printf
	movl	$LC18, (%esp)
	call	_printf
	movl	48(%esp), %eax
	movl	52(%esp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$LC19, (%esp)
	call	_printf
	movl	$LC20, (%esp)
	call	_printf
	movl	40(%esp), %eax
	movl	44(%esp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$LC21, (%esp)
	call	_printf
	movl	$LC22, (%esp)
	call	_printf
	flds	36(%esp)
	fstpl	4(%esp)
	movl	$LC23, (%esp)
	call	_printf
	movl	$LC24, (%esp)
	call	_printf
	fldl	24(%esp)
	fstpl	4(%esp)
	movl	$LC25, (%esp)
	call	_printf
	movl	$LC24, (%esp)
	call	_printf
	fldl	24(%esp)
	fstpl	4(%esp)
	movl	$LC26, (%esp)
	call	_printf
	movl	$LC27, (%esp)
	call	_printf
	movl	64(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC28, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.section .rdata,"dr"
	.align 4
LC0:
	.long	1095191495
	.align 8
LC1:
	.long	-331898810
	.long	1003627387
	.ident	"GCC: (MinGW.org GCC-8.2.0-5) 8.2.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
