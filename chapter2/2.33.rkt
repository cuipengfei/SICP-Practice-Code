#lang racket
(define (map p sequence)
  (foldl (lambda (x r) (cons r (p x))) '() sequence))

(define (append seq1 seq2)
  (foldl cons seq1 seq2))

(define (length sequence)
  (foldl (lambda (x y) (+ y 1)) 0 sequence))