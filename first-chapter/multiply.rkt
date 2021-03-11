#lang racket

(define (* a b)
  (if (equal? b 0)
      0
      (+ a (* a (- b 1)))))
