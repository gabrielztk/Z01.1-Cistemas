movw (%A), %D
leaw $1, %A
movw (%A), %S
leaw $2, %A
addw %D, %S, (%A)