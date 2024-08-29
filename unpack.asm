assume ds: data, cs: code
data segment
     num db 42H
data ends
code segment
start: mov ax, data
          mov ds, ax
          mov al, num
          and al, 0fh
          mov bl, al
          mov al, num
          ror al, 4
          and al, 0fh
          mov bh, al
int 03h
code ends 
end start
