#lang racket
(define (lastPair l)
  (define (lastPairImpl l prevElement)
    (if (null? l) (cons prevElement null)
        (lastPairImpl (cdr l) (car l))))
  (lastPairImpl l (car l)))