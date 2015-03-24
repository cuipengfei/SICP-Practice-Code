#lang racket
; rec
(define (expt x n)
  (cond ((= n 0) 1)
        ((= (remainder n 2) 0) (sqr (expt x (/ n 2))))
        (else (* x (expt x (- n 1))))))

;iter
(define (expt2 x n)
  (expt-iter x n 1))

(define (expt-iter x n acc)
  (cond ((= n 0) acc)
        ((= (remainder n 2) 0) (expt-iter (sqr x) (/ n 2) acc))
        (else (expt-iter x (- n 1) (* x acc)))))