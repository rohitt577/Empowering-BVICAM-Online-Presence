<!DOCTYPE html>
<html>
<head>
  <title>Inserted Student Data</title>
</head>
<body>
  <h1>Inserted Student Data</h1>
  <table border="1">
    <tr>
      <th>Batch</th>
      <th>Discipline</th>
      <th>Total Students Passed Out</th>
      <th>Total Students Registered</th>
      <th>Placed Through Placement Cell</th>
    </tr>
    <%-- Java code to fetch data from the database --%>
    <%@ page import="java.sql.*" %>
    <% 
      Connection conn = null;
      Statement statement = null;
      ResultSet rs = null;
      
      try {
          // Load the JDBC driver
          Class.forName("com.mysql.cj.jdbc.Driver");
          
          // Establish connection to the database
          conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bvp", "root", "Rattle@123");
          
          // Query to retrieve all data
          String sql = "SELECT * FROM student_data"; // Retrieve all rows
          statement = conn.createStatement();
          rs = statement.executeQuery(sql);
          
          // Iterate through the result set and display data
          while(rs.next()) {
    %>
    <tr>
      <td><%= rs.getString("batch") != null ? rs.getString("batch") : "N/A" %></td>
      <td><%= rs.getString("discipline") != null ? rs.getString("discipline") : "N/A" %></td>
      <td><%= rs.getInt("total_passed") %></td>
      <td><%= rs.getInt("total_registered") %></td>
      <td><%= rs.getInt("placed_students") %></td>
    </tr>
    <% 
          } 
      } catch (SQLException | ClassNotFoundException ex) {
          out.println("Error: " + ex.getMessage());
          ex.printStackTrace();
      } finally {
          // Close resources
          try {
              if (rs != null) rs.close();
              if (statement != null) statement.close();
              if (conn != null) conn.close();
          } catch (SQLException ex) {
              out.println("Error closing resources: " + ex.getMessage());
          }
      }
    %>
  </table>
</body>
</html>
