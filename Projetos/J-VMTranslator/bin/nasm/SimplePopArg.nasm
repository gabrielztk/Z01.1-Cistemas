; 0 - POP argument 0
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
leaw $ARG,%A
movw (%A),%A
movw %D, (%A)
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
; 1 - POP argument 1
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
leaw $ARG,%A
movw (%A),%A
incw %A
movw %D, (%A)
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
; 2 - POP argument 2
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
leaw $ARG,%A
movw (%A),%A
incw %A
incw %A
movw %D, (%A)
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
; End
