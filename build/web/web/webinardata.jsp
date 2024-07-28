<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Webinar Details</title>
</head>
<body>
    <h2>Upload Webinar Details</h2>
    <form action="InsertServlet" method="post">
        <label for="sno">S. No.</label>: <input type="text" id="sno" name="sno"><br><br>
        <label for="title">Title of Webinar</label>: <input type="text" id="title" name="title"><br><br>
        <label for="speakers">Speaker(s)</label>: <input type="text" id="speakers" name="speakers"><br><br>
        <label for="dates">Dates</label>: <input type="text" id="dates" name="dates"><br><br>
        <label for="time">Time</label>: <input type="text" id="time" name="time"><br><br>
        <label for="fee">Registration Fee</label>: <input type="text" id="fee" name="fee"><br><br>
        <label for="status">Registration Status</label>: <input type="text" id="status" name="status"><br><br>
        <label for="process">Registration Process *</label>: <input type="text" id="process" name="process"><br><br>
        <label for="details">More Details</label>: <input type="text" id="details" name="details"><br><br>
        <input type="submit" value="Submit">
    </form>

    <!-- Form for deletion -->
    <h2>Delete Webinar</h2>
    <form action="DeleteServlet" method="post">
        <label for="deleteSno">S. No. to Delete:</label>
        <input type="text" id="deleteSno" name="deleteSno"><br><br>
        <input type="submit" value="Delete">
    </form>

    <!-- Form for editing -->
    <h2>Edit Webinar Details</h2>
    <form action="EditServlet" method="post">
        <label for="sno">Enter S. No.:</label>
        <input type="text" id="sno" name="sno"><br><br>
        <input type="submit" value="Fetch Details">
    </form>
</body>
</html>
