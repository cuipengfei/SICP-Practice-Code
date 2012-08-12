#lang racket
(require (planet schematics/schemeunit:3:4) "lambda.rkt")
(require (planet schematics/schemeunit:3/text-ui))

;(check-equal? (+ 1 1) 3 "Simple addition")

(define lambda-tests
  (test-suite "Tests for lambda.rkt"
              
              (check-equal? (removeItemsGreaterThanThree '(1 2 3 4 7 25 3 2 1)) '(1 2 3 3 2 1))
              (check-equal? (removeOddNumbers '(1 2 3 4 7 25 3 2 1)) '(2 4 2))
              (check-equal? (removeApple '(apple abc apple qq apple test)) '(abc qq test))
              
              (test-case
               "should remove all odd numbers"
               (let 
                   ((lst (list 2 4 6 9 3 5 7)))
                 (let ((newLst (removeOddNumbers lst)))
                   (check = (length lst) 7)
                   (check = (length newLst) 3)
                   (for-each (lambda (item)
                               (check-pred even? item))
                             newLst))))))

(run-tests lambda-tests)