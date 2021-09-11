<%@ Page Title="" Language="VB" MasterPageFile="~/admin_master_page.master" AutoEventWireup="false" CodeFile="admin_query_replay.aspx.vb" Inherits="admin_query_replay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 25%;
            margin-left: 506px;
        }
        .style8
        {
            width: 127px;
        }
    .style9
    {
        width: 65%;
        margin-left: 242px;
    }
    .style10
    {
        width: 35%;
        margin-left: 434px;
    }
    .style11
    {
    }
    .style12
    {
        width: 145px;
    }
    .style13
    {
        width: 145px;
        height: 31px;
    }
    .style14
    {
        height: 31px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: auto; background-image: url('photos/bk.jpg');">
    <br />
        <table class="style7">
            <tr>
                <td align="center" colspan="2">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                            Font-Underline="True" ForeColor="Blue" Text="Replay of Queries"></asp:Label>
                        </td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:Label ID="Label8" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Text="Select  Date:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="18px" Width="200px" 
                        DataSourceID="SqlDataSource2" DataTextField="querydate" 
                        DataValueField="querydate" AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT DISTINCT [querydate] FROM [query] ORDER BY [querydate] DESC">
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <table class="style9">
            <tr>
                <td>
        <asp:Label ID="Label1" runat="server" Text="Query Details:" Font-Bold="True" 
                        Font-Size="X-Large" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                        BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        GridLines="Vertical" Width="869px" AutoGenerateColumns="False" 
                        AllowPaging="True" DataSourceID="SqlDataSource3">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="querydate" HeaderText="Date" 
                                SortExpression="querydate">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="queryemail" HeaderText="Email ID" 
                                SortExpression="queryemail">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="querysubject" HeaderText="Subject" 
                                SortExpression="querysubject">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle Wrap="True" />
                            </asp:BoundField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [query] WHERE ([querydate] = @querydate)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="querydate" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [admin_login]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <table class="style10">
            <tr>
                <td class="style12">
                    <asp:Label ID="Label9" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Text="Cleint email ID:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbclientid" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Height="27px" Width="316px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td align="center">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="tbclientid" ErrorMessage="*Must be fill" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="tbclientid" ErrorMessage="*Enter valid Email id" 
                        ForeColor="#CC0000" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    <asp:Label ID="Label10" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Text="Admin Email ID:"></asp:Label>
                </td>
                <td align="center">
                    <asp:TextBox ID="tbadminid" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Height="27px" Width="316px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td align="center">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="tbadminid" ErrorMessage="*Must be fill" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="tbadminid" ErrorMessage="*Enter valid Email id" 
                        ForeColor="#CC0000" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    <asp:Label ID="Label11" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Text="Password:"></asp:Label>
                </td>
                <td align="center">
                    <asp:TextBox ID="tbadminpass" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Height="27px" TextMode="Password" Width="316px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td align="center">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="tbadminpass" ErrorMessage="*Must be fill" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    <asp:Label ID="Label12" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Text="Query:"></asp:Label>
                </td>
                <td align="center">
                    <asp:TextBox ID="tbsub" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Height="27px" Width="316px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td align="center">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="tbsub" ErrorMessage="*Must be fill" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style13">
                    <asp:Label ID="Label13" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Text="Reply:"></asp:Label>
                </td>
                <td align="center" class="style14">
                    <asp:TextBox ID="tbbody" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Height="55px" TextMode="MultiLine" Width="316px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td align="center">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="tbbody" ErrorMessage="*Must be fill" 
                        ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" class="style11" colspan="2">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="41px" 
                        ImageUrl="~/photos/send.png" Width="154px" />
                </td>
            </tr>
        </table>
        <br/>
        <br/>
    </div>
</asp:Content>

