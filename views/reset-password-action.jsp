<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Travel Connect - Password Reset Action</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 100px;
        }
        .message {
            font-size: 1.2em;
            color: #333;
        }
    </style>
</head>
<body>

<%
    // Get the new password and confirm password from the form
    String newPassword = request.getParameter("newPassword");
    String confirmPassword = request.getParameter("confirmPassword");

    // Get the email or token that identifies the user (this should be passed along with the form in a real scenario)
    // For example: String email = (String) session.getAttribute("userEmail");
    String email = (String) session.getAttribute("userEmail"); // Example

    if (newPassword != null && confirmPassword != null && newPassword.equals(confirmPassword)) {
        try {
            // Database connection
            Class.forName("com.mysql.jdbc.Driver"); // Use your DB driver class
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sthtp", "root", "Ammulu@37");

            // Update the user's password in the database
            String updateQuery = "UPDATE users SET password = ? WHERE email = ?";
            PreparedStatement ps = con.prepareStatement(updateQuery);
            ps.setString(1, newPassword); // You should hash the password in production
            ps.setString(2, email); // Use the user's email (or token-based identification)

            int rowsAffected = ps.executeUpdate();

            if (rowsAffected > 0) {
                // Password reset was successful
                out.println("<div class='message'>Your password has been successfully reset. You can now <a href='login.jsp'>login</a>.</div>");
            } else {
                // Something went wrong (e.g., user not found)
                out.println("<div class='message'>There was an issue resetting your password. Please try again later.</div>");
            }

            // Close connections
            ps.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<div class='message'>An error occurred while processing your request. Please try again later.</div>");
        }
    } else {
        // Passwords don't match
        out.println("<div class='message'>Passwords do not match. Please <a href='reset-password.jsp'>try again</a>.</div>");
    }
%>

</body>
</html>
