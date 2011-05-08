(define (cube-root x)
  (cube-root-iter 1.0 x))

(define (cube-root-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-root-iter (improve guess x) x)))

(define (improve guess x)
  (/ (+ (/ x
           (square guess))
        (* 2 guess))
     3))

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

(define (cube x)
  (* x x x))



(define a-number 2)
(define cube-rooted-number (cube-root a-number))
(define recubed-root (cube cube-rooted-number))

(pp "cube-rooted: " cube-rooted-number)
(pp "re-cubed: " recubed-root)
(pp "percentage difference: " (/ a-number recubed-root))



; handy functions

(define (pp annotation str)
  (and (display annotation)
       (display str)
       (display "\n")))