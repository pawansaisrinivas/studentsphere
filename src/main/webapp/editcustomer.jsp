<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Customer</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h2>Edit Customer</h2>
    <form action="/customer/edit" method="post">
        <input type="hidden" name="id" value="${customer.id}" />
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="${customer.name}" required /><br>
        <label for="gender">Gender:</label>
        <input type="text" id="gender" name="gender" value="${customer.gender}" required /><br>
        <label for="dob">Date of Birth:</label>
        <input type="text" id="dob" name="dob" value="${customer.dob}" required /><br>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="${customer.email}" required /><br>
        <label for="location">Location:</label>
        <input type="text" id="location" name="location" value="${customer.location}" required /><br>
        <label for="contact">Contact:</label>
        <input type="text" id="contact" name="contact" value="${customer.contact}" required /><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" value="${customer.password}" required /><br>
        <button type="submit">Submit</button>
    </form>
</body>
</html>
