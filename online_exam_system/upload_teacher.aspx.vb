Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Imports System.Net
Imports System.Net.Mail
Partial Class upload_teacher
    Inherits System.Web.UI.Page
    Dim fileName As String = String.Empty
    Dim filePath As String = String.Empty
    Dim cmd1, cmd2 As New SqlCommand
    Dim dr1, dr2 As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\alldatabase.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim n As Integer
        'creade id.........................
        Try
            con.Open()
            cmd1 = New SqlCommand("select MAX(tidl) from teacher", con)
            dr1 = cmd1.ExecuteReader
            If dr1.Read Then
                n = dr1(0).ToString
                n = n + 1
                tbtidl.Text = Val(n)
                tbtid.Text = "PBC/TCHR/NO/" & n.ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        lbpass.Text = tbtdob.Text
        'insert value.................................
        con.Open()
        Try
            If FileUpload1.HasFile Then
                fileName = FileUpload1.FileName
                filePath = Server.MapPath("~/teacherimages/" & Convert.ToString(fileName))
                FileUpload1.SaveAs(filePath)
                fileName = "~/teacherimages/" & fileName
            End If
            cmd2 = New SqlCommand("insert into teacher(tid,tidl,tname,taddress,tdob,tmob,temail,tphoto,tpass) values(@tid,@tidl,@tname,@taddress,@tdob,@tmob,@temail,@tphoto,@tpass)", con)
            cmd2.Parameters.AddWithValue("@tid", tbtid.Text.Trim())
            cmd2.Parameters.AddWithValue("@tidl", tbtidl.Text.Trim())
            cmd2.Parameters.AddWithValue("@tname", tbtname.Text.Trim())
            cmd2.Parameters.AddWithValue("@taddress", tbtadd.Text.Trim())
            cmd2.Parameters.AddWithValue("@tdob", tbtdob.Text.Trim())
            cmd2.Parameters.AddWithValue("@tmob", tbtmob.Text.Trim())
            cmd2.Parameters.AddWithValue("@temail", tbtemail.Text.Trim())
            cmd2.Parameters.AddWithValue("@tphoto", fileName)
            cmd2.Parameters.AddWithValue("@tpass", lbpass.Text.Trim())
          
            cmd2.ExecuteReader()
            Dim toaddress As String = tbtemail.Text
            Dim fromaddress As String = tbadminemail.Text
            Dim frompass As String = tbadminpass.Text
            Dim mailsub As String = "Your Registration ID and Password for online examination website"
            Dim mailbody As String = "Hey " + tbtname.Text + " Your ID =" + tbtid.Text + " And Your Password =" + lbpass.Text + ""
            Dim smtp As New SmtpClient("smtp.gmail.com", 587)
            smtp.EnableSsl = True
            smtp.UseDefaultCredentials = False
            smtp.Credentials = New NetworkCredential(fromaddress, frompass)
            Dim mail As New MailMessage(fromaddress, toaddress, mailsub, mailbody)
            Try
                smtp.Send(mail)
                MsgBox("Mail Send Successfully")
            Catch ex1 As Exception
                MsgBox(ex1.Message)
            End Try
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()
            cmd2.Dispose()
            fileName = Nothing
            filePath = Nothing
            tbtname.Text = ""
            tbtadd.Text = ""
            tbtdob.Text = ""
            tbtmob.Text = ""
            tbtemail.Text = ""
            lbpass.Text = ""
           
        End Try
        Dim n As Integer
        'creade id.........................
        Try
            con.Open()
            cmd1 = New SqlCommand("select MAX(tidl) from teacher", con)
            dr1 = cmd1.ExecuteReader
            If dr1.Read Then
                n = dr1(0).ToString
                n = n + 1
                tbtidl.Text = Val(n)
                tbtid.Text = "PBC/TCHR/NO/" & n.ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
    End Sub
End Class
