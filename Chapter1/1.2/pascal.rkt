#lang racket
(define (pascal row col)
  (cond ((> col row) -1)
        ((or (= col 1) (= col row)) 1)
        (else (+ (pascal (- row 1) (- col 1))
                 (pascal (- row 1) col)))))

(pascal 5 3)

(define (square x)
  (* x x))

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((= 0 (remainder n 2)) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(remainder (fast-expt 4 7) 7)

