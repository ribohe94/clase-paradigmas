#lang racket

(define f
  (lambda (n)
    (if (zero? n) 0 (+ n (f (- n 1))))))

(define fact
  (lambda (n)
    (if (zero? n) 1 (* n (fact (- n 1))))))
  
  
(define g (lambda (x) (* 2 x)))

