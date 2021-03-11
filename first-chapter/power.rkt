#lang racket

(define (power-iter number degree acc)
  (if (equal? degree 1) 
      acc
      (power-iter number (- degree 1) (* acc number))))

(define (power number degree)
  (power-iter number degree number))
