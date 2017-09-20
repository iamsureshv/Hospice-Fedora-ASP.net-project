<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" MasterPageFile="~/MasterPage.master" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="leftcontent" style="width:592px; float:left; height:500px">
        
       <div style="height:151px;  font-weight: bold; width: 566px;">
            <table style="width: 582px; height: 38px;">
                        <tr>
                            <td style="width: 133px; height: 158px;">
                                </td>
                            <td colspan="2" style="height: 158px; text-align:left" valign="top">
                                <span style="font-family: Courier New CE"><span style="font-size: 20pt">
                                <span><span style="color: navy"><span style="font-family: Scriptina"><span style="font-size: 24pt">
                                    <span style="color: black">
                                <br />
                                Welcome to our</span> </span></span></span><span
                                    style="color: navy; font-size: 24pt; font-family: Scriptina;">Website.....<br />
                                </span></span><span style="font-size: 11pt">&nbsp;</span></span></span></td>
                        </tr>
                        </table>
                    <div ><h1 style="font-style:italic; text-align:center; color:Teal; ">
               <span style="color:Navy; font-size: 32pt; font-family: Shruti;">
                   Client Registration</span></h1>
                    </div>
                <div style="text-align:left; font-size:18px; text-decoration:underline"><span style="color: black; font-size: 24pt; font-family: Shruti;">Doctors</span></div>
                <blockquote>
                    <span style="color: black; font-family: Arial;"><span style="font-size: 11pt"><span
                        style="font-family: Estrangelo Edessa">
                    Web sites to help doctors practices run more efficiently. These sites are easing
                    the staff workload, decreasing phone traffic, and helping to improve patient care..</span>.</span></span><a href="#"></a><asp:HyperLink
                        ID="HyperLink5" runat="server" Font-Bold="True" Font-Size="Medium" Font-Underline="True"
                        ForeColor="Blue" NavigateUrl="~/moreinform.aspx">More</asp:HyperLink></blockquote>
           <blockquote>
               <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Larger" Font-Underline="False" ForeColor="MidnightBlue" NavigateUrl="~/doc_reg.aspx">Register Free</asp:HyperLink></blockquote>
                 <div style="text-align:left; font-size:18px; text-decoration:underline"><span style="color: black; font-size: 24pt; font-family: Shruti;">Hospitals</span></div>
                <blockquote style="text-align: left">
                    <span style="color: black; font-size: 11pt; font-family: Estrangelo Edessa;">
                    Telephone traffic in offices increases as patients call to find out if flu shots
                    are available, and when the hospitals will be scheduled. This is difficult for staff,
                    who often are tied up responding to these telephone calls rather than doing their
                    regular work,... 
                        <asp:HyperLink ID="HyperLink6" runat="server" Font-Bold="True" Font-Size="Medium"
                            Font-Underline="True" ForeColor="Blue" NavigateUrl="~/moreinform.aspx">More</asp:HyperLink></span><a href="#"></a></blockquote>
           <blockquote>
               <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Size="Larger" Font-Underline="False" ForeColor="MidnightBlue" NavigateUrl="~/hospitalreg.aspx">Register Free</asp:HyperLink><span
                   style="text-decoration: underline">&nbsp;</span></blockquote>
           <h1 style="font-style:italic; text-align:center; color:Teal; ">
               <span style="color:Navy; font-size: 32pt; font-family: Shruti;">
                   Patient Registration</span></h1>
                      <div style="text-align:left; font-size:18px; text-decoration:underline"><span style="color: black; font-size: 24pt; font-family: Shruti;">Appoinment for Doctor</span></div>
           <blockquote style="text-align: left">
               <span style="color: black"><span style="font-size: 10pt; font-family: Estrangelo Edessa">
                   O<span style="font-size: 11pt">nce patients go to the Internet for information about your practice, you can use
               your Web site as a tool to guide them to important information. When I find a new
               link or post information that patients may find useful, I indicate the new material
               on my home page...</span></span><span style="font-size: 11pt"> </span>
                   <asp:HyperLink ID="HyperLink7" runat="server" Font-Bold="True" Font-Size="Medium"
                       Font-Underline="True" ForeColor="Blue" NavigateUrl="~/moreinform.aspx">More</asp:HyperLink><a href="#"></a></span></blockquote>
     <blockquote style="text-align: center">
                   <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Size="Larger" Font-Underline="False" ForeColor="MidnightBlue" NavigateUrl="~/doc_appointment.aspx">Make an appoinment</asp:HyperLink></blockquote>
       
       <div style="text-align:left; font-size:18px;text-decoration:underline"><span style="color: black; font-size: 24pt; font-family: Shruti;">Appoinment on Hospitals</span></div>
           <blockquote style="text-align: left">
               <span style="color: black"><span style="font-size: 11pt; font-family: Estrangelo Edessa">
               You can post the relevant information, along with the times and dates of flu shot
               hospitals, on the Web site as soon as the flu vaccines arrive. The best time to
               remind patients about the site is during a clinical visit or when they are checking
               in or out. Having posters... 
                   <asp:HyperLink ID="HyperLink8" runat="server" Font-Bold="True" Font-Size="Medium"
                       Font-Underline="True" ForeColor="Blue" NavigateUrl="~/moreinform.aspx">More</asp:HyperLink></span><a href="#"></a></span></blockquote>
     <blockquote style="text-align: center">
                   <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" Font-Size="Larger" Font-Underline="False" ForeColor="MidnightBlue" NavigateUrl="~/hosp_appoinment.aspx">Make an appoinment</asp:HyperLink></blockquote>
       
       </div>
            <%
                    if (Request.QueryString["id"] != null && Request.QueryString["id"] == "regc")
                    {
                        Response.Write("You are successfully registered");
                    }
                    if (Request.QueryString["id"] != null && Request.QueryString["id"] == "amb")
                    {
                        Response.Write("Ambulance registration successful.");
                    }
                 %>
        </div>

    
         <table class="login_area" style="width: 290px">
             <tr>
                 <td style="height: 8px; text-align: center" colspan="2">
                     <span style="font-size: 14pt; color: white"><strong>LOGIN</strong></span></td>
             </tr>
            <tr>
                <td style="width: 36px; text-align:center; height: 9px;">
                <div class="login_name">Your Name </div>
                </td>
                <td style="width: 100px; height: 9px;">
                     <asp:TextBox ID="txtUname" runat="server" CssClass="logintextbox" Width="178px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 36px; height: 7px; text-align:center">
            <div class="login_name">Password </div>
                </td>
                <td style="width: 100px; height: 7px;">
                <asp:TextBox ID="txtPasswd" runat="server" CssClass="logintextbox" TextMode="Password" Width="179px"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center; height: 11px;">
                    <asp:RadioButton ID="rdoDoctor" runat="server" Text="Doctor" Font-Bold="True" ForeColor="White" GroupName="AcType" Checked="True" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rdoHospital" runat="server" Text="Hospital" Font-Bold="True" ForeColor="White" GroupName="AcType" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center; height: 13px;">
                    &nbsp;<asp:ImageButton ID="btnLogin" runat="server" ImageUrl="~/images/login_buttons_02.png" OnClick="btnLogin_Click" Width="58px" /></td>
            </tr>
             <tr>
                 <td colspan="2" style="text-align: center">
                     <asp:Label ID="lblLoginMsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label></td>
             </tr>
        </table><br />
        <table class="login_area" style="width:289px; height: 173px">
            <tr>
                <td colspan="2" style="text-align:center; color:White; font-size:large; font-weight:bold ">
                    Blood Search</td>
            </tr>
            <tr>
                <td style="width: 67px; height: 24px;">
                    <div class="login_name">Group </div></td>
                <td style="width: 100px; height: 24px;">
                    <asp:DropDownList ID="ddlBloodGroup" runat="server" Width="171px">
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
            </tr>
            <tr>
                <td style="width: 67px">
                    <div class="login_name">District </div></td>
                <td style="width: 100px">
                    <asp:DropDownList ID="ddlDistrict" runat="server" Width="170px">
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
                        <asp:ListItem>Hasan</asp:ListItem>
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
                        <asp:ListItem>Chikkamangalur</asp:ListItem>
                        <asp:ListItem>Ramanagar</asp:ListItem>
                        <asp:ListItem>Gadag</asp:ListItem>
                        <asp:ListItem>Chamrajnagar</asp:ListItem>
                        <asp:ListItem>Bangalore Rural</asp:ListItem>
                        <asp:ListItem>Kodagu</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td colspan="2">
                <a href="bloodreg.aspx"><img alt="register now" src="images/login_buttons_01.png" style="border:none; height: 22px;" /></a>&nbsp;
                    <asp:ImageButton ID="btnSearch" runat="server" Height="25px" ImageUrl="~/images/search.png"
                        Width="100px" OnClick="btnSearch_Click"  /></td>
            </tr>
            <tr>
                <td colspan="2" align="center" style="height: 23px">
                    <asp:Label ID="lblBSearchmsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label></td>
            </tr>
        </table>
        <table class="login_area" style="height: 85px; width:287px;">
            <tr>
                <td colspan="2" style="text-align:center; color:White; font-size:large; font-weight:bold ; height: 43px;">
                    Ambulance Service search</td>
            </tr>
            <tr>
                <td style="width: 67px">
                    <div class="login_name">
                        District
                    </div>
                </td>
                <td style="width: 100px">
                    <asp:DropDownList ID="ddlDist" runat="server" Width="170px">
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
            </tr>
            <tr>
                <td colspan="2" style="text-align:center">
                    <asp:ImageButton ID="btnAmbSearch" runat="server" Height="25px" ImageUrl="~/images/search.png"
                        Width="100px" OnClick="btnAmbSearch_Click"   /></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center; height: 21px;">
                    </td>
            </tr>
        </table>

    
    <br />
        
    
</asp:Content>