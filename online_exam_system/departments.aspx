<%@ Page Title="" Language="VB" MasterPageFile="~/main_master_page.master" AutoEventWireup="false" CodeFile="departments.aspx.vb" Inherits="departments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style26
        {
            width: 50%;
            height: 13px;
            margin-left: 315px;
        }
        .style27
        {
            height: 39px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: auto; background-image: url('photos/bk.jpg');">
     <br />
        <br />
    <table class="style26">
        <tr>
            <td align="center" class="style27">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    Font-Underline="True" ForeColor="Blue" Text="Department"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="deptname" HeaderText="Name" 
                            SortExpression="deptname" />
                        <asp:BoundField DataField="deptloc" HeaderText="Location" 
                            SortExpression="deptloc" />
                        <asp:BoundField DataField="deptabout" HeaderText="About" 
                            SortExpression="deptabout">
                        <ControlStyle Width="200px" />
                        <ItemStyle Width="200px" />
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
                    SelectCommand="SELECT [deptname], [deptloc], [deptabout] FROM [department] WHERE ([deptid] &lt;&gt; @deptid) ORDER BY [deptname]">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="0" Name="deptid" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        </table>
        <br />
        <br />
</div>
</asp:Content>

