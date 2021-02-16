# Cache

When building websites its off course important that the website is fast. So what exactly makes a website slow? Lots of different thing, but fetching data from an api, getting data out of a database and just generally calls that takes a long time off course make a website slow. 

to fix that problem we can use a cache. A cache works by storing data in memory which is super fast. The process works like this

```java
// Method for getting a users data
public UserData getUserData() {
  // First check if the users data is already in the cache
  if(usersCache.has(userId)) {
    // If the data for a user is the return that data
    // this call is super fast!
    return usersCache.get(userId);
  } else {
    // If the data for the user is not in the cache
    // Then we need to fetch that data
    // This call is super slow
    UserData userData = UserRepository.getDataFromDatabase(userId);
    // Now we set add the users data to the cache
    // so that next time we ask for that data we return it from the cache not the database!
    usersCache.set(userId, userData);
  }
}
```



It is your job to create a `Cache` class. It should be implemented as a `HashMap`. 



It has to have these methods

| Method name       | Method description                                           |
| ----------------- | ------------------------------------------------------------ |
| `get(key)`        | Should retrun the value stored in the `key`                  |
| `set(key, value)` | Should add the `value` to the `key`                          |
| `has(key)`        | Should return a `Boolean` indicating if there is data for the `key` |

Måske også tilføje invalidate, redigere, slette???

Ku være fedt med et praktisk eksempel. Måske hvis de fx skulle lave et kald der ventede 3 sekunder og så returnerede noget data. Og at de så brugte det som eksempel for at vise hvordan en cache virker.