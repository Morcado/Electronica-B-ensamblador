;Práctica 6
;Serie de fibonacci
;Fecha: 28 de septiembre de 2017
;Autor: Oscar Armando González Patiño

	IN A, (00H) ;Numero de sumas
	
	LD BC, 0001H
	LD DE, 0001H
	LD HL, 0000H
	
SUMA:
	
	ADD HL, DE
	;DEC HL

	LD B, D
	LD C, E
	;LD BC, DE
	LD D, H
	LD E, L
	EXX
	;LD DE, HL
	DEC A
	JP NZ, SUMA
	HALT	