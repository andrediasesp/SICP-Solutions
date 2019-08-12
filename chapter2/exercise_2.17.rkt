#lang sicp

(define (length items)
  (if (null? items)
      0
      (+ 1 (length (cdr items)))))

(define (list-ref items n)
  (if (= n 0)
      (car items)
      (list-ref (cdr items) (- n 1))))

(define (last-pair items)
    (define (iter-pair items count length)
      (if (= count (- length 1))
          items
          (iter-pair (cdr items) (+ count 1) length)))
  (iter-pair items 0 (length items)))


(last-pair (list 23 72 149 34))
