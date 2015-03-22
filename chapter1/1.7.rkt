#lang racket
(define (sqrt-iter guess x)
  (if (good-enough? (* guess guess) x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;1.8

(define (cube-root-iter guess x)
  (if (good-enough? (* guess guess guess) x)
      guess
      (cube-root-iter (improve-cube guess x) x)))

(define (improve-cube y x)
  (/ (+ (/ x (* y y)) (* 2 y)) 3))

(define (cube-root x)
  (cube-root-iter 1.0 x))

;common
(define (good-enough? guessed x)
  (< (/ (abs (- guessed x)) x) 0.001))
