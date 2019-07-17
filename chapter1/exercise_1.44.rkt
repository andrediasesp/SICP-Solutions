#lang sicp

(define (smooth f dx)
	(lambda (a) (average (f (- a dx)) (f a) (f (+ a dx))))
)

(define (average a b c)
	(/ (+ a b c) 3)
)

(define dx 0.00001)


(define (compose f g)
  (lambda (a) (f (g a))))

(define (square a) (* a a))

(define (dec n) (- n 1))

(define (repeated f n)
         (if (= n 1)
                 f
                 (compose f (repeated f (dec n)))))

(define (n-fold-smooth n)
  (lambda (f x)
   ((repeated (smooth f dx) n) x)))

((n-fold-smooth 5) square 1)
