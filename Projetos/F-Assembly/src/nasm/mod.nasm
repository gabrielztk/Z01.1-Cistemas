; Arquivo: Mod.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017
;
;  Encontra o resto da divisão entre RAM[2] e RAM[1] e o salva em RAM[0].



leaw $R2, %A
movw (%A), %D

leaw $R1, %A
movw (%A), %S

WHILE:

	leaw $R0, %A
	movw %S, (%A)

	movw %S, %A
	subw %A, %D, %S
	leaw $END, %A
	jl %S
	nop


	leaw $WHILE, %A
	jmp
	nop
END: