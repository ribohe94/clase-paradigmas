#lang racket

((lambda (x) ((lambda (y) (+ x y)) 5)) 3)
((lambda (x y) (+ x y )) 3 5)

(define f
  (lambda (x y) (+ x y))
  )

(define f2
  (lambda P (+ (car P) (cadr P)))
  )

(define (g x y)
  (+ x y))

(f 3 5)
(f2 3 5)
(g 3 5)
(apply g '(3 5))