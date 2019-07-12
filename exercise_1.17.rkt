#lang sicp
; We have that: (a * n) = a+a+a.... n times and we are allowed to use two procedures double() and halve()
; (* 2 4) = double(2) + (* 2 2) = double(2) + double(2)
; (* 2 5) = 2 + (* 2 4) = 2 + double(2) + double(2)

(define (mult a n)
	(cond ((= n 0) 0)
        ((even? n) (mult (double a) (halve n)))
         (else (+ a (mult a (- n 1)))) 
	)

)

(define (halve n)
	(/ n 2)
)

(define (double n)
	(* n 2)
)

(mult 5 4)