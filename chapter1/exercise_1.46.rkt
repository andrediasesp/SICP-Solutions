#lang sicp

(define (iterative-improve good-enough? improve)
  (lambda (guess)
    (if (good-enough? guess)
        guess
        ((iterative-improve good-enough? improve) (improve guess)))))

(define (square a) (* a a))

(define (sqrt x)
  (define tolerance 0.001)
  ((iterative-improve (lambda (guess)
                        (< (abs (- (square guess) x)) tolerance))
                      (lambda (guess)
                        (/ (+ guess
                              (/ x guess))
                           2))) x))

(sqrt 4)

(define (fixed-point f first-guess)
  (define tolerance 0.00001)
  ((iterative-improve (lambda (guess)
                        (let ((next (f guess)))
                          (< (abs (- guess next)) tolerance)))
                      f) first-guess))


(fixed-point cos 1.0)
