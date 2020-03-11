#lang racket
(define (fib n)
  (define (fib-iter x y index)
    (if (= index 0)
        x
        (fib-iter y (+ x y) (- index 1))))
    (fib-iter 0 1 n))


(define (count-change amount)
  (cc amount 5))

(define (amount-map key)
  (cond ((= key 1) 1)
        ((= key 2) 5)
        ((= key 3) 10)
        ((= key 4) 25)
        ((= key 5) 50)))

(define (cc amount key)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (= key 0)) 0)
        (else (+ (cc amount
                     (- key 1))
                 (cc (- amount (amount-map key))
                     key)))))
(count-change 100)