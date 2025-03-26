;write an assembly programe to add two numbers and display the result
.model small
.stack 100h

.data
num db 5
num1 db 2 ;define number

.code
start:

mov ax,@data
mov ds,ax

mov dl,num ;dl=5
add dl,num1 ;dl=5+2

add dl,48 ;48 is assci value 48+5=53
mov ah,02h
int 21h
;end part
mov ax,4c00h
int 21h
end start
