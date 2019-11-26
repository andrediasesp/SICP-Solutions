# Lesson 9


### Data Abstraction


```scheme
(define (total hand)
  (if (empty? hand)
    0
    (+ (rank (one-card hand))
       (total (remaining-cards hand)))))

(define rank butlast)
(define one-card last)
(define suit last)
(define remaining-cards butlast)
```

This is more work to type in, but the result is much more readable. The auxiliary functions like **rank** are called selectors because they select one component of a multi-part. We take off a little piece out of a certain data type.


An ***abstract data type*** is one that isn't built into the programming language, one that only exists in the programmers mind.  
If we want to be thorough about hiding the representation, we need **constructor** functions as well as the **selectors**.
```scheme
(define (make-card rank suit)
  (word rank (first suit)))
(define make-hand se)
```

The main data aggregation mechanism that Scheme has is **Lists** which are made of **pairs**.

```scheme
;This represents a pair.
(make-card 4 'diamond)
```

The constructor for **pairs** in scheme is **cons**. The two selectors are called **car** and **cdr**. A list abstractly is just a **sequence**, formed by *n* pairs. The *car* of each pair is an element of the sequence and the *cdr* is the next pair along, except for the last pair whose *cdr* is the **empty list**.

___

**Box-and-pointer** diagrams have a **starting arrow** to indicate where the diagram begins.
