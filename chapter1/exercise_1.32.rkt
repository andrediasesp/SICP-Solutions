#lang sicp
;a)
(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a) (accumulate combiner null-value term (next a) next b))))

(define (sum term a next b)
  (accumulate + 0 term a next b))

(define (product term a next b)
  (accumulate * 1 term a next b))

;test
(define (identity x) x)
(define (inc x) (+ x 1))

(define (sum a b)
  (accumulate + 0 identity a inc b))


(define (sum-integers a b)
  (sum a b))

(sum-integers 1 10)

;b)
(define (accumulate combiner null-value term a next b)
  (define (acc-iter a result)
  (if (> a b)
      result
      (acc-iter (next a) (combiner (term a) result))))
(acc-iter a null-value))
