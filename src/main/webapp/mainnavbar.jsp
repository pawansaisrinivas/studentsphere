<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="styles.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>JFSD</title>

<style>
  /* General Styles */
  body {
    font-family: Arial, sans-serif;
    background-color: white;
    text-align: center; /* Center all content in the body */
    margin: 0;
    padding: 0;
    color: white; /* Set global text color to white */
  }

  h1 {
    font-size: 2.5em;
    font-weight: bold;
    text-align: center;
    padding: 20px;
    color: white; /* Ensuring the header text is white */
  }

  /* Ribbon Style */
  .ribbon {
    position: absolute;
    top: 0;
    left: 50%;
    transform: translateX(-50%);
    width: 100%;
    background-color: #ff5733; /* Change to your desired color */
    color: white; /* Set ribbon text color to white */
    text-align: center;
    padding: 10px 0;
    font-size: 1.5em;
    font-weight: bold;
    box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.2);
  }

  /* Navigation Links */
  .nav-links {
    margin-top: 50px;
  }

  .nav-links a {
    font-size: 1.2em;
    text-decoration: none;
    margin: 0 15px;
    color: white; /* Set navigation links text color to white */
    font-weight: bold;
  }

  .nav-links a:hover {
    color: #ff5733; /* Change to match your ribbon color */
  }

  /* Center the content in the div */
  .container {
    max-width: 1200px;
    margin: 0 auto;
  }
</style>

</head>
<body>


<div class="container">
  <!-- Header -->
  <h1>Student Sphere</h1>
  
  <!-- Navigation Links -->
  <div class="nav-links">
    <a href="/">Home</a>&nbsp;&nbsp;
    <a href="customerreg">Student Registration</a>&nbsp;&nbsp;
    <a href="customerlogin">Student Login</a>&nbsp;&nbsp;
    <a href="adminlogin">Admin Login</a>&nbsp;&nbsp;
  </div>
</div>

</body>
</html>
