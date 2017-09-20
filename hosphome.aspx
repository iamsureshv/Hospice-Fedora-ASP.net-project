<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hosphome.aspx.cs" Inherits="hosphome" MasterPageFile="~/MasterPage.master" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="color:Red; font-weight:bold; text-align:center; margin-top:20px;">
<%
    if (Request.QueryString["id"] != null && Request.QueryString["id"] == "0")
    {
        Response.Write("New doctor added to the list");
    }
 %>
 </div>
 <div style="height:400px; text-align: left;">
     <span style="font-size: 14pt"><span style="font-family: Scriptina"><strong>Hai..</strong>
     </span><span style="font-family: Courier New"><strong>Hospital</strong></span><span
         style="font-family: Scriptina"> <strong>welcome to</strong> </span></span><span style="font-family: Applejuiced">
             <span style="font-size: 14pt">Hospice Fedora<br />
                 <br />
                 <br />
                 <span style="font-family: Arial">&nbsp; &nbsp;&nbsp; You can check TPL (Today's Pateint
                     List).and you can add services like ambulance service,and donate blood.You can details
                     of the hospitals registered and other doctors registered in the site. You can Add
                     doctors in this site<br />
                     <br />
                     Add doctor
                     <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue" NavigateUrl="~/adddoctor.aspx">Click Here</asp:HyperLink><br />
                     Add Abulance service<asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Blue"
                         NavigateUrl="~/reg_ambulance.aspx">Click Here</asp:HyperLink><br />
                 </span></span></span>
 
 
 </div>
</asp:Content>