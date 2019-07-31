#lang sicp
;Exercise 2.5: Show that we can represent pairs of non-negative integers using only numbers and arithmetic operations if we represent the pair a and b as the integer that is
;the product 2^a * 3^b. Give the corresponding definitions of the procedures cons, car, and cdr.


(define (cons-alter a b)
  (* (expt 2 a)
     (expt 3 b)))


; car is simply the number of times our number can be divided by 2
; cdr is simply the number of times our number can be divided by 3

;e.g pair  (2 2) = (2^2 * 3^2) = 2*2*3*3 = 36)
; 36/2 = 18 -> 18/2 -> 9 -> 9 is not divisible by 2 -> so a = 2
; 36/3 = 3 = 12 -> 12/3 = 4 -> 4 is not divisible by 2 -> so b = 2


(define (divides? a b)
  (= (remainder a b) 0))

(define (car y)
  (define (car-iter y count)
    (if (divides? y 2)
        (car-iter (/ y 2) (+ count 1))
        count))
    (car-iter y 0))


(define (cdr y)
  (define (cdr-iter y count)
    (if (divides? y 3)
        (cdr-iter (/ y 3) (+ count 1))
        count))
    (cdr-iter y 0))

;; Testing
(define test-pair (cons-alter 5 8))
(display test-pair) (newline)
(car test-pair)
(cdr test-pair)
