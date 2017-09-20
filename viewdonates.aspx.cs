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

public partial class viewdonates : System.Web.UI.Page
{
    DBExplorer dbe;
    protected void Page_Load(object sender, EventArgs e)
    {
        dbe = new DBExplorer(ConfigurationManager.ConnectionStrings["Fedora"].ConnectionString);
        dbe.OpenConnection();
    }
    protected void btnShow_Click(object sender, EventArgs e)
    {
        String sql = "Select DonorName,Sex,Contact,City,District,CONVERT(CHAR(11), Regdate, 106) as Regdate from Donation ";
        if (ddlOrgon.Text != "--Select--")
        {
            sql += " where Orgon='" + ddlOrgon.Text + "'";
        }
        DataSet ds = dbe.getData(sql);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
}
