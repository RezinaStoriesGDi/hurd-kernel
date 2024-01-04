.code16    
org 0x7c00 
boot:
    mov si, ldr 
    mov ah,0x0e
.loop:
    lodsb
    or al,al 
    jz halt  
    int 0x10
    jmp .loop
halt:
    cli
    hlt

times 510 - ($-$$) db 0 
dw 0xaa55

org 0x7C00                      
bits 16                         

start:
	cli                 
	mov si, msg         
	mov ah, 0x0E           
.loop	lodsb               
	or al, al              
	jz halt                
	int 0x10               
	jmp .loop              

halt:	hlt                     ; CPU command to halt the execution
msg:	db "Hello, World!", 0   ; Our actual identity to print

;; dsp numbers
times 510 - ($ - $$) db 0
dw 0xAA55

             
.text                   
     .globl _start;
_start:                  
     . = _start + 510    
     .byte 0x55         
     .byte 0xaa          

         movb $'H' , %al
     movb $0x0e, %ah
     int  $0x10

     movb $'e' , %al
     movb $0x0e, %ah
     int  $0x10

     movb $'l' , %al
     movb $0x0e, %ah
     int  $0x10


     movb $'l' , %al
     movb $0x0e, %ah
     int  $0x10


     movb $'o' , %al
     movb $0x0e, %ah
     int  $0x10


     movb $',' , %al
     movb $0x0e, %ah
     int  $0x10


     movb $' ' , %al
     movb $0x0e, %ah
     int  $0x10

     movb $'W' , %al
     movb $0x0e, %ah
     int  $0x10


     movb $'o' , %al
     movb $0x0e, %ah
     int  $0x10

     movb $'r' , %al
     movb $0x0e, %ah
     int  $0x10

     movb $'l' , %al
     movb $0x0e, %ah
     int  $0x10

     movb $'d' , %al
     movb $0x0e, %ah
     int  $0x10

     . = _start + 510   
     .byte 0x55           
     .byte 0xaa         
     
        