#lang racket

(define n1
  (lambda (L)
    (if (null? L)
        0
        (+ 1 (n1 (cdr L))))
    ))

(define n2
  (lambda (L)
    (cond ((null? L) 0)
          (else
           (+ 1 (n2 (cdr L)))))
    ))

(define n3
  (lambda (L)
    (cond ((null? L) 0)
          (else
           (+ (car L) (n3 (cdr L)))))
    ))

(define m
  (lambda (L)
    (cond
      
      ; ((null? L) #f) ; Suposición sobre el dominio de la función..

      ((null? (cdr L)) (car L))
      ((> (car L) (m (cdr L))) (car L))
      (else
       (m (cdr L))))
    ))

; -------------------------------------

(define L '(5 6 2 3 4 8 1 0 7 3))

(n1 L)
(n2 L)
(n3 L)
(m L)