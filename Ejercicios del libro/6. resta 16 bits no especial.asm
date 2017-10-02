;resta sin usar instrucciones especiales7
	LD HL, (ADR1)
	LD DE, (ADR2)
	AND A
	LD A, H
	SUB D
	LD H, A
	LD A, L
	SUB E
	LD L, A
	LD (ADR3), HL

ADR1 EQU 0100H
ADR2 EQU 0120H
ADR3 EQU 0140H