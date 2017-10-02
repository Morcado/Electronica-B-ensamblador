;Resta BCD n bits
;Oscar Armando González Patiño
;30 de septiembre de 2017

BCDPAK:
	LD B, CUENTA ;numero de bits
	LD DE, N2	
	LD HL, N1
	AND A ;elimina acarreo
MENOS:
	LD A, (DE)
	SBC A, (HL)
	DAA
	LD (HL), A

	INC DE
	INC HL
	DJNZ MENOS
	HALT

CUENTA EQU 3
N1 EQU 0100H
N2 EQU 0120H