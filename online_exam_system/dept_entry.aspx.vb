Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class dept_entry
    Inherits System.Web.UI.Page
    Dim cmd1, cmd2 As New SqlCommand
    Dim dr1, dr2 As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\alldatabase.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim n As Integer
        'creade id.........................
        Try
            con.Open()
            cmd1 = New SqlCommand("select MAX(deptidl) from department", con)
            dr1 = cmd1.ExecuteReader
            If dr1.Read Then
                n = dr1(0).ToString
                n = n + 1
                tbdeptidl.Text = Val(n)
                tbdeptid.Text = "PBC/DEPT/NO/" & n.ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Try
            con.Open()
            cmd2 = New SqlCommand("insert into department(deptid,deptidl,deptname,deptloc,deptabout) values(@deptid,@deptidl,@deptname,@deptloc,@deptabout)", con)
            cmd2.Parameters.AddWithValue("@deptid", tbdeptid.Text.Trim())
            cmd2.Parameters.AddWithValue("@deptidl", tbdeptidl.Text.Trim())
            cmd2.Parameters.AddWithValue("@deptname", tbdeptname.Text.Trim())
            cmd2.Parameters.AddWithValue("@deptloc", tbdeptloca.Text.Trim())
            cmd2.Parameters.AddWithValue("@deptabout", tbdeptabout.Text.Trim())
            cmd2.ExecuteReader()
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()
            cmd2.Dispose()
            tbdeptname.Text = " "
            tbdeptloca.Text = " "
            tbdeptabout.Text = " "
            
        End Try
        Dim n As Integer
        'creade id.........................
        Try
            con.Open()
            cmd1 = New SqlCommand("select MAX(deptidl) from department", con)
            dr1 = cmd1.ExecuteReader
            If dr1.Read Then
                n = dr1(0).ToString
                n = n + 1
                tbdeptidl.Text = Val(n)
                tbdeptid.Text = "PBC/DEPT/NO/" & n.ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
    End Sub
End Class
