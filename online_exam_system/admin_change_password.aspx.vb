Imports System.Data
Imports System.Data.SqlClient
Partial Class admin_change_password
    Inherits System.Web.UI.Page
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\alldatabase.mdf;Integrated Security=True;User Instance=True")
    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Labelshow.Visible = False
        con.Open()
        cmd = New SqlCommand("update admin_login set admin_pass='" + tbconfirmpass.Text + "' where admin_id='" + tbid.Text + "' and admin_pass='" + tboldpass.Text + "'", con)
        dr = cmd.ExecuteReader
        If (dr.RecordsAffected) Then
            MsgBox("Password Changed Successfully", MsgBoxStyle.ApplicationModal)
            Response.Redirect("after_admin_login.aspx")
        Else
            Labelshow.Visible = True
            Labelshow.Text = "Sorry! You enter wrong ID or Password"
        End If
        con.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        tbid.Text = Session("aid")
    End Sub
End Class
