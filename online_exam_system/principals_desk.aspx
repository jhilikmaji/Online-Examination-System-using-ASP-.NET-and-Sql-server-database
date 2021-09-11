<%@ Page Title="" Language="VB" MasterPageFile="~/main_master_page.master" AutoEventWireup="false" CodeFile="principals_desk.aspx.vb" Inherits="principals_desk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style13
    {
        width: 74%;
        height: 299px;
    }
    .style14
    {
        width: 357px;
    }
    .style15
    {
        height: 9px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 327px; background-image: url('photos/bk.jpg');">
    <table class="style13">
        <tr>
            <td align="center" class="style14" rowspan="2" valign="middle">
                <asp:Image ID="Image4" runat="server" BorderColor="Blue" BorderStyle="Solid" 
                    BorderWidth="2px" Height="146px" ImageUrl="~/photos/principal.jpg" 
                    Width="144px" />
                <br />
                <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Blue" 
                    Text="Principal: Prof. (Dr.) Nandan Bhattacharyya"></asp:Label>
                <br />
                <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="Blue" 
                    Text="M.Sc., Ph.D, ASBMB, Sigma XI"></asp:Label>
            </td>
            <td align="center" class="style15">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    Font-Underline="True" ForeColor="Blue" Text="About Principal"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="justify" valign="top">
                <asp:Label ID="Label10" runat="server" Font-Bold="False" Font-Size="XX-Large" 
                    Font-Underline="False" ForeColor="Blue" Text="W"></asp:Label>
                <asp:Label ID="Label11" runat="server" Font-Bold="False" Font-Size="Large" 
                    ForeColor="Blue" Text="elcome to our beautiful college campus!"></asp:Label>
                <br />
                <asp:Label ID="Label12" runat="server" Font-Bold="False" Font-Size="Large" 
                    ForeColor="Blue" 
                    Text="We here aim to impart knowledge and training with utmost sincerity. We keep providing high quality infrastructure for learning. We believe in openness and participation that would help all-round development. Our vision is to emerge as a leader in education in West Bengal and in India. Our strength lies in the beautiful teacher-student relationship and a prevailing atmosphere conducive to learning."></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label13" runat="server" Font-Bold="False" Font-Size="X-Large" 
                    ForeColor="Blue" Text="CONTACT:"></asp:Label>
                <br />
                <asp:Label ID="Label14" runat="server" Font-Bold="False" Font-Size="Large" 
                    ForeColor="Blue" Text="Phone (Office): 03228-252222 "></asp:Label>
                <br />
                <asp:Label ID="Label15" runat="server" Font-Bold="False" Font-Size="Large" 
                    ForeColor="Blue" Text="E-mail: principal.pbc@gmail.com"></asp:Label>
            </td>
        </tr>
    </table>
</div>
</asp:Content>

