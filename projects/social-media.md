## Exercise time 🎉 

We would like to create a new social media! 

Therefore create a website where users can create a new social media post and see a list of all posts that were created. Use this repo as a starter for your project: https://github.com/behu-kea/new-social-media

The site should have these url's:

| Url            | Description                                                  | Method |
| -------------- | ------------------------------------------------------------ | ------ |
| `/submit`      | Is where a user can create a new social media post using a `form` Remember to add a `header` and a `footer `. How you implement the design for this page is up to you. | `GET`  |
| `/dashboard`   | Render all the public posts. Remember to add the `header` and the `footer ` shown in the design! | `GET`  |
| `/submit-post` | Where the `@PostMapping`  exists. This is where the data from the form is submitted! See more information about this page below. Remember to `redirect` to `/dashboard` | `POST` |



#### Post values

- Title
- Content
- Date
- Public/private
- Something that you come up with!



#### `/submit-post`

There are a few things going on in this endpoint:

- It gets the data sent from the `form`
- It should create a new `Post` object. `Post post = new Post(title, content, date, ...)`
- It should add the post to some `ArrayList` where you will store all the posts created. `posts.add(post)`
- Redirect to `/dashboard`



### Mockups

I have created a fantastic mockup with my amazing drawing skills!



#### `/dashboard`

![IMG_20210223_114517](./../week-8/assets/dashboard.png)



#### Add personal flair

To give this new social media a bit of edge, add something to the social media post. 

Maybe it's a site for dog lovers, so you add Dog name to the post

Maybe its a Dice lovers so you add their favorite dice number from 1-6

I would love to see a bit of creativity here :) 



### If you have time 👇

Add a success page after creating a new post!

| Url/endpoint | Description                                                  | Request method |
| ------------ | ------------------------------------------------------------ | -------------- |
| `/success`   | This is the page that shows that the social media post was successfully created. See the mockup! Should contain a link to go back to `/dashboard` (i for got to add this in the mockup) | `GET`          |
| /            | Add a home page for your site. Add a header, title, h1, and a good description of the site. Maybe you want to add an image aswell. Its up to you how it should look | `GET`          |

Redirect to the `/success` page! 

- In the `/success` page you need to render the `title`, `content`, `date` and `public/private` of the post that was created. To do this use query parameters in a redirect (go through the teaching material from monday to find out how that works)



#### `/success`

![IMG_20210223_114526](./../week-8/assets/success.png)



### Flow

So the flow is as follows:

1. User fills in information in the `form` found at  `/submit`
2. After the post is created the user is redirected to `/success` where the `title`, `content`, `date` and `public/private` of the post is shown. There is a link back to `/dashboard`

