<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome ${name} </title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            perspective: 1000px; /* Adds 3D perspective to the page */
        }
        .container {
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            padding: 20px;
            width: 80%;
            max-width: 600px;
            transform-style: preserve-3d; /* Enables 3D transformations */
            transition: transform 0.5s;
            transform: rotateX(0deg) rotateY(0deg); /* Initial rotation for the 3D effect */
        }
        .container:hover {
            transform: rotateX(10deg) rotateY(10deg); /* Rotation on hover for the 3D effect */
            box-shadow: 0 16px 32px rgba(0, 0, 0, 0.3); /* Enhanced shadow on hover */
        }
        h1 {
            color: #4CAF50;
            margin-bottom: 20px;
        }
        p {
            font-size: 1.1em;
            margin-bottom: 20px;
        }
        a {
            color: #007BFF;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
        .button {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-top: 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome, ${name}!</h1>
        <p>We're glad to have you here. Feel free to explore and enjoy our application.</p>
        <a href="/list-todos"class="button">Go to Todos Page</a>
    </div>
</body>
</html>
