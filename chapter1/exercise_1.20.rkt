(define (gcd a b)
	(if (= b 0)
		a
		(gcd b (remainder a b))))

(gcd 206 40)

;Normal-Order evaluation
(gcd 206 40) 
(if (= 40 0)) => #f
(gcd 40 (remainder 206 40))
(if (= (remainder 206 40) 0)) => #f
(gcd (remainder 206 40) (remainder 40 (remainder 206 40)))
(if (= (remainder 40 (remainder 206 40)) 0)) => #f
(gcd (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))
(if (= (remainder (remainder 206 40) (remainder 40 (remainder 206 40))) 0)) => #f
(gcd (remainder (remainder 206 40) (remainder 40 (remainder 206 40))) (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))
(if (= (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))) 0)) => #t => a
(remainder (remainder 206 40) (remainder 40 (remainder 206 40))) => 2

; Counting all remainders : 18 remainders 

;Applicative-Order evaluation 
(gcd 206 40)
(if (= 40 0)) => #f
(gcd 40 (remainder 206 40)) => (gcd 40 6)
(if (= 6 0)) => #f
(gcd 6 (remainder 40 6)) => (gcd 6 4)
(if (= 4 0)) => #f
(gcd 4 (remainder 6 4)) => (gcd 4 2)
(if (= 2 0)) => #t
(gcd 2 (remainder 4 2)) => (gcd 2 0)
(if (= 0 0)) => a => 2

; Counting all remainders: 4 remainders 