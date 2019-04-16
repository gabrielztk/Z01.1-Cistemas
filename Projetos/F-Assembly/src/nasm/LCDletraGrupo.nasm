; Arquivo: LCDletraGrupo.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Escreva no LCD a letra do grupo de vocês
;  - Valide no hardawre
;  - Bata uma foto!


; parte de cima ==============

leaw $0, %A
movw %A, %S
notw %S

leaw $18815, %A
movw %S, (%A)
incw %A
movw %S, (%A)
incw %A
movw %S, (%A)
incw %A
movw %S, (%A)

leaw $18835, %A
movw %S, (%A)
incw %A
movw %S, (%A)
incw %A
movw %S, (%A)
incw %A
movw %S, (%A)

;lado 1 ======================

leaw $18855, %A
movw %S, (%A)
leaw $18875, %A
movw %S, (%A)
leaw $18895, %A
movw %S, (%A)
leaw $18915, %A
movw %S, (%A)
leaw $18935, %A
movw %S, (%A)
leaw $18955, %A
movw %S, (%A)

leaw $18975, %A
movw %S, (%A)
leaw $18995, %A
movw %S, (%A)
leaw $19015, %A
movw %S, (%A)
leaw $19035, %A
movw %S, (%A)
leaw $19055, %A
movw %S, (%A)
leaw $19075, %A
movw %S, (%A)

leaw $19095, %A
movw %S, (%A)
leaw $19115, %A
movw %S, (%A)
leaw $19135, %A
movw %S, (%A)
leaw $19155, %A
movw %S, (%A)
leaw $19175, %A
movw %S, (%A)
leaw $19195, %A
movw %S, (%A)

leaw $19215, %A
movw %S, (%A)
leaw $19235, %A
movw %S, (%A)
leaw $19255, %A
movw %S, (%A)
leaw $19275, %A
movw %S, (%A)
leaw $19295, %A
movw %S, (%A)
leaw $19315, %A
movw %S, (%A)

;parte de baixo ========================

leaw $19335, %A
movw %S, (%A)
incw %A
movw %S, (%A)
incw %A
movw %S, (%A)
incw %A
movw %S, (%A)

leaw $19355, %A
movw %S, (%A)
incw %A
movw %S, (%A)
incw %A
movw %S, (%A)
incw %A
movw %S, (%A)