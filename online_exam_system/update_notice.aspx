<%@ Page Title="" Language="VB" MasterPageFile="~/admin_master_page.master" AutoEventWireup="false" CodeFile="update_notice.aspx.vb" Inherits="update_notice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 44%;
            margin-left: 371px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: auto; background-image: url('photos/bk.jpg');">
    <br/>
    <br/>
        <table class="style7">
            <tr>
                <td align="center">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                        Font-Underline="True" ForeColor="Blue" Text="Update Notice"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="nid" 
                        DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:BoundField DataField="nid" HeaderText="Notice ID" ReadOnly="True" 
                                SortExpression="nid" />
                            <asp:BoundField DataField="nidl" HeaderText="Notice ID Lenght" 
                                SortExpression="nidl" />
                            <asp:BoundField DataField="nsub" HeaderText="Notice Subject" 
                                SortExpression="nsub" />
                            <asp:BoundField DataField="nbody" HeaderText="Notice Body" 
                                SortExpression="nbody">
                            <ControlStyle Width="200px" />
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
                        DeleteCommand="DELETE FROM [notice] WHERE [nid] = @nid" 
                        InsertCommand="INSERT INTO [notice] ([nid], [nidl], [nsub], [nbody]) VALUES (@nid, @nidl, @nsub, @nbody)" 
                        SelectCommand="SELECT * FROM [notice] WHERE ([nid] &lt;&gt; @nid)" 
                        UpdateCommand="UPDATE [notice] SET [nidl] = @nidl, [nsub] = @nsub, [nbody] = @nbody WHERE [nid] = @nid">
                        <DeleteParameters>
                            <asp:Parameter Name="nid" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="nid" Type="String" />
                            <asp:Parameter Name="nidl" Type="String" />
                            <asp:Parameter Name="nsub" Type="String" />
                            <asp:Parameter Name="nbody" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:Parameter DefaultValue="0" Name="nid" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="nidl" Type="String" />
                            <asp:Parameter Name="nsub" Type="String" />
                            <asp:Parameter Name="nbody" Type="String" />
                            <asp:Parameter Name="nid" Type="String" />
                        </UpdateParameters>
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

