
.text
.global cmp2
.type cmp2, @function
cmp2:
	push %rbp
	movq %rsp, %rbp
	movl %edi, %eax ;//直接将参数1作为返回结果放入%eax
	cmpl %eax, %esi ;//比较参数2和参数1的大小，如果参数2小则修改%eax中的返回值，否则直接返回
	jl .else
.ret:
	popq %rbp
	ret
.else:
	movl %esi, %eax
	jmp .ret

.global main
.type main, @function
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $48, %rsp  ;//为10个数分配地址
	movq %fs:40, %rax
	movq %rax, -8(%rbp) 
	movl $10, -48(%rbp) ;//给10个数赋值
	movl $15, -44(%rbp) 
	movl $20, -40(%rbp) 
	movl $25, -36(%rbp) 
	movl $30, -32(%rbp) 
	movl $35, -28(%rbp) 
	movl $40, -24(%rbp) 
	movl $45, -20(%rbp) 
	movl $50, -16(%rbp) 
	movl $55, -12(%rbp)
	mov $1, %rdx  ;//寻址偏移量
	movl -48(%rbp), %eax
	jmp .putpara  ;//跳转到传参以及调用cmp2函数部分
	movq -8(%rbp), %rcx
	xorq %fs:40, %rcx
	je .L6  ;//跳转到退出部分
	call __stack_chk_fail@PLT
.putpara:
	movl %eax, %edi ;//将每次cmp2返回的值作为参数1传入
	movl -48(%rbp,%rdx,4), %esi ;//从内存中取出存入的数作为参数2传入
	add $1, %rdx
	call cmp2
	cmp $10, %rdx  ;//终止条件，10个数均比较完毕
	jne .putpara
.L6:
	leave
	ret
