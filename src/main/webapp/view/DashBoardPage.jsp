<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bank Dashboard</title>
    <style>
        /* Global Styles */
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f4f8;
            color: #333;
            line-height: 1.6;
        }

        header {
            position: relative; /* Allows absolute positioning for child elements */
            background: linear-gradient(135deg, #3498db, #8e44ad);
            color: #fff;
            padding: 20px 15px;
            text-align: center;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            margin: 0;
            font-size: 2.5rem;
            font-weight: 600;
        }

        .logout-btn {
            position: absolute; /* Positioning inside the header */
            top: 20px;
            right: 20px;
            padding: 10px 20px;
            background-color: #e74c3c;
            color: white;
            font-weight: bold;
            border-radius: 5px;
            text-align: center;
            text-decoration: none;
            transition: background-color 0.3s;
            font-size: 1rem;
        }

        .logout-btn:hover {
            background-color: #c0392b;
        }

        .container {
            width: 90%;
            max-width: 1200px;
            margin: 30px auto;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            padding: 30px;
            transition: transform 0.3s ease-in-out;
        }

        .container:hover {
            transform: translateY(-10px);
        }

        .account-info, .quick-links {
            margin-bottom: 40px;
        }

        .account-info h3, .quick-links h3 {
            font-size: 1.8rem;
            color: #2c3e50;
            margin-bottom: 10px;
            font-weight: 500;
        }

        .account-info p, .quick-links ul {
            font-size: 1.1rem;
            margin: 8px 0;
        }

        .account-info p strong {
            color: #3498db;
        }

        .quick-links ul {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            padding: 0;
            margin: 0;
        }

        .quick-links ul li {
            flex: 1 1 30%;
            background-color: #ecf0f1;
            margin: 10px;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            transition: transform 0.3s ease-in-out, background-color 0.3s;
        }

        .quick-links ul li:hover {
            background-color: #3498db;
            color: #fff;
            transform: translateY(-5px);
        }

        .quick-links ul li a {
            text-decoration: none;
            color: #2c3e50;
            font-weight: bold;
            font-size: 1.1rem;
            display: block;
            transition: color 0.3s ease-in-out;
        }

        .quick-links ul li a:hover {
            color: #fff;
        }

        .button {
            display: inline-block;
            padding: 12px 25px;
            background-color: #3498db;
            color: white;
            font-weight: bold;
            border-radius: 5px;
            text-align: center;
            text-decoration: none;
            margin-top: 30px;
            transition: background-color 0.3s;
            font-size: 1.1rem;
        }

        .button:hover {
            background-color: #2980b9;
        }

        footer {
            text-align: center;
            margin-top: 50px;
            font-size: 0.9rem;
            background-color: #2c3e50;
            color: white;
            padding: 20px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .quick-links ul {
                flex-direction: column;
            }

            .quick-links ul li {
                flex: 1 1 100%;
                margin-bottom: 20px;
            }

            .container {
                padding: 20px;
            }

            .logout-btn {
                top: 10px;
                right: 10px;
                padding: 8px 15px;
                font-size: 0.9rem;
            }
        }
    </style>
</head>
<body>

    <header>
        <h2>Welcome to Our Bank Dashboard</h2>
        <a href="/dash" class="logout-btn">LogOut</a>
    </header>

    <div class="container">
        <div class="account-info">
            <h3>Account Information</h3>
            <p><strong>Account Number:</strong> ${accountNumber}</p>
            <p><strong>Current Balance:</strong> $${balance}</p>
            <p><strong>Available Balance:</strong> $${availableBalance}</p>
        </div>

        <div class="quick-links">
            <h3>Quick Links</h3>
            <ul>
                <li><a href="#">Transfer Money</a></li>
                <li><a href="#">View Statements</a></li>
                <li><a href="/loanpage">Apply for Loan</a></li>
            </ul>
        </div>
    </div>

    <footer>
        <p>&copy; 2024 Bank. All Rights Reserved.</p>
    </footer>

</body>
</html>
