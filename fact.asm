assume ds:data, cs:code
data segment
   num dw 07          
data ends

code segment
start: 
    mov ax, data      
    mov ds, ax
    mov cx, [num]   
    mov ax, 1
    xor dx, dx    
again: 
    mul cx            
    loop again 
    
    mov ax, dx
    or ax, ax
    jz skip_high
    
    mov dl, ah        
    add dl, '0'       
    mov ah, 02h       
    int 21h 
skip_high:    
    mov dl, al        
    add dl, '0'       
    mov ah, 02h       
    int 21h           
    mov ax, 4C00h     
    int 21h          

code ends
end start
