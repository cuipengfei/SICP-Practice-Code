#lang racket
(require (planet schematics/schemeunit:3:4) "Accumulate.rkt")

(define (length sequence)
  (accumulate 
   (lambda (item rest) (+ 1 rest)) 
   0 
   sequence))