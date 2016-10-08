#lang racket

(define L '(a b c d e f g))
(define G '(6 5 1 4 2 8 0))
(define M '((5 3)(8 4)))

; a -> (caar M)
; b -> (cadar M)
; c -> (caadr M)
; d -> (cadadr M)

(define det
  (lambda (M)
    (- (* (caar M) (cadadr M))
       (* (cadar M) (caadr M)))))

(define misma
  (lambda (L)
    (cons (car L)
          (cdr L)
          )))

(define f1
  (lambda (L)
    (cons (* 2 (car L))
          (cdr L)
          )))
