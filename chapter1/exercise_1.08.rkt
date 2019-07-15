#lang sicp
; Exercise 1.8 - Cube Root implementation
; In this exercise we have both good-enough procedures: The one from the text and the one presented in exercise 1.7 to get through the small and large numbers issue.
(define (cubrt-iter guess x)
  (if (good-enough-cube? x guess)
      guess
      (cubrt-iter (improve-cube guess x) x)))


;(define (good-enough-cube? x guess)
;   (< (abs (- (improve guess x) guess ))
;      (abs (* guess 0.001))))

(define (cube x)
  (* x x x))

(define(cubrt x)
  (cubrt-iter 1.0 x))

(define (good-enough-cube? x guess)
  (< (abs (- (cube guess) x))
     0.001))

(define (improve-cube guess x)
  (/ (+
      (/ x (square guess))
      (* 2 guess))
     3))