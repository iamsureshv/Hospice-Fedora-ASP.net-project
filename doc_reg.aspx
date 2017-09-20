<%@ Page Language="C#" AutoEventWireup="true" CodeFile="doc_reg.aspx.cs" Inherits="doc_reg" MasterPageFile="~/MasterPage.master" %>


<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
        var url="uname_avail_check.aspx?un=" + userid + "&type=doctor";        
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
<div style="height:447px; width:246px; float:left; background-image:url(images/doctorpart.jpg); ">
    
   </div>
<div style="width:650px;  float:right; height: 695px;" >
    <div class="docregheading">
        <span style="font-size: 24pt; color: black; font-family: Shruti"><em><strong>
        DOCTOR REGISTRATION </strong></em></span>
    </div>  
    <div style=" margin-top:15px">
    <table style="width: 630px; margin-top:15px; margin:0 auto; text-align:left">
        <tr>
            <td colspan="4" style="height: 8px;background:#FBD6FE">
                <asp:Label ID="Label25" runat="server" Font-Bold="False" Font-Size="Large" Text="Presonal Details"
                    Width="352px"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 136px; height: 8px;">
                
                <asp:Label ID="Label1" runat="server" Text="Doctor Name"></asp:Label>
                <strong><span style="color: #ff0000">*</span></strong></td>
            <td style="width: 376px; height: 8px;">
                            <asp:TextBox ID="txtDocName" runat="server" Width="143px"></asp:TextBox></td>
            <td style="width: 100px; height: 8px;">
                <asp:Label ID="Label4" runat="server" Text="Specialisation"></asp:Label>
                <strong><span style="color: #ff0000">*</span></strong></td>
            <td style="width: 106px; height: 8px;">
                            <asp:DropDownList ID="ddlSpec" runat="server">
                                <asp:ListItem>---Select---</asp:ListItem>
                                <asp:ListItem>Cardiology</asp:ListItem>
                                <asp:ListItem>Neurology</asp:ListItem>
                                <asp:ListItem>Orthopedician</asp:ListItem>
                                <asp:ListItem>Psychiatrist</asp:ListItem>
                            </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 136px; height: 4px">
                            <asp:Label ID="Label2" runat="server" Height="14px" Text="Qualification" Width="16px"></asp:Label></td>
            <td style="width: 376px; height: 4px">
                            <asp:DropDownList ID="ddlQlfn" runat="server" Width="148px" >
                                <asp:ListItem>---Select---</asp:ListItem>
                                <asp:ListItem>MBBS</asp:ListItem>
                                <asp:ListItem>MD</asp:ListItem>
                            </asp:DropDownList></td>
            <td style="width: 100px; height: 4px">
                <asp:Label ID="Label5" runat="server" Text="Age"></asp:Label>&nbsp;</td>
            <td style="width: 106px; height: 4px">
                            <asp:TextBox ID="txtAge" runat="server" Height="19px" Width="81px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 136px; height: 1px;">
                <asp:Label ID="Label6" runat="server" Text="Sex"></asp:Label></td>
            <td style="width: 376px; height: 1px;">
                <div style="float:left; display:block; width: 155px;"><asp:RadioButton ID="rdoMale" 
                        runat="server" Text="Male" GroupName="sex"  />
                <asp:RadioButton ID="rdoFemale" runat="server" Text="Female" GroupName="sex" />
                 </div>                
            </td>
            <td style="width: 100px; height: 1px;">
                <asp:Label ID="Label7" runat="server" Text="Date of Birth"></asp:Label></td>
            <td style="width: 106px; height: 1px;">
             <table style="width: 174px"><tr><td style="width: 124px; height: 31px;">
                    <input name="txtDOB"  id="txtDOB" style="width: 121px" type="text" readonly="readOnly" />
                    </td><td style="height: 31px; width: 38px;">
                    <a href="#" onclick="displayDatePicker('txtDOB','','dmy');">
                        <img  src="images/calendar_view_day.png" alt="img" style="width:25px; height:25px; border:none" /></a>
                   </td>
                    </tr></table>
                            </td>
        </tr>
        <tr>
            <td style="width: 136px; height: 1px">
                <asp:Label ID="Label26" runat="server" Text="Marital Status"></asp:Label></td>
            <td style="width: 376px; height: 1px">
                <asp:RadioButton ID="rdoSingle" runat="server" Text="Single" 
                    GroupName="Mstatus" />
                <asp:RadioButton ID="rdoMarried" runat="server" Text="Married" GroupName="Mstatus" /></td>
            <td colspan="2" style="height: 1px">
                <asp:RequiredFieldValidator ID="lblempty" runat="server" ControlToValidate="txtDocName" Width="309px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td colspan="4" rowspan="1" style="background:#FBD6FE">
                <asp:Label ID="Label8" runat="server" Text="Address" Width="352px" Font-Bold="False" Font-Size="Large"></asp:Label></td>
        </tr>
        <tr>
            <td rowspan="1" style="width: 136px">
                <asp:Label ID="Label10" runat="server" Text="House number"></asp:Label>
                <strong><span style="color: #ff0000">*</span></strong></td>
            <td rowspan="1" style="width: 376px">
                            <asp:TextBox ID="txtNum" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:Label ID="Label11" runat="server" Text="Street"></asp:Label>
                <strong><span style="color: #ff0000">*</span></strong></td>
            <td style="width: 106px">
                <asp:TextBox ID="txtStreet" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 136px; height: 23px;">
                <asp:Label ID="Label9" runat="server" Text="City"></asp:Label>
                <strong><span style="color: #ff0000">*</span></strong></td>
            <td style="width: 376px; height: 23px;">
                            <asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 23px;">
                <asp:Label ID="Label12" runat="server" Text="State"></asp:Label>
                <strong><span style="color: #ff0000">*</span></strong></td>
            <td style="width: 106px; height: 23px;">
                            <asp:TextBox ID="txtState" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 136px; height: 23px">
                <asp:Label ID="Label13" runat="server" Text="Zip"></asp:Label>
                <strong><span style="color: #ff0000">*</span></strong></td>
            <td style="width: 376px; height: 23px">
                            <asp:TextBox ID="txtZIP" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 23px">
                <asp:Label ID="Label14" runat="server" Text="Phone"></asp:Label>
                <strong><span style="color: #ff0000">*</span></strong></td>
            <td style="width: 106px; height: 23px">
                            <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 23px; text-align: center">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" Text="Consultation Time"></asp:Label></td>
            <td colspan="2" style="height: 23px; text-align: center">
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Style="text-align: center"
                    Text="Online Appointment Time"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 23px; text-align: left">
                <asp:Label ID="Label16" runat="server" Text="From"></asp:Label>
                <asp:TextBox ID="txtConsult_from" runat="server" Width="90px"></asp:TextBox>
                &nbsp;&nbsp; &nbsp;<asp:Label ID="Label17" runat="server" Text="To"></asp:Label>
                &nbsp; &nbsp;<asp:TextBox ID="txtConsult_to" runat="server" Width="70px"></asp:TextBox></td>
            <td colspan="2" style="height: 23px; text-align: left">
                &nbsp; 
                <asp:Label ID="Label18" runat="server" Text="From"></asp:Label><strong><span style="color: #ff0000">*</span></strong>
                <asp:TextBox ID="txtOnline_from" runat="server" Width="99px"></asp:TextBox>
                &nbsp;<asp:Label ID="Label19" runat="server" Text="To"></asp:Label>
                <strong><span style="color: #ff0000">*</span></strong>
                <asp:TextBox ID="txtOnline_to" runat="server" Width="84px"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="4" style="height: 13px; text-align: left;background:#FBD6FE">
                <asp:Label ID="Label20" runat="server" Font-Bold="False" Font-Size="Large" Text="Login Information"></asp:Label></td>
        </tr>
        <tr>
            <td colspan="1" style="width: 136px; height: 21px; text-align: left">
                <asp:Label ID="Label21" runat="server" Text="User Name"></asp:Label><strong><span
                    style="color: #ff0000">*</span></strong></td>
            <td colspan="1" style="width: 376px; height: 21px; text-align: left">
                <asp:TextBox ID="txtUsername" runat="server"    ></asp:TextBox></td>
            <td colspan="1" style="height: 21px; text-align: left">
                <input id="Button1" style="width: 118px" type="button" value="Check availability" onclick="isAvailable()" /></td>
            <td colspan="5" style="height: 21px; text-align: left">
            <span id="msgarea" style="color:#990000; font-weight:bold"></span>
            </td>
        </tr>
        <tr>
            <td colspan="1" style="width: 136px; height: 23px; text-align: left">
                <asp:Label ID="Label22" runat="server" Text="Password"></asp:Label><strong><span
                    style="color: #ff0000">*</span></strong></td>
            <td colspan="1" style="width: 376px; height: 23px; text-align: left">
                <asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox></td>
            <td colspan="1" style="height: 23px; text-align: left">
                <asp:Label ID="Label23" runat="server" Text="Confrim Password"></asp:Label><strong><span
                    style="color: #ff0000">*</span></strong></td>
            <td colspan="5" style="height: 23px; text-align: left">
                <asp:TextBox ID="txt_cnfpassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_password"
                    ControlToValidate="txt_cnfpassword" ErrorMessage="Password mismatch" Width="158px"></asp:CompareValidator></td>
        </tr>
        <tr>
            <td colspan="8" style="height: 23px; text-align: left">
                &nbsp;&nbsp;
                <input id="chkAgree" type="checkbox" onclick="setStatus(this)" />
                I Agree </td>
        </tr>
        <tr>
            <td colspan="8" style="height: 23px; text-align: left">
                <asp:Label ID="Label24" runat="server" Text="Terms & Condition"></asp:Label>
                
                </td>
        </tr>
        <tr>
            <td colspan="8" style="height: 23px; text-align: center">
                <asp:TextBox ID="TxtTerms" runat="server" Height="54px" TextMode="MultiLine" Width="411px">Enter the Terms and conditions to register on the website.</asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="8" style="height: 23px; text-align: center">
                <asp:Button ID="btnSubmit" runat="server"   Text="Submit" OnClick="btnSubmit_Click" Enabled="False" />
                <input id="Reset1" type="reset" value="Clear" style="width: 67px" /></td>
        </tr>
    </table>
        &nbsp;&nbsp;&nbsp;<br />
        <asp:Label ID="lblErmsg" runat="server" Width="482px" ForeColor="Red"></asp:Label><br />
    </div>
    </div>
</asp:Content>