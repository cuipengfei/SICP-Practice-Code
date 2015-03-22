#lang racket

(define (IsGoodEnough guess x)
  (< (abs (- x (sqr guess))) 0.001))

(define (avg a b)
  (/ (+ a b) 2))

(define (improve guess x)
  (avg guess (/ x guess)))

(define (sqrtImp guess x)
  (if (IsGoodEnough guess x) guess
       (sqrtImp (improve guess x) x)))

(define (sqrt x)
  (sqrtImp 1 x))

(define (MyIf statement thenClause elseClause)
  (cond (statement thenClause)
        (else elseClause)))

(MyIf (IsGoodEnough 1 4) 'x 'd)

(sqrtImp 2 4)

(sqrt 9)

(sqrt 16)

(sqrt 25)

(sqrt 36)

(sqrt 49)

(sqrt 64)