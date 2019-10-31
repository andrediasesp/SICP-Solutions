 # Lesson 4

## Composition of Functions

Function composition is an operation that takes two functions $$$f$$$ and $$$g$$$ and produces a function $$$h$$$ such that 
$$
h(x) = g ( f (x) )
$$
```scheme
( define (compose f g )  (lambda (x) (f (g x)))) 
( define (twice f) (compose f f))
```
In order to work, the domain of $$$f$$$ must include the range of $$$g$$$.
Brian tells something about Pascal Language and the fact that it allows functions as arguments but doesn't allow to return functions as values because it makes languages harder to implement.

___


## Let
```scheme
(let bindings body)
       |
       |
   (binding binding binding)
              |
              |
              |
        (name value-expression)
```

```scheme
;example
(define (f x y)
  (let ((a (+ 1 (* x y)))
        (b (- 1 y)))
    (+ (* x (square a))
       (* y b)
       (* a b))))
```
```scheme
;let* is a nest of lets:
(let* ((a 3) (b (+ a 5))) (* a b))
;is equal to
(let ((a 3))
  (let ((b (+ a 5)))
  (* a b)))
```
**Notes on Let**
- We cannot use let to make recursive functions.
- The association between names and values only holds while we compute the body of the let.
- If you have more than one name-value pair, they are not computed in sequence! Later ones can’t depend on earlier ones. They are all arguments to the same function.
