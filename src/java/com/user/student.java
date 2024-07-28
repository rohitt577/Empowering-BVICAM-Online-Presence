package com.user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "student", urlPatterns = {"/student"})
public class student extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve values from the form
        String sno = request.getParameter("sno");
        String Name = request.getParameter("Name");
        String Designation = request.getParameter("Designation");
        
        String cc = request.getParameter("cc");

        Connection conn = null;
        PreparedStatement statement = null;
        String message = null;

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to the database
            String url = "jdbc:mysql://localhost:3306/bvp";
            String username = "root";
            String password = "Rattle@123";
            conn = DriverManager.getConnection(url, username, password);

            // Create SQL query
            // CREATE TABLE statement
            String table = "CREATE TABLE IF NOT EXISTS student_council (sno INT PRIMARY KEY AUTO_INCREMENT, Name VARCHAR(255), Designation VARCHAR(255), cc varchar(255))";
            statement = conn.prepareStatement(table);
            statement.executeUpdate(); // Execute CREATE TABLE statement

            // INSERT INTO statement
            String sql = "INSERT INTO student_council (sno, Name, Designation, cc) VALUES (?, ?, ?, ?)";

            statement = conn.prepareStatement(sql);
            // Set parameters
            statement.setString(1, sno);
            statement.setString(2, Name);
            statement.setString(3, Designation);
            statement.setString(4, cc);

            // Execute SQL query
            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                message = "Data inserted successfully!";
            } else {
                message = "Failed to insert data!";
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