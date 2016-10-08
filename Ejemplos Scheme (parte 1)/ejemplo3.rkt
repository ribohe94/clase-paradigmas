#lang racket

(quote (8 9 1 4))
'(8 9 1 4)

; (eval '(+ 8 9 1 4))

(apply + '(8 9 1 4))
(apply * '(8 9 1 4))
(apply
 (lambda (w x y z) (- (* w y) (* x z)))
 '(8 9 1 4))