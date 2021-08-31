.model small
.stack 100
.data
msj1 db 'Numero 1: ','$'
msj2 db 13,10,'Numero 2: ','$'
msj3 db 13,10,'Suma: ','$'

msj6 db 13,10,'Division: ','$'
linea db 13,10,'$'
var1 db 0
var2 db 0
.code
.startup

call limpia
mov ah,09h
lea dx, msj1 
int 21h

call leer 
sub al,30h 
mov var1,al 
mov ah,09h
lea dx, msj2 
int 21h

call leer 
sub al,30h 
mov var2,al 
mov bl,var2 

; SUMA
add bl,var1 
mov ah,09h
lea dx,msj3 
int 21h
mov dl,bl 
add dl,30h    
mov ah,02h 
int 21h



;DIVISION
mov ah,09h
lea dx,msj6 
int 21h
xor ax,ax 
mov al,var2
mov bl,al
mov al,var1
div bl ;
mov bl,al
mov dl,bl
add dl,30h
mov ah,02h
int 21h
.exit

; PROCEDIMIENTOS
salto proc near
mov ah,09h
lea dx,linea
int 21h
mov dl,00h
ret
salto endp

leer proc near
mov ah,01h
int 21h
ret
leer endp

limpia proc near
mov ah,00h
mov al,03h
int 10h
ret
limpia endp
end