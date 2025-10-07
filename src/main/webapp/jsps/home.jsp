<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*, java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MALIK FUNDA Home Page</title>
    <link href="images/kkfunda.jpg" rel="icon">
    <!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <style>
        body {
            background: #f9f9f9;
            font-family: 'Roboto', sans-serif;
        }
        header {
            background: linear-gradient(90deg, #007bff, #00c6ff);
            color: white;
            padding: 30px;
            text-align: center;
        }
        h1, h3 {
            margin: 10px 0;
        }
        .navbar {
            margin-bottom: 30px;
        }
        .info-card {
            background: white;
            border-radius: 10px;
            box-shadow: 0px 4px 6px rgba(0,0,0,0.1);
            padding: 20px;
            margin: 20px auto;
            max-width: 750px;
            transition: transform 0.3s ease-in-out;
        }
        .info-card:hover {
            transform: scale(1.05);
        }
        footer {
            margin-top: 40px;
            background: #222;
            color: white;
            padding: 20px;
            text-align: center;
            font-size: 14px;
        }
        footer a {
            color: #00c6ff;
            text-decoration: none;
        }
        footer p {
            margin-bottom: 10px;
        }
        .contact-card img {
            width: 120px;
            border-radius: 50%;
            box-shadow: 0px 4px 6px rgba(0,0,0,0.1);
        }
        .contact-card h4 {
            font-weight: 500;
        }
        .btn-custom {
            background-color: #00c6ff;
            color: white;
            border-radius: 50px;
            font-weight: 500;
        }
        .btn-custom:hover {
            background-color: #007bff;
        }
        .service-link {
            display: inline-block;
            margin: 10px;
            font-weight: 500;
        }
        .service-link:hover {
            color: #00c6ff;
        }
    </style>
</head>
<body>

<header>
    <h1>🚀 Welcome to MalikHussain Devops,cloud & SRE Training  Portal 🚀</h1>
    <h3>Training | Development | Consulting</h3>
</header>

<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm">
    <div class="container">
        <a class="navbar-brand" href="#">KK FUNDA</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="#server-info">Server Info</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#client-info">Client Info</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#contact-info">Contact</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#services">Services</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">

    <!-- Server Info -->
    <div id="server-info" class="info-card">
        <h3>🌐 Server Side Information</h3>
        <hr>
        <%
            InetAddress inetAddress = InetAddress.getLocalHost();
            String ip = inetAddress.getHostAddress();
            out.println("<p><b>Server Host Name:</b> " + inetAddress.getHostName() + "</p>");
            out.println("<p><b>Server IP Address:</b> " + ip + "</p>");
        %>
    </div>

    <!-- Client Info -->
    <div id="client-info" class="info-card">
        <h3>💻 Client Side Information</h3>
        <hr>
        <p><b>Client IP Address:</b> <%= request.getRemoteAddr() %></p>
        <p><b>Client Host Name:</b> <%= request.getRemoteHost() %></p>
        <p><b>Browser Info:</b> <%= request.getHeader("User-Agent") %></p>
    </div>

    <!-- Contact Info -->
    <div id="contact-info" class="info-card text-center contact-card">
        <img src="images/kkfunda.jpg" alt="KK FUNDA Logo">
        <h4>MalikHussain</h4>
        <p><b>Address:</b> Newyork and Bengaluru</p>
        <p><b>Phone:</b> +91-9916390090</p>
        <p><b>Email:</b> <a href="mailto:malikkeducationblr@gmail.com">malikeducationblr@gmail.com</a></p>
        <a href="mailto:malikeducation@gmail.com" class="btn btn-custom mt-2">📧 Mail to MALIK FUNDA</a>
    </div>

    <!-- Service Links -->
    <div id="services" class="info-card text-center">
        <h4>⚙️ Our Services</h4>
        <div class="service-link">
            <a href="services/employee/getEmployeeDetails" class="btn btn-outline-primary">Get Employee Details</a>
        </div>
        <!-- Add more service links if necessary -->
    </div>

</div>

<footer>
    <p>© 2024 KK FUNDA Training & Development Center</p>
    <p><small>Powered by <a href="https://google.com/">KK FUNDA</a></small></p>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

