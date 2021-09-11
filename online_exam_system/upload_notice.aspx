<%@ Page Title="" Language="VB" MasterPageFile="~/admin_master_page.master" AutoEventWireup="false" CodeFile="upload_notice.aspx.vb" Inherits="upload_notice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 37%;
            margin-left: 425px;
        }
    .style8
    {
    }
    .style9
    {
        width: 149px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 475px; background-image: url('photos/bk.jpg');">
    <br/><br/>
        <table class="style7" 
        style="background-image: url('photos/tableback1.png'); border: 2px ridge #0000FF">
            <tr>
                <td align="center" colspan="2" 
                    style="border-bottom-style: solid; border-bottom-width: 1px; border-bottom-color: #0000FF">
                    <asp:Image ID="Image4" runat="server" Height="60px" 
                        ImageUrl="~/photos/noticeupload.png" Width="60px" />
                </td>
            </tr>
            <tr>
                <td class="style9">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Blue" Text="Notice ID:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbnid" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="292px"></asp:TextBox>
&nbsp;
                    <asp:TextBox ID="tbnidl" runat="server" ForeColor="Blue" Visible="False" 
                        Width="32px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Blue" Text="Notice Subject:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbnsub" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="291px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="tbnsub" ErrorMessage="*Must be fill" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Blue" Text="Notice Body:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbnbody" runat="server" ForeColor="Blue" Height="129px" 
                        TextMode="MultiLine" Width="291px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="tbnbody" ErrorMessage="*Must be fill" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" class="style8" colspan="2">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="46px" 
                        ImageUrl="~/photos/upload.png" Width="155px" />
                </td>
            </tr>
        </table>
        <br/>
        <br/>
    </div>
</asp:Content>

