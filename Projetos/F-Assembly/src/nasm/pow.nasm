; ####################################################################
; Arquivo: Pow.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017
;
; Eleva ao quadrado o valor da RAM[1] e armazena o resultado na RAM[0].
; Só funciona com números positivos
; ####################################################################

leaw $R1,%A
movw (%A),%S
movw %S,%D
leaw $0,%A
movw %D,(%A)
decw %S
leaw $END,%A
jl %S
nop

LOOP:
	leaw $END,%A
	je %S
	nop

	leaw $R1,%A
	movw (%A),%D
	leaw $0,%A
	addw %D,(%A),%D
	movw %D,(%A)
	decw %S

	leaw $LOOP,%A
	jmp
	nop

END:
	
