assume ds:data, cs:code 
data segment 
    num db 11011101b 
data ends 
code segment 
start: mov ax, data 
        mov ds, ax 
        mov cx, 8
        mov si, 0 
        mov di, 0 
again: shr num, 1 
       jc one_bit 
       inc si 
       jmp next 
one_bit: 
       inc di 
next:
       loop again 
int 03h 
code ends 
end start
