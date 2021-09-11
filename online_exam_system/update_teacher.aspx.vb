Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class update_teacher
    Inherits System.Web.UI.Page
    Dim cmd3 As New SqlCommand
    Dim dr3 As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\alldatabase.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
       
    End Sub

   
    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        con.Open()
        Try
            cmd3 = New SqlCommand("delete from teacher where tid='" + DropDownList1.SelectedValue + "'", con)
            dr3 = cmd3.ExecuteReader

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        con.Close()
    End Sub
End Class
