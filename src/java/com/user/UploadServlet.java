package com.user;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet(name = "UploadServlet", urlPatterns = {"/UploadServlet"})
@MultipartConfig(maxFileSize = 16177215) // 16 MB
public class UploadServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fileType = request.getParameter("fileType"); // Get the selected file type
        InputStream inputStream = null; // input stream of the upload file
        Part filePart = request.getPart("file");

        if (filePart != null) {
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }

        Connection conn = null;
        String message = null;

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to the database
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/BVP", "root", "Rattle@123");

            // constructs SQL statement based on selected file type
            String sql = "";
            if ("image".equals(fileType)) {
                sql = "INSERT INTO images (image) values (?)";
            } else if ("pdf".equals(fileType)) {
                sql = "INSERT INTO pdf_files (pdf) values (?)";
            }

            if (!sql.isEmpty()) {
                PreparedStatement statement = conn.prepareStatement(sql);

                if (inputStream != null) {
                    // fetches input stream of the upload file for the blob column
                    statement.setBlob(1, inputStream);
                }

                // sends the statement to the database server
                int row = statement.executeUpdate();
                if (row > 0) {
                    message = "File uploaded and saved into database!";
                }
            } else {
                message = "Invalid file type selected!";
            }

        } catch (ClassNotFoundException ex) {
            message = "ERROR: MySQL JDBC Driver not found!";
            ex.printStackTrace();
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }

            // sets the message in request scope
            request.setAttribute("Message", message);

            // forwards to the message page
            getServletContext().getRequestDispatcher("/message.jsp").forward(request, response);
        }
    }
}
