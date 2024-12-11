<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="styles.css"> <!-- Link to a CSS file for styling -->
    <style>
        /* Basic styling for the navbar */
        .navbar {
            background-color: #333; /* Dark background */
            overflow: hidden; /* Clear floats */
            display: flex; /* Flex layout for horizontal alignment */
            justify-content: space-between; /* Space out items */
            padding: 10px 20px;
        }

        .navbar a {
            color: white; /* White text */
            text-decoration: none; /* Remove underline */
            padding: 10px 15px;
            font-size: 16px;
            display: block;
            transition: background-color 0.3s ease;
        }

        .navbar a:hover {
            background-color: #575757; /* Highlight on hover */
            border-radius: 5px;
        }

        .navbar .logo {
            font-size: 20px;
            font-weight: bold;
        }

        .navbar .menu {
            display: flex; /* Horizontal menu */
        }
    </style>
</head>
<body>
    <div class="navbar">
        <!-- Logo or Brand Name -->
        <div class="logo">Student Portal</div>
        
        <!-- Navigation Links -->
        <div class="menu">
            <a href="studentprofile.jsp">Student Profile</a>
            <a href="submissions.jsp">Submissions</a>
            <a href="tasks.jsp">Tasks</a>
            <a href="customerlogin.jsp">Logout</a>
        </div>
    </div>
</body>
</html>
