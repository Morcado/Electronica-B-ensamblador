;Suma BCD 16 bits
;Oscar Armando González Patiño
;30 de septiembre de 2017

	LD A, (ADR1)
	LD HL, ADR2
	ADD A, (HL)
	DAA
	LD (ADR3), A	

	LD A, (ADR1+1)
	INC HL
	ADC A, (HL)
	DAA
	LD (ADR3+1), A

ADR1 EQU 0100H
ADR2 EQU 0120H
ADR3 EQU 0140H