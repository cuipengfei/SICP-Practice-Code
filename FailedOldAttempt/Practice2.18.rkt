#lang racket
(define (reverse seq)
  (if (null? seq) 
      '()
      (append (reverse (cdr seq)) (list (car seq)))))