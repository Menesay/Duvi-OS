[org 0x7c00]				;organize. (0x7c00 => BIOS start)

mov ah, 0x0e
mov bx, variableToPrint

printString:

	mov al, [bx]

	cmp al, 0
	je exit

	int 0x10
	inc bx

	jmp printString



variableToPrint:
	db "Duvi Os by Menesay", 0


exit:
	jmp $

times 510-($-$$) db 0
db 0x55, 0xaa