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
    extern gx
    extern abc
    extern enc_string
    extern ef
    extern a
;***************************************************************************

    section .text

     global uloz_cislo
uloz_cislo:
    mov [gx], dword 5
    ret
    
    global prohod
prohod:
    mov R8, [gx + 0*4]
    mov R9, [gx + 1*4]
    mov R10,[gx + 2*4]
    mov R11,[gx + 3*4]
    mov R12,[gx + 4*4]
    mov [gx + 0*4], R12
    mov [gx + 4*4], R11
    mov [gx + 2*4], R10
    mov [gx + 3*4], R9
    mov [gx + 1*4], R8
    ret

    global dopisE
dopisE:
    mov [abc + 4], byte '!'
    ret

    global decode
decode:
    mov EAX, [enc_string]
    mov [ef], EAX
    ret

    global sklCis
sklCis:
    movsx AX, [gx]
    mov [a], EAX
    ret