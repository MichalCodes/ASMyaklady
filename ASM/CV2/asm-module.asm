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
    extern pole
    extern retezec
    extern zbytek32

;***************************************************************************

    section .text

    global otocSign
otocSign:
    mov edx, dword 0
.true:
    cmp edx, 10
    jge .false
    neg qword [pole + edx*8]
    inc edx
    jmp .true
    
.false:
    ret

    global otocSign2
otocSign2:
    mov edx, dword 0
.true:
    cmp edx, 10
    jge .false
    not qword [pole + edx*8]
    inc qword [pole + edx*8]
    inc edx
    jmp .true
    
.false:
    ret

    global prepisTecky
prepisTecky:
    mov edx, dword 0
.true:
    cmp edx, 9
    jge .false

    cmp [retezec + edx * 1], byte '_'
    jne .tru
    mov [retezec + edx * 1], byte '.'
.tru: 

    inc edx
    jmp .true
.false:     ;pamatuj :
    ret

    global zbytek
zbytek:
    mov edx, dword 0
.true:
    cmp edx, 10
    jge .false
    and [zbytek32 + edx * 4], dword 31
    inc edx
    jmp .true
    
.false:
    ret


