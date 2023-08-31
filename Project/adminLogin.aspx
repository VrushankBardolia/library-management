<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="adminLogin.aspx.vb" Inherits="Project.adminLogin" %>

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
        .header{
            margin-top:0;
            background-color:#0f172a;
            height:70px;
            position: relative;
        }
        .header h1{
            position:relative;
            text-align:center;
            color:#f8fafc;
            top:25%;
        }
        h2{
            text-align:center;
            margin-top:40px;
        }
        .form-table{
            width:470px;
            margin-top:60px;
            margin-left:auto;
            margin-right:auto;
        }
        .row { height : 50px}
        .label-f { width : 120px }
        .txtBox-f { width : 350px }
        b { font-size : large}
        .txtBox{
            width:100%;
            height:30px;
            border: 2px solid #64748b;
            border-radius:4px;
        }
        .validator{
            color:#dc2626;
            font-size:larger;
            font-weight:500;
        }
        .btn-cont{
            width:300px;
            margin-left:auto;
            margin-right:auto;
            height:150px;
            margin-top:20px;
        }
        #btnSubmit{
            width:100%;
            height:40px;
            background-color:#0f172a;
            color:white;
            font-family: Gotham;
            font-size:larger;
            font-weight:500;
            border-radius:8px;
        }
        #btnSubmit:hover{background-color:#1e293b}
        .finalValidator{
            text-align:center;
            color:#dc2626;
            font-size:larger;
            font-weight:500;
            text-align: center; /* Center-align the text */
    display: block;
        }
        #btnBack{
            width:100%;
            height:40px;
            background-color:#f8fafc;
            color:#0f172a;
            font-family: Gotham;
            margin-top:20px;
            font-size:large;
            font-weight:500;
            border-radius:8px;
            border:1px solid #0f172a;
        }
        #btnBack:hover{background-color:#f1f5f9}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header -->
        <div class="header">
            <h1>Liberty Library</h1>
        </div>

        <!-- Main Container -->
        <div class="container">
            <h2>Admin Login</h2>
            <div class="form-cont">
                
                <table class="form-table">
                    <tr class="row">
                        <td class="label-f"><b>Username</b></td>
                        <td class="txtBox-f">
                            <asp:TextBox ID="txtUsername" runat="server" CssClass="txtBox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="validator" ErrorMessage="Enter Username" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr class="row">
                        <td class="label-f"><b>Password</b></td>
                        <td class="txtBox-f">
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="txtBox" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="validator" ErrorMessage="Enter Password" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
                <div class="btn-cont">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" type="submit"/>
                    <asp:CustomValidator ID="final_validate" runat="server" CssClass="finalValidator" ErrorMessage="Incorrect Username or Password" Display="Dynamic"></asp:CustomValidator>
                    <input id="btnBack" type="button" value="Go Back To Students Side" onclick="history.back()"/>
                </div>
            </div>
        </div>
    </form>
</body>
</html>