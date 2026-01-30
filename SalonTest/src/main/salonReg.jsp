<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Salon Registration</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f6f8;
    }
    .container {
        width: 420px;
        margin: 40px auto;
        background: #fff;
        padding: 25px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    h2 {
        text-align: center;
        margin-bottom: 20px;
    }
    input, select, textarea {
        width: 100%;
        padding: 8px;
        margin: 8px 0;
    }
    button {
        width: 100%;
        padding: 10px;
        background-color: #007bff;
        color: white;
        border: none;
        border-radius: 4px;
        font-size: 16px;
        cursor: pointer;
    }
    button:hover {
        background-color: #0056b3;
    }
</style>
</head>

<body>

<div class="container">
    <h2>Salon Registration</h2>

    <form action="RegisterSalonServlet" method="post">

        <!-- Salon ID (Optional if auto-generated in servlet) -->
        <input type="number" name="salon_id" placeholder="Salon ID" required>

        <input type="text" name="salon_name" placeholder="Salon Name" required>

        <input type="text" name="owner_name" placeholder="Owner Name" required>

        <input type="email" name="email" placeholder="Email" required>

        <input type="text" name="phone" placeholder="Phone Number" required>

        <input type="password" name="password" placeholder="Password" required>

        <textarea name="address" placeholder="Address" rows="3" required></textarea>

        <input type="text" name="city" placeholder="City" required>

        <label>Opening Time</label>
        <input type="time" name="opening_time">

        <label>Closing Time</label>
        <input type="time" name="closing_time">

        <select name="salon_type">
            <option value="">Select Salon Type</option>
            <option value="Men">Men</option>
            <option value="Women">Women</option>
            <option value="Unisex">Unisex</option>
        </select>

        <button type="submit">Register Salon</button>
    </form>
    <br>
<a href="ViewSalonServlet">View Salon</a>
</div>


</body>
</html>
