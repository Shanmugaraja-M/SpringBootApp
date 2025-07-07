<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
            background-color: #121212;
            color: #f8f6f6;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .signup-container {
            background-color: #1e1e1e;
            padding: 40px;
            border-radius: 12px;
            width: 360px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.5);
            text-align: center;
        }

        .signup-container h2 {
            margin-bottom: 20px;
            font-weight: 700;
        }

        .signup-container input[type="text"],
        .signup-container input[type="email"],
        .signup-container input[type="password"] {
            width: 100%;
            padding: 14px;
            margin: 10px 0;
            border: none;
            border-radius: 8px;
            background-color: #2a2a2a;
            color: white;
            font-size: 14px;
        }

        .signup-container input::placeholder {
            color: #b3b3b3;
        }

        .signup-container button {
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

        .signup-container button:hover {
            background-color: #1fdf64;
        }

        .signup-container .terms {
            font-size: 12px;
            color: #b3b3b3;
            margin-top: 20px;
        }

        .signup-container .terms a {
            color: #1ed760;
            text-decoration: none;
        }

        .signup-container .terms a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="signup-container">
        <!--<img src="https://upload.wikimedia.org/wikipedia/commons/2/26/Spotify_logo_with_text.svg" alt="App Logo" width="120">-->
        <h2>Sign up </h2>
        <form action="/login/save-signup-details"method="post">
        <input type="text" placeholder="Username" name="username"/>
        <input type="email" placeholder="Email address"name="email" />
        <input type="password" placeholder="Password"name="password" />
        <button>Sign Up</button>
        <div class="terms">
            By signing up, you agree to the <a href="#">Terms & Conditions</a>.
        </div></form>
        
    </div>
</body>
</html>
