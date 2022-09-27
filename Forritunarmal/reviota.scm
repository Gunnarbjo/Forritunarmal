; Notkun: (reviota n)
; Fyrir : n er heiltala
; Gildi : Listi  af tölum frá n...1
(define (reviota n)
  ; Norkun: (append list cnt)
  ; Fyrir : List er listi af tölum frá n...1, cnt telur upp frá 1 upp í n 
  ; Gildi : Listi  af tölum frá n...1
  (define (append list cnt)
    (if (> cnt n)
        list
        (append (cons cnt list) (+ cnt 1))))
  (append '() 1))
    