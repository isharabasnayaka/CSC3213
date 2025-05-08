;write the assembly program to input a single digit number and check if it is even or odd

.model small
.stack 100h
.data
	m1 db "Enter the number:$"
	m2 db "even $"
	m3 db "odd $"
	
	n1 db 0
	n2 db 2
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
	
	
	sub al,48
	mov n1,al
	
	mov ah,00
    mov al,n1
    div n2
    mov r,ah
	
	
	mov dl,10;line break
	mov ah,02h
	int 21h
		
	cmp  r,0
	je msg1
	jne msg2
	
	msg1:
	mov dx,offset m2 ;print the msg
	mov ah,09h
	int 21h	
	jmp endn
	
	msg2:
	mov dx,offset m3 ;print the msg
	mov ah,09h
	int 21h	
	
	jmp endn
	
	endn:
	;end part
	mov ax,4c00h
	int 21h
end start	