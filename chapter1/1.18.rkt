#lang racket
(define (x a b)
  (x-iter a b 0))

(define (x-iter a b acc)
  (cond ((= b 0) acc)
        ((even? b) (x-iter (* a 2) (/ b 2) acc))
        (else (x-iter a (- b 1) (+ acc a)))
        ))
