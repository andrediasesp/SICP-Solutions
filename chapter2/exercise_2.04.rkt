#lang sicp
(define (cons x y)
  (lambda (m) (m x y)))

(define (car z)
  (z (lambda (p q) p)))

(define test (cons 2 4))

;; specific test
(car test)
(car (cons 2 4))
(car (lambda (m) (m 2 4)))
((lambda (m) (m 2 4)) (lambda (p q) p))
((lambda (p q) p) 2 4)
; evaluates to 2 because car retrieves p

;; general
;(car (cons x y))
;(car (lambda (m) (m x y)))
;((lambda (m) (m x y)) (lambda (p q) p))
;((lambda (p q) p) x y)
; evaluates to x

;cdr we just switch to retrieve q rather than p
(define (cdr z)
  (z (lambda (p q) q)))

(cdr test)
