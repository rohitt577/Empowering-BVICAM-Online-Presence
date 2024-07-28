<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Horizontal Split Iframes</title>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
            overflow: hidden;
        }

        .container {
            display: flex;
            flex-direction: row;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            overflow: hidden; /* Prevent scrollbar when splitter is displayed */
            height: 100vh; /* Ensure container fills the viewport height */
        }

        .iframe-container {
            height: 100%;
            position: relative;
            color: #000;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            align-items: center;
            padding-bottom: -20px;
            width: 20%; /* Set width to 20% for the left side */
            overflow: hidden; /* Prevent scrollbar in iframe container */
        }

        .iframe-container iframe {
            width: calc(100% - 20px); /* Adjusted width for iframe */
            height: calc(100% - 120px); /* Adjusted height for iframe */
            border: none;
        }

        .splitter {
            width: 5px;
            background-color: #dee2e6;
            cursor: ew-resize;
            z-index: 1; /* Ensure splitter is above iframes */
        }

        .iframe-container.iframe-80 {
            width: 80%; /* Set width to 80% for the right side */
            background-color: #fff; /* Set background color for iframe-80 */
            color: #000; /* Set text color for iframe-80 */
            padding-top: 50px;
        }

        .dashboard-banner {
            font-size: 24px;
            margin-bottom: 20px;
            margin-top: 20px;
        }

        .navbar {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            flex-grow: 1; /* Fill remaining space */
        }

        .navbar a {
            padding: 10px 20px;
            text-decoration: none;
            color: #000;
            transition: background-color 0.3s ease;
        }

        .navbar a:hover {
            background-color: #495057;
        }

        .logout-form {
            margin-top: 20px;
            margin-bottom: 40px;
        }

        .logout-btn {
            background-color: #dc3545;
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .logout-btn:hover {
            background-color: #c82333;
        }

        /* Styles for default section */
        .default-section {
            padding: 20px;
            text-align: center;
        }

        .default-section h2 {
            font-size: 32px;
            margin-bottom: 20px;
            color: #007bff;
        }

        .default-section p {
            font-size: 18px;
            line-height: 1.6;
            margin-bottom: 10px;
        }

        /* Hide default section when navbar link is clicked */
        .default-section.hidden {
            display: none;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="iframe-container">
        <div class="dashboard-banner">Dashboard</div>
        <div class="navbar">
            <a href="placement_history.jsp" onclick="hideDefaultSection()" target="iframe2">Placement History</a>
            <a href="student_council.jsp" onclick="hideDefaultSection()" target="iframe2">Student Council</a>
            <a href="upload.jsp" onclick="hideDefaultSection()" target="iframe2">Photo Gallery</a>
            <a href="webinardata.jsp" onclick="hideDefaultSection()" target="iframe2">Webinar Data</a>
            <a href="faculty_council1.jsp" onclick="hideDefaultSection()" target="iframe2">Faculty Council</a>
        </div>
        <div class="logout-form">
            <form action="logout.jsp" method="post">
                <button class="logout-btn" type="submit">Logout</button>
            </form>
        </div>
    </div>
    <div class="splitter"></div>
    <div class="iframe-container iframe-80">
        <div class="default-section">
            <h2>Welcome to Our Dashboard!</h2>
            <p>Explore the various sections using the navigation links on the left. This dashboard provides you with access to important information and tools.</p>
            <p>Feel free to navigate through the different sections and utilize the resources available to you.</p>
            <p>If you have any questions or need assistance, don't hesitate to reach out to our support team.</p>
        </div>
        <iframe srcdoc="" name="iframe2"></iframe>
    </div>
</div>

<script>
    function hideDefaultSection() {
        document.querySelector('.default-section').classList.add('hidden');
    }
</script>

</body>
</html>
