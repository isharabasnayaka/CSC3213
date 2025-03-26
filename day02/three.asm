;write an assembly programe to multyply two numbers and display the result
.model small
.stack 100h

.data
num db 3
num1 db 2 ;define number

.code
start:

mov ax,@data
mov ds,ax

mov al,num ;dl=5
mul num1 ;dl=5+2

mov dl,al


add dl,48 ;48 is assci value 48+5=53
mov ah,02h
int 21h
;end part
mov ax,4c00h
int 21h
end start