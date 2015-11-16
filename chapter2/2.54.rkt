#lang racket
(define (equal? x y)
  (cond ((not (and (null? x) (null? y)))
         (and (eq? (car x) (car y)) (equal? (cdr x) (cdr y))))
        (else #t)       
        ))