<%@ Page Title="" Language="VB" MasterPageFile="~/admin_master_page.master" AutoEventWireup="false" CodeFile="update_teacher.aspx.vb" Inherits="update_teacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style7
        {
            width: 100%;
            height: 59px;
        }
        .style9
        {
            width: 28%;
            margin-left: 488px;
        }
        .style10
        {
            width: 108px;
        }
        .style12
        {
            width: 100%;
            height: 40px;
        }
        .style13
        {
            width: 100%;
            margin-left: 0px;
        }
        .style15
        {
        }
        .style47
        {
            width: 100%;
            margin-left: 0px;
        }
        .style49
        {
        }
        .style56
        {
            width: 19%;
            margin-left: 525px;
        }
        .style63
        {
            width: 152px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: auto; background-image: url('photos/bk.jpg');">
    <br/>
    <br/>
        <asp:Panel ID="Panel4" runat="server" Height="515px" style="margin-left: 0px; margin-right: 1px;" 
            Width="1336px" BackImageUrl="~/photos/uplodupdatebk.png" 
            BorderColor="Blue" BorderWidth="2px">
            <table class="style7" 
                style="border-bottom-style: ridge; border-bottom-width: 1px; border-bottom-color: #0000FF">
                <tr>
                    <td align="center">
                        <asp:Image ID="Image4" runat="server" Height="60px" 
                            ImageUrl="~/photos/teacherupdateicon.png" Width="60px" />
                    </td>
                </tr>
            </table>
            <table class="style9">
                <tr>
                    <td class="style10">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
                            ForeColor="Blue" Text="Teacher ID:"></asp:Label>
                    </td>
                    <td class="style11" rowspan="2">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="34px" Width="255px" 
                            AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="tid" 
                            DataValueField="tid">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [tid] FROM [teacher] ORDER BY [tidl]">
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="style10">
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
                    <td class="style15" align="center">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                            CellPadding="4" DataKeyNames="tid" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:BoundField DataField="tid" HeaderText="tid" SortExpression="tid" 
                                    ReadOnly="True" Visible="False" />
                                <asp:BoundField DataField="tname" HeaderText="Name" 
                                    SortExpression="tname" />
                                <asp:BoundField DataField="taddress" HeaderText="Address" 
                                    SortExpression="taddress" >
                                <ControlStyle Width="100px" />
                                <ItemStyle Width="100px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="tdob" HeaderText="Date Of Birth" 
                                    SortExpression="tdob" />
                                <asp:BoundField DataField="tmob" HeaderText="Mobile No" SortExpression="tmob" />
                                <asp:BoundField DataField="temail" HeaderText="Email ID" 
                                    SortExpression="temail" />
                                <asp:BoundField DataField="tpass" HeaderText="Password" 
                                    SortExpression="tpass" />
                                <asp:ImageField DataImageUrlField="tphoto" HeaderText="Photo">
                                    <ControlStyle Width="100px" />
                                    <ItemStyle Height="150px" Width="100px" />
                                </asp:ImageField>
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
                            InsertCommand="INSERT INTO [teacher] ([tid], [tname], [taddress], [tdob], [tmob], [temail], [tpass], [tphoto]) VALUES (@tid, @tname, @taddress, @tdob, @tmob, @temail, @tpass, @tphoto)" 
                            SelectCommand="SELECT [tid], [tname], [taddress], [tdob], [tmob], [temail], [tpass], [tphoto] FROM [teacher] WHERE ([tid] = @tid)" 
                            
                            UpdateCommand="UPDATE [teacher] SET [tname] = @tname, [taddress] = @taddress, [tdob] = @tdob, [tmob] = @tmob, [temail] = @temail, [tpass] = @tpass, [tphoto] = @tphoto WHERE [tid] = @tid">
                            <DeleteParameters>
                                <asp:Parameter Name="tid" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="tid" Type="String" />
                                <asp:Parameter Name="tname" Type="String" />
                                <asp:Parameter Name="taddress" Type="String" />
                                <asp:Parameter Name="tdob" Type="String" />
                                <asp:Parameter Name="tmob" Type="String" />
                                <asp:Parameter Name="temail" Type="String" />
                                <asp:Parameter Name="tpass" Type="String" />
                                <asp:Parameter Name="tphoto" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="tid" 
                                    PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="tname" Type="String" />
                                <asp:Parameter Name="taddress" Type="String" />
                                <asp:Parameter Name="tdob" Type="String" />
                                <asp:Parameter Name="tmob" Type="String" />
                                <asp:Parameter Name="temail" Type="String" />
                                <asp:Parameter Name="tpass" Type="String" />
                                <asp:Parameter Name="tphoto" Type="String" />
                                <asp:Parameter Name="tid" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:Label ID="Label33" runat="server" Font-Bold="True" ForeColor="#CC0000" 
                            Text="****Your Date Of Birth &amp; Password Must Be Same****"></asp:Label>
                    </td>
                </tr>
            </table>
                
            </table>
            <table class="style47">
                <tr>
                    <td align="center" class="style63">
                        &nbsp;</td>
                    <td align="center" class="style49">
                        &nbsp;</td>
                </tr>
            </table>
            <br>
            <br>
            <table class="style56">
                <tr>
                    <td align="center">
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="46px" 
                            ImageUrl="~/photos/delete.png" Width="177px" />
                    </td>
                </tr>
            </table>
           
         </asp:Panel>
         <br/>
         <br/>
        </div>
</asp:Content>

