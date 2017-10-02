;Suma de 32 bits
;Fecha: 28 de septiembre de 2017
;Autor: Oscar Armando González Patiño

	LD HL, (ADR1) ;operando 1
	LD BC, (ADR2)
	ADD HL, BC
	LD (ADR3), HL
	LD HL, (ADR1+2) ;operando 2
	LD BC, (ADR2+2)
	ADC HL, BC
	LD (ADR3+2), HL ;resultado
		
ADR1 EQU 0100H
ADR2 EQU 0120H
ADR3 EQU 0140H