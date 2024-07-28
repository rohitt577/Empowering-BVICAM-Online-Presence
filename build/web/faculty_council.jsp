<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>BVICAM | Where we turn you into a force </title>
</head>
<body>
  <style>
    @import url('https://fonts.googleapis.com/css?family=EB+Garamond:400,500|Roboto:400,700');

    * {
      box-sizing: border-box;
      &::before, &::after {
        box-sizing: border-box;
      }
    }
    .about {
      border: 1px sandybrown #000; /* Adjust border color as needed */
      box-shadow: 5px 5px 15px rgba(0,0,0,0.3); /* Adjust shadow color, size, blur, and spread as needed */
    }
    body {
      font-family: 'Roboto', sans-serif;
      font-size: 1rem;
      font-weight: 400;
      line-height: 1.6;
      margin: 0;
      padding: 0;
      color: #000;
      background: #fff;
      text-rendering: optimizeLegibility;
    }
    h1, h2, h3 {
      font-family: 'EB Garamond', serif;
      color: #000;
      line-height: 1.1;
    }
    h2, h3 {
      color: #000;
      font-weight: 400;
    }
    h1 {
      font-size: 2.325rem;
      font-weight: 500;
      margin: 0;
    }
    h2 {
      font-size: 2rem;
      margin: 0 0 2rem;
    }
    h3 {
      font-size: 1.75rem;
      margin: 0 0 2rem;
    }
    p {
      margin: 0 0 1.5rem;
      &:nth-child(4) {
        margin: 0;
      }
      &.copyright {
        margin: 1.5rem 0;
      }
    }
    a {
      color: #000;
      text-decoration: none;
      &:hover {
        color: #000;
      }
    }
    blockquote {
      font-style: italic;
      text-align: center;
      width: 40rem;
      height: auto;
      max-width: 100%;
      margin: auto;
      display: flex;
      align-items: center;
    }
    ul {
      list-style-type: disc;
      margin: 0;
      padding: 0;
      li {
        margin: 0 1.5rem 0 0;
      }
    }
    .intro {
      margin: 1rem 0;
      padding: 0;
      width: 100%;
    }
    #logo {
      color: black;
      font-weight: 700;
      font-size: 0.875rem;
      letter-spacing: 0.125rem;
      text-transform: uppercase;
      margin: 0;
    }
    .container {
      margin: auto;
      padding: 0 1rem;
      max-width: 75rem;
      width: 100%;
    }
    main {
      padding: 2rem 0;
    }
    .grid {
      > [class*="column-"] {
        padding: 1rem;
      }
    }
    .section-heading {
      transform: rotate(0) translateX(0);
    }
    footer {
      text-align: center;
    }
    @media (min-width: 768px) {
      body {
        font-size: 1.125rem;
      }
      h1 {
        font-size: 3.25rem;
      }
      h2 {
        font-size: 2.75rem;
      }
      h3 {
        font-size: 2.25rem;
      }
      img {
        height: 10px;
      }
    }
    table {
      border-collapse: collapse;
      width: 100%;
    }
    th, td {
      border: 1px solid #ddd;
      padding: 8px;
      text-align: left;
    }
    th {
      background-color: #f2f2f2;
    }
  </style>
  <div class="small">
    <div include-html="header.html" id="header"></div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
      $(function() {
        $('#header').load('header.html');
      });
    </script>
  </div>
  <main class="about">
    <div class="container">
      <section class="grid info">
        <div class="column-xs-12 column-md-1">
          <div class="about">
            <h1 class="
                section-heading"><b>Faculty Council</b></h1>
          </div>
        </div>
        <div class="column-xs-12 column-md-7">
          <div class="intro">
            <p>This section displays the faculty council data:</p>
            <table>
              <tr>
                <th>S. No.</th>
                <th>Name</th>
                <th>Constitutional Capacity</th>
                <th>Designation</th>
              </tr>
              <!-- Java code to fetch data from the database -->
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
                    String sql = "SELECT * FROM faculty_council"; // Retrieve all rows
                    statement = conn.createStatement();
                    rs = statement.executeQuery(sql);
                    
                    // Iterate through the result set and display data
                    while(rs.next()) {
              %>
              <tr>
                <td><%= rs.getInt("sno") %></td>
                <td><%= rs.getString("name") != null ? rs.getString("name") : "N/A" %></td>
                <td><%= rs.getString("cc") != null ? rs.getString("cc") : "N/A" %></td>
                <td><%= rs.getString("designation") != null ? rs.getString("designation") : "N/A" %></td>
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
          </div>
        </div>
      </section>
    </div>
  </main>
  <div include-html="footer.html" id="footer"></div>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script>
    $(function() {
      $('#footer').load('footer.html');
    });
  </script>
</body>
</html>
