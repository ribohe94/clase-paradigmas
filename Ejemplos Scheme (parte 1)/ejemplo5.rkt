#lang racket

(define G '(6 5 1 4 2 8 0))

(define f2
  (lambda (L)
    (if (null? L) L
        (cons (* 2 (car L))
              (f2 (cdr L))))))

; ---------------------------------------

(define d (lambda (x) (* 2 x)))

(define f2b
  (lambda (L)
    (if (null? L) L
        (cons (d (car L))
              (f2b (cdr L))))))

(define f2c
  (lambda (d L)
    (if (null? L) L
        (cons (d (car L))
              (f2c d (cdr L))))))

G
(f2 G)
(f2b G)
(f2c d G)
(f2c (lambda (x) (* 3 x)) G)
(map (lambda (x) (* 3 x)) G)