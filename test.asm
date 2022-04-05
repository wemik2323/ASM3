extern printf
extern scanf
extern puts
section .bss
    ziga dw 0
    jopa dw 0

section .data
    msg db "Hello boba", 10, 0
    frm db "%hi%hi", 0
    frm2 db "%hi", 0

section .text
    global main

main:
    push rbp
    mov rbp, rsp
    
    mov edi, frm
    mov esi, ziga
    mov edx, jopa
    call scanf

    cmp [ziga], [jopa]
    mov eax, [ziga]
    mov ebx, [jopa]
    sub eax, ebx
    mov ebx, [jopa]
    xor edx, edx
    idiv ebx 

    mov edi, frm2
    mov esi, eax
    call printf

    mov rsp, rbp
    pop rbp
    ret

