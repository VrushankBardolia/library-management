<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="books.aspx.vb" Inherits="Project.books" %>

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
        li a:hover:not(.active) { font-weight: 600 }
        .active {
            font-weight: 600;
            border-bottom: 2px solid black;
        }
        #admin { margin-left: 100px }
        .book-list {
            width: 90%;
            margin-left: auto;
            margin-right: auto;
            margin-top: 8px;
        }
        .book-list h2 { 
            text-align: center;
            margin:20px;
        }
        #GridView1 { 
            margin: 0 auto;
            font-weight:600;
            text-align:center;
        }
    </style>
</head>

<body>
    <div class="header">
        <h3>Liberty Library</h3>
        <ul>
            <li><a href="../home.aspx">Home</a></li>
            <li><a class="active">Books</a></li>
            <li><a href="issueBook.aspx">Issue book</a></li>
            <li><a href="adminLogin.aspx" id="admin">Admin</a></li>
        </ul>
    </div>

    <div class="book-list">
        <h2>List of Books</h2>
        <form runat="server">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                CellPadding="12" DataKeyNames="b_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no Books." ForeColor="Black" GridLines="Horizontal" Width="791px">
                <Columns>
                    <asp:BoundField DataField="b_id" HeaderText="Book ID" ReadOnly="True" SortExpression="b_id" />
                    <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name" />
                    <asp:BoundField DataField="pages" HeaderText="Pages" SortExpression="pages" />
                    <asp:BoundField DataField="auther" HeaderText="Auther" SortExpression="auther" />
                    <asp:BoundField DataField="publisher" HeaderText="Publisher" SortExpression="publisher" />
                    <asp:BoundField DataField="copies" HeaderText="Copies" SortExpression="copies" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#1e293b" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:libraryConnectionString1 %>" 
                DeleteCommand="DELETE FROM [books] WHERE [b_id] = @b_id" 
                InsertCommand="INSERT INTO [books] ([book_name], [pages], [auther], [publisher], [copies]) VALUES (@book_name, @pages, @auther, @publisher, @copies)" 
                SelectCommand="SELECT [b_id], [book_name], [pages], [auther], [publisher], [copies] FROM [books]" 
                UpdateCommand="UPDATE [books] SET [book_name] = @book_name, [pages] = @pages, [auther] = @auther, [publisher] = @publisher, [copies] = @copies WHERE [b_id] = @b_id">
                <DeleteParameters>
                    <asp:Parameter Name="b_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="book_name" Type="String" />
                    <asp:Parameter Name="pages" Type="Int32" />
                    <asp:Parameter Name="auther" Type="String" />
                    <asp:Parameter Name="publisher" Type="String" />
                    <asp:Parameter Name="copies" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="book_name" Type="String" />
                    <asp:Parameter Name="pages" Type="Int32" />
                    <asp:Parameter Name="auther" Type="String" />
                    <asp:Parameter Name="publisher" Type="String" />
                    <asp:Parameter Name="copies" Type="Int32" />
                    <asp:Parameter Name="b_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </form>
    </div>
</body>
</html>
