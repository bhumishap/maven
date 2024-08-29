assume ds:data, cs:code
data segment
    msg1 db "balloons $"
    msg2 db 0ah, 'i eat apples $'
data ends
code segment
disp proc near
mov Ah,09h
int 21h
ret
disp endp
start: mov ax, data 
       mov ds, ax 
       lea dx,msg1 
       call disp 
       lea dx,msg2 
       call disp 
       mov Ax,4C00H
int 21h
Int 03h
code ends
end start