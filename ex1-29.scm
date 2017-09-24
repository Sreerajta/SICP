(define (simpsons-sum term a next b k n)
  (cond ((> a b ) 0)
        ((or (= k 0) (= k n))
          (+
            (term a)
            (simpsons-sum term (next a) next b (+ k 1) n)))
        ((even? k)
          (+
            (* 2 (term a))
            (simpsons-sum term (next a) next b (+ k 1) n)))
        (else
          (+
            (* 4 (term a))
            (simpsons-sum term (next a) next b (+ k 1) n)))))



(define (integral-1 f a b n)
  (define h (/ (- b a) n))
  (define (next a) (+ a h))
  (* (/ h 3.0) (simpsons-sum f a next b 0 n)))





(define (integral-2 f a b n)
  (define h (/ (- b a) n))
  (define (next x) (+ x (* 2 h)))
  (*
    (/ h 3)
    (+
      (f a)
      (* 4 (sum f (+ a h) next (- b h)))
      (* 2 (sum f (+ a (* h 2)) next (- b (* 2 h))))
      (f b))))

(display (integral-2 cube 0 1 100))
(newline)