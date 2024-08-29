assume ds:data,cs:code
data segment
    array db 61h, 05h, 42h, 05H, 12H, 15h, 09h, 14h,  56h, 38h ; Array of 10 nos
    small   db  0
data ends       
code segment
start :mov ax, data    
       mov ds, ax   
       xor di, di          
       mov cl, 10          
       lea bx, array   
back: cmp  al, [bx+di]     
      jc  skip
      mov al, [bx+di] 
skip: inc di          
      dec cl              
      jnz back        
      mov small, al       
      int 03h
code ends
end start
