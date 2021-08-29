.model small
.stack 64
.data

numero1 db 0
numero2 db 0
suma  db 0
resta db 0
multiplicacion db 0
division db 0
modulo db 0




msgn1 db 10,13, "Ingrese el primer valor: ",'$'
msgn2 db 10,13, "Ingrese el segundo valor: ",'$'
msg1 db 10,13, "Suma= " , '$'
msg2 db 10,13, "resta= " , '$'


.code
begin proc far

mov ax, @data
mov ds, ax

mov ah,09
lea dx, msgn1
int 21h
mov ah, 01
int 21h
sub al, 30h
mov numero1, al


mov ah,09
lea dx, msgn2
int 21h
mov ah, 01
int 21h
sub al, 30h
mov numero2, al


mov al, numero1
add al, numero2
mov suma, al



mov ah, 09
lea dx, msg1
int 21h
mov dl, suma
add dl, 30h
mov ah, 02
int 21h




mov ah, 4ch
int 21h 


end begin