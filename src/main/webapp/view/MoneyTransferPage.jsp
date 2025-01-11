<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Money Transfer</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
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

        .message {
            color: red;
            font-size: 14px;
            text-align: center;
            margin-bottom: 20px;
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

		
		<div class="account-info">
		    <h3>Account Information</h3>
		    <p><strong>Account Number:</strong> ${sessionScope.loggedInAccount}</p>
		    <p><strong>Current Balance:</strong> $${sessionScope.accountBalance}</p>
		    <p><strong>Available Balance:</strong> $${sessionScope.accountBalance}</p>
		</div>


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
        <input type="number" id="amount" name="amount" required>
    </div>

    <!-- PIN -->
    <div class="form-group">
        <label for="pin">Enter PIN:</label>
        <input type="number" id="pin" name="pin" required>
    </div>

    <button type="submit">Transfer</button>
</form>
        <a href="/dashboard" class="back-btn">Back to Dashboard</a>

    </div>
</body>
</html>
