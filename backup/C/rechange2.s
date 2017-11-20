	.file	"rechange2.c"
	.text
	.p2align 4,,15
	.globl	decode1
	.type	decode1, @function
decode1:
.LFB0:
	.cfi_startproc
	movl	(%rdx), %eax
	movl	(%rdi), %r8d
	movl	(%rsi), %ecx
	movl	%r8d, (%rsi)
	movl	%ecx, (%rdx)
	movl	%eax, (%rdi)
	ret
	.cfi_endproc
.LFE0:
	.size	decode1, .-decode1
	.ident	"GCC: (Ubuntu 7.1.0-5ubuntu2~14.04) 7.1.0"
	.section	.note.GNU-stack,"",@progbits
