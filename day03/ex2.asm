;enter the Num01:3
;enter the Num02:4
;total of Num01 and Num02:7
.model small
.stack 100h
.data
	msg1 db "Enter the num01:$"
	Num01 db 0
	msg2 db "Enter the num02:$"
	Num02 db 0
	msg3 db "Total of Num01 and Num02:$"
	n db 0

.code
start:
	mov ax,@data
	mov ds,ax
	
	mov dx,offset msg1 ;print the msg
	mov ah,09h
	int 21h
	
	mov ah,01h;read input
	int 21h
	
	mov dl,al
	sub dl,48
	
	mov Num01,dl
	
	mov dl,0ah;next line
	mov ah,02h
	int 21h
	
	
	mov dx,offset msg2 ;print the msg
	mov ah,09h
	int 21h
	
	mov ah,01h;read input
	int 21h
	
	mov dl,al
	sub dl,48
	
	mov Num02,dl
	
	mov dl,0ah;next line
	mov ah,02h
	int 21h
		
	mov dx,offset msg3 ;print the msg
	mov ah,09h
	int 21h
	
	mov dl,Num01 
	add dl,Num02 

	add dl,48 ;48 is assci value 48+5=53
	mov ah,02h
	int 21h
	
	;end part
	mov ax,4c00h
	int 21h
end start	