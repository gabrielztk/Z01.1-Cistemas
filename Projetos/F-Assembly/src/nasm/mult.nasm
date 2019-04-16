; Arquivo: Abs.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Multiplica o valor de RAM[1] com RAM[0] salvando em RAM[3]

leaw $R1, %A
movw (%A), %D
leaw $R0, %A
movw (%A), %S
decw %S

loop:
	leaw $R1, %A
	addw (%A), %D, %D
	leaw $loop, %A
	decw %S

jne %S
nop

leaw $R3, %A
movw %D, (%A)