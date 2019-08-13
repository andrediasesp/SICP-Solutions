#lang sicp

(define (count-change amount) (cc amount 5))

;(define us-coins (list 50 25 10 5 1))
(define us-coins (list 1 5 10 25 50))
(define uk-coins (list 100 50 20 10 5 2 1 0.5))

(define (cc amount coin-values)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (no-more? coin-values)) 0)
        (else
         (+ (cc amount
                (except-first-denomination
                 coin-values))
            (cc (- amount
                   (first-denomination
                    coin-values))
                coin-values)))))

(define (except-first-denomination coin-values)
  (cdr coin-values))

(define (first-denomination coin-values)
  (car coin-values))

(define (no-more? coin-values)
  (null? coin-values))

(cc 100 us-coins)

;No, the order of the list doesn't matter, the procedure computes all possible combinations. Starting at 1 or 50 is irrelevant in terms of final value because the tree follows
;all possibles values until it reaches a stopping condition.
