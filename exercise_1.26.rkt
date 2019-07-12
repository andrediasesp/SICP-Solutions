#lang sicp
(define (new-expmod base exp m)
	(cond ((= exp 0) 1)
		  ((even? exp)
			(remainder (* (new-expmod base (/ exp 2) m)
						  (new-expmod base (/ exp 2) m))
			m))
	(else
		   (remainder (* base
						(new-expmod base (- exp 1) m))
					   m))))


(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder
          (square (expmod base (/ exp 2) m))
          m))
        (else
         (remainder
          (* base (expmod base (- exp 1) m))
          m)))
)



; “I don’t see what difference that could make,” says Louis.
; “I do.” says Eva. “By writing the procedure like that, you have transformed the Θ(logn) process into a Θ(n) process.” Explain
; We transform the expmod procedure from a recursive process into a tree recursive process, which has two recursive calls to the expmod procedure. We double the
; amount of work that we had in the previous procedure. As we have two recursive calls, generating two nodes calling the new-expmod procedure in each iteration,
; so we can assume that we would have (2^(n/2)) calls:
; Instead of Θ(log n) , we have Θ(log 2^(n/2)) = Θ( (n/2) log 2)= Θ(n).
