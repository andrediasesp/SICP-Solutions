#lang sicp

(define tolerance 0.00001)
(define (close-enough? x y) (< (abs (- x y)) 0.001))
(define (search f neg-point pos-point)
  (let ((midpoint (average neg-point pos-point)))
    (if (close-enough? neg-point pos-point)
        midpoint
        (let ((test-value (f midpoint)))
          (cond ((positive? test-value)
                 (search f neg-point midpoint))
                ((negative? test-value)
                 (search f midpoint pos-point))
                (else midpoint))))))

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

(define (average a b) (/ (+ a b) 2))
(define (square a) (* a a))

(define (average-damp f)
  (lambda (x) (average x (f x))))

(define (cube x) (* x x x))

(define (deriv g)
  (lambda (x) (/ (- (g (+ x dx)) (g x)) dx)))

(define dx 0.00001)

(define (newton-transform g)
  (lambda (x) (- x (/ (g x) ((deriv g) x)))))

(define (newtons-method g guess)
  (fixed-point (newton-transform g) guess))

(define (cubic a b c)
  (lambda (x) (+ (cube x) (* a (square x)) (* b x) c)))

(define (cubic-roots a b c)
  (newtons-method (cubic a b c) 1.0))

(cubic-roots 1 2 3)
(cubic-roots 1 1 1)
