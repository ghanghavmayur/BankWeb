<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Banking Home - Secure and Trusted</title>
</head>
<body>
<header>
    <a href="/"><h1>SecureTrust Bank</h1></a>
</header>
<nav>
    <a href="/">Home</a>	
    <a href="aboutus">About Us</a>
    <a href="dashlogin">Banking</a>
    <a href="contact">Contact Us</a>
</nav>
<div class="container">
    <h1><font color="Brown">Welcome to SecureTrust Bank</font></h1>
    <p>Your trusted partner in financial growth and security.</p>

    <!-- Carousel -->
    <div class="carousel">
        <img src="banner1.jpg" alt="Personal Accounts">
        <img src="banner2.jpg" alt="Loan Services">
        <img src="banner3.jpg" alt="Investment Planning">
    </div>

    <div class="features">
        <h2>Our Key Services:</h2>
        <ul>
            <li>Personal and Business Accounts</li>
            <li>Loan Services - Home, Auto, and Personal</li>
            <li>Investment Planning and Advisory</li>
            <li>Secure Online Banking</li>
            <li>24/7 Customer Support</li>
        </ul>
    </div>

    <div class="updates">
        <h2>Latest Updates:</h2>
        <ul>
            <li>New! Open a savings account online and get special benefits.</li>
            <li>Upcoming Webinar: "How to Invest Smartly" on 15/1/2025.</li>
            <li>Check out our latest blog: "5 Tips for Financial Success."</li>
        </ul>
    </div>

    <div class="contact">
        <h2>Contact Us:</h2>
        <p>Email: support@securetrustbank.com</p>
        <p>Phone: 1800-123-456</p>
        <p>Address: 123 Finance Avenue, Money City, Bankland</p>
    </div>

    <p>Experience banking like never before!</p>
</div>
<footer>
    <p>&copy; 2025 SecureTrust Bank. All rights reserved.</p>
    <p>Follow us: 
        <a href="#">Facebook</a> | 
        <a href="#">Twitter</a> | 
        <a href="#">Instagram</a>
    </p>
</footer>
</body>
</html>

<style>
    body {
        font-family: 'Arial', sans-serif;
        background: #f9f9f9 url('background.jpg') no-repeat center center fixed;
        background-size: cover;
        margin: 0;
        padding: 0;
    }
    header {
        background-color: #004080;
        color: white;
        padding: 10px;
        text-align: center;
    }
    header a {
        color: white;
        text-decoration: none;
    }
    nav {
        background-color: #0066cc;
        overflow: hidden;
    }
    nav a {
        float: left;
        display: block;
        color: white;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
    }
    nav a:hover {
        background-color: #ddd;
        color: black;
    }
    .container {
        text-align: center;
        max-width: 900px;
        margin: 20px auto;
        padding: 20px;
        color: #333;
    }
    h1 font {
        color: brown;
    }
    .features, .updates, .contact {
        margin-top: 30px;
        text-align: left;
    }
    .carousel {
        max-width: 100%;
        margin: 20px 0;
        overflow: hidden;
        position: relative;
    }
    .carousel img {
        width: 100%;
        border-radius: 8px;
        display: none;
        animation: fade 5s infinite;
    }
    .carousel img:first-child {
        display: block;
    }
    .updates ul {
        list-style-type: none;
        padding: 0;
    }
    .updates li {
        margin-bottom: 15px;
    }
    footer {
        background-color: #004080;
        color: white;
        text-align: center;
        padding: 10px 0;
    }
    footer a {
        color: white;
        text-decoration: none;
        margin: 0 5px;
    }
    footer a:hover {
        text-decoration: underline;
    }

    /* Media Queries */
    @media screen and (max-width: 600px) {
        .container {
            padding: 10px;
        }
        nav a {
            float: none;
            display: block;
            text-align: left;
        }
    }

    /* Carousel Animation */
    @keyframes fade {
        0% { opacity: 0; }
        33% { opacity: 1; }
        66% { opacity: 0; }
    }
</style>
