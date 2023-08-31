<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="home.aspx.vb" Inherits="Project.home" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Liberty Library</title>
    <style>
        * { margin:0 }
        body {
            font-family: Gotham, 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            background-color:#fafafa;
        }
        .header {
            padding-left:150px;
            padding-right:150px;
            display:flex;
            background-color:#e2e8f0;
        }
        h3 {
            margin-right:250px;
            margin-left:20px;
            color:black;
            margin-top:auto;
            margin-bottom:auto;
        }
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
        }
        li {
            font-weight:500;
            float: left;
        }
        li a {
            display: block;
            color: black;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        li a:hover { font-weight:600 }
        .active {
            font-weight:600;
            border-bottom:2px solid black;
        }
        #admin{margin-left:100px}
        .container{
            width:75%;
            height:80%;
            margin-left:auto;
            margin-right:auto;
        }
        .container img{width:100%}
        .container h1{
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
    </style>
</head>
<body>
    <div class="header">
        <h3>Liberty Library</h3>
        <ul>
            <li><a class="active">Home</a></li>
            <li><a href="books.aspx">Books</a></li>
            <li><a href="issueBook.aspx">Issue book</a></li>
            <li><a href="adminLogin.aspx" id="admin">Admin</a></li>
        </ul>
    </div>
    <div class="container">
        <img src="img/bg.jpg" />
        <h1>Empowering Curiosity, Enriching Minds.</h1>
    </div>
</body>
</html>
