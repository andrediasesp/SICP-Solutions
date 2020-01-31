# Lesson 13

# Data Driven System Design
___
## Tagged Data
Programming systems are often designed by many people working over extended periods of time, subject to requirements that change over time.

We need conventions that permit programmers to incorporate modules into larger systems **additively**, that is, without having to redesign or reimplement these modules.

We need to construct generic procedures that can operate on data that may be represented in more than one way.

For example we can represent complex-numbers in polar form or in rectangular form. If both representations are included in a single system, we will need some way to distinguish data in polar form from data in rectangular form.

A straightforward way to accomplish this distinction is to include a **type tag** — the symbol rectangular or polar as part of each complex number. We construct the system in order to accept various kinds of representations. When it comes to a part where we must do some calculation or manipulation with the data, we just check wheter the data is one kind or another, by checking its **tag**.

Since each data object is tagged with its type, the selectors operate on the data in a **generic** manner. Each selector is defined to have a behavior that depends upon the particular type of data it is applied to.

This discipline of stripping off and attaching tags as data objects that are passed from level to level can be an important organizational strategy.
___

## Data-Directed Programming and Additivity

The general strategy of checking the type of a datum and calling an appropriate procedure is called **dispatching on type**. This is a powerful strategy for obtaining **modularity** in system design.

But, is is not perfect design and we can see that is has weaknesses:

- The first one is that generic procedures must know about all the different data representations that our system can have, to antecipate and to be able to operate in all of them. We would have n clauses in our system for n different representations.
- The second one is that we must guarantee when constructing and designing our system that no two procedures have the same name. For each data representation we have a procedure to operate on it, but with a different name from the other data representations, even though they all relate and they all do the same base operation.

The issue underlying both of these weaknesses is that the technique for implementing generic interfaces is **not additive**.

The person implementing the generic operation procedures must modify those procedures each time a new representation is installed, to deal with a new data representation. More, the people interfacing the individual representations must modify their code to avoid name conflicts.

This is where **data-driven programming** comes in.
Whenever we deal with a set of generic operations that are common to a set of different types we are in effect, dealing with a **two-dimensional table** that contains the *possible operations* on one axis and the *possible types* on the other axis.

Another style of programming is called message passing. The name comes from the image that a data object is an entity that receives the requested operation name as a “message.”
