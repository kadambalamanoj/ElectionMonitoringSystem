<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Super Admin - Manage Admins</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            background-color: #f4f4f9;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        .navbar {
            background-color: #87CEEB; /* Sky blue */
        }
        .navbar-brand, .nav-link {
            color: #fff !important;
        }
        .navbar-brand img {
            height: 40px; /* Adjust image height */
            margin-right: 10px;
        }
        .navbar-brand:hover, .nav-link:hover {
            color: #ff6f61 !important;
        }
        .card {
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
        }
        .icon {
            font-size: 50px;
            color: #87CEEB;
        }
        .icon:hover {
            color: #ff6f61;
        }
        .content {
            flex: 1;
        }
        footer {
            background-color: #87CEEB;
            color: #fff;
            text-align: center;
            padding: 10px 0;
            margin-top: auto;
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
                    <a class="nav-link" href="superadminhome.jsp">Back</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="home.jsp">Logout</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Page Content -->
    <div class="container content my-5">
        <h2 class="text-center mb-4">Manage Admins</h2>
        <div class="row">
            <!-- Add Admin -->
            <div class="col-md-3">
                <div class="card text-center p-3">
                    <i class="fas fa-user-plus icon"></i>
                    <h5 class="mt-3">Add Admin</h5>
                    <a href="addadmin" class="btn btn-primary mt-2">Go</a>
                </div>
            </div>
            <!-- Update Admin -->
            <div class="col-md-3">
                <div class="card text-center p-3">
                    <i class="fas fa-edit icon"></i>
                    <h5 class="mt-3">Update Admin</h5>
                    <a href="updateadmin" class="btn btn-primary mt-2">Go</a>
                </div>
            </div>
            <!-- Delete Admin -->
            <div class="col-md-3">
                <div class="card text-center p-3">
                    <i class="fas fa-user-times icon"></i>
                    <h5 class="mt-3">Delete Admin</h5>
                    <a href="deleteadmin" class="btn btn-primary mt-2">Go</a>
                </div>
            </div>
            <!-- View Admins -->
            <div class="col-md-3">
                <div class="card text-center p-3">
                    <i class="fas fa-users icon"></i>
                    <h5 class="mt-3">View Admins</h5>
                    <a href="viewalladmin" class="btn btn-primary mt-2">Go</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        &copy; 2024 Election Monitoring System. All Rights Reserved.
    </footer>

    <!-- JavaScript -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
