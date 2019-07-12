#lang sicp
; The hint states that we should keep a state variable a, such that ab^n is stateless. 
; ab^n: When n is even -> ab^n = a(b^2)^n/2 we can assume that from state to state: a = a; b = square(b) ; n = (/ n 2)
;       When n is odd  -> ab^n = a*b*b^(n-1) we can assume that from state to state: a = (* a b); b = b ; n = (- n 1)

(define (exp b n)
	(define (exp-iter b n a)
		(cond ((= n 0) a)
		      ((even? n) (exp-iter (square b) (/ n 2) a))
               (else (exp-iter b (- n 1) (* a b)))
        )
    )  
 (exp-iter b n 1)
)


(define (even? n)
	(= (remainder n 2) 0))

(define (square n)
	(* n n)
)