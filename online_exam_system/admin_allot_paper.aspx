<%@ Page Title="" Language="VB" MasterPageFile="~/admin_master_page.master" AutoEventWireup="false" CodeFile="admin_allot_paper.aspx.vb" Inherits="admin_allot_paper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 44%;
            margin-left: 375px;
        }
        .style8
        {
        }
        .style9
        {
            width: 262px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: auto; background-image: url('photos/bk.jpg');">
    <br/>
        <table class="style7">
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                        Font-Underline="True" ForeColor="Blue" Text="Allot Papers"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" class="style9">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" 
                        Font-Underline="False" ForeColor="Blue" Text="Select Paper:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="159px" 
                        AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="qid" 
                        DataValueField="qid">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT DISTINCT [qid] FROM [question]"></asp:SqlDataSource>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style8" colspan="2">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        Font-Underline="False" ForeColor="Blue" Text="Details Of Paper-"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style8" colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="qid" DataSourceID="SqlDataSource2" 
                        EmptyDataText="There are no data records to display.">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="qid" HeaderText="Question Id" ReadOnly="True" 
                                SortExpression="qid" />
                            <asp:BoundField DataField="qsl" HeaderText="Serial no" SortExpression="qsl" />
                            <asp:BoundField DataField="dofexam" HeaderText="dofexam" 
                                SortExpression="dofexam" />
                            <asp:BoundField DataField="session" HeaderText="session" 
                                SortExpression="session" />
                            <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                            <asp:BoundField DataField="class" HeaderText="class" SortExpression="class" />
                            <asp:BoundField DataField="choice" HeaderText="choice" 
                                SortExpression="choice" />
                            <asp:BoundField DataField="pcode" HeaderText="pcode" SortExpression="pcode" />
                            <asp:BoundField DataField="setno" HeaderText="setno" SortExpression="setno" />
                            <asp:BoundField DataField="slno" HeaderText="slno" SortExpression="slno" />
                            <asp:BoundField DataField="subslno" HeaderText="subslno" 
                                SortExpression="subslno" />
                            <asp:BoundField DataField="question" HeaderText="question" 
                                SortExpression="question" />
                            <asp:BoundField DataField="marks" HeaderText="marks" SortExpression="marks" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                        SelectCommand="SELECT DISTINCT [qid], [qsl], [dofexam], [session], [time], [class], [choice], [pcode], [setno], [slno], [subslno], [question], [marks] FROM [question] WHERE ([qid] = @qid)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="qid" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td align="right" class="style9">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" 
                        Font-Underline="False" ForeColor="Blue" Text="Paper Code"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="156px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style9">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" 
                        Font-Underline="False" ForeColor="Blue" Text="Quantity:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="156px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style9">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" 
                        Font-Underline="False" ForeColor="Blue" Text="Select Teacher Id:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="22px" Width="159px" 
                        AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="tid" 
                        DataValueField="tid">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT DISTINCT [tid] FROM [teacher]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td align="right" class="style9">
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Large" 
                        Font-Underline="False" ForeColor="Blue" Text="Date of Issue:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="156px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style9">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" 
                        Font-Underline="False" ForeColor="Blue" Text="Date of Return:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="156px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" class="style8" colspan="2">
                    <br />
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" 
                        ImageUrl="~/photos/allot.png" Width="124px" />
                </td>
            </tr>
        </table>
        <br/>
    </div>
</asp:Content>

