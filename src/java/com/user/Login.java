package com.user;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String email = request.getParameter("user_email");
            String password = request.getParameter("user_password");

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bvp", "root", "Rattle@123")) {
                    String q = "SELECT * FROM user WHERE email=? AND password=?";
                    try (PreparedStatement pstmt = con.prepareStatement(q)) {
                        pstmt.setString(1, email);
                        pstmt.setString(2, password);
                        try (ResultSet rs = pstmt.executeQuery()) {
                            if (rs.next()) {
                                HttpSession session = request.getSession(true);
                                session.setAttribute("user_email", email);

                                // Check if the password has been reset
                                boolean passwordReset = rs.getBoolean("password_reset");
                                if (passwordReset) {
                                    // Redirect to dashboard
                                    response.sendRedirect("dashboard.jsp");
                                } else {
                                    // Redirect to reset password screen
                                    response.sendRedirect("reset_password.jsp");
                                }

                            } else {
                                out.println("<h1>Login failed. Invalid email or password.</h1>");
                            }
                        }
                    }
                }
            } catch (ClassNotFoundException | SQLException e) {
                out.println("<h1>Error: " + e.getMessage() + "</h1>");
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Servlet for user login";
    }
}
