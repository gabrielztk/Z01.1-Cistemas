; Arquivo: jogo.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Faça um jogo com o Z01.1

leaw $21185, %A
movw (%A), %D
notw %D

leaw $21184, %A
movw %D, (%A)