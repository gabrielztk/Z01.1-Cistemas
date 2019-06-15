; Inicialização para VM
leaw $Main.main, %A
jmp
nop
; 1 - PUSH constant 0
leaw $0,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 2 - POP local 0
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
; 3 - PUSH argument 1
leaw $ARG,%A
movw (%A),%A
incw %A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 4 - POP local 1
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
; Label (marcador)
LOOP:
; 5 - PUSH constant 0
leaw $0,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 6 - PUSH local 1
leaw $LCL,%A
movw (%A),%A
incw %A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 7 - EQ
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
; 8 - Goto Condicional
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
; 9 - PUSH local 0
leaw $LCL,%A
movw (%A),%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 10 - PUSH argument 0
leaw $ARG,%A
movw (%A),%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 11 - ADD
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
; 12 - POP local 0
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
; 13 - PUSH local 1
leaw $LCL,%A
movw (%A),%A
incw %A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 14 - PUSH constant 1
leaw $1,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 15 - SUB
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
; 16 - POP local 1
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
; 17 - Goto Incondicional
leaw $LOOP,%A
jmp
nop
; Label (marcador)
END:
; 18 - PUSH local 0
leaw $LCL,%A
movw (%A),%A
movw (%A),%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 21 - PUSH constant 7
leaw $7,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 22 - PUSH constant 2
leaw $2,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 23 - ADD
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
; 24 - PUSH constant 3
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
END:
; 26 - Goto Incondicional
leaw $END,%A
jmp
nop
; End
