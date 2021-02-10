# Html/css

Why are we even talking about html and css??



## Overview

- Difference between HTML and css (https://www.reddit.com/)'
- HTML
  - What is html?
  - Tags
  - Attributes
  - Elements
  - Exercise 1
- HTML DOM
- Naming html elements



## HTML



### What is HTML?

HTML stands for Hypertext Markup Language. **Hypertext** is text displayed on a display. **Markup language** is a computer language that  uses tags to define elements. You could say that html is a language that has specific rules just like JSON, XML or a Java file, that uses tags to define individual elements like the header tag, link tag or others.



### How to create an html file

Simply create a new file with the file ending `.html` fx `index.html` or `about.html`

In this file you can write html. To open the rendered html file, open the file in a browser (usually you can just double click the file)



#### Whats up with the index.html file??

The `index.html` file has always been used as the default html page. So usually when navigating to a websites main page. The `index.html` file will be served.



### HTML tags

There are lots of different html tags! Here are a few:

- `h1` defines a header tag - `<h1>Buy okay products</h1>`
- `a` defines a link tag - `<a href="www.telmore.dk">Go to Telmore website</a>`
- `footer` defines a footer element - `<footer>Adress: copenhagen street 1, 2300 Copenhagen</footer>`

Find more tags by googling somthing like `html tags`. This site i can generally recommend: https://developer.mozilla.org/en-US/docs/Web/HTML/Element 



#### Standard tags (non-semantic)

These are more "basic" tags like `div`, `p`, `span`

The tags tell nothing about the content



#### Semantic tags

`header`, `footer`, `nav`, `section`. These tags describes the content more. Both for the user but also for the computer. 

Writing good semantic html should always be the goal!



### HTML attributes

HTML attributes is used for adding information to a tag. There are **tons** of html attributes. I will give a few examples:

`<a href="www.telmore.dk">Go to Telmore website</a>` - `href` is an attribute that decides what link to go to when the link is clicked.

`<div class="user-name">Benjamin Hughes</div>` - `class` is the attribute defining an identifier for an element.



### HTML elements

An html element is the tag together with the content. So fx `<p></p>` is just the `p` tag. `<p>This is the content</p>` this would be a `p` html element.



*Exercise*

Spend 5 min in a breakout room. investigating a specific tag. Investigate these things:

1. What the tag does
2. When to use it
3. How it can be used (practical code example)



Here are the tags for each group

- Group 1 - header tag
- Group 2 - ul and li tag
- Group 3 - img tag
- Group 4 - section tag
- Group 5 - head tag
- Group 6 - nav tag

I will pick two groups to present their findings for the class



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



![document object model - DOM in JavaScript](/Users/benjamin-hughes/Documents/projects/dat20-classes/week-1/assets/dom.png)



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

Lets create a portfolio! You are more than welcome to add css but please focus on writing good clean html!

I want these tags in the portfolio! 

- Head
  - Title
- Header
  - Nav
- Main
- Secion
- Footer
- Image



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



Try use this checklist for writing good html!

- [ ] Are the class names and id’s semantic and do they describe the content of the tag?
- [ ] Has id’s and class names been used correctly.
- [ ] Has the correct tag been used. Fx is main, header, footer, section, nav used properly.
- [ ] Is the html correctly implemented. 
- [ ] Are there unnecessary wrappers?
- [ ] Has kebab-case been used?
- [ ] Has alt tags been written for images.

