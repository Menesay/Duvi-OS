;Duvi_OS
;
;Menesay


;prints D
mov ah, 0x0e
mov al, "D" 		
int 0x10

mov ah, 0x0e
mov al, "U"
int 0x10

mov ah, 0x0e
mov al, "V"
int 0x10

mov ah, 0x0e
mov al, "I"
int 0x10

mov ah, 0x0e
mov al, " "
int 0x10

mov ah, 0x0e
mov al, "O"
int 0x10

mov ah, 0x0e
mov al, "S"
int 0x10

mov ah, 0x0e
mov al, 0xA
int 0x10

mov ah, 0x0e
mov al, 0xD
int 0x10

mov ah, 0x0e
mov al, "M"
int 0x10

mov ah, 0x0e
mov al, "e"
int 0x10

mov ah, 0x0e
mov al, "n"
int 0x10

mov ah, 0x0e
mov al, "e"
int 0x10

mov ah, 0x0e
mov al, "s"
int 0x10

mov ah, 0x0e
mov al, "a"
int 0x10

mov ah, 0x0e
mov al, "y"
int 0x10


;BIOS start
jmp $
times 510-($-$$) db 0
db 0x55, 0xaa





;ASCII tablosuna bakarak da yazabiliriz.
;"A" = 65 = 0x41 = 0b1000001
;mov al 65		gibi.



;mov ah, 0x0e
;mov al, 65
;int 0x10
;
;inc al			al yi 1 arttır.
;int 0x10		ile "AB" yazabiliriz.



;mov ah, 0
;int 0x16		system keyboard press için bekler 

;memorye 1 tane karakteri kaydeder
;char:
;	db 0
;mov ah, 0
;int 0x16
;mov al, [char]

;memorye 10 tane karakteri kaydeder
;buffer:
;	times 10 db 0		10 karakterlik string
;	mov bx, buffer
;	mob [bx], al
;	inc bx