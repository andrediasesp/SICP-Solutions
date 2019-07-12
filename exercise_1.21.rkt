#lang sicp

(define (smallest-divisor n)
	(find-divisor n 2))


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

; 199
;(prime? 199) => (= 199 (smallest divisor 199)) => (find divisor 199 2)

;(find divisor 199 2) => (divides? 199 2) => #f
;(find divisor 199 3) => (divides? 199 3) => #f
;(find divisor 199 4) => (divides? 199 4) => #f
;(find divisor 199 5) => (divides? 199 5) => #f
;(find divisor 199 6) => (divides? 199 6) => #f
;(find divisor 199 7) => (divides? 199 7) => #f
;(find divisor 199 8) => (divides? 199 8) => #f
;(find divisor 199 9) => (divides? 199 9) => #f
;(find divisor 199 10) => (divides? 199 10) => #f
;(find divisor 199 11) => (divides? 199 11) => #f
;(find divisor 199 12) => (divides? 199 12) => #f
;(find divisor 199 13) => (divides? 199 13) => #f
;(find divisor 199 14) => (divides? 199 14) => #f

;(> (square 15) 199) => #t => n

;(prime? 199) => (= 199 199) => #t
;Apply same logic for remaining values

(prime? 199) ;#t
(prime? 1999) ;#t
(prime? 19999) ;#f
