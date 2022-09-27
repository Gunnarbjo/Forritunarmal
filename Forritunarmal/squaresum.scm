;; Notkun: (squaresum x)
;; Fyrir: x=(x1 x2 ... xN) er listi talna, getur verið tómur
;; Gildi: Talan x1*x1+x2*x2+...+xN*xN.
(define (squaresum x)
  ;; Notkun: (go a x)
  ;; Fyrir  a= Uppsaöfnuð summa fyrri ítrana.
  ;;        x= (x1 x2 x3 ....xN)
  ;; Gildi: Talan x1*x1+x2*x2+...+xN*xN
  (define (go a x)
    (if (null? x)
        a
        (go (+ a
               (* (car x)
                  (car x)))
            (cdr x))))
  (go 0 x))