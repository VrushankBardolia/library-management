<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="issueList.aspx.vb" Inherits="Project.issueList" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Liberty Library : Admin</title>
    <style>
        body {
            font-family: Gotham, 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            background-color: #fafafa;
        }
        .header {
            padding-left: 150px;
            padding-right: 150px;
            display: flex;
            background-color: #0f172a;
        }
        h3 {
            margin-right: 250px;
            margin-left: 20px;
            color: #f8fafc;
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
        #students{ margin-left:150px }
        issue-list {
            width: 90%;
            margin-left: auto;
            margin-right: auto;
            margin-top: 8px;
        }
        .issue-list h2 { text-align: center }
        #GridView1 {
            margin: 0 auto;
            font-weight:600;
            text-align:center;
        }
    </style>
</head>

<body>
    <div class="header">
        <h3>Liberty Library : Admin</h3>
        <ul>
            <li><a class="active">Issue List</a></li>
            <li><a href="bookList.aspx" >Books List</a></li>
            <li><a href="handleBooks.aspx">Handle Books</a></li>
            <li><a href="home.aspx" id="students">Go to Students Side</a></li>
        </ul>
    </div>
    <div class="issue-list">
        <h2>List of Issues</h2>
        <form runat="server">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="12" DataKeyNames="i_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" GridLines="Horizontal" AllowPaging="True">
                <Columns>
                    <asp:BoundField DataField="i_id" HeaderText="Issue ID" ReadOnly="True" SortExpression="i_id" />
                    <asp:BoundField DataField="fname" HeaderText="Full Name" SortExpression="fname" />
                    <asp:BoundField DataField="standard" HeaderText="Standard" SortExpression="standard" />
                    <asp:BoundField DataField="division" HeaderText="Division" SortExpression="division" />
                    <asp:BoundField DataField="rollno" HeaderText="Roll No." SortExpression="rollno" />
                    <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name" />
                    <asp:BoundField DataField="issue_date" HeaderText="Issue Date" SortExpression="issue_date" DataFormatString="{0:MM/dd/yyyy}"/>
                    <asp:CommandField HeaderText="Delete Issue" ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#1e293b" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#e2e8f0" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:libraryConnectionString1 %>" DeleteCommand="DELETE FROM [issuebook] WHERE [i_id] = @i_id" InsertCommand="INSERT INTO [issuebook] ([fname], [standard], [division], [rollno], [book_name], [issue_date]) VALUES (@fname, @standard, @division, @rollno, @book_name, @issue_date)" ProviderName="<%$ ConnectionStrings:libraryConnectionString1.ProviderName %>" SelectCommand="SELECT [i_id], [fname], [standard], [division], [rollno], [book_name], [issue_date] FROM [issuebook]" UpdateCommand="UPDATE [issuebook] SET [fname] = @fname, [standard] = @standard, [division] = @division, [rollno] = @rollno, [book_name] = @book_name, [issue_date] = @issue_date WHERE [i_id] = @i_id">
                <DeleteParameters>
                    <asp:Parameter Name="i_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="fname" Type="String" />
                    <asp:Parameter Name="standard" Type="Int32" />
                    <asp:Parameter Name="division" Type="String" />
                    <asp:Parameter Name="rollno" Type="Int32" />
                    <asp:Parameter Name="book_name" Type="String" />
                    <asp:Parameter DbType="Date" Name="issue_date" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="fname" Type="String" />
                    <asp:Parameter Name="standard" Type="Int32" />
                    <asp:Parameter Name="division" Type="String" />
                    <asp:Parameter Name="rollno" Type="Int32" />
                    <asp:Parameter Name="book_name" Type="String" />
                    <asp:Parameter DbType="Date" Name="issue_date" />
                    <asp:Parameter Name="i_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
        </form>
    </div>
</body>
</html>
