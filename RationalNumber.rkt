#lang racket

(define (makeRat a b) (cons a b))

(define (printRat x)
  (newline)
  (display (car x))
  (display "/")
  (display (cdr x)))

(printRat (makeRat 1 3))