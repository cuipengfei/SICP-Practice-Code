#lang racket

(define (make-rat n d)
  (letrec ([g (gcd n d)]
           [ng (/ n g)]
           [dg (/ d g)])
    (if (< d 0) 
        (cons (- ng) (- dg))
        (cons ng dg))))