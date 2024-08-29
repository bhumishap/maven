assume ds:data, cs:code
data segment
lst1 db 42H, 22H, 82H, 62H, 02H, 92H, 52H, 12H, 72H, 32H
lst2 db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
count db 0Ah
data ends
code segment
start: mov ax, data
       mov ds, ax
       mov cl, count
       lea si, lst1
       lea di, lst2
again: mov al, [si]
       mov [di],al
       inc si
       inc di
       loop again
int 03h
code ends
end start
