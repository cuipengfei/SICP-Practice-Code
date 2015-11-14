#lang racket
(define (same-parity . numbers)
  (filter numbers (lambda (x)(= (remainder x 2) (remainder (car numbers) 2)))))

(define (filter lst predicate)
  (if (null? lst) 
      lst 
      (if (predicate (car lst))
          (append (list (car lst)) (filter (cdr lst) predicate))
          (filter (cdr lst) predicate))))

(same-parity 1 2 3 4 5 6 7)
(same-parity 2 3 4 5 6 7)
