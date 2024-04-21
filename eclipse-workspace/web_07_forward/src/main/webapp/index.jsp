<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Authorization</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

 <style>
        body {
            font-family: Arial, sans-serif;
            background-image: linear-gradient(#FFFFFF, rgb(255, 122, 89));
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #ffffff;
            padding: 100px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 400px;
        }

        .form-group {
            margin-bottom: 25px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 10px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 30px;
            border-radius: 4px;
            border: 1px solid #ccc;
            font-size: 32px;
        }

        button {
            padding:15px 25px;
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 32px;
        }

        button:hover {
            background-color: #0056b3;
        }

        .register-link {
            margin-top: 15px;
            text-align: center;
        }
        .error-message {
			color: #a94442; /* Bootstrap 'has-error' color */
		}
    </style>
   </head>
<body>

<div class="container ">
    <h2>Authorization</h2>
    <form action="MyController" method="post">
        <input type="hidden" name="command" value="do_auth"/>
        
         <div class="error-message" id="error-message"> 
			
			
			<c:if test="${not (requestScope.authError eq null) }">
			     <c:out value="${requestScope.authError}" />
			</c:if>
			
			
			</div>
        
        <div class="form-group">
            <label for="loginUsername">Login</label>
            <input type="text" class="form-control" id="loginUsername" name="username" required>
        </div>
        <div class="form-group">
            <label for="loginPassword">Password</label>
            <input type="password" class="form-control" id="loginPassword" name="password" required>
        </div>
        <button type="submit" class="btn btn-primary">Enter</button>
    </form>
    <p>Not register yet? <a href="MyController?command=go_to_registration_page">Registration</a></p>
</div>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const form = document.getElementById('login-form');

        form.addEventListener('submit', function (event) {
            event.preventDefault();
            
            const login = document.getElementById('login').value; 
            const password = document.getElementById('password').value;

            
            if (!login || !password) {
                alert('Please fill in all fields.');
                return;
            }

            console.log('Login:', login); 
            console.log('Password:', password);

            form.reset();
        });
    });
</script>

</body>
</html>