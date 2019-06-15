; 0 - GT
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S,%D,%D
leaw $SIM,%A
jg %D
nop
leaw $0,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
decw %A
decw %A
movw %D,(%A)
leaw $END,%A
jmp
nop
SIM:
leaw $65535,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
decw %A
decw %A
movw %D,(%A)
END:
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
; End
