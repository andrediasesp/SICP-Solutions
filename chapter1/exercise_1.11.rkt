#lang sicp

; Tree Recursion Version

(define (f n)
  (if (< n 3) 
  	   n
  		(+ (f (- n 1)) 
  		   (* 2 (f (- n 2))) 
  		   (* 3 (f (- n 3))) 
  		)
  )
)

; Iterative Version

(define (f n)
  (define (f-iter a b c count)
  	(if (= count n)
  		(+ a (* 2 b) (* 3 c))
  		(f-iter (+ a (* 2 b) (* 3 c)) a b (+ count 1))
  	)
  )	
(if (< n 3)
     n	
     (f-iter 2 1 0 3))
)

	 
