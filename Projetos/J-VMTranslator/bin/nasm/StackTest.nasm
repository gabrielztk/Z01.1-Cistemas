; 0 - PUSH constant 17
leaw $17,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 1 - PUSH constant 17
leaw $17,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 2 - EQ
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
; 3 - PUSH constant 17
leaw $17,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 4 - PUSH constant 16
leaw $16,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 5 - EQ
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
; 6 - PUSH constant 16
leaw $16,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 7 - PUSH constant 17
leaw $17,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 8 - EQ
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
; 9 - PUSH constant 892
leaw $892,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 10 - PUSH constant 891
leaw $891,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 11 - LT
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S,%D,%D
leaw $SIM,%A
jl %D
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
; 12 - PUSH constant 891
leaw $891,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 13 - PUSH constant 892
leaw $892,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 14 - LT
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S,%D,%D
leaw $SIM,%A
jl %D
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
; 15 - PUSH constant 891
leaw $891,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 16 - PUSH constant 891
leaw $891,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 17 - LT
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
subw %S,%D,%D
leaw $SIM,%A
jl %D
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
; 18 - PUSH constant 32767
leaw $32767,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 19 - PUSH constant 32766
leaw $32766,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 20 - GT
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
; 21 - PUSH constant 32766
leaw $32766,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 22 - PUSH constant 32767
leaw $32767,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 23 - GT
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
; 24 - PUSH constant 32766
leaw $32766,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 25 - PUSH constant 32766
leaw $32766,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 26 - GT
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
; 27 - PUSH constant 57
leaw $57,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 28 - PUSH constant 31
leaw $31,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 29 - PUSH constant 53
leaw $53,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 30 - ADD
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
; 31 - PUSH constant 112
leaw $112,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 32 - SUB
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
; 33 - NEG
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
negw %D
movw %D,(%A)
; 34 - AND
leaw $SP,%A
movw (%A),%A
decw %A
movw (%A),%D
decw %A
movw (%A),%S
andw %D,%S,(%A)
leaw $SP,%A
movw (%A),%D
decw %D
movw %D,(%A)
; 35 - PUSH constant 82
leaw $82,%A
movw %A,%D
leaw $SP,%A
movw (%A),%A
movw %D,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D,(%A)
; 36 - OR
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
; 37 - NOT
; End
