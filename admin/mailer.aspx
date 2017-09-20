<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mailer.aspx.cs" Inherits="mailer" MasterPageFile="~/admin/admin.master" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 688px; height: 145px; margin:0 auto">
        <tr>
            <td colspan="3">
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#FF8080" Width="595px"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="3">
            </td>
        </tr>
        <tr>
            <td style="width: 56px; height: 25px;">
                To</td>
            <td style="width: 76px; height: 40px;">
                <asp:TextBox ID="txtToAddress" runat="server" Width="376px"></asp:TextBox></td>
            <td style="width: 100px; height: 40px;">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid e-mail format"
                    Width="161px" ControlToValidate="txtToAddress" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter recepient address" ControlToValidate="txtToAddress" Width="160px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 56px">
                CC</td>
            <td style="width: 76px">
                <asp:TextBox ID="txtCCAddress" runat="server" Width="376px"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid e-mail format"
                    Width="161px" ControlToValidate="txtCCAddress" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 56px">
                BCC</td>
            <td style="width: 76px">
                <asp:TextBox ID="txtBCC" runat="server" Width="376px"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:RegularExpressionValidator ID="r" runat="server" ControlToValidate="txtBCC"
                    ErrorMessage="Invalid e-mail format" Width="161px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 56px">
                From</td>
            <td style="width: 76px">
                <asp:TextBox ID="txtFromAddress" runat="server" Width="376px"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid e-mail format"
                    Width="161px" ControlToValidate="txtFromAddress" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 56px; height: 26px;">
                Subject
            </td>
            <td style="width: 76px; height: 26px;">
                <asp:TextBox ID="txtSubject" runat="server" Width="376px"></asp:TextBox></td>
            <td style="width: 100px; height: 26px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSubject"
                    ErrorMessage="Subject required" Width="138px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 56px">
            </td>
            <td style="width: 76px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px" valign="top">
                Message</td>
            <td style="width: 76px">
                <asp:TextBox ID="txtMessage" runat="server" Height="166px" TextMode="MultiLine" Width="376px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 56px">
                Attachments</td>
            <td style="width: 76px">
                <asp:FileUpload ID="fileAttachment" runat="server" Width="379px" /></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 56px">
            </td>
            <td style="width: 76px">
                <asp:Button ID="btnSend" runat="server" Text="Send" Width="99px" OnClick="btnSend_Click" /><td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 56px">
            </td>
            <td style="width: 76px">
                </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 56px">
            </td>
            <td style="width: 76px">
                </td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>

</asp:Content>