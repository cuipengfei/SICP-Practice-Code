#lang racket
(define (make-point x y)
  (cons x y))

(define (point-x p)
  (car p))

(define (point-y p)
  (cdr p))

(define (print-point p)
  (newline)
  (display "(")
  (display (point-x p))
  (display ".")
  (display (point-y p))
  (display ")")
  )

(define (make-segment start end)
  (cons start end))

(define (seg-start seg)
  (car seg))

(define (seg-end seg)
  (cdr seg))

(define (mid-point seg)
  (make-point (/ (+ (point-x (seg-start seg))
                    (point-x (seg-end seg))) 2)
              (/ (+ (point-y (seg-start seg))
                    (point-y (seg-end seg))) 2)))