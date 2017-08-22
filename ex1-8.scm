
(define (square x) (* x x))

(define (improve guess x)
  (/(+(/ x (square guess))(* guess 2))3))

(define (cube-root-iter guess x)
  (if (guesscmp guess (improve guess x))
      guess
      
        (cube-root-iter (improve guess x) x)))

(define (guesscmp guess1 guess2)
  (< (abs (- guess1 guess2)) 0.001))

(define (cube-root x)
  (cube-root-iter 1.0 x))
