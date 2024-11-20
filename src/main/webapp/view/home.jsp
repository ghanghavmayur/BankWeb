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
    <a href=aboutus>About Us</a>
    <a href="dashlogin">Banking</a>
</nav>
<div class="container">
    <h1><font color="Brown">Welcome to SecureTrust Bank</font></h1>
    <p>Your trusted partner in financial growth and security.</p>
    
    <div class="carousel">
        <img src="bank1.jpg" alt="Secure Banking">
        <img src="bank2.jpg" alt="Financial Growth">
        <img src="bank3.jpg" alt="Trusted Services">
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
    
    <p>Experience banking like never before!</p>
</div>
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
    .features {
        margin-top: 30px;
        text-align: left;
    }
    .carousel {
        max-width: 100%;
        margin: 20px 0;
        overflow: hidden;
    }
    .carousel img {
        width: 100%;
        border-radius: 8px;
    }
    .updates {
        margin-top: 30px;
        text-align: left;
    }
    .updates h2 {
        color: #004080;
    }
    .updates ul {
        list-style-type: none;
        padding: 0;
    }
    .updates li {
        margin-bottom: 15px;
    }

    /* Media Queries */
    @media screen and (max-width: 600px) {
        .container {
            padding: 10px;
        }
    }
</style>
