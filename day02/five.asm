;write an assembly programe to add two numbers and display the result
;Number 01:2
;Number 02:3
;addition of number01 and number02:6
.model small
.stack 100h

.data
msg db "Number 01: $"
msg2 db "Number 02: $"
m db "Addition of number01 and number01: $"
n1 db 4
n2 db 2 

.code
start:

mov ax,@data
mov ds,ax
;print string
mov dx,offset msg 
mov ah,09h
int 21h

;print number
mov dl,n1 
add dl,48 
mov ah,02h
int 21h

mov dl,10 ; 10 is uset to get next line
mov ah,02h
int 21h

;print string
mov dx,offset msg2 
mov ah,09h
int 21h

;print number
mov dl,n2
add dl,48 
mov ah,02h
int 21h

mov dl,10 ; 10 is uset to get next line
mov ah,02h
int 21h

;print string
mov dx,offset m
mov ah,09h
int 21h

mov dl,n1 ;dl=5
add dl,n2 ;dl=5+2

add dl,48 ;48 is assci value 48+5=53
mov ah,02h
int 21h

;end part
mov ax,4c00h
int 21h
end start