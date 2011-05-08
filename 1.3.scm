(define (sum-squares-max a b c)
  (cond ((and (> a b) (> b c)) (sum-squares a b))
        ((and (> b a) (> c b)) (sum-squares b c))
        (else (sum-squares a c))))

(define (sum-squares a b)
  (+ (square a)
     (square b)))

(define (square x)
  (* x x))

(sum-squares-max 5 3 4)