<%@ Page Title="" Language="VB" MasterPageFile="~/main_master_page.master" AutoEventWireup="false" CodeFile="admin_login.aspx.vb" Inherits="admin_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
    {
        width: 29%;
        height: 344px;
        margin-left: 471px;
    }
    .style15
    {
        height: 70px;
    }
    .style17
    {
        }
        .style20
        {
            width: 128px;
            height: 48px;
        }
        .style21
        {
            height: 48px;
            width: 333px;
        }
        .style22
        {
            height: 60px;
        }
        .style25
        {
            width: 128px;
            height: 11px;
        }
        .style26
        {
            height: 11px;
            width: 333px;
        }
        .style27
        {
            width: 128px;
            height: 31px;
        }
        .style28
        {
            height: 31px;
            width: 333px;
        }
        .style29
        {
            width: 128px;
            height: 23px;
        }
        .style30
        {
            height: 23px;
            width: 333px;
        }
        .style31
        {
            width: 128px;
            height: 18px;
        }
        .style32
        {
            height: 18px;
            width: 333px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 368px; background-image: url('photos/bk.jpg');">
    <br>
    <table class="style13" 
       
            
            style="border: 2px ridge #0000FF; background-image: url('photos/tableback1.png'); ">
        <tr>
            <td align="center" class="style15" colspan="2" 
                style="border-bottom-color: #0000FF; border-bottom-width: 1px; border-bottom-style: ridge">
                <asp:Image ID="Image4" runat="server" Height="65px" 
                    ImageUrl="~/photos/adminloginback.png" Width="65px" />
            </td>
        </tr>
        <tr>
            <td class="style29">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="Blue" Text="ID:"></asp:Label>
            </td>
            <td class="style30">
                <asp:TextBox ID="tbid" runat="server" Font-Size="Large" ForeColor="Blue" 
                    ToolTip="Enter a valid ID" Width="278px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style25">
                &nbsp;</td>
            <td align="center" class="style26">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="tbid" ErrorMessage="*Must be fill" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style20">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="Blue" Text="Password:"></asp:Label>
            </td>
            <td class="style21">
                <asp:TextBox ID="tbpass" runat="server" Font-Size="Large" ForeColor="Blue" 
                    TextMode="Password" ToolTip="Enter a valid Password" Width="278px">1</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style31">
                </td>
            <td align="center" class="style32">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="tbpass" ErrorMessage="*Must be fill" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style22" colspan="2" align="center">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="46px" 
                    ImageUrl="~/photos/login.png" Width="171px" />
            </td>
        </tr>
        <tr>
            <td class="style27">
                </td>
            <td align="right" class="style28">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="Agency FB" 
                    Font-Size="15pt" ForeColor="Blue" NavigateUrl="~/admin_forget_password.aspx">Forgot Password?</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style17" align="center" colspan="2">
                <asp:Label ID="Labelshow" runat="server" Font-Bold="True" Font-Size="15pt" 
                    ForeColor="Red" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
</div>
</asp:Content>

