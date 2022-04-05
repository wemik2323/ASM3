extern printf
extern scanf
extern puts
section .bss
    ziga dw 0
    jopa dw 0
    chz dw 0

section .data
    msg db "1 - Signed, 2 - Unsigned", 10, 0
    msg2 db "Введите два числа", 10, 0
    frm db "%hi%hi", 0
    frm2 db "%hi", 10, 0

section .text
    global main

main:
    push rbp
    mov rbp, rsp

    mov edi, msg
    call printf

    mov edi, frm2
    mov esi, chz
    call scanf

    mov ecx, [chz]
    cmp ecx, 1
    je SSI
    cmp ecx, 2
    je USI

    mov rsp, rbp
    pop rbp
    ret

SSI:
    mov edi, frm
    mov esi, ziga
    mov edx, jopa
    call scanf

    mov ax, [ziga]
    mov bx, [jopa]
    cmp ax, bx
    jl Men
    je Rav
    sub ax, bx
    mov bx, [jopa]
    ; xor edx, edx
    cwd
    idiv bx 

    mov edi, frm2
    mov esi, eax
    call printf

    mov rsp, rbp
    pop rbp
    ret


Men:
    ; xor dx, dx
    cwd
    idiv bx
    add ax, 5
    mov edi, frm2
    mov esi, eax
    call printf

    mov rsp, rbp
    pop rbp
    ret

Rav:
    mov ax, 256
    mov edi, frm2
    mov esi, eax
    call printf

    mov rsp, rbp
    pop rbp
    ret

USI:
    mov edi, frm
    mov esi, ziga
    mov edx, jopa
    call scanf

    mov ax, [ziga]
    mov bx, [jopa]
    cmp ax, bx
    jl Men
    je Rav
    sub ax, bx
    mov bx, [jopa]
    xor edx, edx
    ;cwd
    idiv bx 

    mov edi, frm2
    mov esi, eax
    call printf

    mov rsp, rbp
    pop rbp
    ret


Men2:
    xor dx, dx
    ;cwd
    idiv bx
    add ax, 5
    mov edi, frm2
    mov esi, eax
    call printf

    mov rsp, rbp
    pop rbp
    ret

Rav2:
    mov ax, 256
    mov edi, frm2
    mov esi, eax
    call printf

    mov rsp, rbp
    pop rbp
    ret

