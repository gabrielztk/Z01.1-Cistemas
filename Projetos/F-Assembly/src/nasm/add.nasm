; Arquivo: add.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017
; 2018 @ Rafael Corsi
;
; Adicione o valor de RAM[1] com RAM[0] gravando em RAM[2].

movw (%A), %D
leaw %1, %A
movw (%A), %S
leaw %2, %A
addw %D, %S, (%A)