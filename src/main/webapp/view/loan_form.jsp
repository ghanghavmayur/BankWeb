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
</html>
