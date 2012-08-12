#lang racket
(define myList (list 1 2 3 4 5))

(define (accessList l n)
  (if (= 0 n) (car l)
      (accessList (cdr l) (- n 1))))

(accessList myList 0)
(accessList myList 1)
(accessList myList 3)
(accessList myList 4)

(define (length l)
  (if (null? l) 0
      (+ 1 (length (cdr l)))))

(length (list 1 2 3 4 5 6 7 8 9 0))

(define (interativeLength l)
  (define (lengthImpl l count)
    (if (null? l) count
        (lengthImpl (cdr l) (+ count 1))))
  (lengthImpl l 0))

(interativeLength (list 1 3 5 7 9))

(append (list 1 2) (list 3 4))