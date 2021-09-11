<%@ Page Title="" Language="VB" MasterPageFile="~/main_master_page.master" AutoEventWireup="false" CodeFile="admin_forget_password.aspx.vb" Inherits="admin_forget_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 35%;
            height: 419px;
            margin-left: 437px;
        }
        .style14
        {
            height: 59px;
        }
        .style15
        {
        }
        .style17
        {
            height: 38px;
        }
        .style19
        {
            width: 320px;
            height: 33px;
        }
        .style20
        {
            height: 33px;
            width: 1294px;
        }
        .style21
        {
            height: 26px;
        }
        .style24
        {
            height: 37px;
            width: 1294px;
        }
        .style25
        {
            width: 320px;
            height: 37px;
        }
        .style27
        {
            width: 320px;
            height: 30px;
        }
        .style28
        {
            height: 30px;
        }
        .style30
        {
            width: 320px;
            height: 35px;
        }
        .style31
        {
            height: 35px;
            width: 1294px;
        }
        .style32
        {
            width: 320px;
            height: 38px;
        }
        .style33
        {
            height: 38px;
            width: 1294px;
        }
        .style34
        {
            width: 67%;
            height: 103px;
        }
        .style35
        {
            width: 155px;
        }
        .style36
        {
            width: 125px;
        }
        .style37
        {
            width: 286px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 606px; background-image: url('photos/bk.jpg');">
    <br>
        <table class="style13" 
            style="background-image: url('photos/tablebackgreen.png'); border: 2px ridge #0000FF">
            <tr>
                <td align="center" class="style14" colspan="2" 
                    style="border-bottom-style: ridge; border-bottom-width: 1px; border-bottom-color: #0000FF">
                    <asp:Image ID="Image4" runat="server" Height="49px" 
                        ImageUrl="~/photos/forgetpassicon.png" Width="51px" />
                </td>
            </tr>
            <tr>
                <td class="style20">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Blue" Text="ID:"></asp:Label>
                </td>
                <td class="style19">
                <asp:TextBox ID="tbid" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="278px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" class="style17" colspan="2">
                    <asp:ImageButton ID="btnsendotp" runat="server" Height="35px" 
                        ImageUrl="~/photos/sendotp.png" Width="111px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="btnresendotp" runat="server" Height="35px" 
                        ImageUrl="~/photos/resendotp.png" Width="111px" />
                </td>
            </tr>
            <tr>
                <td align="center" class="style21" colspan="2">
                <asp:Label ID="Labelmsg" runat="server" Font-Bold="False" Font-Size="Large" 
                    ForeColor="Blue" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style24">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Blue" Text="Put OTP:"></asp:Label>
                </td>
                <td class="style25">
                <asp:TextBox ID="tbotp" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="278px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style28">
                <asp:Label ID="Labelemail" runat="server" Font-Bold="False" Font-Size="X-Small" 
                    ForeColor="Blue" Visible="False"></asp:Label>
                </td>
                <td class="style27">
                <asp:Label ID="Labelotp" runat="server" Font-Bold="False" Font-Size="Large" 
                    ForeColor="#CC0000" Visible="False">OTP is not matched</asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style28" colspan="2">
                    <asp:ImageButton ID="btnverify" runat="server" Height="35px" 
                        ImageUrl="~/photos/verify.png" Width="111px" />
                </td>
            </tr>
            <tr>
                <td align="center" class="style28" colspan="2">
                <asp:Label ID="Labelverify" runat="server" Font-Bold="False" Font-Size="Large" 
                    ForeColor="Blue" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style31">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Blue" Text="New Password:"></asp:Label>
                </td>
                <td class="style30">
                <asp:TextBox ID="tbnewpass" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="278px" TextMode="Password" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style33">
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Blue" Text="Confirm Password:"></asp:Label>
                </td>
                <td class="style32">
                <asp:TextBox ID="tbconfirmpass" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="278px" TextMode="Password" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style21">
                    </td>
                <td align="center" class="style21">
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="tbnewpass" ControlToValidate="tbconfirmpass" 
                    ErrorMessage="New and Confirm Password does not match." ForeColor="#CC0000"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td align="center" class="style15" colspan="2">
                    <asp:ImageButton ID="btnsave" runat="server" Height="35px" 
                        ImageUrl="~/photos/save.png" Width="111px" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td align="center" class="style15" colspan="2">
                <asp:Label ID="Labelsuccess" runat="server" Font-Bold="False" Font-Size="Large" 
                    ForeColor="#CC0000" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
    <br>

        <table class="style34">
            <tr>
                <td class="style35">
                    <asp:Label ID="Label12" runat="server" Text="sender id" Visible="False"></asp:Label>
                </td>
                <td class="style37">
                    <asp:TextBox ID="tbsenderemail" runat="server" Visible="False" Width="276px">Enter your backup sending email here</asp:TextBox>
                </td>
                <td class="style36">
                    <asp:Label ID="Label13" runat="server" Text="sender pass" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbsenderpass" runat="server" Visible="False" 
                        Width="276px">Enter your sending id&#39;s password here and make TEXTMODE as &quot;password&quot;</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style35">
                    <asp:Label ID="Label14" runat="server" Text="sender sub" Visible="False"></asp:Label>
                </td>
                <td class="style37">
                    <asp:TextBox ID="tbsendersub" runat="server" Visible="False" Width="276px">Please cheak your One Time Password .</asp:TextBox>
                </td>
                <td class="style36">
                    <asp:Label ID="Label15" runat="server" Text="sender body" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbsenderbody" runat="server" Visible="False" Width="276px"></asp:TextBox>
                </td>
            </tr>
        </table>

    </div>
</asp:Content>

