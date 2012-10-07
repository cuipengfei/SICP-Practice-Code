#lang racket
(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n guess)
  (cond ((> (* guess guess) n) n)
        ((= (remainder n guess) 0) guess)
        (else (find-divisor n (+ 1 guess)))))

(smallest-divisor 199)

(smallest-divisor 1999)

(smallest-divisor 19999)