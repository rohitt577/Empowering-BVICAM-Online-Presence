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

@WebServlet(name = "faculty1", urlPatterns = {"/faculty1"})
public class faculty1 extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve values from the form
        String sno = request.getParameter("sno");
        String name = request.getParameter("FName");
        String cc = request.getParameter("Fcc");
        String designation = request.getParameter("FDesignation");

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
            String table = "CREATE TABLE IF NOT EXISTS faculty_council (sno INT PRIMARY KEY, name VARCHAR(255), cc VARCHAR(255), designation VARCHAR(255))";
            statement = conn.prepareStatement(table);
            statement.executeUpdate(); // Execute CREATE TABLE statement

            // INSERT INTO statement
            String sql = "INSERT INTO faculty_council (sno, name, cc, designation) VALUES (?, ?, ?, ?)";
            statement = conn.prepareStatement(sql);
            // Set parameters
            statement.setString(1, sno);
            statement.setString(2, name);
            statement.setString(3, cc);
            statement.setString(4, designation);

            // Execute SQL query
            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                message = "Record inserted successfully!";
            } else {
                message = "Failed to insert record!";
            }
        } catch (ClassNotFoundException | SQLException ex) {
            message = "Error: " + ex.getMessage();
            ex.printStackTrace();
        
            // Set message attribute and forward to a confirmation page
            request.setAttribute("message", message);
            request.getRequestDispatcher("confirmation.jsp").forward(request, response);
        }
    }
}
