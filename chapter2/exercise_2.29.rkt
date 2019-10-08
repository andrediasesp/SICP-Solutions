#lang sicp

(define (make-mobile left right)
   (cons left right))

(define (left-branch mobile)
   (car mobile))

(define (right-branch mobile)
   (cdr mobile))

(define (make-branch length structure)
   (cons length structure))

(define (branch-length branch)
   (car branch))

(define (branch-structure branch)
   (cdr branch))

 (define (total-weight mobile)
   (cond ((null? mobile) 0)
         ((not (pair? mobile)) mobile)
         (else (+ (total-weight (branch-structure (left-branch mobile)))
                  (total-weight (branch-structure (right-branch mobile)))))))


(define (torque branch)
  (* (branch-length branch) (total-weight (branch-structure branch))))


(define (branch-balanced? left right)
  (= (torque left)
     (torque right)))

 (define (balanced? mobile)
   (if (not (pair? mobile))
       true
       (and (= (torque (left-branch mobile)) (torque (right-branch mobile)))
            (balanced? (branch-structure (left-branch mobile)))
            (balanced? (branch-structure (right-branch mobile))))))
