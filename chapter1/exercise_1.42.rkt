#lang sicp

(define (compose f g)
  (lambda (a) (f (g a))))

(define (square a) (* a a))

(define (inc n) (+ n 1))

((compose square inc)6)
