#lang sicp
; Exercise 1.5
; Normal Order Evaluation has the basis of "evaluate when needed,fully expand then reduce"" while Applicative Order Evaluation has the basis of "evaluate the function and arguments and then apply"
; Applying applicative order, the arguments are all evaluated in first place, and we would have an infinite recursion on the call to the procedure (p), so there would be no result presented.
; Applying normal order, the procedure (p) would never be evaluated because the clause on the if matched on the first place (= x 0) so the result presented would be 0.