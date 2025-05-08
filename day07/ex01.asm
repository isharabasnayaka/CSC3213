;write an assembly program to input three marks,
;calculate the average and
;print if the student passed (average >= 50)

.model small
.stack 100h
.data 
	m1 db 'Enter mark 1: $'
	m2 db 'Enter mark 2: $'
	m3 db 'Enter mark 3: $'
	n1 db 0
	n2 db 0
	n3 db 0
	x1 db 0
	x2 db 0
	x3 db 0
	dig1 db 0
	dig2 db 0
	dig3 db 0
	total db 0
    n db 3
	m db 0
	ms1 db "pass $"
	ms2 db "fail $"
	
.code 
start:

mov ax,@data
mov ds,ax

mov dx,offset m1 ;print msg
mov ah,09h
int 21h

mov ah,01h
int 21h

mov dl,al;enter first digit
sub dl,48
mov n1,dl

mov ah,01h
int 21h

mov dl,al ;enter second digit 
sub dl,48
mov x1,dl

mov al,n1;first digit*10+second digit 
mov bl,10
mul bl
mov dl,al
add dl,x1
mov dig1,dl


mov dl,10
mov ah,02h
int 21h


mov dx,offset m2 ;print msg
mov ah,09h
int 21h

mov ah,01h
int 21h

mov dl,al;enter first digit
sub dl,48
mov n2,dl

mov ah,01h
int 21h

mov dl,al ;enter second digit 
sub dl,48
mov x2,dl

mov al,n2;first digit*10+second digit 
mov bl,10
mul bl
mov dl,al
add dl,x2
mov dig2,dl

mov dl,10
mov ah,02h
int 21h

mov dx,offset m3 ;print msg
mov ah,09h
int 21h

mov ah,01h
int 21h

mov dl,al
sub dl,48
mov n3,dl

mov ah,01h
int 21h

mov dl,al ;enter second digit 
sub dl,48
mov x3,dl

mov al,n3;first digit*10+second digit 
mov bl,10
mul bl
mov dl,al
add dl,x3
mov dig3,dl

mov dl,10
mov ah,02h
int 21h

mov dl,dig1
add dl,dig2
add dl,dig3 ;get sum
mov total,dl

 mov ah,00
	mov al,total
    div n
    mov m,ah
	
	mov dl,al
	add dl,48
	mov ah,02h
	int 21h
	
cmp m,50
jge msg1
jl msg2

msg1:
mov dx,offset ms1
mov ah,09h
int 21h
jmp endn

msg2:
mov dx,offset ms2
mov ah,09h
int 21h 
jmp endn
endn:
	mov ax,4c00h
	int 21h
end start