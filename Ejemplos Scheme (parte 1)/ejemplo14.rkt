#lang racket

(define fact
  (lambda (n)
    (cond ((zero? n) 1)
          (else
           (* n (fact (- n 1))))
          )))

(define fact2
  (lambda (n)
    (f n 1)))

(define f
  (lambda (n r)
    (cond ((zero? n) r)
          (else
           (f (- n 1) (* n r)))
          )))

; --------------

(fact  10)
(fact2 10)
(fact  50)
(fact2 50)