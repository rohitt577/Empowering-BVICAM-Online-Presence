/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
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
/**
 *
 * @author chauh
 */@WebServlet(name = "insertFees", urlPatterns = {"/fees"})
public class insertFees extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve values from the form
        String batch1 = request.getParameter("batch1");
        String batch2 = request.getParameter("batch2");
        
        String fee1 = request.getParameter("fee1");
        String fee2 = request.getParameter("fee2");
        String fee3 = request.getParameter("fee3");
        String fee4 = request.getParameter("fee4");
        String fee5 = request.getParameter("fee5");
        
        String fee8 = request.getParameter("fee8");
        String fee9 = request.getParameter("fee9");
        String fee10 = request.getParameter("fee10");
        String fee11 = request.getParameter("fee11");
        String fee12 = request.getParameter("fee12");
        String fee13 = request.getParameter("fee13");
        String fee14 = request.getParameter("fee14");
        String fee15 = request.getParameter("fee15");
     

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
            // CREATE TABLE statement
            String table = "CREATE TABLE IF NOT EXISTS fees (sno INT PRIMARY KEY AUTO_INCREMENT, batch1 VARCHAR(255), batch2 VARCHAR(255), fee1 DECIMAL(10, 2), fee2 DECIMAL(10, 2), fee3 DECIMAL(10, 2), fee4 DECIMAL(10, 2), fee5 DECIMAL(10, 2), fee6 DECIMAL(10, 2), fee7 DECIMAL(10, 2), fee8 DECIMAL(10, 2), fee9 DECIMAL(10, 2), fee10 DECIMAL(10, 2), fee11 DECIMAL(10, 2), fee12 DECIMAL(10, 2), fee13 DECIMAL(10, 2), fee14 DECIMAL(10, 2), fee15 DECIMAL(10, 2))";
            statement = conn.prepareStatement(table);
            statement.executeUpdate(); // Execute CREATE TABLE statement

            // INSERT INTO statement
            String sql = "INSERT INTO fees (batch1, batch2, fee1, fee2, fee3, fee4, fee5, fee8, fee9, fee10, fee11, fee12, fee13, fee14, fee15) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            statement = conn.prepareStatement(sql);
            // Set parameters
            statement.setString(1, batch1);
            statement.setString(2, batch2);
            statement.setString(3, fee1);
            statement.setString(4, fee2);
            statement.setString(5, fee3);
            statement.setString(6, fee4);
            statement.setString(7, fee5);
            statement.setString(8, fee8);
            statement.setString(9, fee9);
            statement.setString(10, fee10);
            statement.setString(11, fee11);
            statement.setString(12, fee12);
            statement.setString(13, fee13);
            statement.setString(14, fee14);
            statement.setString(15, fee15);

            // Execute SQL query
            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                message = "Fees inserted successfully!";
            } else {
                message = "Failed to insert fees!";
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