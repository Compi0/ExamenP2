;
; ExamenP2.asm
;
; Created: 08/04/2024 03:00:50 p. m.
; Author : 177232

LDI R16, 0b11111111
OUT DDRC, R16

LDI R17, 0
OUT DDRD, R17

LDI R21, 0b00000001 ;Iniciando con el menos significativo (Condicion inicial) 

IN R18, PIND ;Lo lee

CP R18, R17 ;Por si es 0
BREQ cero
CP R18, R17 ;Por si es menor a 0	
BRCS siempre
CP R18, R16 ;Por si es mayor a 8
BRCC siempre

MOV R19, R18 ;Para el ciclo

ciclo: 
CP R19, R17 ;Compara si ya se hicieron las iteraciones 
BREQ salir 
DEC R19 ;Para el ciclo

LSL R21 ;Se desplaza el bit menos significativo a ser uno mas significativo
ORI R21, 0b00000001 ;Se realiza una or para que el bit menos significativo se prenda 
RJMP ciclo

siempre:
	OUT PORTD, R16 ;Solo prende cuando no es valido

salir: 
	OUT PORTD, R21 ;Muestra resultado final correcto

cero: 
	OUT PORTD, R17