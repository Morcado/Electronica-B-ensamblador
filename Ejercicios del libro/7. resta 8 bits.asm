;Resta 8 bits
;Oscar Armando González Patiño
;30 de septiembre de 2017
	LD A, (ADR1)
	LD B, A
	LD A, (ADR2)
	LD C, A
	LD A, B
	AND A
	SUB C
	LD (ADR3), A

ADR1 EQU 0100H
ADR2 EQU 0120H
ADR3 EQU 0140H