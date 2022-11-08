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
(define (transpose-list z)
    ;; Notkun: (getf x)
    ;; Fyrir :
    ;; Gildi : 
    (define (getf x)
        (if (null? x)
            empty
            (cons (car (car x)) (getf(cdr x)))
        )
    )
    ;; Notkun: (getr y)
    ;; Fyrir :
    ;; Gildi : 
    (define (getr y)
        (if (null? y)
            empty
            (cons (cdr (car y)) (getr (cdr y)))
        )
    )
    (if (null? (car z))
        empty
        (cons (getf z) (transpose-list (getr z)))
    )
)
(transpose-list '((1 2 3) (4 5 6) (7 8 9)))
(transpose-list '((9 8 7) (6 5 4) (3 2 1)))
(transpose-list '((9 8) (6 5)))
(transpose-list '(()))