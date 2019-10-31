# Lesson 3
## Our Brain: Things and Actions
- In our brain we have a brick wall between ***things*** and ***actions***. In one side we have the notion of "knowing that..." and on the other side we have the notion of "knowing how to". In computer programming there's the big distinction between ***data*** and ***procedures***.  The objective of this course is to remove this barrier so we can talk about data and procedures, as almost the same thing.
____
## Range and Domain
- We have to interiorize the concept of *functions* as objects, that is, being able to manipulate *functions* as *data*. The *domain* of a function represents what kinds of things it takes as input and the *range* of a function represents *what* kinds of things does it return. A Predicate is an example of a function whose range is represented by booleans.
- The **derivative** is a function whose domain and range are functions.
____
## Recursion on Evens Numbers
- We have an example of *recursion* with evens. We take a sentence of even numbers as input, and we check if the first number in that list is an even number. If it is we begin constructing a sentence starting with that number, as we call evens with the rest of the input sentence.
____

## Lambda
```scheme
(lambda ( formal parameters ) ( expression ) )

; Same Procedures
( define ( square x ) ( * x x ) )
( define square ( lambda (x) ( * x x ) )
```
Lambda is a special form: the formal parameter list isn’t evaluated and the body isn’t evaluated when we see the lambda, either—only when we invoke the function can we evaluate its body.

____
## High Order Procedures
- Either takes a procedure as an argument or returns a procedure as its value. A higher order procedure represents a higher order function. Examples of high order functions are **derivative** and **integrals**.


- *Generalizing patterns* keep our programs from being very long.
___

## First Class Data Types
- A data type is considered **first-class** in a language if it can be 
 -- The value of a variable (i.e. named)
 -- Passed as an argument
 -- The return value from a function
 -- A member of an aggregate (like an array)
 -- Anonymous
 
In most languages, **numbers** are first-class; perhaps **text strings** (or individual text characters) are first-class but usually **functions** are not first-class. 
