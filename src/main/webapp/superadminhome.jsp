<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Super Admin Dashboard</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .sidebar {
            background-color: #A8F6A0; /* Light green */
            height: 100vh;
            color: #000;
        }
        .sidebar .nav-link {
            color: #000 !important;
            padding: 10px 15px;
            transition: all 0.3s ease;
        }
        .sidebar .nav-link.active,
        .sidebar .nav-link:hover {
            background: rgba(0, 0, 0, 0.1);
            color: #ff6f61 !important;
        }
        .navbar {
            background-color: #87CEEB; /* Sky blue */
        }
        .navbar-brand img {
            height: 40px; /* Adjust the height */
            width: auto;  /* Maintain aspect ratio */
            margin-right: 10px; /* Space between image and text */
        }
        .footer {
            background-color: #87CEEB;
            color: white;
            text-align: center;
            padding: 10px 0;
        }
    </style>
</head>
<body>
    <!-- Main Navbar -->
    <nav class="navbar navbar-expand-lg">
        <a class="navbar-brand" href="#">
            <img src="/images/ec.png" alt="Logo"> Election Monitoring
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
            
                <li class="nav-item">
                    <a class="nav-link" href="home.jsp">Logout</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Main Layout -->
    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <nav class="col-md-3 col-lg-2 d-md-block sidebar">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link active" href="superadminhome.jsp">Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="superadminAdmin.jsp">Manage Admins</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="superadminObservers.jsp">Manage Observers</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="superadminAnalyst.jsp">Manage Data Analyst</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="superadminCitizens.jsp">Manage Citizens</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="viewReports.jsp">View Reports</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="settings.jsp">Settings</a>
                    </li>
                </ul>
            </nav>

            <!-- Content Area -->
            <main class="col-md-9 col-lg-10">
                <h1>Welcome to the Dashboard</h1>
                <p>Select a menu option to navigate.</p>
            </main>
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer">
        &copy; 2024 Election Monitoring System. All Rights Reserved.
    </footer>

    <!-- JavaScript -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
