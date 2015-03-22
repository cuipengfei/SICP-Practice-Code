#lang racket
(require "Accumulate.rkt")

(define (map mapOperation sequence)
  (accumulate 
   (lambda (item rest) (cons (mapOperation item) rest)) 
   '() 
   sequence))