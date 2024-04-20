<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration</title>
    <link
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        rel="stylesheet">
</head>
<body>

    <div class="container mt-5">
        <h2>User Registration</h2>
        <form action="MyController" method="post">
            <input type="hidden" name="command" value="new_user_registration"/>
            <div class="form-group">
                <label for="login">Login</label> <!-- Changed 'Email' to 'Login' here -->
                <input type="text" class="form-control" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label> 
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="name">Name</label> 
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="dob">Date of Birth</label> 
                <input type="date" class="form-control" id="dob" name="dob" required>
            </div>
            <div class="form-group">
                <label for="country">Country of Residence</label> 
                <select class="form-control" id="country" name="country" required>
                    <option value="">Select a country</option>
                    <option value="russia">Russia</option>
                    <option value="usa">USA</option>
                    <option value="germany">Germany</option>
                    <option value="france">France</option>
                    <!-- Add other countries as needed -->
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Register</button>
        </form>
    </div>

</body>
</html>