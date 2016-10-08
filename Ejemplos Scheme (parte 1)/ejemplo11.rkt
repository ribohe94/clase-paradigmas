#lang racket

(define n1
  (lambda (L)
    (if (null? L)
        0
        (+ 1 (n1 (cdr L)))
        )
    ))

(define n2
  (lambda (L)
    (cond ((null? L) 0)
          (else 
           (+ 1 (n2 (cdr L))))
          )
    ))

(define n3
  (lambda (L)
    (cond ((null? L) 0)
          (#t 
           (+ 1 (n3 (cdr L))))
          )
    ))

; ----------------------------------------------

(define L '(5 4 3 8 1 5 3 2 3 6 ))
(n1 L)
(n2 L)
(n3 L)