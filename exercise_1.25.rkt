#lang sicp
; Original Expmod
(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder
          (square (expmod base (/ exp 2) m))
          m))
        (else
         (remainder
          (* base (expmod base (- exp 1) m))
          m))))

(define (square a)
	(* a a)
)
; Suggested Expmod
(define (expmod-hacker base exp m)
	(remainder (fast-expt base exp) m))

(define (fast-expt b n)
	(cond ((= n 0) 1)
		  ((even? n) (square (fast-expt b (/ n 2))))
		   (else (* b (fast-expt b (- n 1))))))

(define (even? n)
	(= (remainder n 2) 0))

; The first thing that we can observe from both expmod procedures is that one uses the remainder in each iteration when calculating the exponential of a number
; while the other uses the primitive procedure remainder only in one number, that is, the result of the exponential method.
; In fact, the answer to our question may be already written in the book before, as it it stated on page 67:
; '.... For instance, in the case where e is even, we compute the remainder of b^(e/2) modulo m, square this, and take the remainder modulo m. This technique
; is useful because it means we can perform our computation without ever having to deal with numbers much larger than m'
; We can conclude that using the new suggested expmod would give worse results because we would have to deal with much larger numbers in terms of computational
; bits when compared to the original expmod in which we only deal with smaller numbers.
