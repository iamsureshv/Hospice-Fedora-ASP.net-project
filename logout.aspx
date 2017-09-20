<%@ Page Language="C#" %>
<% 
    Session.Clear();
    Session.Abandon();
    Response.Redirect("index.aspx");
     %>