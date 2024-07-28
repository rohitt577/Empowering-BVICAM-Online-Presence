<%@ page import="java.sql.*" %>
<%@ page import="java.util.Base64" %>
<%@ page import="java.io.ByteArrayOutputStream" %>
<%@ page import="java.io.InputStream" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
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

        .box {
            overflow: hidden;
            list-style: none;
            margin: 0;
            padding: 0;
        }

        .box li {
            float: left;
            margin: 0 30px 30px 0;
            -webkit-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.27), 0 0 40px rgba(0, 0, 0, 0.06) inset;
            -moz-box-shadow: 0 1px 4px rgba(0, 0, 0, 0.27), 0 0 40px rgba(0, 0, 0, 0.06) inset;
            box-shadow: 0 1px 4px rgba(0, 0, 0, 0.27), 0 0 40px rgba(0, 0, 0, 0.06) inset;
        }

        .box li img {
            width: 250px;
            height: 250px;
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
        <h2>Photo Gallery</h2>
        <ul class="box">
            <% 
                try {
                    // Define database connection parameters
                    String url = "jdbc:mysql://localhost:3306/BVP";
                    String username = "root";
                    String password = "Rattle@123";

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
                            <li><img src="<%= imageUrl %>" alt="Uploaded Image"></li>
            <%          }
                    }
                    // Close resources
                    resultSet.close();
                    statement.close();
                    conn.close();
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            %>
        </ul>
    </div>

    <footer>
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
