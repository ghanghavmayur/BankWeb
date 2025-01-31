<!DOCTYPE html>
<html>
<head>
    <title>Contact Us</title>
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
        body {
            font-family: Arial, sans-serif;
        }
        .contact-form {
            width: 50%;
            margin: auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #f9f9f9;
        }
        .contact-form h2 {
            text-align: center;
        }
        .contact-form label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        .contact-form input, .contact-form textarea, .contact-form button {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .contact-form button {
            background-color: #007BFF;
            color: white;
            border: none;
            cursor: pointer;
        }
        .contact-form button:hover {
            background-color: #0056b3;
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
    
    
    </style>
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
    <div class="contact-form">
        <h2>Contact Us</h2>
        <form action="submitContact" method="post">
            <label for="name">Name</label>
            <input type="text" id="name" name="name" required>
            
            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>
            
            <label for="message">Message</label>
            <textarea id="message" name="message" rows="5" required></textarea>
            
            <button type="submit">Submit</button>
        </form>
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
