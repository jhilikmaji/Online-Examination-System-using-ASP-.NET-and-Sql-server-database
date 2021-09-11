Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class allot_paper_for_teachers
    Inherits System.Web.UI.Page
    Dim cmd1 As New SqlCommand
    Dim dr1 As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\alldatabase.mdf;Integrated Security=True;User Instance=True")
    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        'insert value.................................
        con.Open()
        cmd1 = New SqlCommand("insert into allotment(tid,sub) values(@tid,@sub)", con)
        cmd1.Parameters.AddWithValue("@tid", DropDownList1.SelectedValue.Trim())
        cmd1.Parameters.AddWithValue("@sub", DropDownList2.SelectedValue.Trim())
        cmd1.ExecuteReader()
       
        con.Close()
    End Sub
End Class
