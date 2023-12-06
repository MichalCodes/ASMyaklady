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
    ;1
    global min
min:
    mov edx, [rdi + 0 * 4]
    mov r10, 1
.zpet:
    cmp r10, 5
    jge .hotovo

    cmp [rdi + r10 * 4], dword 0
    jle .zap

    cmp [rdi + r10 * 4], edx
    cmovl edx, [rdi + r10 * 4] 
    cmovl rax, r10
.zap:

    inc r10
    jmp .zpet
.hotovo:
    ret



    global intchar
intchar:
    mov rdx, 8
    mov eax, 0
    mov r10d, 0
.zpet:
    cmp rdx, 0
    je .hotovo

    cmp [rdi + rdx * 1 -2], byte '1'
    jne .taknic
    
    mov eax, 1
    mov cl, dl
    shl eax, cl
    or r10d, eax

.taknic:
    add r10d, 10
    dec rdx
    jmp .zpet
.hotovo:
    mov eax, r10d
    ret
