;; Notkun: ((sum3 i) n)
;; Fyrir: i og n eru heiltölur, i <= n+1
;; Gildi: Summan i+(i+1)+...+n
(define ((sum3 i) n)
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
  (go 0 i))