<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.entity.Book" %>
<!DOCTYPE html>
<html>
<head>
    <title>Book List</title>
 
    <link rel="stylesheet" href="styles.css">
    <style>
      
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        h1, h2 {
            text-align: center;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #ffffff;
        }
        table, th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
     
             .buttons {
            margin-top: 20px;
        }

        .buttons a {
            padding: 10px 20px;
            background-color: #007bff;
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

<h1>Welcome to BookStore Management System</h1>
<h2>Book List</h2>

<table>
    <tr>
        <th>Book ID</th>
        <th>Book Name</th>
        <th>Book Description</th>
        <th>Book Author</th>
        <th>Book Price</th>
        <th>Delete</th>
        <th>Update</th>
    </tr>
    <%
        List<Book> books = (List<Book>) request.getAttribute("books");
        if (books != null && !books.isEmpty()) {
            for (Book book : books) {
    %>
    <tr>
        <td><%= book.getId() %></td>
        <td><%= book.getBookName() %></td>
        <td><%= book.getDiscription() %></td>
        <td><%= book.getAuthor() %></td>
        <td><%= book.getPrice() %></td>
        <td class="button">
        <button>
            <a href="<%= request.getContextPath() %>/delete/<%= book.getId() %>" class="action-buttons delete-btn">Delete</a>
        </button>
        </td>
        <td class="button" >
        <button>
            <a href="<%= request.getContextPath() %>/update/<%= book.getId() %>" class="action-buttons update-btn">Update</a>
        </button>
        </td>
    </tr>
    <%
            }
        } else {
    %>
    <tr>
        <td colspan="7">No data available</td>
    </tr>
    <%
        }
    %>
</table>

</body>
</html>
