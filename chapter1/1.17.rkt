#lang racket
(define (x a b)
  (cond ((= b 1) a)
        ((= b 0) 0)
        ((even? b) (* 2 (x a (/ b 2))))
        (else (+ a (x a (- b 1))))
        ))