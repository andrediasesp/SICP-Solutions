; I needed some help to solve this exercise. Here's the solution that i constructed
; after some research
#lang sicp
;Possible Interval Combination
;[+,+] - [+,+]
;[+,+] - [-,+]
;[-,+] - [-,+] -> As Both can be Negative, their multiplication could result in a number higher than the multiplication of the two upper bounds.
;[-,+] - [+,+]
;[+,+] - [-,-]
;[-,-] - [+,+]
;[-,-] - [-,+]
;[-,+] - [-,-]
;[-,-] - [-,-]

(define (make-interval a b) (cons a b))
(define (lower-bound x) (car x))
(define (upper-bound x) (cdr x))

(define (positive? x)
  (or (> x 0) (zero? x)))

(define (negative? x)
  (or (< x 0) (zero? x)))

(define (sign-interval x)
  (cond ((positive? (lower-bound x)) 1)
        ((negative? (upper-bound x)) -1)
        (else 0)))


(define (mul-interval x y)
  (let ((x1 (lower-bound x))
        (x2 (upper-bound x))
        (y1 (lower-bound y))
        (y2 (upper-bound y))
        (sx (sign-interval x))
        (sy (sign-interval y)))
     (cond ((and (= sx 1) (= sy 1))
            (make-interval (* x1 y1) (* x2 y2)))
           ((and (= sx -1) (= sy -1))
           (make-interval (* x2 y2) (* x1 y1)))
           ((and (= sx 1) (= sy -1))
            (make-interval (* x1 y2) (* x2 y1)))
           ((and (= sx -1) (= sy 1))
            (make-interval (* y1 x2) (* y2 x1)))
           ((and (= sx 0) (= sy 1))
            (make-interval (* x1 y2) (* x2 y2)))
           ((and (= sx 1) (= sy 0))
            (make-interval (* y1 x2) (* y2 x2)))
           ((and (= sx 0) (= sy -1))
            (make-interval (* x2 y1) (* x1 y1)))
           ((and (= sx -1) (= sy 0))
            (make-interval (* y2 x1) (* y1 x1))))))


(mul-interval (make-interval 1 2) (make-interval 3 4))
(mul-interval (make-interval -1 -2) (make-interval -3 -4))
(mul-interval (make-interval -1 -2) (make-interval 3 4))
(mul-interval (make-interval -1 -2) (make-interval -3 4))
(mul-interval (make-interval -1 0) (make-interval -3 -4))
