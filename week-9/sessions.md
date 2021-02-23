# Sessions

When developing web applications sometimes we need to store data for a user. That could fx be to save data for a logged in user. It could also be to store previous searches from a user like Google maps does. 

Now the problem with that is that HTTP is stateless. This means that there is no state stored in a request. Each request is a completely new request.



This problem is solved using sessions. 



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



### Creating a session in Spring boot

For creating the session in Spring boot we will be working with two specific classes:

- `HttpServletRequest` - Represents the request. It lives from the controller receives the request to a response is sent to the browser. Once the `request` object has been responded, the `request` object will be deleted. Said another way: The request scope ends when the associated response is finished.
- `HttpSession` - The session lives across multiple requests. The session scope ends when the session has been timed out by the client or server. 



Let's get to a real example:

```java
@GetMapping("set-session")
@ResponseBody
public String setSession(HttpServletRequest request, @RequestParam("title") String title) {
    HttpSession session = request.getSession();
    session.setAttribute("title", title);
  
    return title + " saved in the session";
}

@GetMapping("get-session")
@ResponseBody
public String getSession(HttpServletRequest request) {
    HttpSession session = request.getSession();
    String title = (String) session.getAttribute("title");
  
    return title;
}

@GetMapping("invalidate-session")
@ResponseBody
public String invalidateSession(HttpServletRequest request) {
    HttpSession session = request.getSession();
  	session.invalidate();

  	return "Session invalidated";
}
```

Lets disect what happens here:

- `request.getSession() ` to get the session we use the `getSession` method on the request
- `session.setAttribute("key", "value")` - Will save some data in the session. It will be in a key value format. Save this value at this key.
- `session.getAttribute("key")` - Will get some value at the specified key.
- `session.invalidate()` will invalidate/delete the session







https://docs.spring.io/spring-session/docs/current/reference/html5/guides/java-jdbc.html

https://attacomsian.com/blog/thymeleaf-get-session-attributes



## Glossary

Contains words and their explanation