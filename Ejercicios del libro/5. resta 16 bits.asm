;Programa que resta de 16 bits
;Fecha: 28 de septiembre de 2017
;Autor: Oscar Armando González Patiño

	LD HL, (ADR1)
	LD DE, (ADR2)
	AND A
	SBC HL, DE
	LD (ADR3), HL
	HALT

ADR1 EQU 0100H
ADR2 EQU 0120H
ADR3 EQU 0140H