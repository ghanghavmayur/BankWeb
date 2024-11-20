<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loan Application</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: #555;
        }

        input[type="text"],
        input[type="number"],
        textarea,
        select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        textarea {
            resize: none;
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
            color: green;
            font-size: 18px;
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Loan Application Form</h2>

        <!-- Loan Form -->
        <form action="loan" method="post">
            <!-- Name -->
            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" id="name" name="name" placeholder="Enter your full name" required>
            </div>

            <!-- Address -->
            <div class="form-group">
                <label for="address">Address</label>
                <input type="text" id="address" name="address" placeholder="Enter your address" required>
            </div>

            <!-- Phone Number -->
            <div class="form-group">
                <label for="phone_no">Phone Number</label>
                <input type="number" id="phone_no" name="phone_no" placeholder="Enter your phone number" required>
            </div>

            <!-- Loan Amount -->
            <div class="form-group">
                <label for="loan_amount">Loan Amount</label>
                <input type="number" id="loan_amount" name="loan_amount" placeholder="Enter the loan amount" required>
            </div>

            <!-- Purpose -->
            <div class="form-group">
                <label for="purpose">Purpose of Loan</label>
                <input type="text" id="purpose" name="purpose" placeholder="E.g., Home renovation, Education" required>
            </div>

            <!-- Employment Status -->
            <div class="form-group">
                <label for="emp_status">Employment Status</label>
                <select id="emp_status" name="emp_status" required>
                    <option value="">-- Select --</option>
                    <option value="Employed">Employed</option>
                    <option value="Self-Employed">Self-Employed</option>
                    <option value="Unemployed">Unemployed</option>
                    <option value="Retired">Retired</option>
                </select>
            </div>

            <!-- Monthly Income -->
            <div class="form-group">
                <label for="mon_income">Monthly Income</label>
                <input type="number" id="mon_income" name="mon_income" placeholder="Enter your monthly income" required>
            </div>

            <!-- Additional Information -->
            <div class="form-group">
                <label for="add_info">Additional Information</label>
                <textarea id="add_info" name="add_info" rows="4" placeholder="Add any extra details (optional)"></textarea>
            </div>

            <!-- Submit Button -->
            <button type="submit">Submit Loan Application</button>
        </form>
    </div>
</body>
</html>
