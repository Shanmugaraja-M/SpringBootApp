<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.example.SBDemoPrg.Entity.StudentDetailsEntity" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Details</title>
</head>
<body>

<div class="navbar">
    <div class="logo">
        <h2> Student Details Registration </h2>
    </div>

    <div class="nav-items">
        <p><button onclick="location.href='/student-details/home'">Home</button></p>
        <p><button onclick="location.href='/login/getdetails'">Get Details</button></p>
    </div>
</div>

<h1>Student Details</h1>

<div class="outdiv">
    <table>
        <tr>
            <th>Roll No</th>
            <th>Name</th>
            <th>Department</th>
            <th>Actions</th>
        </tr>

        <%
            List<StudentDetailsEntity> students = (List<StudentDetailsEntity>) request.getAttribute("students");
            if (students != null && !students.isEmpty()) {
                for (StudentDetailsEntity student : students) {
        %>
        <tr>
            <td><%= student.getRollNo() %></td>
            <td><%= student.getName() %></td>
            <td><%= student.getDept() %></td>
            <td>
           <button onclick="location.href='/student-details/update?rollNo=<%= student.getRollNo() %>'">Update</button>
<button onclick="confirmDelete('<%= student.getRollNo() %>')">Delete</button>
</td>
        </tr>
        <%
                }
            } else {
        %>
        <tr><td colspan="4">No students found.</td></tr>
        <%
            }
        %>
    </table>
</div>

<script>
    function confirmDelete(rollNo) {
        if (confirm("Are you sure you want to delete this student?")) {
            window.location.href = '/student-details/delete?rollNo=' + rollNo;
        }
    }
</script>


</body>
</html>


<style>
    body {
        margin: 0;
        padding: 0;
        background-color:black ;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        display: flex;
        flex-direction: column;
        align-items: center;
        background-size: cover;
    }

    h1 {
        text-align: center;
        color: white;
        margin-top: 30px;
        text-shadow: 1px 1px 4px black;
    }

    .outdiv {
        background-color: rgba(0, 0, 0, 0.8);
        border-radius: 10px;
        padding: 30px;
        margin: 40px auto;
        width: 90%;
        max-width: 900px;
        box-shadow: 0 0 20px rgba(0, 128, 0, 0.5);
    }

    table {
        width: 100%;
        border-collapse: collapse;
        background-color: white;
        border-radius: 8px;
        overflow: hidden;
    }

    th {
        background-color: #006400; /* Dark Green */
        color: white;
        padding: 12px;
        text-align: left;
        font-weight: 600;
    }

    td {
        padding: 10px;
        color: black;
    }

    tr:nth-child(even) {
        background-color: #f0fff0; /* Light Green Tint */
    }

    tr:hover {
        background-color: #c0f0c0;
    }
    
    .navbar {
        display: flex;
        justify-content: space-between;
        align-items: center;
        width: 100%;
        margin-top: 8px;
        margin-bottom: 7px;
        padding: 10px 20px;
        background-color: black;
        height: 53px;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0, 128, 0, 0.7);
    }

    .logo {
        color: white;
        position: relative;
        left: 10px;
    }

    .nav-items {
        display: flex;
        align-items: center;
        gap: 10px;
    }

    .nav-items button {
        padding: 8px 16px;
        border: none;
        border-radius: 8px;
        background-color: #006400;
        color: white;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .nav-items button:hover {
        background-color: #00cc00;
    }
    
    /* Style for Update and Delete buttons inside the table */
table button {
    padding: 6px 12px;
    margin-right: 5px;
    border: none;
    border-radius: 6px;
    color: white;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.1s ease;
}

/* Update Button - Green */
table button:nth-child(1) {
    background-color: #006400;
}

table button:nth-child(1):hover {
    background-color: #00cc00;
    transform: scale(1.05);
}

/* Delete Button - Red */
table button:nth-child(2) {
    background-color: #8B0000;
}

table button:nth-child(2):hover {
    background-color: #FF0000;
    transform: scale(1.05);
}
    
</style>
