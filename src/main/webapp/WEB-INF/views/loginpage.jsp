<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<body> 
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Page</title>
  <style>
    .logo {
      width: 150px;
      height: auto;
    }

    header {
      padding: 20px;
      background-color: #f5f5f5;
    }
  </style>
  </head>
    
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Log in to spotify</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
      background-color: #121212;
      color: #ffffff;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .login-container {
      background-color: #1e1e1e;
      padding: 40px;
      border-radius: 12px;
      width: 360px;
      box-shadow: 0 8px 24px rgba(0, 0, 0, 0.5);
      text-align: center;
    }

    .login-container h2 {
      margin-bottom: 20px;
      font-weight: 700;
    }

    .login-container input[type="email"],
    .login-container input[type="password"] {
      width: 100%;
      padding: 14px;
      margin: 10px 0;
      border: none;
      border-radius: 8px;
      background-color: #2a2a2a;
      color: white;
      font-size: 14px;
    }

    .login-container input::placeholder {
      color: #b3b3b3;
    }

    .login-container button {
      width: 100%;
      padding: 14px;
      background-color: #1ed760;
      border: none;
      border-radius: 25px;
      color: #000000;
      font-weight: bold;
      font-size: 16px;
      margin-top: 20px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    .login-container button:hover {
      background-color: #1fdf64;
    }

    .login-container .signup-link {
      margin-top: 20px;
      font-size: 14px;
    }

    .login-container .signup-link a {
      color: #1ed760;
      text-decoration: none;
    }

    .login-container .signup-link a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <div class="login-container">
    <!-- <img src="https://upload.wikimedia.org/wikipedia/commons/2/26/Spotify_logo_with_text.svg" alt="App Logo" width="120"> -->
    <h2>Log in</h2>
   <form action="/login/get-login-details"method="get">
   <input type="email" placeholder="Email address" name="uname" />
    <input type="password" placeholder="Password" name="password"/>
    <button class="login-btn"type="submit">Login</button>
    <div class="signup-link">
      Don't have an account? <a href="/login/signup">Sign up</a>
    </div></form> 
    
  </div>
</body>
</html>
