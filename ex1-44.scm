(define (repeated f n)
  (lambda (x)
    (define (iter i result)
      (if (= i n)
        result
        (iter (inc i) (f result))))
    (iter 1 (f x))))