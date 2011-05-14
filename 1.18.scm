; handy

(define (pp annotation str)
  (display annotation)
  (display " ")
  (display str)
  true)

; main program

(define (double x)
  (+ x x))

(define (halve x)
  (/ x 2))


(define (* x y)
   (define (iter a x y)
     (cond ((= y 0) a)
           ((even? y) (iter a (double x) (halve y 2)))
           (else (iter (+ a x) x (- y 1)))))
   (iter 0 x y))



(* 3 5)
(* 3 4)

(* 12 12)