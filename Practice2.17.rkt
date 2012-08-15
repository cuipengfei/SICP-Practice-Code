#lang racket
(define (lastPair l)
  (define (lastPairImpl l prevElement)
    (if (null? l) (cons prevElement null)
        (lastPairImpl (cdr l) (car l))))
  (lastPairImpl l (car l)))

(lastPair (list 1 3 5 7 9))

(define (reverse l)
  (if (null? l) null
  (append (reverse (cdr l)) (list(car l)))))

(reverse (list 1 2 3))