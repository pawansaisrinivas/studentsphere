<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Registration</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <%@include file="mainnavbar.jsp" %>

    <h2 class="title">Student Registration Form</h2>
    <form method="post" action="insertcustomer">
        <label>Enter Name</label>
        <input type="text" name="cname" class="form-control" required />
        <br/>

        <label>Select Gender</label>
        <input type="radio" name="cgender" id="male" class="form-control" value="Male" required />
        <label for="male">Male</label>
        <input type="radio" name="cgender" id="female" class="form-control" value="Female" required />
        <label for="female">Female</label>
        <br/>

        <label>Select DOB</label>
        <input type="date" name="cdob" class="form-control" required />
        <br/>

        <label>Enter Email</label>
        <input type="email" name="cemail" class="form-control" required />
        <br/>

        <label>Enter Password</label>
        <input type="password" name="cpwd" class="form-control" required />
        <br/>

        <label>Enter College Name</label>
        <input type="text" name="clocation" class="form-control" required />
        <br/>

        <label>Enter Contact</label>
        <input type="number" name="ccontact" class="form-control" required />
        <br/>

        <input type="submit" value="Register" class="button" />
        <input type="reset" value="Clear" class="button" />
    </form>
</body>
</html>
