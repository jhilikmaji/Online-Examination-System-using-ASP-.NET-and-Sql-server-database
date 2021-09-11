
Partial Class student_after_login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        studentname.Text = Session("sname")
    End Sub
End Class
