<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hospitalreg.aspx.cs" Inherits="hospitalreg" MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<script language="javascript" type="text/javascript">
    function setStatus(obj)
    {
        if(obj.checked==true)
        {
            document.getElementById('<%=btnSubmit.ClientID %>').disabled=false;
        }else{
            document.getElementById('<%=btnSubmit.ClientID %>').disabled=true;
        }
    }
   function isAvailable(){
        var userid=document.getElementById("<%=txtUsername.ClientID %>").value;
        if(userid=="")
        {
            alert("Username field is empty");
            return;
        }
        obj=GetXmlHttpObject();
        if (obj==null)
        {
            alert ("Browser does not support HTTP Request");
            return;
        }
        var url="uname_avail_check.aspx?un=" + userid + "&type=hospital";        
        obj.onreadystatechange=show_uname_avail_msg ;
        obj.open("GET",url,true);
        obj.send(null);
    }

    function show_uname_avail_msg()
    {
        if (obj.readyState==4 || obj.readyState=="complete")
        {
            document.getElementById("msgarea").innerHTML=obj.responseText;
        }
    }
    function GetXmlHttpObject()
    {
        var xmlHttp=null;
        try
        {
            // Firefox, Opera 8.0+, Safari
            xmlHttp=new XMLHttpRequest();
        }
        catch (e)
        {
            //Internet Explorer
            try
            {
                xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
            }
            catch (e)
            {
                xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
            }
        }
        return xmlHttp;
    }
</script>
<div style="width:244px; height:700px; float:left; background-image:url(images/blooddonar.jpg)">
dsd
</div>
<div style="width:650px;  float:right; height: 695px;" >
    <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label><div class="docregheading">
        <span style="font-size: 24pt; color: black; font-family: Shruti;"><strong><em>
    HOSPITAL REGISTRATION</em> </strong></span>
    </div> 
    <table style="margin: 0px auto; width: 630px">
        <tr>
            <td colspan="4" style="background: #fbd6fe; height: 8px">
                <asp:Label ID="Label25" runat="server" Font-Bold="False" Font-Size="Large" Text="Hospital Details"
                    Width="352px"></asp:Label></td>
        </tr>
        <tr >
            <td style="width: 136px; height: 8px">
                &nbsp;<asp:Label ID="Label1" runat="server" Text="Hospital Name"></asp:Label><span style="color: #ff0066">*</span></td>
            <td style="width: 145px; color: #000000; height: 8px">
                <asp:TextBox ID="txtHospName" runat="server" Width="143px"></asp:TextBox></td>
            <td style="width: 100px; color: #000000; height: 8px">
                Number <span style="color: #ff0066">*</span></td>
            <td style="width: 106px; color: #000000; height: 8px">
                <asp:TextBox ID="txtNum" runat="server" Width="143px"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="4" rowspan="1" style="background: #fbd6fe">
                <asp:Label ID="Label8" runat="server" Font-Bold="False" Font-Size="Large" Text="Address"
                    Width="352px"></asp:Label></td>
        </tr>
        <tr>
            <td rowspan="1" style="width: 136px">
                <asp:Label ID="Label10" runat="server" Text="Address"></asp:Label>
                <strong><span style="color: #ff0000">*</span></strong></td>
            <td rowspan="1" style="width: 145px">
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:Label ID="Label11" runat="server" Text="Street"></asp:Label>
                <strong><span style="color: #ff0000">*</span></strong></td>
            <td style="width: 106px">
                <asp:TextBox ID="txtStreet" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 136px; height: 23px">
                <asp:Label ID="Label9" runat="server" Text="City"></asp:Label>
                <strong><span style="color: #ff0000">*</span></strong></td>
            <td style="width: 145px; height: 23px">
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 23px">
                <asp:Label ID="Label12" runat="server" Text="State"></asp:Label>
                <strong><span style="color: #ff0000">*</span></strong></td>
            <td style="width: 106px; height: 23px">
                <asp:TextBox ID="txtState" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 136px; height: 23px">
                <asp:Label ID="Label13" runat="server" Text="Zip"></asp:Label>
                <strong><span style="color: #ff0000">*</span></strong></td>
            <td style="width: 145px; height: 23px">
                <asp:TextBox ID="txtZIP" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 23px">
                <asp:Label ID="Label14" runat="server" Text="Phone"></asp:Label>
                <strong><span style="color: #ff0000">*</span></strong></td>
            <td style="width: 106px; height: 23px">
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="4" style="background: #fbd6fe; height: 13px; text-align: center">
                <asp:Label ID="Label20" runat="server" Font-Bold="False" Font-Size="Large" Text="Login Information"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="1" style="width: 136px; height: 21px; text-align: left">
                <asp:Label ID="Label21" runat="server" Text="User Name"></asp:Label><strong><span
                    style="color: #ff0000">*</span></strong></td>
            <td colspan="1" style="width: 145px; height: 21px; text-align: left">
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></td>
            <td colspan="1" style="height: 21px; text-align: left">
                <input id="Button1" onclick="isAvailable()" style="width: 118px" type="button" value="Check availability" /></td>
            <td colspan="5" style="height: 21px; text-align: left">
                 <span id="msgarea" style="color:#990000; font-weight:bold"></span>            
                </td>
        </tr>
        <tr>
            <td colspan="1" style="width: 136px; height: 26px; text-align: left">
                <asp:Label ID="Label22" runat="server" Text="Password"></asp:Label><strong><span
                    style="color: #ff0000">*</span></strong></td>
            <td colspan="1" style="width: 145px; height: 26px; text-align: left">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="148px"></asp:TextBox></td>
            <td colspan="1" style="height: 26px; text-align: left">
                <asp:Label ID="Label23" runat="server" Text="Confrim Password"></asp:Label><strong><span
                    style="color: #ff0000">*</span></strong></td>
            <td colspan="5" style="height: 26px; text-align: left">
                <asp:TextBox ID="txtCpassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td colspan="1" style="width: 136px; height: 23px; text-align: left">
                Disply name</td>
            <td colspan="1" style="width: 145px; height: 23px; text-align: left">
                <asp:TextBox ID="txtDispName" runat="server" TextMode="Password" Width="148px"></asp:TextBox></td>
            <td colspan="1" style="height: 23px; text-align: left">
            </td>
            <td colspan="5" style="height: 23px; text-align: left">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword"
                    ControlToValidate="txtCpassword" ErrorMessage="Password mismatch" Width="158px"></asp:CompareValidator></td>
        </tr>
        <tr>
            <td colspan="1" style="width: 136px; height: 23px; text-align: left">
            </td>
            <td colspan="1" style="width: 145px; height: 23px; text-align: left">
            </td>
            <td colspan="1" style="height: 23px; text-align: left">
            </td>
            <td colspan="5" style="height: 23px; text-align: left">
            </td>
        </tr>
        <tr>
            <td colspan="8" style="height: 23px; text-align: left">
                &nbsp;&nbsp;
                <input id="chkAgree" onclick="setStatus(this)" type="checkbox" />
                I Agree&nbsp;
                <asp:Label ID="Label24" runat="server" Text="Terms & Condition"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="8" style="height: 23px; text-align: left">
                </td>
        </tr>
        <tr>
            <td colspan="8" style="height: 23px; text-align: center">
                <asp:TextBox ID="TxtTerms" runat="server" Height="54px" TextMode="MultiLine" Width="411px">Enter the Terms and conditions to register on the website.</asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="8" style="height: 23px; text-align: center">
                <asp:Button ID="btnSubmit" runat="server" Enabled="False" OnClick="btnSubmit_Click"
                    Text="Submit" Width="66px" />
                <input id="Reset1" style="width: 67px" type="reset" value="Clear" /></td>
        </tr>
    </table>
    <br />
    <asp:Label ID="lblErmsg" runat="server" ForeColor="Red" Width="627px"></asp:Label></div>

</asp:Content>

