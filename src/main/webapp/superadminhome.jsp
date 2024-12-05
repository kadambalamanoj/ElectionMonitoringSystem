<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Super Admin Dashboard</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Sidebar Styling */
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

        .collapse .nav-link {
            padding-left: 30px;
        }
    </style>
</head>
<body>
    <!-- Top Navigation Bar -->
    <nav class="navbar navbar-expand-lg" style="background-color: #87CEEB;">
        <a class="navbar-brand text-white" href="#">Election Monitoring</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link text-white" href="#">Logout</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Main Layout -->
    <div class="container-fluid">
        <div class="row">
            <!-- Side Navigation Bar -->
            <nav class="col-md-3 col-lg-2 d-md-block sidebar">
                <div class="position-sticky">
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link active" href="#">
                                Dashboard
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#manageAdmins" role="button" aria-expanded="false" aria-controls="manageAdmins">
                                -->Manage Admins
                            </a>
                            <div class="collapse" id="manageAdmins">
                                <ul class="nav flex-column">
                                    <li class="nav-item"><a class="nav-link" href="#">Add Admin</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">Update Admin</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">Delete Admin</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">View Admins</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#manageObservers" role="button" aria-expanded="false" aria-controls="manageObservers">
                                -->Manage Observers
                            </a>
                            <div class="collapse" id="manageObservers">
                                <ul class="nav flex-column">
                                    <li class="nav-item"><a class="nav-link" href="#">Add Observer</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">Update Observer</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">Delete Observer</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">View Observers</a></li>
                                </ul>
                            </div>
                        </li>
                        
                        
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#manageanalyst" role="button" aria-expanded="false" aria-controls="manageanalyst">
                                -->Manage Data Analyst
                            </a>
                            <div class="collapse" id="manageanalyst">
                                <ul class="nav flex-column">
                                    <li class="nav-item"><a class="nav-link" href="#">Add Analyst</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">Update Analyst</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">Delete Analyst</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">View Analyst</a></li>
                                </ul>
                            </div>
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#manageCitizens" role="button" aria-expanded="false" aria-controls="manageCitizens">
                                -->Manage Citizens
                            </a>
                            <div class="collapse" id="manageCitizens">
                                <ul class="nav flex-column">
                                    <li class="nav-item"><a class="nav-link" href="#">Add Citizen</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">Update Citizen</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">Delete Citizen</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">View Citizens</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">View Reports</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Settings</a>
                        </li>
                    </ul>
                </div>
            </nav>

            <!-- Main Content -->
            <main class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <h1 class="h2">Dashboard</h1>
                </div>
                <p>Welcome to the Super Admin Dashboard! Use the side navigation to manage roles and monitor election activities.</p>
            </main>
        </div>
    </div>

    <!-- Footer -->
    <footer class="text-white text-center py-3" style="background-color: #87CEEB;">
        &copy; 2024 Election Monitoring System. All Rights Reserved.
    </footer>

    <!-- Bootstrap JavaScript -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
