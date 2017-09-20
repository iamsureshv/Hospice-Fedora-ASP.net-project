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

public partial class ambsearch : System.Web.UI.Page
{
    DBExplorer dbe;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        dbe = new DBExplorer(ConfigurationManager.ConnectionStrings["Fedora"].ConnectionString);
        dbe.OpenConnection();
        ds = new DataSet();
        string sql = "SELECT Provider,Address,Phone,Mobile,City,District from AmbulanceService ";
        if (Request.QueryString["id"] != "any")
        {
            sql += " where District='" + Request.QueryString["id"] + "'";
        }
        
        ds.Clear();
        ds = dbe.getData(sql);
        if (ds.Tables[0].Rows.Count == 0)
        {
            lblmsg.Text = "No results found";
            return;
        }
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
}
