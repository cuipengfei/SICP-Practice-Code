#lang racket

(define (my-cons x y)
  (define (my-cons-impl n)
    (if (= n 0)
        x
        y))
  my-cons-impl)

(define (my-car x)
  (x 0))

(define (my-cdr x)
  (x 1))

;函数可以作为数据存在