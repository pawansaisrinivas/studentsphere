<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Link the CSS file -->
<link rel="stylesheet" href="<c:url value='/css/styles.css' />">

<!-- Include admin navbar -->
<jsp:include page="adminnavbar.jsp" />

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Customers</title>
</head>
<body>
    <div class="title">Customer Management System</div>
    
    <!-- Create Customer Form -->
    <div class="form-container">
        <h2>Add New Customer</h2>
        <form action="manageCustomers" method="post">
            <label>Name: 
                <input type="text" name="name" class="form-control" required>
            </label>
            <label>Email: 
                <input type="email" name="email" class="form-control" required>
            </label>
            <label>Phone: 
                <input type="text" name="phone" class="form-control" required>
            </label>
            <input type="submit" name="action" value="Create" class="button">
        </form>
    </div>
    
    <hr>
    
    <!-- Display Customer Table with Read, Update, and Delete -->
    <div class="table-container">
        <h2>Customer List</h2>
        <%
            Connection conn = null;
            Statement stmt = null;
            ResultSet rs = null;
            
            try {
                // Database connection parameters
                String url = "jdbc:mysql://localhost:3306/studentsphere";
                String username = "root"; // Replace with your database username
                String password = "Pawan@18";
                
                // Establish database connection
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(url, username, password);
                
                // Query to fetch customer data
                stmt = conn.createStatement();
                String query = "SELECT * FROM customer_table";
                rs = stmt.executeQuery(query);
        %>
        
        <table border="1" class="customer-table">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Actions</th>
            </tr>
            <%
                while (rs.next()) {
            %>
            <tr>
                <td><%= rs.getInt("id") %></td>
                <td><%= rs.getString("name") %></td>
                <td><%= rs.getString("email") %></td>
                <td><%= rs.getString("phone") %></td>
                <td>
                    <form action="manageCustomers" method="post" style="display:inline;">
                        <input type="hidden" name="id" value="<%= rs.getInt("id") %>">
                        <input type="submit" name="action" value="Update" class="button">
                    </form>
                    <form action="manageCustomers" method="post" style="display:inline;">
                        <input type="hidden" name="id" value="<%= rs.getInt("id") %>">
                        <input type="submit" name="action" value="Delete" class="button">
                    </form>
                </td>
            </tr>
            <%
                }
            %>
        </table>
        
        <%
            } catch (Exception e) {
                e.printStackTrace();
        %>
        <p>Error loading customer data: <%= e.getMessage() %></p>
        <%
            } finally {
                if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
                if (stmt != null) try { stmt.close(); } catch (SQLException ignore) {}
                if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
            }
        %>
    </div>
</body>
</html>
