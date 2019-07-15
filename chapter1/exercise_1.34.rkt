#lang sicp
(define (f g)
  (g 2))


(define (square a) (* a a))

(f square)
;4
(f (lambda (z) (* z (+ z 1))))
;6

; (f f) evaluates to:
; (f 2) evaluates to:
; (2 2) which raises an error because it is not a procedure.
