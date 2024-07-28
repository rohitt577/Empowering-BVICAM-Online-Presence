<%@ page import="java.sql.*" %>
<%@ page import="java.util.Base64" %>
<%@ page import="java.io.ByteArrayOutputStream" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.io.IOException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View PDF</title>
</head>
<body>
    <h1>View PDF</h1>
    
    <%-- Retrieve the ID of the PDF file from the URL parameter --%>
    <% int fileId = Integer.parseInt(request.getParameter("id")); %>
    
    <%-- Define database connection parameters --%>
    <% String url = "jdbc:mysql://localhost:3306/BVP"; %>
    <% String username = "root"; %>
    <% String password = "Rattle@123"; %>
    
    <%-- Establish database connection --%>
    <% Connection conn = null; %>
    <% try { %>
        <% Class.forName("com.mysql.cj.jdbc.Driver"); %>
        <% conn = DriverManager.getConnection(url, username, password); %>
        
        <%-- Query to retrieve the PDF file based on the ID --%>
        <% String sql = "SELECT pdf FROM pdf_files WHERE id = ?"; %>
        <% PreparedStatement statement = conn.prepareStatement(sql); %>
        <% statement.setInt(1, fileId); %>
        <% ResultSet resultSet = statement.executeQuery(); %>
        
        <%-- Display the PDF file --%>
        <% if (resultSet.next()) { %>
            <% Blob blob = resultSet.getBlob("pdf"); %>
            <% if (blob != null) { %>
                <% try (InputStream inputStream = blob.getBinaryStream()) { %>
                    <%-- Set response content type --%>
                    <% response.setContentType("application/pdf"); %>
                    
                    <%-- Stream the PDF content to the response --%>
                    <% byte[] buffer = new byte[4096]; %>
                    <% int bytesRead; %>
                    <% while ((bytesRead = inputStream.read(buffer)) != -1) { %>
                        <% response.getOutputStream().write(buffer, 0, bytesRead); %>
                    <% } %>
                <% } %>
            <% } %>
        <% } %>
        
        <%-- Close resources --%>
        <% resultSet.close(); %>
        <% statement.close(); %>
    <% } catch (ClassNotFoundException | SQLException | IOException ex) { %>
        <% ex.printStackTrace(); %>
    <% } finally { %>
        <%-- Close database connection --%>
        <% if (conn != null) { %>
            <% try { conn.close(); } catch (SQLException ex) { ex.printStackTrace(); } %>
        <% } %>
    <% } %>
</body>
</html>
