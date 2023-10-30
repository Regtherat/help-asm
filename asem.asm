.global _start
.intel_syntax
.section .text

        mov %eax 4
        mov %ebx, 1 # STDOUT, where were writing
        lea %ecx, [message]
        mov %edx, 13
        int 0x80


        mov %eax, 1
        mov %ebx, 65
        int 0x80

.section .data
    message:
    .ascii "hello world\n"