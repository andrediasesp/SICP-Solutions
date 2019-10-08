#lang sicp

(define (square x) (* x x))

(define (square-tree tree)
  (map (lambda (sub-tree)
         (if (pair? sub-tree)
             (square-tree sub-tree)
             (square sub-tree))) tree))


(define x (list 1 (list 2 (list 3 4) 5) (list 6 7)))
(square-tree x)
