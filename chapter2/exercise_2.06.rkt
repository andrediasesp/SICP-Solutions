#lang sicp

(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

;one
(add-1 zero)
(lambda (f) (lambda (x) (f (((lambda (f) (lambda (x) x)) f) x))))
(lambda (f) (lambda (x) (f ((lambda (x) x) x))))
(lambda (f) (lambda (x) (f x)))

(define one (lambda (f) (lambda (x) (f x))))

;two
(add-1 one)
(lambda (f) (lambda (x) (f (((lambda (f) (lambda (x) (f x))) f) x))))
(lambda (f) (lambda (x) (f (((lambda (x) (f x))) x))))
(lambda (f) (lambda (x) (f (f x))))

(define two (lambda (f) (lambda (x) (f (f x)))))
;three
(add-1 two)
(lambda (f) (lambda (x) (f (((lambda (x) (f (f x))))  x))))
(lambda (f) (lambda (x) (f(f(f x)))))

(define three (lambda (f) (lambda (x) (f(f(f x))))))
;We start to see a pattern here:
;Zero : (lambda (f) (lambda (x) x))
;One  : (lambda (f) (lambda (x) (f x)))
;Two  : (lambda (f) (lambda (x) (f (f x))))
;Three: (lambda (f) (lambda (x) (f(f(f x)))))


(define (add a b)
  (lambda (f)
    (lambda (x)
      ((a f) ((b f) x)))))
