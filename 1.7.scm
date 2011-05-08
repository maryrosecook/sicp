(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (define new-guess (improve guess x))
  (define percent-change
    (/ (abs (- new-guess guess))
        guess))

  (< percent-change
     0.000001))

(define (square x)
  (* x x))


(define a-number 2)
(define rooted-number (sqrt a-number))
(define resquared-root (square rooted-number))

(pp "rooted: " rooted-number)
(pp "resquared: " resquared-root)
(pp "percentage difference: " (/ a-number resquared-root))


; handy functions

(define (pp annotation str)
  (and (display annotation)
       (display str)
       (display "\n")))