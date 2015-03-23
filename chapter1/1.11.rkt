#lang racket

; this one is easy but very slow
(define (f n)
  (if (< n 3) n
        (+ (f (- n 1)) (*(f (- n 2)) 2) (* 3 (f (- n 3))))))

; this one is harder to write but faster
(define (f2 n)
  (f2-iter 0 1 2 n))

(define (f2-iter prev1 prev2 prev3 n)
  (if (= n 0) prev1
      (f2-iter prev2 prev3 (+ prev3 (* 2 prev2) (* 3 prev1)) (- n 1))))

(= (f 1) (f2 1))
(= (f 5) (f2 5))
(= (f 10) (f2 10))