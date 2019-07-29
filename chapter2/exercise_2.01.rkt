
(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(define (numer x) (car x))
(define (denom x) (cdr x))

(define (print-rat x)
  (display (numer x))
  (display "/")
  (display (denom x))
  (newline))

(define (make-rat n d)
  (define g (gcd n d))
  (define (signal x)
    (if (< x 0)
        -
        +))
  (let ((g (gcd n d)))
    (cons ((signal (* n d)) (abs (/ n g)))
          (abs (/ d g)))))

(print-rat (make-rat -2 4))
