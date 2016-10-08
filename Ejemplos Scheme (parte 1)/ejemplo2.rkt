#lang racket

(+ 7 9)
((lambda (x) (+ x 9)) 7)
((lambda (x y) (+ x y)) 7 9)
((lambda (y) ((lambda (x) (+ x y)) 7)) 9)

(define f1 (lambda (x y) (+ x y)))
(f1 7 9)

(define (f2 x y) (+ x y))
(f2 7 9)
