# Html/css

This document can be found online here: https://github.com/behu-kea/dat20-classes/blob/master/week-1/html-css-monday-10-02-2021.md



**Why are we even talking about html and css?**

Html and css is 2 or 3 building blocks of all websites which are html, css and javascript. 

it is hugely important and writing good html can save a company millions! 



## HTML



### What is HTML?

HTML stands for Hypertext Markup Language. **Hypertext** is text displayed on a display. **Markup language** is a computer language that  uses tags to define elements. You could say that html is a language that has specific rules just like JSON, XML or a Java file, that uses tags to define individual elements like the header tag, link tag or others.



### How to create an html file

Simply create a new file with the file ending `.html` fx `index.html` or `about.html`

In this file you can write html. To open the rendered html file, open the file in a browser (usually you can just double click the file)

*Teacher note*: Create a simple html file and add some simple tags



#### Whats up with the index.html file??

The `index.html` file has always been used as the default html page. So usually when navigating to a websites main page. The `index.html` file will be served.



### HTML tags

To write open a tag, you you write this: `<p>` where `p` is the tag name. To close the `p` tag write this `</p>`. What you write inbetween is the content of the tag. `<p>this is the content of the p tag</p>`

There are a few tags that are **self closing** like fx a line break tag: `<br/>` or an image tag `<img src="https://someurl.dk" />`



There are lots of different html tags! Here are a few:

- `h1` defines a header tag - `<h1>Buy okay products</h1>`
- `a` defines a link tag - `<a href="www.telmore.dk">Go to Telmore website</a>`
- `footer` defines a footer element - `<footer>Adress: copenhagen street 1, 2300 Copenhagen</footer>`

Find more tags by googling somthing like `html tags`. This site i can generally recommend: https://developer.mozilla.org/en-US/docs/Web/HTML/Element 



### HTML attributes

HTML attributes is used for adding information to a tag. There are **tons** of html attributes. I will give a few examples:

`<a href="www.telmore.dk">Go to Telmore website</a>` - `href` is an attribute that decides what link to go to when the link is clicked.

`<div class="user-name">Benjamin Hughes</div>` - `class` is the attribute defining an identifier for an element.



### HTML elements

An html element is the tag together with the content. So fx `<p></p>` is just the `p` tag. `<p>This is the content</p>` this would be a `p` html element.



*Exercise*

Spend 10 min in a breakout room. investigating a specific tag. Investigate these things:

1. What the tag does
2. When to use it
3. How it can be used (practical code example)



Here are the tags for each group

- Group 1 - header tag
- Group 2 - ul and ol tag
- Group 3 - img tag
- Group 4 - section tag
- Group 5 - head tag
- Group 6 - nav tag

I will pick two groups to present their findings for the class



### HTML document structure

An html document is divided into different parts:

```html
<html>
    <!-- inside of the html tag is where all your html will go -->
    <head>
        <!-- This is where you put meta information about the page: favicon, title, social media tags etc -->
    </head>
    <body>
        <!-- In the body is where you put the content of your website -->
        <main>
            <header>
                <!-- In the header you have things like the logo and navigation-->
                <a href="/">Ebai</a>
            </header>
            <section class="intro">
                <h1>Welcome to our wonderful site</h1>
            </section>
            <section class="products">
                <ul>
                    <li>Tv</li>
                    <li>Mobile</li>
                    <li>Washing machine</li>
                </ul>
            </section>
        </main>
        <footer>
            <!-- In the footer you have things like contact information, links, address-->
        </footer>
    </body>
</html>
```



![Image not loaded go to https://github.com/behu-kea/dat20-classes/blob/master/week-1/assets/layout.png to see image](./assets/layout.png)



Let's go to https://www.amsiq.com/da and see if we can identify the different areas. 



## HTML DOM

DOM stands for Document Object Model. It is a representation of the html elements! The individual html elements are represented as nodes. 



#### Why do we even have the DOM? What is it used for?

The browser uses the DOM to render a page. So a browser takes your html, transforms it into the DOM and then it starts rendering the DOM. 

When working with javascript you will actively be using this DOM. You dont need to understand the code. This is simply an example to show that the DOM is a very concrete and real thing. 

```js
// The document object model
const dom = window.document;
// Here we are grabbing a specific node (the html element div with the class of user-name)
const usernameDomNode = dom.querySelector('div.user-name');
// Now we are changing the text inside of the node
usernameDomNode.innerHTML = "Heriette Hansen";
```



![Image not loaded go to https://github.com/behu-kea/dat20-classes/blob/master/week-1/assets/dom.png to see image](./assets/dom.png)



The nodes have relationships between each other. 

- Who is the parent of the `body`?
- What relationship does the `div` with id `div1`  has to the `h1`?
- Who is the `h1`'s grandparent?
- How many children does the `HTML` element have?

If all of this is a bit confusing i get it! Try go [here](https://software.hixie.ch/utilities/js/live-dom-viewer/ ) where you can see the html file, the DOM and the rendered html.



## Naming HTML elements

Why should we even name our html elements? Mostly it's for targeting when writing css and javascript. So fx if we wanted to change the text color of a `h2` tag. Then we would need to tell for what tag the text color should be changed. The same with js, if we wanted to change the text of an h2 we would need to select that element first. Here namin is super useful!

There are 2 main ways of naming:

1. **Class** - `<p class="alert-message">SOMETHING WENT WRONG!!!</p>`. 
   - The same class can be used for multiple elements
   - You can use multiple classes on a single element
2. **Id** - `<p id="alert-message">SOMETHING WENT WRONG!!!</p>`.
   - Id's should be used for unique elements
   - The same id should not be used for an element
   - `id`'s should be very rarely used! 



Use hyphen between names (https://google.github.io/styleguide/htmlcssguide.html#ID_and_Class_Name_Delimiters) and always lowercase! So not `UserName` but `user-name`, `productList` to `product-list`



### How to write good html

- Write semantic html. Try and really think about what tag you are using
- Give good names to the element where naming makes sense



*Exercise*

Lets create a portfolio! I would encourage you to use this portfolio as your actual portfolio that you can show interested employeers.

You are more than welcome to add css but please focus on writing good clean html! Thursday we will be working with styling your portfolio. 

I want **at least** these tags in the portfolio! 

- Head
  - Title
- Header
  - Nav
- Main
- Section
- Footer
- Img
- Ul or Ol



Content:

- Introduction that describes yourself
- List of educations
- List of jobs
- A footer with contact information




Here are some amazing examples of portfolios you can get inspired from

- https://benna100.github.io/portfolio/ 😆
- http://findmatthew.com/
- https://ejosue.com/
- https://kyleledbetter.com/



To check the html of some website. Right click on the mouse and go to `inspect elements`. On safari you need tto enable it. Google something like `safari inspect elements`.  



Try use this checklist for writing good html!

- [ ] Are the class names and id’s semantic and do they describe the content of the tag?
- [ ] Has id’s and class names been used correctly.
- [ ] Has the correct tag been used. Fx is main, header, footer, section, nav used properly.
- [ ] Is the html correctly implemented. 
- [ ] Are there unnecessary wrappers?
- [ ] Has kebab-case been used?
- [ ] Has alt tags been written for images.



### Deploy your website to the web

- Create a new repository on GitHub. 
- Add your `index.html` to that repo. 
- Go to `settings` for that repo. 
- Scroll down to where it says `GitHub Pages`. 
- Where it says `source`, select `master` and then save. 
- If you scroll back down you can see the url for your new portfolio! it should be called `https://YOUR_GITHUB_USERNAME.github.io/YOUR_REPO_NAME/    `

Now everytime you push changes to `master` your website will be updated!



### What we did not have time for

- Aria
- Forms (this we will get into later)