#lang racket
(define (f n)
  (if (< n 3) n
      (+
       (f (- n 1)) 
       (* 2 (f (- n 2))) 
       (* 3 (f (- n 3))))))

;这种递归的实现 当n为30多的时候 就出现了明显的block cpu的某个核长期处于100%