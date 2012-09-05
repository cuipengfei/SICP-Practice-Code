#lang racket
(define (last-pair seq)
  (if (null? (cdr seq))
      (list (car seq))
      (last-pair (cdr seq))))