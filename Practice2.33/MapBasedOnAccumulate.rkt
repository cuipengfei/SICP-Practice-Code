#lang racket
(require (planet schematics/schemeunit:3:4) "Accumulate.rkt")

(define (map mapOperation sequence)
  (accumulate 
   (lambda (item rest) (cons (mapOperation item) rest)) 
   '() 
   sequence))