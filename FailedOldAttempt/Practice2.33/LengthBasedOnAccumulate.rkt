#lang racket
(require "Accumulate.rkt")

(define (length sequence)
  (accumulate 
   (lambda (item rest) (+ 1 rest)) 
   0 
   sequence))