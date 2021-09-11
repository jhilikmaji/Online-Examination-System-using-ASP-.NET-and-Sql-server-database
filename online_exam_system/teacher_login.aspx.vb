Imports System.Data
Imports System.Data.SqlClient
Partial Class teacher_login
    Inherits System.Web.UI.Page
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\alldatabase.mdf;Integrated Security=True;User Instance=True")
    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        con.Open()
        cmd = New SqlCommand("select * from teacher where tid='" + tbtid.Text + "' and tpass='" + tbtpass.Text + "'", con)
        dr = cmd.ExecuteReader
        If (dr.Read) Then
            lbname.Text = dr(2).ToString
            Session("teachername") = lbname.Text
            Session("teacherid") = tbtid.Text
            Response.Redirect("teacher_after_login.aspx")
        Else
            Labelshow.Visible = True
            Labelshow.Text = "Sorry! You enter wrong ID or Password"
        End If
        con.Close()

    End Sub
End Class