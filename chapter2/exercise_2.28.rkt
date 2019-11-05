#lang sicp

(define x (list (list 1 2) (list 3 4)))
x


 (define (fringe x)
   (cond ((null? x) x)
         ((number? x) (list x))
         (else (append (fringe (car x))
                       (fringe (cdr x))))))


(fringe x)