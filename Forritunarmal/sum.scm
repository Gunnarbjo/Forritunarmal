;; Notkun: (sum x)
;; Fyrir: x=(x1 x2 ... xN) er listi talna.
;; Gildi: Talan x1+x2+...+xN.
(define (sum x)
    (if(null? x) 0 (+ (car x) (sum (cdr x)))))