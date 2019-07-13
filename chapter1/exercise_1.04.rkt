#lang sicp
; Exercise 1.4
; The procedure takes two formal parameters a and b, and has the objective of returning the sum of a with abs(b) or |b|. 
; To return that sum, firstly we have to know if b is a positive or a negative value. Accordingly to that, the primitive procedure (operator) changes in order to correctly apply the sum.
; e.g: if b < 0 -> return (- a (- b))
;      if b > 0 -> return (+ a b)

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 2 3)
(a-plus-abs-b 2 -5)