#lang sicp

; Rows start at 1, so we assume that the first element of the triangle is (1,1) = 1. All elements out of row bounds are returned as 0
(define (pascal a b)
	(cond ((= b 1) 1)
          ((= b a) 1)
          ((> b a) 0)
	      (else (+ (pascal (- a 1) (- b 1)) (pascal (- a 1) b) 
		  	 )
		  )
	)
)