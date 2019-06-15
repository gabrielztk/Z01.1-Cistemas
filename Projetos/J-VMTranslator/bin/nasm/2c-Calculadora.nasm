; Inicialização para VM
leaw $Main.main, %A
jmp
nop
; 1 - PUSH constant 15
leaw $15,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 2 - PUSH constant 5
leaw $5,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 4 - POP temp 1
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
leaw $R5,%A
incw %A
movw %D, (%A)
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
; Label (marcador)
WHILE:
; 5 - Goto Incondicional
leaw $WHILE,%A
jmp
nop
; End
