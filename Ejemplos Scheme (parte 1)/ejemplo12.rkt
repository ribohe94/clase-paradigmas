#lang racket

(define m
  (lambda (L)
    (cond
      ; ((null? L) 0) ; Verificación de dominio..
      ((null? (cdr L)) (car L))
      ((> (car L) (m (cdr L))) (car L ))
      (else
       (m (cdr L)))
      )))

; ----------------------------------------------

(define L '(5 4 3 8 1 5 9 7 3 6 ))
(m L)