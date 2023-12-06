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
    extern vstup
    extern vystup
    extern a
    extern ot
    extern otoc_vystup
    extern tretiuloha
    extern x

;***************************************************************************

    section .text

    global zapis
zapis:
    mov [a], dword 44565555
    ret

    global prepis
prepis:
    movsx R8, byte [vstup + 0 * 1]
    movsx R9, byte [vstup + 1 * 1]
    movsx R10, byte [vstup + 2 * 1]
    movsx R11, byte[vstup + 3 * 1]
    mov [vystup + 0 * 8], R11
    mov [vystup + 1 * 8], R10
    mov [vystup + 2 * 8], R9
    mov [vystup + 3 * 8], R8
    ret

    global otoc
otoc:
    mov AL, [ot + 0 * 1]
    mov BL, [ot + 1 * 1]
    mov CL, [ot + 2 * 1]
    mov DL, [ot + 3 * 1] 
    mov [otoc_vystup + 3*1], AL
    mov [otoc_vystup + 2*1], BL
    mov [otoc_vystup + 1*1], CL
    mov [otoc_vystup + 0*1], DL
    ret

    global naString
naString:
    mov EAX, [x]
    mov [tretiuloha], EAX
    ret