#lang sicp

#lang sicp


(define (deep-reverse x)
  (cond ((null? x) nil)
        ((pair? x)
         (append (deep-reverse (cdr x)) (cons (deep-reverse (car x)) nil)))
        (else x)))



(define x (list (list 1 2) (list 3 (list 4 5))))
x
(deep-reverse x)
