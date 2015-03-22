#lang racket
; point constructor
(define (make-point x y) (cons x y))

; point selectors
(define (x-point p) (car p))
(define (y-point p) (cdr p))

; segment constructor
(define (make-segment start end) (cons start end))

; segment selectors
(define (start-segment s) (car s))
(define (end-segment s) (cdr s))

(define (midpoint-segment s)
    (make-point (/ (+ (x-point (start-segment s))
                     (x-point (end-segment s)))
                  2)
               (/ (+ (y-point (start-segment s))
                    (y-point (end-segment s)))
                  2)))

(define (print-point p)
   (newline)
   (display "(")
   (display (x-point p))
   (display ",")
   (display (y-point p))
   (display ")"))

;test
(define a (make-point -1 2))
(define b (make-point 3 -6))
(define s (make-segment a b))
(define m (midpoint-segment s))
(print-point m)

(define a1 (make-point 6.4 3))
(define b1 (make-point -10.7 4))
(define s1 (make-segment a1 b1))
(define m1 (midpoint-segment s1))
(print-point m1)

; rectangle constructor
; join two opposite corners
(define (make-rect a b) (cons a b))

; rectangle selectors
(define (rect-width r)
   (abs (- (x-point (car r)) (x-point (cdr r)))))

(define (rect-height r)
   (abs (- (y-point (car r)) (y-point (cdr r)))))

(define (rect-perimeter r)
   (* 2 (+ (rect-width r) (rect-height r))))

(define (rect-area r)
   (* (rect-width r) (rect-height r)))

(define a2 (make-point 0 0))
(define b2 (make-point 2 10))
(define r (make-rect a2 b2))
(newline)
(rect-perimeter r)
(rect-area r)