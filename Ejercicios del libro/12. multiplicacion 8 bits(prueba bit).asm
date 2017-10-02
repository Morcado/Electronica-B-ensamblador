;Multiplicacion de 8 bits con prueba de bit (no funciona)
;2 de octubre de 2017
;Oscar Armando González Patiño

MPY88:
	LD BC, (MPRAD) ;multiplicador
	LD B, 8 ;Contador del bit
	LD DE, (MPDAD) ;multiplicando
	LD D, 0
	LD HL, 0

MULT:
	;SRL C ;Dezplaza el bit del multiplicador al acarreo
	BIT 0, C
	JR NZ, NOADD ;Verifica el acarreo
	ADD HL, DE ;Suma multiplicando
	
NOADD:
	SLA E ;desplaza multiplicando a la izquierda
	RL D ;lleva bit a D
	DEC B

	JP NZ, MULT
	LD (RESAD), HL
	HALT

MPRAD EQU 0050H
MPDAD EQU 0060H
RESAD EQU 0070H
