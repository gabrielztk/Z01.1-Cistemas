; 0 - OR
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
orw %D,%S,(%A)
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
; End
