Imports System.Data
Imports System.Data.SqlClient
Partial Class Teacher_Paper_Check
    Inherits System.Web.UI.Page
    Dim cmd, cmd2 As New SqlCommand
    Dim dr, dr2 As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\alldatabase.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        tid.Text = Session("teacherid")
        con.Open()
        Try
            cmd = New SqlCommand("select sub from allotment where tid='" + tid.Text + "'", con)
            dr = cmd.ExecuteReader
            If dr.Read Then
                tsub.Text = dr(0).ToString
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        sid.Text = GridView1.SelectedRow.Cells(1).Text
        tbqa1.Text = GridView1.SelectedRow.Cells(4).Text
        tbqa2.Text = GridView1.SelectedRow.Cells(5).Text
        tbqa3.Text = GridView1.SelectedRow.Cells(6).Text
        tbqa4.Text = GridView1.SelectedRow.Cells(7).Text
        tbqa5.Text = GridView1.SelectedRow.Cells(8).Text
        tbqa6.Text = GridView1.SelectedRow.Cells(9).Text
        tbqa7.Text = GridView1.SelectedRow.Cells(10).Text
        tbqa8.Text = GridView1.SelectedRow.Cells(11).Text
        tbqa9.Text = GridView1.SelectedRow.Cells(12).Text
        tbqa10.Text = GridView1.SelectedRow.Cells(13).Text
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim a As Integer
        a = Val(no1.Text) + Val(no2.Text) + Val(no3.Text) + Val(no4.Text) + Val(no5.Text) + Val(no6.Text) + Val(no7.Text) + Val(no8.Text) + Val(no9.Text) + Val(no10.Text)
        cal.Text = Val(a)

    End Sub

    Protected Sub ImageButton3_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton3.Click
        con.Open()
        cmd2 = New SqlCommand("insert into marks(stid,sub,marks) values(@stid,@sub,@marks)", con)
        cmd2.Parameters.AddWithValue("@stid", sid.Text.Trim())
        cmd2.Parameters.AddWithValue("@sub", tsub.Text.Trim())
        cmd2.Parameters.AddWithValue("@marks", cal.Text.Trim())
        cmd2.ExecuteReader()
        con.Close()
    End Sub
End Class
