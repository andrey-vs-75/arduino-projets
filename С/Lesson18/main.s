	.file	"main.c"
	.text
	.globl	_int_to_binary
	.def	_int_to_binary;	.scl	2;	.type	32;	.endef
_int_to_binary:
LFB20:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, -20(%ebp)
	movl	$0, -16(%ebp)
	movb	$0, -12(%ebp)
	movl	$0, -24(%ebp)
	movb	$0, -10(%ebp)
	jmp	L2
L5:
	movzbl	-10(%ebp), %eax
	sall	$3, %eax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	testl	%eax, %eax
	jne	L3
	cmpb	$0, -10(%ebp)
	jne	L12
L3:
	movzbl	-10(%ebp), %eax
	sall	$3, %eax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movzbl	-10(%ebp), %eax
	movb	%dl, -24(%ebp,%eax)
	movzbl	-10(%ebp), %eax
	addl	$1, %eax
	movb	%al, -10(%ebp)
L2:
	cmpb	$3, -10(%ebp)
	jbe	L5
	jmp	L4
L12:
	nop
L4:
	movl	12(%ebp), %eax
	movw	$25136, (%eax)
	movb	$0, 2(%eax)
	movb	$0, -11(%ebp)
	jmp	L6
L11:
	movb	$0, -9(%ebp)
	jmp	L7
L10:
	movzbl	-10(%ebp), %edx
	movzbl	-11(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	subl	$1, %eax
	movzbl	-24(%ebp,%eax), %eax
	movzbl	%al, %edx
	movzbl	-9(%ebp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	L8
	cmpl	$1, %eax
	jne	L9
	movzbl	-9(%ebp), %eax
	movl	$7, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movb	$49, -20(%ebp,%eax)
	jmp	L9
L8:
	movzbl	-9(%ebp), %eax
	movl	$7, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movb	$48, -20(%ebp,%eax)
	nop
L9:
	movzbl	-9(%ebp), %eax
	addl	$1, %eax
	movb	%al, -9(%ebp)
L7:
	cmpb	$7, -9(%ebp)
	jbe	L10
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_strcat
	movzbl	-11(%ebp), %eax
	addl	$1, %eax
	movb	%al, -11(%ebp)
L6:
	movzbl	-11(%ebp), %eax
	cmpb	-10(%ebp), %al
	jb	L11
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE20:
	.globl	_my_div
	.def	_my_div;	.scl	2;	.type	32;	.endef
_my_div:
LFB21:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	flds	8(%ebp)
	fdivs	12(%ebp)
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE21:
	.globl	_my_sum
	.def	_my_sum;	.scl	2;	.type	32;	.endef
_my_sum:
LFB22:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	flds	8(%ebp)
	fadds	12(%ebp)
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE22:
	.section .rdata,"dr"
	.align 4
LC1:
	.ascii "MENU%c\15\12Enter an item number:\15\12\0"
LC2:
	.ascii "1: item 1\15\0"
LC3:
	.ascii "2: item 2\15\0"
LC4:
	.ascii "3: item 3\15\0"
LC5:
	.ascii "0: exit\15\0"
LC6:
	.ascii "%s\0"
	.align 4
LC7:
	.ascii "Only one character is required\15\0"
	.align 4
LC8:
	.ascii "You must enter only the proposed menu item\15\0"
	.align 4
LC9:
	.ascii "You have selected menu item 1\15\0"
	.align 4
LC10:
	.ascii "You have selected menu item 2\15\0"
	.align 4
LC11:
	.ascii "You have selected menu item 3\15\0"
	.text
	.globl	_menu
	.def	_menu;	.scl	2;	.type	32;	.endef
_menu:
LFB23:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	8(%ebp), %eax
	movb	%al, -28(%ebp)
	movl	$0, -18(%ebp)
	movl	$0, -14(%ebp)
	movw	$0, -10(%ebp)
	movsbl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
L27:
	movl	$LC2, (%esp)
	call	_puts
	movl	$LC3, (%esp)
	call	_puts
	movl	$LC4, (%esp)
	call	_puts
	movl	$LC5, (%esp)
	call	_puts
	leal	-18(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC6, (%esp)
	call	_scanf
	leal	-18(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	cmpl	$1, %eax
	ja	L18
	leal	-18(%ebp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	L19
L18:
	movl	$LC7, (%esp)
	call	_puts
	jmp	L20
L19:
	movzbl	-18(%ebp), %eax
	cmpb	$51, %al
	jg	L21
	movzbl	-18(%ebp), %eax
	cmpb	$47, %al
	jg	L22
L21:
	movl	$LC8, (%esp)
	call	_puts
	jmp	L20
L22:
	movzbl	-18(%ebp), %eax
	cmpb	$48, %al
	je	L29
	movzbl	-18(%ebp), %eax
	movsbl	%al, %eax
	cmpl	$50, %eax
	je	L25
	cmpl	$51, %eax
	je	L26
	cmpl	$49, %eax
	jne	L27
	movl	$LC9, (%esp)
	call	_puts
	jmp	L20
L25:
	movl	$LC10, (%esp)
	call	_puts
	jmp	L20
L26:
	movl	$LC11, (%esp)
	call	_puts
	nop
L20:
	jmp	L27
L29:
	nop
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE23:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC12:
	.ascii "MAIN MENU\15\0"
	.align 4
LC13:
	.ascii "Enter an item number to select actions:\15\0"
LC14:
	.ascii "1: item 1 menu\15\0"
LC15:
	.ascii "2: item 2 menu\15\0"
LC16:
	.ascii "3: item 3 menu\15\0"
LC17:
	.ascii "You have selected menu1\15\0"
LC18:
	.ascii "You have selected menu2\15\0"
LC19:
	.ascii "You have selected menu3\15\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB24:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	call	___main
	movl	$0, 22(%esp)
	movl	$0, 26(%esp)
	movw	$0, 30(%esp)
L31:
	movl	$LC12, (%esp)
	call	_puts
	movl	$LC13, (%esp)
	call	_puts
	movl	$LC14, (%esp)
	call	_puts
	movl	$LC15, (%esp)
	call	_puts
	movl	$LC16, (%esp)
	call	_puts
	movl	$LC5, (%esp)
	call	_puts
	leal	22(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC6, (%esp)
	call	_scanf
	leal	22(%esp), %eax
	movl	%eax, (%esp)
	call	_strlen
	cmpl	$1, %eax
	ja	L32
	leal	22(%esp), %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	L33
L32:
	movl	$LC7, (%esp)
	call	_puts
	jmp	L31
L33:
	movzbl	22(%esp), %eax
	cmpb	$51, %al
	jg	L34
	movzbl	22(%esp), %eax
	cmpb	$47, %al
	jg	L35
L34:
	movl	$LC8, (%esp)
	call	_puts
	jmp	L31
L35:
	movzbl	22(%esp), %eax
	cmpb	$48, %al
	je	L43
	movzbl	22(%esp), %eax
	movsbl	%al, %eax
	cmpl	$50, %eax
	je	L38
	cmpl	$51, %eax
	je	L39
	cmpl	$49, %eax
	jne	L40
	movl	$LC17, (%esp)
	call	_puts
	jmp	L40
L38:
	movl	$LC18, (%esp)
	call	_puts
	jmp	L40
L39:
	movl	$LC19, (%esp)
	call	_puts
	nop
L40:
	movzbl	22(%esp), %eax
	movsbl	%al, %eax
	movl	%eax, (%esp)
	call	_menu
	jmp	L31
L43:
	nop
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE24:
	.ident	"GCC: (MinGW.org GCC-8.2.0-5) 8.2.0"
	.def	_strcat;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
