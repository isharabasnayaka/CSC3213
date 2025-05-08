;read 2 digit number
.model small
.stack 100h
.data
	m1 db "enter number : $"
	n1 db 0
	n2 db 0
	dig db 0
	r db 0
.code
start:
		mov ax,@data
		mov ds,ax
		
		mov dx,offset m1
		mov ah,09h
		int 21h
	;read the 1st digit
		mov ah,01h
		int 21h
		
		sub al,48
		mov n1,al
	;read the 2nd digit
		mov ah,01h
		int 21h
		
		sub al,48
		mov n2,al

		mov bl,10
		mov al,n1
		mul bl ;al=2*10
		
		mov dl,al
		add dl,0 ;dl=dl+n2=20+3
		
		mov dig,dl
		
		mov dl,10
		mov ah,02h
		int 21h
		
		mov ah,00 ;ah==0
		mov bl,10 ;bl=10
		mov al,dig ;al=23
		div bl 
		mov r,ah
		
		mov dl,al
		add dl,48
		int 21h
		
		mov dl,r
		add dl,48
		int 21h
		
		
	;end part
	mov ax,4c00h
	int 21h
end start		