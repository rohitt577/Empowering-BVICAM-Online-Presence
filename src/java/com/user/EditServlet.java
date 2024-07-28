package com.user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "EditServlet", urlPatterns = {"/EditServlet"})
public class EditServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/BVP";
            String username = "root";
            String password = "Rattle@123";
            conn = DriverManager.getConnection(url, username, password);

            String sql = "UPDATE webinar_details SET title = ?, speakers = ?, dates = ?, time = ?, fee = ?, status = ?, process = ?, details = ? WHERE sno = ?";
            statement = conn.prepareStatement(sql);
            statement.setString(1, title);
            statement.setString(2, speakers);
            statement.setString(3, dates);
            statement.setString(4, time);
            statement.setString(5, fee);
            statement.setString(6, status);
            statement.setString(7, process);
            statement.setString(8, details);
            statement.setString(9, sno);

            int rowsUpdated = statement.executeUpdate();
            if (rowsUpdated > 0) {
                message = "Webinar details updated successfully!";
            } else {
                message = "Failed to update webinar details!";
            }
        } catch (ClassNotFoundException | SQLException ex) {
            message = "Error: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
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

            request.setAttribute("message", message);
            request.getRequestDispatcher("/confirmation.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sno = request.getParameter("sno");
        Connection conn = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        String message = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/BVP";
            String username = "root";
            String password = "Rattle@123";
            conn = DriverManager.getConnection(url, username, password);

            String sql = "SELECT * FROM webinar_details WHERE sno = ?";
            statement = conn.prepareStatement(sql);
            statement.setString(1, sno);

            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                // Forward the result set to edit.jsp for displaying the editable fields
                request.setAttribute("webinar", resultSet);
                request.getRequestDispatcher("/edit.jsp").forward(request, response);
            } else {
                message = "Webinar with S. No. " + sno + " not found.";
                request.setAttribute("message", message);
                request.getRequestDispatcher("/confirmation.jsp").forward(request, response);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            message = "Error: " + ex.getMessage();
            request.setAttribute("message", message);
            request.getRequestDispatcher("/confirmation.jsp").forward(request, response);
        } finally {
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (statement != null) {
                    statement.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }
}
