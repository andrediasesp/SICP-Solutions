# Lesson 12

### Operations with Sets

One way to speed up *Set* operations is to change the representation so that the set elements are listed in **increasing order**. How many steps does this save? In the worst case, the item we are looking for may be the largest one in the set, so the number of steps is the same as for the **unordered representation**.  On the average we should expect to have to examine about half of the items in the set. Thus, the average number of steps required will be about n/2.

A for concentrating on sets is that the techniques discussed appear again and again in applications involving information retrieval.
 
___

###  Fixed and Variable length Encoding

The ASCII standard code used to represent text in computers encodes each character as a sequence of seven bits. Using seven bits allows us to distinguish between 2^7 or 128 possible different characters.


ASCII is an examply of *fixed-length-codes* because they represent each symbol in the message with the same number of bits. It is sometimes advantageous to use variable-length codes, in which different symbols may be represented by different numbers of bits.


 In general, if our messages are such that some symbols appear very frequently and some very rarely, we can encode data more efficiently (i.e., using fewer bits per message) if we assign **shorter** codes to the frequent symbols.


 One of the difficulties of using a variable-length code is knowing when you have reached the end of a symbol in reading a sequence of zeros and ones. One solution is to design the code in such a way that no complete code for any symbol is the **beginning (or prefix) of the code for another symbol**. Such code is called a *prefix code*.


### Huffman Encoding Method

We can attain significant savings if we use variable-length prefix codes that take advantage of the relative frequencies of the symbols in the messages to be encoded. One particular scheme for doing this is called the **Huffman encoding method**. It is simply a binary tree in which we take in account the relative frequency of the symbols. 
At each leaf node we have a specific symbol and its relative frequency and at each non-leaf node we have a set containing all the symbols that lie below it. Everytime we want to encode or decode a message we start at the root of the tree and go down on it. We add a 0 when we go to a left branch and we add a 1 when we go to a right branch. Knowing this we can decode or encode any message we want based on the symbols relative frequency.

### Generating Huffman Trees
The idea of the algorithm is to arrange the tree so that the symbols with the *lowest* frequency appear *farthest* away from the root.
We Begin with the set of leaf nodes, containing symbols and their frequencies, as determined by the initial data from which the code is to be constructed. Then we find two leaves with the **lowest** weights and **merge** them to produce a **node** that has these two nodes as its **left and right** branches.

Next we **remove** the two leaves from the **original set** and replace them by this new node. We continue this process. At each step, we **merge two nodes with the smallest weights**, removing them from the set and replacing them with a node that has these two as its left and right branches. The process stops when there is only one node left, which is the **root** of the entire tree.

The algorithm does not always specify a **unique tree**, because there may not be unique smallest-weight nodes at each step. Also, the choice of the order in which the two nodes are merged is *arbitrary*.
___

## Kinds of trees
In a **Binary Tree** each node has at most two children, and the children is divided specifically into a left child and a right child. A **Binary Search Tree** has a property which indicates that the child on the left underneath the node are smaller than itself, and the child on the right underneath it is greater than itself.

There are different kinds of trees. There is a kind of tree that has a specific left child and a specific right child (binary tree). Another type of tree can have any number of childs which is simply called a tree. 
