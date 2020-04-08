#lang racket
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3))))))

(f 3)
(f 4)
(f 5)

(define (g n)
  (define (g-iter a b c i)
    (if (= i n)
        c
        (g-iter (+ a (* 2 b) (* 3 c))
                a
                b
                (+ i 1))))
  (g-iter 2 1 0 0))
    
(g 3)
(g 4)
(g 5)