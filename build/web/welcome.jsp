<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Welcome</title>
</head>
<body style="background: url(img/back.jpg); background-size: cover; background-attachment: fixed;">
<div class="container">
    <div class="row">
        <div class="col m6 offset-m3">
            <div class="card">
                <div class="card-content">
                    <h3 style="margin-top: 10px;" class="center-align">Welcome</h3>
                    <div class="form center-align">
                        <p>Welcome, <%= session.getAttribute("user_email") %></p>
                        <form action="Logout" method="post">
                            <button type="submit" class="btn light-blue accent-3">Logout</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script>
    $(document).ready(function () {
        console.log("Page is ready");
    });
</script>
</body>
</html>
