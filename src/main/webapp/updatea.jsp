<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Super Admin - Update Admin Details</title>
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
            background-color: #87CEEB;
        }
        .navbar-brand, .nav-link {
            color: #fff !important;
        }
        .navbar-brand img {
            height: 40px;
            margin-right: 10px;
        }
        .navbar-brand:hover, .nav-link:hover {
            color: #ff6f61 !important;
        }
        footer {
            background-color: #87CEEB;
            color: #fff;
            text-align: center;
            padding: 10px 0;
            margin-top: auto;
        }
        .form-container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #f2f2f2;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        .form-container label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }
        .form-container input[type="text"],
        .form-container input[type="password"],
        .form-container input[type="number"],
        .form-container input[type="email"],
        .form-container select,
        .form-container input[type="date"],
        .form-container textarea {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        .form-container textarea {
            resize: vertical;
        }
        .form-container input[type="submit"] {
            background-color: #87CEEB;
            border: none;
            color: #fff;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
        }
        .form-container input[type="submit"]:hover {
            background-color: #4682B4;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
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

    <h3 class="text-center"><u>Update Admin Details</u></h3>

    <div class="form-container">
    <form action="updateadmincontroller" method="post" enctype="multipart/form-data">
        <!-- Aadhaar (Read-only) -->
        <label for="aadhaar">Aadhaar</label>
        <input type="text" id="aadhaar" name="aadhaar" value="${param.aadhaar}" readonly>

        <!-- Name -->
        <label for="name">Name</label>
        <input type="text" id="name" name="name" value="${param.name}" required>

        <!-- Age -->
        <label for="age">Age</label>
        <input type="number" id="age" name="age" value="${param.age}" required>

        <!-- Gender -->
        <label for="gender">Gender</label>
        <select id="gender" name="gender" required>
            <option value="Male" ${param.gender == 'Male' ? 'selected' : ''}>Male</option>
            <option value="Female" ${param.gender == 'Female' ? 'selected' : ''}>Female</option>
            <option value="Other" ${param.gender == 'Other' ? 'selected' : ''}>Other</option>
        </select>

        <!-- Phone Number -->
        <label for="phoneno">Phone Number</label>
        <input type="tel" id="phoneno" name="phoneno" value="${param.phoneno}" pattern="[0-9]{10}" required>

        <!-- Email -->
        <label for="email">Email</label>
        <input type="email" id="email" name="email" value="${param.email}" required>

        <!-- Place -->
        <label for="place">Place</label>
        <input type="text" id="place" name="place" value="${param.place}" required>

        <!-- Date of Birth -->
        <label for="dob">Date of Birth</label>
        <input type="date" id="dob" name="dob" value="${param.dob}" required>

        <!-- Existing Image -->
        <label for="existingImage">Existing Image</label>
        <img src="${param.imagePath}" alt="Admin Image" width="100px" height="100px">

        <!-- Update Image -->
        <label for="adminimage">Update Image</label>
        <input type="file" id="adminimage" name="adminimage">

        <!-- Submit Button -->
        <input type="submit" value="Update Admin Details">
    </form>
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
