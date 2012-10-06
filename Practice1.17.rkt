#lang racket
(define (x a b)
  (x-iter a b 0))

(define (x-iter a b product)
  (cond ((= b 0) product)
        ((even? b) (x-iter (double a) (halve b) product))
        ((odd? b) (x-iter (double a) (halve (- b 1)) (+ a product)))))

(define (double x)
  (+ x x))

(define (halve x)
  (/ x 2))

;this solves 1.18 as well, accidentally