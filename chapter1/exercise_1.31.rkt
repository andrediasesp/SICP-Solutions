#lang sicp
;a)
(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))
;test
(define (identity x) x)
(define (inc n) (+ n 1))
(define (multiply-integers a b)
  (product identity a inc b))

(multiply-integers 1 5)

;factorial
(define (factorial n)
  (product identity 1 inc n))
(factorial 14)

; pi
(define (pi-approx n)
  (define (pi-term n)
    (if (even? n)
        (/ (+ n 2) (+ n 1))
        (/ (+ n 1) (+ n 2))))
  (* 4 (product pi-term 1 inc n)))

(pi-approx 100)

;b)

(define (product-rec term a next b)
  (define (iter-prod a result)
  (if (> a b)
      result
      (iter-prod (next a) (* (term a) result))))
  (iter-prod a 1))

;test

(define (multiply-integers-rec a b)
  (product-rec identity a inc b))

(multiply-integers-rec 1 5)
