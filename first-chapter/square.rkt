#lang racket

; square of number
(define (square n)
  (* n n))

; returns absolute value of number
(define (abs n)
  (if (> n 0)
      n
      (- n)))

; check if difference between square of guess and target is lt 0.001
(define (good-enough? guess x)
  (<
    (abs(- (square guess) x))
    0.001))

; average of two numbers
(define (average a b)
  (/ (+ a b) 2))

; iteration improvement of guess number
(define (improve guess x)
        (average guess (/ x guess)))

; recursively improve guess unless it is good-enough
(define (sqrt-iter guess x)
        (if (good-enough? guess x)
            guess
            (sqrt-iter (improve guess x)
                       x)))

; wrap sqrt-iter
(define (sqrt x)
  (sqrt-iter 1.0 x))
