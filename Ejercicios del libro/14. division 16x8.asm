;division 16x8
;2 de octubre de 2017
;Oscar Armando González Patiño

DIV168:
	LD A, (DVSAD) ;divisor 8 bits
	LD D, A
	LD E, 0
	LD HL, (DVDAD) ;dividendo 16 bits
	LD B, 8

DIV:
	XOR A ;borra acarreo
	SBC HL, DE ;dividendo - divisor
	INC HL ;cociente +1
	JP P, NOADD ;si el resto es positivo entonces NOADD

	ADD HL, DE ;restaura si es necesario
	DEC HL ;cociente -1

NOADD:
	ADD HL, HL ;dezplaza dividendo a la izq
	DJNZ DIV
	LD (RESP), HL
	HALT

DVSAD EQU 50H
DVDAD EQU 60H
RESP EQU 70H