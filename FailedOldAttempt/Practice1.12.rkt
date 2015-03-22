#lang racket
(define (YangHuiTriangle row column)
  (if (shouldBeOne row column) 1
      (+ (YangHuiTriangle (- row 1) (- column 1)) 
         (YangHuiTriangle (- row 1) column ))))

(define (shouldBeOne row column)
  (or (= row 1) (= column 1) (= column row)))

(YangHuiTriangle 3 2)