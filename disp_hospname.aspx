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
    String spec=Request.QueryString["cat"];
    DataSet ds = dbe.getData("select DISTINCT HospitalID,HospitalName from Hosp_DoctorsList where Specialization='" + spec + "'");
    Response.Write("<select style='width: 155px' name='ddlHospName' id='ddlHospName' onchange='getDocList(this.value)'>");
    Response.Write("<option value='--Select--'>--Select--</option>");
    foreach (DataRow dr in ds.Tables[0].Rows)
    {
        Response.Write("<option value='" + dr["HospitalID"].ToString() + "'>" + dr["HospitalName"].ToString() + "</option>");
    }
    Response.Write("</select");
%>