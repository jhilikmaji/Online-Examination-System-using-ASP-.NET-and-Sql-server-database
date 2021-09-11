<%@ Page Title="" Language="VB" MasterPageFile="~/student_master_page.master" AutoEventWireup="false" CodeFile="student_exam_home.aspx.vb" Inherits="student_exam_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style7
    {
        width: 87%;
        height: 819px;
        margin-left: 82px;
    }
    .style8
    {
        height: 41px;
    }
    .style9
    {
        height: 41px;
        width: 336px;
    }
    .style10
    {
    }
    .style11
    {
        height: 536px;
    }
    .style12
    {
        height: 33px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 854px; background-image: url('photos/bk.jpg');">
    <table class="style7">
        <tr>
            <td class="style9" colspan="2">
            </td>
            <td class="style8" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" 
                    Font-Bold="True" Font-Size="XX-Large" 
                    Font-Underline="True" ForeColor="Blue" Text="Rules Of Examination"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style10" rowspan="2" colspan="2" valign="top">
                <asp:Label ID="Label17" runat="server" Font-Bold="True" ForeColor="Blue" 
                    Text="Your Name:" Font-Size="Large"></asp:Label>
                <asp:Label ID="sesnname" runat="server" Font-Bold="False" ForeColor="Blue" 
                    Font-Size="Large"></asp:Label>
                <br />
                <br />
                <asp:Image ID="Image4" runat="server" BorderColor="Blue" BorderStyle="Solid" 
                    BorderWidth="2px" Height="327px" ImageUrl="~/photos/examimage.jpg" 
                    Width="327px" />
                <br />
                <br />
                <br />
                <asp:Image ID="Image5" runat="server" BorderColor="Blue" BorderStyle="Solid" 
                    BorderWidth="2px" Height="327px" ImageUrl="~/photos/examimage2.png" 
                    Width="327px" />
            </td>
            <td align="right" class="style12" colspan="2">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Blue" 
                    Text="Your ID:" Font-Size="Large"></asp:Label>
&nbsp;<asp:Label ID="sesnid" runat="server" Font-Bold="False" ForeColor="Blue" 
                    Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style11" valign="top" align="justify" colspan="2" 
                style="border: 2px outset #0000FF; background-image: url('photos/tablebackgreen.png')">
                <asp:Label ID="Label6" runat="server" ForeColor="#990099" 
                    Text="1. Students are responsible for keeping themselves informed about Regulations relating to studies and examinations of Panskura Banamali College and other instructions relevant to their exam."></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label7" runat="server" ForeColor="#990099" 
                    Text="2. Students are responsible for keeping themselves informed about exam dates, as well as the time and place of the examination."></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label8" runat="server" ForeColor="#990099" 
                    Text="3. Candidates must be present in the exam room at least 30 minutes before the exam starts. If students arrive later than this when they have a digital exam, they will not be granted extra time if they do not get logged in on time for when the exam starts."></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label9" runat="server" ForeColor="#990099" 
                    Text="4. Candidates must have a valid ID placed on their desk during the examination (ex: student card, driver's lisence, passport, etc.). Without a valid ID, candidates will not be admitted to the exam. The student app  is not considered a valid ID-card. Mobile phones must be placed in designated areas of the room."></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label10" runat="server" ForeColor="#990099" 
                    Text="5. Bags and other items brought to the exam room must be placed in designated areas of the room. No headwear is allowed during the exam, except for religious purposes."></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label11" runat="server" ForeColor="#990099" 
                    Text="6. Candidates are not allowed to wear a watch during the examination. All rooms will be fitted with clearly visible clocks on the wall."></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label12" runat="server" ForeColor="#990099" 
                    Text="7. Candidates should have nothing but writing materials, permitted exam aids and food on, or near their desk. Permitted exam aids must be listed on the exam paper and placed on the desk for inspection. Invigilators may check this at any time."></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label13" runat="server" ForeColor="#990099" 
                    Text="8. During the exam, any communication between the candidates is strictly forbidden. All questions must be directed to the invigilators. A candidate wishing to leave the exam room temporarily will be accompanied by an invigilator throughout the absence. Candidates may not communicate with anyone outside the exam room. Candidates must abide by the instructions of the invigilator. Visits to the book shop or canteen during the exam will not be permitted."></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label14" runat="server" ForeColor="#990099" 
                    Text="9. Candidates who are ill and unable to present themselves for the exam must submit a medical certificate no later than five days after the exam. If a medical certificate is not handed in within the deadline the candidate will be registered as not having met for the exam and will have lost one exam attempt."></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label15" runat="server" ForeColor="#990099" 
                    Text="10. Candidates who become ill during the actual exam can choose to hand in their paper and have it graded, but if they do so they cannot hand in a medical certificate afterwards. If you choose to withdraw during the exam due to illness and submit a medical certificate within five days after the exam then this exam will not be registered as an attempt. However, if you do not submit a medical certificate then the candidate will be registered as not having met for the exam."></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label16" runat="server" ForeColor="#990099" 
                    Text="11. Cheating, and attempts at cheating, will immediately be reported to the Examination Office. Consequences of proven cheating or attempts at cheating will be dealt with separately by the college Legal Office."></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style10" align="center" valign="top">
                &nbsp;</td>
            <td class="style10" align="center" valign="top">
                &nbsp;</td>
            <td class="style10" align="center" valign="top">
                <asp:CheckBox ID="CheckBox2" runat="server" Font-Bold="True" 
                    Font-Names="Bell MT" ForeColor="Blue" Text="Yes,I Agree." />
            </td>
            <td class="style10" align="center" valign="top">
                <asp:ImageButton ID="btnnext" runat="server" Height="39px" 
                    ImageUrl="~/photos/next.png" Width="148px" />
            </td>
        </tr>
    </table>
</div>
</asp:Content>

