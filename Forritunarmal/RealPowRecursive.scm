#!/usr/racket/bin/racket
#lang racket
;; Notkun: (RealpowRecursive x y)
;; Fyrir : Tvær tölur x og y ,x er rauntala og y er heiltala, y >= 0
;; Guldi : Rauntölugildi af x^y
(define (RealPowRecursive x y)
    (if (= y 0) 
    1.0 
    (if (= (remainder y 2) 0)  
        (* 1.0 (RealPowRecursive (* 1.0 x x) (quotient y 2)))
        (* 1.0 x (RealPowRecursive (* 1.0 x x) (quotient y 2))))))

(RealPowRecursive (+ 1 (expt 10 -10)) (RealPowRecursive 10 10))
(RealPowRecursive 4 10)
(RealPowRecursive 10 0)
(RealPowRecursive -8 3)
(RealPowRecursive 0.4 9)
