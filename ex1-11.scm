;recursive
(define (f n)
  (cond ((< n 3) n)
        (else (+
                 (f (- n 1))
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3)))))))

;iterative:



(define (f n)
  (cond ((< n 3) n)
        (else (f-2 0 1 2 (- n 2)))))

(define (f-2 a b c count)
  (if (= count 0)
      c
      (f-iter b c (+ c (* 2 b) (* 3 a)) (- count 1))))



