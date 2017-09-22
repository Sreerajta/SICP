(define (fntr row col)
  (if (or (= col 1) (= col row))
      1
      (+ 
        (fntr (- row 1) (- col 1))
        (fntr (- row 1) col))))


(fntr  5  4)