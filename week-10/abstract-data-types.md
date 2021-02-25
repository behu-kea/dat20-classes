# Abstract data types



## Learning goals

- Understand purpose of ADT
- Knows Javas collection framework
- Complexity O notation for loops, methods and algorithms



## Abstract data types

A specification of a type of data and the operations that can be performed on it.

An ADT specifies operations that can be performed on data without specifying exactly how those operations are implemented. 

In Java, ADTs are specified by interfaces. Each ADT's operations are specified by the methods of its interface. For example, both LinkedList and ArrayList implement an interface in the java.util package called List. The List interface declares all the common methods that both types of lists implement.





### Collection (Java collection framework)

A collection is an object that stores a group of other objects, called its *elements.*

Entities that store and manage data are also called *data structures.*

Some examples of collections:

- **List**: An ordered collection of elements, often accessed by integer indexes or by iteration.
- **Stack**: A collection in which the last element added is the first one to be removed.
- **Queue**: A collection in which elements are removed in the same order in which they were added.
- **Set**: A collection of elements that is guaranteed to contain no duplicates.
- **Map**: A collection of key/value pairs in which each key is associated with a corresponding value.



Java provides a large group of useful collections that allow you to store, access, search, sort, and manipulate data in a variety of ways. Together, these collections and classes are known as the *Java Collections Framework.* This framework is largely contained in the package java.util.



https://www.baeldung.com/java-algorithm-complexity



Possible exercise:

- Given some pseudocode write what O notation is is