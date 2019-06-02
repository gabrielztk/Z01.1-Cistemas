; 0 - POP local 0
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
leaw $LCL,%A
movw (%A),%A
movw %D, (%A)
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
; 1 - POP local 1
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
leaw $LCL,%A
movw (%A),%A
incw %A
movw %D, (%A)
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
; 2 - POP local 2
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
leaw $LCL,%A
movw (%A),%A
incw %A
incw %A
movw %D, (%A)
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
; End
