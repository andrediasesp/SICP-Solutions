#lang sicp

;A number x is called a fixed point of a function f if x satisfies the  equation:
;f(x) = x
;To prove that phi (golden ratio) is a fixed point of the transformation x -> 1 + 1/x:
;x = 1 + 1/x
;x = (x +1)/x
;x^2-x-1 = 0
;Finding the roots of a quadratic equation and ignoring the negative values we find out out that
;phi satisfies the condition above.

(define tolerance 0.00001)
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2))
       tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

; We simply call fixed-point with the function above using lambda
(fixed-point (lambda (x) (+ 1 (/ 1 x))) 1.0)
