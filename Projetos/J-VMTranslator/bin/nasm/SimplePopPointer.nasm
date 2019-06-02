; 0 - POP pointer 0
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
; 1 - POP pointer 1
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
; End
