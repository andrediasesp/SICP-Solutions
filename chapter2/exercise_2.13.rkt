#lang sicp
;Assuming two intervals a and b with centers ca and cb and percentage tolerance ta and tb:
;a = [ca - ta, ca + ta]
;b = [cb - tb, cb + tb]
;As all numbers are positive:
; Mul(a, b) = [(ca - ta) * (cb - tb), (ca + ta) * (cb + tb)]
;           = [ca * cb - ca * tb - ta * cb + ta * tb, ca * cb + ca * tb + ta * cb + ta * tb]
;As the exercise refers, under the assumption of small percentage tolerances, their multiplication is almost irrelevant so we are left with:
;           = [ca * cb - ca*tb - ta * cb, ca * cb + ca * tb + ta * cb]
;           = (ca * cb) * [1 - tb/cb - ta/ca , 1 + tb/cb + ta/ca]
;As tolerance is given by percentage * center , we can substitute t/c for p
;           = (ca * cb) * [1 - pb - pa, 1 + pb + pa]

;Incomplete
