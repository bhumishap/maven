assume ds: data, cs:code
data segment
   num db 42
   even_msg db "Number is even$"
   odd_msg db "Number is odd$"
data ends
code segment   
Start:
    mov ax, data    
    mov ds, ax      
    mov al, num     
    test al, 1      
    jnz odd         
even:
    mov dx, offset even_msg   
    jmp print_message         
odd:
    mov dx, offset odd_msg    
    jmp print_message         
print_message:
    mov ah, 09h        
    int 21h            
end_prog:
    int 20h        
code ends
end Start
