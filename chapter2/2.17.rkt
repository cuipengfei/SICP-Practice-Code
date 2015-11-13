#lang racket
(define (last seq)
  (if (= 1 (length seq))
      (car seq)
      (last (cdr seq))))

;2.18
(define (reverse seq)
  (if (null? seq)
      seq
      (append (reverse (cdr seq)) (list (car seq)))))