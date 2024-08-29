Assume ds:data, cs:code
data segment
    nums db 54h, 61h, 58h, 57h, 34h, 36h, 87h, 02h
data ends

code segment
start:
    mov ax, data
    mov ds, ax

    lea si, nums
    mov cx, 08h
    mov bl, 0
    mov dl, 0

again:
    mov al, [si]
    and al, 01h
    jnz odd
    inc bl
    jmp next
odd:
    inc dl
next:
    inc si
    loop again

    int 03h
code ends
end start




