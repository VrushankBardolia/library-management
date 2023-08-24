Imports System.Data.SqlClient

Public Class issueBook
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\BCA\SEM-5\ASP.NET\Project\Project\App_Data\library.mdf;Integrated Security=True")
    Dim cmd As New SqlCommand
    Dim qry As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cn.Open()
    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Try
            qry = "insert into issuebook values('" & txtFName.Text & "'," & txtSTD.Text & ",'" & txtDIV.Text & "'," & txtRollNo.Text & ",'" & txtBook.Text & "','" & IssueDate.Text & "' )"
            cmd = New SqlCommand(qry, cn)
            cmd.ExecuteNonQuery()
        Catch ex As Exception

        End Try
    End Sub
End Class