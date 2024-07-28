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

@WebServlet(name = "deleteStudent", urlPatterns = {"/deleteStudent"})
public class deleteStudent extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve serial number to be deleted
        String sno = request.getParameter("sno");

        Connection conn = null;
        PreparedStatement deleteStatement = null;
        PreparedStatement updateStatement = null;
        String message = null;

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to the database
            String url = "jdbc:mysql://localhost:3306/bvp";
            String username = "root";
            String password = "Rattle@123";
            conn = DriverManager.getConnection(url, username, password);

            // Prepare SQL statement to delete the record with the given sno
            String deleteSql = "DELETE FROM student_council WHERE sno = ?";
            
            deleteStatement = conn.prepareStatement(deleteSql);
            deleteStatement.setString(1, sno);
            deleteStatement.executeUpdate();

            // Prepare SQL statement to update the sno of other records
            String updateSql = "UPDATE student_council SET sno = sno - 1 WHERE sno > ?";
            updateStatement = conn.prepareStatement(updateSql);
            updateStatement.setString(1, sno);
            updateStatement.executeUpdate();

            message = "Record with sno " + sno + " deleted successfully!";
        } catch (ClassNotFoundException | SQLException ex) {
            message = "Error: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            // Close resources
            try {
                if (deleteStatement != null) {
                    deleteStatement.close();
                }
                if (updateStatement != null) {
                    updateStatement.close();
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