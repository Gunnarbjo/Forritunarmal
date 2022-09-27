;; Notkun: (sum1 n)
;; Fyrir: n er heiltala, n>=0
;; Gildi: Summan 0+1+...+n
(define (sum1 n)
  ;Notkun: (go sum cnt)
  ;Fyrir : Leggur saman cnt og sum upp í n
  ;Gildi : Summan 0+1+...+n
  (define (go sum cnt)
    (if(> cnt n)
       sum
       (go (+ sum
              cnt)
           (+ cnt
              1))))
  (go 0 0))