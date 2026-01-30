<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Salon Booking System - Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f7f7f7;
            text-align: center;
            padding: 50px;
        }
        h1 {
            color: #333;
        }
        .container {
            background: white;
            padding: 40px;
            border-radius: 8px;
            width: 400px;
            margin: auto;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        a {
            display: block;
            margin: 15px 0;
            padding: 12px;
            background: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
        }
        a:hover {
            background: #43a047;
        }
    </style>
</head>
<body>

<div class="container">

    <h1>Salon Booking System</h1>
    <p>Select an option to continue</p>

    <!-- USER MODULE -->
    <a href="userlogin.jsp">User Login</a>
    <a href="UserReg.jsp">User Registration</a>

    <!-- SALON MODULE -->
    <a href="ViewSalonServlet">View Salons</a>
    <a href="services.jsp">View Services</a>

    <!-- APPOINTMENT MODULE -->
    <a href="appointments/book-appointment.jsp">Book Appointment</a>
    <a href="appointments/my-appointments.jsp">My Appointments</a>

    <!-- OWNER MODULE -->
    <a href="owner-appointments.jsp">Owner Dashboard</a>

</div>

</body>
</html>
