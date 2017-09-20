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

public partial class doc_tpl : System.Web.UI.Page
{
    DBExplorer dbe;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null)
        {
            Response.Redirect("index.aspx");
        }
        dbe = new DBExplorer(ConfigurationManager.ConnectionStrings["Fedora"].ConnectionString);
        dbe.OpenConnection();
        if (!IsPostBack)
        {
            String duserid = Session["userid"].ToString();
            ds = dbe.getData("select ID from doc_reg where Username='" + duserid+ "'");
            String id = ds.Tables[0].Rows[0][0].ToString();
            string sql = "select ClientName,Age,Sex,Address,City,State,CONVERT(CHAR(11), AppDate, 106) as AppDate from Doc_AppInfo where DoctorID=" + id;
            ds.Clear();
            ds = dbe.getData(sql);
            gvTPL.DataSource = ds.Tables[0];
            gvTPL.DataBind();
        }
    }
}
