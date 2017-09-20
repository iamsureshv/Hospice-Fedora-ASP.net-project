<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adddoctor.aspx.cs" Inherits="adddoctor" MasterPageFile="~/MasterPage.master" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div style="height:500px; width:246px; float:left; background-image:url(images/doctor.jpg); ">
    </div>
    <div style="float: right; width: 650px; height: 495px">
        <div class="docregheading">
            <strong><span style="font-size: 16pt; color: black">
            ADD DOCTOR DETAILS</span></strong></div>
        <div style="margin-top: 15px">
            <table style="margin: 0px auto; width: 630px; text-align:left">
                <tr>
                    <td colspan="4" style="background: #fbd6fe; height: 8px"><a name="pos"></a>
                        <asp:Label ID="Label25" runat="server" Font-Bold="False" Font-Size="Large" Text="Presonal Details"
                            Width="352px"></asp:Label></td>
                </tr>
                <tr style="font-weight: bold; ">
                    <td style="width: 136px; height: 8px">
                        <asp:Label ID="Label1" runat="server" Text="Doctor Name" Font-Bold="False"></asp:Label>
                        <span style="color: #ff0000">*</span></td>
                    <td style="width: 145px; color: #000000; height: 8px">
                        <asp:TextBox ID="txtDocName" runat="server" Width="143px"></asp:TextBox></td>
                    <td style="width: 100px; color: #000000; height: 8px">
                        <asp:Label ID="Label4" runat="server" Text="Specialisation" Font-Bold="False"></asp:Label><span style="color: #ff0000">
                        </span><span style="color: #ff0000">*</span></td>
                    <td style="width: 106px; height: 8px">
                        <asp:DropDownList ID="ddlSpec" runat="server" Width="168px">
                            <asp:ListItem>cardiology</asp:ListItem>
                            <asp:ListItem>neurology</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td style="width: 136px; height: 4px">
                        <asp:Label ID="Label2" runat="server" Height="14px" Text="Qualification" Width="16px"></asp:Label></td>
                    <td style="width: 145px; height: 4px">
                        <asp:DropDownList ID="ddlQlfn" runat="server" Width="147px">
                            <asp:ListItem>MBBS</asp:ListItem>
                            <asp:ListItem>MD</asp:ListItem>
                        </asp:DropDownList></td>
                    <td style="width: 100px; height: 4px">
                        <asp:Label ID="Label5" runat="server" Text="Age"></asp:Label>&nbsp;<span style="color: #ff0000">*</span></td>
                    <td style="width: 106px; height: 4px">
                        <asp:TextBox ID="txtAge" runat="server" Height="19px" Width="161px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 136px; height: 1px">
                        <asp:Label ID="Label6" runat="server" Text="Sex"></asp:Label></td>
                    <td style="width: 145px; height: 1px">
                        <div style="display: block; float: left; width: 155px">
                            <asp:RadioButton ID="rdoMale" runat="server" Checked="True" GroupName="sex" Text="Male" />
                            <asp:RadioButton ID="rdoFemale" runat="server" GroupName="sex" Text="Female" />
                        </div>
                    </td>
                    <td style="width: 100px; height: 1px">
                        <asp:Label ID="Label7" runat="server" Text="Date of Birth"></asp:Label>
                        <span style="color: #ff0000">*</span></td>
                    <td style="width: 106px; height: 1px">
                        <table style="width: 174px">
                            <tr>
                                <td style="width: 124px; height: 31px">
                                    <input id="txtDOB" name="txtDOB" readonly="readonly" style="width: 121px" type="text" />
                                </td>
                                <td style="height: 31px">
                                    <a href="#" onclick="displayDatePicker('txtDOB','','dmy');">
                                        <img alt="img" src="images/calendar_view_day.png" style="border-right: medium none;
                                            border-top: medium none; border-left: medium none; width: 25px; border-bottom: medium none;
                                            height: 25px" /></a>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="width: 136px; height: 1px">
                        <asp:Label ID="Label26" runat="server" Text="Marital Status"></asp:Label></td>
                    <td style="width: 145px; height: 1px">
                        <asp:RadioButton ID="rdoSingle" runat="server" Checked="True" GroupName="Mstatus"
                            Text="Single" />
                        <asp:RadioButton ID="rdoMarried" runat="server" GroupName="Mstatus" Text="Married" /></td>
                    <td colspan="2" style="height: 1px">
                        <asp:RequiredFieldValidator ID="lblempty" runat="server" ControlToValidate="txtDocName"
                            Width="309px"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 23px; text-align: center">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" Text="Consultation Time"></asp:Label></td>
                    <td colspan="2" style="height: 23px; text-align: center">
                        <asp:Label ID="Label15" runat="server" Font-Bold="True" Style="text-align: center"
                            Text="Online Appointment Time"></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 23px; text-align: left">
                        <asp:Label ID="Label16" runat="server" Text="From"></asp:Label>
                        <asp:TextBox ID="txtConsult_from" runat="server" Width="90px"></asp:TextBox>
                        &nbsp;&nbsp; &nbsp;<asp:Label ID="Label17" runat="server" Text="To"></asp:Label>
                        &nbsp; &nbsp;<asp:TextBox ID="txtConsult_to" runat="server" Width="91px"></asp:TextBox></td>
                    <td colspan="2" style="height: 23px; text-align: left">
                        &nbsp;
                        <asp:Label ID="Label18" runat="server" Text="From"></asp:Label><strong><span style="color: #ff0000">*</span></strong>
                        <asp:TextBox ID="txtOnline_from" runat="server" Width="99px"></asp:TextBox>
                        &nbsp;<asp:Label ID="Label19" runat="server" Text="To"></asp:Label>
                        <strong><span style="color: #ff0000">*</span></strong>
                        <asp:TextBox ID="txtOnline_to" runat="server" Width="84px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="8" style="height: 23px; text-align: center">
                        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click"
                            Text="Submit" />
                        <input id="Reset1" style="width: 67px" type="reset" value="Clear" /></td>
                </tr>
            </table>
            &nbsp; &nbsp;<br />
            <asp:Label ID="lblErmsg" runat="server" ForeColor="Red" Width="635px"></asp:Label><br />
        </div>
    </div>

</asp:Content>