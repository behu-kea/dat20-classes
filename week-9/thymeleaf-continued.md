# Thymeleaf continued

Last week we familarized ourselves with Thymeleaf. We can use Thymeleaf for more advanced scenarios that we will be looking at today.



## Why are we even continuing talking about Thymeleaf





## Learning goals

- Thymelear syntax (variable, expressions)
- Thymeleaf fragments
- Iterating a list of objects



## Thymeleaf syntax

There is quite a bit of detail in the Thymeleaf syntax. I will be highlighting the most important ones here, but you can further explore here: https://www.thymeleaf.org/doc/tutorials/3.0/usingthymeleaf.html#standard-expression-syntax



### Messages

Messages bliver brugt til at bygge sider der kan understøtte flere sprog. 



`#{home.welcome}`



### Variables



###  Expressions on selections 

You can select an object

```html
<div th:object="${session.user}">
    <p>Name: <span th:text="*{firstName}">Sebastian</span>.</p>
    <p>Surname: <span th:text="*{lastName}">Pepper</span>.</p>
    <p>Nationality: <span th:text="*{nationality}">Saturn</span>.</p>
  </div>
```



These two are the same

```html
<div th:object="${session.user}">
  <p>Name: <span th:text="*{firstName}">Sebastian</span>.</p>
  <p>Surname: <span th:text="${session.user.lastName}">Pepper</span>.</p>
  <p>Nationality: <span th:text="*{nationality}">Saturn</span>.</p>
</div>
```



### Link url's

```html
<p>Please select an option</p>
<ol>
  <li><a href="product/list.html" th:href="@{/product/list}">Product List</a></li>
  <li><a href="order/list.html" th:href="@{/order/list}">Order List</a></li>
  <li><a href="subscribe.html" th:href="@{/subscribe}">Subscribe to our Newsletter</a></li>
  <li><a href="userprofile.html" th:href="@{/userprofile}">See User Profile</a></li>
</ol>
```



### Literal substitutions

```html
<span th:text="|Welcome to our application, ${user.name}!|">
```



## Fragments

On a standard website we probably have about 30 html pages. Imagine that you get the task to change the logo image in the header. Imaging going to every single one of those pages looking for the logo image, rewriting the image `src` but probably also the `alt` attribute. That would be quite a task and what if you forgot that one hidden page? Now you have the old logo showing to customers (this is something the author have literally done so its not even a thought up example 😆)

For exactly that reason we use fragments.



### What is fragments

Fragments is a way to reuse html on different pages. You could fx create a header fragment with the logo and the navigation links. Now when you create a new page, you simply use the Header fragment in that page. 



### Practical example

Lets add a `header` to another page

`src/main/resources/templates/fragments/header.html`

```html
<html xmlns:th="http://www.thymeleaf.org">
  <header>
  	<a href="/">
    	<img src="/logo.png" alt="Company logo" />
    </a>
    <nav>
    	<ul>
        <li><a href="home">Home</a></li>
      </ul>
    </nav>
  </header>
</html>
```



`src/main/resources/templates/product.html`

```html
<!DOCTYPE html>
<html xmlnd="http://thymeleaf.org">
	<header th:replace="fragments/header.html"></header>
  <body>
    <h1>Product page</h1>
  </body>
</html>
```



### Fragment Parameters

You can pass in parameters to your fragment! And it's nearly like just calling a method

`fragments/header.html`

```html
<html xmlns:th="http://www.thymeleaf.org">
  <header>
  	<a href="/">
    	<img src="/logo.png" alt="Company logo" />
    </a>
    <p th:text="${currentPage}"></p>
    <nav>
    	<ul>
        <li><a href="/">Home</a></li>
        <li><a href="/about">About</a></li>
      </ul>
    </nav>
  </header>
</html>
```



```html
<header th:replace="fragments/header.html(currentPage='home')"></header>
```





##### Fragment selector 

You can also select a specific part (fragment) of the fragment:

```html
<header th:replace="products/fragments/users-login.html :: logged-in"></header>
```

`/fragments/sers-login.html`

```html
<html xmlns:th="http://www.thymeleaf.org">
  <p th:fragment="logged-in">
      User logged in
  </p>
  <p th:fragment="logged-out">
      User logged out
  </p>
</html>
```



*Exercise*

Make it so that in the navigation part of the header the page you are currently on is highlighted



## Exercise

Lets continue working on our social media site. 

Lets create a `head`, `footer` and  `header` fragment. The fragment should as a parameter take the current page and highlight that on the page. Maybe with a bold text style. 

Create multilanguage support aswell!

Think about students that have not create the exercise. Should we start from scratch or maybe make a solution for them?

