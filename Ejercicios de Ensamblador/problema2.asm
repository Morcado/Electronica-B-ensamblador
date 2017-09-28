;Autor: Oscar Armando González Patiño
;Programa que suma n veces un número incrementando en 4 el sumando
	IN A, (01H) ;numero de sumas
	LD B, A ;B es el contador
	LD DE, 0000H ;lo que se va a sumar
	LD HL, 0000H ;guarda la suma
CICLO:
	LD A, B
	CP 00H
	JP Z, FIN
	DEC A
	LD B, A
	INC DE
	INC DE
	INC DE
	INC DE
	ADD HL, DE
	JP CICLO
FIN:
	LD A, L
	OUT (00H), A
	LD A, H
	OUT (01H), A
	HALT