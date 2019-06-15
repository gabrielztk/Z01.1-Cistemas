; 0 - PUSH constant 5
leaw $5,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
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
; 2 - PUSH constant 15
leaw $15,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 3 - EQ
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
; 4 - Goto Condicional
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
leaw $IF1,%A
je %D
nop
; Label (marcador)
ELSE1:
; 5 - PUSH constant 3
leaw $3,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; Label (marcador)
IF1:
; 6 - POP temp 0
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
; 7 - PUSH constant 15
leaw $15,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 8 - PUSH constant 9
leaw $9,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 9 - EQ
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
; 10 - Goto Condicional
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
leaw $IF2,%A
je %D
nop
; Label (marcador)
ELSE2:
; 11 - PUSH constant 2
leaw $2,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 12 - POP temp 1
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
IF2:
; End
