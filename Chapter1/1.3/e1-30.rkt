#lang racket
;; 1.30
(define (sum-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ (term a) result))))
  (iter a 0))

(define (s-pi-sum-2 a b)
  (define (term a)
    (/ 1.0 (* a (+ a 2))))
  (define (next a)
    (+ a 4))
  (sum-iter term a next b))
(s-pi-sum-2 1 10)