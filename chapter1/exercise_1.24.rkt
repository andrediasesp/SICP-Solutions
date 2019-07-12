#lang sicp
; Default tries to prove: 5 -> Change to whatever number you want

(define (timed-prime-test n t)
	(newline)
	(display n)
	(start-prime-test n t (runtime)))

(define (start-prime-test n t start-time)
	(if (prime? n t)
		(report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
	(display " *** ")
	(display elapsed-time))

(define (fermat-test n)
	(define (try-it a)
		(= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

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

(define (square a) (* a a) )

(define (fast-prime? n times)
	(cond ((= times 0) true)
		  ((fermat-test n) (fast-prime? n (- times 1)))
		  (else false)))

(define (prime? n t)
  (fast-prime? n t)
)

(define (search-for-primes beg end)
  (define (search-iter cur)
    (if (<= cur end)
        (timed-prime-test cur 5))
    (if (<= cur end)
        (search-iter (+ 2 cur))))
  (search-iter (if (even? beg)
                   (+ 1 beg)
                   beg)))


(search-for-primes 1000000000 1000000050)


;On Modern Computers the time measured using the Fermat Test is appeared to be zero to the largest number allowed by the random procedure. So, one can assume that
;the fermat test is much faster than the other algorithms implemented before because the time to run the same arguments is shown to be equal to zero. meaning that
;it isn't even measurable on actual processors.
