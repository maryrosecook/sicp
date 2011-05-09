; recursive
(+ 4 5)
(inc (+
      (dec 4)
      5))
(inc (inc (+
           (dec 3)
           5)))
(inc (inc (inc (+
                (dec 2)
                5))))
(inc (inc (inc (inc (+
                     (dec 1)
                     5)))))
(inc (inc (inc (inc  5))))
(inc (inc (inc 6)))
(inc (inc 7))
(inc 8)
9


; iterative
(+ 4 5)
(+ (dec 4) (inc 5))
(+ (dec 3) (inc 6))
(+ (dec 2) (inc 7))
(+ (dec 1) (inc 8))
(+ (dec 0) (inc 9))
9