# EchoNet Social Media

**Where Your Voice Echoes**

EchoNet is a social media platform concept designed for posting updates, connecting with communities, following users, and discovering trending topics.

## Features

- Create posts
- View a social feed
- User profile data model
- Followers and following model
- Trending topics sidebar
- Responsive layout
- Backend API starter using Node.js, Express, and MongoDB

## Tech Stack

**Frontend**
- HTML
- CSS
- JavaScript

**Backend**
- Node.js
- Express
- MongoDB
- Mongoose
- CORS

## Project Structure

```text
EchoNet-Social-Media/
├── README.md
├── frontend/
│   ├── index.html
│   ├── styles.css
│   └── script.js
├── backend/
│   ├── package.json
│   ├── server.js
│   ├── models/
│   │   ├── User.js
│   │   └── Post.js
│   └── routes/
│       └── posts.js
└── database/
    └── EchoNet_Database.sql
```

## Run the Frontend

Open this file in your browser:

```text
frontend/index.html
```

## Run the Backend

```bash
cd backend
npm install
npm start
```

The backend runs on:

```text
http://localhost:5000
```

## API Routes

### Get all posts

```http
GET /posts
```

### Create a post

```http
POST /posts
```

Example body:

```json
{
  "userId": "demo-user",
  "username": "@you",
  "text": "Hello EchoNet!"
}
```

## Future Ideas

- Login and registration
- User profiles
- Real-time messaging
- Image uploads
- Likes and comments
- Communities
- Voice posts
