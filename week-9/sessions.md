# Sessions

When developing web applications sometimes we need to store data for a user. That could fx be to save data for a logged in user. It could also be to store previous searches from a user like Google maps does. 

Now the problem with that is that HTTP is stateless. This means that there is no state stored in a request. Each request is a completely new request.



This problem is solved using sessions. 



Frustrerende semester, der er rigtigt meget der bliver smidt efter jeg som studerende!



## Learning objectives

- What is a session and why do we use it?
- Implementing session for spring boot
- Rendering sessions using Thymeleaf



## Sessions

In Spring boot sessions is implemented using cookies. Cookies is a small text file saved in the browser. This small text file gives the user an id so it knows who you are! Now every time you request a page from a specific domain, the `cookie` is sent wth the request. Now the server know who requested a specific page.



Here is a screenshot of how the cookie is stored in the browser

![Screenshot 2021-02-23 at 14.56.11](./assets/cookie-browser.png)



Here is a screenshot of how the cookie id is sent in the request

![Screenshot 2021-02-23 at 14.58.04](/Users/benjamin-hughes/Documents/projects/dat20-classes/week-9/assets/cookie-sent-on-request.png)



![Screenshot 2021-02-24 at 10.18.38](./assets/session-server.png)



### Creating a session in Spring boot

Firstly add the dependency that makes the sessions work:

```xml
<dependency>
    <groupId>org.springframework.session</groupId>
    <artifactId>spring-session-core</artifactId>
</dependency>
```



For creating the session in Spring boot we will be working with two specific classes:

- `HttpServletRequest` - Represents the request. It lives from the controller receives the request to a response is sent to the browser. Once the `request` object has been responded, the `request` object will be deleted. Said another way: The request scope ends when the associated response is finished.
- `HttpSession` - The session lives across multiple requests. The session scope ends when the session has been timed out by the client or server. 



Let's get to a real example:

```java
@GetMapping("/set-session")
@ResponseBody
public String setSession(HttpServletRequest request) {
    HttpSession session = request.getSession();
    session.setAttribute("username", "CookieMonster42");
  
    return "Username saved in the session";
}

@GetMapping("/get-session")
@ResponseBody
public String getSession(HttpServletRequest request) {
    HttpSession session = request.getSession();
    String username = (String) session.getAttribute("username");
  
    return username;
}

@GetMapping("/invalidate-session")
@ResponseBody
public String invalidateSession(HttpServletRequest request) {
    HttpSession session = request.getSession();
  	session.invalidate();

  	return "Session invalidated";
}
```

Lets disect what happens here:

There are 3 endpoints

1. `/set-session` - Here we save the value (`"CookieMonster42"`) that is stored under the key `"username"`
2. `/get-session` - Here we get the value stored under the `"username"` key
3. `/invalidate-session` - Here we invalidate (delete) the session



Let's dive into some of the code

- `request.getSession() ` to get the session we use the `getSession` method on the `request`

- `session.setAttribute("key", "value")` - Will save some data in the session. It will be in a key value format. Save this value at this key

- `session.getAttribute("key")` - Will get some value at the specified key
- `session.invalidate()` will invalidate/delete the session



Lets try and manually delete the cookie and see what happens.



### Session storage

For now the session is stored in memory in the spring boot application. It is possible to store it in a database aswell. 

https://docs.spring.io/spring-session/docs/current/reference/html5/guides/java-jdbc.html



### What can i save?

Anything you would like! `String`, `Integer`, `ArrayList`, some class it does not matter!



```java
@GetMapping("/set-users")
@ResponseBody
public String setSession(HttpServletRequest request) {
    HttpSession session = request.getSession();
    ArrayList<User> users = new ArrayList<>();
    User user1 = new User("benjamin", 23);
    User user2 = new User("peter", 45);
    users.add(user1);
    users.add(user2);
    session.setAttribute("users", users);

    return "two users saved in the session";
}

@GetMapping("/get-session")
@ResponseBody
public String getSession(HttpServletRequest request) {
  HttpSession session = request.getSession();
  List<User> users = (List<User>) session.getAttribute("users");

  return username.get(0).name;
}
```



## Sessions in Thymeleaf

To access the session in Thymeleaf simply use the `session`. We dont need to send the session from the `@Controller` to the view. 



```java
@GetMapping("/get-session-rendered")
public String getSessionRendered() {
    return "session.html";
}
```



**session.html**

```html
<div th:text="${session.username}">John Doe</div>
```



Since the sessions might not be there, its a good idea to check if they session data is available first:

```html
<div th:if="${session.containsKey('username')}" th:text="${session.email}"></div>
```



We can also use `session.size()` and `session.isEmpty()`



## Exercise time!



Lav den sådan at det hele handler om vejret! Men bare med de forksellige niveauer. 

- Så et er at de får en random by.
- Derefter kan brugeren gemme den by han er i. 
- Derefter gemme en liste af byer. Derefter finde vejret for de byer.

Lets create a website where users can 



### Save random city - level 1

Lets create a website where users can see the weather for different cities!



| Endpoint              | Description                                                  | Method |
| --------------------- | ------------------------------------------------------------ | ------ |
| `/assign-random-city` | At this endpoint the user gets a random city assigned.  We do three things:<br />1. We generate the random city (has been done) <br />2. We save that city in the session!<br />3. Return a string saying something like `Random city has been assigned` | `GET`  |
| `/get-random-cities`  | Here the user can see the city that was assigned (and saved in the session) at the endpoint `/assign-random-city` | `GET`  |



### Save list of cities - level 2

Now instead of just saving one city we will save a list of cities in the session. 

If i go to `/assign-random-city` twice and i get assigned `copenhagen` and `milano` then going to `/get-random-city` will render that list of cities. You can choose to just render the list directly (with `@ResponseBody` and just `return` the `ArrayList` of strings) or you can render them using Thymeleaf. That is up to you.





### Notes website - level 2

Now instead of randomly assigning a user a city, the user fills that out in a form! So instead of generating the random city you now have to create a `form` with one `input` where the user can write a city. 

Remember to create the endpoint that will get the city written in the `form` and add it to the session as a list of cities.

 To look at the code to study in the bottom to get inspired on how to do this! 



### Weather site - level 3

It should be possible for a user to add a new city. For each city added the user should see the weather for all of those cities

| url         | Description                                                  | Method |
| ----------- | ------------------------------------------------------------ | ------ |
| `/add-city` | A user should be able to add a city name and the users firstname using a `form` | `GET`  |
| `/`         | Should show the weather for the cities that have been added  | `GET`  |
| `save-city` | Should save the city name to the list of cities              | `POST` |

**Remember the GET, POST, REDIRECT pattern**



### Technicalities

For getting the weather data we will be using this service: https://home.openweathermap.org

To get an api so we can get weather, go here: https://openweathermap.org/api click on `Subscribe` for `Current Weather Data`. Follow the signup flow. When you are done you should have an API key.







## Glossary

Contains words and their explanation



## Session example to study

From this article: https://www.techgeeknext.com/spring-boot/spring-boot-session-management

```java
@Controller
public class SpringBootSessionController {
    @PostMapping("/addNote")
    public String addNote(@RequestParam("note") String note, HttpServletRequest request) {
        //get the notes from request session
        List<String> notes = (List<String>) request.getSession().getAttribute("NOTES_SESSION");
        //check if notes is present in session or not
        if (notes == null) {
            notes = new ArrayList<>();
            // if notes object is not present in session, set notes in the request session
            request.getSession().setAttribute("NOTES_SESSION", notes);
        }
        notes.add(note);
        request.getSession().setAttribute("NOTES_SESSION", notes);
        return "redirect:/home";
    }
    @GetMapping("/home")
    public String home(Model model, HttpSession session) {
        List<String> notes = (List<String>) session.getAttribute("NOTES_SESSION");
        model.addAttribute("notesSession", notes!=null? notes:new ArrayList<>());
        return "home";
    }
    @PostMapping("/invalidate/session")
    public String destroySession(HttpServletRequest request) {
        //invalidate the session , this will clear the data from configured database (Mysql/redis/hazelcast)
        request.getSession().invalidate();
        return "redirect:/home";
    }
}
```