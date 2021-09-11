<%@ Page Title="" Language="VB" MasterPageFile="~/admin_master_page.master" AutoEventWireup="false" CodeFile="admin_change_password.aspx.vb" Inherits="admin_change_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
    {
        width: 39%;
        height: 336px;
    }
    .style8
    {
        height: 56px;
    }
    .style9
    {
        }
        .style10
        {
            width: 222px;
            height: 38px;
        }
        .style11
        {
            height: 38px;
            width: 278px;
        }
        .style12
        {
            width: 222px;
            height: 34px;
        }
        .style13
        {
            height: 34px;
            width: 278px;
        }
        .style14
        {
            width: 222px;
            height: 25px;
        }
        .style15
        {
            height: 25px;
            width: 278px;
        }
        .style16
        {
            width: 222px;
            height: 42px;
        }
        .style17
        {
            height: 42px;
            width: 278px;
        }
        .style18
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 408px; background-image: url('photos/bk.jpg');">
    <br><br>
    <table class="style7" 
        
            
            style="border: 2px ridge #0000FF; background-image: url('photos/tableback.png'); margin-left: 415px;">
        <tr>
            <td align="center" class="style8" colspan="2" 
                style="border-bottom-color: #0000FF; border-bottom-width: 1px; border-bottom-style: ridge">
                <asp:Image ID="Image4" runat="server" Height="56px" 
                    ImageUrl="~/photos/changepassicon.png" Width="57px" />
            </td>
        </tr>
        <tr>
            <td class="style10">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="Blue" Text="ID:"></asp:Label>
            </td>
            <td class="style11">
                <asp:TextBox ID="tbid" runat="server" Font-Size="Large" ForeColor="Blue" 
                    Width="278px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style12">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="Blue" Text="Old Password:"></asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="tboldpass" runat="server" Font-Size="Large" ForeColor="Blue" 
                    Width="278px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style14">
                </td>
            <td align="center" class="style15">
                <asp:Label ID="Labelshow" runat="server" ForeColor="#CC0000" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style12">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="Blue" Text="New Password:"></asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="tbnewpass" runat="server" Font-Size="Large" ForeColor="Blue" 
                    Width="278px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    ForeColor="Blue" Text="Confirm Password:"></asp:Label>
            </td>
            <td class="style17">
                <asp:TextBox ID="tbconfirmpass" runat="server" Font-Size="Large" 
                    ForeColor="Blue" Width="278px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style18" align="center">
            </td>
            <td class="style18" align="center">
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="tbnewpass" ControlToValidate="tbconfirmpass" 
                    ErrorMessage="New and Confirm Password does not match." ForeColor="#CC0000"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style9" align="center" colspan="2">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="46px" 
                    ImageUrl="~/photos/save.png" Width="135px" />
            </td>
        </tr>
    </table>
</div>
</asp:Content>

