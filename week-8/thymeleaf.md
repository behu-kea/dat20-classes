

# Thymeleaf

Go here for online version: https://behu.gitbook.io/kea/week-8/thymeleaf



Why are we even talking about thymeleaf?

Writing html directly in `Java` is very bad practice. Its also just not a pleasant experience. Like look at this:

```java
public String signUp() {
    return "<form action=\"/sign-up\" method=\"POST\">\n" +
            "            <input name=\"name\" placeholder=\"Put in your name\" type=\"text\">\n" +
            "            <input name=\"age\" placeholder=\"Put in your age\" type=\"text\">\n" +
            "            <button>Create new user</button>\n" +
            "        </form>";
}
```

Yikes...

---

When writing code its always good to seperate things out. We saw this with `html`, `css` and `js` aswell. Dont write css in your html, dont write js in your html and so forth. One of many reasons for this is that as a developer it can be hard to fx fix a problem if things are not separated. Imagine you are having a styling issue but you cannot find the issue in the css file. Now you have to look through html files aswell. This can be a huge pain in the a**. 

The same goes for Springboot applications! If we have a problem with some html, we expect to be able to fix that problem in an html file, not in some  `java` class!

This is where Thymeleaf comes in, it helps us with working in html files even though we have a java application!



## Learning goals

- Understand what Thymeleaf does and why we use it
- Create a simple template and use that te at an endpoint
- Sending data from the controller into the template using  `Model`



## Overview

- Understand what Thymeleaf does and why we use it
- Writing your first template
- Accessing data in templates



## What is Thymeleaf

Thymeleaf is a templating engine. It takes care of the view part of MVC (Model, View, Controller). In our case the view willl always be rendered in html. So it will serverside render our html.

- Thymeleaf helps us work with html files even though we are working in a java application
- It also helps us send data from the controller into the view (the hmtl file)

There are other templating engines out there, but Thymeleaf is well supported and documented and seems to be the main templating engine.



### Installing Thymeleaf

Then initializing your new project, add the `spring-boot-starter-thymeleaf` using the Spring Initializr



## Writing your first template

To create your first template, lets first create a simple hello-world example:



**Controller**

First lets create the controller. This controller handles the request that comes to `/hello-world`.

To return a template, return the name of the template as a string. Remember to not have a 

```java
@GetMapping(value = "hello-world")
public String renderHelloWorld() {
    return "hello-world.html";
}
```



**View**

To get a template to work, save the template under the location  `src/main/resources/templates`

The template below is called `src/main/resources/templates/hello-world.html`

```html
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
  <head>
      <title>Hello world</title>
  </head>
  <body>
      <main>
          <h1>Hello world</h1>
          <h2>This is our first template</h2>
      </main>
  </body>
</html>
```

`<!DOCTYPE html>`  tells the browser which version of html we will be using

There is one thing here that is different from a regular html file: ` xmlns:th="http://www.thymeleaf.org"`

This line prevents our IDE from complaining about the lack of a namespace definition for all those `th:*` attributes that we will be seeing in a second. 



![Screenshot 2021-02-16 at 11.24.12](./assets/first-template.png)



You can also create folders in the `templates` folder. Then in the controller you just also add the folder to the return fx `return products/product-header.html`



## Accessing data

Now we have created a simple example that renders some html. But what if we wanted to send some data from the controller into the view. What we will be looking at now:

We send data to the template using the `Model` class. 



**View**

```html
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Product</title>
</head>
  <body>
    <main>
        <h1 th:text="${title}">Default title</h1>
        <span th:text="${price}">Default title</span>
        <ul th:each="feature : ${features}">
            <li th:text="${feature}"></li>
        </ul>
    </main>
  </body>
</html>
```



**Controller**

```java
@GetMapping(value = "/product")
public String renderProduct(Model model) {
    String title = "Television";
    int price = 1000;
    ArrayList<String> features = new ArrayList<>();
    features.add("HD");
    features.add("Smart TV");
    features.add("Netflix");

    model.addAttribute("title", title);
    model.addAttribute("price", price);
    model.addAttribute("features", features);

    return "product.html";
}
```



*Exercise*

You have to create the model for the product. We have now added the television as simple variables directly in the controller. But that is not following proper MVC structure. It is your task now to create a `Produt` class that has the attributes `title`,  `price`,  `features`, `isOnSale`. 

Using the new `Product` class, create a product in the controller and add that to the view. Now render the view using the new class. 

**Optional** add `reviews` to the `Product` class and render the reviews.



## Continue on Social media exercise

Today we will be continuing work on the social media we started creating Monday. 

| Url          | Description                                                  |
| ------------ | ------------------------------------------------------------ |
| `/dashboard` | Render all the public posts                                  |
| `/submit`    | Is where a user can create a new social media post using a form. (should be created by now. Otherwise go to monday file) |
| `/success`   | Render that the social media post was successfully created. Maybe you want to add the post information. Fx this is the post that you created: title: "I love sunshine", Description... Should contain a link to go to `/dashboard` |
| /            | Add a home page for your site. Add a header, title, h1, and a good description |

