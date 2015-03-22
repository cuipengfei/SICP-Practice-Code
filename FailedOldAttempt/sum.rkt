#lang racket
(define (sum start end operation lastResult)
  (if (> start end) lastResult
      (sum (+ 1 start) end operation (+ lastResult (operation start)))))

(define (sumInt start end)
  (sum start end self 0))

(define (self n)
  n)

(sumInt 1 10)

(sum 1 3 sqr 0)