#lang racket

(define (even? num)
  (equal? 0 (remainder num 2)))

(define (square num)
  (* num num))

(define (power number degree)
  (power-iter number degree 1))

(define (power-iter number degree acc)
  (if (equal? degree 0) 
      acc
      (power-iter number (- degree 1) (* acc number))))

(define (fast-power number degree) 
  (cond ((equal? degree 0) 1)
        ((even? degree) (square (fast-power number (/ degree 2))))
        (else (* number (fast-power number (- degree 1)))))) 

(define (double-iter num count)
    (if (= count 0)
        num
        (double-iter (+ num 1) (- count 1))))

(define (double num)
  (double-iter num num))

(define (half-iter num acc)
  (if (= acc (/ num 2))
      acc
      (half-iter num (- acc 1))))

(define (half num)
  (half-iter num num))
