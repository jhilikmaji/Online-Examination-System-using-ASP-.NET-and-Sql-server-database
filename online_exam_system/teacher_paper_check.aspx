<%@ Page Title="" Language="VB" MasterPageFile="~/teacher_master_page.master" AutoEventWireup="false" CodeFile="teacher_paper_check.aspx.vb" Inherits="Teacher_Paper_Check" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 87%;
            margin-left: 79px;
        }
        .style8
        {
        }
        .style9
        {
    }
    .style12
    {
        width: 939px;
        height: 32px;
    }
    .style14
    {
        height: 42px;
    }
        .style15
        {
            width: 939px;
            height: 26px;
        }
        .style16
        {
            height: 26px;
        }
        .style17
        {
            width: 939px;
            height: 24px;
        }
        .style18
        {
            height: 24px;
        }
        .style19
        {
            width: 939px;
            height: 27px;
        }
        .style20
        {
            height: 27px;
        }
        .style21
        {
            height: 32px;
        }
        .style22
        {
            width: 939px;
        }
        .style23
        {
            width: 939px;
            height: 62px;
        }
        .style24
        {
            height: 62px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: auto; background-image: url('photos/bk.jpg');">
    <br/>
        <table class="style7">
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                        Font-Underline="True" ForeColor="Blue" Text="Check Papers"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" class="style22">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="tid" runat="server" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="tsub" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style9" colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="4" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="sid" HeaderText="ID" SortExpression="sid" />
                            <asp:BoundField DataField="sdept" HeaderText="Dept" SortExpression="sdept" />
                            <asp:BoundField DataField="ssub" HeaderText="Sub" SortExpression="ssub" />
                            <asp:BoundField DataField="qa1" HeaderText="qa1" SortExpression="qa1">
                            <ControlStyle Width="50px" />
                            <ItemStyle Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="qa2" HeaderText="qa2" SortExpression="qa2">
                            <ControlStyle Width="50px" />
                            <ItemStyle Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="qa3" HeaderText="qa3" SortExpression="qa3">
                            <ControlStyle Width="50px" />
                            <ItemStyle Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="qa4" HeaderText="qa4" SortExpression="qa4">
                            <ControlStyle Width="50px" />
                            <ItemStyle Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="qa5" HeaderText="qa5" SortExpression="qa5">
                            <ControlStyle Width="50px" />
                            <ItemStyle Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="qa6" HeaderText="qa6" SortExpression="qa6">
                            <ControlStyle Width="50px" />
                            <ItemStyle Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="qa7" HeaderText="qa7" SortExpression="qa7">
                            <ControlStyle Width="50px" />
                            <ItemStyle Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="qa8" HeaderText="qa8" SortExpression="qa8">
                            <ControlStyle Width="50px" />
                            <ItemStyle Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="qa9" HeaderText="qa9" SortExpression="qa9">
                            <ControlStyle Width="50px" />
                            <ItemStyle Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="qa10" HeaderText="qa10" SortExpression="qa10">
                            <ControlStyle Width="50px" />
                            <ItemStyle Width="50px" />
                            </asp:BoundField>
                        </Columns>
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" ForeColor="#003399" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                        <SortedDescendingHeaderStyle BackColor="#002876" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [studentanswer] WHERE ([ssub] = @ssub)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="tsub" Name="ssub" PropertyName="Text" 
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style22">
                    <asp:Label ID="Label16" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="Student ID:  "></asp:Label>
&nbsp;
                    <asp:Label ID="sid" runat="server" Font-Bold="True" ForeColor="Blue"></asp:Label>
                </td>
                <td class="style8" rowspan="2">
                        <asp:TextBox ID="no1" runat="server" Font-Size="Large" ForeColor="Blue" 
                            Width="60px"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="style22">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Blue" Text="1"></asp:Label>
                        <asp:TextBox ID="tbqa1" runat="server" Font-Size="Large" ForeColor="Blue" 
                            Width="910px" Height="54px" TextMode="MultiLine"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="style15" align="left">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Blue" Text="2"></asp:Label>
                        <asp:TextBox ID="tbqa2" runat="server" Font-Size="Large" ForeColor="Blue" 
                            Width="910px" Height="54px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="style16" align="left">
                        <asp:TextBox ID="no2" runat="server" Font-Size="Large" ForeColor="Blue" 
                            Width="60px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style17" align="left">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Blue" Text="3"></asp:Label>
                        <asp:TextBox ID="tbqa3" runat="server" Font-Size="Large" ForeColor="Blue" 
                            Width="910px" Height="54px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="style18" align="left">
                        <asp:TextBox ID="no3" runat="server" Font-Size="Large" ForeColor="Blue" 
                            Width="60px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style19" align="left">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Blue" Text="4"></asp:Label>
                        <asp:TextBox ID="tbqa4" runat="server" Font-Size="Large" ForeColor="Blue" 
                            Width="910px" Height="54px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="style20" align="left">
                        <asp:TextBox ID="no4" runat="server" Font-Size="Large" ForeColor="Blue" 
                            Width="60px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style12" align="left">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Blue" Text="5"></asp:Label>
                        <asp:TextBox ID="tbqa5" runat="server" Font-Size="Large" ForeColor="Blue" 
                            Width="910px" Height="54px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="style21" align="left">
                        <asp:TextBox ID="no5" runat="server" Font-Size="Large" ForeColor="Blue" 
                            Width="60px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style22" align="left">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Blue" Text="6"></asp:Label>
                        <asp:TextBox ID="tbqa6" runat="server" Font-Size="Large" ForeColor="Blue" 
                            Width="910px" Height="54px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                <td align="left">
                        <asp:TextBox ID="no6" runat="server" Font-Size="Large" ForeColor="Blue" 
                            Width="60px"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="style22" align="left">
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Blue" Text="7"></asp:Label>
                        <asp:TextBox ID="tbqa7" runat="server" Font-Size="Large" ForeColor="Blue" 
                            Width="910px" Height="54px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                <td class="style9" align="left">
                        <asp:TextBox ID="no7" runat="server" Font-Size="Large" ForeColor="Blue" 
                            Width="60px"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="style22" align="left">
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Blue" Text="8"></asp:Label>
                        <asp:TextBox ID="tbqa8" runat="server" Font-Size="Large" ForeColor="Blue" 
                            Width="910px" Height="54px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                <td class="style9" align="left">
                        <asp:TextBox ID="no8" runat="server" Font-Size="Large" ForeColor="Blue" 
                            Width="60px"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="style22" align="left">
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Blue" Text="9"></asp:Label>
                        <asp:TextBox ID="tbqa9" runat="server" Font-Size="Large" ForeColor="Blue" 
                            Width="910px" Height="54px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                <td class="style9" align="left">
                        <asp:TextBox ID="no9" runat="server" Font-Size="Large" ForeColor="Blue" 
                            Width="60px"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="style23" align="left">
                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Blue" Text="10"></asp:Label>
                        <asp:TextBox ID="tbqa10" runat="server" Font-Size="Large" ForeColor="Blue" 
                            Width="910px" Height="54px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                <td align="left" class="style24">
                        <asp:TextBox ID="no10" runat="server" Font-Size="Large" ForeColor="Blue" 
                            Width="60px"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="style22" align="left">
                    &nbsp;</td>
                <td class="style9" align="left">
                    <asp:Button ID="Button1" runat="server" BackColor="#3366FF" Font-Bold="True" 
                        Font-Italic="True" Font-Size="Large" ForeColor="White" Text="Calculate" />
                </td>
            </tr>
            <tr>
                <td class="style22" align="left">
                    &nbsp;</td>
                <td class="style9" align="left">
                        <asp:TextBox ID="cal" runat="server" Font-Size="Large" ForeColor="Blue" 
                            Width="60px"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="style22" align="left">
                    &nbsp;</td>
                <td class="style9" align="left">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14" align="center" colspan="2">
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="49px" 
                        ImageUrl="~/photos/upload.png" Width="157px" />
                </td>
            </tr>
        </table>
        <br/>
    </div>
</asp:Content>

