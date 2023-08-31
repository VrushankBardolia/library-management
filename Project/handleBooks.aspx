<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="handleBooks.aspx.vb" Inherits="Project.handleBooks" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Liberty Library : Admin</title>
    <style>
        * { margin:0 }
        body {
            font-family: Gotham, 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            background-color: #fafafa;
        }
        .header {
            padding: 0 150px;
            display: flex;
            background-color: #0f172a;
        }
        h3 {
            margin: auto 0;
            margin-right: 250px;
            margin-left: 20px;
            color: #f8fafc;
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
            color: #f8fafc;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        li a:hover:not(.active) { font-weight: 600 }
        .active {
            font-weight: 600;
            border-bottom: 2px solid #f8fafc;
        }
        #students { margin-left:150px }
        .form-container {
            width:800px;
            margin-left:auto;
            margin-right:auto;
            margin-top:20px;
        }
        h2 { 
            text-align: center;
            margin:20px;
        }
        .form-table { margin:0 auto }
        .row { height:50px }
        .label-f { width:130px }
        .txtBox-f { width: 350px }
        b { font-size:large }
        .txtBox{
            width:100%;
            height:30px;
            border: 2px solid #64748b;
            border-radius:4px;
        }
        .validator{
            color:#dc2626;
            padding:8px;
            font-weight:500;
        }
        .btn-cont{
            width:400px;
            margin-left:auto;
            margin-right:auto;
            height:40px;
            margin-top:20px;
            padding:8px;
        }
        .btn{
            width:100%;
            height:100%;
            background-color:#0f172a;
            color:white;
            font-family: Gotham;
            font-size:larger;
            font-weight:500;
            border-radius:8px;
        }
        .btn:hover { background-color:#1e293b }
    </style>
</head>

<body>
    <div class="header">
        <h3>Liberty Library : Admin</h3>
        <ul>
            <li><a href="issueList.aspx">Issue List</a></li>
            <li><a href="bookList.aspx" >Books List</a></li>
            <li><a class="active">Handle Books</a></li>
            <li><a href="home.aspx" id="students">Go to Students Side</a></li>
        </ul>
    </div>
    <div class="form-container">
        <h2>Enter details of Book</h2>
        <form id="form1" runat="server">
            <table class="form-table">
                <tr class="row">
                    <td class="label-f"><b>Book Name</b></td>
                    <td class="txtBox-f">
                        <asp:TextBox ID="txtBName" runat="server" CssClass="txtBox"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="validateBName" runat="server" ControlToValidate="txtBName" ErrorMessage="Enter Book Name" CssClass="validator"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="row">
                    <td class="label-f"><b>Pages</b></td>
                    <td class="txtBox-f">
                        <asp:TextBox ID="txtPages" runat="server" CssClass="txtBox" TextMode="Number"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="validatorPages" runat="server" ControlToValidate="txtPages" ErrorMessage="Enter Pages" CssClass="validator"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="row">
                    <td class="label-f"><b>Auther</b></td>
                    <td class="txtBox-f">
                        <asp:TextBox ID="txtAuther" runat="server" CssClass="txtBox"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="validatorAuther" runat="server" ControlToValidate="txtAuther" ErrorMessage="Enter Auther" CssClass="validator"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="row">
                    <td class="label-f"><b>Publisher</b></td>
                    <td class="txtBox-f">
                        <asp:TextBox ID="txtPublisher" runat="server" CssClass="txtBox"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="validatorPublisher" runat="server" ControlToValidate="txtPublisher" ErrorMessage="Enter Publisher" CssClass="validator"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="row">
                    <td class="label-f"><b>Copies</b></td>
                    <td class="txtBox-f">
                        <asp:TextBox ID="txtCopies" runat="server" CssClass="txtBox" TextMode="Number"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="validatorCopies" runat="server" ControlToValidate="txtCopies" ErrorMessage="Enter Copies" CssClass="validator"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <div class="btn-cont">
                <asp:Button ID="btnInsert" CssClass="btn" runat="server" Text="Insert"/>
             </div>
        </form>
    </div>
</body>
</html>