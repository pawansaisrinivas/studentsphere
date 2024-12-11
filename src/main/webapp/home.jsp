<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home - Peer Review and Collaboration System</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <%@include file="mainnavbar.jsp" %>

    <!-- Header Section -->
    <header class="header">
        <h1><center>Welcome to the Peer Review and Collaboration System</center></h1>
        <p>Efficient collaboration and insightful peer reviews for better outcomes.</p>
    </header>

    <main>
        <!-- Features Section with Container Background -->
        <section class="features-container">
            <h2>Features</h2>
            <ul>
                <li><strong>Submit Assignments:</strong> Easily upload and manage your submissions.</li>
                <li><strong>Review Peers:</strong> Provide constructive feedback to improve quality.</li>
                <li><strong>Collaboration Tools:</strong> Engage with peers through discussions and shared documents.</li>
                <li><strong>Analytics:</strong> Track progress and performance over time.</li>
            </ul>
        </section>

        <!-- Get Started Section with Container Background -->
        <section class="get-started-container">
            <h2>Get Started</h2>
            <p><center>To begin, register or log in to access the platform's features:</center></p>
            <!-- Redirects to customerreg.jsp -->
            <a href="customerreg.jsp" class="button">Register</a>
            <!-- Redirects to customerlogin.jsp -->
            <a href="customerlogin.jsp" class="button">Login</a>
        </section>

        <!-- About Section with Container Background -->
        <section class="about-container">
            <h2>About the System</h2>
            <p>The Peer Review and Collaboration System is designed to streamline teamwork and evaluation processes, fostering better results and a more engaging learning environment. Whether you're a student, educator, or professional, this platform provides tools to enhance your workflow.</p>
        </section>
    </main>

</body>
</html>
