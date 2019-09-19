#lang sicp

(define (for-each proc elements)
  (cond ((not( null? elements))
        (proc (car elements))
        (for-each proc (cdr elements)))))

(for-each (lambda(x)(newline)(display x)) (list 57 321 88))
