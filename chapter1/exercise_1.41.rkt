#lang sicp

(define (double g)
  (lambda (a) (g (g a))))

(define (inc n) (+ n 1))

((double inc) 3)

(((double (double double)) inc) 5) ;21
