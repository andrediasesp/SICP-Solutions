#lang sicp
(define (mult a n)
	(define (mult-iter a n b)
	(cond ((= n 0) b)
          ((even? n) (mult-iter (double a) (halve n) b))
           (else (mult-iter a (- n 1) (+ b a))))
	)
(mult-iter a n 0)
)	

(define (halve n)
	(/ n 2)
)

(define (double n)
	(* n 2)
)


(mult 2 3)
(mult 4 5)
(mult 3 4)
