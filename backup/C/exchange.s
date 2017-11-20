	.file	"exchange.c"
	.text
	.p2align 4,,15
	.globl	exchange
	.type	exchange, @function
exchange:
.LFB0:
	.cfi_startproc
	movl	(%rdi), %eax
	movl	%esi, (%rdi)
	ret
	.cfi_endproc
.LFE0:
	.size	exchange, .-exchange
	.ident	"GCC: (Ubuntu 7.1.0-5ubuntu2~14.04) 7.1.0"
	.section	.note.GNU-stack,"",@progbits
