<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title> Login </title>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #2c3e50, #3498db);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-container {
            background: #ffffff;
            width: 350px;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        }

        .login-container h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #2c3e50;
        }

        .login-container label {
            font-weight: bold;
            color: #333;
        }

        .login-container input {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            outline: none;
        }

        .login-container input:focus {
            border-color: #3498db;
        }

        .login-container button {
            width: 100%;
            padding: 10px;
            background: #3498db;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s;
        }
         .login-link {
            text-align: center;
            margin-top: 15px;
        }
         .login-link a {
            text-decoration: none;
            color: #2ebf91;
            font-weight: bold;
        }

        .login-container button:hover {
            background: #2980b9;
        }

        .footer-text {
            text-align: center;
            margin-top: 15px;
            font-size: 13px;
            color: #777;
        }
    </style>

</head>
<body>

<div class="login-container">
    <h2>User Login</h2>

    <form action="UserLoginServlet" method="post">
        <label>Email</label>
        <input type="email" name="email" placeholder="Enter admin email" required>

        <label>Password</label>
        <input type="password" name="password" placeholder="Enter password" required>

        <button type="submit">Login</button>
    </form>
    <div class="login-link">
        <p>Don't have an account?
            <a href="index.jsp">Register</a>
        </p>
    </div>

   
</div>

</body>
</html>
