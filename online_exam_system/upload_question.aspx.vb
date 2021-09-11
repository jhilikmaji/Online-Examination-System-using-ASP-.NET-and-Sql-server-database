Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO
Partial Class upload_question
    Inherits System.Web.UI.Page
    Dim fileName As String = String.Empty
    Dim filePath As String = String.Empty
    Dim cmd1, cmd2 As New SqlCommand
    Dim dr1, dr2 As SqlDataReader
    Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\alldatabase.mdf;Integrated Security=True;User Instance=True")
   
    
    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click

        'insert value.................................
        con.Open()

        If FileUpload1.HasFile Then
            fileName = FileUpload1.FileName
            filePath = Server.MapPath("~/questionsimages/" & Convert.ToString(fileName))
            FileUpload1.SaveAs(filePath)
            fileName = "~/questionsimages/" & fileName
        End If
        cmd2 = New SqlCommand("insert into question(qclass,qsub,qpic) values(@qclass,@qsub,@qpic)", con)
        cmd2.Parameters.AddWithValue("@qclass", DropDownList1.SelectedValue.Trim())
        cmd2.Parameters.AddWithValue("@qsub", tbqsub.Text.Trim())
        cmd2.Parameters.AddWithValue("@qpic", fileName)
        cmd2.ExecuteReader()
        tbqsub.Text = " "
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
