#lang racket

; (define (factorial n)
;   (if (= n 1)
;       n
;       (* n (factorial (- n 1)))))

(define (fact-iter acc counter max-count)
  (if (> counter max-count)
      acc
      (fact-iter (* acc counter)
                 (+ counter 1)
                 max-count)))

(define (factorial n)
  (fact-iter 1 1 n))

(factorial 5)
