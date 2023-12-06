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

    global faktorial
faktorial:
    mov r10d, 1     ;poc 32 bit
    mov eax, 1      ;akum 32
    inc edi
.zpet:
    cmp edi, r10d ;32 vs 32
    je .hotovo

    mul r10d        ;32 vs 32

    inc r10d
    jmp .zpet
.hotovo:
    ret
;**************************************
    global nulovani_k
nulovani_k:
    mov r9d, esi
    mov r8d, 2
    mov r10, 0
.zpet:
    cmp [rdi + r10 * 4], dword 12
    je .hotovo

    cmp [rdi + r10 * 4], esi
    jne .neni
    mov [rdi + r10 * 4], dword 0
    add esi, r9d
.neni:

    inc r10
    jmp .zpet
.hotovo:
    ret
;**************************************
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
    cmove eax, esi
    jge .hotovo

    div r10d

    cmp al, byte 0
    jne .nende
    mov eax, 0
    jmp .hotovo
.nende:
    inc r10d
    jmp .zpet
.hotovo:
    cmp eax, dword 0
    cmovne eax, esi
    ret
;**************************************
    global charToInt
charToInt:
    mov r10, 0
.zpet:
    cmp [rdi + r10 * 1], byte 0
    je .hotovo
    sub [rdi + r10 * 1], byte 48 ;48 je char '0'
    inc r10
    jmp .zpet
.hotovo:
    ret