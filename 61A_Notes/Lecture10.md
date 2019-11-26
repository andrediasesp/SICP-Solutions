# Lesson 10

### Map and Filter

- **Map**
```scheme
(map first '((john lennon) (paul mccartney)))
;(john paul)
```

We apply the procedure first to each element of the list. That's the behaviour of map, we take some list and we can apply some procedure to every element of it.

___

**Cons** adds one new element at the front of an existing list.

```scheme
> (cons ’(new element) ’(the old list))
; ((new element) the old list)
```

**Append** is used to combine two or more lists in a way that “flattens” some of the structure of the result: It returns a list whose elements are the elements of the arguments, which must be lists.

```scheme
(append ’(one list) ’(and another list))
; (one list and another list)
```



