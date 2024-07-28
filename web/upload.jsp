<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Upload File</title>
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

        h1 {
            color: #000;
            text-align: center;
        }

        form {
            width: 100%;
            max-width: 400px;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #000;
        }

        input[type="file"] {
            margin-bottom: 20px;
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
    <!--<h1>Upload File</h1>-->
    <br>
    <form method="post" action="UploadServlet" enctype="multipart/form-data">
        <label for="fileType">Select File Type:</label>
        <select name="fileType" id="fileType">
            <option value="image">Image</option>
            <option value="pdf">PDF</option>
        </select>
        <br/><br/>
        <label for="file">Select File:</label>
        <input type="file" name="file" id="file">
        <br/><br/>
        <input type="submit" value="Upload">
    </form>
</body>
</html>
