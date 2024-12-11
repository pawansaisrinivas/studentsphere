<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success</title>
<link rel="stylesheet" type="text/css" href="styles.css"> <!-- Link to CSS -->
</head>
<body>
	<div>
        <div class="success-message">
            <c:out value="${message}"></c:out>
        </div>
        <a href="customerlogin" class="success-link">Login Here</a>
    </div>
</body>
</html>
