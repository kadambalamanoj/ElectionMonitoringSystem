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
        .form-container {
    max-width: 500px;
    margin: 0 auto;
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

    <h3 align=center><u>Add Admin</u></h3>

<br>
  <font><b>${message}<b/></font><br><br>
<form action="insertadmin" method="post" enctype="multipart/form-data" class="form-container">

    <table align="center">
        <!-- Aadhaar -->
        <tr>
            <td><label for="aadhaar">Aadhaar</label></td>
            <td><input type="text" id="aadhaar" name="aadhaar" required="required" /></td>
        </tr>

        <tr><td></td></tr>

        <!-- Name -->
        <tr>
            <td><label for="name">Name</label></td>
            <td><input type="text" id="name" name="name" required="required" /></td>
        </tr>

        <tr><td></td></tr>

        <!-- Age -->
        <tr>
            <td><label for="age">Age</label></td>
            <td><input type="number" id="age" name="age" required="required" /></td>
        </tr>

        <tr><td></td></tr>

        <!-- Gender -->
        <tr>
            <td><label for="gender">Gender</label></td>
            <td>
                <select id="gender" name="gender" required="required">
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                </select>
            </td>
        </tr>

        <tr><td></td></tr>

        <!-- Phone Number -->
        <tr>
            <td><label for="phoneno">Phone Number</label></td>
            <td><input type="tel" id="phoneno" name="phoneno" pattern="[0-9]{10}" required="required" /></td>
        </tr>

        <tr><td></td></tr>

        <!-- Email -->
        <tr>
            <td><label for="email">Email</label></td>
            <td><input type="email" id="email" name="email" required="required" /></td>
        </tr>

        <tr><td></td></tr>

        <!-- Place -->
        <tr>
            <td><label for="place">Place</label></td>
            <td><input type="text" id="place" name="place" required="required" /></td>
        </tr>

        <tr><td></td></tr>

        <!-- Password -->
        <tr>
            <td><label for="password">Password</label></td>
            <td><input type="password" id="password" name="password" required="required" /></td>
        </tr>

        <tr><td></td></tr>
        <tr>
	  <td><label for="edob">Enter Date of Birth</label></td>
	    <td><input type="date" id="dob" name="dob" required/></td>
       </tr>
<tr><td></td></tr>
        <!-- Image -->
        <tr>
            <td><label for="adminimage">Image</label></td>
            <td><input type="file" id="adminimage" name="adminimage" required="required" /></td>
        </tr>

        <tr><td></td></tr>

        <!-- Submit Button -->
        <tr align="center">
            <td colspan="2"><input type="submit" value="Add" class="button" /></td>
        </tr>
    </table>

</form>

    

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
