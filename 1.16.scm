; handy

(define (pp annotation str)
  (write-line annotation)
  (write-line str)
  (write-line "")
  true)

; main code

(define (square x)
  (* x x))

(define (even? x)
  (= (remainder x 2) 0))

(define (fast-expt-iter b n)
  (fei b 1 1 n))

; solution from: http://community.schemewiki.org/?sicp-ex-1.16
(define (fast-expt-iter b n)
   (define (iter a b n)
     (cond ((= n 0) a)
           ((even? n) (iter a (square b) (/ n 2)))
           (else (iter (* a b) b (- n 1)))))
   (iter 1 b n))


(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))


; base and exp both power of two
;(pp "iterative" (fast-expt-iter 2 8))
;(pp "recursive" (fast-expt 2 8))

; only base power of two
;(pp "iterative" (fast-expt-iter 2 6))
;(pp "recursive" (fast-expt 2 6))

; neither base nor exp power of two
;(pp "iterative" (fast-expt-iter 23 6))
;(pp "recursive" (fast-expt 23 6))

; odd exp
;(pp "recursive" (fast-expt 3 7))
(pp "iterative" (fast-expt-iter 3 7))

