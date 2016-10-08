#lang racket

(define det
  (lambda (M)
    (- (* (caar M) (cadadr M))
       (* (cadar M) (caadr M)))
    ))

(det '((5 3)(8 1)))