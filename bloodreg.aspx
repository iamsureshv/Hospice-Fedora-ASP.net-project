<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bloodreg.aspx.cs" Inherits="bloodreg" MasterPageFile="~/MasterPage.master" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="height:500px; width:295px; float:left; background-image:url(images/bloodbank.jpg); ">
    </div>
<div style="height:500px; width:600px; float:right">
    <div style="text-align:center; font-weight:bold; margin-top:20px; font-size:20px; ">
        <span style="font-size: 16pt">Blood Donor Registration</span></div>
    <table style="margin:0 auto; width: 600px;">
            <tr>
                <td style="width: 136px; height: 21px;">
                </td>
                <td style="width: 43px; height: 21px;">
                </td>
                <td style="width: 52px; height: 21px;">
                </td>
            </tr>
            <tr>
                <td style="width: 136px" align="right">
                    <strong>
                    Donor name</strong><span style="color:Red; font-weight:bold">*</span>&nbsp;&nbsp;</td>
                <td style="width: 43px">
                    <asp:TextBox ID="txtName" runat="server" Width="170px"></asp:TextBox></td>
                <td style="width: 52px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name cannot be left blank" Width="183px" ControlToValidate="txtName"></asp:RequiredFieldValidator></td>
            </tr>
        <tr>
            <td align="right" style="width: 136px; height: 21px">
                <strong>Sex <span style="color:Red; font-weight:bold">*</span></strong> &nbsp;</td>
            <td style="width: 43px; height: 21px">
                <asp:DropDownList ID="ddlSex" runat="server" Width="175px">
                    <asp:ListItem Selected="True">---Select---</asp:ListItem>
                    <asp:ListItem>MALE</asp:ListItem>
                    <asp:ListItem>FEMALE</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 52px; height: 21px">
            </td>
        </tr>
            <tr>
                <td style="width: 136px" align="right">
                    <strong>
                    Age<span style="color:Red; font-weight:bold">*</span></strong>&nbsp;&nbsp;</td>
                <td style="width: 43px">
                    <asp:DropDownList ID="ddlAge" runat="server" Width="176px">
                    </asp:DropDownList></td>
                <td style="width: 52px">
                </td>
            </tr>
            <tr>
                <td style="width: 136px; height: 5px;" align="right">
                    <strong>
                    Date of Birth</strong><span style="color:Red; font-weight:bold">*</span>&nbsp;&nbsp;</td>
                <td style="width: 43px; height: 5px;">
                    <table style="width: 174px"><tr><td style="width: 134px">
                    <input name="txtDOB"  id="txtDOB" style="width: 133px" type="text" readonly="readOnly" />
                    </td>
                    <td>
                    <a href="#" onclick="displayDatePicker('txtDOB','','dmy');">
                        <img  src="images/calendar_view_day.png" alt="img" style="width:25px; height:25px; border:none" /></a>
                   </td>
                    </tr></table>
            </tr>
            <tr>
                <td style="width: 136px" align="right">
                    <strong>
                    Address 1</strong><span style="color:Red; font-weight:bold">*</span>&nbsp;&nbsp;</td>
                <td style="width: 43px">
                    <asp:TextBox ID="txtAddress1" runat="server" Width="170px"></asp:TextBox></td>
                <td style="width: 52px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Address cannot be left blank"
                        Width="186px" ControlToValidate="txtAddress1"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 136px" align="right">
                    <strong>
                    Address 2</strong><span style="color:Red; font-weight:bold">*</span>&nbsp;&nbsp;</td>
                <td style="width: 43px">
                    <asp:TextBox ID="txtAddress2" runat="server" Width="170px"></asp:TextBox></td>
                <td style="width: 52px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Address cannot be left blank"
                        Width="187px" ControlToValidate="txtAddress2"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 136px; height: 25px;" align="right">
                    <strong>District</strong> <span style="color:Red; font-weight:bold">*</span>&nbsp;&nbsp;</td>
                <td style="width: 43px; height: 25px;">
                    <asp:DropDownList ID="ddlDistrict" runat="server" Width="176px">
                        <asp:ListItem Selected="True">--Select--</asp:ListItem>
                        <asp:ListItem>Bangalore</asp:ListItem>
                        <asp:ListItem>Belgaum</asp:ListItem>
                        <asp:ListItem>Mysore</asp:ListItem>
                        <asp:ListItem>Tumkur</asp:ListItem>
                        <asp:ListItem>Gulbarga</asp:ListItem>
                        <asp:ListItem>Bellary</asp:ListItem>
                        <asp:ListItem>Bijapur</asp:ListItem>
                        <asp:ListItem>Dakshina Kannada</asp:ListItem>
                        <asp:ListItem>Davangere</asp:ListItem>
                        <asp:ListItem>Raichur</asp:ListItem>
                        <asp:ListItem>Bagalkot</asp:ListItem>
                        <asp:ListItem>Dharwad</asp:ListItem>
                        <asp:ListItem>Mandya</asp:ListItem>
                        <asp:ListItem>Hassan</asp:ListItem>
                        <asp:ListItem>Shimoga</asp:ListItem>
                        <asp:ListItem>Bidar</asp:ListItem>
                        <asp:ListItem>Chitradurga</asp:ListItem>
                        <asp:ListItem>Haveri</asp:ListItem>
                        <asp:ListItem>Kolar</asp:ListItem>
                        <asp:ListItem>Uttar Kannada</asp:ListItem>
                        <asp:ListItem>Kolar</asp:ListItem>
                        <asp:ListItem>Chikkabalapura</asp:ListItem>
                        <asp:ListItem>Udupi</asp:ListItem>
                        <asp:ListItem>Yadgir</asp:ListItem>
                        <asp:ListItem>Chikamagalur</asp:ListItem>
                        <asp:ListItem>Ramanagar</asp:ListItem>
                        <asp:ListItem>Gadag</asp:ListItem>
                        <asp:ListItem>Chamarajnagar</asp:ListItem>
                        <asp:ListItem>Bangalore Rural</asp:ListItem>
                        <asp:ListItem>Kodagu</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 52px; height: 25px;">
                    <asp:Label ID="lblDistMsg" runat="server" ForeColor="Red"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 136px" align="right">
                    <strong>
                    State</strong> <span style="color:Red; font-weight:bold">*</span>&nbsp;&nbsp;</td>
                <td style="width: 43px">
                    <asp:DropDownList ID="ddlState" runat="server" Width="176px">
                        <asp:ListItem Selected="True">--Select--</asp:ListItem>
                        <asp:ListItem>Karnataka Rural</asp:ListItem>
                        <asp:ListItem>Karnataka Urban</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 52px">
                    <asp:Label ID="lblStateMsg" runat="server" ForeColor="Red"></asp:Label></td>
            </tr>
        <tr>
            <td style="width: 136px; height: 21px;" align="right">
                <strong>
                Phone</strong> &nbsp;&nbsp;</td>
            <td style="width: 43px; height: 21px;">
                <asp:TextBox ID="txtPhone" runat="server" Width="170px"></asp:TextBox></td>
            <td style="width: 52px; height: 21px;">
            </td>
        </tr>
        <tr>
            <td style="width: 136px; height: 26px;" align="right">
                <strong>
                Mobile</strong> <span style="color:Red; font-weight:bold">*</span>&nbsp;&nbsp;</td>
            <td style="width: 43px; height: 26px;">
                <asp:TextBox ID="txtMobile" runat="server" Width="170px"></asp:TextBox></td>
            <td style="width: 52px; height: 26px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Mobile number cannot be left blank"
                    Width="280px" ControlToValidate="txtMobile"></asp:RequiredFieldValidator></td>
        </tr>
            <tr>
                <td colspan="3">
                </td>
            </tr>
            <tr>
                <td style="width: 136px" align="right">
                    <strong>
                    Blood Group</strong> <span style="color:Red; font-weight:bold">*</span>&nbsp;&nbsp;</td>
                <td style="width: 43px">
                    <asp:DropDownList ID="ddlBloodGroup" runat="server" Width="176px">
                        <asp:ListItem Selected="True">--Select--</asp:ListItem>
                        <asp:ListItem Value="AP">A+</asp:ListItem>
                        <asp:ListItem Value="AN">A-</asp:ListItem>
                        <asp:ListItem Value="BP">B+</asp:ListItem>
                        <asp:ListItem Value="BN">B-</asp:ListItem>
                        <asp:ListItem Value="ABP">AB+</asp:ListItem>
                        <asp:ListItem Value="ABN">AB-</asp:ListItem>
                        <asp:ListItem Value="OP">O+</asp:ListItem>
                        <asp:ListItem Value="ON">O-</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 52px">
                    <asp:Label ID="lblBgMSg" runat="server" ForeColor="Red"></asp:Label></td>
            </tr>
        <tr>
            <td style="width: 136px">
            </td>
            <td style="width: 43px">
            </td>
            <td style="width: 52px">
            </td>
        </tr>
        <tr style="text-align:center">
            <td colspan="2">
                <center style="text-align: right"><asp:ImageButton ID="btnRegister" runat="server" ImageUrl="~/images/Register.png" OnClick="btnRegister_Click"  />
                </center>
            </td>
             <td></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label></td>
               
        </tr>
        </table>
 </div>
</asp:Content>
