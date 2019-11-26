# Lesson 7 


### Note: 
Lessons 5 and 6 were a talk by Alan Kay.

___

## Efficiency

Time itself, as a measure, is not a correct way to classify if an algorithm is fast or slow because the running time in a computer depends on many other factors besides the algorithm implemented. 

To classify the ***efficiency*** of an algorithm we look at the **number of primitive constant** time operations it does. Primitive operations correspond to constant time.

##### Example Squares

```scheme
(define (square x) (* x x))

(define (squares sentence)
    (if (empty? sentence)
    '()
    (se (square (first sentence))
         (squares (bf sentence)) )))
```

For squares, a sentence of length **N** we do $$$6N + 2$$$ constant time operations. Every non-empty sentence takes 6 constant time operations: (if,empty?,first,bf,square,se) and the empty sentence takes two constant time operations, (if and empty?).

When trying to know how much time an algorithm will take, we look at the worst running time case because it's the most conservative assumption. 

Constant factors when computing running time are not useful. If we want a very precise measure ofvhow many microseconds something will take, then we have to worry about the constant factors, but for an overall sense of the nature of the algorithm, what counts is the $$$N^2$$$ part. We use **Big Theta** notation to express this sort of approximation.
 
### Time Complexity Families

#### Searching

Searching for a particular value out of a collection of values.

$$\theta(1)$$
$$\theta(\log n)$$
$$\theta(n)$$

#### Sorting
Sorting a collections of values.
$$\theta(n\log n)$$
$$\theta(n²)$$


#### Matrix Multiply
$$\theta(n³)$$

#### Intractable
$$\theta(n²)$$
$$\theta(n!)$$
$$\theta(n^n)$$

These problems are effectively not solvable for values of $$N$$ greater than one or two dozen. Faster computers won’t help; if the speed of your computer doubles, that just adds 1 to the largest problem size you can handle! Trying to find faster algorithms for these intractableproblems is a current hot research topic in computer science




