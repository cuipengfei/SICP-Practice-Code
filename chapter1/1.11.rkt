#lang racket

; this one is easy but very slow
(define (f n)
  (if (< n 3) n
        (+ (f (- n 1)) (*(f (- n 2)) 2) (* 3 (f (- n 3))))))