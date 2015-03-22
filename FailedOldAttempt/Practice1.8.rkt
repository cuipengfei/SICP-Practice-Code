#lang racket
(define (cubeRoot number)
  (cubeRoot-iter number 1))

(define (cubeRoot-iter number guess)
  (if (< (abs (- number (* guess guess guess))) 0.1) guess
      (cubeRoot-iter number (betterGuess number guess))))

(define (betterGuess number guess)
  (/(+ (/ number (* guess guess)) (* guess 2)) 3))