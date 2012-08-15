#lang racket
(define (mycons x y)
  (lambda (m) (m x y)))

(define (mycar p)
  (p (lambda (a b) a)))

(define (mycdr p)
  (p (lambda (a b) b)))

(define x (mycons 1 2))

(mycar x)

(mycdr x)

(define myList (cons 1 (cons 2 (cons 3 (cons 4 null)))))

(define myList2 (list 1 2 3 4))

(cadr myList)
(cadddr myList)
(cddddr myList)