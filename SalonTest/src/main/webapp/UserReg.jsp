<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>

<style>
    body {
        font-family: Arial, Helvetica, sans-serif;
        background: linear-gradient(135deg, #667eea, #764ba2);
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .container {
        background: #fff;
        padding: 25px 30px;
        width: 400px;
        border-radius: 10px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }

    .form-group {
        margin-bottom: 15px;
    }

    label {
        display: block;
        font-weight: bold;
        margin-bottom: 6px;
        color: #444;
    }

    input, textarea {
        width: 100%;
        padding: 10px;
        border-radius: 6px;
        border: 1px solid #ccc;
        font-size: 14px;
    }

    textarea {
        resize: none;
    }

    .gender-group {
        display: flex;
        gap: 15px;
        margin-top: 5px;
    }

    .gender-group label {
        font-weight: normal;
    }

    button {
        width: 100%;
        padding: 12px;
        border: none;
        border-radius: 6px;
        background: #667eea;
        color: #fff;
        font-size: 16px;
        cursor: pointer;
        transition: 0.3s;
    }

    button:hover {
        background: #5a67d8;
    }

    .msg {
        text-align: center;
        color: green;
        margin-bottom: 10px;
    }

    .error {
        color: red;
    }
    .login-link {
            text-align: center;
            margin-top: 15px;
        }
</style>

</head>
<body>

<div class="container">
    <h2>User Registration</h2>

    <!-- Success / Error Message -->
   

    <form action="UserServlet" method="post">

        <div class="form-group">
            <label>Name</label>
            <input type="text" name="name" required>
        </div>

        <div class="form-group">
            <label>Email</label>
            <input type="email" name="email" required>
        </div>

        <div class="form-group">
            <label>Password</label>
            <input type="password" name="password" required>
        </div>

        <div class="form-group">
            <label>Address</label>
            <textarea name="address" rows="3" required></textarea>
        </div>

        <div class="form-group">
            <label>Phone</label>
            <input type="number" name="phone" required>
        </div>

        <div class="form-group">
            <label>Gender</label>
            <div class="gender-group">
                <label><input type="radio" name="gender" value="Male" required> Male</label>
                <label><input type="radio" name="gender" value="Female"> Female</label>
                
            </div>
        </div>

        <button type="submit">Register</button>

    </form>
    <div class="login-link">
        <p>Already have an account?
            <a href="login.jsp">Login</a>
        </p>
    </div>
</div>

</body>
</html>
