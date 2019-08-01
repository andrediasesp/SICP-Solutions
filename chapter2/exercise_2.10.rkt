#lang sicp
(define (div-interval x y)
  (mul-interval
   x
   (make-interval (/ 1.0 (check-zero(upper-bound y)))
                  (/ 1.0 (check-zero(lower-bound y))))))

(define (check-zero x)
  (if (= x 0)
      (error "Cannot Divide by zero")
      x))
