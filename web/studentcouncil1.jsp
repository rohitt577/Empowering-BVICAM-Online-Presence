<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<style>
    body{
        align-items: center;
        background-color: aliceblue;
    }
    .styled-table {
    border-collapse: collapse;
    margin: 100px 300px;
    font-size: 0.9em;
    font-family: sans-serif;
    min-width: 400px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}
.styled-table thead tr {
    background-color: #272a47;
    color: #ffffff;
    text-align: left;
}
.styled-table th,
.styled-table td {
    padding: 12px 15px;
}
.styled-table tbody tr {
    border-bottom: 1px solid #dddddd;
}
.styled-table tbody tr:nth-of-type(even) {
    background-color: #f3f3f3;
}
.styled-table tbody tr:last-of-type {
    border-bottom: 2px solid #272a47;
}
styled-table {
  width: 100%; /* Maintain full-width for responsiveness */
  border-collapse: collapse; /* Ensure borders collapse for a neat look */
  margin: 20px auto; /* Add some margin for better spacing */
  border: 2px solid #070db0; /* Add a visible border to the entire table */
  box-shadow: 0px 2px 5px rgba(169, 105, 105, 0.1); /* Subtle box-shadow for depth */
  font-family: sans-serif; /* Use a modern font for better readability */
  transition: transform 0.2s ease-out; /* Add a transition for the hover effect */
}

th, td {
  padding: 15px; /* Increase padding for better spacing and content */
  border: 1px solid #ddd; /* Lighter border within cells */
  background-color: #fff; /* White background for clear text */
  text-align: left; /* Maintain left alignment */
  transition: background-color 0.2s ease-out; /* Add a transition for the hover effect */
}

th {
  font-weight: bold; /* Keep bold text for headers */
  color: #100963; /* Darker color for contrast */
  background-color:rgb(193, 216, 236) ; /* Light gray background for headers */
  border-bottom: 2px solid #ddd; /* Thicker bottom border for headers */
}

tr:nth-child(even) { /* Alternate row background color for striping */
  background-color: #f8f8f8;
}

tr:hover {
  transform: translateY(-5px); /* Float the row up slightly on hover */
  background-color: #bc3d3d; /* Change background color slightly on hover */
  cursor: pointer; /* Indicate hoverability */
}
h1,h4{
    text-align: center;
}
p{
    align-items: left;
    text-align: center;
}
</style><body>
    <div class="small">    

        <div include-html="header.html" id="header"></div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
      $(function() {
        $('#header').load('header.html');
      });
    </script>
    <br>
    <br>
<h1>Students' Council</h1>
<div class="changes" style="padding-left: 100px; padding-right: 100px;">
<p >The Students’ Council deals with the formulation of policies and making recommendation on matters in the arena of student’s welfare, various regulations and policies related to the students, discipline among students, etc.</p>
<p  style="text-align: left; padding-left: 100px;"> <b>The constitution of the council is as under:-</p></b><br>
<h4><b>COMPOSITION</b></h4>
<p style="text-align: left;">1. Director, BVICAM, Chairperson, Students’ Council.</p>
<p style="text-align: left;">2. Training & Placement Officer, BVICAM, Ex-Officio Member.</p>
<p style="text-align: left;">3. Examination Incharge, BVICAM, Ex-Officio Member.</p>
<p style="text-align: left;">4. All Class Coordinators (Teacher), Ex-Officio Members.</p>
<p style="text-align: left;">5. Librarian, BVICAM, Ex-Officio Members.</p>
<p style="text-align: left;">6. All Class Representatives (Students), Ex-Officio Members.</p>
<p style="text-align: left;">7. Two students’ representatives from each class (one class topper, one weak student of each class), based upon the percentage of previous years. In case of first year, CET rank shall be the criteria.</p>
<p>Based upon the above constitution, the following Students’ Council is notified for the academic year 2019-2020:-</p></div>
<table class="styled-table" style="font-size: 16px; width: 900px;">
    <thead>
        <tr>
            <th>S. No.</th>
            <th>Name</th>
            <th>Designation</th>
            <th>Constitutional Capacity</th>
        </tr>
    </thead>
    <tbody>
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
    </tbody>
</table>

<div include-html="footer.html" id="footer"></div>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script>
    $(function() {
      $('#footer').load('footer.html');
    });
  </script>
  </body>
  </html