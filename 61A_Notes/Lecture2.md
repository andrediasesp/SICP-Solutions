# Lesson 2

## Abstraction
  - Application
  - High Level Languge (e.g. Scheme)
  - Low Level Language (e.g C)
  - Machine Language Architecture
  - Logic Gates
  - Transistors
  - Quantum Physics

____
## Functions
A function always gives the same result from the same input whenever it is called. There's no notion of randomness or external influence in computing the result of a function.
Same **functions**, different procedures:
$$
f(x) = 2x + 6
$$
$$
g(x) = 2(x + 3)
$$
___

### Normal Order vs Applicative Order Evaluation

In ***Normal Order Evaluation*** you get the Actual Argument Expressions and substitute them into the body. We don't evaluate anything until the primitive is called. It goes like:

Procedure: calls auxiliary procedure -> calls auxiliary procedure -> calls primitive procedure + -> evaluate expressions.

```scheme
(define (square a) (* a a))
(define (sum-of-squares a b) (+ (square a) (square b)))
(f 5)
(sum-of-squares (+ 5 1) (* 5 2))
(+ (square (+ 5 1)) (square (* 5 2))
(+ (* (+ 5 1) (+ 5 1)) (* (* 5 2) (* 5 2)))
(+ (* 6 6) (* 10 10))
(+ 36 100)
136
```

In ***Applicative Order*** we start by evaluating the actual sub expressions. 

```scheme
(define (square a) (* a a))
(define (sum-of-squares a b) (+ (square a) (square b)))
(f 5)
(sum-of-squares (+ 5 1) (* 5 2))
(sum-of-squares 6 10)
(+ (square 6) (square 10))
(+ (* 6 6) (* 10 10))
(+ 36 100)
136

```
Both Normal order and Applicative order evaluation don't give the same result in every single case.
```scheme
(def (zero x) (- x x))
```
If we call the zero func with the primitive procedure random, in Applicative order we woulde have 
```scheme
(zero (random 10)) => (zero 8) => (- 8 8) => 0. 
```
In Normal order we substitute the argument expressions, 
```scheme
(zero (random 10)) => (- (random 10) (random 10)) => (- 8 5) => 3
```
