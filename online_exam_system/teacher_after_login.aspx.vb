
Partial Class teacher_after_login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lbteachername.Text = Session("teachername")
    End Sub
End Class
