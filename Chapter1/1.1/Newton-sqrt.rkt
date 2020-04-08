#lang racket

(define (square x)
  (* x x))

(define (sqrt x)
  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess)
    (/ (+ guess (/ x guess)) 2))
  (sqrt-iter 1.0))

(sqrt 2)