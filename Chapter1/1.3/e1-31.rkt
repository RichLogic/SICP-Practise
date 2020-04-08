#lang racket
;; 1.31
(define (quarter-pi-multi a b)
  (if (> a b)
      1
      (* (/ (* (- a 1.0) (+ a 1.0)) (* a a)) (quarter-pi-multi (+ a 2) b))))

(quarter-pi-multi 3 7)

(define (multi term a next b)
    (if (> a b)
      1
      (* (term a) (multi term (next a) next b))))

(define (quarter-pi-multi-2 a b)
  (define (term a)
    (/ (* (- a 1.0) (+ a 1.0)) (* a a)))
  (define (next a)
    (+ a 2))
  (multi term a next b))

(quarter-pi-multi-2 3 7)

(define (multi-2 term a next b)
  (define (multi-iter a result)
    (if (> a b)
        result
        (multi-iter (next a) (* result (term a)))))
  (multi-iter a 1))

(define (quarter-pi-multi-3 a b)
    (define (term a)
    (/ (* (- a 1.0) (+ a 1.0)) (* a a)))
  (define (next a)
    (+ a 2))
  (multi-2 term a next b))

(quarter-pi-multi-3 3 7)