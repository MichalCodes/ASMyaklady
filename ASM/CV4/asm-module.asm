;***************************************************************************
;
; Program for education in subject "Assembly Languages" and "APPS"
; petr.olivka@vsb.cz, Department of Computer Science, VSB-TUO
;
; Empty project
;
;***************************************************************************

    bits 64

    section .data



;***************************************************************************

    section .text

    global mocnina2
mocnina2:
    mov rax, rdi
    mov r8, 2
    mov cl, 0
    mov rdx, 0
    mov r9, 1
.zpet:
    cmp rax, qword 0
    je .hotovo

    cmp rdx, 0
    jne .hotovo

    cqo
    idiv r8

    inc cl
    jmp .zpet
.hotovo:
    dec cl
    shl r9, cl
    mov rax, r9
    ret

        global prvocislo
prvocislo:
    mov eax, edi
    mov r11d, 2
    div r11d
    inc eax
    mov r8d, eax
    mov esi, 1
    mov eax, edi
    mov r10d, 2
.zpet:

    cmp r10d, r8d
    cmove eax, esi      ;kdyz nenajde je to prv. ret 1
    je .hotovo

    cdq
    idiv r10d

    cmp rdx, 0          ;kdyz jde tak 0 a konec
    jne .nende
    mov eax, 0
    jmp .hotovo
.nende:

    inc r10d
    jmp .zpet
.hotovo:
    ret


    global str_to_long
str_to_long:
    mov r10, 0
    mov r11, 0
    mov rax, 0
    mov r9, 10
    mov r8, 1
.zpet:
    cmp [rdi + r10 * 1], byte 0
    je .hotovo

    mul r9
    cmp [rdi + r10 * 1], byte '-'
    cmove r11, r8
    je .minus

    sub [rdi + r10 * 1], byte 48 ;48 je char '0'
    add al, byte [rdi + r10 * 1]

.minus:
    inc r10
    jmp .zpet
.hotovo:

    cmp r11, 0
    je .kladny
    neg rax
.kladny:
    ret




