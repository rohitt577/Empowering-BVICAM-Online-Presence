<%@ page import="java.sql.*, java.time.LocalDate" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.time.format.FormatStyle" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.io.StringWriter" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>News</title>
<style>
    .section_news {
        flex-basis: 30%;
        background-color: aliceblue;
        padding: 1px;
        margin-top: 50px;
        height: 400px;
    }
    .content {
        margin-left: 5px;
        height: 300px;
        overflow: auto;
    }
</style>
</head>
<body>

<div class="section_news">
    <h2><b>WHAT'S NEW</b></h2>
    <marquee direction="up" scrollamount="3" style="padding-top: 100px; height: 300px;">
        <div class="content">
            <ul>
                <%
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bvp", "root", "Rattle@123");
                        Statement stmt = conn.createStatement();
                        String sql = "SELECT content, expiration_date FROM news WHERE expiration_date >= ?";
                        PreparedStatement preparedStatement = conn.prepareStatement(sql);
                        preparedStatement.setDate(1, java.sql.Date.valueOf(LocalDate.now()));
                        ResultSet rs = preparedStatement.executeQuery();
                        
                        // List to hold news items
                        List<String> newsItems = new ArrayList<>();
                        while(rs.next()) {
                            String content = rs.getString("content");
                            LocalDate expirationDate = rs.getDate("expiration_date").toLocalDate();
                            // Format expiration date
                            DateTimeFormatter formatter = DateTimeFormatter.ofLocalizedDate(FormatStyle.MEDIUM);
                            String formattedDate = expirationDate.format(formatter);
                            // Add news item to list
                            newsItems.add("<div class='article'><h4>" + content + "</h4><h6>" + formattedDate + "</h6></div>");
                        }
                        // Display news items
                        for (String item : newsItems) {
                            out.println(item);
                        }
                        conn.close();
                    } catch (Exception e) {
                        StringWriter sw = new StringWriter();
                        e.printStackTrace(new PrintWriter(sw));
                        String exceptionAsString = sw.toString();
                        out.println("Exception: " + exceptionAsString);
                    }
                %>
            </ul>
        </div>
    </marquee>
</div>

</body>
</html>
