assume ds:data, cs:code
data segment
    Num db 42     
    pos_msg db "Number is positive$"
    neg_msg db "Number is negative$"
data ends
code segment
start:
    mov ax, data  
    mov ds, ax  
    mov al, Num    
    test al, 80h 
    jnz negative  

positive:
    mov dx, offset pos_msg
    jmp print_message      
    
negative:
    mov dx, offset neg_msg 
    jmp print_message       

print_message:
    mov ah, 09h      
    int 21h
    jmp end_prog    

end_prog:
    int 20h         

code ends
end start

