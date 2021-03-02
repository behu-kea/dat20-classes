# Abstract data types



## Learning goals

- Understand purpose of ADT
- Knows Javas collection framework
- Complexity O notation for loops, methods and algorithms



## Interface example

An interface defines what methods and attributes a class should have. It works like this:



This interface defines two methods: `addName` and `getName`. Any class that implements this interface **has to have** these two methods!

```java
interface User {
    public void addName(); // interface method (does not have a body)
    public String getName(); // interface method (does not have a body)
}
```



The `WebUser` class `implements` the `User` interface. Meaning it has to have the  `addName` and `getName` methods.

```java
public class WebUser implements User {
    public void addName() {}

    public String getName() {
        return "name";
    }
}
```



## Abstract data types

A specification of a type of data and the operations that can be performed on it.

**An ADT specifies operations that can be performed on data without specifying exactly how those operations are implemented.** 

In Java, ADTs are specified by `interfaces`. Each ADT's operations are specified by the methods of its interface. For example, both LinkedList and ArrayList implement an interface in the java.util package called List. The List interface declares all the common methods that both types of lists implement. You can find the interface here: https://docs.oracle.com/javase/8/docs/api/java/util/List.html



It's smart because we have a strick interface with a contract that specifies how to use the data.

Good interface design makes us as developers not even think about what lies behind the code we are using it. We are just using the methods. 



![Java-Framework](./assets/list-interface.png)



```java
// Different types (ArrayList, LinkedList and Vector), same interface (to add items, we use the add method)
ArrayList<String> names = new ArrayList<String>();
names.add("asd");

LinkedList<String> names2 = new LinkedList<String>();
names2.add("asd");

Vector names3 =  new Vector();
names3.add("asd");
```



### Collection (Java collection framework)

A collection is an object that stores a group of other objects, called its *elements.*

Entities that store and manage data are also called *data structures.*

Some examples of collections:

- **List**: An ordered collection of elements, often accessed by integer indexes or by iteration.
- **Queue**: A collection in which elements are removed in the same order in which they were added.
- **Set**: A collection of elements that is guaranteed to contain no duplicates.
- **Map**: A collection of key/value pairs in which each key is associated with a corresponding value.

Java provides a large group of useful collections that allow you to store, access, search, sort, and manipulate data in a variety of ways. Together, these collections and classes are known as the *Java Collections Framework.* This framework is largely contained in the package java.util.

All these types have different purposes. 



### New List type (the cool new kid in town)

Okay so enough of all these boring types like `ArrayList`, `HashSet` and `LinkedList`. We want to create a cool new datatype! 

Hopefully it is going to be so cool that the people behind Java will actually accept it into the Java Collection Framework 🤞



 Okay but what should the purpose of this list be? 

> It should be for [Rockstart developers](https://hackernoon.com/the-myth-of-a-rockstar-developer-e6564bd51b5c) that are a bit daring but also in sync with taking things slow.



Lets call this new datastructure for `CoolList`. It should be a `List` which means it should implement the `List` `interface`. 

`CoolList` will only use `Strings` since everything else is irrelevant 😂

Since it will `implement` the `List` interface there are lots of methods we need to implement like `add`, `size`, `get` and so on.

On top of those methods we will be adding some unique ["cool"](https://giphy.com/gifs/30-rock-sme-how-do-you-1Qdp4trljSkY8) features

| Method name                 | Description                                                  |
| --------------------------- | ------------------------------------------------------------ |
| `deleteRandomItem`          | Deletes a random item in the list                            |
| `deleteRandomNumberOfItems` | Deletes a random number of items in the list                 |
| `nukeTheList`               | Removes all items in the array                               |
| `emojiThisList`             | Replaces all items with emojis                               |
| `rickRoll`                  | Replace a random item with the link to the [rick roll video](https://www.youtube.com/watch?v=dQw4w9WgXcQ) |
| `YourMethodHere`            | Implement a fun method you think should be part of `CoolList` |



### Exercise - 60 min

Finish the methods using this boilerplate





## O notation

https://www.baeldung.com/java-algorithm-complexity



Possible exercise:

- Given some pseudocode write what O notation is is