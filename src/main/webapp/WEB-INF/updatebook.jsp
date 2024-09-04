<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.entity.Book" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Book</title>
   
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



<%
    Book book = (Book) request.getAttribute("book");
    String contextPath = request.getContextPath();
%>



<form action="<%= contextPath %>/update/updatebook" method="post">
<h2>Update Book</h2>
    <input type="text" name="id" placeholder="Enter Book ID" value="<%= book.getId() %>" readonly><br><br>
    <input type="text" name="bookName" placeholder="Enter Book Name" value="<%= book.getBookName() %>"><br><br>
    <input type="text" name="author" placeholder="Enter Book Author" value="<%= book.getAuthor() %>"><br><br>
    <input type="text" name="discription" placeholder="Enter Book Description" value="<%= book.getDiscription() %>"><br><br>
    <input type="text" name="price" placeholder="Enter Book Price" value="<%= book.getPrice() %>"><br><br>
    <button type="submit">Update</button>
</form>

</body>
</html>
