#lang scheme

(define (sqrt x)

  (define (sqrtImp guess)
  (if (IsGoodEnough guess) guess
  (sqrtImp (improve guess))))
  
  (define (IsGoodEnough guess)
  (< (abs (- x (sqr guess))) 0.001))    
      
  (define (improve guess)
  (avg guess (/ x guess)))

  (define (avg a b)
  (/ (+ a b) 2))
  
  (sqrtImp 1))

(sqrt 9)

(sqrt 16)

(sqrt 25)

(sqrt 36)

(sqrt 49)

(sqrt 64)