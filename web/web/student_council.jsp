<%-- 
    Document   : student_council
    Created on : 18-Apr-2024, 11:02:59 am
    Author     : chauh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h3> Insertion </h3>
        <form action="student" method="post">
            
        <label for="sno">S. No. </label>
    <input type="text" id="sno" name="sno" placeholder="Enter sno">
    <br>

    <label for="Name">Name: </label>
    <input type="text" id="Name" name="Name" placeholder="Enter Name">
    <br>

    <label for="Designation">Designation</label>
    <input type="text" id="Designation" name="Designation" placeholder="Enter Designation">
    <br>
    
     <label for="cc">Consitutional Capacity</label>
    <input type="text" id="cc" name="cc" placeholder="Enter constitutional capacity">
    <br>

    <input type="submit" value="Submit">
            
            
        </form>
        
        
        
        <h3> Deletion </h3>
           <form action="deleteStudent" method="post">
            
        <label for="sno">S. No. </label>
    <input type="text" id="sno" name="sno" placeholder="Enter sno">
    <br>

    <input type="submit" value="Submit">
            
            
        </form>
        
        
    </body><!-- comment -->
</html>