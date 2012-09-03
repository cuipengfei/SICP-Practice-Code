#lang racket
(require (planet schematics/schemeunit:3:4) "Accumulate.rkt")

(define (append seq1 seq2)
  (accumulate 
   (lambda (item rest) (cons item rest)) 
   seq2 
   seq1))