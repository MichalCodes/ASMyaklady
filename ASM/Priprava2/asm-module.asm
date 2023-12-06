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

;maximum
    global max
max:
    mov eax, [rdi + 0 * 4]
    mov r10, 1
    mov r11, 0
.zpet:
    cmp r10, 10
    jge .hotovo

    cmp [rdi + r10 * 4], eax
    cmovg eax, [rdi + r10 * 4] 

    inc r10
    inc r11
    jmp .zpet
.hotovo:
    ret

;minimum
    global min
min:
    mov eax, [rdi + 0 * 4]
    mov r10, 1
    mov r11, 0
.zpet:
    cmp r10, 10
    jge .hotovo

    cmp [rdi + r10 * 4], eax
    cmovl eax, [rdi + r10 * 4] 

    inc r10
    inc r11
    jmp .zpet
.hotovo:
    ret

;suma
    global suma
suma:
    mov eax, [rdi + 0 * 4]
    mov r10, 1
.zpet:
    cmp r10, 10
    jge .hotovo

    add eax, [rdi + r10 * 4]

    inc r10
    jmp .zpet
.hotovo:
    ret

;sude
    global sude
sude:
    mov r10, 1
    mov r11, 0
    mov r8, 0
.zpet:
    cmp qword [rdi + r10 * 8], qword -1
    je .hotovo

    mov rax, [rdi + r11 * 8]
    and al, 1
    cmp al, 1
    je .neniS
    inc r8
.neniS:

    inc r11
    inc r10
    jmp .zpet
.hotovo:
    inc r8
    mov rax, r8 
    ret

;liche
    global liche
liche:
    mov r10, 1
    mov r11, 0
    mov r8, 0
.zpet:
    cmp qword [rdi + r10 * 8], qword -1
    je .hotovo

    mov rax, [rdi + r11 * 8]
    and al, 1
    cmp al, 0
    je .neniL
    inc r8
.neniL:

    inc r11
    inc r10
    jmp .zpet
.hotovo:
    mov rax, r8 
    ret

;dvojice
    global dvojce
dvojce:
    mov r10, 0
    mov r11, 1
    mov r8, 0

.zpet:
    cmp qword [rdi + r10 * 8], qword -1
    je .hotovo

    mov rcx, [rdi + r11 * 8]
    mov rbx, [rdi + r10 * 8]
    cmp rcx, rbx
    jne .neni
    inc r8
.neni:

    inc r11
    inc r10
    jmp .zpet
.hotovo:
    mov rax, r8 
    ret

;tecky
    global tecky
tecky:
    mov r10, 0
    mov r8, 0

.zpet:
    cmp [rdi + r10 * 1], byte 0
    je .hotovo

    mov cl, [rdi + r10 * 1]
    cmp cl, ' '
    jne .neni
    inc r8
.neni:
    inc r10
    jmp .zpet
.hotovo:
    mov rax, r8 
    ret

;delkastr
    global delkaStr
delkaStr:
    mov r10, 0
    mov r8, 0

.zpet:
    cmp [rdi + r10 * 1], byte 0
    je .hotovo

    inc r10
    jmp .zpet
.hotovo:
    mov rax, r10
    ret

