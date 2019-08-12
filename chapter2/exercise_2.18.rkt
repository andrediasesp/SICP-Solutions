#lang sicp

(define (length items)
  (if (null? items)
      0
      (+ 1 (length (cdr items)))))

(define (list-ref items n)
  (if (= n 0)
      (car items)
      (list-ref (cdr items) (- n 1))))

(define (reverse items)
  (define (construct temp count )
    (if (= count (length items))
        temp
        (construct (cons (list-ref items count) temp ) (+ count 1))))
  (construct nil 0))

(reverse (list 1 4 9 16 25))
