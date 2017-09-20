<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Configuration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
   
</body>
</html>
<% 
    DBExplorer dbe = new DBExplorer(ConfigurationManager.ConnectionStrings["Fedora"].ConnectionString);
    dbe.OpenConnection();
    String uname=Request.QueryString["un"];
    String type=Request.QueryString["type"];
    DataSet ds=dbe.getData("select * from login where username='" + uname + "' and type='" +  type + "'");
    if(ds.Tables[0].Rows.Count>0)
    {
        Response.Write("Not available");
    }else{
        Response.Write("Available");
    }

%>