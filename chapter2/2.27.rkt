#lang racket

(define (deep-reverse x)
  (cond ((null? x) x)
        ((pair? x) (list (deep-reverse (cdr x)) (deep-reverse (car x))))
        (else (list x))
        ))

(define x (list (list 1 2) (list 3 4)))

(deep-reverse x)