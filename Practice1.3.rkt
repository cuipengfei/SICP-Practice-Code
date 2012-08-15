#lang racket
(define (SumOfFirstTwo a b c)
  (if (> a b) 
      (+ a 
         (if (> b c) b c))
      (+ b 
         (if (> a c)a c))))

(SumOfFirstTwo 1 2 3)

(SumOfFirstTwo 3 2 1)

(SumOfFirstTwo 2 3 1)