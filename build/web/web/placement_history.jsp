<!DOCTYPE html>
<html>
<head>
  <title>Batch Passing out Information</title>
</head>
<body>
  <h1>Batch Passing out Information</h1>
  <form action="placement" method="post">
      <label for="batch">Batch</label>
    <input type="text" id="batch" name="batch" placeholder="Enter batch">
    <br>
    <label for="discipline">Discipline:</label>
    <input type="text" id="discipline" name="discipline" placeholder="Enter Discipline">
    <br>

    <label for="totalPassed">Total Students Passed Out:</label>
    <input type="text" id="totalPassed" name="totalPassed" placeholder="batch size"> 
    <br>Total Student Registered:   
     <input type="text" id="totalRegistered" name="totalRegistered" placeholder=" student Registered ">
    <br>

    <label for="placedStudents">Placed Through Placement Cell:</label>
    <input type="text" id="placedStudents" name="placedStudents" placeholder="Enter Placed Students">
    <br>
    

    <input type="submit" value="Submit">
  </form>
</body>
</html>