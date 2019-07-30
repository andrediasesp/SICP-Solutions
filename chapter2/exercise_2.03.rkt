#lang sicp

#lang sicp
;; ex 2.3

;; Point
(define (make-point x y) (cons x y))
(define (x-point p) (car p))
(define (y-point p) (cdr p))
(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))


; With top left and bottom right we can infer about the width and height of our rectangle
(define (rect top-left bottom-right)
  (cons top-left bottom-right))

(define (width rect)
  (let ((upper-left (car rect));
        (lower-right (cdr rect)))
    (- (x-point lower-right)
       (x-point upper-left))))

(define (height rect)
  (let ((upper-left (car rect))
        (lower-right (cdr rect)))
    (- (y-point upper-left)
       (y-point lower-right))))

(define (rect-area rect)
    (* (width rect) (height rect)))

(define (perimeter-rect rect)
  (+ (* 2 (width rect)) (* 2 (height rect))))



(define rect-a (rect (make-point 0 4) (make-point 6 0)))

(rect-area rect-a)

(perimeter-rect rect-a)
