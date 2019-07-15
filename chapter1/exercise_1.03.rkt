#lang sicp
; Exercise 1.3
(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (sum-larg a b c)
  (cond((and (>= a c) (>= b c)) (sum-of-squares a b))
       ((and (>= a b) (>= c b)) (sum-of-squares a c))
       ((and (>= b a) (>= c a)) (sum-of-squares b c))))

(sum-larg 2 3 4)