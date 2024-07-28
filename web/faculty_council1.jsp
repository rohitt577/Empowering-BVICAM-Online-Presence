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
    <title>Faculty Council</title>
    <style>
        body, html {
            height: 100%;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100%;
            margin-top: 90px;
        }

        .content {
            max-width: 400px;
            width: 100%;
            padding: 20px;
            background-color: #f8f9fa;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        h3 {
            color: #000;
            text-align: center;
            margin-top: 0;
            margin-bottom: 20px;
        }

        form {
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
    <div class="content">
        <h3>Insertion</h3>
        <form action="faculty1" method="post">
            <label for="Fsno">S. No.</label>: <input type="text" id="sno" name="sno" placeholder="Enter sno"><br><br>
            <label for="FName">Name:</label>: <input type="text" id="FName" name="FName" placeholder="Enter Name"><br><br>
            <label for="Fcc">Constitutional Capacity:</label>: <input type="text" id="Fcc" name="Fcc" placeholder="Enter constitutional capacity"><br><br>
            <label for="FDesignation">Designation:</label>: <input type="text" id="FDesignation" name="FDesignation" placeholder="Enter Designation"><br><br>
            <input type="submit" value="Submit">
        </form>

        <h3>Deletion</h3>
        <form action="DeletionServlet" method="post">
            <label for="Fsno">S. No. to Delete:</label>: <input type="text" id="Fsno" name="Fsno" placeholder="Enter sno"><br><br>
            <input type="submit" value="Submit">
        </form>
    </div>
</div>
</body>
</html>
