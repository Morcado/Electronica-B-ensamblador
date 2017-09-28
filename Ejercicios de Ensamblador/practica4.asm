;Práctica 4
;Fecha: 14 de septiembre de 2017
;Autor: Oscar Armando González Patiño
;Programa que realiza un retardo de 5 seg
	LD DE, 0F9BH
CICLO2:
	DEC DE
	LD A, 0F4H 
CICLO:
	NOP ;4 ciclos
	NOP
	NOP
	NOP
	NOP
	DEC A
	CP 00H
	JP NZ, CICLO

	LD A, E
	OR D
	CP 00H
	JP NZ, CICLO2

	HALT