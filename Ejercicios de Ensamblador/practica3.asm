;Pr�ctica 3
;Fecha: 7 de septiembre de 2017
;Autor: Oscar Armando Gonz�lez Pati�o
;Programa que hace corrimiento y negaci�n de un dato
	LD A, 01H
	LD B, A
	IN A, (01H) ;Ingresa selecci�n
	CP 00H ;Compara si es 0
	JP Z, CERO 
	CP 01H ;Compara si es 1
	JP Z, UNO
	LD A, B ;Si es m�s de uno contin�a
	NEG
	DEC A
	JP FIN		
CERO:	
	LD A, B
	SRL A
	JP FIN
UNO:
	LD A, B
	SLA A
	JP FIN
FIN:
	OUT (00H), A
	.END