#lang racket

(define (APlusAbsB a b)
  ((if (> b 0) + -) a b))

(APlusAbsB 4 -3)

(APlusAbsB 4 3)

