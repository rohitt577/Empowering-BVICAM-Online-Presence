<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Council Members</title>
</head>
<body>
    <h2>Student Council Members</h2>
    <table border="1">
        <tr>
            <th>S.No</th>
            <th>Name</th>
            <th>Designation</th>
            <th>CC</th>
        </tr>
        <% 
            try {
                // Define database connection parameters
                String url = "jdbc:mysql://localhost:3306/BVP";
                String username = "root";
                String password = "Rattle@123";

                // Load the MySQL JDBC driver
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Establish database connection
                Connection conn = DriverManager.getConnection(url, username, password);

                // Query to retrieve student council members
                String sql = "SELECT * FROM student_council";
                PreparedStatement statement = conn.prepareStatement(sql);
                ResultSet resultSet = statement.executeQuery();

                // Iterate through the result set and display student council members in table rows
                while (resultSet.next()) {
        %>
                    <tr>
                        <td><%= resultSet.getInt("sno") %></td>
                        <td><%= resultSet.getString("Name") %></td>
                        <td><%= resultSet.getString("Designation") %></td>
                        <td><%= resultSet.getString("cc") %></td>
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
