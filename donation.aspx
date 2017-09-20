<%@ Page Language="C#" AutoEventWireup="true" CodeFile="donation.aspx.cs" Inherits="donation" MasterPageFile="~/MasterPage.master" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height:351px; width:246px; float:left; background-image:url(images/organ2.jpg); ">
    
   </div>
    <div style="float: left; width: 651px; height: 700px">
        <div style="margin-top:10px; text-align:center">
            <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Red" Width="613px"></asp:Label>
        </div>
    
    <div class="docregheading">
        <span style="font-size: 16pt; color: black"><strong>
        DONATE YOUR ORGAN- SAVE A LIFE&nbsp;</strong></span></div>  
        <table style="width: 557px;  margin:0 auto;margin-top:10px;">
            <tr>
                <td style="width: 120px">
                    Donor Name</td>
                <td style="width: 92px">
                    <asp:TextBox ID="txtName" runat="server" Width="215px"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Donor name required"
                        Width="190px" ControlToValidate="txtName"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 120px">
                    Sex</td>
                <td style="width: 92px">
                    <asp:RadioButtonList ID="rdoSexList" runat="server" RepeatDirection="Horizontal"
                        Width="125px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 120px">
                    Date of Birth</td>
                <td style="width: 92px">
                    <input id="txtDOB" name="txtDOB" readonly="readonly" style="width: 212px" type="text" /></td>
                <td style="width: 100px">
                    <a href="#" onclick="displayDatePicker('txtDOB','','dmy');">
                        <img alt="img" src="images/calendar_view_day.png" style="border-right: medium none;
                            border-top: medium none; border-left: medium none; width: 25px; border-bottom: medium none;
                            height: 25px" /></a></td>
            </tr>
            <tr>
                <td style="width: 120px; height: 42px;">
                    Address</td>
                <td style="width: 92px; height: 42px;">
                    <asp:TextBox ID="txtAddress" runat="server" Height="67px" Width="215px"></asp:TextBox></td>
                <td style="width: 100px; height: 42px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Address required"
                        Width="190px" ControlToValidate="txtAddress"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 120px; height: 8px;">
                    Contact Number</td>
                <td style="width: 92px; height: 8px;">
                    <asp:TextBox ID="txtPhno" runat="server" Width="215px"></asp:TextBox></td>
                <td style="width: 100px; height: 8px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Contact number required"
                        Width="190px" ControlToValidate="txtPhno"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 120px">
                    City</td>
                <td style="width: 92px">
                    <asp:TextBox ID="txtCity" runat="server" Width="215px"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCity"
                        ErrorMessage="City name required" Width="190px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 120px">
                    District</td>
                <td style="width: 92px">
                    <asp:DropDownList ID="ddlDistrict" runat="server" Width="219px">
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
                        <asp:ListItem>Koppal</asp:ListItem>
                        <asp:ListItem>Chikkabalapura</asp:ListItem>
                        <asp:ListItem>Udupi</asp:ListItem>
                        <asp:ListItem>Yadgir</asp:ListItem>
                        <asp:ListItem>Chikamagalur</asp:ListItem>
                        <asp:ListItem>Ramanagar</asp:ListItem>
                        <asp:ListItem Value="Gadag"></asp:ListItem>
                        <asp:ListItem>Chamarajnagar</asp:ListItem>
                        <asp:ListItem>Bangalore Rural</asp:ListItem>
                        <asp:ListItem>Kodagu</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 120px">
                    Donating Organ</td>
                <td style="width: 92px">
                    <asp:DropDownList ID="ddlOrgon" runat="server" Width="212px">
                        <asp:ListItem Selected="True">--Select--</asp:ListItem>
                        <asp:ListItem>Eye</asp:ListItem>
                        <asp:ListItem>Heart</asp:ListItem>
                        <asp:ListItem>Kidney</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 120px">
                </td>
                <td style="width: 92px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 120px">
                </td>
                <td style="width: 92px">
                    <asp:Button ID="btnDonate" runat="server" Text="Donate" Width="83px" OnClick="btnDonate_Click" />&nbsp;
                    </td>
                <td style="width: 100px">
                </td>
            </tr>
        </table>
        
    </div>

</asp:Content>
