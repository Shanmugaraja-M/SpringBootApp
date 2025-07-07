<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="com.example.SBDemoPrg.Entity.StudentDetailsEntity" %>

<%
    StudentDetailsEntity student = (StudentDetailsEntity) request.getAttribute("student");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Student</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-color: black;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display: flex;
            flex-direction: column;
            align-items: center;
            background-size: cover;
        }

        h2 {
            text-align: center;
            color: white;
            margin-top: 30px;
            text-shadow: 1px 1px 4px black;
        }

        .form-container {
            background-color: rgba(0, 0, 0, 0.8);
            border-radius: 10px;
            padding: 30px;
            margin: 40px auto;
            width: 90%;
            max-width: 400px;
            box-shadow: 0 0 20px rgba(0, 128, 0, 0.5);
            color: white;
        }

        label {
            font-weight: bold;
            color: white;
            display: block;
            margin-top: 15px;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-top: 8px;
            border-radius: 5px;
            border: none;
            background-color: #f0fff0;
        }

        button {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #006400;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #00cc00;
        }
    </style>
</head>
<body>

<h2>Update Student Details</h2>

<div class="form-container">
    <form action="/student-details/update-student" method="post">
        <input type="hidden" name="id" value="<%= student.getId() %>">

        <label>Name:</label>
        <input type="text" name="name" value="<%= student.getName() %>" required>

        <label>Roll No:</label>
        <input type="text" name="rollNo" value="<%= student.getRollNo() %>" required>

        <label>Department:</label>
        <input type="text" name="dept" value="<%= student.getDept() %>" required>

        <button type="submit">Update</button>
    </form>
</div>

</body>
</html>
