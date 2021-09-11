Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class upload_notice
    Inherits System.Web.UI.Page
    Dim cmd1, cmd2 As New SqlCommand
    Dim dr1, dr2 As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\alldatabase.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim n As Integer
        'creade id.........................
        Try
            con.Open()
            cmd1 = New SqlCommand("select MAX(nidl) from notice", con)
            dr1 = cmd1.ExecuteReader
            If dr1.Read Then
                n = dr1(0).ToString
                n = n + 1
                tbnidl.Text = Val(n)
                tbnid.Text = "PBC/NT/NO/" & n.ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()

    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Try
            con.Open()
            cmd2 = New SqlCommand("insert into notice(nid,nidl,nsub,nbody) values(@nid,@nidl,@nsub,@nbody)", con)
            cmd2.Parameters.AddWithValue("@nid", tbnid.Text.Trim())
            cmd2.Parameters.AddWithValue("@nidl", tbnidl.Text.Trim())
            cmd2.Parameters.AddWithValue("@nsub", tbnsub.Text.Trim())
            cmd2.Parameters.AddWithValue("@nbody", tbnbody.Text.Trim())
            cmd2.ExecuteReader()
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()
            cmd2.Dispose()
            tbnsub.Text = " "
            tbnbody.Text = " "
        End Try
        Dim n As Integer
        'creade id.........................
        Try
            con.Open()
            cmd1 = New SqlCommand("select MAX(nidl) from notice", con)
            dr1 = cmd1.ExecuteReader
            If dr1.Read Then
                n = dr1(0).ToString
                n = n + 1
                tbnidl.Text = Val(n)
                tbnid.Text = "PBC/NT/NO/" & n.ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
    End Sub
End Class
