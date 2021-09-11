<%@ Page Title="" Language="VB" MasterPageFile="~/admin_master_page.master" AutoEventWireup="false" CodeFile="allot_paper_for_teachers.aspx.vb" Inherits="allot_paper_for_teachers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 34%;
        margin-left: 458px;
    }
        .style8
        {
        }
        .style9
        {
            width: 174px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 426px; background-image: url('photos/bk.jpg');">
    </br>
    </br>
        <table class="style7">
            <tr>
                <td align="center" colspan="2">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                            Font-Underline="True" ForeColor="Blue" Text="Allote Papers"></asp:Label>
                        </td>
            </tr>
            <tr>
                <td class="style9">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Blue" Text="Teacher Id:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="tid" DataValueField="tid" 
                        ForeColor="Blue" Height="37px" Width="259px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [tid] FROM [teacher] ORDER BY [tidl]">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Blue" Text="Subject:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource2" DataTextField="qsub" DataValueField="qsub" 
                        ForeColor="Blue" Height="37px" Width="259px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [qsub] FROM [question]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td align="center" class="style8" colspan="2">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="37px" 
                        ImageUrl="~/photos/submit.png" Width="115px" />
                </td>
            </tr>
        </table>
        </br>
        </br>
</div>
</asp:Content>

