<%@ page import="java.sql.*" %>
<%@ page import="java.util.Base64" %>
<%@ page import="java.io.ByteArrayOutputStream" %>
<%@ page import="java.io.InputStream" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Webinar Details</title>
</head>
<body>
    <h1>Webinar Details</h1>
    
    <table border="1">
        <tr>
            <th>S. No.</th>
            <th>Title of Webinar</th>
            <th>Speaker(s)</th>
            <th>Dates</th>
            <th>Time</th>
            <th>Registration Fee</th>
            <th>Registration Status</th>
            <th>Registration Process</th>
            <th>More Details</th>
        </tr>
        
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

                // Query to retrieve webinar details
                String sql = "SELECT * FROM webinar_details order by sno desc";
                PreparedStatement statement = conn.prepareStatement(sql);
                ResultSet resultSet = statement.executeQuery();

                // Iterate through the result set and display webinar details in table rows
                while (resultSet.next()) {
        %>
                    <tr>
                        <td><%= resultSet.getString("sno") %></td>
                        <td><%= resultSet.getString("title") %></td>
                        <td><%= resultSet.getString("speakers") %></td>
                        <td><%= resultSet.getString("dates") %></td>
                        <td><%= resultSet.getString("time") %></td>
                        <td><%= resultSet.getString("fee") %></td>
                        <td><%= resultSet.getString("status") %></td>
                        <td><%= resultSet.getString("process") %></td>
                        <td><%= resultSet.getString("details") %></td>
                    </tr>
        <%
                }
                // Close resources
                resultSet.close();
                statement.close();
                conn.close();
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        %>
    </table>
</body>
</html>
