; We can watch a pattern in the sequence presented:
; It repeats in groups of 3: [1,2,1], [1,4,1], [1,6,1], [1,8,1]
; We can try to make k mod 3 being k the index starting at number 1..k
; 1 mod 3 = 1 ; 2 mod 3 = 2 ; 3 mod 3 = 0 -> first block
; 4 mod 3 = 1 ; 5 mod 3 = 2 ; 6 mod 3 = 0 -> second block
; If we assume that if the modulo of k mod 3 = 0, that represents 1 in the sequence,
; and if we notice that 5 mod 3 = 2 bu in the sequence it is represented as a 4, if we
; make that index ((k + 1)/3) * 2, that is equivalent to the 4 and 6 in the sequence:
; index 5: 5 mod 3 = 2 -> (6/3) * 2 = 4
; index 8: 8 mod 3 = 2 -> (9/3) * 2 = 6

#lang sicp

(define (inc i) (+ i 1))

(define (cont-frac n d k)
  (define (step i)
    (/ (n i)
       (+ (d i)
          (if (= k i)
              0
              (step (inc i))))))
  (step 1))


 (define (e-euler k)
   (cont-frac (lambda (i) 1)
              (lambda (i) (cond((= (modulo i 3) 1) 1)
                               ((= (modulo i 3) 2) (* 2 (/ (+ i 1) 3)))
                               ((= (modulo i 3) 0) 1)))
              k))

(e-euler 20)
