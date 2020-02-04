#lang sicp


; a)
; We can't assimilate number? and variable? into the DD dispatch because the datum type involved in this scenario
; we dispatch on the operator and we can't relate an operator with number? and variable?

; b)

(define (install-deriv)
  (put 'deriv '+ deriv-sum)
  (put 'deriv '* deriv-product)
  'done)


(define (deriv-sum exp var)
  (make-sum (deriv (addend exp) var)
            (deriv (augend exp) var)))

(define (deriv-product exp var)
  (make-sum (make-product (multiplier exp)
                          (deriv (multiplicand exp) var))
            (make-product (deriv (multiplier exp) var)
                          (multiplicand exp))))

; c)


; d)
(put '** 'deriv deriv-exponentiation)
(put '+ 'deriv deriv-sum )
(put '* 'deriv deriv-product)
