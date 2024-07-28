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

@WebServlet(name = "DeleteServlet", urlPatterns = {"/DeleteServlet"})
public class DeleteServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sno = request.getParameter("deleteSno"); // Get the S. No. to delete

        Connection conn = null;
        PreparedStatement statement = null;
        String message = null;

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish database connection
            String url = "jdbc:mysql://localhost:3306/BVP";
            String username = "root";
            String password = "Rattle@123";
            conn = DriverManager.getConnection(url, username, password);

            // Create SQL query to delete webinar based on S. No.
            String sql = "DELETE FROM webinar_details WHERE sno=?";
            statement = conn.prepareStatement(sql);
            statement.setString(1, sno);

            // Execute SQL query
            int rowsDeleted = statement.executeUpdate();
            if (rowsDeleted > 0) {
                message = "Webinar with S. No. " + sno + " deleted successfully!";
            } else {
                message = "No webinar found with S. No. " + sno;
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
            request.getRequestDispatcher("/confirmation.jsp").forward(request, response);
        }
    }
}
