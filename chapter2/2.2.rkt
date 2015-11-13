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

;(print-point (mid-point (make-segment (make-point 1 2) (make-point 3 4))))

; 2.3

(define (make-rect upperLeft lowerRight)
  (make-segment upperLeft lowerRight))
;矩形用对角线表示

(define (area rect)
  (* (height rect) (width rect)))

(define (perimeter rect)
  (* 2 (+ (height rect) (width rect))))

(define (height rect)
  (- (point-y (seg-start rect)) (point-y (seg-end rect))))

(define (width rect)
  (- (point-x (seg-end rect)) (point-x (seg-start rect))))

;(area (make-rect (make-point 10 10) (make-point 20 0)))
;面积
;(perimeter (make-rect (make-point 10 10) (make-point 20 0)))
;周长