#lang racket
(define (fast-expt base n)
  (fast-expt-iter base n 1))

(define (fast-expt-iter base counter a)
  (cond ((= counter 0) a)
        ((odd? counter) (fast-expt-iter base (- counter 1) (* base a)))
        ((even? counter) (fast-expt-iter (* base base) (/ counter 2) a))))