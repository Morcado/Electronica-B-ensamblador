;Pr�ctica 5
;Fecha; 21 de septiembre 2017
;Autor: Oscar Armando Gonz�lez Pati�o
;Programa que utiliza una funci�n CALL que dura 10ms para que
;en total tenga un tiempo de 3 segundos

	LD HL, 012BH
CICLO:
	LD DE, 0D04H
	CALL RETR
	DEC HL
	LD A, L
	OR H
	JP NZ, CICLO
	HALT
RETR:
RCICLO:
	DEC DE
	LD A, E
	OR D
	JP NZ, RCICLO ;24 CICLOS
	RET
	