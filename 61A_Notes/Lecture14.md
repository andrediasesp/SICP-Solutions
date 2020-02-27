# Lesson 14


## OOP from Brian Harvey

Three keys ideas related to OOP:
- **Message Passing** - An Object can ask other object to do things for it
- **Local State** - An object can remember stuff about its own past history
- **Inheritance** - One object type can be just like another except for a few differences.


We have the concepts of *class* and *instance*.A class represents an overall description of behaviour whereas an instance represents a particular element of that behaviour.

The function *next* presented in this class gives the next number in some sorte of sequence. For an object c2 if we call the function next on that object n times, the number n is returned. We are outside the definition of Functional programming because each time we call next we give a different result. We are entering a new realm, called **local state**. Local means **each object has its own memory**. That is, if we call next on other object, c3 it starts with 1, it doesn't continue the last number retrieved when applied to c2. 

We conclude that each object has its own counter. That's what **local** means.

When we redefine a class, any instance made are still instances of the old class, so if we want instances of the new class we have to make new instances from the new class.

In OOP we could face a problem called **Multiple Inheritance**. Imagine we have two parents in a certain class instance (mom and dad). Suppose that mom has a parent class called (grandma). If grandma and dad both have a method that isn't specified in mom, which one do we call? And in which circumstance? That's the multiple inheritance problem. Do we want a more generic or less generic procedure.

**Multiple inheritance** is basically a feature of some object-oriented computer programming languages in which an object or class can inherit characteristics and features from more than one parent object or parent class. One common problem associated with multiple inheritance is called **Diamond Problem**.

It is an ambiguity that arises when two classes B and C inherit from A, and class D inherits from both B and C. If there is a method in A that B and C have overridden, and D does not override it, then which version of the method does D inherit: that of B, or that of C?

An object can refer to itself by the name **self**; this is an automatically-created instance variable in every object whose value is the object itself.

If we send an object a message for which there is no method defined in its class and if the class has no parent, it results in an **error**. If the class does have a parent, and the parent class understands the message it works.

**Modularity** is a key aspect of OOP. As size increases, systems become harder to **build**, harder to **modify**, harder to **understand** and harder to **maintain**.

**Principle:** If any part of a system depends on the internals of another part, then **complexity** increases as the **square** of the size of the system.

We moved from the **procedural** view to the **OOP** paradigm. We flipped from the **dispatch** on the types of the objects to the OOP point of view that states that within every type of object we have **all the procedures** that work on it.

From the **Smalltalk**, which you can watch [here](https://youtu.be/Ao9W93OxQ7U) we have the computational perspective of OOP programming. A class instance has a pointer to its class definition. That class definition is stored in the computer having pointers to its **template** that is, the variables that we use to instantiate a new object from that class and to its **method dictionary** that stores all the methods associated with that class.

## Systems with Generic Operations
