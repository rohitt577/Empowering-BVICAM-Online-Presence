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

@WebServlet(name = "insertFeesBA", urlPatterns = {"/insertFeesBA"})
public class insertFeesBA extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve values from the form
        String batch1 = request.getParameter("baBatch1");
        String batch2 = request.getParameter("baBatch2");
        String batch3 = request.getParameter("baBatch3");
        
        String bafee1 = request.getParameter("bafee1");
        String bafee2 = request.getParameter("bafee2");
        String bafee3 = request.getParameter("bafee3");
        String bafee4 = request.getParameter("bafee4");
        String bafee5 = request.getParameter("bafee5");
        String bafee6 = request.getParameter("bafee6");
        String bafee7 = request.getParameter("bafee7");
        String bafee8 = request.getParameter("bafee8");
        String bafee9 = request.getParameter("bafee9");
        String bafee10 = request.getParameter("bafee10");
        String bafee11 = request.getParameter("bafee11");
        String bafee12 = request.getParameter("bafee12");
        String bafee13 = request.getParameter("bafee13");
        String bafee14 = request.getParameter("bafee14");
        String bafee15 = request.getParameter("bafee15");
        String bafee16 = request.getParameter("bafee16");
        String bafee17 = request.getParameter("bafee17");
        String bafee18 = request.getParameter("bafee18");
        String bafee19 = request.getParameter("bafee19");

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
            String table = "CREATE TABLE IF NOT EXISTS fees_ba (sno INT PRIMARY KEY AUTO_INCREMENT, batch1 VARCHAR(255), batch2 VARCHAR(255), batch3 VARCHAR(255), bafee1 DECIMAL(10, 2), bafee2 DECIMAL(10, 2), bafee3 DECIMAL(10, 2), bafee4 DECIMAL(10, 2), bafee5 DECIMAL(10, 2), bafee6 DECIMAL(10, 2), bafee7 DECIMAL(10, 2), bafee8 DECIMAL(10, 2), bafee9 DECIMAL(10, 2), bafee10 DECIMAL(10, 2), bafee11 DECIMAL(10, 2), bafee12 DECIMAL(10, 2), bafee13 DECIMAL(10, 2), bafee14 DECIMAL(10, 2), bafee15 DECIMAL(10, 2), bafee16 DECIMAL(10, 2), bafee17 DECIMAL(10, 2), bafee18 DECIMAL(10, 2), bafee19 DECIMAL(10, 2))";

            statement = conn.prepareStatement(table);
            statement.executeUpdate(); // Execute CREATE TABLE statement

            // INSERT INTO statement
            String sql = "INSERT INTO fees_ba (batch1, batch2, batch3, bafee1, bafee2, bafee3, bafee4, bafee5, bafee6, bafee7, bafee8, bafee9, bafee10, bafee11, bafee12, bafee13, bafee14, bafee15, bafee16, bafee17, bafee18, bafee19) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            statement = conn.prepareStatement(sql);
            // Set parameters
            statement.setString(1, batch1);
            statement.setString(2, batch2);
            statement.setString(3, batch3);
            statement.setString(4, bafee1);
            statement.setString(5, bafee2);
            statement.setString(6, bafee3);
            statement.setString(7, bafee4);
            statement.setString(8, bafee5);
            statement.setString(9, bafee6);
            statement.setString(10, bafee7);
            statement.setString(11, bafee8);
            statement.setString(12, bafee9);
            statement.setString(13, bafee10);
            statement.setString(14, bafee11);
            statement.setString(15, bafee12);
            statement.setString(16, bafee13);
            statement.setString(17, bafee14);
            statement.setString(18, bafee15);
            statement.setString(19, bafee16);
            statement.setString(20, bafee17);
            statement.setString(21, bafee18);
            statement.setString(22, bafee19);

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
