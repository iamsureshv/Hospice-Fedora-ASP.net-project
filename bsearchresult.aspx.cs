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
using System.Data.SqlClient;

public partial class bsearchresult : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    DBExplorer dbe;
    protected void Page_Load(object sender, EventArgs e)
    {
        dbe=new DBExplorer(ConfigurationManager.ConnectionStrings["Fedora"].ConnectionString);
        dbe.OpenConnection();
        
        String bg = Request.QueryString["grp"];
        String dist = Request.QueryString["dist"];
        String sql="select DonorName,Sex,Age,Phone,Mobile,District from BloodDonation where BloodGroup='" + bg + "'";
        if (dist != "any")
        {
            sql += " and District='" + dist + "'";
        }
        ds.Clear();
        ds = dbe.getData(sql);
        if (ds.Tables[0].Rows.Count == 0)
        {
            lblMsg.Text = "No results found";
        }
        else
        {
            gvResults.DataSource = ds.Tables[0];
            gvResults.DataBind();
        }
      
        
    }
}
