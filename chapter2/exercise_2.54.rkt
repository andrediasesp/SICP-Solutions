#lang sicp

(define (equal?  x y)
  (cond (( eq? x '()))
        (( eq? (car x) (car y)) (equal? (cdr x) (cdr y)))
         (else  #f)))

(equal? '(this is a list) '(this is not a list))
