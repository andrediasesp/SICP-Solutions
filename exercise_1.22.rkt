#lang sicp

(define (timed-prime-test n)
	(newline)
	(display n)
	(start-prime-test n (runtime)))

(define (start-prime-test n start-time)
	(if (prime? n)
		(report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
	(display " *** ")
	(display elapsed-time))

(define (smallest-divisor n)
	(find-divisor n 2))

(define (prime? n)
	(= n (smallest-divisor n))
)
(define (divides? a b)
	(= (remainder b a) 0)
)

(define (find-divisor n test-divisor)
	(cond ((> (square test-divisor) n) n)
		  	((divides? test-divisor n) test-divisor)
			(else (find-divisor n (+ test-divisor 1)))
	)
)

(define (square a)
	(* a a)
)

(define (search-for-primes beg end)
  (define (search-iter cur)
    (if (<= cur end)
        (timed-prime-test cur))
    (if (<= cur end)
        (search-iter (+ 2 cur))))
  (search-iter (if (even? beg)
                   (+ 1 beg)
                   beg)))
