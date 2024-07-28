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

@WebServlet(name = "InsertStudentData", urlPatterns = {"/insertStudentData"})
public class placement extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve values from the form
        String batch = request.getParameter("batch");
        String discipline = request.getParameter("discipline");
        String totalPassed = request.getParameter("totalPassed");
        String totalRegistered = request.getParameter("totalRegistered");
        String placedStudents = request.getParameter("placedStudents");

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

            // Create table if not exists
            String createTableSQL = "CREATE TABLE IF NOT EXISTS student_data ("
                    + "id INT AUTO_INCREMENT PRIMARY KEY,"
                    + "batch VARCHAR(255),"
                    + "discipline VARCHAR(255),"
                    + "total_passed INT,"
                    + "total_registered INT,"
                    + "placed_students INT"
                    + ")";
            statement = conn.prepareStatement(createTableSQL);
            statement.executeUpdate(); // Execute CREATE TABLE statement

            // Create SQL query
            String sql = "INSERT INTO student_data (batch, discipline, total_passed, total_registered, placed_students) VALUES (?, ?, ?, ?, ?)";

            statement = conn.prepareStatement(sql);
            // Set parameters
            statement.setString(1, batch);
            statement.setString(2, discipline);
            statement.setInt(3, Integer.parseInt(totalPassed));
            statement.setInt(4, Integer.parseInt(totalRegistered));
            statement.setInt(5, Integer.parseInt(placedStudents));

            // Execute SQL query
            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                message = "Student data inserted successfully!";
            } else {
                message = "Failed to insert student data!";
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