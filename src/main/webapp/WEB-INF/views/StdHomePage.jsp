<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Management</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #000000, #1a1a1a, #333333);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            height: 100vh;
            overflow: hidden;
        }

        h1 {
            text-align: center;
            color: #00ffcc;
            margin-top: 50px;
            font-size: 48px;
            text-shadow: 2px 2px 8px rgba(0, 255, 204, 0.5);
            letter-spacing: 2px;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 70vh;
            flex-direction: column;
            gap: 25px;
        }

        .btn-link {
            text-decoration: none;
            background: linear-gradient(45deg, #00ffcc, #00b386);
            color: black;
            padding: 15px 35px;
            border-radius: 50px;
            font-size: 18px;
            font-weight: bold;
            box-shadow: 0 4px 15px rgba(0, 255, 204, 0.4);
            transition: all 0.4s ease;
            position: relative;
            overflow: hidden;
        }

        .btn-link::after {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: rgba(255, 255, 255, 0.2);
            transition: left 0.4s ease;
        }

        .btn-link:hover::after {
            left: 100%;
        }

        .btn-link:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 25px rgba(0, 255, 204, 0.6);
        }
    </style>
</head>
<body>

    <h1>Student Management System</h1>

    <div class="container">
        <a href="/student-details/getdetails" class="btn-link">View Student Details</a>
        <a href="/login/getdetails" class="btn-link">Student Details Entry</a>
        <a href="/login" class="btn-link">Logout</a>
    </div>

</body>
</html>
