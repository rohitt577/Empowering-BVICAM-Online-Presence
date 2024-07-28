<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .container {
            margin-top: 50px;
        }
        .alert {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="text-center">Reset Password</h1>
        <div id="message" class="alert" style="display:none;"></div>
        <form id="resetPasswordForm" method="post">
            <div class="form-group">
                <label for="newPassword">New Password:</label>
                <input type="password" class="form-control" id="newPassword" name="newPassword" required>
            </div>
            <div class="form-group">
                <label for="confirmPassword">Confirm Password:</label>
                <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" required>
            </div>
            <button type="submit" class="btn btn-primary">Reset Password</button>
        </form>
    </div>

    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#resetPasswordForm').submit(function(e) {
                e.preventDefault();
                var newPassword = $('#newPassword').val();
                var confirmPassword = $('#confirmPassword').val();
                if (newPassword !== confirmPassword) {
                    $('#message').html('<div class="alert alert-danger">Passwords do not match!</div>').show().delay(3000).fadeOut();
                    return;
                }
                $.ajax({
                    type: 'POST',
                    url: 'ResetPassword',
                    data: $(this).serialize(),
                    success: function(response) {
                        $('#message').html('<div class="alert alert-success">' + response + '</div>').show().delay(3000).fadeOut();
                        // Redirect to login page after successful password reset
                        setTimeout(function() {
                            window.location.href = 'login.jsp'; // Change to your login page URL
                        }, 3000);
                    },
                    error: function(xhr, status, error) {
                        $('#message').html('<div class="alert alert-danger">An error occurred while resetting the password. Please try again later.</div>').show().delay(3000).fadeOut();
                    }
                });
            });
        });
    </script>
</body>
</html>
