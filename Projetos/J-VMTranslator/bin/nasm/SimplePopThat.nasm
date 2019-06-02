; 0 - POP that 0
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
leaw $THAT,%A
movw (%A),%A
movw %D, (%A)
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
; 1 - POP that 1
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
leaw $THAT,%A
movw (%A),%A
incw %A
movw %D, (%A)
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
; 2 - POP that 2
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
leaw $THAT,%A
movw (%A),%A
incw %A
incw %A
movw %D, (%A)
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
; End
