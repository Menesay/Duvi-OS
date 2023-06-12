
buffer:

	times 10 db 0		
	mov bx, buffer
	mov [bx], al
	inc bx

	jmp buffer

mov ah, 0
int 0x16
mov ah , 0x0e
mov al, [buffer]
int 0x10



jmp $
times 510-($-$$) db 0
db 0x55, 0xaa