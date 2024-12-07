<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

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
            min-height: 100vh; /* Ensures the body takes full height */
        }
        main {
            flex-grow: 1; /* Ensures the content area grows to fill the available space */
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
        table {
            background-color: #ffffff;
            border-collapse: collapse;
            margin: 20px auto;
            width: 90%;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 12px 15px;
            text-align: center;
        }
        th {
            background-color: #87CEEB;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #ffefc1;
        }
        .update-btn {
            background-color: #ff6f61;
            color: white;
            border: none;
            padding: 8px 15px;
            border-radius: 5px;
            cursor: pointer;
        }
        .update-btn:hover {
            background-color: #e05a4f;
        }
        footer {
            background-color: #87CEEB;
            color: #fff;
            text-align: center;
            padding: 10px 0;
            margin-top: auto; /* This ensures the footer stays at the bottom */
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

    <!-- Main content -->
    <main>
        <h3 align="center"><u>View All Admins</u></h3>

        <br>
        <font><b>${message}<b/></font><br><br>

        <table border="2" id="myTable">
            <tr class="header">
                <th>Name</th>
                <th>Aadhaar</th>
                <th>Age</th>
                <th>Gender</th>
                <th>Phone Number</th>
                <th>Email</th>
                <th>Place</th>
                <th>Date of Birth</th>
                <th>Image</th>
                <th>Action</th>
            </tr>

            <c:forEach items="${adminlist}" var="admin">
                <tr>
                    <td><c:out value="${admin.name}"></c:out></td>
                    <td><c:out value="${admin.aadhaar}"></c:out></td>
                    <td><c:out value="${admin.age}"></c:out></td>
                    <td><c:out value="${admin.gender}"></c:out></td>
                    <td><c:out value="${admin.phoneno}"></c:out></td>
                    <td><c:out value="${admin.email}"></c:out></td>
                    <td><c:out value="${admin.place}"></c:out></td>
                    <td><c:out value="${admin.dateofbirth}"></c:out></td>
                    <td><img src='displayadminimage?aadhaar=${admin.aadhaar}' width="50px" height="50px"></td>
                    <td>
                        <form action="updatea.jsp" method="post">
                            <input type="hidden" name="aadhaar" value="${admin.aadhaar}">
                            <input type="hidden" name="name" value="${admin.name}">
                            <input type="hidden" name="age" value="${admin.age}">
                            <input type="hidden" name="gender" value="${admin.gender}">
                            <input type="hidden" name="phoneno" value="${admin.phoneno}">
                            <input type="hidden" name="email" value="${admin.email}">
                            <input type="hidden" name="place" value="${admin.place}">
                            <input type="hidden" name="dob" value="${admin.dateofbirth}">
                            <input type="hidden" name="imagePath" value="displayadminimage?aadhaar=${admin.aadhaar}">
                            <button type="submit" class="update-btn">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </main>

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
