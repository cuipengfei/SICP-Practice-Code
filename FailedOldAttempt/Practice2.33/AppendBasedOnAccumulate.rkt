#lang racket
(require "Accumulate.rkt")

(define (append seq1 seq2)
  (accumulate 
   (lambda (item rest) (cons item rest)) 
   seq2 
   seq1))