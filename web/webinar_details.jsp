<%@ page import="java.sql.*" %>
<%@ page import="java.util.Base64" %>
<%@ page import="java.io.ByteArrayOutputStream" %>
<%@ page import="java.io.InputStream" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>BVICAM | Where we turn you into a force</title>
    <style>
        body {
            font-size: 16px;
            font-family: "Bitter", sans-serif;
            color: #f5f4ed;
            background-color: #e8e8e8;
            margin: 0;
            padding: 0;
        }
        
        header {
            background: #041341;
            height: 100px;
            text-align: center;
        }

        header h1 {
            font-size: 30px;
            font-weight: bold;
            font-family: "Open Sans", sans-serif;
            text-transform: uppercase;
            padding-top: 40px;
            margin-bottom: 20px;
            color: white; /* Set text color to white */
        }

        .main {
            width: 900px;
            margin: 0 auto;
            padding-top: 40px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            padding-bottom: 20px; 
            margin-bottom: 20px;
        }

        th {
            background-color: #041341;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
            padding-bottom: 20px; 
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="small">    
        <!-- Include header -->
        <div include-html="header.html" id="header"></div>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
            $(function() {
                $('#header').load('header.html');
            });
        </script>
    </div>

    <header>
        <h1>BVICAM | Where we turn you into a force</h1>
    </header>

    <div class="main">
        <h2>Webinar Details</h2>
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
                    String sql = "SELECT * FROM webinar_details ORDER BY sno DESC";
                    PreparedStatement statement = conn.prepareStatement(sql);
                    ResultSet resultSet = statement.executeQuery();

                    // Iterate through the result set and display webinar details in table rows
                    while (resultSet.next()) {
            %>
                        <tr >
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
            <%          }
                    // Close resources
                    resultSet.close();
                    statement.close();
                    conn.close();
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            %>
            <br>
            <br>
        </table>
    </div>

    <footer style="padding-top: 40px;">
        <div include-html="footer.html" id="footer"></div>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
            $(function() {
                $('#footer').load('footer.html');
            });
        </script>
    </footer>
</body>
</html>
