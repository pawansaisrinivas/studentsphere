<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Login</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        /* Additional styles for header */
        header {
            text-align: center;
            margin: 20px 0;
        }

        header h1 {
            font-size: 36px;
            color: #333; /* Adjust color as needed */
            background: none; /* Ensure no background color */
            margin: 0;
            padding: 0;
        }

        .form-group {
            margin: 15px 0;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
        }

        .form-group input {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
        }

        .form-actions {
            text-align: center;
            margin: 20px 0;
        }

        .button {
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            border: none;
            cursor: pointer;
        }

        .button:hover {
            background-color: #0056b3;
        }

        .form-actions input {
            margin: 0 5px;
        }

        .error-message {
            color: red;
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %> <!-- Include the navbar -->

    <header>
        <h1>Student Login</h1>
    </header>

    <main>
        <!-- Display error message if available -->
        <c:if test="${not empty errorMessage}">
            <div class="error-message">
                ${errorMessage}
            </div>
        </c:if>

        <!-- Form redirects to Spring MVC controller -->
        <form method="post" action="/customerlogin"> <!-- Ensure the action matches the Spring MVC endpoint -->
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" class="form-control" required />
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

        <p><center>Don't have an account? <a href="customerreg">Register here</a></center></p>
    </main>
</body>
</html>
