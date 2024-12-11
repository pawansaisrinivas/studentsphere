<%@ page import="com.klef.jfsd.springbootmvc.model.Customer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Assign Task to All Students</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>

<jsp:include page="adminnavbar.jsp" />

<div class="container">
    <h2>Assign Task to All Students</h2>

    <!-- Task Assignment Form -->
    <form action="/assignTasksToAll" method="POST">
    <label>Task Description:</label>
    <input type="text" name="taskDescription" class="form-control" required>
    <br />
    <label>Due Date:</label>
    <input type="date" name="dueDate" class="form-control" required>
    <br />
    <button type="submit" class="btn btn-primary">Assign Task to All</button>
</form>

</div>

</body>
</html>
