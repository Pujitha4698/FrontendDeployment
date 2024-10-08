<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Travel Connect - Reset Password</title>
    <link rel="stylesheet" type="text/css" href="styles.css"> <!-- Link to your CSS file -->
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            text-align: center;
            background-image: url('../img/reset-password-bg.jpg'); /* Update the path if necessary */
            background-size: cover;
            background-position: center;
            height: 100vh;
            color: white;
        }

        .reset-section {
            margin: 100px auto; /* Adjust margin for positioning */
            width: 300px;
            padding: 20px;
            border: 1px solid rgba(255, 255, 255, 0.5); /* Optional: Add a semi-transparent border */
            border-radius: 10px; /* Rounded corners */
            background-color: white; /* Fully transparent */
        }

        .reset-section h2 {
            margin-bottom: 20px;
            color: black; /* Change the color to black */
        }

        .reset-section input {
            width: 80%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: rgba(255, 255, 255, 0.8); /* Optional: Semi-transparent input fields */
        }

        .reset-section button {
            width: 50%;
            padding: 10px;
            margin-top: 30px; /* Add margin-top to move the button down */
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold; /* Bold text */
        }

        .reset-section button:hover {
            background-color: #218838;
        }

        p {
            margin-top: 20px;
            color: black; /* Changed color to black */
        }

        a {
            color: #007BFF; /* Link color */
            text-decoration: none; /* No underline */
        }

        a:hover {
            text-decoration: underline; /* Underline on hover */
        }
    </style>
</head>
<body>

    <main>
        <h1>Reset Your Password</h1>
        <div class="reset-section">
            <h2>Set a New Password</h2>
            <form action="reset-password-action.jsp" method="POST"> <!-- Form submission to process reset -->
                <input type="password" name="newPassword" placeholder="New Password" required>
                <input type="password" name="confirmPassword" placeholder="Confirm New Password" required>
                <button type="submit">Reset Password</button>
            </form>
        </div>
    </main>

</body>
</html>
