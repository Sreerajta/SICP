
(define (accumulate combiner null-value term a next b)
  (if (> a b)
    null-value
    (combiner (term a) (accumulate combiner null-value term (next a) next b))))

(define (sum term a next b)
  (accumulate + 0 term a next b))

(define (product term a next b)
  (accumulate * 1 term a next b))

(define (next x) (+ x 1))

(define (sum-ints a b)
  (sum identity a next b))

(define (fact n)
  (product identity 1 next n))

; Iterative way



(define (acc-iter combiner null-value term a next b)
  (define (iter a result)
    (if (< a b)
      result
      (acc-iter (next a) (combiner (term a) result)))))

(define (sum-iter term a next b)
  (acc-iter + 0 term a next b))

(define (product-iter term a next b)
  (acc-iter * 1 term a next b))

(define (sum-ints-iter a b)
  (sum identity a next b))

(define (fact-iter n)
  (product identity 1 next n))