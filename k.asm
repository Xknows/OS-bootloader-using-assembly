[bits 16]                    # determining processor type bit
[org 0x7c00]                 # memory location    

  
start:                       # lable - block of codes 
	xor ax,ax            # choose an ax register and set it to zero
	xor ax,ax	     # choose an ax register and set it to zero
	mov ds,ax            # set dx register to zero - data segment (holds data)
	mov es,ax            # set ex register to zero - extra segmnet (holds extra data)
	mov bx,0x8000        # set that memory location to bx - this specific location in middle of that memory sector for flags and bx speed
	mov si,hello_world                      # set si (source index) register to hello_world 
	call print_string                       # call that procedure 
	hello_world db 'hello github!',14,0      # define bit of hello github! which is 13 + 1 for 0, 0 identifier for end of word 


print_string:                                  # lable - block of codes
	mov ah,0x0E			       # interrupt for print - ah register is higher 8bits of ax 16bit

.repeat_next_char:			       # procedure 
	lodsb              		       # load nest character to al register  - al is lower 8bits of ax 16bit
	cmp al,0			       # check for end of characters
	je .done_print  		       # if id end go that procedure 
	int 0x10			       # interrupt for print
	jmp .repeat_next_char 		       # make and continue loop


.done_print:   				       # procedure 
	ret				       # return

	times(510-($-$$)) db 0x00 ;	       # set all memmory to 0 for all null spaces from first null space to where standing now  - [continue] 
					       # [continue] 512 kbyte is capasity of first sector which bootloader exits, 2 kbyte for bootloader signature deducted.
	dw 0xAA55                              # define word - bootloader signature








