1)Post Article

Method:/POST

```JSON
URL:http://localhost:3000/posts
BODY:
{
  "post": {
    "title": "Sample Post",
    "topic": "Technology",
    "featured_image": "https://example.com/image.jpg",
    "text": "This is the content of the post.",
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
7) GET POST with ID

```JSON
URL: http://localhost:3000/posts/:postid
Method:GET
Response:
{
    "id": 1,
    "title": "Updated Post Title",
    "topic": "Technology",
    "featured_image": "https://example.com/image.jpg",
    "text": "This is the updated content of the post.",
    "published_at": "2023-08-04T12:00:00.000Z",
    "author": "John Doe",
    "created_at": "2023-08-04T06:08:47.471Z",
    "updated_at": "2023-08-06T05:49:10.455Z",
    "comments": [
        {
            "id": 1,
            "post_id": 1,
            "text": "This is the comment text.",
            "created_at": "2023-08-04T06:28:13.318Z",
            "updated_at": "2023-08-04T06:28:13.318Z"
        },
        {
            "id": 2,
            "post_id": 1,
            "text": "This is a new comment.",
            "created_at": "2023-08-06T05:53:08.625Z",
            "updated_at": "2023-08-06T05:53:08.625Z"
        }
    ],
    "likes": []
}
```

8) GET ALL POST
```JSON
URL:http://localhost:3000/posts
Method:GET
Response:

{
    "id": 1,
    "title": "Updated Post Title",
    "topic": "Technology",
    "featured_image": "https://example.com/image.jpg",
    "text": "This is the updated content of the post.",
    "published_at": "2023-08-04T12:00:00.000Z",
    "author": "John Doe",
    "created_at": "2023-08-04T06:08:47.471Z",
    "updated_at": "2023-08-06T05:49:10.455Z",
    "comments": [
        {
            "id": 1,
            "post_id": 1,
            "text": "This is the comment text.",
            "created_at": "2023-08-04T06:28:13.318Z",
            "updated_at": "2023-08-04T06:28:13.318Z"
        },
        {
            "id": 2,
            "post_id": 1,
            "text": "This is a new comment.",
            "created_at": "2023-08-06T05:53:08.625Z",
            "updated_at": "2023-08-06T05:53:08.625Z"
        }
    ],
    "likes": []
},

{
    "id": 2,
    "title": "Post Title-2",
    "topic": "Technology-1",
    "featured_image": "https://example.com/image.jpg",
    "text": "This is the updated content of the post.",
    "published_at": "2023-08-04T12:00:00.000Z",
    "author": "John Doe",
    "created_at": "2023-08-04T06:08:47.471Z",
    "updated_at": "2023-08-06T05:49:10.455Z",
    "comments": [
        {
            "id": 1,
            "post_id": 1,
            "text": "This is the comment text.",
            "created_at": "2023-08-04T06:28:13.318Z",
            "updated_at": "2023-08-04T06:28:13.318Z"
        },
        {
            "id": 2,
            "post_id": 1,
            "text": "This is a new comment.",
            "created_at": "2023-08-06T05:53:08.625Z",
            "updated_at": "2023-08-06T05:53:08.625Z"
        }
    ],
    "likes": []
}
```

9) DELETE POST
```JSON
URL:http://localhost:3000/posts/:id
Method:DELETE
Response:status code 204
```
