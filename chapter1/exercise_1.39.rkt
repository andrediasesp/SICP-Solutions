#lang sicp
; We notice that the signal is different in the Tan function, we subtract D and N, rather than
; adding them up as we did in the previous exercises. So to keep using the cont-frac function
; we have to make N negative

(define (inc i) (+ i 1))

(define (square x) (* x x))

(define (cont-frac n d k)
  (define (step i)
    (/ (n i)
       (+ (d i)
          (if (= k i)
              0
              (step (inc i))))))
  (step 1))



(define (tan-cf x k)
  (cont-frac(lambda(i) (if (= i 1)
                           x
                           (* (square x) -1)))
            (lambda(i) (- (* i 2) 1))
            k))



(tan-cf 0.71 17)
