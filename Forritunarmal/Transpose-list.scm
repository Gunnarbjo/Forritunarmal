#!/usr/racket/bin/racket
#lang racket

;; Notkun: (transpose-list z)
;; Fyrir: z er listi jafnlangra lista,
;; z=((x11 x12 ... x1N)
;; (x21 x22 ... x2N)
;; (x31 x32 ... x3N)
;; .
;; .
;; .
;; (xM1 xM2 ... xMN)
;; )
;; Gildi: Listinn sem er byltingin
;; (transpose) af z, þ.e.
;; ((x11 x21 ... xM1)
;; (x12 x22 ... xM2)
;; (x13 x23 ... xM3)
;; .
;; .
;; .
;; (x1N x2N ... xMN)
(define (Transpose-list z)
    (if (empty? (car z)) empty
        (if (null? z) empty
            (cons (map car z) (Transpose-list (map cdr z)))
        )
    )
)

(Transpose-list '((1 2 3) (4 5 6) (7 8 9)))
(Transpose-list '((9 8 7) (6 5 4) (3 2 1)))
(Transpose-list '((66 55) (99 32)))
(Transpose-list '(()))
(Transpose-list '(()()()))