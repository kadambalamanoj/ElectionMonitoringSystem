<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Interactive Dashboard</title>
<style>
    /* Reset CSS for consistent styling */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    html, body {
        height: 100%; /* Ensures the body takes full height */
    }
    body {
        display: flex;
        flex-direction: column; /* Makes the layout vertical */
        font-family: Arial, sans-serif;
        background-color: #f0f8ff; /* Light blue background */
        color: #333;
    }
    nav {
        position: fixed;
        top: 0;
        width: 100%;
        background: linear-gradient(90deg, #4b79a1, #283e51); /* Gradient effect */
        display: flex;
        justify-content: space-around;
        align-items: center;
        padding: 15px 0;
        z-index: 1000;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }
    nav a {
        color: white;
        text-decoration: none;
        font-size: 1.2em;
        padding: 10px 20px;
        border-radius: 5px;
        transition: all 0.3s ease;
    }
    nav a:hover {
        background: #fff;
        color: #283e51;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }
    .map-container {
        margin-top: 80px; /* Adjust margin to account for fixed navbar */
        display: flex;
        justify-content: center;
        align-items: center;
        flex: 1; /* Ensures the content takes up remaining space */
    }
    iframe {
        border: 5px solid #4b79a1;
        border-radius: 10px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
    }
    .footer {
        text-align: center;
        padding: 20px 0;
        background: #283e51;
        color: white;
        margin-top: auto; /* Pushes the footer to the bottom */
    }
</style>
</head>
<body>
    <nav>
        <a href="#home">Home</a>
        <a href="#about">About</a>
        <a href="#map">Map</a>
        <a href="#contact">Contact</a>
    </nav>
    
    <div class="map-container" id="map">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3929563.7805109564!2d78.11904967839523!3d15.88471114428908!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a3546f8ae93d47f%3A0x33d1bbbe95adcd83!2sAndhra%20Pradesh!5e0!3m2!1sen!2sin!4v1721738317986!5m2!1sen!2sin" width="800" height="500" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
    
    <div class="footer">
        © 2024 Interactive Dashboard. All Rights Reserved.
    </div>
</body>
</html>
