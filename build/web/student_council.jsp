<%-- 
    Document   : student_council
    Created on : 18-Apr-2024, 11:02:59 am
    Author     : chauh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Council</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            overflow: auto; /* Show scrollbar when needed */
        }

        form {
            width: 100%;
            max-width: 400px;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        h3 {
            color: #000;
            text-align: center;
            margin-top: 0;
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
<h3>Insertion</h3>
<form action="student" method="post">
    <label for="sno">S. No.:</label>
    <input type="text" id="sno" name="sno" placeholder="Enter sno" required>
    <label for="Name">Name:</label>
    <input type="text" id="Name" name="Name" placeholder="Enter Name" required>
    <label for="Designation">Designation:</label>
    <input type="text" id="Designation" name="Designation" placeholder="Enter Designation" required>
    <label for="cc">Constitutional Capacity:</label>
    <input type="text" id="cc" name="cc" placeholder="Enter constitutional capacity" required>
    <input type="submit" value="Submit">
</form>

<h3>Deletion</h3>
<form action="deleteStudent" method="post">
    <label for="sno_delete">S. No.:</label>
    <input type="text" id="sno_delete" name="sno" placeholder="Enter sno" required>
    <input type="submit" value="Submit">
</form>
</body>
</html>
