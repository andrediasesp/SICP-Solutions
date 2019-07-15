#lang sicp

(define (filtered-accumulate combiner filter null-value term a next b)
  (if (> a b)
      null-value
      (if (filter a)
      (combiner (term a) (filtered-accumulate combiner filter null-value term (next a) next b))
      (combiner null-value (filtered-accumulate combiner filter null-value term (next a) next b)))))


(define (product term a next b)
  (filtered-accumulate * 1 term a next b))

; a)
(define (smallest-divisor n)
  (find-divisor n 2))

(define (sum-of-prime-squares a b)
  (- (filtered-accumulate + prime? 0 square a inc b) 1))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
              (else (find-divisor n (+ test-divisor 1)))
              )
  )

(define (divides? a b)
  (= (remainder b a) 0)
  )

(define (prime? n)
  (= n (smallest-divisor n))
  )

(define (square a)
  (* a a)
  )

;b)
(define (is-rel-prime? m n)
  (= (gcd m n) 1))

(define (product-gcd n)
 (define (filter-prime m)
   (is-rel-prime? m n))
 (filtered-accumulate * filter-prime 1 identity 1 inc n))

 (define (gcd a b)
   (if (= b 0)
       a
       (gcd b (remainder a b))))


;test
(define (inc x) (+ x 1))

(sum-of-prime-squares 1 5)
(product-gcd 10)
