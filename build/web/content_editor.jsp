<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Content Editor</title>
</head>
<body>

    <h2>Content Editor</h2>
    <form action="UpdateContentServlet" method="post">
        <label for="content">Content:</label><br>
        <textarea id="content" name="content" rows="10" cols="50">${content}</textarea><br>
        <label for="expirationDays">Expiration Days:</label>
        <input type="number" id="expirationDays" name="expirationDays" min="1" value="1"><br>
        <input type="submit" value="Submit">
    </form>

</body>
</html>
