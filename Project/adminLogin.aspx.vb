Public Class adminLogin
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click

    End Sub

    Protected Sub final_validate_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles final_validate.ServerValidate
        Dim username As String = txtUsername.Text
        Dim password As String = txtPassword.Text
        If (username.Equals("admin") And password.Equals("admin")) Then
            args.IsValid = True
            Response.Redirect("issueList.aspx")
        Else
            args.IsValid = False
        End If
    End Sub
End Class