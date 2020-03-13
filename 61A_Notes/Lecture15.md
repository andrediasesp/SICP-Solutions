# Lesson 15

## Combining different data types
Often the different datatypes are not completely independent, and there may be ways by whichobjects of one type may be viewed as being of another type. This process is called **coercion**. For example, if we are asked to arithmetically combine an *ordinary* number with a *complex* number, we can view the ordinary number as a complex number whose imaginary part is zero. 

This transforms the problem to that of combining two complex numbers, which can be handled in the ordinary way by a **complex-arithmetic package**.


Dealing with large numbers of **interrelated types** while still preserving **modularity** in the design of large systems is very difficult, and is an area of much current research.


## Modularity, Objects, and State - Chapter 3 of the SICP book


**Free variable** - A variable that isn't a formal parameter. 

Most languages use *global variables* and *local variables*.  Global variables are **persistent** variables, we define them and they stay there *forever*. *Local* variables, in its definition, are not persistent. They exist inside a procedure and while it is executing and disappear when that procedure finishes. 

Let allows to create a specific environment. It is like, in this scope where *x* has the value *y*, and *w* haz the value *z* please compute *b*. We have created a scope of code where we change the values of specific variables. We have created an environment in which we will do a certain computation: calculate the value of *b*.


###  **Environment Model**

**Evaluation Steps**
1 - Evaluate all subexpressions
2 - Apply procedure to arg list.

The difference between the substitution model and the environment model resides in the **apply** step. 

In the substitution model we substitute arguments for parameters in the body. We make a new version of the body from the original procedure definition by replacing all formal parameters with values.  Next, we **EVAL** the modified body. This is the substitution model logic.

In the **environment** model we make an environment with the parameters bound (pointing to, having that value)to the arguments. Next, we **EVAL** the body. Not a different version of the body. but just the body in the **new** enviroment.

But what does **EVAL** represent? 

In the *substitution model* we say, 
```scheme
(eval exp)
```
while in the *environment model* we say
```scheme
(eval exp env)
```

- To a large extent, the way we organize a **large program** is dictated by our **perception** of the system to be modeled. In this chapter we will investigate two **prominent organizational strategies** arising from two rather different “world views” of the structure of systems

The first organizational strategy concentrates on **objects**, viewing a large system as a collection of distinct objects whose **behaviors may change overtime**.

An alternative organizational strategy concentrates on the **streams of information** that flow in the system, much as an electrical engineer views a signal-processing system.
With objects, we must be concerned with how a computational object can change and yet maintain its identity. This will force us to abandon our old substitution model of evaluation in favor of a more mechanistic but less theoretically tractable **environment model** of computation.

The stream approach can be mostfully exploited when we decouple simulated time in our model from the order of the events that take place in the computer during evaluation. We will accomplish this using a technique known as **delayed evaluation**.

