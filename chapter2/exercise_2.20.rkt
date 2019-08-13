#lang sicp
; I constructed the list starting from the end and then i used reverse from exercise 2.18
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

(define (same-parity . w)
  (define (term x)
    (if (even? x)
        even?
        odd?))
  (define (iter w temp count term)
    (if (= count (length w))
        (reverse temp)
        (if (term (list-ref w count))
            (iter w (cons (list-ref w count) temp ) (+ count 1) term)
            (iter w temp (+ count 1) term))
        ))
  (iter w nil 0 (term (list-ref w 0))))


(same-parity 1 2 3 4 5 6 7)

(same-parity 2 3 4 5 6 7)
