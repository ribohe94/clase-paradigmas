#lang racket

(define F
  (lambda (n)
    (cond ((< n 2) n)
          (else
           (+ (F (- n 1)) (F (- n 2))))
          )))