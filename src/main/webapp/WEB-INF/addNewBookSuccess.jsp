<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BookStore Management System</title>

    <link rel="stylesheet" href="styles.css">
    <style>
     
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h1 {
            color: #333;
        }

        .buttons {
            margin-top: 20px;
        }

        .buttons a {
            padding: 10px 20px;
            background-color: orange;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin: 10px;
            display: inline-block;
            transition: background-color 0.3s ease;
        }

        .buttons a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Book Add Successfully</h1>
        <div class="buttons">
            <a href="addNewBook">Add New Book</a>
            <a href="getAllbook">Display All Books</a>
        </div>
    </div>
</body>
</html>
