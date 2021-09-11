<%@ Page Title="" Language="VB" MasterPageFile="~/teacher_master_page.master" AutoEventWireup="false" CodeFile="teacher_profile_edit.aspx.vb" Inherits="teacher_profile_edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style7
    {
        width: 100%;
        margin-left: 0px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 434px; background-image: url('photos/bk.jpg');">
    <br />
    <br />

        <table class="style7">
            <tr>
                <td align="center">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                        Font-Underline="True" ForeColor="Blue" Text="Edit Basic Informations"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                        BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                        Width="733px" AutoGenerateColumns="False" DataKeyNames="tid" 
                        DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:BoundField DataField="tname" HeaderText="Name" SortExpression="tname" />
                            <asp:BoundField DataField="tid" HeaderText="tid" ReadOnly="True" 
                                SortExpression="tid" Visible="False" />
                            <asp:BoundField DataField="taddress" HeaderText="Address" 
                                SortExpression="taddress">
                            <ControlStyle Width="100px" />
                            <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tdob" HeaderText="Date of Birth" 
                                SortExpression="tdob" />
                            <asp:BoundField DataField="tmob" HeaderText="Mobile No" SortExpression="tmob" />
                            <asp:BoundField DataField="temail" HeaderText="Email" SortExpression="temail" />
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
                        DeleteCommand="DELETE FROM [teacher] WHERE [tid] = @tid" 
                        InsertCommand="INSERT INTO [teacher] ([tname], [tid], [taddress], [tdob], [tmob], [temail]) VALUES (@tname, @tid, @taddress, @tdob, @tmob, @temail)" 
                        SelectCommand="SELECT [tname], [tid], [taddress], [tdob], [tmob], [temail] FROM [teacher] WHERE ([tid] = @tid)" 
                        UpdateCommand="UPDATE [teacher] SET [tname] = @tname, [taddress] = @taddress, [tdob] = @tdob, [tmob] = @tmob, [temail] = @temail WHERE [tid] = @tid">
                        <DeleteParameters>
                            <asp:Parameter Name="tid" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="tname" Type="String" />
                            <asp:Parameter Name="tid" Type="String" />
                            <asp:Parameter Name="taddress" Type="String" />
                            <asp:Parameter Name="tdob" Type="String" />
                            <asp:Parameter Name="tmob" Type="String" />
                            <asp:Parameter Name="temail" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:SessionParameter Name="tid" SessionField="teacherid" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="tname" Type="String" />
                            <asp:Parameter Name="taddress" Type="String" />
                            <asp:Parameter Name="tdob" Type="String" />
                            <asp:Parameter Name="tmob" Type="String" />
                            <asp:Parameter Name="temail" Type="String" />
                            <asp:Parameter Name="tid" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>

    </div>
</asp:Content>

