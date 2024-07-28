<%@ page import="java.sql.*" %>
<%@ page import="java.util.Base64" %>
<%@ page import="java.io.ByteArrayOutputStream" %>
<%@ page import="java.io.InputStream" %>


<!DOCTYPE html>
<html>
<head>
    <title>Uploaded Files</title>
    <style>
        /* Style for card */
        .card {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
            max-width: 300px;
            margin: auto;
            text-align: center;
        }

        /* Style for slider container */
        .slider-container {
            width: 100%;
            overflow: hidden;
            position: relative;
            margin-top: 20px;
        }

        /* Style for slides */
        .slide {
            display: none;
        }

        /* Style for images */
        .slide img {
            width: 100%;
            height: auto;
        }
    </style>
</head>
<body>
    <div class="card">
        <h2>BVICAM PHOTO GALLERY</h2>
        <div class="slider-container">
            <% 
                try {
                    // Database connection details
                    String url = "jdbc:mysql://localhost:3306/bvp";
                    String username = "root";
                    String password = "Rattle@123";

                    // Establish database connection
                    Connection conn = DriverManager.getConnection(url, username, password);

                    // Query to retrieve images
                    String sql = "SELECT image FROM images";
                    PreparedStatement statement = conn.prepareStatement(sql);
                    ResultSet resultSet = statement.executeQuery();

                    // Counter for slide index
                    int slideIndex = 1;

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
                            <div class="slide" id="slide<%= slideIndex %>">
                                <img src="<%= imageUrl %>" alt="Uploaded Image">
                            </div>
            <% 
                            slideIndex++;
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
        </div>
    </div>

    <script>
        // Automatically change slide every 3 seconds
        var slideIndex = 0;
        showSlides();

        function showSlides() {
            var i;
            var slides = document.getElementsByClassName("slide");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";  
            }
            slideIndex++;
            if (slideIndex > slides.length) {slideIndex = 1}    
            slides[slideIndex-1].style.display = "block";  
            setTimeout(showSlides, 7000); // Change image every 3 seconds
        }
    </script>
</body>
</html>
