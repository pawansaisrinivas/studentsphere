<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>
    <header>
        <h1><center>Admin Dashboard</center></h1>
    </header>

    <main>
        <!-- Student List Title -->
        <h2 style="text-align: center; margin-bottom: 20px; color: white;">Student List</h2>
        
        <div class="table-container">
            <!-- Add New Student Button -->
            <div style="margin-bottom: 20px; text-align: center;">
                <a href="/customer/add" class="action-button add-button">Add New Student</a>
            </div>
            
            <table class="customer-table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Gender</th>
                        <th>Date of Birth</th>
                        <th>Email</th>
                        <th>Location</th>
                        <th>Contact</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="customer" items="${customers}">
                        <tr>
                            <td>${customer.id}</td>
                            <td>${customer.name}</td>
                            <td>${customer.gender}</td>
                            <td>${customer.dob}</td>
                            <td>${customer.email}</td>
                            <td>${customer.location}</td>
                            <td>${customer.contact}</td>
                            <td>
                                <a href="/customer/edit/${customer.id}" class="action-button edit-button">Edit</a>
                                &nbsp;|&nbsp;
                                <a href="/customer/delete/${customer.id}" class="action-button delete-button"
                                   onclick="return confirm('Are you sure you want to delete this customer?')">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </main>
</body>
</html>
