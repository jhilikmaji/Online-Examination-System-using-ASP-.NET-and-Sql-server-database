Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class Mian_home_page
    Inherits System.Web.UI.Page
    Dim cmnd As New SqlCommand
    Dim dtrd As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\alldatabase.mdf;Integrated Security=True;User Instance=True")
   
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        HyperLink1.Text = "<marquee scrollamount=8 height=250 direction=up behavior=alternate>Click Me! <img src=photos/newgif.gif type=image/gif height=40 width=60>  </marquee>"
        HyperLink2.Text = "<marquee scrollamount=5   behavior=alternate> **Tap Here For Student Login**  </marquee>"
        tbquerydate.Text = DateAndTime.Now.ToString("dd-MM-yyyy")

    End Sub

    Protected Sub imgbtnsubmit_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles imgbtnsubmit.Click
        Try
            con.Open()
            cmnd = New SqlCommand("insert into query(querydate,queryemail,querysubject) values(@querydate,@queryemail,@querysubject)", con)
            cmnd.Parameters.AddWithValue("@querydate", tbquerydate.Text.Trim())
            cmnd.Parameters.AddWithValue("@queryemail", tbqueryemail.Text.Trim())
            cmnd.Parameters.AddWithValue("@querysubject", tbquerysubject.Text.Trim())
            cmnd.ExecuteReader()
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()
            cmnd.Dispose()

            tbqueryemail.Text = " "
            tbquerysubject.Text = " "

        End Try
    End Sub

    Protected Sub tbqueryemail_TextChanged(sender As Object, e As System.EventArgs) Handles tbqueryemail.TextChanged

    End Sub
End Class
