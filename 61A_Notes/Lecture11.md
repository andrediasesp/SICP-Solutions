# Lesson 11
## Reading
SICP Section 2.2.2–2.2.3, 2.3.1, 2.3.3
___
The ability to create pairs whose elements are pairs is the essence of list structure’s importance as a representational tool. We refer to this ability as the **closure** property of cons.
A set is **closed** under an operation if the performance of that operation on members of the set always produces a member of that set. 

Closure is the key to power in any means of combinanation because it permits us to create **hierarchical** **structures**— structures made up of parts, which themselves are made up of parts, and so on.
___
**Map** takes as arguments a procedure of one argument and a list, and returns a list of the results produced by applying the procedure to each element in the list. map is an important construct, not only because it captures a common pattern, but because it establishes a higher level of abstraction in dealing with lists.

___
One way to think of sequences whose elements are sequences is **trees**. The elements of the sequence are the branches of the tree, and elements that are themselves sequences are subtrees.

**Modular construction** is a powerful strategy for controlling complexity in engineering design.

A **set** is simply a collection of distinct objects.


___

**Symbolic Data**

If we can form compound data using symbols, we can have lists such as 
```scheme
(a b c d)
(andre john mary)
```

In order to manipulate symbols we need a new element in our language:the ability to **quote** a data object. The quotation mark is just a single-character abbreviation for wrapping the next complete expression with **quote** to form 
```scheme
(quote ⟨expression⟩ )
```

The advantage of the **tree representation** is that if we want to check whether a number *x* is contained in a set, we begin by comparing with the entry in the top node. If *x* is less than this, we know that we need to only search the left subtree; if *x* is greater, we need only search the right subtree. 
If the tree is “balanced,” each of these subtrees will be about half the size of the original. Thus, in one step we reduced the problem of searching a tree of size *n* to searching a treeof size *n/2*. Since the size of the tree is halved at each step, we should expect that the number of steps needed to search a tree of size *n* grows as: 
$$\theta(\log n)$$
___


### Calculator Program

In scheme there are basically four kinds of expressions: 
- Self evaluating (e.g numbers and booleans)
- Variables
- Function calls
- Special forms

---
**Read-Eval-Print Loop** : Read an expression, evaluate it, and print its value.

Eval is much simpler because one complete expression is one list. The form of the expressions matches the form of the data, that's why writting a compiler for scheme is much easier to do when compared to other languages. 
___
**Read** and **Print** are not functional programming: 
- Read returns a different value each time it’s called.
- Print changes something in the world instead of just returning a value.

___

**Syntax** is the technical term for the **form** of a program, i.e what a program looks life. *Scheme* syntax for example is open paranthesis, call procedure with some arguments values etc. etc. The notation used in a language is called its syntax.

**Semantics** is what that thing means. That is, open paranthesis means call a procedure with those argument values after evaluating all sub-expressions.



