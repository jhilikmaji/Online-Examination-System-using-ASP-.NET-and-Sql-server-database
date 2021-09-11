Imports System.Data
Imports System.Data.SqlClient
Partial Class admin_login
    Inherits System.Web.UI.Page
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\alldatabase.mdf;Integrated Security=True;User Instance=True")
    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        con.Open()
        cmd = New SqlCommand("select * from admin_login where admin_id='" + tbid.Text + "' and admin_pass='" + tbpass.Text + "'", con)
        dr = cmd.ExecuteReader
        If (dr.Read) Then
            Session("aid") = dr(0).ToString
            Response.Redirect("after_admin_login.aspx")
        Else
            Labelshow.Visible = True
            Labelshow.Text = "Sorry! You enter wrong ID or Password"
        End If
        con.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
