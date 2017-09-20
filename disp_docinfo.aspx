<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Configuration" %>

<% 
    DBExplorer dbe = new DBExplorer(ConfigurationManager.ConnectionStrings["Fedora"].ConnectionString);
    dbe.OpenConnection();
    String id=Request.QueryString["id"];
    DataSet ds = dbe.getData("select online_from,online_to from doc_reg where ID=" + id );
    if(ds.Tables[0].Rows.Count>0)
    {
        String from = ds.Tables[0].Rows[0]["online_from"].ToString();
        String to = ds.Tables[0].Rows[0]["online_to"].ToString();
        Response.Write("Time: From " + from + " To " + to);
    }else{
        Response.Write("Info not Available");
    }

%>