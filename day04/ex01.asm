.model small 
.stack 100h
.data
	m1 db "Enter the first number  : $"
	m2 db "Enter the second number : $"
	m3 db "The addition is         : $"	
	m4 db "The subtraction is      : $"
	m5 db "The Multiplication is   : $"	
	m6 db "The division Quotient is: $"
	m7 db "The division reminder is: $"
	n1 db 0
	n2 db 0
	r db ?
.code
start:
	mov ax,@data
	mov ds,ax	

	mov dx,offset m1 ;print the msg
	mov ah,09h
	int 21h	
	
	mov ah,01h;read input
	int 21h
	
	mov dl,al
	sub dl,48
	
	mov n1,dl
	
	mov dl,0ah;next line
	mov ah,02h
	int 21h
	
	mov dx,offset m2 ;print the msg
	mov ah,09h
	int 21h
	
	mov ah,01h;read input
	int 21h
	
	mov dl,al
	sub dl,48
	
	mov n2,dl
	
	mov dl,0ah;next line
	mov ah,02h
	int 21h
		
	mov dx,offset m3 ;print the msg
	mov ah,09h
	int 21h
	
	mov dl,n1 
	add dl,n2 

	add dl,48 ;48 is assci value 48+5=53
	mov ah,02h
	int 21h
	
	mov dl,0ah;next line
	mov ah,02h
	int 21h
	
	mov dx,offset m4 ;print the msg
	mov ah,09h
	int 21h
	
	mov dl,n1 ;dl=5
	sub dl,n2 ;dl=5+2

	add dl,48 ;48 is assci value 48+5=53
	mov ah,02h
	int 21h
	
	mov dl,0ah;next line
	mov ah,02h
	int 21h
	
	mov dx,offset m5 ;print the msg
	mov ah,09h
	int 21h
	
	mov al,n1 ;dl=5
	mul n2 ;dl=5+2

	mov dl,al

	add dl,48 ;48 is assci value 48+5=53
	mov ah,02h
	int 21h

	mov dl,0ah;next line
	mov ah,02h
	int 21h

	mov dx,offset m6 ;print the msg
	mov ah,09h
	int 21h	

	mov ah,00
	mov al,n1
	div n2
	mov r,ah

	mov dl,al
	add dl,48 ;48 is assci value 48+5=53
	mov ah,02h
	int 21h
	 
	mov dl,10 ; 10 is uset to get next line
	mov ah,02h
	int 21h

	mov dx,offset m7 ;print the msg
	mov ah,09h
	int 21h	
	
	mov dl,r
	add dl,48
	mov ah,02h
	int 21h	
	
	
	;end part
	mov ax,4c00h
	int 21h
end start	