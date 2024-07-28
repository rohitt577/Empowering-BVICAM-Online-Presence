<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Webinar Details</title>
</head>
<body>
    <h2>Edit Webinar Details</h2>
    <form action="EditServlet" method="post">
        <label for="sno">S. No.:</label>
        <input type="text" id="sno" name="sno" value="<%= request.getAttribute("webinar").getString("sno") %>" readonly><br><br>
        <label for="title">Title of Webinar:</label>
        <input type="text" id="title" name="title" value="<%= request.getAttribute("webinar").getString("title") %>"><br><br>
        <label for="speakers">Speaker(s):</label>
        <input type="text" id="speakers" name="speakers" value="<%= request.getAttribute("webinar").getString("speakers") %>"><br><br>
        <label for="dates">Dates:</label>
        <input type="text" id="dates" name="dates" value="<%= request.getAttribute("webinar").getString("dates") %>"><br><br>
        <label for="time">Time:</label>
        <input type="text" id="time" name="time" value="<%= request.getAttribute("webinar").getString("time") %>"><br><br>
        <label for="fee">Registration Fee:</label>
        <input type="text" id="fee" name="fee" value="<%= request.getAttribute("webinar").getString("fee") %>"><br><br>
        <label for="status">Registration Status:</label>
        <input type="text" id="status" name="status" value="<%= request.getAttribute("webinar").getString("status") %>"><br><br>
        <label for="process">Registration Process *:</label>
        <input type="text" id="process" name="process" value="<%= request.getAttribute("webinar").getString("process") %>"><br><br>
        <label for="details">More Details:</label>
        <input type="text" id="details" name="details" value="<%= request.getAttribute("webinar").getString("details") %>"><br><br>
        <input type="submit" value="Update">
    </form>
</body>
</html>
