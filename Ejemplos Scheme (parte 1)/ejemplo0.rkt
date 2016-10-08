#lang racket

((lambda (x) ((lambda (y) (+ x y)) 5)) 3)
((lambda (y) ((lambda (x) (+ x y)) 3)) 5)
((lambda (x y) (+ x y)) 3 5)

(define f1
  (lambda (x y) (+ x y))
  )

(define (f2 x y)
  (+ x y))

(define f3
  (lambda P (+ (car P) (cadr P)))
  )

(f1 3 5)
(f2 3 5)
(f3 3 5)