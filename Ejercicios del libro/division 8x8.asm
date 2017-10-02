;Division de 8 bits
;2 de octubre de 2017
;Oscar Armando González Patiño

DIV88:
	XOR A
	LD B, 8

LOOP88:
	RL E
	RLA
	SUB C
	JR NC, $ + 3
	ADD A, C
	DJNZ LOOP88
	LD B, A
	LD A, E
	RLA
	CPL
	HALT