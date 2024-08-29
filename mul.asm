assume ds:data, cs:code
data segment
    n1 db 22h,44h
    n2 dw 1122h, 3344h
    n3 dw 0
    n4 dw 0,0
data ends
code segment
start:  mov ax, data    
    mov ds, ax
    mov al, n1
    mov bl, n1 +1
    mul bl 
    mov n3,ax
    mov ax, n2
    mov bx,n2+2
    mul bx 
    mov n4, ax
    mov n4+2, dx  
int 03
code ends
end start
