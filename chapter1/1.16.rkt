#lang racket
(define (expt x n)
  (cond ((= n 0) 1)
        ((= (remainder n 2) 0) (sqr (expt x (/ n 2))))
        (else (* x (expt x (- n 1))))))