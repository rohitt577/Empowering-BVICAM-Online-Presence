<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Webinar Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            max-width: 600px;
            width: 100%;
        }

        h2 {
            color: #000;
            margin-top: 20px;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #000;
        }

        input[type="text"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ced4da;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Upload Webinar Details</h2>
    <form action="UploadServlet1" method="post">
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
        <label for="editSno">Enter S. No.:</label>
        <input type="text" id="editSno" name="editSno"><br><br>
        <input type="submit" value="Fetch Details">
    </form>
</div>
</body>
</html>
