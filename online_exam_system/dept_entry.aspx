<%@ Page Title="" Language="VB" MasterPageFile="~/admin_master_page.master" AutoEventWireup="false" CodeFile="dept_entry.aspx.vb" Inherits="dept_entry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 49%;
            margin-left: 408px;
        height: 310px;
    }
    .style8
    {
        height: 23px;
    }
    .style10
    {
        height: 23px;
        width: 209px;
    }
    .style11
    {
    }
    .style12
    {
            width: 209px;
        }
        .style13
        {
            height: 23px;
            width: 326px;
        }
        .style14
        {
            width: 326px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 439px; background-image: url('photos/bk.jpg');">
    <br />
        <table class="style7">
            <tr>
                <td class="style8" colspan="3">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                            Font-Underline="True" ForeColor="Blue" Text="Department Entry"></asp:Label>
                        </td>
            </tr>
            <tr>
                <td class="style12">
                    <asp:Label ID="Label10" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Text="Department ID:" Font-Bold="True"></asp:Label>
                </td>
                <td align="center" class="style14">
                    <asp:TextBox ID="tbdeptid" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="314px" ReadOnly="True"></asp:TextBox>
                </td>
                <td align="center">
                    <asp:TextBox ID="tbdeptidl" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="64px" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td align="center" class="style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="tbdeptid" ErrorMessage="*Must be fill" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style12">
                    <asp:Label ID="Label11" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Text="Department Name:" Font-Bold="True"></asp:Label>
                </td>
                <td align="center" class="style14">
                    <asp:TextBox ID="tbdeptname" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="314px"></asp:TextBox>
                </td>
                <td align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td align="center" class="style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="tbdeptname" ErrorMessage="*Must be fill" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style12">
                    <asp:Label ID="Label12" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Text="Location(Building Name):" Font-Bold="True"></asp:Label>
                </td>
                <td align="center" class="style14">
                    <asp:TextBox ID="tbdeptloca" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="314px"></asp:TextBox>
                </td>
                <td align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    </td>
                <td align="center" class="style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="tbdeptloca" ErrorMessage="*Must be fill" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td align="center" class="style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style12">
                    <asp:Label ID="Label13" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Text="About:" Font-Bold="True"></asp:Label>
                </td>
                <td align="center" class="style14">
                    <asp:TextBox ID="tbdeptabout" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="314px"></asp:TextBox>
                </td>
                <td align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td align="center" class="style14">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11" colspan="3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="39px" 
                        ImageUrl="~/photos/upload.png" Width="161px" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

