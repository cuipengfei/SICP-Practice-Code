#lang racket

(define (f n)
  (if (< n 3) 
      n 
      (fImpl 0 1 2 n)))

(define (fImpl fn-3 fn-2 fn-1 n)
  (if (< n 3)
      fn-1
      (fImpl fn-2 fn-1 (+ fn-1 (* fn-2 2) (* fn-3 3)) (- n 1))))

;这种迭代的实现 当n达到十万的时候 才出现不太明显的block