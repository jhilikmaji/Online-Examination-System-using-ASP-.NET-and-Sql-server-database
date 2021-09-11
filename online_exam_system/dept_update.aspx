<%@ Page Title="" Language="VB" MasterPageFile="~/admin_master_page.master" AutoEventWireup="false" CodeFile="dept_update.aspx.vb" Inherits="dept_update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
    {
        width: 59%;
        margin-left: 292px;
    }
    .style8
    {
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: auto; background-image: url('photos/bk.jpg');">
    <br/>
        <table class="style7">
            <tr>
                <td align="center">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                        Font-Underline="True" ForeColor="Blue" Text="Department Update"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style8" align="center">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [department] WHERE [deptid] = @deptid" 
            InsertCommand="INSERT INTO [department] ([deptid], [deptidl], [deptname], [deptloc], [deptabout]) VALUES (@deptid, @deptidl, @deptname, @deptloc, @deptabout)" 
            SelectCommand="SELECT * FROM [department] WHERE ([deptid] &lt;&gt; @deptid)" 
            
                        UpdateCommand="UPDATE [department] SET [deptidl] = @deptidl, [deptname] = @deptname, [deptloc] = @deptloc, [deptabout] = @deptabout WHERE [deptid] = @deptid">
            <DeleteParameters>
                <asp:Parameter Name="deptid" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="deptid" Type="String" />
                <asp:Parameter Name="deptidl" Type="String" />
                <asp:Parameter Name="deptname" Type="String" />
                <asp:Parameter Name="deptloc" Type="String" />
                <asp:Parameter Name="deptabout" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="deptid" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="deptidl" Type="String" />
                <asp:Parameter Name="deptname" Type="String" />
                <asp:Parameter Name="deptloc" Type="String" />
                <asp:Parameter Name="deptabout" Type="String" />
                <asp:Parameter Name="deptid" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="deptid" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="deptid" HeaderText="Department ID" ReadOnly="True" 
                    SortExpression="deptid" />
                <asp:BoundField DataField="deptname" HeaderText="Department Name" 
                    SortExpression="deptname" />
                <asp:BoundField DataField="deptloc" HeaderText="Department Location" 
                    SortExpression="deptloc" />
                <asp:BoundField DataField="deptabout" HeaderText="About" 
                    SortExpression="deptabout" />
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
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
                </td>
            </tr>
            </table>
        <br />
        <br />
    </div>
</asp:Content>

