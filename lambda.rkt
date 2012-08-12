#lang racket
(define (RemoveItems match) 
  (lambda(sequence) 
    (cond ((null? sequence) null)
          ((match (car sequence)) ((RemoveItems match) (cdr sequence)))
          (else (cons (car sequence) ((RemoveItems match) (cdr sequence)))))))

;((RemoveItems (lambda (item) (> item 3))) '(1 2 3 4 5 6 7 8 9))

(define removeItemsGreaterThanThree 
  (RemoveItems (lambda (item) (> item 3))))

;(removeItemsGreaterThanThree '(1 2 3 4 5 6 7 8))

(define removeOddNumbers (RemoveItems (lambda (item) (odd? item))))

;(removeOddNumbers '(1 2 3 4 5 6 7 8 9 10))

(define removeApple (RemoveItems (lambda (item) (eq? item 'apple))))

;(removeApple '(apple banana pear apple pineapple apple))

(provide removeItemsGreaterThanThree removeOddNumbers removeApple)