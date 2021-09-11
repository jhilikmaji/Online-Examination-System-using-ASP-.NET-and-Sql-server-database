Imports System.Data
Imports System.Data.SqlClient
Partial Class student_login
    Inherits System.Web.UI.Page
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\alldatabase.mdf;Integrated Security=True;User Instance=True")
    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        con.Open()
        cmd = New SqlCommand("select * from student where s_id='" + tbstid.Text + "' and s_pass='" + tbstpass.Text + "'", con)
        dr = cmd.ExecuteReader
        If (dr.Read) Then
            Session("sid") = dr(0).ToString
            Session("sname") = dr(2).ToString
            Session("sdept") = dr(4).ToString
            Response.Redirect("student_after_login.aspx")
        Else
            Labelshow.Visible = True
            Labelshow.Text = "Sorry! You enter wrong ID or Password"
        End If
        con.Close()

    End Sub

   
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
