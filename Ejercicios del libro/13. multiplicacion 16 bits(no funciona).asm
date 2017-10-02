;Multiplicacion de 16 bits
;2 de octubre de 2017
;Oscar Armando González Patiño
MUL16:
	LD A, (MPRAD + 1)
	LD C, A
	LD A, (MPRAD)

	LD B, 10H
	LD DE, (MPDAD)
	LD HL, 0

MULT:
	SRL C
	RRA
	CALL NC, NOADD
	ADD HL, DE

NOADD:
	EX DE, HL
	ADD HL, HL

	EX DE, HL
	DJNZ MULT
	RET
	LD (RESP), HL

MPRAD EQU 50H
MPDAD EQU 60H
RESP EQU 70H