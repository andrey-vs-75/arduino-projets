	.file	"main.c"
	.text
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC4:
	.ascii "Signed char: \0"
	.align 4
LC5:
	.ascii "c1 = %hd; c2 = %hd\15\12c1 - c2 = %hd\15\12\0"
LC6:
	.ascii "Signed char increment: \0"
LC7:
	.ascii "Signed char decrement: \0"
LC8:
	.ascii "Unsigned char: \0"
	.align 4
LC9:
	.ascii "uc1 = %hd; uc2 = %hd\15\12uc1 + uc2 = %hd\15\12\0"
LC10:
	.ascii "Signed short: \0"
	.align 4
LC11:
	.ascii "ns1 = %hd; ns2 = %hd\15\12ns1 x ns2 = %hd\15\12\0"
LC12:
	.ascii "Unsigned short: \0"
	.align 4
LC13:
	.ascii "uns1 = %hu; uns2 = %hu\15\12uns1 : uns2 = %hu\15\12uns1 %% uns2 = %hu\15\12\0"
LC14:
	.ascii "Signed integer: \0"
	.align 4
LC15:
	.ascii "ni1 = %d; ni2 = %d; ni3 = %d\15\12\0"
LC16:
	.ascii "(ni1 + ni2) : ni3 = %d\15\12\0"
LC17:
	.ascii "Unsigned integer: \0"
	.align 4
LC18:
	.ascii "uni1 = %u; uni2 = %u; uni3 = %u\15\12\0"
LC19:
	.ascii "uni1 - uni2 / uni3 = %u\15\12\0"
LC20:
	.ascii "Signed long: \0"
LC21:
	.ascii "nl1 = %ld; nl1 = %ld\15\12\0"
LC22:
	.ascii "nl1 + nl2 = %ld\15\12\0"
LC23:
	.ascii "Unsigned long: \0"
LC24:
	.ascii "unl1 = %lu; unl1 = %lu\15\12\0"
LC25:
	.ascii "unl1 - unl2 = %lu\15\12\0"
LC26:
	.ascii "Signed long long: \0"
LC27:
	.ascii "nll1 = %I64d; nll1 = %I64d\15\12\0"
LC28:
	.ascii "nll1 + nll2 = %I64d\15\12\0"
LC29:
	.ascii "Unsigned long long: \0"
	.align 4
LC30:
	.ascii "unll1 = %I64u; unll1 = %I64u\15\12\0"
LC31:
	.ascii "unll1 - unll2 = %I64u\15\12\0"
LC32:
	.ascii "Float: \0"
LC33:
	.ascii "f1 = %f; f2 = %f\15\12\0"
LC34:
	.ascii "f1 : f2 = %f\15\12\0"
LC35:
	.ascii "Double: \0"
LC36:
	.ascii "d1 = %lf; d2 = %lf\15\12\0"
LC37:
	.ascii "d1 x f2 = %lf\15\12\0"
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
	pushl	%ebx
	andl	$-16, %esp
	subl	$208, %esp
	.cfi_offset 3, -12
	call	___main
	movb	$19, 207(%esp)
	movb	$100, 206(%esp)
	movb	$-61, 205(%esp)
	movb	$33, 204(%esp)
	movw	$-300, 202(%esp)
	movw	$51, 200(%esp)
	movw	$-14289, 198(%esp)
	movw	$1000, 196(%esp)
	movl	$-1011242517, 192(%esp)
	movl	$2011242517, 188(%esp)
	movl	$4, 184(%esp)
	movl	$-294967296, 180(%esp)
	movl	$1000000000, 176(%esp)
	movl	$2, 172(%esp)
	movl	$-2011242517, 168(%esp)
	movl	$1011242517, 164(%esp)
	movl	$-294967296, 160(%esp)
	movl	$1000000000, 156(%esp)
	movl	$-1981284351, 144(%esp)
	movl	$-1966660860, 148(%esp)
	movl	$1981284351, 136(%esp)
	movl	$1966660859, 140(%esp)
	movl	$-382, 128(%esp)
	movl	$-1, 132(%esp)
	movl	$1981283970, 120(%esp)
	movl	$1966660859, 124(%esp)
	flds	LC0
	fstps	116(%esp)
	flds	LC1
	fstps	112(%esp)
	fldl	LC2
	fstpl	104(%esp)
	fldl	LC3
	fstpl	96(%esp)
	movzbl	207(%esp), %edx
	movzbl	206(%esp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movb	%al, 95(%esp)
	movl	$LC4, (%esp)
	call	_printf
	movsbl	95(%esp), %ecx
	movsbl	206(%esp), %edx
	movsbl	207(%esp), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_printf
	movzbl	206(%esp), %eax
	addl	$1, %eax
	movb	%al, 206(%esp)
	movzbl	207(%esp), %edx
	movzbl	206(%esp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movb	%al, 95(%esp)
	movl	$LC6, (%esp)
	call	_printf
	movsbl	95(%esp), %ecx
	movsbl	206(%esp), %edx
	movsbl	207(%esp), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_printf
	movzbl	206(%esp), %eax
	subl	$1, %eax
	movb	%al, 206(%esp)
	movzbl	207(%esp), %edx
	movzbl	206(%esp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movb	%al, 95(%esp)
	movl	$LC7, (%esp)
	call	_printf
	movsbl	95(%esp), %ecx
	movsbl	206(%esp), %edx
	movsbl	207(%esp), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_printf
	movzbl	205(%esp), %edx
	movzbl	204(%esp), %eax
	addl	%edx, %eax
	movb	%al, 94(%esp)
	movl	$LC8, (%esp)
	call	_printf
	movzbl	94(%esp), %ecx
	movzbl	204(%esp), %edx
	movzbl	205(%esp), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC9, (%esp)
	call	_printf
	movzwl	202(%esp), %edx
	movzwl	200(%esp), %eax
	imull	%edx, %eax
	movw	%ax, 92(%esp)
	movl	$LC10, (%esp)
	call	_printf
	movswl	92(%esp), %ecx
	movswl	200(%esp), %edx
	movswl	202(%esp), %eax
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC11, (%esp)
	call	_printf
	movzwl	198(%esp), %eax
	movl	$0, %edx
	divw	196(%esp)
	movw	%ax, 90(%esp)
	movzwl	198(%esp), %eax
	movl	$0, %edx
	divw	196(%esp)
	movw	%dx, 88(%esp)
	movl	$LC12, (%esp)
	call	_printf
	movzwl	88(%esp), %ebx
	movzwl	90(%esp), %ecx
	movzwl	196(%esp), %edx
	movzwl	198(%esp), %eax
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC13, (%esp)
	call	_printf
	movl	192(%esp), %edx
	movl	188(%esp), %eax
	addl	%edx, %eax
	cltd
	idivl	184(%esp)
	movl	%eax, 84(%esp)
	movl	$LC14, (%esp)
	call	_printf
	movl	184(%esp), %eax
	movl	%eax, 12(%esp)
	movl	188(%esp), %eax
	movl	%eax, 8(%esp)
	movl	192(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC15, (%esp)
	call	_printf
	movl	84(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC16, (%esp)
	call	_printf
	movl	176(%esp), %eax
	movl	$0, %edx
	divl	172(%esp)
	movl	%eax, %edx
	movl	180(%esp), %eax
	subl	%edx, %eax
	movl	%eax, 80(%esp)
	movl	$LC17, (%esp)
	call	_printf
	movl	172(%esp), %eax
	movl	%eax, 12(%esp)
	movl	176(%esp), %eax
	movl	%eax, 8(%esp)
	movl	180(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC18, (%esp)
	call	_printf
	movl	80(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC19, (%esp)
	call	_printf
	movl	168(%esp), %edx
	movl	164(%esp), %eax
	addl	%edx, %eax
	movl	%eax, 76(%esp)
	movl	$LC20, (%esp)
	call	_printf
	movl	164(%esp), %eax
	movl	%eax, 8(%esp)
	movl	168(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC21, (%esp)
	call	_printf
	movl	76(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC22, (%esp)
	call	_printf
	movl	160(%esp), %eax
	subl	156(%esp), %eax
	movl	%eax, 72(%esp)
	movl	$LC23, (%esp)
	call	_printf
	movl	156(%esp), %eax
	movl	%eax, 8(%esp)
	movl	160(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC24, (%esp)
	call	_printf
	movl	72(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC25, (%esp)
	call	_printf
	movl	144(%esp), %ecx
	movl	148(%esp), %ebx
	movl	136(%esp), %eax
	movl	140(%esp), %edx
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	%eax, 64(%esp)
	movl	%edx, 68(%esp)
	movl	$LC26, (%esp)
	call	_printf
	movl	136(%esp), %eax
	movl	140(%esp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	144(%esp), %eax
	movl	148(%esp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$LC27, (%esp)
	call	_printf
	movl	64(%esp), %eax
	movl	68(%esp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$LC28, (%esp)
	call	_printf
	movl	128(%esp), %eax
	movl	132(%esp), %edx
	subl	120(%esp), %eax
	sbbl	124(%esp), %edx
	movl	%eax, 56(%esp)
	movl	%edx, 60(%esp)
	movl	$LC29, (%esp)
	call	_printf
	movl	120(%esp), %eax
	movl	124(%esp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	128(%esp), %eax
	movl	132(%esp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$LC30, (%esp)
	call	_printf
	movl	56(%esp), %eax
	movl	60(%esp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$LC31, (%esp)
	call	_printf
	flds	116(%esp)
	fdivs	112(%esp)
	fstps	52(%esp)
	movl	$LC32, (%esp)
	call	_printf
	flds	116(%esp)
	flds	112(%esp)
	fstpl	12(%esp)
	fstpl	4(%esp)
	movl	$LC33, (%esp)
	call	_printf
	flds	52(%esp)
	fstpl	4(%esp)
	movl	$LC34, (%esp)
	call	_printf
	fldl	104(%esp)
	fmull	96(%esp)
	fstpl	40(%esp)
	movl	$LC35, (%esp)
	call	_printf
	fldl	96(%esp)
	fstpl	12(%esp)
	fldl	104(%esp)
	fstpl	4(%esp)
	movl	$LC36, (%esp)
	call	_printf
	fldl	40(%esp)
	fstpl	4(%esp)
	movl	$LC37, (%esp)
	call	_printf
	movl	$0, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.section .rdata,"dr"
	.align 4
LC0:
	.long	1095191495
	.align 4
LC1:
	.long	1073741824
	.align 8
LC2:
	.long	-604637688
	.long	1142990941
	.align 8
LC3:
	.long	0
	.long	1074003968
	.ident	"GCC: (MinGW.org GCC-8.2.0-5) 8.2.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
