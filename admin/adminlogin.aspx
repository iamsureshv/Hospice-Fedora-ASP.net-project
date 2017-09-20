<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="admin_adminlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height:300px; margin:0 auto">
        <table style=" margin:0 auto; margin-top:100px;">
            <tr>
                <td colspan="3" style="text-align:center; font-weight:bold">ADMIN LOGIN
                </td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Username</td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtUsername" runat="server" 
                        ontextchanged="txtUsername_TextChanged"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername"
                        ErrorMessage="Username required" Width="145px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    Password</td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                <td style="width: 100px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
                        ErrorMessage="Password required" Width="139px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 21px;">
                </td>
                <td style="width: 100px; height: 21px;">
                    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" Width="91px" /></td>
                <td style="width: 100px; height: 21px;">
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 21px">
                    <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Width="316px"></asp:Label></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
