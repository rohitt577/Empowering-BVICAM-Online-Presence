<!DOCTYPE html>
<html>
<head>
  <title>Batch Passing out Information</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f8f9fa;
      margin: 0;
      padding: 0;
    }

    h1 {
      color: #000;
      text-align: center;
    }

    form {
      max-width: 400px;
      margin: 20px auto;
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

    input[type="text"],
    input[type="number"] {
      width: 100%;
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
    }

    input[type="submit"]:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>
  <h1>Batch Passing out Information</h1>
  <form action="insertStudentData" method="post">
    <label for="batch">Batch:</label>
    <input type="text" id="batch" name="batch" placeholder="Enter batch" required>
    <br>
    <label for="discipline">Discipline:</label>
    <input type="text" id="discipline" name="discipline" placeholder="Enter discipline" required>
    <br>
    <label for="totalPassed">Total Students Passed Out:</label>
    <input type="number" id="totalPassed" name="totalPassed" placeholder="Enter total passed out" required>
    <br>
    <label for="totalRegistered">Total Students Registered:</label>
    <input type="number" id="totalRegistered" name="totalRegistered" placeholder="Enter total registered" required>
    <br>
    <label for="placedStudents">Placed Through Placement Cell:</label>
    <input type="number" id="placedStudents" name="placedStudents" placeholder="Enter placed students" required>
    <br>
    <input type="submit" value="Submit">
  </form>
</body>
</html>
