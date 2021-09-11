Imports System.Data
Imports System.Data.SqlClient
Partial Class teacher_profile_details
    Inherits System.Web.UI.Page
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\alldatabase.mdf;Integrated Security=True;User Instance=True")
   

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lbid.Text = Session("teacherid")
        lbname.Text = Session("teachername")
        con.Open()
        cmd = New SqlCommand("select * from teacher where tid='" + lbid.Text + "'", con)
        dr = cmd.ExecuteReader
        If (dr.Read) Then
            lbaddress.Text = dr(3).ToString
            lbdob.Text = dr(4).ToString
            lbmob.Text = dr(5).ToString
            lbemail.Text = dr(6).ToString
            Image4.ImageUrl = dr(7).ToString
        End If
    End Sub
End Class
