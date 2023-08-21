<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="books.aspx.vb" Inherits="Project.books" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Liberty Library</title>
    <style>
        body {
            font-family: Gotham, 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            background-color: #fafafa;
        }

        .header {
            padding-left: 150px;
            padding-right: 150px;
            display: flex;
            background-color: #f5f5f5;
        }

        h3 {
            margin-right: 250px;
            margin-left: 20px;
            color: black;
            margin-top: auto;
            margin-bottom: auto;
        }

        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
        }

        li {
            font-weight: 500;
            float: left;
        }

            li a {
                display: block;
                color: black;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

                li a:hover:not(.active) {
                    font-weight: 600;
                }

        .active {
            font-weight: 600;
            border-bottom: 2px solid black;
        }

        #admin {
            margin-left: 100px;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <div class="header">
        <h3>Liberty Library</h3>
        <ul>
            <li><a href="../home.aspx">Home</a></li>
            <li><a class="active">Books</a></li>
            <li><a href="#">Issue book</a></li>
            <li><a href="#" id="admin">Admin</a></li>
        </ul>
    </div>

    <div>
        <h2>List of Books</h2>
    </div>
</body>
</html>
