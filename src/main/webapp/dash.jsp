<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Colorful Dashboard</title>
<style>
    body {
        margin: 0;
        padding: 0;
        background: linear-gradient(to right, #ff7e5f, #feb47b); /* Gradient background */
        font-family: Arial, sans-serif;
        color: #fff;
        text-align: center;
    }
    nav {
        background: #333; /* Dark background for navbar */
        display: flex;
        justify-content: space-around;
        padding: 10px 0;
        position: fixed;
        width: 100%;
        top: 0;
        z-index: 1000;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }
    nav a {
        color: #fff;
        text-decoration: none;
        font-size: 1.2em;
        padding: 5px 15px;
        border-radius: 5px;
        transition: background 0.3s ease;
    }
    nav a:hover {
        background: #575757;
    }
    h1 {
        margin-top: 80px; /* Add margin to account for fixed navbar */
        font-size: 2.5em;
        color: #fff;
        text-shadow: 2px 2px 5px #000;
    }
    img {
        margin: 20px;
        width: 300px;
        height: auto;
        border: 5px solid #fff;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        border-radius: 10px;
    }
    .images-section {
        display: flex;
        justify-content: center;
        flex-wrap: wrap;
        gap: 20px;
    }
</style>
</head>
<body>
    <nav>
        <a href="#home">Home</a>
        <a href="#about">About</a>
        <a href="#gallery">Gallery</a>
        <a href="#contact">Contact</a>
    </nav>
    <h1>Welcome to the Dashboard</h1>
    <div class="images-section" id="gallery">
        <img alt="Dashboard 1" src="/images/dash.jpeg">
        <img alt="Dashboard 2" src="/images/dds.jpeg">
    </div>
</body>
</html>
