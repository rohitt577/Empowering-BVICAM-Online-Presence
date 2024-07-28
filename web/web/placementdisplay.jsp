<!DOCTYPE html>
<html>
<head>
  <title>Inserted Student Data</title>
</head>
<body>
  <h1>Inserted Student Data</h1>
  <table border="1">
    <tr>
      <th>Column</th>
      <th>Value</th>
    </tr>
    <%-- Java code to fetch data from the database --%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.util.*" %>
    <%@ page import="javax.servlet.*" %>
    <%@ page import="javax.servlet.http.*" %>
    <% 
      try {
          // Establish connection to the database
          Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bvp", "root", "Rattle@123");
          
          // Query to retrieve inserted data
          String sql = "SELECT * FROM student_data ORDER BY id DESC LIMIT 1"; // Assuming the last inserted row
          Statement statement = conn.createStatement();
          ResultSet rs = statement.executeQuery(sql);
          
          // Iterate through the result set and display data
          while(rs.next()) {
    %>
    <tr>
      <td>Batch</td>
      <td><%= rs.getString("batch") %></td>
    </tr>
    <tr>
      <td>Discipline</td>
      <td><%= rs.getString("discipline") %></td>
    </tr>
    <tr>
      <td>Total Students Passed Out</td>
      <td><%= rs.getInt("total_passed") %></td>
    </tr>
    <tr>
      <td>Total Students Registered</td>
      <td><%= rs.getInt("total_registered") %></td>
    </tr>
    <tr>
      <td>Placed Through Placement Cell</td>
      <td><%= rs.getInt("placed_students") %></td>
    </tr>
    <% 
          }
          
          // Close resources
          rs.close();
          statement.close();
          conn.close();
          
      } catch (SQLException ex) {
          out.println("Error: " + ex.getMessage());
          ex.printStackTrace();
      }
    %>
  </table>
</body>
</html>
