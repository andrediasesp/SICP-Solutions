#lang sicp

(define (make-interval a b) (cons a b))
(define (lower-bound x) (car x))
(define (upper-bound x) (cdr x))

(define (make-center-width c w)
  (make-interval (- c w) (+ c w)))

(define (center i)
  (/ (+ (lower-bound i) (upper-bound i)) 2))

(define (width i)
  (/ (- (upper-bound i) (lower-bound i)) 2))

(define (make-center-percent c p)
  (make-interval (- c (percent c p)) (+ c (percent c p))))

(define (percent x y)
  (* x (/ y 100)))

(define cp1 (make-center-percent 100 10))
(define cp2 (make-center-percent 50 25))
(define cp3 (make-center-percent 10 50))
(center cp1)
(center cp2)
(lower-bound cp3)
(upper-bound cp3)
(center cp3)
