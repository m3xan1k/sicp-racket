#lang racket

;  common pattern for iteration
;  (define (func-name a b)
;    (if (> a b)
;        0
;        (+ (term a)
;           (func-name (next a) b))))
; 
(define (sum-integers a b)
  (if (> a b)
      0
      (+ a (sum-integers (+ a 1) b))))
