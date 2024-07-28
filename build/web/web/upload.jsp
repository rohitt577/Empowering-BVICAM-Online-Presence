<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Upload File</title>
</head>
<body>
    <h1>Upload File</h1>
    <form method="post" action="UploadServlet" enctype="multipart/form-data">
        Select File Type:
        <select name="fileType">
            <option value="image">Image</option>
            <option value="pdf">PDF</option>
        </select>
        <br/><br/>
        Select File: <input type="file" name="file">
        <br/><br/>
        <input type="submit" value="Upload">
    </form>
</body>
</html>
