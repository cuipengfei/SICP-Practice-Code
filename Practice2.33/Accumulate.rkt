#lang racket
(define (accumulate accumulateOperation initialValue sequence)
  (if (null? sequence)
      initialValue
      (accumulateOperation 
       (car sequence) 
       (accumulate accumulateOperation initialValue (cdr sequence)))))

(provide accumulate)