; 0 - PUSH constant 3030
leaw $3030,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 1 - POP pointer 0
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
leaw $R3,%A
movw %D, (%A)
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
; 2 - PUSH constant 3040
leaw $3040,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 3 - POP pointer 1
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
leaw $R4,%A
movw %D, (%A)
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
; 4 - PUSH constant 32
leaw $32,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 5 - POP this 2
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
leaw $THIS,%A
movw (%A),%A
incw %A
incw %A
movw %D, (%A)
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
; 6 - PUSH constant 46
leaw $46,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 7 - POP that 6
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
leaw $THAT,%A
movw (%A),%A
incw %A
incw %A
incw %A
incw %A
incw %A
incw %A
movw %D, (%A)
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
; 8 - PUSH pointer 0
leaw $R3,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 9 - PUSH pointer 1
leaw $R4,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 10 - ADD
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
addw %D,%S,(%A)
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
; 11 - PUSH this 2
leaw $THIS,%A
movw (%A),%A
incw %A
incw %A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 12 - SUB
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S,%D,(%A)
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
; 13 - PUSH that 6
leaw $THAT,%A
movw (%A),%A
incw %A
incw %A
incw %A
incw %A
incw %A
incw %A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 14 - ADD
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
addw %D,%S,(%A)
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
; End
