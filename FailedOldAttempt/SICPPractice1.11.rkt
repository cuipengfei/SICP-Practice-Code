#lang racket
;recursive
(define (f n)
  (if (< n 3) n
      (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))

;iterative
;迭代向前一步的时候:f(n-2)被f(n-1)取代,f(n-1)被f(n)取代,将f(n)+2f(n-2)+3f(n-3)做为新的f(n)。迭代是自底向上,初始化的3个变量就是0、1、2,这样就可以相应地写出一个迭代版本的解答
(define (f-iter a b c n)
          (if (= n 2)
              c
              (f-iter b c (+ c (* 2 b) (* 3 a)) (- n 1))))

(define (f-i n) (f-iter 0 1 2 n))