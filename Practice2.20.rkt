#lang racket
(define (sameParity . l)
  (cons (car l) (sameParityImpl (car l) (cdr l))))

(define (sameParityImpl first rest)
  (cond ((null? rest) null)
        ((bothOddOrEven first (car rest)) 
         (cons (car rest) (sameParityImpl first (cdr rest))))
        (else (sameParityImpl first (cdr rest)))))

(define (bothOddOrEven a b)
  (= (remainder a 2) (remainder b 2)))

(sameParity 1 2 3 4 5 6 7 8 9 0)
(sameParity 2 3 4 5 6 7 8 9 0)