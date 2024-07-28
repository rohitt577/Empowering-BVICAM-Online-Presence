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

@WebServlet(name = "UploadServlet1", urlPatterns = {"/UploadServlet1"})
public class UploadServlet1 extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve values from the form
        String sno = request.getParameter("sno");
        String title = request.getParameter("title");
        String speakers = request.getParameter("speakers");
        String dates = request.getParameter("dates");
        String time = request.getParameter("time");
        String fee = request.getParameter("fee");
        String status = request.getParameter("status");
        String process = request.getParameter("process");
        String details = request.getParameter("details");

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
            String createTableSQL = "CREATE TABLE IF NOT EXISTS webinar_details ("
                    + "id INT AUTO_INCREMENT PRIMARY KEY,"
                    + "sno VARCHAR(255),"
                    + "title VARCHAR(255),"
                    + "speakers VARCHAR(255),"
                    + "dates VARCHAR(255),"
                    + "time VARCHAR(255),"
                    + "fee VARCHAR(255),"
                    + "status VARCHAR(255),"
                    + "process VARCHAR(255),"
                    + "details VARCHAR(255)"
                    + ")";
            statement = conn.prepareStatement(createTableSQL);
            statement.executeUpdate(); // Execute CREATE TABLE statement

            // Create SQL query
            String sql = "INSERT INTO webinar_details (sno, title, speakers, dates, time, fee, status, process, details) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

            statement = conn.prepareStatement(sql);
            // Set parameters
            statement.setString(1, sno);
            statement.setString(2, title);
            statement.setString(3, speakers);
            statement.setString(4, dates);
            statement.setString(5, time);
            statement.setString(6, fee);
            statement.setString(7, status);
            statement.setString(8, process);
            statement.setString(9, details);

            // Execute SQL query
            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                message = "Webinar details inserted successfully!";
            } else {
                message = "Failed to insert webinar details!";
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
