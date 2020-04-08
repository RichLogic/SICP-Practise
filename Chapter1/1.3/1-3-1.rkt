#lang racket

;; a 到 b 的各个整数之和
(define (sum-integer a b)
  (if (> a b)
      0
      (+ a (sum-integer (+ a 1) b))))

;; a 到 b 的立方和
(define (sum-cubes a b)
  (if (> a b)
      0
      (+ (cube a) (sum-cubes (+ a 1) b))))

(define (cube a)
  (* a a a))

;; 1/(1*3) + 1/(5*7) + 1/(9*11) + .......
(define (pi-sum a b)
  (if (> a b)
      0
      (+ (/ 1.0 (* a (+ a 2))) (pi-sum (+ a 4) b))))

(pi-sum 1 10)

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (s-sum-integer a b)
  (define (term a) a)
  (define (next a)
    (+ a 1))
  (sum term a next b))

(define (s-sum-cubes a b)
  (define (inc a)
    (+ 1 a))
  (sum cube a inc b))

(define (s-pi-sum a b)
  (define (term a)
    (/ 1.0 (* a (+ a 2))))
  (define (next a)
    (+ a 4))
  (sum term a next b))
(s-pi-sum 1 10)