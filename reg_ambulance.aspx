<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reg_ambulance.aspx.cs" Inherits="reg_ambulance" MasterPageFile="~/MasterPage.master" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height:447px; width: 246px; float: right; background-image: url(images/ambulance100.jpg)">
        
    </div>
    <div style="float:left; width:650px; height:695px">
    <div style="text-align:center; margin-top:15px">
        <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Red" Width="623px"></asp:Label>
    </div>
        <div class="docregheading">
            <table>
                <tr><td colspan="4" style="background: #fbd6fe; height: 8px">
                    
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="AMBULANCE SERVICE"
                            Width="528px" ForeColor="Black"></asp:Label></td>
                </tr>
            </table>
        </div>
        <table style="margin:0 auto; margin-top:20px; width: 523px;">
            <tr>
                <td style="width: 132px">
                    Provider<strong><span style="color: #ff0000">*</span></strong></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtProvider" runat="server" Width="174px"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Provider name required" Width="167px" ControlToValidate="txtProvider"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 132px">
                    Address<strong><span style="color: #ff0000">*</span></strong></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtAddress" runat="server" Height="67px" TextMode="MultiLine"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Address required" Width="149px" ControlToValidate="txtAddress"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 132px">
                    Phone<strong><span style="color: #ff0000">*</span></strong></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtPhone" runat="server" Width="172px"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Phone number required" Width="154px" ControlToValidate="txtPhone"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 132px">
                    Mobile</td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtMobile" runat="server" Width="172px"></asp:TextBox></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 132px">
                    City<strong><span style="color: #ff0000">*</span></strong></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtCity" runat="server" Width="172px"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="City required" Width="134px" ControlToValidate="txtCity"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 132px">
                    District <strong><span style="color: #ff0000">*</span></strong></td>
                <td style="width: 100px">
                    <asp:DropDownList ID="ddlDistrict" runat="server" Width="179px">
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
                        <asp:ListItem>Chikmagalur</asp:ListItem>
                        <asp:ListItem>Ramanagara</asp:ListItem>
                        <asp:ListItem>Gadag</asp:ListItem>
                        <asp:ListItem>Chamarajnagar</asp:ListItem>
                        <asp:ListItem>Bangalore Rural</asp:ListItem>
                        <asp:ListItem>Kodagu</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 132px">
                    Email</td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtEmail" runat="server" Width="172px"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                        ErrorMessage="Invalid e-mail format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        Width="162px"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td style="width: 132px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align:center">
                    <asp:Button ID="btnRegister" runat="server" Text="Register" Width="76px" OnClick="btnRegister_Click"  /></td>
            </tr>
        </table>
        
        <br />
    </div>

</asp:Content>
