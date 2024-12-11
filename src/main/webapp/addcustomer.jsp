<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Student</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>
    
    <!-- Header Section -->
    <header>
        <h2 class="form-title">Add New Student</h2>
    </header>
    
    <!-- Main Content Section -->
    <main>
        <div class="form-container">
            <form action="/customer/add" method="post">
                <!-- Name Field -->
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" required />
                </div>

                <!-- Gender Field -->
                <div class="form-group">
                    <label for="gender">Gender:</label>
                    <input type="text" id="gender" name="gender" required />
                </div>

                <!-- Date of Birth Field -->
                <div class="form-group">
                    <label for="dob">Date of Birth:</label>
                    <input type="text" id="dob" name="dob" required />
                </div>

                <!-- Email Field -->
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required />
                </div>

                <!-- Location Field -->
                <div class="form-group">
                    <label for="location">Location:</label>
                    <input type="text" id="location" name="location" required />
                </div>

                <!-- Contact Field -->
                <div class="form-group">
                    <label for="contact">Contact:</label>
                    <input type="text" id="contact" name="contact" required />
                </div>

                <!-- Password Field -->
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required />
                </div>

                <!-- Submit Button -->
                <button type="submit" class="submit-button">Submit</button>
            </form>
        </div>
    </main>

    <!-- Footer Section -->

</body>
</html>
