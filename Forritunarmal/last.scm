;; Notkun: (last x)
;; Fyrir: x=(x1 x2 ... xN) er listi, ekki tómur.
;; Gildi: xN, þ.e. aftasta gildi x.

(define (last x)
  (if (null? (cdr x))
      (car x)
      (last (cdr x))
  )
)

