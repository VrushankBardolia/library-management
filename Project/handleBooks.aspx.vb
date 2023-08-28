Imports System.Data.SqlClient

Public Class handleBooks
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\BCA\SEM-5\ASP.NET\Project\Project\App_Data\library.mdf;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim qry As String

    Protected Sub btnInsert_Click(sender As Object, e As EventArgs) Handles btnInsert.Click
        Try
            cn.Open()
            qry = "insert into books values ('" & txtBName.Text & "'," & txtPages.Text & ",'" & txtAuther.Text & "','" & txtAuther.Text & "'," & txtCopies.Text & " ) "
            cmd = New SqlCommand(qry, cn)
            cmd.ExecuteNonQuery()
            Response.Redirect("bookList.aspx")
        Catch ex As Exception

        End Try
        cn.Close()
    End Sub
End Class