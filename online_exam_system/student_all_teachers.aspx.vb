Imports System.Data
Imports System.Data.SqlClient
Partial Class student_all_teachers
    Inherits System.Web.UI.Page
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\alldatabase.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.Open()
        Try
            cmd = New SqlCommand("select * from teacher where tname='" + DropDownList1.SelectedValue + "'", con)
            dr = cmd.ExecuteReader
            If (dr.Read) Then
                lbid.Text = dr(0).ToString
                lbaddress.Text = dr(3).ToString
                lbdob.Text = dr(4).ToString
                lbmob.Text = dr(5).ToString
                lbemail.Text = dr(6).ToString
                Image4.ImageUrl = dr(7).ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
    End Sub
End Class
