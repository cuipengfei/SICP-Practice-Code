#lang racket
;not tail rec
(define (sum f a next b)
  (if (> a b) 0
      (+ (f a) (sum f (next a) next b))
      ))

(define (sum-int a b)
  (sum (lambda (x) x) a (lambda (x) (+ x 1)) b))

; tail rec
(define (sum-tail f a next b)
  (define (iter n acc)
    (if (> n b) acc
        (iter (next n) (+ acc (f n)))))
  (iter a 0))

(define (sum-int-tail a b)
  (sum-tail (lambda (x) x) a (lambda (x) (+ x 1)) b))