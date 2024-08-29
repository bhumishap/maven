assume ds:data, cs:code
data segment
    n1 db 42H, 24H
    n2 db 4H, 2H
    n3 db 0,0
data ends
code segment
start: mov ax, data
         mov ds, ax
         mov al, n1
         mov bl, n2
         add al, bl
         mov al, n1+1
         mov bl, n2+1
         adc al, bl
         daa
         mov n3+1, al
         int 03h
code ends
end start
