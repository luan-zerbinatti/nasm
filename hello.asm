global _start
    section .text
    _start:
    mov rax,1                      ;system call for write
    mov rdi,1                      ;file handle 1 is stdout
    mov rsi,message                ;address of string to output
    mov rdx,11                    ; number of bytes
    syscall                        ;invoke operation system to do the write 
    mov rax,60                     ;system call for exit
    xor rdi,rdi                    ;exit code 0
    syscall  
     
     section .data
     message: db 'hello,world',10                    ;invoke operationg system to exit