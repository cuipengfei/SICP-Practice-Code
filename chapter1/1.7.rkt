#lang racket
(define (improve guess x)
  (/ (+ guess (/ x guess)) 2))

(define (sqrt x)
  (iter 1.0 x improve sqr))

;1.8

(define (improve-cube y x)
  (/ (+ (/ x (* y y)) (* 2 y)) 3))

(define (cube-root x)
  (iter 1.0 x improve-cube cube))

(define (cube x) (* x x x))

;common
(define (good-enough? guessed x)
  (< (/ (abs (- guessed x)) x) 0.001))

(define (iter guess x improvef approach)
  (if (good-enough? (approach guess) x)
      guess
      (iter (improvef guess x) x improvef approach)))