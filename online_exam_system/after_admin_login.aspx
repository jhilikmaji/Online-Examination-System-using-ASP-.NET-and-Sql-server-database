<%@ Page Title="" Language="VB" MasterPageFile="~/admin_master_page.master" AutoEventWireup="false" CodeFile="after_admin_login.aspx.vb" Inherits="after_admin_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 446px; background-image: url('photos/bk.jpg');">
    <br><br>
        <asp:Panel ID="Panel4" runat="server" Height="347px" style="margin-left: 400px" 
            Width="580px">
            <asp:Label ID="Label4" runat="server" Text="Hey," Font-Size="X-Large" 
                ForeColor="Blue"></asp:Label>
            &nbsp;<asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="30pt" 
                ForeColor="Blue" Text="Admin"></asp:Label>
            &nbsp;<asp:Label ID="Label6" runat="server" Font-Size="X-Large" ForeColor="Blue" 
                Text="welcome to your own profile."></asp:Label>
            <br />
            <asp:Label ID="Label7" runat="server" Font-Size="X-Large" ForeColor="Blue" 
                Text="Here you can coustomize everything . like students info, techers info, set questions etc."></asp:Label>
            <br />
            <asp:Label ID="Label8" runat="server" Font-Size="X-Large" ForeColor="Blue" 
                Text="So, go ahead and do as you like."></asp:Label>
            <br />
            <asp:Label ID="Label9" runat="server" Font-Size="X-Large" ForeColor="Blue" 
                Text="To do that you have to go to menu and there you can  see and understand everything."></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label10" runat="server" Font-Size="30pt" ForeColor="Blue" 
                Text="Thank You!"></asp:Label>
        </asp:Panel>
</div>
</asp:Content>

