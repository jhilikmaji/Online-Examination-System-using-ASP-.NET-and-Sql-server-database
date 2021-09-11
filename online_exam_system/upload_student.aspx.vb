Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Imports System.Net
Imports System.Net.Mail
Partial Class upload_student
    Inherits System.Web.UI.Page
    Dim cmd1, cmd2 As New SqlCommand
    Dim dr1, dr2 As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\alldatabase.mdf;Integrated Security=True;User Instance=True")
   
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim n As Integer
        'creade id.........................
        Try
            con.Open()
            cmd1 = New SqlCommand("select MAX(s_idl) from student", con)
            dr1 = cmd1.ExecuteReader
            If dr1.Read Then
                n = dr1(0).ToString
                n = n + 1
                tbstidl.Text = Val(n)
                tbstid.Text = "PBC/ST/NO/" & n.ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()

       
    End Sub

    Protected Sub btnupload_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btnupload.Click
        lbpass.Text = tbstdob.Text
        Try
            con.Open()
            cmd2 = New SqlCommand("insert into student(s_id,s_idl,s_name,s_address,s_class,s_dob,s_mob,s_email,s_pass) values(@s_id,@s_idl,@s_name,@s_address,@s_class,@s_dob,@s_mob,@s_email,@s_pass)", con)
            cmd2.Parameters.AddWithValue("@s_id", tbstid.Text.Trim())
            cmd2.Parameters.AddWithValue("@s_idl", tbstidl.Text.Trim())
            cmd2.Parameters.AddWithValue("@s_name", tbstname.Text.Trim())
            cmd2.Parameters.AddWithValue("@s_address", tbstadd.Text.Trim())
            cmd2.Parameters.AddWithValue("@s_class", DropDownList1.SelectedValue.Trim())
            cmd2.Parameters.AddWithValue("@s_dob", tbstdob.Text.Trim())
            cmd2.Parameters.AddWithValue("@s_mob", tbstmob.Text.Trim())
            cmd2.Parameters.AddWithValue("@s_email", tbstemail.Text.Trim())
            cmd2.Parameters.AddWithValue("@s_pass", lbpass.Text.Trim())
            cmd2.ExecuteReader()

            Dim toaddress As String = tbstemail.Text
            Dim fromaddress As String = tbadminemail.Text
            Dim frompass As String = tbadminpass.Text
            Dim mailsub As String = "Your Registration ID and Password for your online examination"
            Dim mailbody As String = "Hey " + tbstname.Text + " Your ID =" + tbstid.Text + " And Your Password =" + lbpass.Text + ""
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
            tbstname.Text = " "
            tbstadd.Text = " "
            DropDownList1.ClearSelection()
            tbstdob.Text = " "
            tbstmob.Text = " "
            tbstemail.Text = " "
            lbpass.Text = " "
        End Try
        Dim n As Integer
        'creade id.........................
        Try
            con.Open()
            cmd1 = New SqlCommand("select MAX(s_idl) from student", con)
            dr1 = cmd1.ExecuteReader
            If dr1.Read Then
                n = dr1(0).ToString
                n = n + 1
                tbstidl.Text = Val(n)
                tbstid.Text = "PBC/ST/NO/" & n.ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
    End Sub
End Class
