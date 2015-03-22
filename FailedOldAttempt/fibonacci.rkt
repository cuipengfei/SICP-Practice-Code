#lang racket
;recursive

(define (fibonacci n)
  (cond ((= n 1) 1)
        ((= n 0) 0)
        (else (+ (fibonacci (- n 1)) (fibonacci (- n 2))))))

;iterative

(define (fib n)
  (fibImpl 1 0 n))

(define (fibImpl last secondLast n)
  (if (= n 0) secondLast
      (fibImpl (+ last secondLast) last (- n 1))))