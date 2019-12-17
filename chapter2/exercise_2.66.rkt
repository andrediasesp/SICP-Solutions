#lang sicp

(define (lookup given-key set-of-records)
  (cond ((null? set-of-records) false)
        ((equal? given-key (key (car set-of-records)))
         (car set-of-records))
        (else (lookup given-key (cdr set-of-records)))))


(define (lookup-tree given-key tree-of-records)
  (cond ((null? tree-of-records) false)
        ((= given-key (key (entry tree-of-records))) (entry set-of-records))
        (( < given-key (key (entry tree-of-records))) (lookup-tree given-key (left-branch tree-of-records)))
        (else (lookup-tree given-key (right-branch tree-of-records)))))
