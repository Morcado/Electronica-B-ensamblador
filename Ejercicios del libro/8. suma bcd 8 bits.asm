;Suma BCD 8 bits
;Oscar Armando González Patiño
;30 de septiembre de 2017

	LD A, 22H
	ADD A, 39H
	DAA
	
	LD (ADR), A

ADR EQU 0100H