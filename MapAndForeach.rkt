#lang scheme
(define (map sequence operation)
  (if (null? sequence) '()
      (cons (operation (car sequence)) (map (cdr sequence) operation))))

(map (list 1 2 3 4 5) sqr)

(map (list 1 2 3 4 5) (lambda (x) (* x x x)))

(define (foreach sequence operation)
  (cond ((null? sequence) #t)
        (else (operation (car sequence))
              (foreach (cdr sequence) operation))))

(foreach (list 1 2 3 4 5) display)

(foreach (list 1 2 3 4 5) (lambda (x) (newline) (display (sqr x))))