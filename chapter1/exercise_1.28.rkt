#lang sicp
; Default test-tries: 20. Feel free to change it in the mr-prime-iter? procedure
(define (miller-rabin-test n)
  (define (expmod base exp m)
    (define (square-mod x)
      (remainder (* x x) m))
    (define (signal-root x)
      (if (and
           (not (or (= 1 x) (= x (- m 1))))
           (= 1 (square-mod x)))
          0
          (square-mod x)))
    (cond ((= exp 0) 1)
          ((even? exp) (signal-root (expmod base (/ exp 2) m)))
          (else
           (remainder (* base (expmod base (- exp 1) m))
                      m))))
  (define (try-it a)
    (= (expmod a (- n 1) n) 1))
  (try-it (+ 1 (random (- n 1)))))

(define (mr-prime? n)
  (define (mr-prime-iter? n times)
    (cond ((= times 0) true)
          ((miller-rabin-test n) (mr-prime-iter? n (- times 1)))
          (else false)))
  (mr-prime-iter? n 20))

(mr-prime? 15)
(mr-prime? 11)
(mr-prime? 7)
(mr-prime? 561)
(mr-prime? 1105)
