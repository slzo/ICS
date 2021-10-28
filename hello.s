//an easy programm
.data
msg :.string "hello world!\n"
len = .-msg
.text
.global _start
_start:
movq $len, %rdx ;
movq $msg, %rcx ;
movq $1, %rbx ;
movq $4, %rax ;
int $0x80 ;
movl $0, %ebx ;
movl $1, %eax ;
