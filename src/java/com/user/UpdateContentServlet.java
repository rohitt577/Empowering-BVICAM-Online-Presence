package com.user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "UpdateContentServlet", urlPatterns = {"/UpdateContentServlet"})
public class UpdateContentServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve content and expiration days from the form
        String content = request.getParameter("content");
        int expirationDays = Integer.parseInt(request.getParameter("expirationDays"));

        // Calculate expiration date
        LocalDate expirationDate = LocalDate.now().plusDays(expirationDays);

        Connection conn = null;
        PreparedStatement statement = null;
        String message = null;

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to the database
            String url = "jdbc:mysql://localhost:3306/BVP";
            String username = "root";
            String password = "Rattle@123";
            conn = DriverManager.getConnection(url, username, password);

            // Create SQL query
            String sql = "INSERT INTO news (content, expiration_date) VALUES (?, ?)";
            statement = conn.prepareStatement(sql);

            // Set parameters
            statement.setString(1, content);
            statement.setDate(2, java.sql.Date.valueOf(expirationDate));

            // Execute SQL query
            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                message = "News inserted successfully!";
            } else {
                message = "Failed to insert news!";
            }
        } catch (ClassNotFoundException | SQLException ex) {
            message = "Error: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            // Close resources
            try {
                if (statement != null) {
                    statement.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }

            // Set message attribute and forward to a confirmation page
            request.setAttribute("message", message);
            request.getRequestDispatcher("confirmation.jsp").forward(request, response);
        }
    }
}
