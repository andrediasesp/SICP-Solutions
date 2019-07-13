(sine 12.15)
(p (sine ( / 12.15 3.0)))
(p (p ( sine ( / 4.15 3.0) ) ) )
(p (p ( p ( sine ( / 1.35 3.0) ) ) ) )
(p (p ( p ( p ( sine ( / 0.45 3.0) ) ) ) ) )
(p (p ( p ( p ( p ( sine ( / 0.15 3.0) ) ) ) ) ) )
(p (p ( p ( p ( p ( sine ( 0.05 ) ) ) ) ) ) )

; Procedure P is called 5 times. 
; 
(define (cube x) 
	(* x x x)
)

(define (p x) 
	(- (* 3 x) (* 4 (cube x)))
)

(define (sine angle)
	(if (not (> (abs angle) 0.1))
	angle
	(p (sine (/ angle 3.0)))))

; Order of growth -> Both space and time grow at each step while a is not less than 0.1
; We have that , with a being the angle and n the number of times we have to divide the angle by 3 to make it less than 0.1
;    (a/(3^n) < 0.1  <=> 
; <=> a * 10 < (3^n) <=>
; <=> (log (a*10)/log 3) < n
; We can infer that the time and space complexity of the sine function presented is O(log a)
