; 0 - PUSH constant 0
leaw $0,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 1 - POP temp 0
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
leaw $R5,%A
movw %D, (%A)
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
; 2 - PUSH constant 1
leaw $1,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 3 - POP temp 1
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
LOOP_START:
; 4 - PUSH temp 0
leaw $R5,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 5 - PUSH constant 10
leaw $10,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 6 - EQ
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S,%D,%D
leaw $SIM,%A
je %D
nop
leaw $0,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
decw %A
decw %A
movw %D,(%A)
leaw $END, %A
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
; 7 - Goto Condicional
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
leaw $65535,%A
subw %A,%D,%D
leaw $SP,%A
movw (%A),%S
decw %S
movw %S,(%A)
leaw $END,%A
je %D
nop
; 8 - PUSH temp 0
leaw $R5,%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 9 - PUSH constant 1
leaw $1,%A
movw %A,%D
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
; 11 - POP temp 0
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
leaw $R5,%A
movw %D, (%A)
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
; 12 - PUSH temp 1
leaw $R5,%A
incw %A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 13 - PUSH temp 1
leaw $R5,%A
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
; 15 - POP temp 1
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
; 16 - Goto Incondicional
leaw $LOOP_START,%A
jmp
nop
; Label (marcador)
END:
; End
