(define (product term a next b)
  (if (> a b)
      1
      (*
        (term a)
        (product term (next a) next b))))

(define (fact n)
  (define (identity x) x)
  (define (next x) (+ x 1))
  (product identity 1 next n))


(define (pi n)
  (define (next x) (+ x 2))
  (* 4.0 (/ (* 2 (product square 4 next (- n 2)) n ) (product square 3 next n))))

(define (product term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (* result (term a)))))
  (iter a 1))