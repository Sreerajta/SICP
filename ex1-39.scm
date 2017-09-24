(define (tan-cf x k)

  (define (cont-frac x n-proc d-proc k)
    (define (iter i result)
      (let ((n (n-proc x i))
            (d (d-proc i)))
        (if (= i 1)
          (/ n (- d result))
          (iter (- i 1) (/ n (- d result))))))
    (iter k 1))

  (define n-proc
    (lambda (x i) (exp x i)))

  (define d-proc
    (lambda (i) (- (* 2 i) 1)))

  (cont-frac x n-proc d-proc k))
