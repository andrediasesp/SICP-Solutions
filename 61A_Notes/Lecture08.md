# Lesson 8

### More notes on time complexity

- Linear time algorithms means doubling the input size doubles the running time.
- Quadratic means doubling the input size quadruples the running time.


___
### Space/Memory Complexity

Programs can actually generate different processes even though they refer to the same problem. The two following count programs generate two different processes: 

**Linear Recursive Process**

```scheme
(define (count sent) 
  (if (empty? sent)
       0
       (+ 1 (count (bf sent)))))
```
If we call count and if we take each recursive call invoked by different persons (analogy to what really happens inside a computer) we would have:
```scheme
Person 1: (count '(she loves you))
            (+ 1 (count '(loves you)))
Person 2: (count '(loves you))
            (+ 1 (count '(you)))
Person 3: (count '(you))
            (+ 1 (count '()))
Person 4: Returns 0 to Person 3 because sentence is empty.
```

Each person must wait for the next to return its value, that is, Person 1 must wait for Person 2, Person 2 must wait for Person 3, etc.
Also each person must remember what sent is, where do i came from and everything and all that information takes up **room**  in a computer's memory.
So if we have 4 people waiting for each other we have 4 chunks of computer memory in use for this computation. 
The space in terms of memory use is linear in the size of the problem.

**Linear Iterative Process**
```scheme
(define (count sent)
  (define (iter wds result)
    (if (empty? wds)
      result
      (iter (bf wds) (+ result 1)) ))
  (iter sent 0) 
```

```scheme
Person 1: (count '(she loves you))
Person 2: (iter '(she loves you) 0)
Person 3: (iter '(loves you) 1)
Person 4: (iter '(you) 2)
Person 5: (iter '() 3)
```
We do the work on the way in, not on the way out. When the last person finishes, the computation is finished, different from the case on the recursive version. As we don't have to remember at what stage we are and who do we have to give our answer to, we don't need n chunks of memory as in the recursive case, we only need one chunk of memory independently of the size of the problem. 

### Pascal Triangle

Two different approaches that take two significant different run times:
In one we compute each number from the two above, which increases the time taken because we are computing the same number more than once. In the other approach we compute every number in each row, we compute more numbers than we need but we only compute them once. 




