; ####################################################################
; Rafael Corsi @ 2018
;
; pinta os primeiros 16 pxs do LCD !
; ####################################################################

; carrega x"FF" em S (todos pxs em '1')
  leaw $0, %A
  movw %A, %S
  notw %S


  leaw $19584, %A

  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
  movw %S, (%A)
  incw %A
