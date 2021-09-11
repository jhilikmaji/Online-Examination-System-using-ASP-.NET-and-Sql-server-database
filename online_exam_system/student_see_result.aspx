<%@ Page Title="" Language="VB" MasterPageFile="~/student_master_page.master" AutoEventWireup="false" CodeFile="student_see_result.aspx.vb" Inherits="student_see_result" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 52%;
            margin-left: 333px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 470px; background-image: url('photos/bk.jpg');">
    <br/>
    <br/>
        <table class="style7">
            <tr>
                <td align="center">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                        Font-Underline="True" ForeColor="Blue" Text="Result"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="4" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="stid" HeaderText="stid" SortExpression="stid" 
                                Visible="False" />
                            <asp:BoundField DataField="sub" HeaderText="Subject" SortExpression="sub" />
                            <asp:BoundField DataField="marks" HeaderText="Marks" SortExpression="marks" />
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
                        SelectCommand="SELECT * FROM [marks] WHERE ([stid] = @stid)">
                        <SelectParameters>
                            <asp:SessionParameter Name="stid" SessionField="sid" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <br/>
        <br/>
    </div>
</asp:Content>

