;write an assembly programe to divition two numbers and display the result,reminder
.model small
.stack 100h

.data
num db 4
num1 db 2 
r db ?

.code
start:

mov ax,@data
mov ds,ax

mov ah,00
mov al,num
div num1
mov r,ah

mov dl,al
add dl,48 ;48 is assci value 48+5=53
mov ah,02h
int 21h
 
mov dl,10 ; 10 is uset to get next line
mov ah,02h
int 21h
 
mov dl,r
add dl,48
mov ah,02h
int 21h

;end part
mov ax,4c00h
int 21h
end start