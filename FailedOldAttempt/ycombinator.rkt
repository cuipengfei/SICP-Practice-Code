#lang racket
(define (Y le)
  ((lambda (f) 
     (f f))
   (lambda (f) 
     (le (lambda(x) ((f f) x))))))

(define length 
  (Y (lambda (len)
       (lambda (l)
         (cond ((null? l) 0)
               (else (+ 
                      1 
                      (len (cdr l)))))))))