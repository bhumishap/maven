assume ds:data, cs:code
data segment
   msg1 db "Bhumisha"
   count dw 08h
data ends
code segment
start: mov ax, data 
       mov ds, ax 
       mov cx, count 
       lea si,msg1 
again: mov dl, [si] 
       mov Ah,02h 
       int 21h 
       inc si
       Loop again 
       mov Ax,4C00H
int 21h
Int 03h
code ends
End start
