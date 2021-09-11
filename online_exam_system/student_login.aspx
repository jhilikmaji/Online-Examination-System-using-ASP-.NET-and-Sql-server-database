<%@ Page Title="" Language="VB" MasterPageFile="~/main_master_page.master" AutoEventWireup="false" CodeFile="student_login.aspx.vb" Inherits="student_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style14
        {
            width: 32%;
            height: 328px;
            margin-left: 459px;
        }
        .style15
        {
            height: 62px;
        }
        .style16
        {
        }
        .style17
        {
            width: 130px;
            height: 34px;
        }
        .style18
        {
            height: 34px;
        width: 282px;
    }
        .style19
        {
            width: 130px;
            height: 27px;
        }
        .style20
        {
            width: 130px;
            height: 32px;
        }
        .style21
        {
            height: 32px;
        width: 282px;
    }
        .style22
        {
            width: 130px;
            height: 24px;
        }
        .style23
        {
            height: 24px;
        width: 282px;
    }
        .style25
    {
        height: 27px;
        width: 282px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 403px; background-image: url('photos/bk.jpg');">
    <br /><br />
        <table class="style14" 
            style="background-image: url('photos/tableback1.png'); border: 2px ridge #0000FF">
            <tr>
                <td align="center" class="style15" colspan="2" 
                    style="border-bottom-color: #0000FF; border-bottom-width: 1px; border-bottom-style: solid">
                <asp:Image ID="Image4" runat="server" Height="65px" 
                    ImageUrl="~/photos/studentloginback.png" Width="65px" />
                </td>
            </tr>
            <tr>
                <td class="style17">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        ForeColor="Blue" Text="ID:"></asp:Label>
                </td>
                <td class="style18" align="center">
                    <asp:TextBox ID="tbstid" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="279px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style19">
                    &nbsp;</td>
                <td align="center" class="style25">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="tbstid" ErrorMessage="*Must be fill" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style20">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        ForeColor="Blue" Text="Password:"></asp:Label>
                    <br />
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="#666666" Text="(Your Date Of Birth)"></asp:Label>
                </td>
                <td class="style21" align="center">
                    <asp:TextBox ID="tbstpass" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="279px" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="#666666" Text="YYYY-MM-DD"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style22">
                    &nbsp;</td>
                <td align="center" class="style23">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="tbstpass" ErrorMessage="*Must be fill" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style16" align="center" colspan="2">
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="47px" 
                        ImageUrl="~/photos/login.png" Width="162px" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                <asp:Label ID="Labelshow" runat="server" Font-Bold="True" Font-Size="15pt" 
                    ForeColor="Red" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

