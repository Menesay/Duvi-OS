

mov ah, 0x0e
mov al, 65				; al = "A"
int 0x10

loop:

	inc al

	cmp al, "Z" + 1
	je pass				; al = "Z" olana kadar al'yi 1 arttır

	int 0x10

	jmp loop

pass:
	xor al, al
	mov al, 97			; al = "a"
	int 0x10

	jmp lopp

lopp:
	
	inc al

	cmp al, "z" + 1
	je exit

	int 0x10
	
	jmp lopp


exit:
	jmp $

times 510-($-$$) db 0
db 0x55, 0xaa