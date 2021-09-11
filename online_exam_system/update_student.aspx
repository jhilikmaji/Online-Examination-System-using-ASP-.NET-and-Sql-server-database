<%@ Page Title="" Language="VB" MasterPageFile="~/admin_master_page.master" AutoEventWireup="false" CodeFile="update_student.aspx.vb" Inherits="update_student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 100%;
            margin-left: 0px;
        }
        .style8
        {
            width: 1281px;
        }
        .style9
        {
            width: 1281px;
            height: 67px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: auto; background-image: url('photos/bk.jpg');">
    <br/>
    <br/>

        <table class="style7" style="border: 2px ridge #0000FF">
            <tr>
                <td align="center" class="style9" 
                    style="border-bottom-style: solid; border-bottom-width: 1px; border-bottom-color: #0000FF">
                    <asp:Image ID="Image4" runat="server" Height="63px" 
                        ImageUrl="~/photos/studentupdatedicon.png" Width="64px" />
                </td>
            </tr>
            <tr>
                <td align="center" class="style8">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="s_id" 
            DataSourceID="SqlDataSource2">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="s_id" HeaderText="ID" ReadOnly="True" 
                    SortExpression="s_id" />
                <asp:BoundField DataField="s_name" HeaderText="NAME" 
                    SortExpression="s_name" />
                <asp:BoundField DataField="s_class" HeaderText="CLASS" 
                    SortExpression="s_class" />
                <asp:BoundField DataField="s_address" HeaderText="ADDRESS" 
                    SortExpression="s_address" />
                <asp:BoundField DataField="s_dob" HeaderText="DATE OF BIRTH" 
                    SortExpression="s_dob" />
                <asp:BoundField DataField="s_mob" HeaderText="MOBILE NO" 
                    SortExpression="s_mob" />
                <asp:BoundField DataField="s_email" HeaderText="EMAIL" 
                    SortExpression="s_email" />
                <asp:BoundField DataField="s_pass" HeaderText="PASSWORD" 
                    SortExpression="s_pass" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        DeleteCommand="DELETE FROM [student] WHERE [s_id] = @s_id" 
                        InsertCommand="INSERT INTO [student] ([s_id], [s_name], [s_class], [s_address], [s_dob], [s_mob], [s_email], [s_pass]) VALUES (@s_id, @s_name, @s_class, @s_address, @s_dob, @s_mob, @s_email, @s_pass)" 
                        SelectCommand="SELECT [s_id], [s_name], [s_class], [s_address], [s_dob], [s_mob], [s_email], [s_pass] FROM [student] WHERE ([s_idl] &lt;&gt; @s_idl) ORDER BY [s_id]" 
                        
                        UpdateCommand="UPDATE [student] SET [s_name] = @s_name, [s_class] = @s_class, [s_address] = @s_address, [s_dob] = @s_dob, [s_mob] = @s_mob, [s_email] = @s_email, [s_pass] = @s_pass WHERE [s_id] = @s_id">
                        <DeleteParameters>
                            <asp:Parameter Name="s_id" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="s_id" Type="String" />
                            <asp:Parameter Name="s_name" Type="String" />
                            <asp:Parameter Name="s_class" Type="String" />
                            <asp:Parameter Name="s_address" Type="String" />
                            <asp:Parameter Name="s_dob" Type="String" />
                            <asp:Parameter Name="s_mob" Type="String" />
                            <asp:Parameter Name="s_email" Type="String" />
                            <asp:Parameter Name="s_pass" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:Parameter DefaultValue="0" Name="s_idl" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="s_name" Type="String" />
                            <asp:Parameter Name="s_class" Type="String" />
                            <asp:Parameter Name="s_address" Type="String" />
                            <asp:Parameter Name="s_dob" Type="String" />
                            <asp:Parameter Name="s_mob" Type="String" />
                            <asp:Parameter Name="s_email" Type="String" />
                            <asp:Parameter Name="s_pass" Type="String" />
                            <asp:Parameter Name="s_id" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>

        <br/>
        <br/>
    </div>
</asp:Content>

