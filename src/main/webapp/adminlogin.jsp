<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Login</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <%@ include file="mainnavbar.jsp" %>
    <header>
        <h1><center>Admin Login</center></h1>
    </header>

    <main>
        <form method="post" action="adminlogin">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" class="form-control" required />
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" class="form-control" required />
            </div>

            <div class="form-actions">
                <input type="submit" value="Login" class="button" />
                <input type="reset" value="Clear" class="button" />
            </div>
        </form>

        <p><center>Forgot your password? <a href="resetadminpassword.jsp">Reset it here</a></center></p>

        <c:if test="${not empty errorMessage}">
            <div class="error-message">
                <p style="color: red;">${errorMessage}</p>
            </div>
        </c:if>
    </main>
</body>
</html>
