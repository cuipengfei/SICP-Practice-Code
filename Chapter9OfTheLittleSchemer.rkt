#lang racket

(define (eternity x)
  (eternity x))

(define test ((lambda (length)
   (lambda (l)
     (cond
       ((null? l) 0)
       (else (+ 1 (length (cdr l)))))))
 eternity))

;(test '())

(((lambda (mk-length)
   (mk-length mk-length))
 (lambda (length)
   (lambda (l)
     (cond
       ((null? l) 0)
       (else (+ 1 ((length length) (cdr l)))))))) '(1 2 3 4 5))