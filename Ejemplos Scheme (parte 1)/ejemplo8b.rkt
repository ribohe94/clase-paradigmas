#lang racket

(define f1
  (lambda (L)
    (cons (car L) (cdr L))
    ))

(define f2
  (lambda (L)
    (cons (* (car L) (car L))
          (cdr L))
    ))

(define f3
  (lambda (L)
    (if (null? L) L
        (cons (* (car L) (car L))
              (f3 (cdr L)))
        )))

(define cuadrado
  (lambda (x) (* x x)))

(define f4
  (lambda (sq L)
    (if (null? L) L
        (cons (sq (car L))
              (f4 sq (cdr L)))
        )))

; ---------------------------

(define D '(6 3 4 8 1 0 3))
(f1 D)
(f2 D)
(f3 D)
(f4 (lambda (x) (* x x)) D)
(f4 cuadrado D)
(map cuadrado D)