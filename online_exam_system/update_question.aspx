<%@ Page Title="" Language="VB" MasterPageFile="~/admin_master_page.master" AutoEventWireup="false" CodeFile="update_question.aspx.vb" Inherits="update_question" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style7
        {
            width: 33%;
            margin-left: 448px;
        }
        .style11
        {
            height: 64px;
        }
        .style10
        {
            width: 463px;
        }
        .style9
        {
            width: 368px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 432px; background-image: url('photos/bk.jpg');">
    <br />
    <br />
        <table class="style7" 
            style="border: 2px solid #0000FF; background-image: url('photos/tableback1.png'); height: 275px;">
            <tr>
                <td align="center" colspan="2" class="style11" 
                    style="border-bottom-style: solid; border-bottom-width: 1px; border-bottom-color: #0000FF">
                    <asp:Image ID="Image4" runat="server" Height="60px" 
                        ImageUrl="~/photos/questionupdateicon.png" Width="60px" />
                </td>
            </tr>
            <tr>
                <td class="style10">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Blue" Text="Class:"></asp:Label>
                </td>
                <td class="style9">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="deptname" 
                        DataValueField="deptname" Height="36px" Width="287px" Font-Bold="True" 
                        ForeColor="Blue">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [deptname] FROM [department] ORDER BY [deptidl]">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Blue" Text="Subject:"></asp:Label>
                </td>
                <td class="style9">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource2" DataTextField="qsub" 
                        DataValueField="qsub" Height="36px" Width="287px" Font-Bold="True" 
                        ForeColor="Blue">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [qsub] FROM [question] WHERE ([qclass] = @qclass)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="qclass" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Blue" Text="Image:"></asp:Label>
                </td>
                <td class="style9">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td align="center" class="style8" colspan="2">
                    &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="37px" 
                        ImageUrl="~/photos/delete.png" Width="114px" />
                </td>
            </tr>
        </table>
        <br />
        <br />
    </div>
</asp:Content>

