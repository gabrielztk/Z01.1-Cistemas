; Arquivo: LCDnomeGrupo.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Escreva no LCD o nome do grupo

;Letra 1

;linha inteira em S
leaw $0, %A
movw %A, %S
notw %S
;linha com um pixel em D
leaw $1, %A
movw %A, %D


;Linha 0
leaw $17385, %A
movw %S, (%A)

;Linha 1
leaw $17405, %A
movw %D, (%A)

;Linha 2
leaw $17425, %A
movw %D, (%A)

;Linha 3
leaw $17445, %A
movw %D, (%A)

;Linha 4
leaw $17465, %A
movw %D, (%A)

;Linha 5
leaw $17485, %A
movw %D, (%A)

;Linha 6
leaw $17505, %A
movw %D, (%A)

;Linha 7
leaw $17525, %A
movw %D, (%A)

;Linha 8
leaw $17545, %A
movw %D, (%A)

;Linha 9
leaw $17565, %A
movw %D, (%A)

;Linha 10
leaw $17585, %A
movw %D, (%A)

;Linha 11
leaw $17605, %A
movw %D, (%A)

;Linha 12
leaw $17625, %A
movw %D, (%A)

;Linha 13
leaw $17645, %A
movw %D, (%A)

;Linha 14
leaw $17665, %A
movw %D, (%A)

;Linha 15
leaw $17685, %A
movw %S, (%A)


;Letra 2

;linha com dois pixels em D
leaw $256, %A
movw %A, %D


;Linha 0
leaw $17387, %A
movw %D, (%A)

;Linha 1
leaw $17407, %A
movw %D, (%A)

;Linha 2
leaw $17427, %A
movw %D, (%A)

;Linha 3
leaw $17447, %A
movw %D, (%A)

;Linha 4
leaw $17467, %A
movw %D, (%A)

;Linha 5
leaw $17487, %A
movw %D, (%A)

;Linha 6
leaw $17507, %A
movw %D, (%A)

;Linha 7
leaw $17527, %A
movw %D, (%A)

;Linha 8
leaw $17547, %A
movw %D, (%A)

;Linha 9
leaw $17567, %A
movw %D, (%A)

;Linha 10
leaw $17587, %A
movw %D, (%A)

;Linha 11
leaw $17607, %A
movw %D, (%A)

;Linha 12
leaw $17627, %A
movw %D, (%A)

;Linha 13
leaw $17647, %A
movw %D, (%A)

;Linha 14
leaw $17667, %A
movw %D, (%A)

;Linha 15
leaw $17687, %A
movw %D, (%A)



;Letra 3

;linha inteira em S
leaw $0, %A
movw %A, %S
notw %S

;linha com um pixel em D
leaw $1, %A
movw %A, %D

;Linha 0
leaw $17389, %A
movw %S, (%A)

;Linha 1
leaw $17409, %A
movw %D, (%A)

;Linha 2
leaw $17429, %A
movw %D, (%A)

;Linha 3
leaw $17449, %A
movw %D, (%A)

;Linha 4
leaw $17469, %A
movw %D, (%A)

;Linha 5
leaw $17489, %A
movw %D, (%A)

;Linha 6
leaw $17509, %A
movw %D, (%A)

;Linha 7
leaw $17529, %A
movw %S, (%A)

;linha com um pixel em D
leaw $32768, %A
movw %A, %D

;Linha 8
leaw $17549, %A
movw %D, (%A)

;Linha 9
leaw $17569, %A
movw %D, (%A)

;Linha 10
leaw $17589, %A
movw %D, (%A)

;Linha 11
leaw $17609, %A
movw %D, (%A)

;Linha 12
leaw $17629, %A
movw %D, (%A)

;Linha 13
leaw $17649, %A
movw %D, (%A)

;Linha 14
leaw $17669, %A
movw %D, (%A)

;Linha 15
leaw $17689, %A
movw %S, (%A)


;Letra 4

;linha inteira em S
leaw $0, %A
movw %A, %S
notw %S

;linha com dois pixels em D
leaw $256, %A
movw %A, %D

;Linha 0
leaw $17391, %A
movw %S, (%A)

;Linha 1
leaw $17411, %A
movw %D, (%A)

;Linha 2
leaw $17431, %A
movw %D, (%A)

;Linha 3
leaw $17451, %A
movw %D, (%A)

;Linha 4
leaw $17471, %A
movw %D, (%A)

;Linha 5
leaw $17491, %A
movw %D, (%A)

;Linha 6
leaw $17511, %A
movw %D, (%A)

;Linha 7
leaw $17531, %A
movw %D, (%A)

;Linha 8
leaw $17551, %A
movw %D, (%A)

;Linha 9
leaw $17571, %A
movw %D, (%A)

;Linha 10
leaw $17591, %A
movw %D, (%A)

;Linha 11
leaw $17611, %A
movw %D, (%A)

;Linha 12
leaw $17631, %A
movw %D, (%A)

;Linha 13
leaw $17651, %A
movw %D, (%A)

;Linha 14
leaw $17671, %A
movw %D, (%A)

;Linha 15
leaw $17691, %A
movw %D, (%A)


;Letra 5

;linha inteira em S
leaw $0, %A
movw %A, %S
notw %S

;linha com um pixel em D
leaw $1, %A
movw %A, %D

;Linha 0
leaw $17393, %A
movw %S, (%A)

;Linha 1
leaw $17413, %A
movw %D, (%A)

;Linha 2
leaw $17433, %A
movw %D, (%A)

;Linha 3
leaw $17453, %A
movw %D, (%A)

;Linha 4
leaw $17473, %A
movw %D, (%A)

;Linha 5
leaw $17493, %A
movw %D, (%A)

;Linha 6
leaw $17513, %A
movw %D, (%A)

;Linha 7
leaw $17533, %A
movw %S, (%A)

;Linha 8
leaw $17553, %A
movw %D, (%A)

;Linha 9
leaw $17573, %A
movw %D, (%A)

;Linha 10
leaw $17593, %A
movw %D, (%A)

;Linha 11
leaw $17613, %A
movw %D, (%A)

;Linha 12
leaw $17633, %A
movw %D, (%A)

;Linha 13
leaw $17653, %A
movw %D, (%A)

;Linha 14
leaw $17673, %A
movw %D, (%A)

;Linha 15
leaw $17693, %A
movw %S, (%A)


;Letra 6

;linha inteira em S
leaw $0, %A
movw %A, %S
notw %S

;linha com 3 pixels em D
leaw $33025, %A
movw %A, %D

;Linha 0
leaw $17395, %A
movw %S, (%A)

;Linha 1
leaw $17415, %A
movw %D, (%A)

;Linha 2
leaw $17435, %A
movw %D, (%A)

;Linha 3
leaw $17455, %A
movw %D, (%A)

;Linha 4
leaw $17475, %A
movw %D, (%A)

;Linha 5
leaw $17495, %A
movw %D, (%A)

;Linha 6
leaw $17515, %A
movw %D, (%A)

;Linha 7
leaw $17535, %A
movw %D, (%A)

;Linha 8
leaw $17555, %A
movw %D, (%A)

;Linha 9
leaw $17575, %A
movw %D, (%A)

;linha com 2 pixels em D
leaw $32769, %A
movw %A, %D

;Linha 10
leaw $17595, %A
movw %D, (%A)

;Linha 11
leaw $17615, %A
movw %D, (%A)

;Linha 12
leaw $17635, %A
movw %D, (%A)

;Linha 13
leaw $17655, %A
movw %D, (%A)

;Linha 14
leaw $17675, %A
movw %D, (%A)

;Linha 15
leaw $17695, %A
movw %D, (%A)


;Letra 7

;linha inteira em S
leaw $0, %A
movw %A, %S
notw %S

;linha com 2 pixels em D
leaw $32769, %A
movw %A, %D

;Linha 0
leaw $17397, %A
movw %S, (%A)

;Linha 1
leaw $17417, %A
movw %D, (%A)

;Linha 2
leaw $17437, %A
movw %D, (%A)

;Linha 3
leaw $17457, %A
movw %D, (%A)

;Linha 4
leaw $17477, %A
movw %D, (%A)

;Linha 5
leaw $17497, %A
movw %D, (%A)

;Linha 6
leaw $17517, %A
movw %D, (%A)

;Linha 7
leaw $17537, %A
movw %S, (%A)

;Linha 8
leaw $17557, %A
movw %D, (%A)

;Linha 9
leaw $17577, %A
movw %D, (%A)

;Linha 10
leaw $17597, %A
movw %D, (%A)

;Linha 11
leaw $17617, %A
movw %D, (%A)

;Linha 12
leaw $17637, %A
movw %D, (%A)

;Linha 13
leaw $17657, %A
movw %D, (%A)

;Linha 14
leaw $17677, %A
movw %D, (%A)

;Linha 15
leaw $17697, %A
movw %D, (%A)


;Letra 8

;linha inteira em S
leaw $0, %A
movw %A, %S
notw %S

;linha com 1 pixels em D
leaw $1, %A
movw %A, %D

;Linha 0
leaw $17399, %A
movw %S, (%A)

;Linha 1
leaw $17419, %A
movw %D, (%A)

;Linha 2
leaw $17439, %A
movw %D, (%A)

;Linha 3
leaw $17459, %A
movw %D, (%A)

;Linha 4
leaw $17479, %A
movw %D, (%A)

;Linha 5
leaw $17499, %A
movw %D, (%A)

;Linha 6
leaw $17519, %A
movw %D, (%A)

;Linha 7
leaw $17539, %A
movw %S, (%A)

;linha com um pixel em D
leaw $32768, %A
movw %A, %D

;Linha 8
leaw $17559, %A
movw %D, (%A)

;Linha 9
leaw $17579, %A
movw %D, (%A)

;Linha 10
leaw $17599, %A
movw %D, (%A)

;Linha 11
leaw $17619, %A
movw %D, (%A)

;Linha 12
leaw $17639, %A
movw %D, (%A)

;Linha 13
leaw $17659, %A
movw %D, (%A)

;Linha 14
leaw $17679, %A
movw %D, (%A)

;Linha 15
leaw $17699, %A
movw %S, (%A)