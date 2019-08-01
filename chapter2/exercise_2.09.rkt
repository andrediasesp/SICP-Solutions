#lang sicp
;Let x and y be our intervals with the following intervals:
;x: (a,b) being a the lower bound and b the upper bound
;y: (c,d) being c the lower bound and d the upper bound
;By definition we have that width is calculated the following way:
;x width: (b - a)/2 = 2* XWidth = b - a
;y width: (d - c)/2 = 2 * YWidth = d - c

;The sum of the intervals x and y is given by: z = x + y
;Z lower bound: a + c
;Z upper bound: b + d
;We can compute ZWidth being:
;ZWidth = ((b+d)−(a+c))/2 <=>
;2 * ZWidth = b+d-a-c     <=>
;2 * Zwidth = (b-a)+(d-c) <=>
;2 * ZWidth = 2*XWidth + 2*YWidth

;Subtraction
;z = x- y
;Z lower bound: a - d
;Z upper bound: b - c
;ZWidth = ((b - c) - (a - d))/2 <=>
;2 * ZWidth = b-c-a+d <=>
;2 * ZWidth = (b -a) + (d-c) <=>
;2 * ZWidth = 2* XWidth + 2* YWidth

;As we can notice, Addiction and Subtraction provide the same result for Width Calculation

;Multiplication we have 4 cases regarding the signal of our intervals bounds
;Using only the case where all numbers are positive
;Z lower bound: a * c
;Z upper bound: b * d
;2 * ZWidth = (b * d) - (a * c)
