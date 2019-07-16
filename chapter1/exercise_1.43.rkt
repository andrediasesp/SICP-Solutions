#lang sicp

(define (compose f g)
  (lambda (a) (f (g a))))

(define (square a) (* a a))

(define (dec n) (- n 1))

(define (repeated f n)
         (if (= n 1)
                 f
                 (compose f (repeated f (dec n)))))


((repeated square 2) 5) 
