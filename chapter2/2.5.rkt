#lang racket
(define (cons a b)
  (* (expt 2 a) (expt 3 b)))

(define (car p)
  (if
   (= 0 (remainder p 2))
   (+ 1 (car (/ p 2)))
   0))

(define (cdr p)
  (if
   (= 0 (remainder p 3))
   (+ 1 (cdr (/ p 3)))
   0))