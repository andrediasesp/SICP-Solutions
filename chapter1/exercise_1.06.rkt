#lang sicp
; Exercise 1.6
; Implementing the square roots method using the (new-if) procedure will lead to infinite recursion over (sqrt-iter (improve guess x) x))). This happens because such procedure will use
; applicative order evaluation, that is, all subexpressions are evaluated in the first place.  On the other hand, If is a special form, and in its evaluation ,
; the interpreter starts by evaluating the ⟨predicate⟩ part of the expression. If the ⟨predicate⟩ evaluates to a true value, the interpreter then evaluates the ⟨consequent⟩ and returns its value.
; Otherwise it evaluates the ⟨alternative⟩ and returns its value.