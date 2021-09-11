
Partial Class student_exam_home
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        sesnid.Text = Session("sid")
        sesnname.Text = Session("sname")
    End Sub

   
    Protected Sub btnnext_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btnnext.Click
        If (CheckBox2.Checked) Then
            Response.Redirect("student_select_paper.aspx")

        End If
    End Sub
End Class
