#lang racket

(define (make-accumulator acc) (lambda (m) (set! acc (+ acc m)) acc))

(define A (make-accumulator 5))

(A 5)

(A 5)

;acc是一个可变的内部状态