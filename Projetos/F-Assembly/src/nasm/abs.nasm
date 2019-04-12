; ####################################################################
; Arquivo: Abs.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017
;
; Copia o valor de RAM[1] para RAM[0] deixando o valor sempre positivo.
; ####################################################################

leaw $R1,%A
movw (%A),%S

POSITIVO:
	leaw $NEGATIVO,%A
	jl %S
	nop

	leaw $R0,%A
	movw %S,(%A)
	leaw $END,%A
	jmp
	nop

NEGATIVO:
	negw %S
	leaw $R0,%A
	movw %S,(%A)
	leaw $END,%A
	jmp
	nop

END:
