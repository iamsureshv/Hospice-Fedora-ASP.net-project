<%@ Page Language="C#" AutoEventWireup="true" CodeFile="regselect.aspx.cs" Inherits="regselect" MasterPageFile="~/MasterPage.master" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div style ="height:150px; margin-top:25px; height:400px">
            <h1 style="font-style:italic; text-align:center; color:Teal; ">
                <span style="color:blue">Client Registeration</span></h1>
                <div style="text-align:left; font-size:18px"><u>Doctors</u></div>
                
                   Register from your house or clinic. This site will help you to check the patients
                    list who were registered through online.<br />
        
               <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Larger" Font-Underline="False" ForeColor="MidnightBlue" NavigateUrl="~/doc_reg.aspx">Register Free</asp:HyperLink>
                 <div style="text-align:left; font-size:18px"><u>Hospitals</u></div>
                <blockquote>
                    Registraton will increase the publicity of hospital. Take the advantages provided
                    by us. &nbsp;This site will help you to check the patients
                    list who were registered through online.</blockquote>
           <blockquote>
               <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Size="Larger" Font-Underline="False" ForeColor="MidnightBlue" NavigateUrl="~/hospitalreg.aspx">Register Free</asp:HyperLink>&nbsp;</blockquote>
               <br />
               <h1 style="font-style:italic; text-align:center; color:Teal; ">
                   <span style="color:blue">
                   Patient Registration</span></h1>
                      <blockquote>
                   Search for your consulting doctors. Make a free registration to take an appoinment for the 
                   consulting doctor. You can choose your  consulting time as per your time.</blockquote>
     <p>
         <span style="font-size: 16pt; font-family: Shruti"><strong><em>To take appointment&nbsp;
             of a DOCTOR</em></strong></span></p>
     <blockquote>
                   <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Size="Larger" Font-Underline="False" ForeColor="MidnightBlue" NavigateUrl="~/doc_appointment.aspx">Make an appoinment</asp:HyperLink>&nbsp;</blockquote>
     <p>
         <strong><em><span style="font-size: 16pt; font-family: Shruti">To take&nbsp; appointment
             in HOSPITAL</span></em></strong></p>
     <p>
         <strong><em><span style="font-size: 16pt; font-family: Shruti">
             <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" Font-Italic="False"
                 Font-Size="Medium" Font-Underline="False" ForeColor="MidnightBlue" NavigateUrl="~/hosp_appoinment.aspx">Make an appoinment</asp:HyperLink></span></em></strong>&nbsp;</p>
       
       </div>
</asp:Content>