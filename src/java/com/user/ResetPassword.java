package com.user;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "ResetPassword", urlPatterns = {"/ResetPassword"})
public class ResetPassword extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String newPassword = request.getParameter("newPassword");
            String confirmPassword = request.getParameter("confirmPassword");
            
            if (!newPassword.equals(confirmPassword)) {
                out.println("Passwords do not match!");
                return;
            }
            
            // Assume you have a method to retrieve the user's email from session
            String userEmail = (String) request.getSession().getAttribute("user_email");
            
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bvp", "root", "Rattle@123")) {
                    // Update user's password
                    String updatePasswordQuery = "UPDATE user SET password=? WHERE email=?";
                    try (PreparedStatement pstmt = con.prepareStatement(updatePasswordQuery)) {
                        pstmt.setString(1, newPassword);
                        pstmt.setString(2, userEmail);
                        int rowsAffected = pstmt.executeUpdate();
                        if (rowsAffected > 0) {
                            // Update password reset status
                            String updateResetStatusQuery = "UPDATE user SET password_reset=true WHERE email=?";
                            try (PreparedStatement pstmt2 = con.prepareStatement(updateResetStatusQuery)) {
                                pstmt2.setString(1, userEmail);
                                int rowsAffected2 = pstmt2.executeUpdate();
                                if (rowsAffected2 > 0) {
                                    out.println("Password reset successfully!");
                                } else {
                                    out.println("Failed to update password reset status!");
                                }
                            }
                        } else {
                            out.println("Failed to reset password!");
                        }
                    }
                }
            } catch (ClassNotFoundException | SQLException e) {
                out.println("Error: " + e.getMessage());
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Servlet for resetting user password";
    }
}
