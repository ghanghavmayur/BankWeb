<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Money Transfer</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f4f8;
            color: #333;
        }

        .container {
            max-width: 500px;
            margin: 50px auto;
            background: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #007bff;
            margin-bottom: 20px;
            font-weight: bold;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-size: 14px;
            color: #555;
            margin-bottom: 8px;
            font-weight: 600;
        }

        input[type="text"],
        input[type="number"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            color: #333;
            outline: none;
            transition: border-color 0.3s;
        }

        input[type="text"]:focus,
        input[type="number"]:focus,
        input[type="password"]:focus {
            border-color: #007bff;
            box-shadow: 0 0 8px rgba(0, 123, 255, 0.2);
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s, box-shadow 0.3s;
        }

        button:hover {
            background-color: #0056b3;
            box-shadow: 0 4px 10px rgba(0, 123, 255, 0.3);
        }

        .message {
            color: #e74c3c;
            font-size: 14px;
            text-align: center;
            margin-bottom: 20px;
            font-weight: 600;
        }

        .account-info {
            margin-bottom: 20px;
            background: #f8f9fa;
            padding: 15px;
            border-radius: 5px;
            border: 1px solid #e9ecef;
        }

        .account-info h3 {
            margin-bottom: 10px;
            font-size: 18px;
            color: #007bff;
        }

        .account-info p {
            margin: 5px 0;
            font-size: 14px;
            color: #555;
        }

        .back-btn {
            display: block;
            margin-top: 15px;
            text-align: center;
            font-size: 14px;
            color: #007bff;
            text-decoration: none;
            transition: color 0.3s;
        }

        .back-btn:hover {
            color: #0056b3;
        }

        @media (max-width: 576px) {
            .container {
                padding: 20px;
            }

            h2 {
                font-size: 20px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Transfer Money</h2>

        <!-- Display message -->
        <c:if test="${not empty msg}">
            <div class="message">${msg}</div>
        </c:if>

        <!-- Account Info -->
        <div class="account-info">
            <h3>Account Information</h3>
            <p><strong>Account Number:</strong> ${sessionScope.loggedInAccount}</p>
            <p><strong>Current Balance:</strong> $${sessionScope.accountBalance}</p>
            <p><strong>Available Balance:</strong> $${sessionScope.accountBalance}</p>
        </div>

        <!-- Form -->
        <form action="transfer" method="post">
            <!-- Sender Account -->
            <div class="form-group">
                <label for="sender">Sender Account Number:</label>
                <p>${sessionScope.loggedInAccount}</p>
            </div>

            <!-- Receiver Account -->
            <div class="form-group">
                <label for="receiver">Receiver Account Number:</label>
                <input type="text" id="receiver" name="receiverAccNumber" required>
            </div>

            <!-- Amount -->
            <div class="form-group">
                <label for="amount">Amount:</label>
                <input type="text" id="amount" name="amount" required>
            </div>

            <!-- PIN -->
            <div class="form-group">
                <label for="pin">Enter PIN:</label>
                <input type="password" id="pin" name="pin" required>
            </div>

            <button type="submit">Transfer</button>
        </form>

        <!-- Back to Dashboard -->
        <a href="/dashboard" class="back-btn">Back to Dashboard</a>
    </div>
</body>
</html>
