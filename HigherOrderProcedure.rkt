#lang racket

;高阶函数，以一个函数作为另一个函数的参数。

(define (sum start end operation lastResult)
  (if (> start end) lastResult
      (sum (+ 1 start) end operation (+ lastResult (operation start)))))

(define (sumInt start end)
  (sum start end self 0))

(define (self n)
  n)

(sumInt 1 10)

(sum 1 3 sqr 0)

(define (cube x)
  (* x x x))

(sum 1 3 cube 0)

(sum 1 3 (lambda (x) (* x x x)) 0)

(sum 1 100 (lambda (x) x) 0)

(sum 1 3 (lambda (x) (* x x)) 0)