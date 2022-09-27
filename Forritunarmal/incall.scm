;; Notkun: ((incall y) x)
;; Fyrir: y er tala, x=(x1 x2 ... xN)
;; er listi talna.
;; Gildi: Talnalistinn (x1+y x2+y ... xN+y).
(define (incall y)
  ;; Notkun : (go x)
  ;; Fyrir:  x=(x1 x2 ... xN)er listi talna.
  ;; Gildi:Talnalistinn (x1+y x2+y ... xN+y) þar sem y fæst úr incall fallinu. 
  (define (go x)
    (if (null? (cdr x))
        (list (+ y (car x)))
    (cons
     (+ y (car x))
        (go (cdr x)))))
  go)