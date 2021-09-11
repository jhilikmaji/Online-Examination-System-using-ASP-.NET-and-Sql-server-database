Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class student_select_paper
    Inherits System.Web.UI.Page
    Dim cmd, cmd2 As New SqlCommand
    Dim dr, dr2 As SqlDataReader
    Dim sdept As String
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\alldatabase.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lbsid.Text = Session("sid")
        lbsdept.Text = Session("sdept")
        con.Open()
        cmd2 = New SqlCommand("select qsub from question where qclass='" + lbsdept.Text + "'", con)

        dr2 = cmd2.ExecuteReader()
        If (dr2.Read) Then
            lbsub.Text = dr2(0).ToString
        End If
        con.Close()
    End Sub

    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        'insert value.................................
        con.Open()
        cmd = New SqlCommand("insert into studentanswer(sid,sdept,ssub,qa1,qa2,qa3,qa4,qa5,qa6,qa7,qa8,qa9,qa10) values(@sid,@sdept,@ssub,@qa1,@qa2,@qa3,@qa4,@qa5,@qa6,@qa7,@qa8,@qa9,@qa10)", con)
        cmd.Parameters.AddWithValue("@sid", lbsid.Text.Trim())
        cmd.Parameters.AddWithValue("@sdept", lbsdept.Text.Trim())
        cmd.Parameters.AddWithValue("@ssub", lbsub.Text.Trim())
        cmd.Parameters.AddWithValue("@qa1", tbq1.Text.Trim())
        cmd.Parameters.AddWithValue("@qa2", tbq2.Text.Trim())
        cmd.Parameters.AddWithValue("@qa3", tbq3.Text.Trim())
        cmd.Parameters.AddWithValue("@qa4", tbq4.Text.Trim())
        cmd.Parameters.AddWithValue("@qa5", tbq5.Text.Trim())
        cmd.Parameters.AddWithValue("@qa6", tbq6.Text.Trim())
        cmd.Parameters.AddWithValue("@qa7", tbq7.Text.Trim())
        cmd.Parameters.AddWithValue("@qa8", tbq8.Text.Trim())
        cmd.Parameters.AddWithValue("@qa9", tbq9.Text.Trim())
        cmd.Parameters.AddWithValue("@qa10", tbq10.Text.Trim())
        cmd.ExecuteReader()
        MsgBox("You Examamination is done")
        Response.Redirect("student_after_login.aspx")

    End Sub
End Class
