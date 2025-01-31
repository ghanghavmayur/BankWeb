<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loan Application</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link your CSS file here -->
</head>
<body>
    <div class="container">
        <h1>Loan Application</h1>

        <!-- Display message if present -->
        <c:if test="${not empty msg}">
            <div class="alert">${msg}</div>
        </c:if>

        <form action="loan" method="post">
            <div class="form-group">
                <label for="loanType">Loan Type:</label>
                <select name="loanType" id="loanType" required>
                    <option value="Personal Loan">Personal Loan</option>
                    <option value="Home Loan">Home Loan</option>
                    <option value="Car Loan">Car Loan</option>
                    <option value="Education Loan">Education Loan</option>
                </select>
            </div>

            <div class="form-group">
                <label for="loanAmount">Loan Amount:</label>
                <input type="number" id="loanAmount" name="loanAmount" placeholder="Enter loan amount" required>
            </div>

            <button type="submit" class="btn">Apply for Loan</button>
        </form>

        <div class="back-link">
            <a href="dashboard">Back to Dashboard</a>
        </div>
    </div>
</body>

<Style>
	/* styles.css */

/* Reset some basic styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Set a nice background color and text font */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    padding: 20px;
}

/* Center the container on the page */
.container {
    max-width: 600px;
    margin: 0 auto;
    background-color: #ffffff;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

/* Title styling */
h1 {
    text-align: center;
    color: #333;
    margin-bottom: 20px;
}

/* Style the form elements */
.form-group {
    margin-bottom: 20px;
}

label {
    font-weight: bold;
    color: #555;
    display: block;
    margin-bottom: 5px;
}

select, input[type="number"] {
    width: 100%;
    padding: 10px;
    border-radius: 5px;
    border: 1px solid #ddd;
    font-size: 16px;
}

select:focus, input[type="number"]:focus {
    border-color: #007BFF;
    outline: none;
}

/* Apply button styles */
button[type="submit"] {
    background-color: #007BFF;
    color: white;
    padding: 10px 15px;
    font-size: 16px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    width: 100%;
}

button[type="submit"]:hover {
    background-color: #0056b3;
}

/* Alert message style */
.alert {
    background-color: #f8d7da;
    color: #721c24;
    padding: 15px;
    margin-bottom: 20px;
    border-radius: 5px;
    border: 1px solid #f5c6cb;
}

/* Back to dashboard link styling */
.back-link {
    text-align: center;
    margin-top: 20px;
}

.back-link a {
    text-decoration: none;
    color: #007BFF;
    font-weight: bold;
}

.back-link a:hover {
    text-decoration: underline;
}
	
</Style>
</html>
