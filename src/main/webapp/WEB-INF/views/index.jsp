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
        background-color: black;
        color: white;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        height: 100vh;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
    }

    h1 {
        color: #00cc00;
        margin-bottom: 20px;
        text-shadow: 1px 1px 4px #003300;
    }

    form {
        background-color: #1a1a1a;
        padding: 30px 40px;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0, 255, 0, 0.5);
        display: flex;
        flex-direction: column;
        gap: 15px;
        width: 300px;
    }

    input[type="text"] {
        padding: 10px;
        border-radius: 5px;
        border: 1px solid #00cc00;
        background-color: #333;
        color: white;
        outline: none;
    }

    input[type="text"]::placeholder {
        color: #aaa;
    }

    input[type="submit"] {
        background-color: #00cc00;
        color: black;
        padding: 10px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-weight: bold;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #00ff00;
    }

</style>

</head>
<body>
<h1>Student Management System</h1>
<form action="/student-details/submit" method="post">
   
   <label>Name:</label>
   <input type="text" name="name" placeholder="Enter Name">
   
   <label>Roll No:</label>
   <input type="text" name="rollNo" placeholder="Enter Roll No">
   
   <label>Department:</label>
   <input type="text" name="department" placeholder="Enter Department">
   
   <input type="submit" value="Submit">
   
</form>
</body>
</html>
