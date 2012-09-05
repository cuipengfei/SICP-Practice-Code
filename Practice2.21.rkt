#lang racket
(require "MapAndForeach.rkt")

(define (square-list seq)
  (map seq (lambda (x) (* x x))))