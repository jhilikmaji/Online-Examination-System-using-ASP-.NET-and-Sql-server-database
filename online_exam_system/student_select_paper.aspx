<%@ Page Title="" Language="VB" MasterPageFile="~/student_master_page.master" AutoEventWireup="false" CodeFile="student_select_paper.aspx.vb" Inherits="student_select_paper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 77%;
            margin-left: 163px;
        }
        .style8
        {
            width: 652px;
        }
        .style9
        {
            height: 24px;
        }
        .style10
        {
            width: 652px;
            height: 24px;
        }
        .style11
        {
            height: 24px;
            width: 185px;
        }
        .style12
        {
            width: 185px;
        }
        .style13
        {
            width: 652px;
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: auto; background-image: url('photos/bk.jpg');">
        <table class="style7">
            <tr>
                <td align="center" colspan="3">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                        Font-Underline="True" ForeColor="Blue" Text="Give Exam"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="left" class="style11">
                    <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Size="Medium" 
                        ForeColor="Blue" Text="Your ID:"></asp:Label>
&nbsp;<asp:Label ID="lbsid" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Blue"></asp:Label>
                </td>
                <td align="center" class="style10">
                    <asp:Label ID="lbsub" runat="server" Font-Bold="False" Font-Size="Medium" 
                        ForeColor="Blue" Visible="False"></asp:Label>
                </td>
                <td align="right" class="style9">
                    <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Size="Medium" 
                        ForeColor="Blue" Text="Your Dept:"></asp:Label>
&nbsp;<asp:Label ID="lbsdept" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Blue"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="justify" class="style12" valign="top">
                    <br />
                    <asp:Label ID="Label19" runat="server" Font-Bold="False" Font-Size="Medium" 
                        ForeColor="Blue" 
                        Text="You Have 40 min to complete this examination,and this 40 min  and this exam timings will be decided by your teacher,So complete your exam before 40 min as possible as you can."></asp:Label>
                </td>
                <td class="style8" align="center">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource1" ForeColor="Blue" style="margin-right: 0px">
                        <Columns>
                            <asp:BoundField DataField="qpic" HeaderText="qpic" SortExpression="qpic" 
                                Visible="False" />
                            <asp:ImageField DataImageUrlField="qpic" HeaderText="Image of the Question">
                                <ControlStyle Height="250px" Width="320px" />
                                <ItemStyle Height="250px" Width="320px" />
                            </asp:ImageField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [qpic] FROM [question] WHERE ([qclass] = @qclass)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lbsdept" Name="qclass" PropertyName="Text" 
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td align="left" valign="top">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style12" rowspan="12">
                    &nbsp;</td>
                <td class="style8" align="justify">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="15pt" 
                        ForeColor="#CC0000" 
                        Text="Please give answer of the above questions to the TEXTBOXES allocated for them,otherwise your answer will be declared as wrong answer." 
                        Font-Italic="False"></asp:Label>
                </td>
                <td rowspan="12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8" valign="top">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="1"></asp:Label>
                    <asp:TextBox ID="tbq1" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="634px" Height="57px" TextMode="MultiLine"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="style8" valign="top">
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="2"></asp:Label>
                    <asp:TextBox ID="tbq2" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="634px" Height="57px" TextMode="MultiLine"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="style8" valign="top">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="3"></asp:Label>
                    <asp:TextBox ID="tbq3" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="634px" Height="57px" TextMode="MultiLine"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="style8" valign="top">
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="4"></asp:Label>
                    <asp:TextBox ID="tbq4" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="634px" Height="57px" TextMode="MultiLine"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="style8" valign="top">
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="5"></asp:Label>
                    <asp:TextBox ID="tbq5" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="634px" Height="57px" TextMode="MultiLine"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="style8" valign="top">
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="6"></asp:Label>
                    <asp:TextBox ID="tbq6" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="634px" Height="57px" TextMode="MultiLine"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="style13" valign="top">
                    <asp:Label ID="Label15" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="7"></asp:Label>
                    <asp:TextBox ID="tbq7" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="634px" Height="57px" TextMode="MultiLine"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="style8" valign="top">
                    <asp:Label ID="Label16" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="8"></asp:Label>
                    <asp:TextBox ID="tbq8" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="634px" Height="57px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style8" valign="top">
                    <asp:Label ID="Label17" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="9"></asp:Label>
                    <asp:TextBox ID="tbq9" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="634px" Height="57px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style8" valign="top">
                    <asp:Label ID="Label18" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="10"></asp:Label>
                    <asp:TextBox ID="tbq10" runat="server" Font-Size="Large" ForeColor="Blue" 
                        Width="622px" Height="57px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" class="style8">
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="45px" 
                        ImageUrl="~/photos/submit.png" Width="156px" />
                </td>
            </tr>
        </table>
</div>
</asp:Content>

