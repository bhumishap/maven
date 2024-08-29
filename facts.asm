Assume ds:data, cs:code
data segment
Num dw 05
data ends
code segment
start:  mov ax,data
        mov ds,ax
        mov ax,0001h
        mov cx,Num
up:     mul cx
        dec cx
        jnz up
        int 03h
code ends
end start