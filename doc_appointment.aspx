<%@ Page Language="C#" AutoEventWireup="true" CodeFile="doc_appointment.aspx.cs" Inherits="appointment" MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<script language="javascript" type="text/javascript">
    function validateForm()
    {
        var age=document.getElementById("<%=txtage.ClientID %>").value
        if((age!="") && (age!=parseInt(age)))
        {
            alert("Invalid age value");
            return false;
        }
        if(parseInt(age)<=0 || parseInt(age)>100)
        {
            alert("Invalid age value");
            return false;
        }
        var dob=document.getElementById("txtDOB").value;
        if(dob=="")
        {
            alert("Please select the Date of Birth");
            return false;
        }
        var docname=document.getElementById("ddlDocName").value;
        if(docname=="--Select--")
        {
            alert("Please select a doctor");
            return false;
        }
        var adate=document.getElementById("appDate").value;        
        if(adate=="")
        {
            alert("Appoinment date not selected");
            return false;
        }

        
    }
    function getDocNames(strSpec)
    {
        if(strSpec!="--Select--")
        {
            obj=GetXmlHttpObject();
            if (obj==null)
            {
                alert ("Browser does not support HTTP Request");
                return;
            }
            var url="disp_docname.aspx?cat=" + strSpec;       
            obj.onreadystatechange=showDocNames ;
            obj.open("GET",url,true);
            obj.send(null);
        }else{
            document.getElementById("docnamearea").innerHTML="<select style='width: 155px'><option value='--Select--'>--Select--</option></select>";
            document.getElementById("msgarea").innerHTML="";
        }
    }
    function showDocNames()
    {
        if (obj.readyState==4 || obj.readyState=="complete")
        {
            document.getElementById("docnamearea").innerHTML=obj.responseText;
        }
    }
    function checkDate(strDate)
    {
        
        var dt=new Date(strDate);
        var today=new Date();
        var date1Comp = dt.getTime(); // milliseconds
        var date2Comp = today.getTime()
        if (date1Comp < date2Comp)
        {
            document.getElementById("dtmsg").innerHTML="Invalid date!";            
            document.getElementById("appDate").value="";
        }else{
            document.getElementById("dtmsg").innerHTML="";
        }
    }
    function getInfo(docid)
    {
        if(docid!="--Select--")
        {
            obj1=GetXmlHttpObject();
            if (obj==null)
            {
                alert ("Browser does not support HTTP Request");
                return;
            }
            var url="disp_docinfo.aspx?id=" + docid;       
            obj1.onreadystatechange=showDocInfo ;
            obj1.open("GET",url,true);
            obj1.send(null);
        }
        else{
            document.getElementById("msgarea").innerHTML="";
        }
    }

    function showDocInfo()
    {
        if (obj1.readyState==4 || obj1.readyState=="complete")
        {
            document.getElementById("msgarea").innerHTML=obj1.responseText;
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
<div style="height:449px; width:246px; float:left; background-image:url(images/doctorpart.jpg); ">
    
   </div>
<div style="width:650px;  float:right; height: 697px;" >
<div id="errmsgarea" style="color:Red;  font-weight:bold"></div>
    <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label><div class="docregheading">
        <span style="font-size: 24pt; color: black; font-family: Shruti"><strong><em>
        DOCTOR-
        APPOINMENT FORM
        <br />
        </em></strong></span>
    </div>
    
    <table style="width: 501px; margin-top:15px; margin:0 auto; text-align:left">
        <tr>
            <td style="vertical-align: top; width: 159px; height: 22px">
            </td>
            <td style="width: 348px; height: 22px">
            </td>
        </tr>
        <tr>
            <td colspan="2" style="background-color:#B3E0FB; font-weight:bold;"><a name="pos1"></a>
                PERSONAL DETAILS</td>
        </tr>
        <tr>
            <td style="width: 159px; height: 22px; ">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label><strong><span style="color: #ff0000">*</span></strong></td>
            <td style="width: 348px; height: 22px;" align="left">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                    ErrorMessage="Missing name" Width="112px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 159px;  height: 26px;">
                <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label><strong><span style="color: #ff0000">*</span></strong></td>
            <td style="width: 348px; height: 26px;" align="left">
                <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtage"
                    ErrorMessage="Missing age" Width="89px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 159px;">
                <asp:Label ID="Label3" runat="server" Text="Date Of Birth "></asp:Label><strong><span
                    style="color: #ff0000">*</span></strong></td>
            <td style="width: 348px">
            <table style="width: 174px"><tr><td style="width: 124px; height: 31px;">
                    <input name="txtDOB"  id="txtDOB" style="width: 121px" type="text" readonly="readOnly" />
                    </td><td style="height: 31px; width: 38px;">
                    <a href="#pos1" onclick="displayDatePicker('txtDOB','','dmy');">
                        <img  src="images/calendar_view_day.png" alt="img" style="width:25px; height:25px; border:none" /></a>
                   </td>
                    </tr></table>
                </td>
        </tr>
        <tr>
            <td style="width: 159px;  height: 22px;">
                <asp:Label ID="Label4" runat="server" Text="Sex"></asp:Label></td>
            <td style="width: 348px; height: 22px;">
                <asp:RadioButtonList ID="rdoListSex" runat="server" RepeatDirection="Horizontal"
                    RepeatLayout="Flow" Width="129px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>
        <tr>
            <td style="width: 159px; ">
                <asp:Label ID="Label6" runat="server" Text="Marital Status"></asp:Label></td>
            <td style="width: 348px">
                <asp:RadioButtonList ID="rdoListMStatus" runat="server" RepeatDirection="Horizontal"
                    RepeatLayout="Flow" Width="129px">
                    <asp:ListItem>Single</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                </asp:RadioButtonList></td>
        </tr>
        <tr>
            <td style="width: 159px; height: 40px;">
                <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>
                <strong><span style="color: #ff0000">*</span></strong></td>
            <td style="width: 348px; height: 40px;">
                <asp:TextBox ID="txtaddr" runat="server" TextMode="MultiLine" Width="149px" Height="56px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtaddr"
                    ErrorMessage="Missing address" Width="106px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 159px; height: 21px; ">
                <asp:Label ID="Label7" runat="server" Text="Email"></asp:Label></td>
            <td style="width: 348px; height: 21px">
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 159px; height: 21px; vertical-align: top;">
                <asp:Label ID="Label9" runat="server" Text="City "></asp:Label>
                <strong><span style="color: #ff0000">*</span></strong></td>
            <td style="width: 348px; height: 21px">
                <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcity"
                    Display="Dynamic" ErrorMessage="Missing city" Width="99px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 159px; height: 21px; vertical-align: top;">
                <asp:Label ID="Label10" runat="server" Text="State"></asp:Label>
                <strong><span style="color: #ff0000">* </span></strong>
            </td>
            <td style="width: 348px; height: 21px">
                <asp:TextBox ID="txtstate" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtstate"
                    Display="Dynamic" ErrorMessage="Missing state" Width="104px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 159px; height: 21px; vertical-align: top;">
                <asp:Label ID="Label12" runat="server" Text="Phone"></asp:Label></td>
            <td style="width: 348px; height: 21px">
                <asp:TextBox ID="txtphone" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 159px; height: 21px">
                <asp:Label ID="Label11" runat="server" Text="Mobile"></asp:Label></td>
            <td style="width: 348px; height: 21px">
                <asp:TextBox ID="txtpin" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 159px; height: 21px">
                &nbsp;<asp:Label ID="Label8" runat="server" Text="Pincode"></asp:Label></td>
            <td style="width: 348px; height: 21px; text-align: left">
                <asp:TextBox ID="txtmobile" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtpin"
                    ErrorMessage="Missing pincode" Width="168px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="height: 21px; background-color:#B3E0FB; font-weight:bold;" colspan="2">
                APPOINMENT DETAILS</td>
        </tr>
        <tr>
            <td style="width: 159px; height: 21px">
                Specialization
            </td>
            <td style="width: 348px; height: 21px; text-align: left">
                <asp:DropDownList ID="ddlSpec" runat="server" 
                    Width="156px">
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 159px; height: 21px">
                Doctor name</td>
            <td style="width: 348px; height: 21px; text-align: left">
            <span id="docnamearea"><select style="width: 155px" > <option value="--Select--">--Select--</option></select></span>
                &nbsp;<span id="msgarea" style="color:Red; font-weight:bold;"></span></td>
        </tr>
        <tr>
            <td style="width: 159px; height: 21px"><a name="pos"></a>
                Appoinment Date</td>
            <td style="width: 348px; height: 21px; text-align: left"><table style="width: 334px">
                <tr valign="middle">
                    <td style="height: 31px; width: 125px;">
                        <input name="appDate"  id="appDate" onblur="checkDate(this.value)"  style="width: 121px" type="text" readonly="readOnly" />
                    </td>
                    <td style="height: 31px;" valign="middle">
                        <a href="#pos" onclick="displayDatePicker('appDate','','mdy');" >
                            <img  src="images/calendar_view_day.png" alt="img" style="width:25px; height:25px; border:none" /></a>(mm-dd-yyyy)
                            <span id="dtmsg" style="color:Red"></span>
                    </td>
                </tr>
            </table>
                </td>
        </tr>
        <tr>
            <td style="width: 159px; height: 21px">
            </td>
            <td style="width: 348px; height: 21px; text-align: left">
            </td>
        </tr>
        <tr>
            <td style="width: 159px; height: 21px">
            </td>
            <td style="width: 348px; height: 21px; text-align: left">
            </td>
        </tr>
        <tr>
            <td style="height: 21px; text-align:center" colspan="2">
                <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnsave_Click" Width="83px"    />&nbsp;
                <input id="Reset1" type="reset" value="Clear" style="width: 74px" /></td>
        </tr>
    </table>
    </div>
</asp:Content>