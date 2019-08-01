#lang sicp

(define (par1 r1 r2)
  (div-interval (mul-interval r1 r2)
                (add-interval r1 r2)))

(define (par2 r1 r2)
  (let ((one (make-interval 1 1)))
    (div-interval
     one (add-interval (div-interval one r1)
                       (div-interval one r2)))))

(define (make-interval a b) (cons a b))

(define (lower-bound i) (car i))

(define (upper-bound i) (cdr i))

(define (interval-width i)
  (/ (- (upper-bound i)
        (lower-bound i))
     2))

(define (center i)
  (/ (+ (lower-bound i) (upper-bound i)) 2))

(define (make-center-width c w)
  (make-interval (- c w) (+ c w)))

(define (make-center-percent center percent)
  (let ((width (* center ( / percent 100.0))))
    (make-center-width center width)))

(define (percent i)
  (* (/ (interval-width i) (center i)) 100.0))

(define (add-interval x y)
  (make-interval (+ (lower-bound x) (lower-bound y))
                 (+ (upper-bound x) (upper-bound y))))

(define (mul-interval x y)
  (let ((p1 (* (lower-bound x) (lower-bound y)))
        (p2 (* (lower-bound x) (upper-bound y)))
        (p3 (* (upper-bound x) (lower-bound y)))
        (p4 (* (upper-bound x) (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4))))

(define (div-interval x y)
  (mul-interval x
                (make-interval (/ 1.0 (upper-bound y))
                               (/ 1.0 (lower-bound y)))))

(define (print-center-percent i)
  (newline)
  (display (center i))
  (display " ± ")
  (display (percent i))
  (display "%"))

(define a (make-center-percent 100 1))
(define b (make-center-percent 150 2))
; The percentages are different on both procedures.´, so Lem is right
(print-center-percent a)
(print-center-percent b)
(print-center-percent (par1 a a))
(print-center-percent (par2 a a))
(print-center-percent (par1 a b))
(print-center-percent (par2 a b))
