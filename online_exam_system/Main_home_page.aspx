<%@ Page Title="" Language="VB" MasterPageFile="~/main_master_page.master" AutoEventWireup="false" CodeFile="Main_home_page.aspx.vb" Inherits="Mian_home_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 100%;
            height: 531px;
        }
        .style14
        {
    }
        .style15
        {
            height: 47px;
        }
        .style16
        {
            width: 315px;
        }
        .style18
        {
            width: 591px;
        }
    .style19
    {
        width: 86%;
        height: 300px;
        margin-left: 28px;
        margin-top: 44px;
    }
    .style21
    {
        height: 44px;
    }
        .style22
        {
            width: 95px;
            height: 26px;
        }
        .style23
        {
            width: 100%;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: auto; background-image: url('photos/bk.jpg');">
        <asp:Panel ID="Panel4" runat="server" Height="262px" 
            BackImageUrl="~/photos/slidebackground.jpg">
            <br>
            <!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8"/>
    <title>Amazing Slider</title>
    
    <!-- Insert to your webpage before the </head> -->
    <script src="sliderengine/jquery.js"></script>
    <script src="sliderengine/amazingslider.js"></script>
    <link rel="stylesheet" type="text/css" href="sliderengine/amazingslider-1.css">
    <script src="sliderengine/initslider-1.js"></script>
    <!-- End of head section HTML codes -->
    
</head>
<body>
    
    <!-- Insert to your webpage where you want to display the slider -->
    <div id="amazingslider-wrapper-1" style="display:block;position:relative;max-width:700px;margin:0px auto 56px;">
        <div id="amazingslider-1" style="display:block;position:relative;margin:0 auto;">
            <ul class="amazingslider-slides" style="display:none;">
                <li><img src="images/college-resize.jpg" />
                </li>
                <li><img src="images/history.jpg" />
                </li>
                <li><img src="images/IMG_20190417_093758.jpg" />
                </li>
                <li><img src="images/IMG_20190417_093816.jpg" />
                </li>
                <li><img src="images/IMG_20190417_093852.jpg" />
                </li>
                <li><img src="images/slide-1.jpg" />
                </li>
                <li><img src="images/slide-2.jpg" />
                </li>
                <li><img src="images/slide-3.jpg" />
                </li>
            </ul>
            <ul class="amazingslider-thumbnails" style="display:none;">
                <li><img src="images/college-resize-tn.jpg" /></li>
                <li><img src="images/history-tn.jpg" /></li>
                <li><img src="images/IMG_20190417_093758-tn.jpg" /></li>
                <li><img src="images/IMG_20190417_093816-tn.jpg" /></li>
                <li><img src="images/IMG_20190417_093852-tn.jpg" /></li>
                <li><img src="images/slide-1-tn.jpg" /></li>
                <li><img src="images/slide-2-tn.jpg" /></li>
                <li><img src="images/slide-3-tn.jpg" /></li>
            </ul>
        <div class="amazingslider-engine"><a href="http://amazingslider.com" title="Responsive JavaScript Slideshow">Responsive JavaScript Slideshow</a></div>
        </div>
    </div>
    <!-- End of body section HTML codes -->
    
</body>
</html>
        </asp:Panel>

        <asp:Panel ID="Panel5" runat="server" Height="596px">
            <table class="style13">
                <tr>
                    <td class="style15" colspan="2" 
                        style="border-right-style: dotted; border-right-width: 2px; border-right-color: #9900CC" 
                        valign="middle">
                        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
                            Font-Italic="True" Font-Size="XX-Large" ForeColor="Red" 
                            NavigateUrl="~/student_login.aspx">[HyperLink2]</asp:HyperLink>
                    </td>
                    <td class="style14" valign="top" align=center rowspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Panel ID="Panel7" runat="server" style="margin-left: 30px" Width="128px">
                            <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                Font-Underline="True" ForeColor="Blue" Text="Notices"></asp:Label>
                        </asp:Panel>
                        <asp:Panel ID="Panel6" runat="server" BackImageUrl="~/photos/noticeboard.png" 
                            Height="414px" style="margin-left: 28px" Width="372px">
                            <table class="style19">
                                <tr>
                                    <td align="justify" class="style21" valign="top">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" valign="top">
                                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
                                            Font-Names="Adobe Caslon Pro Bold" Font-Size="35pt" ForeColor="Blue" 
                                            NavigateUrl="~/show_notice.aspx" >[HyperLink1]</asp:HyperLink>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td class="style16">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image4" runat="server" BorderColor="Blue" BorderStyle="Solid" 
                            BorderWidth="2px" Height="318px" ImageUrl="~/photos/give exam.jpg" 
                            Width="267px" />
                    </td>
                    <td align="justify" class="style18" 
                        style="border: 2px dotted #9700CA; background-image: url('photos/ruleback.png');" 
                        valign="top">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="X-Large" 
                            Font-Underline="True" ForeColor="Blue" Text="Rules"></asp:Label>
                        <br />
                        <asp:Label ID="Label17" runat="server" Font-Size="13pt" ForeColor="Blue" 
                            Text="• For B.A./B.Sc./B.Com. (Hons. &amp; Gen.) curriculum, the new syllabus of Vidyasagar University for new 3-tier system would be followed."></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label9" runat="server" Font-Size="13pt" ForeColor="Blue" 
                            Text="•	Students must attend at least 75% of the lectures held in each academic session else the permission to appear in the final University exam would not be granted."></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label10" runat="server" Font-Size="13pt" ForeColor="Blue" 
                            Text="•	It is compulsory for the first year students to attend at least 50% of the lectures held before the first internal assessment."></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label11" runat="server" Font-Size="13pt" ForeColor="Blue" 
                            Text="•	The names of the students, who fail to attend 50% of the total classes held within first 15 working days, will be deleted from the admission register."></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label12" runat="server" Font-Size="13pt" ForeColor="Blue" 
                            Text="•	A student in General Course will have to take 3 elective subjects with compulsory English, Bengali and Environmental Studies."></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label13" runat="server" Font-Size="13pt" ForeColor="Blue" 
                            Text="•	A student in Honours Course will have to take 2 elective subjects in addition to Hons. subject with compulsory English, Bengali and Environmental Studies."></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label14" runat="server" Font-Size="13pt" ForeColor="Blue" 
                            Text="•	For Non-traditional Subjects (Microbiology, Biotechnology, Computer Science and BCA): Students are not allowed to change their honours subjects once admitted."></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label15" runat="server" Font-Size="13pt" ForeColor="Blue" 
                            Text="•	For Internal assessment, 10 marks for each paper are allotted (90 marks for final Univ. exam.). For each Hons. paper (Theory), two class tests and for each Gen paper (Theory) one class test will be conducted."></asp:Label>
                    </td>
                </tr>
            </table>
        </asp:Panel>

        <asp:Panel ID="Panel2" runat="server" BackColor="#7B50F7" Height="249px">
            <table class="style7">
                <tr>
                    <td align="center" colspan="2">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="16pt" 
                            Font-Underline="True" ForeColor="White" Text="Enquery"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label19" runat="server" Font-Size="14pt" ForeColor="White" 
                            Text="Date:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tbquerydate" runat="server" BorderStyle="Dotted" 
                            Font-Size="Large" Width="258px" ForeColor="#666666"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style10">
                        <asp:Label ID="Label5" runat="server" Font-Size="14pt" ForeColor="White" 
                            Text="Email:"></asp:Label>
                    </td>
                    <td class="style13">
                        <asp:TextBox ID="tbqueryemail" runat="server" BorderStyle="Dotted" 
                            Font-Size="Large" Width="258px" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="tbqueryemail" ErrorMessage="*Fill" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style22">
                    </td>
                    <td class="style23">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="tbqueryemail" ErrorMessage="*must put valid email" 
                            ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style9">
                        <asp:Label ID="Label6" runat="server" Font-Size="14pt" ForeColor="White" 
                            Text="Query:"></asp:Label>
                    </td>
                    <td class="style12">
                        <asp:TextBox ID="tbquerysubject" runat="server" BorderStyle="Dotted" 
                            Font-Size="Large" Height="53px" TextMode="MultiLine" Width="258px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="tbquerysubject" ErrorMessage="*Fill" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:ImageButton ID="imgbtnsubmit" runat="server" Height="32px" 
                            ImageUrl="~/photos/submit.png" Width="114px" />
                    </td>
                </tr>
            </table>

        </asp:Panel>

    </div>
</asp:Content>

