<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hosp_appoinment.aspx.cs" Inherits="hosp_appoinment" MasterPageFile="~/MasterPage.master" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<script language="javascript" type="text/javascript">
    function getHospNames(strSpec)
    {
        document.getElementById("infoarea").innerHTML="";
        if(strSpec!="--Select--")
        {
            obj=GetXmlHttpObject();
            if (obj==null)
            {
                alert ("Browser does not support HTTP Request");
                return;
            }
            var url="disp_hospname.aspx?cat=" + strSpec;       
            
            obj.onreadystatechange=showHospNames ;
            obj.open("GET",url,true);
            obj.send(null);
        }else{
            document.getElementById("hospnamearea").innerHTML="<select style='width: 155px'><option value='--Select--'>--Select--</option></select>";
        }
    }
    function showHospNames()
    {
        if (obj.readyState==4 || obj.readyState=="complete")
        {
            document.getElementById("hospnamearea").innerHTML=obj.responseText;
        }
    }
    //------------------------------------------
    function getDocList(strhid)
    {
        var cat=document.getElementById("<%=ddlSpec.ClientID %>").value;
        document.getElementById("infoarea").innerHTML="";
        if(strhid!="--Select--")
        {
            obj=GetXmlHttpObject();
            if (obj==null)
            {
                alert ("Browser does not support HTTP Request");
                return;
            }
            var url="disp_hospdocname.aspx?id=" + strhid + "&cat=" + cat;       
            obj.onreadystatechange=showDocNames ;
            obj.open("GET",url,true);
            obj.send(null);
        }else{
            document.getElementById("docnamearea").innerHTML="<select style='width: 155px'><option value='--Select--'>--Select--</option></select>";
            //document.getElementById("msgarea").innerHTML="";
        }
    }
    function showDocNames()
    {
        if (obj.readyState==4 || obj.readyState=="complete")
        {
            document.getElementById("docnamearea").innerHTML=obj.responseText;
        }
    }
    //----------------------------------------------
    
    function getHospDocInfo(strdid)
    {
        if(strdid!="--Select--")
        {
            obj=GetXmlHttpObject();
            if (obj==null)
            {
                alert ("Browser does not support HTTP Request");
                return;
            }
            var url="disp_hospdocinfo.aspx?id=" + strdid ;       
            obj.onreadystatechange=showDocInfo ;
            obj.open("GET",url,true);
            obj.send(null);
        }else{
            document.getElementById("infoarea").innerHTML="";
        }
    }
    function showDocInfo()
    {
        if (obj.readyState==4 || obj.readyState=="complete")
        {
            document.getElementById("infoarea").innerHTML=obj.responseText;
        }
    }
    //---------------------------------------
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

    <div style="height:497px; width:246px; float:left; background-image:url(images/bloodbank.jpg); ">
    
   </div>
    <div style="float: right; width: 650px; height: 697px">
        <div id="errmsgarea" style="font-weight: bold; color: red">
        </div>
        <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label><div
            class="docregheading">
            <span style="font-family: Shruti"><em><span style="font-size: 24pt">
            <span style="color: black"><strong>
            HOSPITAL- APPOINMENT FORM </strong>
            </span>
            <br />
            </span></em></span>
        </div>
        <table style="margin: 0px auto; width: 501px; text-align:left">
            <tr>
                <td style="vertical-align: top; width: 159px; height: 22px">
                </td>
                <td style="width: 348px; height: 22px">
                </td>
            </tr>
            <tr>
                <td colspan="2" style="font-weight: bold; background-color: #fbd6fe">
                    PERSONAL DETALS</td>
            </tr>
            <tr>
                <td style="width: 159px; height: 22px">
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                    <strong><span style="color: #ff0000">*</span><span style="color: #000000"></span></strong></td>
                <td style="font-weight: bold; width: 348px; color: #000000; height: 22px">
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                        ErrorMessage="Missing name" Width="112px" Font-Bold="False"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 159px; height: 26px">
                    <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label>
                    <strong><span style="color: #ff0000">*</span><span style="color: #000000"></span></strong></td>
                <td style="width: 348px; color: #000000; height: 26px">
                    <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtage"
                        ErrorMessage="Missing age" Width="89px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 159px">
                    <asp:Label ID="Label3" runat="server" Text="Date Of Birth "></asp:Label>
                    <strong><span style="color: #ff0000">*</span><span style="color: #000000"></span></strong></td>
                <td style="width: 348px; color: #000000">
                    <table style="width: 174px">
                        <tr>
                            <td style="width: 124px; height: 31px">
                                <input id="txtDOB" name="txtDOB" readonly="readonly" style="width: 121px" type="text" />
                            </td>
                            <td style="width: 38px; height: 31px">
                                <a href="#pos1" onclick="displayDatePicker('txtDOB','','dmy');">
                                    <img alt="img" src="images/calendar_view_day.png" style="border-right: medium none;
                                        border-top: medium none; border-left: medium none; width: 25px; border-bottom: medium none;
                                        height: 25px" /></a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="width: 159px; height: 22px">
                    <asp:Label ID="Label4" runat="server" Text="Sex"></asp:Label></td>
                <td style="width: 348px; height: 22px">
                    <asp:RadioButtonList ID="rdoListSex" runat="server" RepeatDirection="Horizontal"
                        RepeatLayout="Flow" Width="129px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList></td>
            </tr>
            <tr>
                <td style="width: 159px">
                    <asp:Label ID="Label6" runat="server" Text="Marital Status"></asp:Label></td>
                <td style="width: 348px">
                    <asp:RadioButtonList ID="rdoListMStatus" runat="server" RepeatDirection="Horizontal"
                        RepeatLayout="Flow" Width="129px">
                        <asp:ListItem>Single</asp:ListItem>
                        <asp:ListItem>Married</asp:ListItem>
                    </asp:RadioButtonList></td>
            </tr>
            <tr>
                <td style="width: 159px; height: 40px">
                    <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>
                    <strong><span style="color: #ff0000">*</span></strong></td>
                <td style="width: 348px; height: 40px">
                    <asp:TextBox ID="txtaddr" runat="server" Height="56px" TextMode="MultiLine" Width="149px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtaddr"
                        ErrorMessage="Missing address" Width="106px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="width: 159px; height: 21px">
                    <asp:Label ID="Label7" runat="server" Text="Email"></asp:Label></td>
                <td style="width: 348px; height: 21px">
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="vertical-align: top; width: 159px; height: 21px">
                    <asp:Label ID="Label9" runat="server" Text="City "></asp:Label>
                    <strong><span style="color: #ff0000">*</span></strong></td>
                <td style="width: 348px; height: 21px">
                    <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcity"
                        Display="Dynamic" ErrorMessage="Missing city" Width="99px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="vertical-align: top; width: 159px; height: 21px">
                    <asp:Label ID="Label10" runat="server" Text="State"></asp:Label>
                    <strong><span style="color: #ff0000">* </span></strong>
                </td>
                <td style="width: 348px; height: 21px">
                    <asp:TextBox ID="txtstate" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtstate"
                        Display="Dynamic" ErrorMessage="Missing state" Width="104px"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="vertical-align: top; width: 159px; height: 21px">
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
                <td colspan="2" style="font-weight: bold; height: 21px; background-color: #fbd6fe">
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
                    Hospital Name</td>
                <td style="width: 348px; height: 21px; text-align: left">
                    <span id="hospnamearea">
                        <select style="width: 155px">
                            <option selected="selected" value="--Select--">--Select--</option>
                        </select>
                    </span></td>
            </tr>
            <tr>
                <td style="width: 159px; height: 21px">
                    Doctor name</td>
                <td style="width: 348px; height: 21px; text-align: left">
                <span id="docnamearea">
                        <select style="width: 155px">
                            <option selected="selected" value="--Select--">--Select--</option>
                        </select>
                    </span><span id="infoarea" style="color:Red; font-weight:bold"></span>
                </td>
            </tr>
            <tr>
                <td style="width: 159px; height: 21px">
                    <a name="pos"></a>Appoinment Date</td>
                <td style="width: 348px; height: 21px; text-align: left">
                    <table style="width: 334px">
                        <tr valign="middle">
                            <td style="width: 125px; height: 31px">
                                <input id="appDate" name="appDate" onblur="checkDate(this.value)" readonly="readonly"
                                    style="width: 121px" type="text" />
                            </td>
                            <td style="height: 31px" valign="middle">
                                <a href="#pos" onclick="displayDatePicker('appDate','','mdy');">
                                    <img alt="img" src="images/calendar_view_day.png" style="border-right: medium none;
                                        border-top: medium none; border-left: medium none; width: 25px; border-bottom: medium none;
                                        height: 25px" /></a>(mm-dd-yyyy) <span id="dtmsg" style="color: red"></span>
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
                <td colspan="2" style="height: 21px; text-align: center">
                    <asp:Button ID="btnSave" runat="server"  Text="Save" Width="83px" OnClick="btnSave_Click" />&nbsp;
                    <input id="Reset1" style="width: 74px" type="reset" value="Clear" /></td>
            </tr>
        </table>
    </div>

</asp:Content>
