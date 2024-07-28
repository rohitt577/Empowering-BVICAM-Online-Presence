<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Logout</title>
</head>
<body>
    <h1>Logging out...</h1>
    
    <%-- Invalidate the session --%>
    <% session.invalidate(); %>
    
    <p>You have been successfully logged out. Redirecting to login page...</p>
    
    <%-- Redirect to login page after a delay --%>
    <%
        response.setHeader("Refresh", "3; URL=account_creation1.jsp");
    %>
</body>
</html>
