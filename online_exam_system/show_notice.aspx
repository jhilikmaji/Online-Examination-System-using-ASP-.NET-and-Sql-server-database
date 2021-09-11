<%@ Page Title="" Language="VB" MasterPageFile="~/main_master_page.master" AutoEventWireup="false" CodeFile="show_notice.aspx.vb" Inherits="show_notice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style14
        {
            width: 43%;
            margin-left: 374px;
        }
        .style15
        {
            width: 76px;
            height: 21px;
        }
        .style16
        {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: auto; background-image: url('photos/bk.jpg');">
    <br/>
    <br/>
        <table class="style14">
            <tr>
                <td align="center">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                        Font-Underline="True" ForeColor="Blue" Text="Notice"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                        DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="nsub" HeaderText="Notice Subject" 
                                SortExpression="nsub">
                            <HeaderStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="nbody" HeaderText="Notice Body" 
                                SortExpression="nbody">
                            <ControlStyle Width="200px" />
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle Width="200px" Wrap="True" />
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
                        SelectCommand="SELECT [nsub], [nbody] FROM [notice] WHERE ([nid] &lt;&gt; @nid) ORDER BY [nid] DESC">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="0" Name="nid" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <br/>
    <br/>
    <br/>
    <br/>
    </div>
</asp:Content>

