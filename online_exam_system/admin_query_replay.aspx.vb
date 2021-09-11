Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Imports System.Configuration
Imports System.Net
Imports System.Net.Mail
Partial Class admin_query_replay
    Inherits System.Web.UI.Page
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\alldatabase.mdf;Integrated Security=True;User Instance=True")

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        tbclientid.Text = GridView1.SelectedRow.Cells(2).Text
        tbsub.Text = GridView1.SelectedRow.Cells(3).Text
    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Dim toaddress As String = tbclientid.Text
        Dim fromaddress As String = tbadminid.Text
        Dim frompass As String = tbadminpass.Text
        Dim mailsub As String = "Reply from Online Exam Admin"
        Dim mailbody As String = "Your Query is=> " + tbsub.Text + "............. and Reply is=> " + tbbody.Text + ""
        Dim smtp As New SmtpClient("smtp.gmail.com", 587)
        smtp.EnableSsl = True
        smtp.UseDefaultCredentials = False
        smtp.Credentials = New NetworkCredential(fromaddress, frompass)
        Dim mail As New MailMessage(fromaddress, toaddress, mailsub, mailbody)
        Try
            smtp.Send(mail)
            MsgBox("Messege sent")
            con.Open()
            cmd = New SqlCommand("delete from query where querysubject='" + tbbody.Text + "'", con)
            dr = cmd.ExecuteReader

            tbclientid.Text = " "
            tbsub.Text = " "
            tbbody.Text = " "

        Catch ex As Exception
            MsgBox(ex.Message)

        End Try
        con.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
