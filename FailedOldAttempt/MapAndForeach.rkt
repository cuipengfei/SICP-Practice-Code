#lang scheme
(define (map sequence operation)
  (if (null? sequence) '()
      (cons (operation (car sequence)) (map (cdr sequence) operation))))

(define (foreach sequence operation)
  (cond ((null? sequence) #t)
        (else (operation (car sequence))
              (foreach (cdr sequence) operation))))

(provide map)