# Data structures

Knowing about different ways to store data is crucial when writing software. Right now it might not be that clear because you are working with small amounts of data in your projects. But once you start working with 1000 of objects, maybe even millions of objects then knowing different data structures is absolutely crucial. 



## Learning objectives

- `ArrayList`
- `Hashmap` - Collisions and extension
- `TreeSet`
- Identify which is best for which use case
- There are other data structures that `ArrayList`
- Knowing when to use what data type



![Screenshot 2021-03-05 at 14.26.42](./assets/java-collection-framework.png)



## ArrayList

Stores data in a list. You can `add`, `get`, `set` and `delete` items. Every item in the `ArrayList` has an index. 

We access data using the index of the item. 

A sequence of elements arranged in order of insertion



### Pros

- Fast to get items at a specific index
- Adding and removing at the end of the list is fast



### Cons

- Finding a specific item is slow. Since we need to search through every item in the array to find what we are looking for
- Deleting an item is slow. Especially if we need to remove an item in the front of the array. That is because for all the items at the index after the deleted item we need to update the index.



### Typical usages

- List of accounts
- List of numbers
- The lines of a file



## Hashmap

A collection that associates objects called keys with objects called values. You can store a key/value pair into a map; later in your code, if you supply just the key to the map, it will give you back the value associated with that key. 



When creating a new `HashMap` we need to write it like this:

```java
HashMap<String, Double> salaryMap = new HashMap<>();
```

The `String` part indicate the type of the key. The `Integer` part indicates that the value will be stored as `Integer`. 



To add items to a `HashMap` we use the method `put`

```java
salaryMap.put("Stuart Reges", 10000.00);
```

Now to get the value we write:

```java
Double stuartSalary = salaryMap.get("Stuart Reges");
```



A set of unique elements that can be searched quickly



The Java hashmap has a lot of operations, but for this note we will only look at a few of them:

- *get(Object key)* <br>
  Returns the value to which the specified key is mapped, or null if this map contains no mapping for the key.
- *put(K key, V value)* <br>
  Associates the specified value with the specified key in this map.
- *containsKey(Object key)*<br>
  Returns true if this map contains a mapping for the specified key.
- *size()*<br>
  Returns the number of key-value mappings in this map.
- *values()*<br>
  Returns a Collection view of the values contained in this map.



### Iterating through a HashMap

```java
for (int name : salaryMap.keySet()) {
    String salary = ssnMap.get(name);
		System.out.println(name + "'s salary is " + salary);
}
```



### Pros

- Fast to remove or add any item
- Fast for finding items



### Cons

- Has got no index for finding items
- Iterating through the items is hard



### Typical usages

- Word counting
- Phone book creation



### HashMap exercises







## TreeSet

Cannot contain duplicates! The list is sorted when the you add items!

```java
Set<String> stooges = new HashSet<String>();
stooges.add("Larry");
stooges.add("Moe");
stooges.add("Curly");
stooges.add("Moe"); // duplicate, won't be added
stooges.add("Shemp");
stooges.add("Moe"); // duplicate, won't be added
```



Very fast for searching

```java
names.contains("Henriette");
```



We cannot make a forloop over it:

```java
// this code does not compile
for (int i = 0; i < words.size(); i++) {
    String word = words.get(i); // error –– no get method
    System.out.println(word);
}
```

We need to use an iterator

```java
Iterator<String> itr = words.iterator();
while (itr.hasNext()) {
    String word = itr.next();
    System.out.println(word);
}
```



| **Set operation** | **Method**  | **Description**                               |
| ----------------- | ----------- | --------------------------------------------- |
| union             | `addAll`    | Set of all elements that are in A, B, or both |
| intersection      | `retainAll` | Set of all elements that are in both A and B  |
| difference        | `removeAll` | Set of all elements that are i A but not in B |



![Screenshot 2021-03-05 at 14.38.36](./assets/treeset.png)

### Pros

- Cannot contain dublicates
- Fast for searching
- Items are sorted when added
- Really good for doing set operations on!



### Cons

- Cannot loop over using index (must use iterator)
- Does not have indexes



### Typical use cases

- Unique words in a book
- Lottery ticket numbers



## Which data structure to choose?



![Screenshot 2021-03-05 at 15.34.14](./assets/which-data-structure.png)



| Java class                          | elements in order | insert    | add                         | find                 | delete                            |
| ----------------------------------- | ----------------- | --------- | --------------------------- | -------------------- | --------------------------------- |
| ArrayList                           | true              | O(n)      | O(1)                        | O(n) (unless sorted) | O(1) if last, O(n) in general.    |
| LinkedList                          | true              | O(n)      | O(1) if added in either end | O(n)                 | O(n) in the middle, O(1) at ends. |
| HashMap                             | false             | O(1)      | O(1)                        | O(1)                 | O(1)                              |
| TreeMap                             | true              | O(log(n)) | O(log(n))                   | O(log(n))            | O(log(n))                         |
| Sets (like list, but no dublicates) | false             | O(1)      | O(1)                        | O(1)                 | O(1)                              |
| Array                               | true              | -         | -                           | O(n)                 | -                                 |

The two datastructures which will cover 90% of your needs are **ArrayList** and **HashMap**.





## Exercise

Vi har de her krav til noget vi skal implementere. Hvilken data struktur skal vi vælge. 



**Map**

can group all the words in a book by length and report how many words there are of each length. Maps can associate chat users with their set of friends and buddies. Maps can even represent a family tree associating each person with his or her mother and father. Adress who lives where? 

1. Imagine a method which will get an array of Strings, each String being will contain just one word. You need to answer how many different words are there in the array. Which collection is well suited for this?
   - For example: ["up","down","ip","a","a", "up", "down"] will return 4 (up, down, ip, a).
2. This time you will still read the same file, but afterwards you are asked to write out how many times each word occured in the list. Which collection is well suited for this?
   - for example: ["up","down","ip","a","a", "up", "down"] will print "up: 2, down: 2, ip: 1, a: 2 
3. 

