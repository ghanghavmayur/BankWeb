<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Us - SecureTrust Bank</title>
</head>
<body>
<header>
    <a href="/"><h1>SecureTrust Bank</h1></a>
</header>
<nav>
    <a href="homePage">Home</a>
    <a href="aboutus">About Us</a>
    <a href="dashlogin">Banking</a>
</nav>

<div class="container">
    <h1><font color="Brown">About SecureTrust Bank</font></h1>
    <p>Your trusted financial partner, committed to helping you achieve your financial goals.</p>
    
    <div class="about-us-content">
        <h2>Our Mission</h2>
        <p>Our mission is to empower individuals and businesses with personalized financial services that promote growth and long-term success. We are committed to providing a safe, secure, and customer-centric banking experience.</p>

        <h2>Our History</h2>
        <p>Founded in 1990, SecureTrust Bank has grown to become one of the leading banks in the country, offering a wide range of financial services, from personal and business accounts to loans, investments, and wealth management.</p>

        <h2>Our Values</h2>
        <ul>
            <li><strong>Integrity:</strong> We prioritize transparency and honesty in everything we do.</li>
            <li><strong>Customer Focus:</strong> Our customers are at the heart of all our decisions.</li>
            <li><strong>Innovation:</strong> We continuously seek innovative solutions to meet our customers’ needs.</li>
            <li><strong>Security:</strong> We invest in cutting-edge technology to ensure your money is safe with us.</li>
        </ul>

        <h2>Why Choose Us?</h2>
        <p>With over three decades of experience, SecureTrust Bank has become a trusted partner for financial success. We offer competitive rates, unmatched customer service, and robust security systems to ensure your banking experience is seamless and secure.</p>
    </div>
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

    .about-us-content {
        margin-top: 30px;
        text-align: left;
    }

    .about-us-content h2 {
        color: #004080;
        font-size: 1.8rem;
    }

    .about-us-content p {
        font-size: 1.2rem;
        line-height: 1.6;
    }

    .about-us-content ul {
        list-style-type: none;
        padding: 0;
    }

    .about-us-content ul li {
        margin-bottom: 10px;
        font-size: 1.2rem;
    }

    /* Media Queries */
    @media screen and (max-width: 600px) {
        .about-us-content {
            padding: 10px;
        }
    }
</style>
