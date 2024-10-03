<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JFSD-PSI 1 - Travel Connect</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to your CSS file -->
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('../img/pro1.png'); /* Relevant image */
            background-size: cover;
            background-position: center;
            height: 100vh;
            color: white;
            position: relative;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        /* Header for Sign In and Sign Up */
        header {
            display: flex;
            justify-content: flex-end;
            padding: 20px;
            position: absolute;
            top: 10px;
            right: 20px;
        }

        /* Styling for the auth buttons */
        .auth-buttons a {
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            margin-left: 15px;
            transition: background-color 0.3s ease;
        }

        .auth-buttons a:hover {
            background-color: #0056b3;
        }

        /* Main welcome content */
        main {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            height: 100%;
            padding: 20px;
        }

        /* Styling for the welcome message */
        h1 {
            font-size: 4em;
            font-weight: bold;
            margin: 0;
            text-shadow: 3px 3px 7px rgba(0, 0, 0, 0.7);
        }

        p {
            font-size: 1.5em;
            margin: 20px 0;
            max-width: 700px;
            color: #f0f0f0;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.7);
        }

        /* CTA section (optional for future use) */
        .cta-buttons {
            margin-top: 30px;
        }

        .cta-buttons a {
            background-color: #28a745;
            color: white;
            padding: 15px 30px;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            font-size: 1.2em;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .cta-buttons a:hover {
            background-color: #218838;
            transform: translateY(-3px);
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            h1 {
                font-size: 2.5em;
            }

            p {
                font-size: 1.2em;
            }
        }
    </style>
</head>
<body>

    <!-- Header section with Sign In and Sign Up buttons -->
    <header>
        <div class="auth-buttons">
            <a href="login.jsp">Sign In</a>
            <a href="register.jsp">Sign Up</a>
        </div>
    </header>

    <!-- Main content welcoming users -->
    <main>
        <h1>Welcome to Travel Connect</h1>
        <p>Explore our platform to find the best homestays, local attractions, and personalized travel experiences. Let us guide you to unforgettable journeys!</p>
    </main>

</body>
</html>
