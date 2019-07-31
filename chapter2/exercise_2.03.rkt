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
  (let ((upper-left-corner (car rect));
        (lower-right-corner (cdr rect)))
    (- (x-point lower-right-corner)
       (x-point upper-left-corner))))

(define (height rect)
  (let ((upper-left-corner (car rect))
        (lower-right-corner (cdr rect)))
    (- (y-point upper-left-corner)
       (y-point lower-right-corner))))


(define (rect-area rect)
    (* (width rect) (height rect)))

(define (perimeter-rect rect)
  (+ (* 2 (width rect)) (* 2 (height rect))))


; We can implement this as we've seen, with two rectangle ends, choosing the lowest left corner and the top right corner or simply the top left corner and the lowest right corner.
; Another way is to choose the lowest left corner in the plane and specify the rectangle width and height. With that we can infer all the corners we need to get the area and the perimeter.

(define (rect-alt lower-left width height)
  (cons lower-left (cons width height)))

(define (width-alt rect-alt)
  (cdr (car rect-alt)))

(define (height-alt rect-alt)
  (cdr (cdr rect-alt)))

(define test-rect
  (rect-alt (make-point 10 20) 20 30))

(define (rect-area-alt rect)
    (* (width-alt rect) (height-alt rect)))

(define (perimeter-rect-alt rect)
  (+ (* 2 (width-alt rect)) (* 2 (height-alt rect))))


;; Testing
(define rect-a (rect (make-point 0 4) (make-point 6 0)))
(rect-area rect-a)
(perimeter-rect rect-a)


(rect-area-alt test-rect)
(perimeter-rect-alt test-rect)
