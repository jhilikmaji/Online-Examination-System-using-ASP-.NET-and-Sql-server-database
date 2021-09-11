Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class update_question
    Inherits System.Web.UI.Page
    Dim cmd1, cmd2 As New SqlCommand
    Dim dr1, dr2 As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\alldatabase.mdf;Integrated Security=True;User Instance=True")
    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        con.Open()
        Try
            cmd2 = New SqlCommand("delete from question where qsub='" + DropDownList2.SelectedValue + "'", con)
            dr2 = cmd2.ExecuteReader

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
        DropDownList2.Text = " "
    End Sub

    
End Class
