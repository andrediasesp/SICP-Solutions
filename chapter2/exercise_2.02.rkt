#lang sicp

(define (make-segment a b)
  (cons a b))

(define (start-segment segment)
 (car segment))

(define (end-segment segment)
  (cdr segment))

(define (print-segment segment)
  (display segment)
  (newline))

(define (make-point x y)
  (cons x y))

(define (x-point point)
  (car point))

(define (y-point point)
  (cdr point))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (average a b)
  (/ (+ a b) 2))

(define (midpoint-segment segment)
  (let ((start (start-segment segment))
        (end (end-segment segment)))
    (make-point (average (x-point start) (x-point end)) (average (y-point start) (y-point end)))
  ))


(define start (make-point 4 6))
(define end   (make-point 10 14))

(define segment-a (make-segment start end))

(print-point (midpoint-segment segment-a))
