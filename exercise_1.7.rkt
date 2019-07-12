#lang sicp
; Exercise 1.7
; Square Root implementation 
(define (sqrt-iter guess x)
  (if (is-good-enough? x guess)
      guess
      (sqrt-iter (improve guess x) x)))


(define (abs x)
  (if (> x 0)
      x
      (- x)))


(define (is-good-enough? x guess)
  ;(< (abs(-  (square guess) x )) 0.001))
   (< (abs (- (improve guess x) guess ))
      (abs (* guess 0.001))))

(define(sqrt x)
  (sqrt-iter 1.0 x))

(define (improve guess x)
  (/(+ guess (/ x guess))2))

(define (previous-guess x guess)
  (-(guess (sqrt( (- (square guess) x))))))


; For very small numbers, the square root implementation is not the best because the tolerance is too high for those kind of numbers, that is, the computation may finish earlier than expected,
; giving bad approximations of the square root for numbers << 0.001. For very large numbers, the computation may never finish because of the limited precision of the system which we are running
; the procedure. This leads to an infinite loop of the same improve guess, because the system can't go over the floating point precision that it's limited to.
; This new way of calculating the best guess will work better on smaller and larger numbers because we're not having a fixed value of precision as measure, but instead we look on how
; the value of guess changes in each iteration. If the guess value doesn't change that much, a fraction of 1/1000 (0.001) from an iteration onto another, then we can assume that
; it's a close approximation value for the square root.