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
    String did=Request.QueryString["id"];
    DataSet ds = dbe.getData("select Online_From,Online_To from Hosp_DoctorsList where ID='" + did + "'");

    if (ds.Tables[0].Rows.Count > 0)
    {
        String from = ds.Tables[0].Rows[0]["Online_From"].ToString();
        String to = ds.Tables[0].Rows[0]["Online_To"].ToString();
        Response.Write(" Time: From " + from + " To " + to);
    }
    else
    {
        Response.Write("Info not Available");
    }
%>