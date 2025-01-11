<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Statements</title>
    <style>
        /* Basic Styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #3498db;
            color: white;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .back-btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            font-weight: bold;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
        }

        .back-btn:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Your Last 10 Statements</h2>

<h2>Transaction History</h2>
<c:if test="${not empty transactions}">
    <table border="1">
    <tr>
        <th>Transaction ID</th>
        <th>Sender</th>
        <th>Receiver</th>
        <th>Amount</th>
        <th>Date</th>
    </tr>
    <c:forEach var="transaction" items="${transactions}">
        <tr>
            <td>${transaction.transactionId}</td>
            <td>${transaction.senderAccNumber}</td>
            <td>${transaction.receiverAccNumber}</td>
            <td>${transaction.amount}</td>
            <td>${transaction.transactionDate}</td>
        </tr>
    </c:forEach>
</table>

</c:if>
<c:if test="${empty transactions}">
    <p>No transactions found.</p>
</c:if>


        <a href="/dashboard" class="back-btn">Back to Dashboard</a>
    </div>

</body>
</html>
