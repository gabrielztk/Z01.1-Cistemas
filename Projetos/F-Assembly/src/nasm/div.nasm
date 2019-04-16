; Arquivo: Div.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Divide R0 por R1 e armazena o resultado em R2.
; (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
; divisao para numeros inteiros positivos

leaw $0, %A
movw %A, %D
leaw $R2, %A
movw %D, (%A)
leaw %R1, %A
movw (%A), %D
leaw $R0, %A
movw (%A), %S
WHILE:
	movw %S, %A
	subw %A, %D, %S
	leaw $END, %A
	jl %S
	nop
	leaw $R3, %A
	movw %S, (%A)
	leaw $R2, %A
	movw (%A), %S
	incw %S
	movw %S, (%A)
	leaw $R3, %A
	movw (%A), %S
	leaw $WHILE, %A
	jmp
	nop
END: