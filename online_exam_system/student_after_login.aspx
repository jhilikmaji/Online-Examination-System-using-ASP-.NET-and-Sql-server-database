<%@ Page Title="" Language="VB" MasterPageFile="~/student_master_page.master" AutoEventWireup="false" CodeFile="student_after_login.aspx.vb" Inherits="student_after_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style7
    {
        width: 68%;
        height: 224px;
        margin-left: 211px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 437px; background-image: url('photos/bk.jpg');">
    <br /><br />
    <table class="style7">
        <tr>
            <td align="justify" valign="top">
                <asp:Label ID="Label4" runat="server" Font-Size="35pt" ForeColor="Blue" 
                    Text="H"></asp:Label>
                <asp:Label ID="Label5" runat="server" Font-Size="25pt" ForeColor="Blue" 
                    Text="ey,"></asp:Label>
&nbsp;<asp:Label ID="studentname" runat="server" Font-Bold="True" ForeColor="Blue" 
                    Font-Size="30pt"></asp:Label>
&nbsp;<asp:Label ID="Label6" runat="server" Font-Size="25pt" ForeColor="Blue" 
                    Text="welcome to your profile,Here you give your exam and see your marks."></asp:Label>
                <br />
                <asp:Label ID="Label7" runat="server" Font-Size="25pt" ForeColor="Blue" 
                    Text="Now go ahead, understand and give exam."></asp:Label>
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="25pt" 
                    ForeColor="Blue" Text="Best Of Luck "></asp:Label>
                <asp:Label ID="Label9" runat="server" Font-Size="25pt" ForeColor="Blue" 
                    Text="for your exam."></asp:Label>
                <br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="35pt" 
                    ForeColor="Blue" Text="Thank You "></asp:Label>
            </td>
        </tr>
    </table>
</div>
</asp:Content>

