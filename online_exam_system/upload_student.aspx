<%@ Page Title="" Language="VB" MasterPageFile="~/admin_master_page.master" AutoEventWireup="false" CodeFile="upload_student.aspx.vb" Inherits="upload_student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 38%;
            height: 465px;
            margin-left: 422px;
        }
        .style8
        {
            height: 72px;
        }
    .style11
    {
    }
    .style12
    {
        width: 114px;
    }
    .style14
    {
    }
    .style15
    {
        width: 126px;
    }
    .style16
    {
        }
    .style17
    {
            width: 30px;
        }
        .style21
        {
            width: 126px;
            height: 37px;
        }
        .style22
        {
            height: 37px;
        }
        .style23
        {
            width: 235px;
        }
        .style24
        {
            height: 37px;
            width: 235px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: auto; background-image: url('photos/bk.jpg');">
    <br><br>
        <table class="style7" 
            style="background-image: url('photos/uplodupdatebk.png'); border: 2px ridge #0000FF">
            <tr>
                <td align="center" class="style8" colspan="4" 
                    style="border-bottom-style: ridge; border-bottom-width: 1px; border-bottom-color: #0000FF">
                    <asp:Image ID="Image4" runat="server" Height="66px" 
                        ImageUrl="~/photos/studentuploadicon.png" Width="66px" />
                </td>
            </tr>
            <tr>
                <td class="style15">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Blue" Text="Student ID:"></asp:Label>
                </td>
                <td class="style23">
                <asp:TextBox ID="tbstid" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="222px" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="style17">
                <asp:TextBox ID="tbstidl" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="29px" Visible="False"></asp:TextBox>
                </td>
                <td class="style12" rowspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style15">
                    &nbsp;</td>
                <td class="style16" colspan="2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="tbstid" ErrorMessage="*Must be fill" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style15">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Blue" Text="Name:"></asp:Label>
                </td>
                <td class="style23">
                <asp:TextBox ID="tbstname" runat="server" Font-Size="Medium" ForeColor="Blue" 
                        Width="222px"></asp:TextBox>
                </td>
                <td class="style11" colspan="2" rowspan="4">
                    <asp:Label ID="lbpass" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style15">
                    &nbsp;</td>
                <td class="style23">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="tbstname" ErrorMessage="*Must be fill" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style15">
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Blue" Text="D.O.B:"></asp:Label>
                </td>
                <td class="style23">
                <asp:TextBox ID="tbstdob" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="222px" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style15">
                    &nbsp;</td>
                <td class="style23">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="tbstdob" ErrorMessage="*Must be fill" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style15">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Blue" Text="Address:"></asp:Label>
                </td>
                <td class="style23">
                <asp:TextBox ID="tbstadd" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="222px" Height="65px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="style11" colspan="2" rowspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style15">
                    &nbsp;</td>
                <td class="style23">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="tbstadd" ErrorMessage="*Must be fill" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style15">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Blue" Text="Class:"></asp:Label>
                </td>
                <td class="style23">
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="deptname" 
                        DataValueField="deptname" Height="31px" Width="222px" Font-Size="Medium" 
                        ForeColor="Blue" AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        
                        SelectCommand="SELECT [deptname] FROM [department] ORDER BY [deptidl]">
                    </asp:SqlDataSource>
                </td>
                <td class="style17">
                    &nbsp;</td>
                <td class="style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style15">
                    &nbsp;</td>
                <td class="style23">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="*Must be fill" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="style17">
                    &nbsp;</td>
                <td class="style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style15">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Blue" Text="Mob. No:"></asp:Label>
                </td>
                <td class="style23">
                <asp:TextBox ID="tbstmob" runat="server" Font-Size="Medium" ForeColor="Blue" 
                        Width="222px"></asp:TextBox>
                </td>
                <td class="style11" colspan="2" rowspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style15">
                    &nbsp;</td>
                <td class="style23">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="tbstmob" ErrorMessage="*Must be fill" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="tbstmob" ErrorMessage="*Must be 10 digit" 
                        ForeColor="#CC0000" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style15">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Blue" Text="Email ID:"></asp:Label>
                </td>
                <td class="style23">
                <asp:TextBox ID="tbstemail" runat="server" Font-Size="Medium" ForeColor="Blue" 
                        Width="222px"></asp:TextBox>
                </td>
                <td class="style17">
                    &nbsp;</td>
                <td class="style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style21">
                    </td>
                <td class="style24">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="tbstemail" ErrorMessage="*Must be fill" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="tbstemail" ErrorMessage="*Put valid email" 
                        ForeColor="#CC0000" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td class="style22" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Blue" Text="Admin Email:"></asp:Label>
                </td>
                <td class="style14">
                <asp:TextBox ID="tbadminemail" runat="server" Font-Size="Medium" ForeColor="Blue" 
                        Width="222px" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="style14" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14" colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Blue" Text="Admin Pass:"></asp:Label>
                </td>
                <td class="style14">
                <asp:TextBox ID="tbadminpass" runat="server" Font-Size="Medium" ForeColor="Blue" 
                        Width="222px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="style14" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style14" colspan="4">
                    <br />
                    <asp:ImageButton ID="btnupload" runat="server" Height="39px" 
                        ImageUrl="~/photos/upload.png" Width="143px" />
                </td>
            </tr>
        </table>
        <br/>
        <br/>
       

    </div>
</asp:Content>

