<%@ page import="java.sql.*" %>
<%@ page import="java.util.Base64" %>
<%@ page import="java.io.ByteArrayOutputStream" %>
<%@ page import="java.io.InputStream" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Uploaded Files</title>
</head>
<body>
    <h1>Uploaded Files</h1>
    
    <h2>PDF Files:</h2>
    <%
        // Define database connection parameters
        String url = "jdbc:mysql://localhost:3306/BVP";
        String username = "root";
        String password = "Rattle@123";

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish database connection
            Connection conn = DriverManager.getConnection(url, username, password);

            // Query to retrieve PDF files
            String sqlPDFs = "SELECT id FROM pdf_files";
            PreparedStatement statementPDFs = conn.prepareStatement(sqlPDFs);
            ResultSet resultSetPDFs = statementPDFs.executeQuery();

            // Iterate through the result set and display links for PDF files
            while (resultSetPDFs.next()) {
                int fileId = resultSetPDFs.getInt("id");
    %>
                <a href="viewPDF.jsp?id=<%= fileId %>">PDF File <%= fileId %></a><br/>
    <%
            }
            // Close PDF resources
            resultSetPDFs.close();
            statementPDFs.close();
            
            // Close database connection
            conn.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    %>
    
    <hr/>
    
    <h2>Images:</h2>
    <%
        try {
            // Establish database connection
            Connection conn = DriverManager.getConnection(url, username, password);

            // Query to retrieve images
            String sql = "SELECT image FROM images";
            PreparedStatement statement = conn.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();

            // Iterate through the result set and display images
            while (resultSet.next()) {
                Blob blob = resultSet.getBlob("image");
                if (blob != null) {
                    InputStream inputStream = blob.getBinaryStream();
                    ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                    byte[] buffer = new byte[4096];
                    int bytesRead = -1;
                    while ((bytesRead = inputStream.read(buffer)) != -1) {
                        outputStream.write(buffer, 0, bytesRead);
                    }
                    byte[] imageBytes = outputStream.toByteArray();
                    String base64Image = Base64.getEncoder().encodeToString(imageBytes);
                    String imageUrl = "data:image/jpeg;base64," + base64Image;
    %>
                    <img src="<%= imageUrl %>" alt="Uploaded Image"><br/>
    <%
                }
            }
            // Close resources
            resultSet.close();
            statement.close();
            conn.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    %>
    
</body>
</html>
