#lang sicp


(define (compose f g)
  (lambda (a) (f (g a))))

(define (square a) (* a a))

(define (dec n) (- n 1))

(define (repeated f n)
         (if (= n 1)
                 f
                 (compose f (repeated f (dec n)))))

(define (average a b)
	(/ (+ a b) 2)
)

(define (average-damp f)
  (lambda (x) (average x (f x))))

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

; Fixed-Point-Transform procedure extracted from the book
(define (fixed-point-of-transform g transform guess)
  (fixed-point (transform g) guess))

(define (cube x) (* x x x))

;In order to get the fourth root to work we have to double average it, so we use the repeated procedure
(define (fourth-root x)
  (fixed-point-of-transform (lambda (y) (/ x (cube y)))
                            (repeated average-damp 2)
                            1.0))

;If we apply the same logic to the consequent roots we notice that when we reachthe 8th root, the double average damp is insufficent, and we have to triple it.
(define (eigth-root x)
  (fixed-point-of-transform (lambda (y) (/ x (expt y 7)))
                            (repeated average-damp 3)
                            1.0))

;If we continue, we infer that the dampening needs to be applyied (log2 n) times for the nth root.
;floor x -> Returns the largest integer not larger than x.
(define (nth-root x n)
  (define (log2 n) (/ (log n) (log 2)))
  (fixed-point-of-transform (lambda (y) (/ x (expt y (- n 1))))
                            (repeated average-damp (floor (log2 n)))
                            1.0))
