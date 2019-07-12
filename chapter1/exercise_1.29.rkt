#lang sicp

(define (inc x)
  (+ x 1))

(define (even? n)
  (= (remainder n 2) 0))

(define (cube a) (* a a a))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (integral-simpson f a b n)
  (define h (/ (- b a) n))
  (define (yk k) (f (+ a (* h k))))
  (define (term k)
    (* (cond ((= 0 k) 1)
             ((= n k) 1)
             ((even? k) 2)
             (else 4))
       (yk k)))
  (* (/ h 3) (sum term 0 inc n)))

(define (integral f a b dx)
  (define (add-dx x)
    (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
     dx))


(integral-simpson cube 0 1 100)
(integral-simpson cube 0 1 1000)
