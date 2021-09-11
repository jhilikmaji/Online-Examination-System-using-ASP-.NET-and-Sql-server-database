<%@ Page Title="" Language="VB" MasterPageFile="~/teacher_master_page.master" AutoEventWireup="false" CodeFile="teacher_profile_details.aspx.vb" Inherits="teacher_profile_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 64%;
            height: 354px;
            margin-left: 245px;
        }
    .style8
    {
    }
    .style10
    {
    }
    .style12
    {
        height: 23px;
    }
    .style13
    {
        width: 489px;
        height: 23px;
    }
    .style14
    {
        width: 489px;
    }
    .style15
    {
            width: 234px;
        }
    .style16
    {
        height: 23px;
        width: 234px;
    }
        .style17
        {
            width: 234px;
            height: 25px;
        }
        .style18
        {
            width: 489px;
            height: 25px;
        }
        .style19
        {
            width: 727px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: auto; background-image: url('photos/bk.jpg');">
    <br />
    <br />
        <table class="style7" bgcolor="#AFD8D8">
            <tr>
                <td align="center" colspan="3">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                        Font-Underline="True" ForeColor="Blue" Text="Profile Details"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3" bgcolor="#99FF99" 
                    
                    
                    style="border-left-style: solid; border-left-width: 5px; border-left-color: #0000FF; border-bottom-style: solid; border-bottom-width: 1px; border-bottom-color: #0000FF">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="#CC0099" 
                        Text="Basic Informations-"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style15">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="ID:"></asp:Label>
                </td>
                <td class="style14">
                    <asp:Label ID="lbid" runat="server" ForeColor="Blue"></asp:Label>
                &nbsp;
                    </td>
                <td align="center">
                    <asp:Label ID="Label16" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="Image:"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style15">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="Name:"></asp:Label>
                </td>
                <td class="style14">
                    <asp:Label ID="lbname" runat="server" ForeColor="Blue"></asp:Label>
                </td>
                <td align="center" rowspan="5" valign="middle">
                    <asp:Image ID="Image4" runat="server" Height="120px" style="margin-left: 0px" 
                        Width="100px" />
                </td>
            </tr>
            <tr>
                <td class="style15">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="Address:"></asp:Label>
                </td>
                <td class="style14">
                    <asp:Label ID="lbaddress" runat="server" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style16">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="Date Of Birth:"></asp:Label>
                </td>
                <td class="style13">
                    <asp:Label ID="lbdob" runat="server" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style17">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="Mobile No:"></asp:Label>
                </td>
                <td class="style18">
                    <asp:Label ID="lbmob" runat="server" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style15">
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="Email ID:"></asp:Label>
                </td>
                <td class="style14">
                    <asp:Label ID="lbemail" runat="server" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            </table>
        <br />
    <br />
    </div>
</asp:Content>

