; Demonstrate that the Carmichael numbers listed in Footnote 1.47 really do fool the Fermat test. That is,
; write a procedure that takes an integer n and tests whether a^n is congruent to a modulo n for every a < n, and try your
; procedure on the given Carmichael numbers.
#lang sicp

(define (fermat-test n exp)
  (= (expmod n exp exp) n))


(define (is-charmichael? n)
  (define (char-iter n count)
    (cond ((= n count) true)
          ((fermat-test count n) (fermat-test (+ 1 count) n))
          (else false)))
 (char-iter n 1))


(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder
          (square (expmod base (/ exp 2) m))
          m))
        (else
         (remainder
          (* base (expmod base (- exp 1) m))
          m))))

(define (square a)
  (* a a )
)

(is-charmichael? 561)
(is-charmichael? 1105)
(is-charmichael? 1729)
(is-charmichael? 2465)
(is-charmichael? 2821)
(is-charmichael? 6601)
