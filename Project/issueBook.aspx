<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="issueBook.aspx.vb" Inherits="Project.issueBook" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Liberty Library</title>
    <style>
        * { margin:0 }
        body {
            font-family: Gotham, 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            background-color: #fafafa;
        }
        .header {
            padding-left: 150px;
            padding-right: 150px;
            display: flex;
            background-color: #e2e8f0;
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
        li a:hover:not(.active) {font-weight: 600}
        .active {
            font-weight: 600;
            border-bottom: 2px solid black;
        }
        #admin {margin-left: 100px;}
        .form-container{
            width:700px;
            margin-left:auto;
            margin-right:auto;
            margin-top:20px;
        }
        h2{
            text-align: center;
            margin:20px;
        }
        .form-table {width: 100%}
        .row{height:50px}
        .label-f{width:130px}
        .txtBox-f {width: 350px}
        b{font-size:large}
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
            width:300px;
            margin-left:auto;
            margin-right:auto;
            height:40px;
            margin-top:8px;
        }
        #btnSubmit{
            width:100%;
            height:100%;
            background-color:#0f172a;
            color:white;
            font-family: Gotham;
            font-size:larger;
            font-weight:500;
            border-radius:8px;
        }
        #btnSubmit:hover{background-color:#1e293b}
    </style>
</head>

<body>
    <!-- Header -->
    <div class="header">
        <h3>Liberty Library</h3>
        <ul>
            <li><a href="../home.aspx">Home</a></li>
            <li><a href="books.aspx">Books</a></li>
            <li><a class="active">Issue book</a></li>
            <li><a href="adminLogin.aspx" id="admin">Admin</a></li>
        </ul>
    </div>

    <!-- Form -->
    <div class="form-container">
        <h2>Fill the form to issue the Book</h2>
        <form id="form1" runat="server">
            <table class="form-table">
                <tr class="row">
                    <td class="label-f"><b>Full Name</b></td>
                    <td class="txtBox-f">
                        <asp:TextBox ID="txtFName" runat="server" CssClass="txtBox"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="validateFName" runat="server" ControlToValidate="txtFName" ErrorMessage="Enter Full Name" CssClass="validator"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="row">
                    <td class="label-f"><b>Standard</b></td>
                    <td class="txtBox-f">
                        <asp:TextBox ID="txtSTD" runat="server" CssClass="txtBox" TextMode="Number"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="validatorSTD" runat="server" ControlToValidate="txtSTD" ErrorMessage="Enter Standard" CssClass="validator"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="row">
                    <td class="label-f"><b>Division</b></td>
                    <td class="txtBox-f">
                        <asp:TextBox ID="txtDIV" runat="server" CssClass="txtBox"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="validatorDIV" runat="server" ControlToValidate="txtDIV" ErrorMessage="Enter Division" CssClass="validator"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="row">
                    <td class="label-f"><b>Roll no.</b></td>
                    <td class="txtBox-f">
                        <asp:TextBox ID="txtRollNo" runat="server" CssClass="txtBox" TextMode="Number"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="validatorRollNo" runat="server" ControlToValidate="txtRollNo" ErrorMessage="Enter Roll number" CssClass="validator"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="row">
                    <td class="label-f"><b>Book Name</b></td>
                    <td class="txtBox-f">
                        <asp:TextBox ID="txtBook" runat="server" CssClass="txtBox"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="validatorBook" runat="server" ControlToValidate="txtBook" ErrorMessage="Enter Book Name" CssClass="validator"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="row">
                    <td class="label-f"><b>Issue Date</b></td>
                    <td class="txtBox-f">
                        <asp:TextBox ID="IssueDate" runat="server" TextMode="Date" CssClass="txtBox"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="validatorIssueDate" runat="server" ControlToValidate="IssueDate" ErrorMessage="Enter Issue Date" CssClass="validator"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td class="txtBox-f">
                        <div class="btn-cont">
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" type="submit"/>
                        </div>
                    </td>
                    <td></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>