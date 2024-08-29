assume ds:data, cs:code
data segment
   array db 42H, 62H, 82H, 52H, 22H
   num db 29h
   msg1 db "Number present in array $"
   msg2 db "Number not present in array $"
count dw 05h
data ends
code segment
disp proc near
mov ah, 09h
int 21h
ret
disp endp
start: mov ax, data
       mov ds, ax
       mov cx,count
       lea si,array
       mov bl,num
again: cmp bl,[si]
       jz found
       inc si
       Loop again
       lea dx,msg2
       call disp
       jmp exit
found: lea dx,msg1
       call disp
exit: mov Ax,4C00H
int 21h
int 03h
code ends
end start
