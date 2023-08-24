Imports System.Data.SqlClient

Public Class handleBooks
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\BCA\SEM-5\ASP.NET\Project\Project\App_Data\library.mdf;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim adp As New SqlDataAdapter
    Dim ds As DataSet

    Dim qry As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cn.Open()
    End Sub

    Protected Sub btnInsert_Click(sender As Object, e As EventArgs) Handles btnInsert.Click
        Try
            qry = "insert into books values ('" & txtBName.Text & "'," & txtPages.Text & ",'" & txtAuther.Text & "','" & txtAuther.Text & "'," & txtCopies.Text & " ) "
            cmd = New SqlCommand(qry, cn)
            cmd.ExecuteNonQuery()
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click

    End Sub
End Class