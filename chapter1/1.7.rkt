#lang racket
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (/ (abs (- (sqr guess) x)) x) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))



(define (cube-root-iter guess x)
  (if (good-enough-cube? guess x)
      guess
      (cube-root-iter (improve-cube guess x) x)))

(define (good-enough-cube? guess x)
  (< (abs (- x (* guess guess guess))) 0.001))

(define (improve-cube y x)
  (/ (+ (/ x (* y y)) (* 2 y)) 3))

(define (cube-root x)
  (cube-root-iter 1.0 x))
