#lang sicp

(define (inc n) (+ n 1))
(define (dec n) (- n 1))

;a)
(define (cont-frac n d k)
  (define (step i)
    (/ (n i)
       (+ (d i)
          (if (= k i)
              0
              (step (inc i))))))
  (step 1))

;b)
(define (cont-frac-iter n d k)
  (define (step k result)
    (if (= k 0)
        result
        (step (dec k) (/ (n k) (+ (d k))))))
  (step k 0))



(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           8)

(cont-frac-iter (lambda (i) 1.0)
                (lambda (i) 1.0)
                8)
