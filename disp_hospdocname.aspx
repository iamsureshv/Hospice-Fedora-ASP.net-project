<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Configuration" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title></title>
</head>
<body></body>
</html>
<% 
    DBExplorer dbe = new DBExplorer(ConfigurationManager.ConnectionStrings["Fedora"].ConnectionString);
    dbe.OpenConnection();
    String hid=Request.QueryString["id"];
    String cat = Request.QueryString["cat"];
    DataSet ds = dbe.getData("select ID,DoctorName from Hosp_DoctorsList where HospitalID='" + hid + "' and Specialization='" + cat + "'");
    Response.Write("<select style='width: 155px' name='ddlDocName' id='ddlDocName' onchange='getHospDocInfo(this.value)'>");
    Response.Write("<option value='--Select--'>--Select--</option>");
    foreach (DataRow dr in ds.Tables[0].Rows)
    {
        Response.Write("<option value='" + dr["ID"].ToString() + "'>" + dr["DoctorName"].ToString() + "</option>");
    }
    Response.Write("</select");
%>