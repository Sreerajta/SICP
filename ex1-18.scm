
(define (expt b n)
  (fast-expt b n 1))

(define (fast-expt b n product)
    (cond ((= n 0) product)
          ((even? n) (fast-expt (square b) (/ n 2) product))
          (else (fast-expt b (- n 1) (* product b)))))



(define (mult a b)
  (fast-mult a b 0 0))

(define (fast-mult a b product counter)
  (cond ((= a 0) product)
        ((= (remainder a 2) 1) (fast-mult (div a 2) b (+ product (* (expt 2 counter) b)) (+ counter 1)))
        (else (fast-mult (div a 2) b product (+ counter 1)))))

(display (mult 120 13))