<%@ Page Title="" Language="VB" MasterPageFile="~/admin_master_page.master" AutoEventWireup="false" CodeFile="upload_teacher.aspx.vb" Inherits="upload_teacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 100%;
            height: 59px;
        }
        .style9
        {
            width: 48%;
            margin-left: 328px;
        }
        .style11
        {}
        .style12
        {
            width: 100%;
            height: 40px;
        }
        .style13
        {
            width: 37%;
            margin-left: 329px;
        }
        .style15
        {
            width: 119px;
        }
        .style56
        {
            width: 40%;
            margin-left: 305px;
        }
        .style60
        {
            width: 49%;
            margin-left: 249px;
        }
        .style61
        {
            width: 240px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: auto; background-image: url('photos/bk.jpg');">
         <br />
             <br />
        <asp:Panel ID="Panel4" runat="server" Height="661px" style="margin-left: 155px" 
            Width="1030px" BackImageUrl="~/photos/uplodupdatebk.png" 
            BorderColor="Blue" BorderWidth="2px">
            <table class="style7" 
                style="border-bottom-style: ridge; border-bottom-width: 1px; border-bottom-color: #0000FF">
                <tr>
                    <td align="center">
                        <asp:Image ID="Image4" runat="server" Height="60px" 
                            ImageUrl="~/photos/teacheruploadicon.png" Width="60px" />
                    </td>
                </tr>
            </table>
            <table class="style9">
                <tr>
                    <td class="style15">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
                            ForeColor="Blue" Text="Teacher ID:"></asp:Label>
                    </td>
                    <td class="style11">
                        <asp:TextBox ID="tbtid" runat="server" Font-Size="Large" ForeColor="Blue" 
                            Width="250px" ReadOnly="True"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="tbtidl" runat="server" Font-Size="Large" ForeColor="Blue" 
                            Width="60px" Visible="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style15">
                        &nbsp;</td>
                    <td class="style11" align="center" colspan="2">
                        &nbsp;</td>
                </tr>
            </table>
            <table class="style12">
                <tr>
                    <td style="border-left-style: solid; border-left-width: 10px; border-left-color: #FF0066; background-color: #FF6699">
                        &nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="16pt" 
                            ForeColor="#000099" Text="Personal Information:"></asp:Label>
                    </td>
                </tr>
            </table>
            <table class="style13">
                <tr>
                    <td class="style15">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" 
                            ForeColor="Blue" Text="Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbtname" runat="server" Font-Size="Large" ForeColor="Blue" 
                            Width="249px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style15">
                        &nbsp;</td>
                    <td align="center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="tbtname" ErrorMessage="*Must be fill" 
                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style15">
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" 
                            ForeColor="Blue" Text="Address:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbtadd" runat="server" Font-Size="Large" ForeColor="Blue" 
                            Width="249px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style15">
                        &nbsp;</td>
                    <td align="center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="tbtadd" ErrorMessage="*Must be fill" 
                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style15">
                        <asp:Label ID="Label37" runat="server" Font-Bold="True" Font-Size="Large" 
                            ForeColor="Blue" Text="Date Of Birth:"></asp:Label>
                    </td>
                    <td align="center">
                        <asp:TextBox ID="tbtdob" runat="server" Font-Size="Large" ForeColor="Blue" 
                            TextMode="Date" Width="249px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style15">
                        &nbsp;</td>
                    <td align="center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" 
                            ControlToValidate="tbtdob" ErrorMessage="*Must be fill" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style15">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" 
                            ForeColor="Blue" Text="Mobile No.:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbtmob" runat="server" Font-Size="Large" ForeColor="Blue" 
                            Width="249px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style15">
                        &nbsp;</td>
                    <td align="center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="tbtmob" ErrorMessage="*Must be fill" 
                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="tbtmob" ErrorMessage="*Must be 10 digit" ForeColor="#CC0000" 
                            ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style15">
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" 
                            ForeColor="Blue" Text="Email:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbtemail" runat="server" Font-Size="Large" ForeColor="Blue" 
                            Width="249px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style15">
                        &nbsp;</td>
                    <td align="center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="tbtemail" ErrorMessage="*Must be fill" 
                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                            ControlToValidate="tbtemail" ErrorMessage="*Put valid email" 
                            ForeColor="#CC0000" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style15">
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" 
                            ForeColor="Blue" Text="Photo:"></asp:Label>
                    </td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="style15">
                        &nbsp;</td>
                    <td align="center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ControlToValidate="FileUpload1" ErrorMessage="*Must be fill" 
                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
              <asp:Label ID="lbpass" runat="server" Visible="False"></asp:Label>
&nbsp;<br>
            <table class="style60">
                <tr>
                    <td class="style61">
                        <asp:Label ID="Label38" runat="server" Font-Bold="True" Font-Size="Large" 
                            ForeColor="Blue" Text="Admin Email:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbadminemail" runat="server" Font-Size="Large" 
                            ForeColor="Blue" ReadOnly="True" Width="249px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style61">
                        <asp:Label ID="Label39" runat="server" Font-Bold="True" Font-Size="Large" 
                            ForeColor="Blue" Text="Admin Email Password:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbadminpass" runat="server" Font-Size="Large" ForeColor="Blue" 
                            TextMode="Password" Width="249px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br>
            <table class="style56">
                <tr>
                    <td align="center">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="46px" 
                            ImageUrl="~/photos/upload.png" Width="177px" />
                    </td>
                </tr>
            </table>
           
         </asp:Panel>
        <br />
         <br />
             
</div>
</asp:Content>

