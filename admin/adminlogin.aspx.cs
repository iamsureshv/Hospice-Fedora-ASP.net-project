using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class admin_adminlogin : System.Web.UI.Page
{
    DBExplorer dbe;
    protected void Page_Load(object sender, EventArgs e)
    {
        dbe = new DBExplorer(ConfigurationManager.ConnectionStrings["Fedora"].ConnectionString);
        dbe.OpenConnection();
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (txtUsername.Text == "admin" && txtPassword.Text == "admin")
        {
            Response.Redirect("~/admin/index.aspx");
        }
        else
        {
            lblmsg.Text = "Invalid username/password";
        }

    }
    protected void txtUsername_TextChanged(object sender, EventArgs e)
    {

    }
}
