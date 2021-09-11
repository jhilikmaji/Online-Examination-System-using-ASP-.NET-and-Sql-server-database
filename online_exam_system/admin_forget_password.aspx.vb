Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Imports System.Configuration
Imports System.Net
Imports System.Net.Mail
Partial Class admin_forget_password
    Inherits System.Web.UI.Page
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\alldatabase.mdf;Integrated Security=True;User Instance=True")
    Protected Sub btnsendotp_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btnsendotp.Click
        'random number genaration
        Dim ran As New Random
        tbsenderbody.Text = ran.Next(100000, 999999).ToString
        'get email from database
        con.Open()
        cmd = New SqlCommand("select admin_email from admin_login where admin_id='" + tbid.Text + "'", con)
        dr = cmd.ExecuteReader
        If dr.Read Then
            Labelemail.Text = dr(0).ToString
            'sending otp
            Dim body As String = ("Your OTP for Changing Password Is=> " + tbsenderbody.Text + "")
            Dim toaddress As String = Labelemail.Text
            Dim fromaddress As String = tbsenderemail.Text
            Dim frompass As String = tbsenderpass.Text
            Dim mailsub As String = tbsendersub.Text
            Dim mailbody As String = body
            Dim smtp As New SmtpClient("smtp.gmail.com", 587)
            smtp.EnableSsl = True
            smtp.UseDefaultCredentials = False
            smtp.Credentials = New NetworkCredential(fromaddress, frompass)
            Dim mail As New MailMessage(fromaddress, toaddress, mailsub, mailbody)
            Try
                smtp.Send(mail)
                Labelmsg.ForeColor = Drawing.Color.Blue
                Labelmsg.Visible = True
                Labelmsg.Text = "Please cheak your Email, and put OTP to the box given bellow"
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
            con.Close()
        Else
            Labelmsg.ForeColor = Drawing.Color.Red
            Labelmsg.Text = "You Enter Wrong ID or Password,please cheak it"
        End If
    End Sub

    Protected Sub btnresendotp_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btnresendotp.Click
        'random number genaration
        Dim ran As New Random
        tbsenderbody.Text = ran.Next(100000, 999999).ToString
        'get email from database
        con.Open()
        cmd = New SqlCommand("select admin_email from admin_login where admin_id='" + tbid.Text + "'", con)
        dr = cmd.ExecuteReader
        If dr.Read Then
            Labelemail.Text = dr(0).ToString
            'sending otp
            Dim body As String = ("Your OTP for Changing Password Is=> " + tbsenderbody.Text + "")
            Dim toaddress As String = Labelemail.Text
            Dim fromaddress As String = tbsenderemail.Text
            Dim frompass As String = tbsenderpass.Text
            Dim mailsub As String = tbsendersub.Text
            Dim mailbody As String = body
            Dim smtp As New SmtpClient("smtp.gmail.com", 587)
            smtp.EnableSsl = True
            smtp.UseDefaultCredentials = False
            smtp.Credentials = New NetworkCredential(fromaddress, frompass)
            Dim mail As New MailMessage(fromaddress, toaddress, mailsub, mailbody)
            Try
                smtp.Send(mail)
                Labelmsg.ForeColor = Drawing.Color.Blue
                Labelmsg.Visible = True
                Labelmsg.Text = "Please cheak your Email, and put OTP to the box given bellow"
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
            con.Close()
        Else
            Labelmsg.ForeColor = Drawing.Color.Red
            Labelmsg.Text = "You Enter Wrong ID or Password,please cheak it"
        End If
    End Sub

   
    Protected Sub btnverify_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btnverify.Click
        Labelmsg.Visible = False
        Dim totp, tbbody As String
        tbbody = tbsenderbody.Text
        totp = tbotp.Text
        If (tbbody = totp) Then
            Labelverify.Visible = True
            Labelverify.ForeColor = Drawing.Color.Blue
            Labelverify.Text = "Now you can enter new and confirm password"
            tbnewpass.Enabled = True
            tbconfirmpass.Enabled = True
            btnsave.Enabled = True
        Else
            Labelverify.Visible = True
            Labelverify.ForeColor = Drawing.Color.Red
            Labelverify.Text = "You enter wrong OTP ,Please cheak it"
            tbnewpass.Enabled = False
            tbconfirmpass.Enabled = False
            btnsave.Enabled = False
        End If
    End Sub

    Protected Sub btnsave_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btnsave.Click
        con.Open()
        cmd = New SqlCommand("update admin_login set admin_pass='" + tbconfirmpass.Text + "' where admin_id='" + tbid.Text + "'", con)
        dr = cmd.ExecuteReader
        If (dr.RecordsAffected) Then
            MsgBox("Password Changed Successfully", MsgBoxStyle.ApplicationModal)
            Response.Redirect("after_admin_login.aspx")
        Else
            Labelsuccess.Visible = True
            Labelsuccess.Text = "Password not Changed,Please try again leter"
        End If
        con.Close()
    End Sub

    Protected Sub tbsenderemail_TextChanged(sender As Object, e As System.EventArgs) Handles tbsenderemail.TextChanged

    End Sub
End Class
