    bits 64

    section .data
    extern pole
    extern x
    extern n
    extern sude
    extern liche
    extern pole3
    extern retezec
    extern cvb
    extern result
    section .text

    global suda
suda:
    mov r8d, [pole + 0 * 4]
    mov r9d, [pole + 1 * 4]
    mov r10d, [pole + 2 * 4]
    mov r11d, [pole + 3 * 4]
    and r8d, dword 4294967294
    and r9d, dword 4294967294
    and r10d, dword 4294967294
    and r11d, dword 4294967294
    mov [pole + 0 * 4], r8d
    mov [pole + 1 * 4], r9d
    mov [pole + 2 * 4], r10d
    mov [pole + 3 * 4], r11d
    ret

    global posuv
posuv:
    mov eax, [x]
    mov edx, dword 0
.true
    cmp edx, [n]
    jge .false
    shl rax, 4
    inc edx
    jmp .true
    
.false
    mov [x], eax
    ret

    global soucet
soucet:
    mov r8d, [pole3 + 0 * 4]
    mov r9d, [pole3 + 2 * 4]
    mov r10d, [pole3 + 4 * 4]
    add r8d, r9d
    add r8d, r10d
    mov [sude], r8d
    mov r8d, [pole3 + 1 * 4]
    mov r9d, [pole3 + 3 * 4]
    mov r10d, [pole3 + 5 * 4]
    add r8d, r9d
    add r8d, r10d
    mov [liche], r8d
    ret

    global to_lower
to_lower:
    or [retezec + 0], byte 32
    or [retezec + 1], byte 32
    or [retezec + 2], byte 32
    or [retezec + 3], byte 32
    ret

    global podminka
podminka:
    mov eax, 0
    cmp [cvb], dword 1
    je .tru
    add eax, 555

.tru 
    add eax, dword 100
    mov [result], eax
    ret
