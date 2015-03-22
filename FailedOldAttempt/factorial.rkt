#lang scheme
;recursive 递归的实现
(define (n! n) 
   (if (= n 1) 1 (* n (n! (- n 1)))))

;iterative迭代的实现
(define (factorial n)
  (factorial-iter 1 1 n))

(define (factorial-iter currentResult counter n)
  (if (> counter n) currentResult
      (factorial-iter (* currentResult counter) (+ counter 1) n)))