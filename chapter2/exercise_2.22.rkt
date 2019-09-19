#lang sicp

; The answer is returned on reversed order because we start by squaring the car element of the list. That is the leftmost element in
; our list. We then make cons of the squared element with an empty list. In the next iterarion we will square the second element and
; cons it with the previous answer list, that is: (cons 4 1) that results in [4 1] ..... [16 9 4 1]

;The second version doesn't work because we are constructing a list making cons of an empty list () and a value, which results in a new
;list with an empty list as its first value and the number 1 as the second value.
;The second element of cons should be a list and not a value,
