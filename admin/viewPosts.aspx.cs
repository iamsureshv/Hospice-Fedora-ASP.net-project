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

public partial class admin_viewPosts : System.Web.UI.Page
{
    DBExplorer dbe;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        dbe = new DBExplorer(ConfigurationManager.ConnectionStrings["Fedora"].ConnectionString);
        dbe.OpenConnection();
        String sql = "select Name,Email,Description  from ConsultInfo where CDate='" + DateTime.Now.ToShortDateString() + "'";
        ds = dbe.getData(sql);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int i = Int32.Parse(e.CommandArgument.ToString());
        String email=GridView1.Rows[i].Cells[1].Text;
        Response.Redirect("mailer.aspx?id=" + email);
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
