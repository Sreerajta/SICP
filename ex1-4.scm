;a-b or a+b depending on he value of parameter b
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
