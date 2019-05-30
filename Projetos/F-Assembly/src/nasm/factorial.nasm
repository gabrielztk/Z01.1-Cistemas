; Arquivo: Factorial.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Calcula o fatorial do número em (R0) e armazena o valor em (R1).

leaw $0, %A
movw (%A), %D

leaw $1, %A
movw %D, (%A)

decw %D
decw %D

leaw $2, %A
movw %D, (%A)
movw %D, %S

leaw $loop, %A
jg %S
nop

loop:
	leaw $1, %A
	movw (%A), %D
	leaw $loop2, %A
	jg %S
	nop

loop2:
	leaw $1, %A
	addw %D, (%A), %D
	leaw $loop2, %A
	decw %S
	jg %S
	nop

	leaw $1, %A
	movw %D, (%A)
	leaw $2, %A
	movw (%A), %S
	decw %S
	movw %S, (%A)
	leaw $loop, %A
	jg %S
	nop

leaw $fatorial, %A
jg %D
nop

incw %D

fatorial:
	leaw $1, %A
	movw %D, (%A)