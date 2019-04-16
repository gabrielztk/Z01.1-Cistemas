; Arquivo: isEven.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2019
;
; Verifica se o valor salvo no endereço RAM[5] é
; par. Se for verdadeiro, salva 1
; em RAM[0] e 0 caso contrário.

leaw $1, %A
movw %A, %D

leaw $R5, %A
movw (%A), %S

andw %S, %D, %A
movw %A, %S

leaw $EVEN, %A
je %S
nop

leaw $0, %A
movw %A, %S
leaw $R0, %A
movw %S, (%A)
leaw $END, %A
jmp
nop

EVEN:	
leaw $1, %A
movw %A, %S
leaw $R0, %A
movw %S, (%A)

END: