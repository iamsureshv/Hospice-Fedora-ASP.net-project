<%@ Page Language="C#" AutoEventWireup="true" CodeFile="consult.aspx.cs" Inherits="consult" MasterPageFile="~/MasterPage.master" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div style="height:497px; width:246px; float:left; background-image:url(images/organ.jpg); ">
    
   </div>
    <div style="float: right; width: 650px; height: 695px">
        <div style="margin-top: 15px; text-align: center">
            <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Red" Width="623px"></asp:Label>
        </div>
        <div class="docregheading">
            <strong><span style="font-size: 16pt"><span style="color: black">POST YOUR QUESTIONS 
            </span>&nbsp;</span></strong></div>
        <table style=" margin: 20px auto 0px; width: 635px">
            <tr>
                <td style="width: 140px">
                    Name <span style="color: #ff0000">*</span></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtName" runat="server" Width="317px"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                        ErrorMessage="Name required" Width="147px" Font-Bold="False"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 140px">
                    Email <span style="color: #ff0000">*</span></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtEmail" runat="server" Width="316px"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                        ErrorMessage="Invalid email format" Width="149px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td style="width: 140px">
                </td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="E-mail required"
                        Width="159px" ControlToValidate="txtEmail"></asp:RequiredFieldValidator></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 140px">
                    Description <span style="color: #ff0000">*</span></td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtDesc" runat="server" Height="129px" TextMode="MultiLine" Width="318px"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDesc"
                        ErrorMessage="Description required" Width="149px" Font-Bold="False"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 140px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center">
                    <asp:Button ID="btnPost" runat="server"  Text="Post"
                        Width="76px" OnClick="btnPost_Click" /></td>
            </tr>
        </table>
        <br />
    </div>

</asp:Content>