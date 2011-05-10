; recursive

(define (f-recursive n)
  (if (< n 3)
      n
      (+ (f-recursive (- n 1))
         (* 2
            (f-recursive (- n 2)))
         (* 3
            (f-recursive (- n 3))))))

; handy

(define (pp annotation str)
  (display annotation)
  (display " ")
  (display str)
  (display "\n")
  true)