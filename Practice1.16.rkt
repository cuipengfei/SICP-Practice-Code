#lang racket
;迭代实现，反复求平方
(define (fast-expt base n)
  (fast-expt-iter base n 1))

(define (fast-expt-iter base counter a)
  (cond ((= counter 0) a)
        ((odd? counter) (fast-expt-iter base (- counter 1) (* base a)))
        ((even? counter) (fast-expt-iter (* base base) (/ counter 2) a))))

;递归实现
(define (slow-expt base n)
  (if (= n 0) 1
      (* base (slow-expt base (- n 1)))))