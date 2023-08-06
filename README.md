1)Post Article

Method:/POST

```JSON
URL:http://localhost:3000/posts

{
  "post": {
    "title": "Sample Post",
    "topic": "Technology",
    "featured_image": "https://example.com/image.jpg",
    "text": "This is the content of the post.",
    "published_at": "2023-08-04T12:00:00",
    "author": "John Doe"
  }
}
```
2)Edit Article

Method:/PATCH

```JSON
url:http://localhost:3000/posts/:id

{
  "post": {
    "title": "Updated Post Title",
    "text": "This is the updated content of the post."
  }
}
```
3)Search

```JSON
url:http://localhost:3000/posts/search
method:POST

{
  "query": "technology"
}

```
4)User registration:

```JSON
URL: http://localhost:3000/users/register
Method: POST

{
  "user": {
    "username": "newuser",
    "email": "newuser@example.com",
    "password": "securepassword",
    "password_confirmation": "securepassword"
  }
}

```
5)User login:

```JSON
URL: http://localhost:3000/users/login
Method: POST
{
  "email": "newuser@example.com",
  "password": "securepassword"
}
```

6)Create a new comment on a post:
```JSON
URL: http://localhost:3000/posts/:post_id/comments 
Method: POST
{
  "comment": {
    "text": "This is a new comment."
  }
}
```

