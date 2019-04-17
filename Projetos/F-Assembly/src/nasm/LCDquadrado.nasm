; Arquivo: LCDQuadrado.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Desenhe um quadro no LCD
;  - Valide no hardawre
;  - Bata uma foto!

leaw %18450, %A
movw %A, %D
leaw %R5, %A
movw %D, (%A)

leaw %20, %A
movw %A, %D
leaw %R4, %A
movw %D, (%A)

leaw $32, %A
movw %A, %D
leaw %R3, %A
movw %D, (%A)

WHILE:
	leaw $END, %A
	je %D
	nop

	leaw %R5, %A
	movw (%A),%D
	
	movw %D, %S
	
	leaw %20, %A
	addw %A, %D, %D
	leaw %R5, %A

	movw %D, (%A)

	leaw $0, %A
	movw %A, %D
	notw %D

	movw %S, %A
	movw %D, (%A)

	leaw $R3, %A
	movw (%A), %D

	decw %D

	movw %D, (%A)

	leaw $WHILE, %A

	jmp
	nop

END:

leaw %18451, %A
movw %A, %D
leaw %R5, %A
movw %D, (%A)

leaw %20, %A
movw %A, %D
leaw %R4, %A
movw %D, (%A)

leaw $32, %A
movw %A, %D
leaw %R3, %A
movw %D, (%A)

WHILEE:
	leaw $ENDD, %A
	je %D
	nop

	leaw %R5, %A
	movw (%A),%D
	
	movw %D, %S
	
	leaw %20, %A
	addw %A, %D, %D
	leaw %R5, %A

	movw %D, (%A)

	leaw $0, %A
	movw %A, %D
	notw %D

	movw %S, %A
	movw %D, (%A)

	leaw $R3, %A
	movw (%A), %D

	decw %D

	movw %D, (%A)

	leaw $WHILEE, %A

	jmp
	nop

ENDD:
