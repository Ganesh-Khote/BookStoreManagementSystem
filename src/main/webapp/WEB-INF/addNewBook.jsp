<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add New Book</title>
 
    <link rel="stylesheet" href="styles.css">
    <style>
      
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        form {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>


<form action="addNewBookSuccess" method="post">
<h2>Add New Book</h2>
    <input type="text" placeholder="Enter Book ID" name="id" required><br><br>
    <input type="text" placeholder="Enter Book Author" name="author" required><br><br>
    <input type="text" placeholder="Enter Book Name" name="bookName" required><br><br>
    <input type="text" placeholder="Enter Book Description" name="discription" required><br><br>
    <input type="text" placeholder="Enter Book Price" name="price" required><br><br>
    <button type="submit">Submit</button>
</form>

</body>
</html>
