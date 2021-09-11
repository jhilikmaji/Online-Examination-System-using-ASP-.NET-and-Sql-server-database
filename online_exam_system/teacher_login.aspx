<%@ Page Title="" Language="VB" MasterPageFile="~/main_master_page.master" AutoEventWireup="false" CodeFile="teacher_login.aspx.vb" Inherits="teacher_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style14
        {
            width: 32%;
            margin-left: 472px;
        }
        .style15
        {
            height: 61px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 387px; background-image: url('photos/bk.jpg');">
    <br />
    <br />
        <table class="style14" 
            
            style="background-image: url('photos/tableback1.png'); border: 2px ridge #0000FF; height: 308px;">
            <tr>
                <td align="center" colspan="2" 
                    
                    style="border-bottom-style: solid; border-bottom-width: 1px; border-bottom-color: #0000FF" 
                    class="style15">
                    <asp:Image ID="Image4" runat="server" Height="60px" 
                        ImageUrl="~/photos/teacherloginback.png" Width="60px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        ForeColor="Blue" Text="ID:"></asp:Label>
                </td>
                <td align="center">
                    <asp:TextBox ID="tbtid" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="279px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbname" runat="server" Font-Size="X-Small" Visible="False"></asp:Label>
                </td>
                <td align="center">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="tbtid" ErrorMessage="*Must be fill" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        ForeColor="Blue" Text="Password:"></asp:Label>
                    <br />
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="#666666" Text="(Your Date Of Birth)"></asp:Label>
                </td>
                <td align="center">
                    <asp:TextBox ID="tbtpass" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="279px" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Small" 
                        ForeColor="#666666" Text="YYYY-MM-DD"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td align="center">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="tbtpass" ErrorMessage="*Must be fill" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
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

