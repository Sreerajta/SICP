(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))


(test 0 (p))


;normal order evaluation  will work fine, the value of p is evaluated only when some primitive operation uses p, but in application order evaluation p will be evaluated, and p references to itself , so wont be working properly
