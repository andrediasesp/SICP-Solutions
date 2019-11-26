#lang sicp

;accumulate
(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (accumulate-n op init seqs)
  (if (null? (car seqs))
      nil
       (cons (accumulate op init (map car seqs))
            (accumulate-n op init (map cdr seqs)))))


(define (reverse sequence)
  (fold-right (lambda (first already-reversed)
                (append already-reversed (list first)))
               nil
               items))

(define (reverse sequence) (fold-left (lambda (result first) (cons first result))
              nil
              items))
