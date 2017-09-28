;Autor: Oscar Armando González Patiño
;Programa que hace dos ciclos
	LD DE, 1D4CH
	LD A, 0FFH
NUM2:
NUM: 
	DEC A
	CP 00H
	JP NZ, NUM
	
	DEC DE
	LD A, E
	OR D
	CP 00H 
	LD A, 0FFH
	JP NZ, NUM2
	
	HALT